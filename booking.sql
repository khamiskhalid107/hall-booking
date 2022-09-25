-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2022 at 11:10 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_list`
--

CREATE TABLE `booking_list` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `hall_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `wed&met_schedule` int(11) NOT NULL,
  `total_guest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_list`
--

INSERT INTO `booking_list` (`id`, `code`, `client_id`, `hall_id`, `service_id`, `wed&met_schedule`, `total_guest`) VALUES
(1, 1000, 2, 2, 1, 20220312, 300);

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `lastname`, `username`, `password`) VALUES
(1, 'ALI MAKAME', 'KOMBO', 'ALI ALI', '0123'),
(2, 'AISHA JUMA', 'OMAR', 'ASHA ASHA', '0456');

-- --------------------------------------------------------

--
-- Table structure for table `hall_list`
--

CREATE TABLE `hall_list` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hall_list`
--

INSERT INTO `hall_list` (`id`, `code`, `Name`, `price`) VALUES
(2, 102, 'wedding', 20000),
(3, 103, 'meeting', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `service_list`
--

CREATE TABLE `service_list` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `descption` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_list`
--

INSERT INTO `service_list` (`id`, `name`, `descption`) VALUES
(1, 'MEETING', 'NO MUSIC.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`) VALUES
(1, 'ALI MAKAME', 'OMAR', 'ALI OMAR', '01234'),
(2, 'HADIJA', 'JUMA', 'DIJA', '012345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_list`
--
ALTER TABLE `booking_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hall_list`
--
ALTER TABLE `hall_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_list`
--
ALTER TABLE `booking_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hall_list`
--
ALTER TABLE `hall_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
