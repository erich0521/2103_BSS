-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2024 at 10:36 AM
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
-- Table structure for table `cupcakes`
--

CREATE TABLE `cupcakes` (
  `CupCakeID` int(4) NOT NULL,
  `CupCakeName` varchar(50) NOT NULL,
  `CupCakeFlavor` varchar(50) NOT NULL,
  `CupCakePrice` decimal(50,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cupcakes`
--

INSERT INTO `cupcakes` (`CupCakeID`, `CupCakeName`, `CupCakeFlavor`, `CupCakePrice`) VALUES
(1, 'Classic Vanilla Cup Cake', 'Vanilla', 25),
(2, 'Chocolate Cup Cake', 'Chocolate', 20),
(3, 'Red Velvet Cup Cake', 'Chocolate', 45),
(4, 'Salted Caramel Cup Cake', 'Caramel', 40),
(5, 'Peanut Butter Cup Cake', 'Peanut Butter', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cupcakes`
--
ALTER TABLE `cupcakes`
  ADD PRIMARY KEY (`CupCakeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cupcakes`
--
ALTER TABLE `cupcakes`
  MODIFY `CupCakeID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
