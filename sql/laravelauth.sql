-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2018 at 06:12 AM
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
(175, 'Viewed home', 'Registered', 5, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2018-10-15 01:06:47', '2018-10-15 01:06:47', NULL);

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
(13, '2017_12_09_070937_create_two_step_auth_table', 1);

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
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, '2018-09-29 08:17:00', '2018-09-29 08:17:00'),
(2, 2, 1, NULL, NULL, NULL, NULL, NULL, 0, '2018-09-29 08:17:01', '2018-09-29 08:17:01'),
(4, 4, 1, NULL, NULL, NULL, NULL, NULL, 0, '2018-10-01 00:13:43', '2018-10-01 00:13:43'),
(5, 5, 1, NULL, NULL, NULL, NULL, NULL, 0, '2018-10-15 00:53:26', '2018-10-15 00:53:26');

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
(1, 1, 1, '2018-09-29 08:17:00', '2018-09-29 08:17:00'),
(2, 2, 2, '2018-09-29 08:17:01', '2018-09-29 08:17:01'),
(4, 1, 4, '2018-10-01 00:13:43', '2018-10-01 00:13:43'),
(5, 3, 5, '2018-10-15 00:53:26', '2018-10-15 00:53:26');

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
(1, 'Default', 'null', NULL, 1, 'theme', 1, '2018-09-29 08:17:00', '2018-09-29 08:17:00', NULL),
(18, 'Bootstrap 4.0.0 Alpha', 'https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css', NULL, 1, 'theme', 18, '2018-09-29 08:17:00', '2018-09-29 08:17:00', NULL),
(20, 'Bootstrap Material Design 4.0.0', 'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/4.0.0/bootstrap-material-design.min.css', NULL, 1, 'theme', 20, '2018-09-29 08:17:00', '2018-09-29 08:17:00', NULL),
(21, 'Bootstrap Material Design 4.0.2', 'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/4.0.2/bootstrap-material-design.min.css', NULL, 1, 'theme', 21, '2018-09-29 08:17:00', '2018-09-29 08:17:00', NULL);

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
(1, 'admin', 'admin', 'ubd', 'admin@ubd.edu.bn', '$2y$10$w.kIbJjJ3y.GWVsc1N5eyu3jM6LRS4L.5bXv1fxK7UnNSdRksyQdC', 'Mxo8c5K4sN7eiEyvKJ8LhhXmi2XNXyQJoOB0Bw87PUnXBe7sf3ITao0vL8U2', 1, 'SvdrLQJAJRfkHjfFTEIFzUBQiWxdPDl1O07J3mT1TyQ7YxduzegEeAZSAe8lsFnm', NULL, '165.250.108.4', NULL, '244.117.235.149', '0.0.0.0', NULL, '2018-09-29 08:17:00', '2018-09-29 09:46:27', NULL),
(2, '15b5588', 'John', 'Doe', '15b5588@ubd.edu.bn', '$2y$10$erz.AGn40ogJVcR4C.SYkePmrCCGVT7r94YlztabKKvsPjBQnJPj6', 'j5grtBT7HMXf5DrIQTZihsVSsTUUSfaNprWxcBy9dp78OEZDweTgnZoCDGUx', 1, 'eWOvbjUZ9tKjGR6iSg4RCZ9gtTiFZ4MbBk7dZox0iMAf4hNv8cKcvjt6AcfW7noF', '22.149.100.246', '212.105.138.79', NULL, NULL, '0.0.0.0', NULL, '2018-09-29 08:17:01', '2018-09-29 09:43:15', NULL),
(4, 'tincan', 'Fathin', 'Bujang', '14b8338@ubd.edu.bn', '$2y$10$CgU52.tIlinZ.NXYitc17eDybnJRzG31oC/TWkweL96KPRsD0Nh32', NULL, 1, 'd9eRTkGiHV4eUjjbSPTVKlw8laj3gETfWp2HoM5xYbiV5giN9C9L8PiNoieHsERM', NULL, NULL, NULL, '0.0.0.0', NULL, '0.0.0.0', '2018-10-01 00:13:43', '2018-10-11 08:00:52', '2018-10-11 08:00:52'),
(5, '16B1122', '16B1122', NULL, '16B1122@ubd.edu.bn', '$2y$10$K4qYsuwzfWFox7zC0TLHjOZe/4Lo0B8hrubFIisGLor6zwolcNLbO', 'ZoSvtYOJYrYqDxFlTnEg3H7BA39B1w0cEKjFQzvzqiRfoxKvpcYPFyCSVSiQ', 1, 'ya19R5gCHxz7wyBoJJAcbmXAHnGBk5YUpH7Evfww9lqRHkx2exdQHU9FuIQge15C', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2018-10-15 00:53:26', '2018-10-15 00:53:26', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
