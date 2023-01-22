-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2023 at 06:09 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cb_app_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `items` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `recipe_id` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `ingredients`:
--

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `items`, `amount`, `unit`, `recipe_id`, `createdAt`, `updatedAt`) VALUES
(301, 'rice', '500', 'gm', '201', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 'ghee', '100', 'gm', '201', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 'cashew', '5-6', 'piece', '201', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 'pasta', '250', 'gm', '202', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 'creme', '25', 'ml', '202', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 'wheat flour', '200', 'gm', '203', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `processes`
--

CREATE TABLE `processes` (
  `id` int(11) NOT NULL,
  `step` varchar(255) DEFAULT NULL,
  `recipe_id` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `processes`:
--

--
-- Dumping data for table `processes`
--

INSERT INTO `processes` (`id`, `step`, `recipe_id`, `createdAt`, `updatedAt`) VALUES
(401, 'process desc_1', '201', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 'process desc_2', '201', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 'process desc_3', '203', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 'process desc_4', '203', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 'process desc_5', '202', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `creator_id` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `recipes`:
--

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `desc`, `image_url`, `creator_id`, `createdAt`, `updatedAt`) VALUES
(201, 'Pulao', 'desc 1', './assets/pulao_recipe.jpg', '102', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'Pasta', 'desc2', './assets/pasta_image.jpg', '101', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'Paratha', 'desc3', './assets/indian-breakfast-aloo-paratha-potato.jpg', '103', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `users`:
--

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_id`, `password`, `createdAt`, `updatedAt`) VALUES
(101, 'Mr. A', 'mra', '123', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Mrs. B', 'mrsb', 'xyz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Ms. C', 'msc', 'a@1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
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
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT for table `processes`
--
ALTER TABLE `processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
