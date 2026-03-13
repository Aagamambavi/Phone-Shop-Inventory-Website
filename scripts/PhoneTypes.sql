-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: sql1.njit.edu
-- Generation Time: Dec 06, 2025 at 04:57 AM
-- Server version: 8.0.17
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ama346`
--

-- --------------------------------------------------------

--
-- Table structure for table `Phones`
--

DROP TABLE IF EXISTS `Phones`;
CREATE TABLE IF NOT EXISTS `Phones` (
  `PhoneID` int(11) NOT NULL,
  `PhoneCode` varchar(10) NOT NULL,
  `PhoneName` varchar(255) NOT NULL,
  `PhoneDescription` text NOT NULL,
  `OS` varchar(255) NOT NULL,
  `storageCapacity` varchar(255) NOT NULL,
  `PhoneTypeID` int(11) NOT NULL,
  `PhoneWholesalePrice` decimal(10,2) NOT NULL,
  `PhoneListPrice` decimal(10,2) NOT NULL,
  `DateTimeCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `DateTimeUpdated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Phones`
--

INSERT INTO `Phones` (`PhoneID`, `PhoneCode`, `PhoneName`, `PhoneDescription`, `OS`, `storageCapacity`, `PhoneTypeID`, `PhoneWholesalePrice`, `PhoneListPrice`, `DateTimeCreated`, `DateTimeUpdated`) VALUES
(1000, '17ProMax', 'iPhone 17 Pro Max', 'The iPhone 17 Pro Max is the latest iphone with the newest features. It comes with the phone and a usb-c charger cable. ', 'iOS', '256GB', 100, 899.00, 1199.00, '2025-10-18 03:57:06', '2025-10-18 03:57:06'),
(1001, '7Plus', 'iPhone 7 Plus', 'The iphone 7 Plus is a very old phone. It also doesn''t have features that are up to date. ', 'iOS', '15Gb', 100, 199.00, 299.00, '2025-11-22 05:04:03', '2025-11-22 05:17:13'),
(2000, 'S25Ultra', 'Samsung Galaxy s25 Ultra', 'The s25 Ultra is the latest samsung ultra phone model with the latest features. It comes with the phone and a usb-c charger cable. ', 'Android', '256GB', 200, 999.00, 1299.00, '2025-10-18 03:57:08', '2025-10-18 03:57:08'),
(3000, 'Fold7', 'Samsung Z Fold 7', 'The Samsung Z Fold 7 is the latest Z Fold 7 phone with all of the latest features with 256GB of storage. It also has the ability to fold the screen. ', 'Android', '256GB', 100, 1400.00, 1999.00, '2025-10-18 04:30:42', '2025-10-18 04:30:42'),
(3001, 'Fold7512GB', 'Samsung Z Fold 7', 'The Samsung Z Fold 7 is the latest Z Fold 7 phone with all of the latest features with 512GB of storage. It also has the ability to fold the screen. ', 'Android', '512GB', 100, 1500.00, 2099.00, '2025-10-18 04:35:00', '2025-10-18 04:35:00'),
(3002, 'Fold71TB', 'Samsung Z Fold 7', 'The Samsung Z Fold 7 is the latest Z Fold 7 phone with all of the latest features with 1TB of storage. It also has the ability to fold the screen. ', 'Android', '1TB', 100, 1600.00, 2199.00, '2025-10-18 04:35:40', '2025-10-18 04:35:40'),
(3003, 'Fold72TB', 'Samsung Z Fold 7', 'The Samsung Z Fold 7 is the latest Z Fold 7 phone with all of the latest features with 2TB of storage. It also has the ability to fold the screen. ', 'Android', '2TB', 100, 1700.00, 2299.00, '2025-10-18 04:36:08', '2025-10-18 04:36:08'),
(3004, 'Fold6256GB', 'Samsung Z Fold 6', 'The Samsung Z Fold 6 is the second latest Z Fold phone with some advanced features with 256GB of storage. It also has the ability to fold the screen. ', 'Android', '256GB', 100, 1400.00, 1699.00, '2025-10-18 04:37:28', '2025-10-18 04:37:28'),
(3005, 'Fold6512GB', 'Samsung Z Fold 6', 'The Samsung Z Fold 6 is the second latest Z Fold phone with some advanced features with 512GB of storage. It also has the ability to fold the screen. ', 'Android', '512GB', 100, 1500.00, 1799.00, '2025-10-18 04:38:11', '2025-10-18 04:38:11'),
(3006, 'Fold7Ft', 'Samsung Z Fold 7', 'The Samsung Z Fold 7 is the latest Z Fold phone with the latest features with 256GB of storage. This is also a feature phone. ', 'Android', '256GB', 300, 1400.00, 1799.00, '2025-10-18 04:42:47', '2025-10-18 04:42:47'),
(3007, '17ProMaxFt', 'Iphone 17 Pro Max', 'The Iphone 17 Pro Max is the latest IPhone with the latest features with 256GB of storage. This is also a feature phone. ', 'Android', '256GB', 300, 899.00, 1099.00, '2025-10-18 04:44:51', '2025-10-18 04:44:51'),
(3008, '17ProFt', 'Iphone 17 Pro ', 'The Iphone 17 Pro is the latest IPhone with the latest features with 256GB of storage. It''s the second largest size. This is also a feature phone. ', 'iOS', '256GB', 300, 799.00, 999.00, '2025-10-18 04:47:27', '2025-10-18 04:47:27'),
(3009, '17Ft', 'Iphone 17  ', 'The Iphone 17 is one of the latest IPhone with the lsome of the latest features with 256GB of storage. This is also a feature phone. ', 'iOS', '256GB', 300, 699.00, 899.00, '2025-10-18 04:48:29', '2025-10-18 04:48:29'),
(3010, '16Ft', 'Iphone 16 ', 'The Iphone 16 is a 1 year old IPhone with the some advanced features with 256GB of storage. This is also a feature phone. ', 'iOS', '256GB', 300, 699.00, 799.00, '2025-10-18 04:50:01', '2025-10-18 04:50:01'),
(3011, 'MRV3', 'Motorola Razr V3', 'The Motorola Razr V3 came out in 2004. It also has 5MB of internal storage.  ', 'Motorola proprietary OS', '5MB', 200, 299.00, 499.00, '2025-10-18 04:54:24', '2025-10-18 04:54:24'),
(3012, 'N3390', 'Nokia 3390', 'The Nokia 3390 came out in 2000. It also has 64KB of internal memory.   ', 'Nokia OS', '64KB', 200, 49.00, 99.00, '2025-10-18 04:55:47', '2025-10-18 04:55:47'),
(3013, 'SST809', 'Samsung SGH-T809', 'The Samsung SGH-T809 came out in 2005. It has 80MB of internal storage.    ', 'Samsung proprietary OS', '80MB', 200, 100.00, 199.00, '2025-10-18 04:57:17', '2025-10-18 04:57:17'),
(3014, 'LGV6000', 'LG VX6000', 'The LG VX6000 came out in 2003. It has 2MB of internal storage.   ', 'LG proprietary OS', '2MB', 200, 89.00, 149.00, '2025-10-18 04:58:48', '2025-10-18 04:58:48'),
(3015, 'SEZ520a', 'Sony Ericsson Z520a', 'The Sony Ericsson Z520a came out in 2005. It has 16MB of internal storage.    ', 'Sony Ericsson proprietary OS', '16MB', 200, 89.00, 149.00, '2025-10-18 04:59:51', '2025-10-18 04:59:51'),
(3016, '14ProBase', 'Iphone 14 Pro Base Storage', 'The Iphone 14 Pro Base Storage phone is a 3 year old phone but still works perfectly fine. This is a a feature phone. ', 'iOS', '256GB', 300, 400.00, 600.00, '2025-10-30 23:20:09', '2025-10-30 23:27:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Phones`
--
ALTER TABLE `Phones`
 ADD PRIMARY KEY (`PhoneID`), ADD UNIQUE KEY `PhoneCode` (`PhoneCode`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
