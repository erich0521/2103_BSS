-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2024 at 08:37 AM
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
-- Database: `bakeshopsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `StockID` int(10) NOT NULL,
  `ProductID` int(10) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `Stocks` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`StockID`, `ProductID`, `ProductName`, `Stocks`) VALUES
(1, 1, 'Chocolate Cake', 10),
(2, 2, 'Vanilla Cake', 12),
(3, 3, 'Red Velvet Cake', 10),
(4, 4, 'Lemon Cake', 15),
(5, 5, 'Carrot Cake', 15),
(6, 6, 'Ube Cake', 20),
(7, 7, 'Vanilla Cup Cake', 10),
(8, 8, 'Chocolate Cup Cake', 15),
(9, 9, 'Red Velvet Cup Cake', 8),
(10, 10, 'Salted Caramel Cup Cake', 10),
(11, 11, 'Peanut Butter Cup Cake', 12),
(12, 12, 'Matcha Cup Cake', 15),
(13, 13, 'Classic Newyork Cheese Cake', 5),
(14, 14, 'No Bake Cheese Cake', 20),
(15, 15, 'Chocolate Cheese Cake', 15),
(16, 16, 'Pumpkin Cheese Cake', 12),
(17, 17, 'Japannes Cheese Cake', 10),
(18, 18, 'Caramel Cheese Cake', 10),
(19, 19, 'Chocolate Cookies', 20),
(20, 20, 'Oat Meal Raisin Cookies', 10),
(21, 21, 'Double Chocolate Cookies', 20),
(22, 22, 'Macaron Cookies', 10),
(23, 23, 'Ginger Bread Cookies', 15),
(24, 24, 'Peanut Butter Cookies', 20),
(25, 25, 'Blue Berry Muffin', 15),
(26, 26, 'Chocolate Chip Muffin', 25),
(27, 27, 'Apple Cinnamon Muffin', 10),
(28, 28, 'Banana Muffin', 25),
(29, 29, 'Lemon Puppy Seed Muffin', 15),
(30, 30, 'Corn Muffin', 20),
(31, 31, 'Classic Cinnamon Roll', 10),
(32, 32, 'Apple Cinnamon Roll', 10),
(33, 33, 'Nutella Cinnamon Roll', 10),
(34, 34, 'Chocolate Cinnamon Roll', 10),
(35, 35, 'Caramel Cinnamon Roll', 10),
(36, 36, 'Pumpkin Cinnamon Roll', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`StockID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `StockID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
