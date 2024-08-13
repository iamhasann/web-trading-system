-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2024 at 04:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanshop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_tb`
--

CREATE TABLE `product_tb` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` int(11) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_dealer` varchar(255) NOT NULL,
  `product_price` double NOT NULL,
  `product_age` double NOT NULL,
  `product_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_tb`
--

INSERT INTO `product_tb` (`product_id`, `product_name`, `product_type`, `product_color`, `product_dealer`, `product_price`, `product_age`, `product_img`) VALUES
(38, 'ff', 1, 'jj', 'kkkll', 0, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `product_type_tb`
--

CREATE TABLE `product_type_tb` (
  `product_type_id` int(11) NOT NULL,
  `product_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_type_tb`
--

INSERT INTO `product_type_tb` (`product_type_id`, `product_type_name`) VALUES
(1, 'สก๊อตติส'),
(2, 'อเมริกัน'),
(3, 'บริติช'),
(4, 'วิเชียรมาศ'),
(5, 'ขาวมณี'),
(13, 'sgsgsg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_tb`
--
ALTER TABLE `product_tb`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_type` (`product_type`);

--
-- Indexes for table `product_type_tb`
--
ALTER TABLE `product_type_tb`
  ADD PRIMARY KEY (`product_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_tb`
--
ALTER TABLE `product_tb`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product_type_tb`
--
ALTER TABLE `product_type_tb`
  MODIFY `product_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_tb`
--
ALTER TABLE `product_tb`
  ADD CONSTRAINT `product_tb_ibfk_1` FOREIGN KEY (`product_type`) REFERENCES `product_type_tb` (`product_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
