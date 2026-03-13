-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: sql1.njit.edu
-- Generation Time: Nov 22, 2025 at 05:24 AM
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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
`adminID` int(11) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` char(64) NOT NULL,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`adminID`, `emailAddress`, `password`, `firstName`, `lastName`) VALUES
(1, 'taylor.swift@guitarshop.com', '3cdfa761361762ddedc01ea1428db10a92e327325f490f7f34f1b1b91d994f22', 'Taylor', 'Swift'),
(7, 'justin@guitarshop.com', '3cdfa761361762ddedc01ea1428db10a92e327325f490f7f34f1b1b91d994f22', 'Justin', 'Bieber'),
(11, 'travisscott1@guitarshop.com', '3cdfa761361762ddedc01ea1428db10a92e327325f490f7f34f1b1b91d994f22', 'Travis', 'Scott'),
(14, 'billyjoel2@guitarshop.com', '3cdfa761361762ddedc01ea1428db10a92e327325f490f7f34f1b1b91d994f22', 'billy', 'joel');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `categoryID` int(11) NOT NULL,
  `categoryCode` varchar(10) NOT NULL,
  `categoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryCode`, `categoryName`) VALUES
(100, 'abc', 'IDK'),
(300, 'ELEC', 'Electric'),
(400, 'ABC', '123'),
(500, 'BASS', 'BASS Guitars');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
`id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'gifgi@rfrw', 'bob1@njit.edu', 'hi', '2025-10-22 14:31:02'),
(2, 'khvgi@iugo', 'bob1@njit.edu', 'hi', '2025-10-22 14:31:51'),
(3, 'robert', 'robert@njit.edu', 'hi', '2025-10-22 14:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
CREATE TABLE IF NOT EXISTS `games` (
`gameid` int(11) NOT NULL,
  `golferid` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`gameid`, `golferid`, `score`) VALUES
(1, 100, 110),
(2, 100, 110),
(3, 100, 115),
(4, 100, 105),
(5, 101, 110),
(6, 101, 112),
(7, 101, 130),
(8, 102, 125),
(9, 102, 132),
(10, 103, 135),
(11, 102, 135),
(12, 103, 133),
(13, 103, 137),
(14, 103, 133),
(15, 103, 137),
(16, 101, 140),
(17, 102, 200);

-- --------------------------------------------------------

--
-- Table structure for table `golfers`
--

DROP TABLE IF EXISTS `golfers`;
CREATE TABLE IF NOT EXISTS `golfers` (
  `golferid` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `golfers`
--

INSERT INTO `golfers` (`golferid`, `name`, `address`, `phone`) VALUES
(100, 'Rich', '123 Main St.', '555-1234'),
(101, 'Barbara', '123 Main St.', '555-5678'),
(102, 'Bob', '234 Main St.', '666-6789'),
(103, 'Sam', '345 Main St.', '777-7890');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `itemID` int(11) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `listPrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemID`, `itemName`, `categoryID`, `listPrice`) VALUES
(2000, 'Fender Precision', 100, 799.00),
(3000, 'Electric Guitar', 301, 899.00),
(3005, 'Electric Guitar 2', 300, 999.00);

-- --------------------------------------------------------

--
-- Table structure for table `PhoneManagers`
--

DROP TABLE IF EXISTS `PhoneManagers`;
CREATE TABLE IF NOT EXISTS `PhoneManagers` (
`PhoneManagerID` int(11) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `pronouns` varchar(60) NOT NULL,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `DateTimeCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `DateTimeUpdated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `PhoneManagers`
--

INSERT INTO `PhoneManagers` (`PhoneManagerID`, `emailAddress`, `password`, `pronouns`, `firstName`, `lastName`, `DateTimeCreated`, `DateTimeUpdated`) VALUES
(1, 'JohnSmith@phonestore.com', '034688c865cdb4e777880e3cab3136d4db60c7a17f83abc71e8f5919cb1bb63b', 'He/Him', 'John', 'Smith', '2025-10-02 21:37:12', '2025-10-02 21:37:12'),
(2, 'DavidBrown@phonestore.com', '974d297d55271f984ab922782c2071f743c729d657ccc27d62684d4f3f2ad340', 'He/Him', 'David', 'Brown', '2025-10-02 21:37:17', '2025-10-02 21:37:17'),
(3, 'SarahJohnson@phonestore.com', 'ecc3ef23699959404c684ce2fed95a7b0f918acc81a6fe65dc55cb776d806a07', 'She/Her', 'Sarah', 'Johnson', '2025-10-02 21:37:20', '2025-10-02 21:37:20');

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

-- --------------------------------------------------------

--
-- Table structure for table `PhoneTypes`
--

DROP TABLE IF EXISTS `PhoneTypes`;
CREATE TABLE IF NOT EXISTS `PhoneTypes` (
  `PhoneTypeID` int(11) NOT NULL,
  `PhoneTypeCode` varchar(10) NOT NULL,
  `PhoneTypeName` varchar(255) NOT NULL,
  `releaseYear` int(4) NOT NULL,
  `DateTimeCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `DateTimeUpdated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `PhoneTypes`
--

INSERT INTO `PhoneTypes` (`PhoneTypeID`, `PhoneTypeCode`, `PhoneTypeName`, `releaseYear`, `DateTimeCreated`, `DateTimeUpdated`) VALUES
(100, 'SMART', 'Smart Phone', 2025, '2025-10-18 03:56:53', '2025-10-18 03:56:53'),
(200, 'FLIP', 'Flip Phone', 2024, '2025-10-18 03:56:55', '2025-10-18 03:56:55'),
(300, 'FEAT', 'Feature Phone', 2023, '2025-10-18 03:56:57', '2025-10-18 03:56:57'),
(400, 'Work', 'Work Phone', 2025, '2025-10-30 23:13:10', '2025-10-30 23:13:10'),
(500, 'MISC', 'Miscellaneous Phone', 2000, '2025-11-22 04:43:06', '2025-11-22 04:43:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
 ADD PRIMARY KEY (`adminID`), ADD UNIQUE KEY `emailAddress` (`emailAddress`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
 ADD PRIMARY KEY (`gameid`);

--
-- Indexes for table `golfers`
--
ALTER TABLE `golfers`
 ADD PRIMARY KEY (`golferid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
 ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `PhoneManagers`
--
ALTER TABLE `PhoneManagers`
 ADD PRIMARY KEY (`PhoneManagerID`), ADD UNIQUE KEY `emailAddress` (`emailAddress`);

--
-- Indexes for table `Phones`
--
ALTER TABLE `Phones`
 ADD PRIMARY KEY (`PhoneID`), ADD UNIQUE KEY `PhoneCode` (`PhoneCode`);

--
-- Indexes for table `PhoneTypes`
--
ALTER TABLE `PhoneTypes`
 ADD PRIMARY KEY (`PhoneTypeID`), ADD UNIQUE KEY `PhoneTypeCode` (`PhoneTypeCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
MODIFY `gameid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `PhoneManagers`
--
ALTER TABLE `PhoneManagers`
MODIFY `PhoneManagerID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
