-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2021 at 03:57 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Dbname`
--

-- --------------------------------------------------------

--
-- Table structure for table `passkey`
--

CREATE TABLE `passkey` (
  `username` varchar(1000) NOT NULL,
  `secretquestion` varchar(1000) NOT NULL,
  `secretanswer` varchar(1000) NOT NULL,
  `secretkey` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passkey`
--

INSERT INTO `passkey` (`username`, `secretquestion`, `secretanswer`, `secretkey`) VALUES
('admin', 'Favorite colour', 'Red', 'blood'),
('user2', 'Place of birth', 'Udaipur', 'lake city'),
('user1', 'Favorite topic', 'Cryptography', 'ciphers'),
('user3', 'Favorite food', 'Pizza', 'Italian');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `username` varchar(1000) NOT NULL,
  `quantity` int(100) NOT NULL,
  `material` varchar(1000) NOT NULL,
  `cost` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`username`, `quantity`, `material`, `cost`) VALUES
('admin', 20, 'ABC', 20000),
('user1', 1, 'YT', 769),
('user3', 87, 'QWE', 87100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(1000) NOT NULL,
  `Email` varchar(1000) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `Email`, `password`) VALUES
('admin', 'admin@gmail.com', 'admin'),
('user1', 'user1@gmail.com', 'user1'),
('user2', 'user2@gmail.com', 'user2'),
('user3', 'user3@gmail.com', 'user3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `passkey`
--
ALTER TABLE `passkey`
  ADD UNIQUE KEY `username` (`username`) USING HASH;

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD UNIQUE KEY `username` (`username`) USING HASH;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `username` (`username`) USING HASH;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
