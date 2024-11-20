-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2024 at 08:11 AM
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
-- Database: `end`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `address`, `created_at`) VALUES
(1, 'Bill Gates123', 'bill.gates@microsoft.com', '+123456789', 'New York, USA', '2024-11-15 23:34:41'),
(2, 'Elon Musket', 'elon.musk@spacex.com', '+111222333', 'Florida, USA', '2024-11-15 23:34:41'),
(3, 'Will Smith', 'will.smith@gmail.com', '+111333555', 'California, USA', '2024-11-15 23:34:41'),
(5, 'Cristiano Ronaldo', 'cristiano.ronaldo@gmail.com', '+32447788993', 'Manchester, England', '2024-11-15 23:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(2, 'Chanditha', 'chanditha@gmail.com', '$2y$10$tyjaSaNo53.vrEPfxzd04uVq.fPuhy8PmAtKwVjwdHBSp.Etwonou'),
(6, 'Sinhalage', 'sinhalage@gmail.com', '$2y$10$zEOtvTzABlqiIxXYtZMbWOs4h7qBLEZGb4OITHaSe2x5T5PHHKY7G'),
(7, 'john', 'johndoe@gmail.com', '$2y$10$9Ei8b0B4ZS3UuEvCEombY.ONznafZHbXrvk.I6LOioIYbR7qxoQai'),
(8, 'Silva', 'silva@gmail.com', '$2y$10$1IXJ8azC5tx7YE.WjgHPpuIQ37PYYFBe8FXRUwvVQjANbil9d.MTa'),
(9, 'thiwanka', 'thiwankasinhalage@ieee.org', '$2y$10$HIrJERC2y4tzgIq7ysiNtOZ0TYOnJZMJSuCauQhEDAmZ4yBBBaS6C'),
(10, 'doe', 'doe@gmail.com', '$2y$10$r/Hu9HdLNwoxuVAsOqJlOOqHH5jw0u8OqMMEVkM/Lu0b7jGhPa6t.'),
(11, '123', '123@gmail.com', '$2y$10$uAbL5jlCB9FGr/DS24LT9eQM5KIN/mp1KL46QdtzGvl/tFjtaDjvm'),
(12, '1234', '1234@gmail.com', '$2y$10$c9tRTwRVGe5XPlCY2oyuDeHfkXN.l..tXCpTr0PGcOCktkOlzUuHS'),
(13, 'sk', 'sk@gmail.com', '$2y$10$m7DBRQYvvosWGnyyYe2ToeTlsBY0ifz4S51.KCJsPwo1pRldJCBZa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
