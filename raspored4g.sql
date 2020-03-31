-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2020 at 06:46 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petarrumiha`
--

-- --------------------------------------------------------

--
-- Table structure for table `raspored4g`
--

CREATE TABLE `raspored4g` (
  `Id` int(11) NOT NULL,
  `Ponedjeljak` varchar(255) NOT NULL,
  `Utorak` varchar(255) NOT NULL,
  `Srijeda` varchar(255) NOT NULL,
  `Četvrtak` varchar(255) NOT NULL,
  `Petak` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `raspored4g`
--

INSERT INTO `raspored4g` (`Id`, `Ponedjeljak`, `Utorak`, `Srijeda`, `Četvrtak`, `Petak`) VALUES
(1, 'TZK', 'PPJ', 'VJER', 'MAT', 'POK'),
(2, 'TZK', 'PPJ', 'MAT', 'FIL', 'POK'),
(3, 'SR', 'DIGS', 'PIG', 'MT', 'MIR'),
(4, 'ENG', 'DIGS', 'FIZ', 'MT', 'MIR'),
(5, 'HR', 'RAD', 'ENG', 'NJEM', 'MAT'),
(6, 'HR', 'RAD', 'ENG', 'NJEM', 'MAT'),
(7, 'PI', 'IR', 'HR', 'FIZ', ''),
(8, 'PI', 'IR', 'HR', 'FIZvj', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `raspored4g`
--
ALTER TABLE `raspored4g`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
