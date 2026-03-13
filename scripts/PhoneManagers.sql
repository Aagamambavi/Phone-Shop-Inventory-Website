-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: sql1.njit.edu
-- Generation Time: Oct 03, 2025 at 05:14 PM
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
-- Table structure for table `PhoneManagers`
--

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `PhoneManagers`
--
ALTER TABLE `PhoneManagers`
 ADD PRIMARY KEY (`PhoneManagerID`), ADD UNIQUE KEY `emailAddress` (`emailAddress`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `PhoneManagers`
--
ALTER TABLE `PhoneManagers`
MODIFY `PhoneManagerID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
