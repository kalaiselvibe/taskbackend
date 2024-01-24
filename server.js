const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');

const app = express();
const port = 3001;

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'sriram',
});

db.connect();

app.use(express.json());
app.use(cors());

// GET endpoint to retrieve product details
app.get('/api/products/:productCode', (req, res) => {
  const { productCode } = req.params;
  const query = 'SELECT name, price FROM product WHERE productCode = ?';
  db.query(query, [productCode], (err, results) => {
    if (err) {
      res.status(500).json({ error: 'Internal Server Error' });
    } else if (results.length === 0) {
      res.status(404).json({ error: 'Product not found' });
    } else {
      const { name, price } = results[0];
      res.json({ name, price });
    }
  });
});

// POST endpoint to save header and details
app.post('/api/submitData', (req, res) => {
  const { header, details } = req.body;

  // Save header data
  const headerQuery = 'INSERT INTO header (sv, svDate, acNum,total) VALUES (?, ?, ?,?)';
  db.query(headerQuery, [header.sv, header.svDate, header.acNum,header.total], (err, headerResults) => {
    if (err) {
      res.status(500).json({ error: 'Internal Server Error' });
    } else {
      const sv = headerResults.insertId;

      // Save details data
      const detailsQuery =
        'INSERT INTO details (sv, productCode, productName, productPrice, quantity, total) VALUES ?';
      const detailsValues = details.map(detail => [
        sv,
        detail.productCode,
        detail.productName,
        detail.productPrice,
        detail.quantity,
        detail.total,
      ]);
      db.query(detailsQuery, [detailsValues], (detailsErr) => {
        if (detailsErr) {
          res.status(500).json({ error: 'Internal Server Error' });
        } else {
          res.json({ sv });
        }
      });
    }
  });
});
app.get('/api/getData/:sv', (req, res) => {
  const { sv } = req.params;
  
  const headerQuery = 'SELECT * FROM header WHERE sv = ?';
  db.query(headerQuery, [sv], (err, headerResults) => {
    if (err) {
      res.status(500).json({ error: 'Internal Server Error' });
    } else if (headerResults.length === 0) {
      res.status(404).json({ error: 'Header not found' });
    } else {
      const headerData = headerResults[0];
      
      // Fetch details
      const detailsQuery = 'SELECT * FROM details WHERE sv = ?';
      db.query(detailsQuery, [sv], (detailsErr, detailsResults) => {
        if (detailsErr) {
          res.status(500).json({ error: 'Internal Server Error' });
        } else {
          // Calculate total from details
          const total = detailsResults.reduce((acc, detail) => acc + parseFloat(detail.total), 0).toFixed(2);
          res.json({ headerData, detailsData: detailsResults, total });
        }
      });
    }
  });
});
// app.get('/api/getData/:sv', (req, res) => {
//   const sv = req.params.sv;

//   // Fetch header and details data
//   const getDataQuery = `
//     SELECT header.sv, header.svDate, header.acNum, header.total,
//            details.productCode, details.productName, details.productPrice, details.quantity, details.total
//     FROM header
//     JOIN details ON header.sv = details.sv
//     WHERE header.sv = ?;
//   `;

//   db.query(getDataQuery, [sv], (err, results) => {
//     if (err) {
//       res.status(500).json({ error: 'Internal Server Error' });
//     } else {
//       res.json({ data: results });
//     }
//   });
// });
app.get('/api/getDetails/:sv', (req, res) => {
  const { sv } = req.params;

  // Fetch details data
  const detailsQuery = 'SELECT * FROM details WHERE sv = ?';
  db.query(detailsQuery, [sv], (detailsErr, detailsResults) => {
    if (detailsErr) {
      res.status(500).json({ error: 'Internal Server Error' });
    } else {
      const detailsData = detailsResults;

      // Calculate total from detailsData
      const total = detailsData.reduce((acc, detail) => acc + parseFloat(detail.total), 0).toFixed(2);

      res.json({ detailsData, total });
    }
  });
});
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
