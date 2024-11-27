-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2024 at 08:41 PM
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
-- Database: `bakeshopsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('phikultaste', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderItemID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `OrderDate` varchar(20) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `TotalPrice` decimal(10,2) DEFAULT NULL,
  `Mode` varchar(50) DEFAULT NULL,
  `PaymentMethod` varchar(50) DEFAULT NULL,
  `OrderStatus` varchar(50) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderItemID`, `OrderID`, `OrderDate`, `ProductID`, `ProductName`, `Quantity`, `Price`, `TotalPrice`, `Mode`, `PaymentMethod`, `OrderStatus`) VALUES
(1, 1, '2024-11-25 23:25:27', 1, 'Chocolate Cake', 1, 890.00, 890.00, 'Order', 'GCash', 'Cancelled'),
(2, 2, '2024-11-25 23:25:55', 1, 'Chocolate Cake', 2, 890.00, 1780.00, 'Order', 'Cash', 'Cancelled'),
(3, 2, '2024-11-25 23:25:55', 2, 'Vanilla Cake', 1, 750.00, 750.00, 'Order', 'Cash', 'Cancelled'),
(4, 3, '2024-11-26 00:03:05', 1, 'Chocolate Cake', 2, 890.00, 1780.00, 'Order', 'GCash', 'Cancelled'),
(5, 3, '2024-11-26 00:03:05', 9, 'Red Velvet Cup Cake', 1, 220.00, 220.00, 'Order', 'GCash', 'Cancelled'),
(6, 4, '2024-11-26 13:19:01', 2, 'Vanilla Cake', 2, 750.00, 1500.00, 'Order', 'GCash', 'Cancelled'),
(7, 4, '2024-11-26 13:19:01', 8, 'Chocolate Cup Cake', 2, 180.00, 360.00, 'Order', 'GCash', 'Cancelled'),
(8, 5, '2024-11-26 14:00:45', 1, 'Chocolate Cake', 1, 890.00, 890.00, 'Order', 'Cash', 'Approved'),
(9, 5, '2024-11-26 14:00:45', 5, 'Carrot Cake', 1, 870.00, 870.00, 'Order', 'Cash', 'Approved'),
(10, 6, '2024-11-26 14:48:36', 6, 'Ube Cake', 1, 800.00, 800.00, 'Order', 'Cash', 'Approved'),
(11, 6, '2024-11-26 14:48:36', 18, 'Caramel Cheese Cake', 1, 900.00, 900.00, 'Order', 'Cash', 'Pending'),
(12, 7, '2024-11-26 18:07:42', 3, 'Red Velvet Cake', 1, 750.00, 750.00, 'Order', 'Cash', 'Pending'),
(13, 8, '2024-11-26 18:09:55', 2, 'Vanilla Cake', 1, 750.00, 750.00, 'Order', 'GCash', 'Cancelled'),
(14, 8, '2024-11-26 18:09:55', 6, 'Ube Cake', 1, 800.00, 800.00, 'Order', 'GCash', 'Cancelled'),
(15, 9, '2024-11-26 19:02:56', 3, 'Red Velvet Cake', 1, 750.00, 750.00, 'Order', 'Cash', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `preorders`
--

CREATE TABLE `preorders` (
  `PreOrderItemID` int(11) NOT NULL,
  `PreOrderID` int(11) DEFAULT NULL,
  `PreOrderDate` varchar(20) DEFAULT NULL,
  `PickUpDate` varchar(20) DEFAULT NULL,
  `CustomerName` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `TotalPrice` decimal(10,2) DEFAULT NULL,
  `Mode` varchar(50) DEFAULT NULL,
  `PaymentMethod` varchar(50) DEFAULT NULL,
  `OrderStatus` varchar(50) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `preorders`
--

INSERT INTO `preorders` (`PreOrderItemID`, `PreOrderID`, `PreOrderDate`, `PickUpDate`, `CustomerName`, `PhoneNumber`, `ProductID`, `ProductName`, `Quantity`, `Price`, `TotalPrice`, `Mode`, `PaymentMethod`, `OrderStatus`) VALUES
(1, 1, '2024-11-25 23:19:38', '2024-11-31', 'Elmira Despo', '09551665289', 1, 'Chocolate Cake', 1, 890.00, 890.00, 'Pre-Order', 'GCash', 'Approved'),
(2, 1, '2024-11-25 23:19:38', '2024-11-31', 'Elmira Despo', '09551665289', 2, 'Vanilla Cake', 1, 750.00, 750.00, 'Pre-Order', 'GCash', 'Pending'),
(3, 2, '2024-11-25 23:35:27', '2024-12-01', 'Ruel Macalalad', '09693111111', 1, 'Chocolate Cake', 1, 890.00, 890.00, 'Pre-Order', 'GCash', 'Pending'),
(4, 2, '2024-11-25 23:35:27', '2024-12-01', 'Ruel Macalalad', '09693111111', 12, 'Matcha Cup Cake', 2, 200.00, 400.00, 'Pre-Order', 'GCash', 'Pending'),
(5, 2, '2024-11-25 23:35:27', '2024-12-01', 'Ruel Macalalad', '09693111111', 22, 'Macaron Cookies', 1, 150.00, 150.00, 'Pre-Order', 'GCash', 'Pending'),
(6, 3, '2024-11-26 00:18:56', '2024-12-03', 'Daniel Caesar', '09296119355', 6, 'Ube Cake', 2, 800.00, 1600.00, 'Pre-Order', 'Cash', 'Pending'),
(7, 3, '2024-11-26 00:18:56', '2024-12-03', 'Daniel Caesar', '09296119355', 17, 'Japanese Cheese Cake', 1, 950.00, 950.00, 'Pre-Order', 'Cash', 'Cancelled'),
(8, 4, '2024-11-26 13:19:39', '2024-12-03', 'Nicole Buzz', '09693111111', 7, 'Vanilla Cup Cake', 1, 200.00, 200.00, 'Pre-Order', 'Cash', 'Approved'),
(9, 4, '2024-11-26 13:19:39', '2024-12-03', 'Nicole Buzz', '09693111111', 9, 'Red Velvet Cup Cake', 1, 220.00, 220.00, 'Pre-Order', 'Cash', 'Approved'),
(10, 5, '2024-11-26 14:02:09', '2024-12-01', 'Erich Castillo', '09123456789', 8, 'Chocolate Cup Cake', 1, 180.00, 180.00, 'Pre-Order', '', 'Pending'),
(11, 5, '2024-11-26 14:02:09', '2024-12-01', 'Erich Castillo', '09123456789', 12, 'Matcha Cup Cake', 1, 200.00, 200.00, 'Pre-Order', '', 'Pending'),
(12, 6, '2024-11-26 14:04:23', '2024-12-23', 'Rzenio Vergara', '', 3, 'Red Velvet Cake', 1, 750.00, 750.00, 'Pre-Order', 'GCash', 'Pending'),
(13, 6, '2024-11-26 14:04:23', '2024-12-23', 'Rzenio Vergara', '', 25, 'Blue Berry Muffin', 1, 120.00, 120.00, 'Pre-Order', 'GCash', 'Cancelled'),
(14, 7, '2024-11-26 14:52:49', '2024-11-26', 'Ruel Macalalad', '09059616024', 27, 'Apple Cinnmon Muffin', 1, 200.00, 200.00, 'Pre-Order', 'GCash', 'Approved'),
(15, 8, '2024-11-26 18:15:07', '2024-12-25', 'Ruel', '09059616024', 3, 'Red Velvet Cake', 1, 750.00, 750.00, 'Pre-Order', 'GCash', 'Pending'),
(16, 8, '2024-11-26 18:15:07', '2024-12-25', 'Ruel', '09059616024', 6, 'Ube Cake', 1, 800.00, 800.00, 'Pre-Order', 'GCash', 'Cancelled'),
(17, 9, '2024-11-26 18:54:51', '2024-12-25', 'Cardo Samonte', '09059616024', 3, 'Red Velvet Cake', 1, 750.00, 750.00, 'Pre-Order', 'Cash', 'Cancelled'),
(18, 10, '2024-11-27 13:24:43', '2024-12-25', 'Rhey Bausas', '09297776355', 6, 'Ube Cake', 1, 800.00, 800.00, 'Pre-Order', 'GCash', 'Pending'),
(19, 11, '2024-11-27 13:27:43', '2024-12-25', 'Rheyven Roxas', '0989663455', 3, 'Red Velvet Cake', 1, 750.00, 750.00, 'Pre-Order', 'GCash', 'Pending');

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
  `ProductPrice` decimal(20,2) NOT NULL,
  `StocksperBox` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `ProductCategory`, `ProductFlavor`, `ProductPcs`, `ProductPrice`, `StocksperBox`) VALUES
(1, 'Chocolate Cake', 'Cake', 'Chocolate', 1, 890.00, 9),
(2, 'Vanilla Cake', 'Cake', 'Vanilla', 1, 750.00, 10),
(3, 'Red Velvet Cake', 'Cake', 'Chocolate', 1, 750.00, 12),
(4, 'Lemon Cake', 'Cake', 'Lemon', 1, 750.00, 10),
(5, 'Carrot Cake', 'Cake', 'Carrot', 1, 870.00, 14),
(6, 'Ube Cake', 'Cake', 'Ube', 1, 800.00, 18),
(7, 'Vanilla Cup Cake', 'Cup Cake', 'Vanilla', 6, 200.00, 11),
(8, 'Chocolate Cup Cake', 'Cup Cake', 'Chocolate', 6, 180.00, 15),
(9, 'Red Velvet Cup Cake', 'Cup Cake', 'Chocolate', 6, 220.00, 13),
(10, 'Salted Caramel Cup Cake', 'Cup Cake', 'Caramel', 6, 150.00, 15),
(11, 'Peanut Butter Cup Cake', 'Cup Cake', 'Peanut Butter', 6, 150.00, 15),
(12, 'Matcha Cup Cake', 'Cup Cake', 'Matcha', 6, 200.00, 16),
(13, 'Classic Newyork Cheese Cake', 'Cheese Cake', 'Classic Cheese', 1, 1000.00, 20),
(14, 'No Bake Cheese Cake', 'Cheese Cake', 'Cheese', 1, 800.00, 15),
(15, 'Chocolate Cheese Cake', 'Cheese Cake', 'Chocolate', 1, 900.00, 10),
(16, 'Pumpkin Cheese Cake', 'Cheese Cake', 'Ram Classic Pumpkin', 1, 850.00, 12),
(17, 'Japanese Cheese Cake', 'Cheese Cake', 'Classic Japanese', 1, 950.00, 12),
(18, 'Caramel Cheese Cake', 'Cheese Cake', 'Caramel', 1, 900.00, 10),
(19, 'Chocolate Cookies', 'Cookies', 'Chocolate', 24, 200.00, 10),
(20, 'Oat Meal Raisin Cookies', 'Cookies', 'Oat Meal', 24, 200.00, 10),
(21, 'Double Chocolate Cookies', 'Cookies', 'Chocolate', 24, 250.00, 10),
(22, 'Macaron Cookies', 'Cookies', 'Assorted', 24, 150.00, 10),
(23, 'Ginger Bread Cookies', 'Cookies', 'Caramel', 24, 180.00, 10),
(24, 'Peanut Butter Cookies', 'Cookies', 'Peanut Butter', 24, 190.00, 10),
(25, 'Blue Berry Muffin', 'Muffin', 'Blue Berry', 24, 120.00, 20),
(26, 'Chocolate Chip Muffin', 'Muffin', 'Chocolate', 24, 120.00, 15),
(27, 'Apple Cinnmon Muffin', 'Muffin', 'Apple', 24, 200.00, 16),
(28, 'Banana Muffin', 'Muffin', 'Banana', 24, 100.00, 15),
(29, 'Lemon Puppy Seed Muffin', 'Muffin', 'Lemon', 24, 150.00, 10),
(30, 'Corn Muffin', 'Muffin', 'Corn', 24, 100.00, 10),
(31, 'Classic Cinnamon Roll', 'Cinnamon Roll', 'Classic', 6, 260.00, 15),
(32, 'Apple Cinnamon Roll', 'Cinnamon Roll', 'Apple', 6, 200.00, 15),
(33, 'Nutella Cinnamon Roll', 'Cinnamon Roll', 'Nutella', 6, 240.00, 10),
(34, 'Chocolate Cinnamon Roll', 'Cinnamon Roll', 'Chocolate', 6, 180.00, 12),
(35, 'Caramel Cinnamon Roll', 'Cinnamon Roll', 'Caramel', 6, 220.00, 15),
(36, 'Pumpkin Cinnamon Roll', 'Cinnamon Roll', 'Pumpkin', 6, 250.00, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderItemID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `preorders`
--
ALTER TABLE `preorders`
  ADD PRIMARY KEY (`PreOrderItemID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `preorders`
--
ALTER TABLE `preorders`
  MODIFY `PreOrderItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`);

--
-- Constraints for table `preorders`
--
ALTER TABLE `preorders`
  ADD CONSTRAINT `preorders_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
