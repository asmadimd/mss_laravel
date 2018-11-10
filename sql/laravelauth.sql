-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2018 at 04:46 PM
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
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laravel2step`
--

CREATE TABLE `laravel2step` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `authCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authCount` int(11) NOT NULL,
  `authStatus` tinyint(1) NOT NULL DEFAULT '0',
  `authDate` datetime DEFAULT NULL,
  `requestDate` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laravel_logger_activity`
--

CREATE TABLE `laravel_logger_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `route` longtext COLLATE utf8mb4_unicode_ci,
  `ipAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` longtext COLLATE utf8mb4_unicode_ci,
  `methodType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_logger_activity`
--

INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Logged In', 'Registered', 2, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-09-29 09:41:18', '2018-09-29 09:41:18', NULL),
(2, 'Viewed home', 'Registered', 2, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-09-29 09:41:20', '2018-09-29 09:41:20', NULL),
(3, 'Viewed profile/wjohns', 'Registered', 2, 'http://localhost:8000/profile/wjohns', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-09-29 09:41:57', '2018-09-29 09:41:57', NULL),
(4, 'Viewed profile/wjohns/edit', 'Registered', 2, 'http://localhost:8000/profile/wjohns/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/wjohns', 'GET', '2018-09-29 09:42:04', '2018-09-29 09:42:04', NULL),
(5, 'Edited profile/2/updateUserAccount', 'Registered', 2, 'http://localhost:8000/profile/2/updateUserAccount', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/wjohns/edit', 'PUT', '2018-09-29 09:43:15', '2018-09-29 09:43:15', NULL),
(6, 'Viewed profile/15b5588/edit', 'Registered', 2, 'http://localhost:8000/profile/15b5588/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/wjohns/edit', 'GET', '2018-09-29 09:43:17', '2018-09-29 09:43:17', NULL),
(7, 'Viewed home', 'Registered', 2, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/15b5588/edit', 'GET', '2018-09-29 09:43:41', '2018-09-29 09:43:41', NULL),
(8, 'Logged Out', 'Registered', 2, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-09-29 09:44:04', '2018-09-29 09:44:04', NULL),
(9, 'Logged In', 'Registered', 2, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-09-29 09:44:20', '2018-09-29 09:44:20', NULL),
(10, 'Viewed home', 'Registered', 2, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-09-29 09:44:22', '2018-09-29 09:44:22', NULL),
(11, 'Logged Out', 'Registered', 2, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-09-29 09:44:28', '2018-09-29 09:44:28', NULL),
(12, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-09-29 09:44:58', '2018-09-29 09:44:58', NULL),
(13, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-09-29 09:45:00', '2018-09-29 09:45:00', NULL),
(14, 'Viewed profile/may35', 'Registered', 1, 'http://localhost:8000/profile/may35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-09-29 09:45:29', '2018-09-29 09:45:29', NULL),
(15, 'Viewed profile/may35/edit', 'Registered', 1, 'http://localhost:8000/profile/may35/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/may35', 'GET', '2018-09-29 09:45:54', '2018-09-29 09:45:54', NULL),
(16, 'Edited profile/1/updateUserAccount', 'Registered', 1, 'http://localhost:8000/profile/1/updateUserAccount', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/may35/edit', 'PUT', '2018-09-29 09:46:27', '2018-09-29 09:46:27', NULL),
(17, 'Viewed profile/admin/edit', 'Registered', 1, 'http://localhost:8000/profile/admin/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/may35/edit', 'GET', '2018-09-29 09:46:28', '2018-09-29 09:46:28', NULL),
(18, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/admin/edit', 'GET', '2018-09-29 09:47:29', '2018-09-29 09:47:29', NULL),
(19, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/admin/edit', 'GET', '2018-09-29 09:48:10', '2018-09-29 09:48:10', NULL),
(20, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-09-29 09:48:30', '2018-09-29 09:48:30', NULL),
(21, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-09-29 09:49:11', '2018-09-29 09:49:11', NULL),
(22, 'Logged In', 'Registered', 2, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-09-30 23:01:33', '2018-09-30 23:01:33', NULL),
(23, 'Viewed home', 'Registered', 2, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-09-30 23:01:34', '2018-09-30 23:01:34', NULL),
(24, 'Viewed profile/15b5588', 'Registered', 2, 'http://localhost:8000/profile/15b5588', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-09-30 23:03:32', '2018-09-30 23:03:32', NULL),
(25, 'Viewed home', 'Registered', 2, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/15b5588', 'GET', '2018-09-30 23:03:46', '2018-09-30 23:03:46', NULL),
(26, 'Logged Out', 'Registered', 2, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-09-30 23:19:57', '2018-09-30 23:19:57', NULL),
(27, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-09-30 23:20:22', '2018-09-30 23:20:22', NULL),
(28, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-09-30 23:20:23', '2018-09-30 23:20:23', NULL),
(29, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-09-30 23:21:27', '2018-09-30 23:21:27', NULL),
(30, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-09-30 23:21:30', '2018-09-30 23:21:30', NULL),
(31, 'Viewed users/2', 'Registered', 1, 'http://localhost:8000/users/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-09-30 23:21:42', '2018-09-30 23:21:42', NULL),
(32, 'Created search-users', 'Registered', 1, 'http://localhost:8000/search-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'POST', '2018-09-30 23:22:23', '2018-09-30 23:22:23', NULL),
(33, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-09-30 23:22:32', '2018-09-30 23:22:32', NULL),
(34, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-09-30 23:29:53', '2018-09-30 23:29:53', NULL),
(35, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-09-30 23:30:30', '2018-09-30 23:30:30', NULL),
(36, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-09-30 23:31:27', '2018-09-30 23:31:27', NULL),
(37, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-09-30 23:40:16', '2018-09-30 23:40:16', NULL),
(38, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-09-30 23:40:26', '2018-09-30 23:40:26', NULL),
(39, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-09-30 23:40:32', '2018-09-30 23:40:32', NULL),
(40, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-09-30 23:47:46', '2018-09-30 23:47:46', NULL),
(41, 'Viewed themes', 'Registered', 1, 'http://localhost:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-09-30 23:47:48', '2018-09-30 23:47:48', NULL),
(42, 'Viewed themes/18', 'Registered', 1, 'http://localhost:8000/themes/18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/themes', 'GET', '2018-09-30 23:48:10', '2018-09-30 23:48:10', NULL),
(43, 'Viewed themes', 'Registered', 1, 'http://localhost:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/themes/18', 'GET', '2018-09-30 23:48:28', '2018-09-30 23:48:28', NULL),
(44, 'Viewed themes/26', 'Registered', 1, 'http://localhost:8000/themes/26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/themes/', 'GET', '2018-09-30 23:48:43', '2018-09-30 23:48:43', NULL),
(45, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/themes/26', 'GET', '2018-09-30 23:49:11', '2018-09-30 23:49:11', NULL),
(46, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-09-30 23:49:33', '2018-09-30 23:49:33', NULL),
(47, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-09-30 23:51:32', '2018-09-30 23:51:32', NULL),
(48, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-09-30 23:51:33', '2018-09-30 23:51:33', NULL),
(49, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'POST', '2018-09-30 23:51:43', '2018-09-30 23:51:43', NULL),
(50, 'Logged In', 'Registered', 3, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-09-30 23:51:58', '2018-09-30 23:51:58', NULL),
(51, 'Viewed home', 'Registered', 3, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-09-30 23:52:00', '2018-09-30 23:52:00', NULL),
(52, 'Viewed profile/14b8338', 'Registered', 3, 'http://localhost:8000/profile/14b8338', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-09-30 23:52:12', '2018-09-30 23:52:12', NULL),
(53, 'Viewed profile/14b8338/edit', 'Registered', 3, 'http://localhost:8000/profile/14b8338/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/14b8338', 'GET', '2018-09-30 23:52:46', '2018-09-30 23:52:46', NULL),
(54, 'Edited profile/14b8338', 'Registered', 3, 'http://localhost:8000/profile/14b8338', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/14b8338/edit', 'PATCH', '2018-09-30 23:53:28', '2018-09-30 23:53:28', NULL),
(55, 'Viewed profile/14b8338/edit', 'Registered', 3, 'http://localhost:8000/profile/14b8338/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/14b8338/edit', 'GET', '2018-09-30 23:53:29', '2018-09-30 23:53:29', NULL),
(56, 'Edited profile/14b8338', 'Registered', 3, 'http://localhost:8000/profile/14b8338', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/14b8338/edit', 'PATCH', '2018-09-30 23:53:56', '2018-09-30 23:53:56', NULL),
(57, 'Viewed profile/14b8338/edit', 'Registered', 3, 'http://localhost:8000/profile/14b8338/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/14b8338/edit', 'GET', '2018-09-30 23:53:58', '2018-09-30 23:53:58', NULL),
(58, 'Logged Out', 'Registered', 3, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/14b8338/edit', 'POST', '2018-10-01 00:01:37', '2018-10-01 00:01:37', NULL),
(59, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-01 00:02:15', '2018-10-01 00:02:15', NULL),
(60, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-01 00:02:16', '2018-10-01 00:02:16', NULL),
(61, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-01 00:02:33', '2018-10-01 00:02:33', NULL),
(62, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-01 00:02:40', '2018-10-01 00:02:40', NULL),
(63, 'Viewed users/3/edit', 'Registered', 1, 'http://localhost:8000/users/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-01 00:03:01', '2018-10-01 00:03:01', NULL),
(64, 'Edited users/3', 'Registered', 1, 'http://localhost:8000/users/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/3/edit', 'PUT', '2018-10-01 00:03:23', '2018-10-01 00:03:23', NULL),
(65, 'Viewed users/3/edit', 'Registered', 1, 'http://localhost:8000/users/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/3/edit', 'GET', '2018-10-01 00:03:24', '2018-10-01 00:03:24', NULL),
(66, 'Viewed users/3', 'Registered', 1, 'http://localhost:8000/users/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/3/edit', 'GET', '2018-10-01 00:03:39', '2018-10-01 00:03:39', NULL),
(67, 'Viewed users/3/edit', 'Registered', 1, 'http://localhost:8000/users/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/3', 'GET', '2018-10-01 00:03:48', '2018-10-01 00:03:48', NULL),
(68, 'Edited users/3', 'Registered', 1, 'http://localhost:8000/users/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/3/edit', 'PUT', '2018-10-01 00:04:02', '2018-10-01 00:04:02', NULL),
(69, 'Viewed users/3/edit', 'Registered', 1, 'http://localhost:8000/users/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/3/edit', 'GET', '2018-10-01 00:04:04', '2018-10-01 00:04:04', NULL),
(70, 'Viewed users/3', 'Registered', 1, 'http://localhost:8000/users/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/3/edit', 'GET', '2018-10-01 00:04:12', '2018-10-01 00:04:12', NULL),
(71, 'Deleted users/3', 'Registered', 1, 'http://localhost:8000/users/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/3', 'DELETE', '2018-10-01 00:04:38', '2018-10-01 00:04:38', NULL),
(72, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/3', 'GET', '2018-10-01 00:04:39', '2018-10-01 00:04:39', NULL),
(73, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-01 00:05:34', '2018-10-01 00:05:34', NULL),
(74, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-01 00:06:08', '2018-10-01 00:06:08', NULL),
(75, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-01 00:06:10', '2018-10-01 00:06:10', NULL),
(76, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-01 00:06:54', '2018-10-01 00:06:54', NULL),
(77, 'Failed Login Attempt', 'Guest', NULL, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-01 00:07:09', '2018-10-01 00:07:09', NULL),
(78, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-01 00:11:20', '2018-10-01 00:11:20', NULL),
(79, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-01 00:11:21', '2018-10-01 00:11:21', NULL),
(80, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-01 00:11:30', '2018-10-01 00:11:30', NULL),
(81, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-01 00:11:36', '2018-10-01 00:11:36', NULL),
(82, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-01 00:12:12', '2018-10-01 00:12:12', NULL),
(83, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-01 00:12:13', '2018-10-01 00:12:13', NULL),
(84, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-01 00:13:43', '2018-10-01 00:13:43', NULL),
(85, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-01 00:13:44', '2018-10-01 00:13:44', NULL),
(86, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-01 00:15:51', '2018-10-01 00:15:51', NULL),
(87, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-01 18:11:51', '2018-10-01 18:11:51', NULL),
(88, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-01 18:11:53', '2018-10-01 18:11:53', NULL),
(89, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-08 00:57:20', '2018-10-08 00:57:20', NULL),
(90, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-08 00:57:22', '2018-10-08 00:57:22', NULL),
(91, 'Viewed profile/admin', 'Registered', 1, 'http://localhost:8000/profile/admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-08 01:06:12', '2018-10-08 01:06:12', NULL),
(92, 'Viewed profile/admin/edit', 'Registered', 1, 'http://localhost:8000/profile/admin/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/admin', 'GET', '2018-10-08 01:07:08', '2018-10-08 01:07:08', NULL),
(93, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/admin/edit', 'GET', '2018-10-08 01:07:35', '2018-10-08 01:07:35', NULL),
(94, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-08 16:02:41', '2018-10-08 16:02:41', NULL),
(95, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-08 16:02:42', '2018-10-08 16:02:42', NULL),
(96, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-08 16:13:02', '2018-10-08 16:13:02', NULL),
(97, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-08 16:13:40', '2018-10-08 16:13:40', NULL),
(98, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-11 07:40:24', '2018-10-11 07:40:24', NULL),
(99, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-11 07:40:26', '2018-10-11 07:40:26', NULL),
(100, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-11 07:42:22', '2018-10-11 07:42:22', NULL),
(101, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-11 07:42:23', '2018-10-11 07:42:23', NULL),
(102, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-10-11 07:43:18', '2018-10-11 07:43:18', NULL),
(103, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-11 07:52:18', '2018-10-11 07:52:18', NULL),
(104, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-11 07:52:20', '2018-10-11 07:52:20', NULL),
(105, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-10-11 07:55:30', '2018-10-11 07:55:30', NULL),
(106, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-11 07:56:21', '2018-10-11 07:56:21', NULL),
(107, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-11 07:56:22', '2018-10-11 07:56:22', NULL),
(108, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-10-11 07:59:40', '2018-10-11 07:59:40', NULL),
(109, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-11 08:00:19', '2018-10-11 08:00:19', NULL),
(110, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-11 08:00:21', '2018-10-11 08:00:21', NULL),
(111, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-11 08:00:34', '2018-10-11 08:00:34', NULL),
(112, 'Deleted users/4', 'Registered', 1, 'http://localhost:8000/users/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'DELETE', '2018-10-11 08:00:52', '2018-10-11 08:00:52', NULL),
(113, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-11 08:00:53', '2018-10-11 08:00:53', NULL),
(114, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-11 08:01:11', '2018-10-11 08:01:11', NULL),
(115, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-11 08:01:40', '2018-10-11 08:01:40', NULL),
(116, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-11 08:01:49', '2018-10-11 08:01:49', NULL),
(117, 'Viewed themes', 'Registered', 1, 'http://localhost:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-11 08:02:13', '2018-10-11 08:02:13', NULL),
(118, 'Viewed themes', 'Registered', 1, 'http://localhost:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-11 08:06:49', '2018-10-11 08:06:49', NULL),
(119, 'Viewed active-users', 'Registered', 1, 'http://localhost:8000/active-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/themes', 'GET', '2018-10-11 08:07:17', '2018-10-11 08:07:17', NULL),
(120, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/active-users', 'POST', '2018-10-11 08:07:40', '2018-10-11 08:07:40', NULL),
(121, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-11 08:25:26', '2018-10-11 08:25:26', NULL),
(122, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-11 08:25:27', '2018-10-11 08:25:27', NULL),
(123, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-11 08:26:32', '2018-10-11 08:26:32', NULL),
(124, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-11 08:27:41', '2018-10-11 08:27:41', NULL),
(125, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-11 08:28:52', '2018-10-11 08:28:52', NULL),
(126, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-11 08:29:05', '2018-10-11 08:29:05', NULL),
(127, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-11 08:30:22', '2018-10-11 08:30:22', NULL),
(128, 'Viewed themes', 'Registered', 1, 'http://localhost:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-11 08:39:47', '2018-10-11 08:39:47', NULL),
(129, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-14 23:01:33', '2018-10-14 23:01:33', NULL),
(130, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-14 23:01:35', '2018-10-14 23:01:35', NULL),
(131, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-14 23:01:58', '2018-10-14 23:01:58', NULL),
(132, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-14 23:11:15', '2018-10-14 23:11:15', NULL),
(133, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-14 23:15:11', '2018-10-14 23:15:11', NULL),
(134, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-14 23:15:36', '2018-10-14 23:15:36', NULL),
(135, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-14 23:15:43', '2018-10-14 23:15:43', NULL),
(136, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-14 23:16:40', '2018-10-14 23:16:40', NULL),
(137, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-14 23:16:49', '2018-10-14 23:16:49', NULL),
(138, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-14 23:18:33', '2018-10-14 23:18:33', NULL),
(139, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-14 23:19:45', '2018-10-14 23:19:45', NULL),
(140, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-14 23:21:22', '2018-10-14 23:21:22', NULL),
(141, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-14 23:21:36', '2018-10-14 23:21:36', NULL),
(142, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-14 23:21:43', '2018-10-14 23:21:43', NULL),
(143, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-14 23:31:40', '2018-10-14 23:31:40', NULL),
(144, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-14 23:31:45', '2018-10-14 23:31:45', NULL),
(145, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-14 23:31:52', '2018-10-14 23:31:52', NULL),
(146, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-14 23:32:48', '2018-10-14 23:32:48', NULL),
(147, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-14 23:35:17', '2018-10-14 23:35:17', NULL),
(148, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-14 23:35:33', '2018-10-14 23:35:33', NULL),
(149, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-14 23:35:41', '2018-10-14 23:35:41', NULL),
(150, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-14 23:35:51', '2018-10-14 23:35:51', NULL),
(151, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-14 23:48:52', '2018-10-14 23:48:52', NULL),
(152, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-14 23:49:02', '2018-10-14 23:49:02', NULL),
(153, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-14 23:58:11', '2018-10-14 23:58:11', NULL),
(154, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-14 23:59:16', '2018-10-14 23:59:16', NULL),
(155, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-14 23:59:49', '2018-10-14 23:59:49', NULL),
(156, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-15 00:02:14', '2018-10-15 00:02:14', NULL),
(157, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-15 00:11:04', '2018-10-15 00:11:04', NULL),
(158, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-15 00:15:30', '2018-10-15 00:15:30', NULL),
(159, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-15 00:30:23', '2018-10-15 00:30:23', NULL),
(160, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-15 00:31:52', '2018-10-15 00:31:52', NULL),
(161, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-15 00:32:02', '2018-10-15 00:32:02', NULL),
(162, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-15 00:44:15', '2018-10-15 00:44:15', NULL),
(163, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-15 00:47:10', '2018-10-15 00:47:10', NULL),
(164, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-15 00:51:31', '2018-10-15 00:51:31', NULL),
(165, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-15 00:53:26', '2018-10-15 00:53:26', NULL),
(166, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-15 00:53:27', '2018-10-15 00:53:27', NULL),
(167, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'POST', '2018-10-15 00:53:43', '2018-10-15 00:53:43', NULL),
(168, 'Logged In', 'Registered', 5, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-15 00:54:00', '2018-10-15 00:54:00', NULL),
(169, 'Viewed home', 'Registered', 5, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-15 00:54:01', '2018-10-15 00:54:01', NULL),
(170, 'Viewed profile/16B1122', 'Registered', 5, 'http://localhost:8000/profile/16B1122', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-15 00:54:41', '2018-10-15 00:54:41', NULL),
(171, 'Viewed profile/16B1122/edit', 'Registered', 5, 'http://localhost:8000/profile/16B1122/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/16B1122', 'GET', '2018-10-15 00:54:47', '2018-10-15 00:54:47', NULL),
(172, 'Viewed home', 'Registered', 5, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/16B1122/edit', 'GET', '2018-10-15 00:57:39', '2018-10-15 00:57:39', NULL),
(173, 'Logged Out', 'Registered', 5, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-10-15 01:00:14', '2018-10-15 01:00:14', NULL),
(174, 'Logged In', 'Registered', 5, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-15 01:06:45', '2018-10-15 01:06:45', NULL),
(175, 'Viewed home', 'Registered', 5, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-15 01:06:47', '2018-10-15 01:06:47', NULL),
(176, 'Logged In', 'Registered', 5, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-17 22:00:42', '2018-10-17 22:00:42', NULL),
(177, 'Viewed profile/16B1122', 'Registered', 5, 'http://localhost:8000/profile/16B1122', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-17 22:00:43', '2018-10-17 22:00:43', NULL),
(178, 'Viewed profile/16B1122/edit', 'Registered', 5, 'http://localhost:8000/profile/16B1122/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/16B1122', 'GET', '2018-10-17 22:01:01', '2018-10-17 22:01:01', NULL),
(179, 'Edited profile/16B1122', 'Registered', 5, 'http://localhost:8000/profile/16B1122', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/16B1122/edit', 'PATCH', '2018-10-17 22:01:18', '2018-10-17 22:01:18', NULL),
(180, 'Viewed profile/16B1122/edit', 'Registered', 5, 'http://localhost:8000/profile/16B1122/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/16B1122/edit', 'GET', '2018-10-17 22:01:20', '2018-10-17 22:01:20', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(181, 'Viewed home', 'Registered', 5, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-17 22:01:50', '2018-10-17 22:01:50', NULL),
(182, 'Viewed home', 'Registered', 5, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-17 22:04:57', '2018-10-17 22:04:57', NULL),
(183, 'Viewed profile/16B1122', 'Registered', 5, 'http://localhost:8000/profile/16B1122', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-17 22:05:05', '2018-10-17 22:05:05', NULL),
(184, 'Viewed home', 'Registered', 5, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/16B1122', 'GET', '2018-10-17 22:05:17', '2018-10-17 22:05:17', NULL),
(185, 'Logged Out', 'Registered', 5, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-10-17 22:11:25', '2018-10-17 22:11:25', NULL),
(186, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-17 22:11:34', '2018-10-17 22:11:34', NULL),
(187, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-17 22:11:36', '2018-10-17 22:11:36', NULL),
(188, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-17 22:11:43', '2018-10-17 22:11:43', NULL),
(189, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-17 22:12:28', '2018-10-17 22:12:28', NULL),
(190, 'Viewed users/1', 'Registered', 1, 'http://localhost:8000/users/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-17 22:12:49', '2018-10-17 22:12:49', NULL),
(191, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/1', 'GET', '2018-10-17 22:13:13', '2018-10-17 22:13:13', NULL),
(192, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-17 23:29:59', '2018-10-17 23:29:59', NULL),
(193, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-17 23:44:11', '2018-10-17 23:44:11', NULL),
(194, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-17 23:46:05', '2018-10-17 23:46:05', NULL),
(195, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-17 23:47:53', '2018-10-17 23:47:53', NULL),
(196, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-17 23:49:44', '2018-10-17 23:49:44', NULL),
(197, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-17 23:54:25', '2018-10-17 23:54:25', NULL),
(198, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-17 23:55:12', '2018-10-17 23:55:12', NULL),
(199, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-17 23:55:24', '2018-10-17 23:55:24', NULL),
(200, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-17 23:57:05', '2018-10-17 23:57:05', NULL),
(201, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-17 23:59:27', '2018-10-17 23:59:27', NULL),
(202, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 00:12:52', '2018-10-18 00:12:52', NULL),
(203, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 00:45:47', '2018-10-18 00:45:47', NULL),
(204, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-18 00:47:21', '2018-10-18 00:47:21', NULL),
(205, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 00:59:45', '2018-10-18 00:59:45', NULL),
(206, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 00:59:51', '2018-10-18 00:59:51', NULL),
(207, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 01:23:43', '2018-10-18 01:23:43', NULL),
(208, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-18 01:24:05', '2018-10-18 01:24:05', NULL),
(209, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 01:42:12', '2018-10-18 01:42:12', NULL),
(210, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-18 01:42:21', '2018-10-18 01:42:21', NULL),
(211, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 01:44:38', '2018-10-18 01:44:38', NULL),
(212, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 01:50:10', '2018-10-18 01:50:10', NULL),
(213, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 01:50:25', '2018-10-18 01:50:25', NULL),
(214, 'Viewed users/createmeeting', 'Registered', 1, 'http://localhost:8000/users/createmeeting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-18 01:50:35', '2018-10-18 01:50:35', NULL),
(215, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 01:52:35', '2018-10-18 01:52:35', NULL),
(216, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 01:54:27', '2018-10-18 01:54:27', NULL),
(217, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 01:57:52', '2018-10-18 01:57:52', NULL),
(218, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 02:00:12', '2018-10-18 02:00:12', NULL),
(219, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 02:08:10', '2018-10-18 02:08:10', NULL),
(220, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 02:09:25', '2018-10-18 02:09:25', NULL),
(221, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 02:11:34', '2018-10-18 02:11:34', NULL),
(222, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 02:12:11', '2018-10-18 02:12:11', NULL),
(223, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 02:17:38', '2018-10-18 02:17:38', NULL),
(224, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 02:17:49', '2018-10-18 02:17:49', NULL),
(225, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-18 02:18:26', '2018-10-18 02:18:26', NULL),
(226, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 02:20:45', '2018-10-18 02:20:45', NULL),
(227, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 02:21:54', '2018-10-18 02:21:54', NULL),
(228, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 02:24:31', '2018-10-18 02:24:31', NULL),
(229, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 02:25:13', '2018-10-18 02:25:13', NULL),
(230, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-18 02:25:29', '2018-10-18 02:25:29', NULL),
(231, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 02:28:39', '2018-10-18 02:28:39', NULL),
(232, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 02:29:13', '2018-10-18 02:29:13', NULL),
(233, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 02:30:10', '2018-10-18 02:30:10', NULL),
(234, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 02:31:24', '2018-10-18 02:31:24', NULL),
(235, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-18 09:25:43', '2018-10-18 09:25:43', NULL),
(236, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-18 09:25:44', '2018-10-18 09:25:44', NULL),
(237, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 09:26:58', '2018-10-18 09:26:58', NULL),
(238, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 09:28:21', '2018-10-18 09:28:21', NULL),
(239, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 09:32:09', '2018-10-18 09:32:09', NULL),
(240, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 09:36:43', '2018-10-18 09:36:43', NULL),
(241, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 09:38:01', '2018-10-18 09:38:01', NULL),
(242, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 09:44:24', '2018-10-18 09:44:24', NULL),
(243, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 09:48:38', '2018-10-18 09:48:38', NULL),
(244, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 09:50:40', '2018-10-18 09:50:40', NULL),
(245, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 09:53:16', '2018-10-18 09:53:16', NULL),
(246, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 09:57:01', '2018-10-18 09:57:01', NULL),
(247, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-18 09:58:53', '2018-10-18 09:58:53', NULL),
(248, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-18 09:58:55', '2018-10-18 09:58:55', NULL),
(249, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 10:03:45', '2018-10-18 10:03:45', NULL),
(250, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 10:04:15', '2018-10-18 10:04:15', NULL),
(251, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/new', 'GET', '2018-10-18 10:06:31', '2018-10-18 10:06:31', NULL),
(252, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/new', 'GET', '2018-10-18 10:13:24', '2018-10-18 10:13:24', NULL),
(253, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 10:17:13', '2018-10-18 10:17:13', NULL),
(254, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/new', 'GET', '2018-10-18 10:19:02', '2018-10-18 10:19:02', NULL),
(255, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-18 22:42:50', '2018-10-18 22:42:50', NULL),
(256, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-18 22:42:51', '2018-10-18 22:42:51', NULL),
(257, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-18 22:44:58', '2018-10-18 22:44:58', NULL),
(258, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-18 22:45:06', '2018-10-18 22:45:06', NULL),
(259, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-18 22:46:49', '2018-10-18 22:46:49', NULL),
(260, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-18 22:46:50', '2018-10-18 22:46:50', NULL),
(261, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-18 22:47:49', '2018-10-18 22:47:49', NULL),
(262, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-18 22:47:51', '2018-10-18 22:47:51', NULL),
(263, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-18 22:50:01', '2018-10-18 22:50:01', NULL),
(264, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-18 22:50:03', '2018-10-18 22:50:03', NULL),
(265, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-18 22:51:03', '2018-10-18 22:51:03', NULL),
(266, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-18 22:51:04', '2018-10-18 22:51:04', NULL),
(267, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-18 22:56:58', '2018-10-18 22:56:58', NULL),
(268, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-18 22:57:00', '2018-10-18 22:57:00', NULL),
(269, 'Viewed users/6/edit', 'Registered', 1, 'http://localhost:8000/users/6/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-18 22:57:09', '2018-10-18 22:57:09', NULL),
(270, 'Edited users/6', 'Registered', 1, 'http://localhost:8000/users/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/6/edit', 'PUT', '2018-10-18 22:57:34', '2018-10-18 22:57:34', NULL),
(271, 'Viewed users/6/edit', 'Registered', 1, 'http://localhost:8000/users/6/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/6/edit', 'GET', '2018-10-18 22:57:38', '2018-10-18 22:57:38', NULL),
(272, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/6/edit', 'GET', '2018-10-18 22:57:56', '2018-10-18 22:57:56', NULL),
(273, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 22:58:56', '2018-10-18 22:58:56', NULL),
(274, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-18 23:00:42', '2018-10-18 23:00:42', NULL),
(275, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-18 23:01:06', '2018-10-18 23:01:06', NULL),
(276, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-18 23:01:15', '2018-10-18 23:01:15', NULL),
(277, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-18 23:02:11', '2018-10-18 23:02:11', NULL),
(278, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-18 23:02:13', '2018-10-18 23:02:13', NULL),
(279, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-18 23:07:33', '2018-10-18 23:07:33', NULL),
(280, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-18 23:08:22', '2018-10-18 23:08:22', NULL),
(281, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-18 23:08:24', '2018-10-18 23:08:24', NULL),
(282, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-18 23:09:09', '2018-10-18 23:09:09', NULL),
(283, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-18 23:10:20', '2018-10-18 23:10:20', NULL),
(284, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-18 23:10:22', '2018-10-18 23:10:22', NULL),
(285, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-18 23:11:03', '2018-10-18 23:11:03', NULL),
(286, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-18 23:25:25', '2018-10-18 23:25:25', NULL),
(287, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-18 23:26:04', '2018-10-18 23:26:04', NULL),
(288, 'Viewed profile/admin', 'Registered', 1, 'http://localhost:8000/profile/admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-18 23:26:12', '2018-10-18 23:26:12', NULL),
(289, 'Viewed profile/admin/edit', 'Registered', 1, 'http://localhost:8000/profile/admin/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/admin', 'GET', '2018-10-18 23:26:21', '2018-10-18 23:26:21', NULL),
(290, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/admin/edit', 'GET', '2018-10-18 23:27:06', '2018-10-18 23:27:06', NULL),
(291, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-10-18 23:27:55', '2018-10-18 23:27:55', NULL),
(292, 'Logged In', 'Registered', 7, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-18 23:28:36', '2018-10-18 23:28:36', NULL),
(293, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-18 23:28:38', '2018-10-18 23:28:38', NULL),
(294, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-18 23:29:50', '2018-10-18 23:29:50', NULL),
(295, 'Viewed profile/14b3370', 'Registered', 7, 'http://localhost:8000/profile/14b3370', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-18 23:29:55', '2018-10-18 23:29:55', NULL),
(296, 'Viewed profile/14b3370/edit', 'Registered', 7, 'http://localhost:8000/profile/14b3370/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/14b3370', 'GET', '2018-10-18 23:30:55', '2018-10-18 23:30:55', NULL),
(297, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/14b3370/edit', 'GET', '2018-10-18 23:31:04', '2018-10-18 23:31:04', NULL),
(298, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-18 23:33:07', '2018-10-18 23:33:07', NULL),
(299, 'Logged Out', 'Registered', 7, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-10-18 23:33:21', '2018-10-18 23:33:21', NULL),
(300, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-18 23:35:29', '2018-10-18 23:35:29', NULL),
(301, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-18 23:35:31', '2018-10-18 23:35:31', NULL),
(302, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/new', 'GET', '2018-10-18 23:35:49', '2018-10-18 23:35:49', NULL),
(303, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-18 23:35:57', '2018-10-18 23:35:57', NULL),
(304, 'Logged In', 'Registered', 7, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-18 23:36:24', '2018-10-18 23:36:24', NULL),
(305, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-18 23:36:25', '2018-10-18 23:36:25', NULL),
(306, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/new', 'GET', '2018-10-18 23:39:34', '2018-10-18 23:39:34', NULL),
(307, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-18 23:40:50', '2018-10-18 23:40:50', NULL),
(308, 'Logged Out', 'Registered', 7, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-10-18 23:40:59', '2018-10-18 23:40:59', NULL),
(309, 'Logged In', 'Registered', 7, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-18 23:41:07', '2018-10-18 23:41:07', NULL),
(310, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-18 23:41:09', '2018-10-18 23:41:09', NULL),
(311, 'Logged Out', 'Registered', 7, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-10-18 23:41:18', '2018-10-18 23:41:18', NULL),
(312, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-18 23:41:34', '2018-10-18 23:41:34', NULL),
(313, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-18 23:41:39', '2018-10-18 23:41:39', NULL),
(314, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-18 23:42:18', '2018-10-18 23:42:18', NULL),
(315, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/new', 'GET', '2018-10-18 23:43:14', '2018-10-18 23:43:14', NULL),
(316, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-18 23:43:22', '2018-10-18 23:43:22', NULL),
(317, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-21 23:00:46', '2018-10-21 23:00:46', NULL),
(318, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-21 23:00:47', '2018-10-21 23:00:47', NULL),
(319, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-22 06:53:20', '2018-10-22 06:53:20', NULL),
(320, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-22 06:53:22', '2018-10-22 06:53:22', NULL),
(321, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-22 07:36:17', '2018-10-22 07:36:17', NULL),
(322, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-22 07:37:09', '2018-10-22 07:37:09', NULL),
(323, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-22 07:46:19', '2018-10-22 07:46:19', NULL),
(324, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-22 08:02:39', '2018-10-22 08:02:39', NULL),
(325, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-22 08:09:01', '2018-10-22 08:09:01', NULL),
(326, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-22 08:09:43', '2018-10-22 08:09:43', NULL),
(327, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/viewfeedback', 'GET', '2018-10-22 08:28:03', '2018-10-22 08:28:03', NULL),
(328, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-22 08:28:38', '2018-10-22 08:28:38', NULL),
(329, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-10-22 08:29:03', '2018-10-22 08:29:03', NULL),
(330, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-22 08:37:52', '2018-10-22 08:37:52', NULL),
(331, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-22 08:42:57', '2018-10-22 08:42:57', NULL),
(332, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-22 08:45:03', '2018-10-22 08:45:03', NULL),
(333, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/timeslot', 'GET', '2018-10-22 08:48:02', '2018-10-22 08:48:02', NULL),
(334, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-22 08:48:21', '2018-10-22 08:48:21', NULL),
(335, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-10-22 08:48:34', '2018-10-22 08:48:34', NULL),
(336, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/timeslot', 'GET', '2018-10-22 08:54:38', '2018-10-22 08:54:38', NULL),
(337, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/timeslot', 'GET', '2018-10-22 08:55:05', '2018-10-22 08:55:05', NULL),
(338, 'Viewed logs', 'Registered', 1, 'http://localhost:8000/logs', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/timeslot', 'GET', '2018-10-22 08:55:34', '2018-10-22 08:55:34', NULL),
(339, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/timeslot', 'GET', '2018-10-22 08:56:28', '2018-10-22 08:56:28', NULL),
(340, 'Viewed activity', 'Registered', 1, 'http://localhost:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-22 08:56:34', '2018-10-22 08:56:34', NULL),
(341, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-22 08:57:07', '2018-10-22 08:57:07', NULL),
(342, 'Viewed active-users', 'Registered', 1, 'http://localhost:8000/active-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-22 08:57:43', '2018-10-22 08:57:43', NULL),
(343, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-10-22 08:57:54', '2018-10-22 08:57:54', NULL),
(344, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/timeslot', 'POST', '2018-10-22 08:58:43', '2018-10-22 08:58:43', NULL),
(345, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-22 09:04:41', '2018-10-22 09:04:41', NULL),
(346, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-22 09:04:42', '2018-10-22 09:04:42', NULL),
(347, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-10-22 09:06:01', '2018-10-22 09:06:01', NULL),
(348, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-22 09:06:17', '2018-10-22 09:06:17', NULL),
(349, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-22 22:04:45', '2018-10-22 22:04:45', NULL),
(350, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-22 22:04:47', '2018-10-22 22:04:47', NULL),
(351, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'POST', '2018-10-22 22:05:53', '2018-10-22 22:05:53', NULL),
(352, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-24 06:45:46', '2018-10-24 06:45:46', NULL),
(353, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-24 06:45:47', '2018-10-24 06:45:47', NULL),
(354, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-10-24 06:50:02', '2018-10-24 06:50:02', NULL),
(355, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-24 06:53:24', '2018-10-24 06:53:24', NULL),
(356, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-24 06:53:25', '2018-10-24 06:53:25', NULL),
(357, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-24 06:53:30', '2018-10-24 06:53:30', NULL),
(358, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-10-24 06:55:57', '2018-10-24 06:55:57', NULL),
(359, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-24 07:06:40', '2018-10-24 07:06:40', NULL),
(360, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-24 07:06:41', '2018-10-24 07:06:41', NULL),
(361, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-24 07:07:26', '2018-10-24 07:07:26', NULL),
(362, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-24 07:07:28', '2018-10-24 07:07:28', NULL),
(363, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-24 07:12:41', '2018-10-24 07:12:41', NULL),
(364, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-24 07:12:42', '2018-10-24 07:12:42', NULL),
(365, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-24 07:16:46', '2018-10-24 07:16:46', NULL),
(366, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-24 07:16:48', '2018-10-24 07:16:48', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(367, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-24 07:19:26', '2018-10-24 07:19:26', NULL),
(368, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-24 07:19:27', '2018-10-24 07:19:27', NULL),
(369, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-24 07:27:30', '2018-10-24 07:27:30', NULL),
(370, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-24 07:27:32', '2018-10-24 07:27:32', NULL),
(371, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-24 07:27:56', '2018-10-24 07:27:56', NULL),
(372, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-24 07:27:57', '2018-10-24 07:27:57', NULL),
(373, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-24 07:29:39', '2018-10-24 07:29:39', NULL),
(374, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-24 07:29:41', '2018-10-24 07:29:41', NULL),
(375, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-24 07:32:58', '2018-10-24 07:32:58', NULL),
(376, 'Viewed users/1', 'Registered', 1, 'http://localhost:8000/users/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-24 07:33:06', '2018-10-24 07:33:06', NULL),
(377, 'Failed Login Attempt', 'Guest', NULL, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-25 00:51:08', '2018-10-25 00:51:08', NULL),
(378, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-25 01:02:21', '2018-10-25 01:02:21', NULL),
(379, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-25 01:02:22', '2018-10-25 01:02:22', NULL),
(380, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/timeslot', 'GET', '2018-10-25 01:16:18', '2018-10-25 01:16:18', NULL),
(381, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-25 01:17:08', '2018-10-25 01:17:08', NULL),
(382, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-25 01:17:09', '2018-10-25 01:17:09', NULL),
(383, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-26 07:54:27', '2018-10-26 07:54:27', NULL),
(384, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-26 07:54:28', '2018-10-26 07:54:28', NULL),
(385, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-10-26 08:21:14', '2018-10-26 08:21:14', NULL),
(386, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-10-26 08:26:57', '2018-10-26 08:26:57', NULL),
(387, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-10-26 08:29:48', '2018-10-26 08:29:48', NULL),
(388, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'POST', '2018-10-26 08:30:05', '2018-10-26 08:30:05', NULL),
(389, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-27 06:22:23', '2018-10-27 06:22:23', NULL),
(390, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-27 06:22:24', '2018-10-27 06:22:24', NULL),
(391, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-10-27 06:23:54', '2018-10-27 06:23:54', NULL),
(392, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-10-27 06:24:12', '2018-10-27 06:24:12', NULL),
(393, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-29 01:02:34', '2018-10-29 01:02:34', NULL),
(394, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-29 01:02:36', '2018-10-29 01:02:36', NULL),
(395, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-10-29 01:02:44', '2018-10-29 01:02:44', NULL),
(396, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:02:58', '2018-10-29 01:02:58', NULL),
(397, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:03:40', '2018-10-29 01:03:40', NULL),
(398, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:04:57', '2018-10-29 01:04:57', NULL),
(399, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:04:58', '2018-10-29 01:04:58', NULL),
(400, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:06:11', '2018-10-29 01:06:11', NULL),
(401, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:06:13', '2018-10-29 01:06:13', NULL),
(402, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:06:23', '2018-10-29 01:06:23', NULL),
(403, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:08:14', '2018-10-29 01:08:14', NULL),
(404, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:08:16', '2018-10-29 01:08:16', NULL),
(405, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:08:27', '2018-10-29 01:08:27', NULL),
(406, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:10:09', '2018-10-29 01:10:09', NULL),
(407, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:10:11', '2018-10-29 01:10:11', NULL),
(408, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:10:23', '2018-10-29 01:10:23', NULL),
(409, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:11:33', '2018-10-29 01:11:33', NULL),
(410, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:11:35', '2018-10-29 01:11:35', NULL),
(411, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:12:49', '2018-10-29 01:12:49', NULL),
(412, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:12:51', '2018-10-29 01:12:51', NULL),
(413, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:13:10', '2018-10-29 01:13:10', NULL),
(414, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:14:48', '2018-10-29 01:14:48', NULL),
(415, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:14:50', '2018-10-29 01:14:50', NULL),
(416, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:15:16', '2018-10-29 01:15:16', NULL),
(417, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:16:22', '2018-10-29 01:16:22', NULL),
(418, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:16:24', '2018-10-29 01:16:24', NULL),
(419, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:16:36', '2018-10-29 01:16:36', NULL),
(420, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:17:37', '2018-10-29 01:17:37', NULL),
(421, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:17:39', '2018-10-29 01:17:39', NULL),
(422, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:18:10', '2018-10-29 01:18:10', NULL),
(423, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:18:52', '2018-10-29 01:18:52', NULL),
(424, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:18:54', '2018-10-29 01:18:54', NULL),
(425, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:19:27', '2018-10-29 01:19:27', NULL),
(426, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:20:23', '2018-10-29 01:20:23', NULL),
(427, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:20:25', '2018-10-29 01:20:25', NULL),
(428, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:21:10', '2018-10-29 01:21:10', NULL),
(429, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:21:56', '2018-10-29 01:21:56', NULL),
(430, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:21:57', '2018-10-29 01:21:57', NULL),
(431, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:22:06', '2018-10-29 01:22:06', NULL),
(432, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:22:46', '2018-10-29 01:22:46', NULL),
(433, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:22:47', '2018-10-29 01:22:47', NULL),
(434, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:23:03', '2018-10-29 01:23:03', NULL),
(435, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:23:38', '2018-10-29 01:23:38', NULL),
(436, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:23:40', '2018-10-29 01:23:40', NULL),
(437, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:23:52', '2018-10-29 01:23:52', NULL),
(438, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:24:35', '2018-10-29 01:24:35', NULL),
(439, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:24:37', '2018-10-29 01:24:37', NULL),
(440, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:24:53', '2018-10-29 01:24:53', NULL),
(441, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:25:33', '2018-10-29 01:25:33', NULL),
(442, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:25:34', '2018-10-29 01:25:34', NULL),
(443, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:25:50', '2018-10-29 01:25:50', NULL),
(444, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:25:52', '2018-10-29 01:25:52', NULL),
(445, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:27:05', '2018-10-29 01:27:05', NULL),
(446, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:28:11', '2018-10-29 01:28:11', NULL),
(447, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:28:13', '2018-10-29 01:28:13', NULL),
(448, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:28:29', '2018-10-29 01:28:29', NULL),
(449, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:29:21', '2018-10-29 01:29:21', NULL),
(450, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:29:23', '2018-10-29 01:29:23', NULL),
(451, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:31:05', '2018-10-29 01:31:05', NULL),
(452, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:32:09', '2018-10-29 01:32:09', NULL),
(453, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:32:11', '2018-10-29 01:32:11', NULL),
(454, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:32:23', '2018-10-29 01:32:23', NULL),
(455, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:33:08', '2018-10-29 01:33:08', NULL),
(456, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:33:10', '2018-10-29 01:33:10', NULL),
(457, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:33:54', '2018-10-29 01:33:54', NULL),
(458, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:38:56', '2018-10-29 01:38:56', NULL),
(459, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:38:58', '2018-10-29 01:38:58', NULL),
(460, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:40:00', '2018-10-29 01:40:00', NULL),
(461, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:40:33', '2018-10-29 01:40:33', NULL),
(462, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:40:35', '2018-10-29 01:40:35', NULL),
(463, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:40:49', '2018-10-29 01:40:49', NULL),
(464, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:42:00', '2018-10-29 01:42:00', NULL),
(465, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:42:02', '2018-10-29 01:42:02', NULL),
(466, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:53:04', '2018-10-29 01:53:04', NULL),
(467, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:54:51', '2018-10-29 01:54:51', NULL),
(468, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:54:52', '2018-10-29 01:54:52', NULL),
(469, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:55:01', '2018-10-29 01:55:01', NULL),
(470, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:55:19', '2018-10-29 01:55:19', NULL),
(471, 'Deleted users/5', 'Registered', 1, 'http://localhost:8000/users/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'DELETE', '2018-10-29 01:55:38', '2018-10-29 01:55:38', NULL),
(472, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:55:40', '2018-10-29 01:55:40', NULL),
(473, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:56:12', '2018-10-29 01:56:12', NULL),
(474, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:57:03', '2018-10-29 01:57:03', NULL),
(475, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:57:04', '2018-10-29 01:57:04', NULL),
(476, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:57:15', '2018-10-29 01:57:15', NULL),
(477, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:57:51', '2018-10-29 01:57:51', NULL),
(478, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:57:52', '2018-10-29 01:57:52', NULL),
(479, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:58:03', '2018-10-29 01:58:03', NULL),
(480, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:58:44', '2018-10-29 01:58:44', NULL),
(481, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:58:45', '2018-10-29 01:58:45', NULL),
(482, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:59:06', '2018-10-29 01:59:06', NULL),
(483, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 01:59:42', '2018-10-29 01:59:42', NULL),
(484, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 01:59:43', '2018-10-29 01:59:43', NULL),
(485, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 01:59:54', '2018-10-29 01:59:54', NULL),
(486, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 02:00:21', '2018-10-29 02:00:21', NULL),
(487, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 02:00:23', '2018-10-29 02:00:23', NULL),
(488, 'Viewed users/2/edit', 'Registered', 1, 'http://localhost:8000/users/2/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 02:01:26', '2018-10-29 02:01:26', NULL),
(489, 'Edited users/2', 'Registered', 1, 'http://localhost:8000/users/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/2/edit', 'PUT', '2018-10-29 02:02:01', '2018-10-29 02:02:01', NULL),
(490, 'Viewed users/2/edit', 'Registered', 1, 'http://localhost:8000/users/2/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/2/edit', 'GET', '2018-10-29 02:02:02', '2018-10-29 02:02:02', NULL),
(491, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/2/edit', 'GET', '2018-10-29 02:02:11', '2018-10-29 02:02:11', NULL),
(492, 'Deleted users/2', 'Registered', 1, 'http://localhost:8000/users/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'DELETE', '2018-10-29 02:02:33', '2018-10-29 02:02:33', NULL),
(493, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 02:02:35', '2018-10-29 02:02:35', NULL),
(494, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 02:06:11', '2018-10-29 02:06:11', NULL),
(495, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 02:08:30', '2018-10-29 02:08:30', NULL),
(496, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 02:09:20', '2018-10-29 02:09:20', NULL),
(497, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 02:10:18', '2018-10-29 02:10:18', NULL),
(498, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 02:10:34', '2018-10-29 02:10:34', NULL),
(499, 'Viewed users/create', 'Registered', 1, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-10-29 02:11:24', '2018-10-29 02:11:24', NULL),
(500, 'Created users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-10-29 02:11:46', '2018-10-29 02:11:46', NULL),
(501, 'Viewed users', 'Registered', 1, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-10-29 02:11:48', '2018-10-29 02:11:48', NULL),
(502, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 05:49:21', '2018-10-30 05:49:21', NULL),
(503, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 05:50:29', '2018-10-30 05:50:29', NULL),
(504, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-10-30 05:55:24', '2018-10-30 05:55:24', NULL),
(505, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-30 05:55:25', '2018-10-30 05:55:25', NULL),
(506, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 05:57:17', '2018-10-30 05:57:17', NULL),
(507, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 05:59:27', '2018-10-30 05:59:27', NULL),
(508, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 06:02:40', '2018-10-30 06:02:40', NULL),
(509, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 06:03:57', '2018-10-30 06:03:57', NULL),
(510, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 06:14:05', '2018-10-30 06:14:05', NULL),
(511, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 06:20:19', '2018-10-30 06:20:19', NULL),
(512, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 06:43:12', '2018-10-30 06:43:12', NULL),
(513, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 06:52:05', '2018-10-30 06:52:05', NULL),
(514, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 06:54:00', '2018-10-30 06:54:00', NULL),
(515, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 07:01:33', '2018-10-30 07:01:33', NULL),
(516, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 07:05:43', '2018-10-30 07:05:43', NULL),
(517, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 07:31:36', '2018-10-30 07:31:36', NULL),
(518, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 07:33:08', '2018-10-30 07:33:08', NULL),
(519, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 07:34:28', '2018-10-30 07:34:28', NULL),
(520, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 07:40:12', '2018-10-30 07:40:12', NULL),
(521, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 07:41:18', '2018-10-30 07:41:18', NULL),
(522, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 07:45:04', '2018-10-30 07:45:04', NULL),
(523, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 07:51:50', '2018-10-30 07:51:50', NULL),
(524, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-10-30 07:53:39', '2018-10-30 07:53:39', NULL),
(525, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-10-30 08:04:46', '2018-10-30 08:04:46', NULL),
(526, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-10-30 08:05:45', '2018-10-30 08:05:45', NULL),
(527, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-10-30 08:08:14', '2018-10-30 08:08:14', NULL),
(528, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-10-30 08:08:23', '2018-10-30 08:08:23', NULL),
(529, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-01 03:21:25', '2018-11-01 03:21:25', NULL),
(530, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-01 03:21:26', '2018-11-01 03:21:26', NULL),
(531, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-01 03:52:56', '2018-11-01 03:52:56', NULL),
(532, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-01 04:14:17', '2018-11-01 04:14:17', NULL),
(533, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting', 'GET', '2018-11-01 04:38:14', '2018-11-01 04:38:14', NULL),
(534, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/4', 'GET', '2018-11-01 04:49:21', '2018-11-01 04:49:21', NULL),
(535, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/1', 'GET', '2018-11-01 05:27:15', '2018-11-01 05:27:15', NULL),
(536, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/1', 'GET', '2018-11-01 05:27:50', '2018-11-01 05:27:50', NULL),
(537, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/1', 'GET', '2018-11-01 05:28:41', '2018-11-01 05:28:41', NULL),
(538, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/1', 'GET', '2018-11-01 05:29:15', '2018-11-01 05:29:15', NULL),
(539, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/1', 'GET', '2018-11-01 05:29:42', '2018-11-01 05:29:42', NULL),
(540, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/1', 'GET', '2018-11-01 05:30:55', '2018-11-01 05:30:55', NULL),
(541, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/1', 'GET', '2018-11-01 05:32:09', '2018-11-01 05:32:09', NULL),
(542, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-01 05:34:13', '2018-11-01 05:34:13', NULL),
(543, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-01 05:35:55', '2018-11-01 05:35:55', NULL),
(544, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-11-01 05:39:30', '2018-11-01 05:39:30', NULL),
(545, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting', 'GET', '2018-11-01 05:42:01', '2018-11-01 05:42:01', NULL),
(546, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-01 05:49:12', '2018-11-01 05:49:12', NULL),
(547, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-01 06:31:12', '2018-11-01 06:31:12', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(548, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting', 'GET', '2018-11-01 06:50:51', '2018-11-01 06:50:51', NULL),
(549, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-11-01 06:51:29', '2018-11-01 06:51:29', NULL),
(550, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-03 02:22:28', '2018-11-03 02:22:28', NULL),
(551, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-03 02:22:30', '2018-11-03 02:22:30', NULL),
(552, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/1/edit', 'GET', '2018-11-03 02:39:04', '2018-11-03 02:39:04', NULL),
(553, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/9', 'GET', '2018-11-03 03:29:57', '2018-11-03 03:29:57', NULL),
(554, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/1/edit', 'GET', '2018-11-03 03:48:08', '2018-11-03 03:48:08', NULL),
(555, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-11-03 04:00:16', '2018-11-03 04:00:16', NULL),
(556, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-03 17:45:12', '2018-11-03 17:45:12', NULL),
(557, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-03 17:45:13', '2018-11-03 17:45:13', NULL),
(558, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-11-03 19:40:50', '2018-11-03 19:40:50', NULL),
(559, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/1/edit', 'GET', '2018-11-03 19:44:30', '2018-11-03 19:44:30', NULL),
(560, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-04 06:00:18', '2018-11-04 06:00:18', NULL),
(561, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-04 06:00:19', '2018-11-04 06:00:19', NULL),
(562, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting', 'GET', '2018-11-04 06:37:01', '2018-11-04 06:37:01', NULL),
(563, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-04 06:41:46', '2018-11-04 06:41:46', NULL),
(564, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-04 06:47:53', '2018-11-04 06:47:53', NULL),
(565, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-04 06:58:55', '2018-11-04 06:58:55', NULL),
(566, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-04 07:01:47', '2018-11-04 07:01:47', NULL),
(567, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-04 07:09:57', '2018-11-04 07:09:57', NULL),
(568, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-04 07:19:10', '2018-11-04 07:19:10', NULL),
(569, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-04 07:22:36', '2018-11-04 07:22:36', NULL),
(570, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-04 07:41:01', '2018-11-04 07:41:01', NULL),
(571, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-04 07:47:50', '2018-11-04 07:47:50', NULL),
(572, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-04 07:49:27', '2018-11-04 07:49:27', NULL),
(573, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-04 09:14:39', '2018-11-04 09:14:39', NULL),
(574, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-11-04 09:16:09', '2018-11-04 09:16:09', NULL),
(575, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-04 09:18:17', '2018-11-04 09:18:17', NULL),
(576, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-04 09:27:12', '2018-11-04 09:27:12', NULL),
(577, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-04 10:01:03', '2018-11-04 10:01:03', NULL),
(578, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-04 10:04:22', '2018-11-04 10:04:22', NULL),
(579, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-04 10:34:53', '2018-11-04 10:34:53', NULL),
(580, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-04 10:42:35', '2018-11-04 10:42:35', NULL),
(581, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/send', 'GET', '2018-11-04 10:43:29', '2018-11-04 10:43:29', NULL),
(582, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 00:28:54', '2018-11-05 00:28:54', NULL),
(583, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 00:28:56', '2018-11-05 00:28:56', NULL),
(584, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-05 00:44:43', '2018-11-05 00:44:43', NULL),
(585, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-05 00:47:28', '2018-11-05 00:47:28', NULL),
(586, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-05 00:47:56', '2018-11-05 00:47:56', NULL),
(587, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-11-05 01:05:19', '2018-11-05 01:05:19', NULL),
(588, 'Logged In', 'Registered', 7, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 01:05:42', '2018-11-05 01:05:42', NULL),
(589, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 01:05:43', '2018-11-05 01:05:43', NULL),
(590, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-05 01:29:15', '2018-11-05 01:29:15', NULL),
(591, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-05 01:30:58', '2018-11-05 01:30:58', NULL),
(592, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-05 01:33:10', '2018-11-05 01:33:10', NULL),
(593, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-05 01:34:00', '2018-11-05 01:34:00', NULL),
(594, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-05 01:34:48', '2018-11-05 01:34:48', NULL),
(595, 'Logged Out', 'Registered', 7, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-11-05 01:35:01', '2018-11-05 01:35:01', NULL),
(596, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 01:35:11', '2018-11-05 01:35:11', NULL),
(597, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 01:35:13', '2018-11-05 01:35:13', NULL),
(598, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-11-05 01:35:20', '2018-11-05 01:35:20', NULL),
(599, 'Logged In', 'Registered', 7, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 01:35:28', '2018-11-05 01:35:28', NULL),
(600, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 01:35:29', '2018-11-05 01:35:29', NULL),
(601, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 01:36:44', '2018-11-05 01:36:44', NULL),
(602, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-05 01:38:14', '2018-11-05 01:38:14', NULL),
(603, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-05 01:40:31', '2018-11-05 01:40:31', NULL),
(604, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-05 01:41:00', '2018-11-05 01:41:00', NULL),
(605, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-05 01:41:36', '2018-11-05 01:41:36', NULL),
(606, 'Viewed profile/14b3370', 'Registered', 7, 'http://localhost:8000/profile/14b3370', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-11-05 01:41:46', '2018-11-05 01:41:46', NULL),
(607, 'Logged Out', 'Registered', 7, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/profile/14b3370', 'POST', '2018-11-05 01:42:21', '2018-11-05 01:42:21', NULL),
(608, 'Logged In', 'Registered', 8, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 01:42:35', '2018-11-05 01:42:35', NULL),
(609, 'Viewed home', 'Registered', 8, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 01:42:36', '2018-11-05 01:42:36', NULL),
(610, 'Logged Out', 'Registered', 8, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-11-05 01:42:45', '2018-11-05 01:42:45', NULL),
(611, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 01:42:55', '2018-11-05 01:42:55', NULL),
(612, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 01:42:57', '2018-11-05 01:42:57', NULL),
(613, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-11-05 01:43:10', '2018-11-05 01:43:10', NULL),
(614, 'Logged In', 'Registered', 7, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 01:43:22', '2018-11-05 01:43:22', NULL),
(615, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 01:43:23', '2018-11-05 01:43:23', NULL),
(616, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 01:45:37', '2018-11-05 01:45:37', NULL),
(617, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-05 01:46:03', '2018-11-05 01:46:03', NULL),
(618, 'Logged Out', 'Registered', 7, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-11-05 01:47:48', '2018-11-05 01:47:48', NULL),
(619, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 01:47:59', '2018-11-05 01:47:59', NULL),
(620, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 01:48:00', '2018-11-05 01:48:00', NULL),
(621, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting', 'GET', '2018-11-05 02:06:16', '2018-11-05 02:06:16', NULL),
(622, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-11-05 02:06:22', '2018-11-05 02:06:22', NULL),
(623, 'Logged In', 'Registered', 7, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 02:06:30', '2018-11-05 02:06:30', NULL),
(624, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 02:06:31', '2018-11-05 02:06:31', NULL),
(625, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', NULL, 'GET', '2018-11-05 02:07:19', '2018-11-05 02:07:19', NULL),
(626, 'Logged Out', 'Registered', 7, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-11-05 02:46:03', '2018-11-05 02:46:03', NULL),
(627, 'Logged In', 'Registered', 6, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 02:46:28', '2018-11-05 02:46:28', NULL),
(628, 'Viewed home', 'Registered', 6, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 02:46:29', '2018-11-05 02:46:29', NULL),
(629, 'Logged Out', 'Registered', 6, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/usermeeting', 'POST', '2018-11-05 02:48:58', '2018-11-05 02:48:58', NULL),
(630, 'Logged In', 'Registered', 7, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 02:49:07', '2018-11-05 02:49:07', NULL),
(631, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 02:49:08', '2018-11-05 02:49:08', NULL),
(632, 'Logged Out', 'Registered', 7, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/usermeeting', 'POST', '2018-11-05 02:49:22', '2018-11-05 02:49:22', NULL),
(633, 'Logged In', 'Registered', 6, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 02:49:52', '2018-11-05 02:49:52', NULL),
(634, 'Viewed home', 'Registered', 6, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 02:49:53', '2018-11-05 02:49:53', NULL),
(635, 'Logged In', 'Registered', 7, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 09:23:55', '2018-11-05 09:23:55', NULL),
(636, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 09:23:56', '2018-11-05 09:23:56', NULL),
(637, 'Logged Out', 'Registered', 7, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/usermeeting', 'POST', '2018-11-05 09:43:08', '2018-11-05 09:43:08', NULL),
(638, 'Logged In', 'Registered', 7, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 09:43:21', '2018-11-05 09:43:21', NULL),
(639, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 09:43:22', '2018-11-05 09:43:22', NULL),
(640, 'Logged Out', 'Registered', 7, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-11-05 09:43:28', '2018-11-05 09:43:28', NULL),
(641, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 09:43:37', '2018-11-05 09:43:37', NULL),
(642, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 09:43:38', '2018-11-05 09:43:38', NULL),
(643, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-11-05 10:32:05', '2018-11-05 10:32:05', NULL),
(644, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/2/edit', 'POST', '2018-11-05 11:31:45', '2018-11-05 11:31:45', NULL),
(645, 'Logged In', 'Registered', 7, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 11:31:54', '2018-11-05 11:31:54', NULL),
(646, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 11:31:55', '2018-11-05 11:31:55', NULL),
(647, 'Logged Out', 'Registered', 7, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/usermeeting', 'POST', '2018-11-05 11:41:51', '2018-11-05 11:41:51', NULL),
(648, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 11:42:02', '2018-11-05 11:42:02', NULL),
(649, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 11:42:03', '2018-11-05 11:42:03', NULL),
(650, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/9/edit', 'GET', '2018-11-05 12:05:53', '2018-11-05 12:05:53', NULL),
(651, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-11-05 12:05:58', '2018-11-05 12:05:58', NULL),
(652, 'Logged In', 'Registered', 7, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 12:06:15', '2018-11-05 12:06:15', NULL),
(653, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 12:06:16', '2018-11-05 12:06:16', NULL),
(654, 'Logged In', 'Registered', 7, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 15:43:58', '2018-11-05 15:43:58', NULL),
(655, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 15:43:59', '2018-11-05 15:43:59', NULL),
(656, 'Logged Out', 'Registered', 7, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/usermeeting', 'POST', '2018-11-05 15:44:59', '2018-11-05 15:44:59', NULL),
(657, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 15:45:07', '2018-11-05 15:45:07', NULL),
(658, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 15:45:09', '2018-11-05 15:45:09', NULL),
(659, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 15:46:53', '2018-11-05 15:46:53', NULL),
(660, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/2/edit', 'GET', '2018-11-05 15:55:55', '2018-11-05 15:55:55', NULL),
(661, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/create', 'GET', '2018-11-05 15:56:12', '2018-11-05 15:56:12', NULL),
(662, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-11-05 16:00:18', '2018-11-05 16:00:18', NULL),
(663, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-05 16:00:36', '2018-11-05 16:00:36', NULL),
(664, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-05 16:00:37', '2018-11-05 16:00:37', NULL),
(665, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting/1/edit', 'GET', '2018-11-05 16:29:12', '2018-11-05 16:29:12', NULL),
(666, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-11-05 16:29:21', '2018-11-05 16:29:21', NULL),
(667, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-10 06:33:15', '2018-11-10 06:33:15', NULL),
(668, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-10 06:33:16', '2018-11-10 06:33:16', NULL),
(669, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-10 06:48:29', '2018-11-10 06:48:29', NULL),
(670, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting', 'GET', '2018-11-10 07:09:28', '2018-11-10 07:09:28', NULL),
(671, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/meeting', 'GET', '2018-11-10 07:12:08', '2018-11-10 07:12:08', NULL),
(672, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-11-10 07:12:16', '2018-11-10 07:12:16', NULL),
(673, 'Logged In', 'Registered', 7, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-10 07:18:38', '2018-11-10 07:18:38', NULL),
(674, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-10 07:18:39', '2018-11-10 07:18:39', NULL),
(675, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-10 07:20:49', '2018-11-10 07:20:49', NULL),
(676, 'Logged Out', 'Registered', 7, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2018-11-10 07:21:13', '2018-11-10 07:21:13', NULL),
(677, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-10 07:22:17', '2018-11-10 07:22:17', NULL),
(678, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-10 07:22:18', '2018-11-10 07:22:18', NULL),
(679, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/about', 'POST', '2018-11-10 07:22:50', '2018-11-10 07:22:50', NULL),
(680, 'Logged In', 'Registered', 8, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-10 07:23:37', '2018-11-10 07:23:37', NULL),
(681, 'Viewed home', 'Registered', 8, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-10 07:23:38', '2018-11-10 07:23:38', NULL),
(682, 'Logged Out', 'Registered', 8, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/about', 'POST', '2018-11-10 07:27:47', '2018-11-10 07:27:47', NULL),
(683, 'Failed Login Attempt', 'Guest', NULL, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-10 07:27:57', '2018-11-10 07:27:57', NULL),
(684, 'Failed Login Attempt', 'Guest', NULL, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-10 07:28:09', '2018-11-10 07:28:09', NULL),
(685, 'Logged In', 'Registered', 7, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2018-11-10 07:30:15', '2018-11-10 07:30:15', NULL),
(686, 'Viewed home', 'Registered', 7, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-11-10 07:30:16', '2018-11-10 07:30:16', NULL),
(687, 'Viewed users', 'Registered', 7, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'GET', '2018-11-10 07:30:23', '2018-11-10 07:30:23', NULL),
(688, 'Viewed users/create', 'Registered', 7, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-11-10 07:30:34', '2018-11-10 07:30:34', NULL),
(689, 'Created users', 'Registered', 7, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-11-10 07:30:53', '2018-11-10 07:30:53', NULL),
(690, 'Viewed users', 'Registered', 7, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-11-10 07:30:54', '2018-11-10 07:30:54', NULL),
(691, 'Viewed users/create', 'Registered', 7, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-11-10 07:31:26', '2018-11-10 07:31:26', NULL),
(692, 'Created users', 'Registered', 7, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-11-10 07:31:57', '2018-11-10 07:31:57', NULL),
(693, 'Viewed users', 'Registered', 7, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-11-10 07:31:58', '2018-11-10 07:31:58', NULL),
(694, 'Viewed users/create', 'Registered', 7, 'http://localhost:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/users', 'GET', '2018-11-10 07:32:06', '2018-11-10 07:32:06', NULL),
(695, 'Created users', 'Registered', 7, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'POST', '2018-11-10 07:32:37', '2018-11-10 07:32:37', NULL),
(696, 'Viewed users', 'Registered', 7, 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'en-US,en;q=0.5', 'http://localhost:8000/users/create', 'GET', '2018-11-10 07:32:39', '2018-11-10 07:32:39', NULL);

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
(1, 'test title', 'edit page works with storing array for meeting details, and dropdown user email.', 'Formal', '2018-11-22', '11:30', '12:00', NULL, '2018-11-05 10:46:36', 7),
(2, 'test title edited working 5/11', 'agenda field now populate from db when edit meeting', 'Formal', '2018-11-19', '07:30', '08:00', '2018-10-30 16:00:00', '2018-11-05 11:22:06', 7),
(9, 'abc', '123', 'Formal', '2018-11-29', '07:30', '08:00', '2018-11-05 01:50:24', '2018-11-05 01:50:24', 6),
(10, 'meeting', 'updated create meeting with dropdown user email', 'Formal', '2018-11-21', '14:00', '15:00', '2018-11-05 10:16:48', '2018-11-05 10:16:48', 7),
(11, 'meeting', 'test agenda', 'Formal', '2018-11-22', '09:00', '10:00', '2018-11-05 16:01:22', '2018-11-05 16:01:22', 7),
(12, 'meeting', 'test agenda', 'Formal', '2018-11-08', '09:00', '10:00', '2018-11-05 16:03:46', '2018-11-05 16:03:46', 7);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_15_105324_create_roles_table', 1),
(4, '2016_01_15_114412_create_role_user_table', 1),
(5, '2016_01_26_115212_create_permissions_table', 1),
(6, '2016_01_26_115523_create_permission_role_table', 1),
(7, '2016_02_09_132439_create_permission_user_table', 1),
(8, '2017_03_09_082449_create_social_logins_table', 1),
(9, '2017_03_09_082526_create_activations_table', 1),
(10, '2017_03_20_213554_create_themes_table', 1),
(11, '2017_03_21_042918_create_profiles_table', 1),
(12, '2017_11_04_103444_create_laravel_logger_activity_table', 1),
(13, '2017_12_09_070937_create_two_step_auth_table', 1),
(14, '2018_10_30_130337_create_meeting_table', 2),
(15, '2018_10_30_130452_add_userid_column_to_meeting_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `model`, `created_at`, `updated_at`) VALUES
(1, 'Can View Users', 'view.users', 'Can view users', 'Permission', '2018-09-29 08:17:00', '2018-09-29 08:17:00'),
(2, 'Can Create Users', 'create.users', 'Can create new users', 'Permission', '2018-09-29 08:17:00', '2018-09-29 08:17:00'),
(3, 'Can Edit Users', 'edit.users', 'Can edit users', 'Permission', '2018-09-29 08:17:00', '2018-09-29 08:17:00'),
(4, 'Can Delete Users', 'delete.users', 'Can delete users', 'Permission', '2018-09-29 08:17:00', '2018-09-29 08:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-09-29 08:17:00', '2018-09-29 08:17:00'),
(2, 2, 1, '2018-09-29 08:17:00', '2018-09-29 08:17:00'),
(3, 3, 1, '2018-09-29 08:17:00', '2018-09-29 08:17:00'),
(4, 4, 1, '2018-09-29 08:17:00', '2018-09-29 08:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `theme_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `twitter_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `theme_id`, `location`, `bio`, `twitter_username`, `github_username`, `avatar`, `avatar_status`, `created_at`, `updated_at`) VALUES
(6, 6, 1, NULL, NULL, NULL, NULL, NULL, 0, '2018-10-18 22:56:58', '2018-10-18 22:56:58'),
(7, 7, 1, NULL, NULL, NULL, NULL, NULL, 0, '2018-10-18 23:02:12', '2018-10-18 23:02:12'),
(8, 8, 1, NULL, NULL, NULL, NULL, NULL, 0, '2018-10-18 23:08:23', '2018-10-18 23:08:23'),
(36, 36, 1, NULL, NULL, NULL, NULL, NULL, 0, '2018-10-29 02:11:46', '2018-10-29 02:11:46'),
(37, 37, 1, NULL, NULL, NULL, NULL, NULL, 0, '2018-11-10 07:30:53', '2018-11-10 07:30:53'),
(38, 38, 1, NULL, NULL, NULL, NULL, NULL, 0, '2018-11-10 07:31:57', '2018-11-10 07:31:57'),
(39, 39, 1, NULL, NULL, NULL, NULL, NULL, 0, '2018-11-10 07:32:38', '2018-11-10 07:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'Admin Role', 5, '2018-09-29 08:17:00', '2018-09-29 08:17:00'),
(2, 'Lecturer', 'lecturer', 'Lecturer Role', 1, '2018-09-29 08:17:00', '2018-09-29 08:17:00'),
(3, 'Student', 'student', 'Student Role', 1, '2018-09-29 08:17:00', '2018-09-29 08:17:00'),
(4, 'Unverified', 'unverified', 'Unverified Role', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 3, 6, '2018-10-18 22:56:58', '2018-10-18 22:56:58'),
(7, 1, 7, '2018-10-18 23:02:12', '2018-10-18 23:02:12'),
(8, 2, 8, '2018-10-18 23:08:23', '2018-10-18 23:08:23'),
(36, 3, 36, '2018-10-29 02:11:46', '2018-10-29 02:11:46'),
(37, 1, 37, '2018-11-10 07:30:53', '2018-11-10 07:30:53'),
(38, 2, 38, '2018-11-10 07:31:57', '2018-11-10 07:31:57'),
(39, 3, 39, '2018-11-10 07:32:38', '2018-11-10 07:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `link`, `notes`, `status`, `taggable_type`, `taggable_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Default', 'null', NULL, 1, 'theme', 1, '2018-09-29 08:17:00', '2018-09-29 08:17:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_confirmation_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_sm_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `activated`, `token`, `signup_ip_address`, `signup_confirmation_ip_address`, `signup_sm_ip_address`, `admin_ip_address`, `updated_ip_address`, `deleted_ip_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, '15b3089', 'Mason', 'ubd', '15b3089@ubd.edu.bn', '$2y$10$Qq48dl74LBs4hd6E1r3zaeojt4KxZj1Buuf4LBP7kYelvZF3U3F3G', 'hgpkUtnCrV58SkiMnw3TaNW4L7Rb77OkW4ONAkOUXgFY5ePGajtpzybqjUQ0', 1, 'QZnzaihSzmTf03dk88BNIjHAcRvnPIdQuuivnUwe8BtsWd8rsOhDiroTjuJAjqRp', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2018-10-18 22:56:58', '2018-10-18 22:56:58', NULL),
(7, '14b3370', 'Asmadi', 'ubd', '14b3370@ubd.edu.bn', '$2y$10$b0kL2w9qih76NzIcUhpXTO0kRIm11w6xOBuIhDiDyQPApKuOIOCFK', 'N7kW9Wkf5aJQY3okcuIjvMVurXN3tKcbCeeOif0xyEH29idOWzorkL7ONG5K', 1, '2PTZiVLmKCgaXuUz1CB1cS5aKLZKzcrhk04WjbjAA9cJVT5UN8vnGsdsF9i7enhf', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2018-10-18 23:02:12', '2018-10-18 23:02:12', NULL),
(8, 'arosha.senanayake', NULL, NULL, 'arosha.senanayake@ubd.edu.bn', '$2y$10$8bCOS6evELP6EEDDN1rDQu66H6u2HvncqSl3hDTPltz3Rczyt40im', 'r258NvkySvC4JsLzALV246dI72rBYcVVnLScS2ifYVd6HmlkyR9vE3xxj13H', 1, 'l8qEHg4rpETyIy8TpeYOIAIHGGlmeDs3Z7AdrXi4JeUrCk8SsFqXSHeM1ibz5kIx', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2018-10-18 23:08:22', '2018-10-18 23:08:22', NULL),
(36, 'Fathin', 'Fathin', 'Bujang', '14b8338@ubd.edu.bn', '$2y$10$cldOrGO3.EIqQanrOAC0gehCQrP4duv5zhCdYQi0MkJVwCK9aAuku', NULL, 1, 'FNKB67F9t9LJJJqkTtU2OalOhV4YGtr3Wo2twsaxcUrHMY50WBayz3klbKKRGF8n', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2018-10-29 02:11:46', '2018-10-29 02:11:46', NULL),
(37, 'admin', 'admin', 'ubd', 'admin@ubd.edu.bn', '$2y$10$Hy.8EpZxQUOv3YFcriuO8eoE10mkjbkDX36qoeecqKLs5kpceOOBy', NULL, 1, 'mSdcGY3UVOnJX47d8GzMBv0B7CTvXzt70NDjMlnBFQDPI3xB1XXenqJhfvhAl1Vl', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2018-11-10 07:30:53', '2018-11-10 07:30:53', NULL),
(38, 'lecturer', 'lecturer', 'ubd', 'lecturer@ubd.edu.bn', '$2y$10$WspxbrukuKwLYJGHdzvts.4QH4hM2D9/npcOCcmBMiQ63xAD.pKH.', NULL, 1, 'QGFp0N9H7jFNQtH3vcC3F0hRTotBISRlHcAePSnf5RBAb6QPFVFZw4y2q2f58hOP', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2018-11-10 07:31:57', '2018-11-10 07:31:57', NULL),
(39, 'student', 'student', 'ubd', 'student@ubd.edu.bn', '$2y$10$rNrD63arMUl2/.O2gYWrWe4EslTOYIcU3FoTbXLR5ro4ozbZnIGEe', NULL, 1, 'VIMCO2WraJmatp1cv1iXb730d4xRzszcGg9MyTpGBQ2yrgLl5oj81unUaPyHqQyf', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2018-11-10 07:32:38', '2018-11-10 07:32:38', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laravel2step_userid_index` (`userId`);

--
-- Indexes for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_user_id_index` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_theme_id_foreign` (`theme_id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_logins_user_id_index` (`user_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `themes_name_unique` (`name`),
  ADD UNIQUE KEY `themes_link_unique` (`link`),
  ADD KEY `themes_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`),
  ADD KEY `themes_id_index` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel2step`
--
ALTER TABLE `laravel2step`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=697;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD CONSTRAINT `laravel2step_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meeting_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`),
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD CONSTRAINT `social_logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
