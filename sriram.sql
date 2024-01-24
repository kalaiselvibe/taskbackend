-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 06:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sriram`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `detailId` int(11) NOT NULL,
  `sv` int(11) DEFAULT NULL,
  `productCode` varchar(50) DEFAULT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `productPrice` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`detailId`, `sv`, `productCode`, `productName`, `productPrice`, `quantity`, `total`) VALUES
(1, 3, 'P001', '', 0.00, 0, 0),
(2, 4, 'P001', 'Product 1', 29.99, 10, 0),
(3, 7, 'P001', 'Product 1', 29.99, 10, 0),
(4, 8, 'p001', 'Product 1', 29.99, 10, 0),
(5, 9, 'p001', 'Product 1', 29.99, 100, 0),
(6, 10, 'p001', 'Product 1', 29.99, 10, 0),
(7, 11, 'p001', 'Product 1', 29.99, 10, 0),
(8, 12, 'p001', 'Product 1', 29.99, 10, 0),
(9, 13, 'p001', 'Product 1', 29.99, 10, 0),
(10, 14, 'p001', 'Product 1', 29.99, 10, 0),
(11, 15, 'p001', 'Product 1', 29.99, 10, 0),
(12, 16, 'p001', 'Product 1', 29.99, 10, 0),
(13, 17, 'p001', 'Product 1', 29.99, 10, 0),
(14, 18, 'p001', 'Product 1', 29.99, 10, 300),
(15, 18, 'p002', 'Product 2', 39.99, 5, 200),
(16, 19, 'p001', 'Product 1', 29.99, 10, 300),
(17, 20, 'p001', 'Product 1', 29.99, 10, 300),
(18, 21, 'p001', 'Product 1', 29.99, 10, 300),
(19, 21, 'p003', 'Product 3', 49.99, 5, 250),
(20, 22, 'p001', 'Product 1', 29.99, 10, 300),
(21, 22, 'p003', 'Product 3', 49.99, 5, 250),
(22, 23, 'p001', 'Product 1', 29.99, 10, 300),
(23, 23, 'p003', 'Product 3', 49.99, 5, 250),
(24, 24, 'p001', 'Product 1', 29.99, 10, 300),
(25, 24, 'p002', 'Product 2', 39.99, 10, 400),
(26, 25, 'p001', 'Product 1', 29.99, 5, 150),
(27, 25, 'p003', 'Product 3', 49.99, 10, 500),
(28, 26, 'p001', 'Product 1', 29.99, 10, 300),
(29, 26, 'p003', 'Product 3', 49.99, 5, 250),
(30, 27, 'p001', 'Product 1', 29.99, 10, 300),
(31, 27, 'p003', 'Product 3', 49.99, 5, 250),
(32, 28, 'p001', 'Product 1', 29.99, 10, 300),
(33, 28, 'p002', 'Product 2', 39.99, 5, 200),
(34, 29, 'p001', 'Product 1', 29.99, 5, 150),
(35, 29, 'p003', 'Product 3', 49.99, 10, 500),
(36, 30, 'p001', 'Product 1', 29.99, 10, 300),
(37, 30, 'p003', 'Product 3', 49.99, 5, 250),
(38, 31, 'p001', 'Product 1', 29.99, 10, 300),
(39, 31, 'p003', 'Product 3', 49.99, 5, 250),
(40, 32, 'p001', 'Product 1', 29.99, 10, 300),
(41, 32, 'p002', 'Product 2', 39.99, 5, 200),
(42, 33, 'p001', 'Product 1', 29.99, 10, 300),
(43, 33, 'p002', 'Product 2', 39.99, 10, 400),
(44, 34, 'p001', 'Product 1', 29.99, 10, 300),
(45, 34, 'p002', 'Product 2', 39.99, 10, 400),
(46, 35, 'p001', 'Product 1', 29.99, 10, 300),
(47, 35, 'p002', 'Product 2', 39.99, 5, 200),
(48, 36, 'p001', 'Product 1', 29.99, 10, 300),
(49, 36, 'p002', 'Product 2', 39.99, 10, 400),
(50, 37, 'p001', 'Product 1', 29.99, 10, 300),
(51, 37, 'p002', 'Product 2', 39.99, 5, 200),
(52, 38, 'p001', 'Product 1', 29.99, 10, 300),
(53, 38, 'p002', 'Product 2', 39.99, 10, 400),
(54, 38, 'p003', 'Product 3', 49.99, 5, 250),
(55, 39, 'p001', 'Product 1', 29.99, 10, 300),
(56, 39, 'p003', 'Product 3', 49.99, 10, 500),
(57, 39, 'p002', 'Product 2', 39.99, 5, 200),
(58, 40, 'p001', 'Product 1', 29.99, 10, 300),
(59, 40, 'p002', 'Product 2', 39.99, 10, 400),
(60, 40, 'p003', 'Product 3', 49.99, 5, 250),
(61, 41, 'p001', 'Product 1', 29.99, 10, 300),
(62, 41, 'p002', 'Product 2', 39.99, 10, 400),
(63, 42, 'p001', 'Product 1', 29.99, 10, 300),
(64, 42, 'p002', 'Product 2', 39.99, 5, 200),
(65, 43, 'p001', 'Product 1', 29.99, 10, 300),
(66, 43, 'p002', 'Product 2', 39.99, 10, 400),
(67, 44, 'p001', 'Product 1', 29.99, 10, 300),
(68, 44, 'p002', 'Product 2', 39.99, 20, 800),
(69, 44, 'p003', 'Product 3', 49.99, 5, 250),
(70, 45, 'p001', 'Product 1', 29.99, 10, 300),
(71, 45, 'p002', 'Product 2', 39.99, 10, 400),
(72, 45, 'p003', 'Product 3', 49.99, 5, 250),
(73, 46, 'p001', 'Product 1', 29.99, 10, 300),
(74, 46, 'p002', 'Product 2', 39.99, 10, 400),
(75, 47, 'p001', 'Product 1', 29.99, 100, 2999),
(76, 47, 'p002', 'Product 2', 39.99, 50, 2000),
(77, 48, 'p001', 'Product 1', 29.99, 0, 0),
(78, 48, 'p002', 'Product 2', 39.99, 0, 0),
(79, 49, 'p001', 'Product 1', 29.99, 10, 300),
(80, 49, 'p002', 'Product 2', 39.99, 5, 200),
(81, 50, 'p001', 'Product 1', 29.99, 10, 300),
(82, 50, 'p002', 'Product 2', 39.99, 10, 400),
(83, 51, 'p001', 'Product 1', 29.99, 1, 30),
(84, 51, 'p002', 'Product 2', 39.99, 20, 800),
(85, 52, 'p001', 'Product 1', 29.99, 10, 300),
(86, 52, 'p002', 'Product 2', 39.99, 5, 200),
(87, 53, 'p001', 'Product 1', 29.99, 10, 300),
(88, 53, 'p002', 'Product 2', 39.99, 10, 400),
(89, 54, 'p001', 'Product 1', 29.99, 5, 150),
(90, 54, 'p002', 'Product 2', 39.99, 5, 200),
(91, 55, 'p001', 'Product 1', 29.99, 5, 150),
(92, 55, 'p002', 'Product 2', 39.99, 10, 400),
(93, 56, 'p001', 'Product 1', 29.99, 5, 150),
(94, 56, 'p002', 'Product 2', 39.99, 4, 160),
(95, 57, 'p001', 'Product 1', 29.99, 5, 150),
(96, 57, 'p003', 'Product 3', 49.99, 10, 500),
(97, 58, 'p001', 'Product 1', 29.99, 5, 150),
(98, 58, 'p002', 'Product 2', 39.99, 5, 200),
(99, 59, 'p001', 'Product 1', 29.99, 5, 150),
(100, 59, 'p002', 'Product 2', 39.99, 10, 400),
(101, 60, 'p001', 'Product 1', 29.99, 10, 300),
(102, 60, 'p002', 'Product 2', 39.99, 15, 600),
(103, 61, 'p001', 'Product 1', 29.99, 10, 300),
(104, 61, 'p002', 'Product 2', 39.99, 10, 400);

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `sv` int(11) NOT NULL,
  `svDate` timestamp NULL DEFAULT current_timestamp(),
  `acNum` varchar(50) DEFAULT NULL,
  `total` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`sv`, `svDate`, `acNum`, `total`) VALUES
(1, '2024-01-22 18:30:00', '', NULL),
(2, '2024-01-22 18:30:00', '', NULL),
(3, '2024-01-22 18:30:00', '', NULL),
(4, '2024-01-22 18:30:00', '', NULL),
(5, '2024-01-22 18:30:00', '', NULL),
(6, '2024-01-22 18:30:00', '', NULL),
(7, '2024-01-22 18:30:00', '', NULL),
(8, '2024-01-23 18:30:00', '', NULL),
(9, '2024-01-23 18:30:00', '', NULL),
(10, '2024-01-23 18:30:00', '', NULL),
(11, '2024-01-23 18:30:00', '', NULL),
(12, '2024-01-23 18:30:00', '', NULL),
(13, '2024-01-23 18:30:00', '', NULL),
(14, '2024-01-23 18:30:00', '', NULL),
(15, '2024-01-23 18:30:00', '', NULL),
(16, '2024-01-23 18:30:00', '', NULL),
(17, '2024-01-23 18:30:00', '', NULL),
(18, '2024-01-23 18:30:00', '', NULL),
(19, '2024-01-23 18:30:00', '', NULL),
(20, '2024-01-23 18:30:00', '', NULL),
(21, '2024-01-23 18:30:00', '', NULL),
(22, '2024-01-23 18:30:00', '', NULL),
(23, '2024-01-23 18:30:00', '', NULL),
(24, '2024-01-23 18:30:00', '', NULL),
(25, '2024-01-23 18:30:00', '', NULL),
(26, '2024-01-23 18:30:00', '', NULL),
(27, '2024-01-23 18:30:00', '', NULL),
(28, '2024-01-23 18:30:00', '', NULL),
(29, '2024-01-23 18:30:00', '', NULL),
(30, '2024-01-23 18:30:00', '', NULL),
(31, '2024-01-23 18:30:00', '', NULL),
(32, '2024-01-23 18:30:00', '', NULL),
(33, '2024-01-23 18:30:00', '', 700),
(34, '2024-01-23 18:30:00', '', 700),
(35, '2024-01-23 18:30:00', '', 500),
(36, '2024-01-23 18:30:00', '', 700),
(37, '2024-01-23 18:30:00', '', 500),
(38, '2024-01-23 18:30:00', '', 950),
(39, '2024-01-23 18:30:00', '', 1000),
(40, '2024-01-23 18:30:00', '', 950),
(41, '2024-01-23 18:30:00', '', 700),
(42, '2024-01-23 18:30:00', '', 500),
(43, '2024-01-23 18:30:00', '', 700),
(44, '2024-01-23 18:30:00', '', 1350),
(45, '2024-01-23 18:30:00', '', 950),
(46, '2024-01-23 18:30:00', '', 700),
(47, '2024-01-23 18:30:00', '', 4999),
(48, '2024-01-23 18:30:00', '', NULL),
(49, '2024-01-23 18:30:00', '', 500),
(50, '2024-01-23 18:30:00', '', 700),
(51, '0000-00-00 00:00:00', '', 830),
(52, '2024-01-23 18:30:00', '', 500),
(53, '2024-01-23 18:30:00', '', 700),
(54, '2024-01-23 18:30:00', '', 350),
(55, '2024-01-23 18:30:00', '', 550),
(56, '2024-01-23 18:30:00', 'UNPLUGAPPS', 310),
(57, '2024-01-23 18:30:00', 'UNPLUGAPPS', 650),
(58, '2024-01-23 18:30:00', 'UNPLUGAPPS', 350),
(59, '2024-01-23 18:30:00', 'UNPLUGAPPS', 550),
(60, '2024-01-23 18:30:00', 'UNPLUGAPPS', 900),
(61, '2024-01-23 18:30:00', 'UNPLUGAPPS', 700);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productCode` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productCode`, `name`, `price`) VALUES
('P001', 'Product 1', 29.99),
('P002', 'Product 2', 39.99),
('P003', 'Product 3', 49.99);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`detailId`),
  ADD KEY `headerId` (`sv`),
  ADD KEY `productCode` (`productCode`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`sv`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `detailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `sv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_ibfk_1` FOREIGN KEY (`sv`) REFERENCES `header` (`sv`),
  ADD CONSTRAINT `details_ibfk_2` FOREIGN KEY (`productCode`) REFERENCES `product` (`productCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
