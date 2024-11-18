-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2024 at 09:55 AM
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(20) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `ProductCategory` varchar(100) NOT NULL,
  `ProductFlavor` varchar(100) NOT NULL,
  `ProductPcs` int(20) NOT NULL,
  `ProductPrice` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `ProductCategory`, `ProductFlavor`, `ProductPcs`, `ProductPrice`) VALUES
(1, 'Chocolate Cake', 'Cake', 'Chocolate', 1, 890.00),
(2, 'Vanilla Cake', 'Cake', 'Vanilla', 1, 750.00),
(3, 'Red Velvet Cake', 'Cake', 'Chocolate', 1, 750.00),
(4, 'Lemon Cake', 'Cake', 'Lemon', 1, 750.00),
(5, 'Carrot Cake', 'Cake', 'Carrot', 1, 870.00),
(6, 'Ube Cake', 'Cake', 'Ube', 1, 800.00),
(7, 'Classic Vanilla Cup Cake', 'Cup Cake', 'Vanilla', 6, 200.00),
(8, 'Chocolate Cup Cake', 'Cup Cake', 'Chocolate', 6, 180.00),
(9, 'Red Velvet Cup Cake', 'Cup Cake', 'Chocolate', 6, 220.00),
(10, 'Salted Caramel Cup Cake', 'Cup Cake', 'Caramel', 6, 150.00),
(11, 'Peanut Butter Cup Cake', 'Cup Cake', 'Peanut Butter', 6, 150.00),
(12, 'Matcha Cup Cake', 'Cup Cake', 'Matcha', 6, 200.00),
(13, 'Classic Newyork Cheese Cake', 'Cheese Cake', 'Classic Cheese', 1, 1000.00),
(14, 'No Bake Cheese Cake', 'Cheese Cake', 'Cheese', 1, 800.00),
(15, 'Chocolate Cheese Cake', 'Cheese Cake', 'Chocolate', 1, 900.00),
(16, 'Pumpkin Cheese Cake', 'Cheese Cake', 'Ram Classic Pumpkin', 1, 850.00),
(17, 'Japanese Cheese Cake', 'Cheese Cake', 'Classic Japanese', 1, 950.00),
(18, 'Caramel Cheese Cake', 'Cheese Cake', 'Caramel', 1, 900.00),
(19, 'Chocolate Cookies', 'Cookies', 'Chocolate', 24, 200.00),
(20, 'Oat Meal Raisin Cookies', 'Cookies', 'Oat Meal', 24, 200.00),
(21, 'Double Chocolate Cookies', 'Cookies', 'Chocolate', 24, 250.00),
(22, 'Macaron Cookies', 'Cookies', 'Assorted', 24, 150.00),
(23, 'Ginger Bread Cookies', 'Cookies', 'Caramel', 24, 180.00),
(24, 'Peanut Butter Cookies', 'Cookies', 'Peanut Butter', 24, 190.00),
(25, 'Blue Berry Muffin', 'Muffin', 'Blue Berry', 24, 120.00),
(26, 'Chocolate Chip Muffin', 'Muffin', 'Chocolate', 24, 120.00),
(27, 'Apple Cinnmon Muffin', 'Muffin', 'Apple', 24, 200.00),
(28, 'Banana Muffin', 'Muffin', 'Banana', 24, 100.00),
(29, 'Lemon Puppy Seed Muffin', 'Muffin', 'Lemon', 24, 150.00),
(30, 'Corn Muffin', 'Muffin', 'Corn', 24, 100.00),
(31, 'Classic Cinnamon Roll', 'Cinnamon Roll', 'Classic', 6, 260.00),
(32, 'Apple Cinnamon Roll', 'Cinnamon Roll', 'Apple', 6, 200.00),
(33, 'Nutella Cinnamon Roll', 'Cinnamon Roll', 'Nutella', 6, 240.00),
(34, 'Chocolate Cinnamon Roll', 'Cinnamon Roll', 'Chocolate', 6, 180.00),
(35, 'Caramel Cinnamon Roll', 'Cinnamon Roll', 'Caramel', 6, 220.00),
(36, 'Pumpkin Cinnamon Roll', 'Cinnamon Roll', 'Pumpkin', 6, 250.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
