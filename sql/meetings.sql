-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2018 at 10:17 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.1.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agenda` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `start` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `finish` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `title`, `agenda`, `option`, `date`, `start`, `finish`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'test title', 'abcde12345', 'Formal', '2018-11-22', '09:00', '09:30', NULL, '2018-11-03 19:48:06', 1),
(2, 'test title edited working', 'this is an agenda test', 'Formal', '2018-11-19', '10:00', '11:30', '2018-10-30 16:00:00', '2018-11-03 19:50:35', 1),
(4, 'meeting', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac hendrerit metus. Donec vel dui auctor,', 'Formal', '2018-11-29', '14:00', '15:00', '2018-10-30 07:45:31', '2018-11-03 19:53:11', 1),
(5, 'abc meeting', 'Pellentesque dictum magna sed lacus rhoncus, sed tristique enim lacinia. Praesent porttitor eget arcu sit amet malesuada. Morbi eget mauris eros.', 'Formal', '2018-11-21', '11:30', '12:00', '2018-10-30 07:52:45', '2018-11-03 20:04:16', 1),
(6, 'meeting', 'sed tristique enim lacinia. Praesent porttitor eget arcu sit amet malesuada. Morbi eget mauris eros. Morbi ut risus tincidunt quam viverra fermentum.', 'Formal', '2018-11-06', '09:30', '10:00', '2018-11-01 03:22:06', '2018-11-03 20:05:04', 1),
(8, 'this is edited meeting title', 'Praesent ac hendrerit metus. Donec vel dui auctor, malesuada dui a, rutrum dolor. Pellentesque dictum magna sed lacus rhoncus, sed tristique enim lacinia.', 'Formal', '2018-11-22', '09:30', '10:00', '2018-11-01 06:14:11', '2018-11-03 20:05:33', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meeting_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
