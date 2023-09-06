-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 06, 2023 at 06:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `historical_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `year_1`
--

CREATE TABLE `year_1` (
  `id` int(4) NOT NULL,
  `month` varchar(3) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `year_1`
--

INSERT INTO `year_1` (`id`, `month`, `count`) VALUES
(1, 'JAN', 10),
(2, 'FEB', 4),
(3, 'MAR', 2),
(4, 'APR', -1);

-- --------------------------------------------------------

--
-- Table structure for table `year_2`
--

CREATE TABLE `year_2` (
  `id` int(4) NOT NULL,
  `month` varchar(3) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `year_2`
--

INSERT INTO `year_2` (`id`, `month`, `count`) VALUES
(1, 'JAN', 3),
(2, 'FEB', 6),
(3, 'MAR', 9),
(4, 'APR', 15);

-- --------------------------------------------------------

--
-- Table structure for table `year_3`
--

CREATE TABLE `year_3` (
  `id` int(4) NOT NULL,
  `month` varchar(3) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `year_3`
--

INSERT INTO `year_3` (`id`, `month`, `count`) VALUES
(1, 'JAN', 3),
(2, 'FEB', 5),
(3, 'MAR', 12),
(4, 'APR', 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `year_1`
--
ALTER TABLE `year_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year_2`
--
ALTER TABLE `year_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year_3`
--
ALTER TABLE `year_3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `year_1`
--
ALTER TABLE `year_1`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `year_2`
--
ALTER TABLE `year_2`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `year_3`
--
ALTER TABLE `year_3`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
