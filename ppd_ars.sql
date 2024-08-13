-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 08, 2024 at 03:09 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppd_ars`
--

-- --------------------------------------------------------

--
-- Table structure for table `allocations`
--

DROP TABLE IF EXISTS `allocations`;
CREATE TABLE IF NOT EXISTS `allocations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `province` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_municipality` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `target` int NOT NULL,
  `fund_allocation` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `allocations`
--

INSERT INTO `allocations` (`id`, `province`, `city_municipality`, `program`, `date`, `target`, `fund_allocation`, `created_at`, `updated_at`) VALUES
(7, 'Davao Del Norte', 'Tagum', 'Centenarian', '2024-08-04', 1000, 100000.00, '2024-08-04 03:32:29', '2024-08-04 03:32:29'),
(6, 'Davao Del Sur', 'Digos', 'Centenarian', '2024-08-04', 1000, 100000.00, '2024-08-04 03:31:55', '2024-08-04 03:31:55'),
(5, 'Davao City', '1st District', 'Centenarian', '2024-08-03', 1, 100000.00, '2024-08-02 11:07:58', '2024-08-02 11:07:58'),
(8, 'Davao Del Norte', 'Tagum', 'Centenarian', '2024-08-04', 1000, 100000.00, '2024-08-04 03:33:00', '2024-08-04 03:33:00'),
(9, 'Davao Oriental', 'Mati', 'Centenarian', '2024-08-04', 1000, 20000.00, '2024-08-04 03:34:16', '2024-08-04 03:34:16'),
(10, 'Davao Occidental', 'Malita', 'Centenarian', '2024-08-04', 1000, 20000.00, '2024-08-04 03:35:12', '2024-08-04 03:35:12'),
(11, 'Davao De Oro', 'Mawab', 'Centenarian', '2024-08-04', 1000, 90000.00, '2024-08-04 03:36:02', '2024-08-04 03:36:02'),
(12, 'Davao City', '2nd District', 'centenarian', '2024-08-05', 1, 100000.00, '2024-08-04 08:07:26', '2024-08-04 08:07:26'),
(13, 'Davao City', '1st District', '4P\'s', '2024-08-05', 1000, 10000.00, '2024-08-04 17:52:35', '2024-08-04 17:52:35'),
(15, 'Davao City', '1st', '4Ps', '2024-08-05', 100000, 10000000.00, '2024-08-04 19:23:59', '2024-08-04 19:23:59'),
(16, 'Davao City', '3rd', 'KC-NCDDP', '2024-08-08', 1111, 1111.00, '2024-08-07 08:49:51', '2024-08-07 08:49:51'),
(17, 'Davao City', '3rd', 'KC-NCDDP', '2024-08-08', 1111, 1111.00, '2024-08-07 08:50:05', '2024-08-07 08:50:05'),
(18, 'Davao City', '3rd', 'KC-NCDDP', '2024-08-08', 1111, 1189.00, '2024-08-07 08:50:13', '2024-08-07 08:50:13'),
(19, 'Davao City', '3rd', 'SFP', '2024-08-08', 890, 99999.00, '2024-08-07 08:51:59', '2024-08-07 08:51:59'),
(20, 'Davao City', '3rd', 'DRP', '2024-08-08', 45, 123.00, '2024-08-07 08:54:45', '2024-08-07 08:54:45'),
(21, 'Davao City', '1st', 'KC-NCDDP', '2024-08-08', 1, 1.00, '2024-08-07 08:55:51', '2024-08-07 08:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_01_161502_create_reports_table', 2),
(5, '2024_08_02_161844_create_utilizations_table', 3),
(6, '2024_08_02_162017_create_utilizations_table', 4),
(7, '2024_08_02_164535_create_utilizations_table', 5),
(8, '2024_08_02_175949_create_allocations_table', 6),
(9, '2024_08_02_181730_create_allocations_table', 7),
(10, '2024_08_02_183025_create_allocations_table', 8),
(11, '2024_08_04_133221_create_programs_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;
CREATE TABLE IF NOT EXISTS `programs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Assistance to Individuals in Crisis Situation (AICS)', 'logos/jwVW8fKnj7eUvFVqQw1TcmAHwon1XG9qKL5DJ5Gd.png', '2024-08-04 09:55:56', '2024-08-04 09:55:56'),
(2, 'Centenarian', 'logos/b3vS1GySdZ6fHsL2Yd6BKoIGuXOXVHG14pXiGpBc.png', '2024-08-04 09:56:24', '2024-08-04 09:56:24'),
(3, 'Disaster Response and Management Program (DRMP)', 'logos/fSBey52XCVPiXvCxculftL4BAIQJXPQ83q3yzGqq.png', '2024-08-04 09:57:16', '2024-08-04 09:57:16'),
(4, 'Kalahi CIDSS (KC-NCDDP)', 'logos/7xybKxnBUzJpNRHlUY6yh3nX80ZGV8kPKBMvvM7z.png', '2024-08-04 09:58:07', '2024-08-04 09:58:07'),
(5, 'Pantawid Pamilyang Pilipino Program (4P\'s)', 'logos/kA38Kyy0NccY8l0qwrFhx4UU0rlv7GCJtf0RgCCt.png', '2024-08-04 09:58:55', '2024-08-04 09:58:55'),
(6, 'Social Pension (SocPen) for Indigent Senior Citizen Program', 'logos/nEAJ7AylOyLH9UuzeMxFbTQaHOBAzRHcO9K1nnA4.png', '2024-08-04 10:00:13', '2024-08-04 10:00:13'),
(7, 'Supplementary Feeding Program (SFP)', 'logos/fsYIDzNu32cZfu2BkOIjL8KeF6JyNvE5jrtizZ2B.png', '2024-08-04 10:01:05', '2024-08-04 10:01:05'),
(8, 'Sustainable Livelihood Program (SLP)', 'logos/Lv6WjvH0NyJYxG1KwtC27RWqh7Imdqd7HkJ2pLoc.png', '2024-08-04 10:01:46', '2024-08-04 17:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE IF NOT EXISTS `reports` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allocation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FIiyrrvT6dkeXwXnBaZc2B25mB3oYoBACE4CumXk', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMjZuTFdIQjVvS0FmWWVLcnNZcXptdjNNelFlZTM1RWlOcEducjUzMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL3VzZXJzIjt9fQ==', 1723129294);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_citymuni`
--

DROP TABLE IF EXISTS `tbl_citymuni`;
CREATE TABLE IF NOT EXISTS `tbl_citymuni` (
  `psgc` int NOT NULL AUTO_INCREMENT,
  `col_citymuni` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`psgc`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_citymuni`
--

INSERT INTO `tbl_citymuni` (`psgc`, `col_citymuni`, `created_at`, `updated_at`) VALUES
(1, 'Compostela', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(2, 'Maragusan', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(3, 'Monkayo', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(4, 'Montevista', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(5, 'New Bataan', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(6, 'Laak', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(7, 'Mabini', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(8, 'Maco', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(9, 'Mawab', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(10, 'Nabunturan', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(11, 'Pantukan', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(12, 'Asuncion', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(13, 'Tagum City', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(14, 'Kapalong', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(15, 'New Corella', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(16, 'San Isidro', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(17, 'Talaingod', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(18, 'Braulio Dujali', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(19, 'Carmen', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(20, 'City of Panabo', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(21, 'Island Garden City of Samal', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(22, 'Sto. Tomas', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(23, 'Don Marcelino', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(24, 'Jose Abad Santos', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(25, 'Malita', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(26, 'Sta. Maria', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(27, 'Saranggani', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(28, 'Baganga', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(29, 'Boston', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(30, 'Caraga', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(31, 'Cateel', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(32, 'Manay', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(33, 'Tarragona', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(34, 'Banaybanay', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(35, 'City of Mati', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(36, 'Governor Generoso', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(37, 'Lupon', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(38, 'San Isidro', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(39, 'Bansalan', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(40, 'City of Digos', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(41, 'Hagonoy', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(42, 'Kiblawan', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(43, 'Magsaysay', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(44, 'Malalag', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(45, 'Matanao', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(46, 'Padada', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(47, 'Sta. Cruz', '2024-08-03 12:14:44', '2024-08-03 12:14:44'),
(48, 'Sulop', '2024-08-03 12:14:44', '2024-08-03 12:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_province`
--

DROP TABLE IF EXISTS `tbl_province`;
CREATE TABLE IF NOT EXISTS `tbl_province` (
  `psgc` int NOT NULL AUTO_INCREMENT,
  `col_province` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`psgc`)
) ENGINE=InnoDB AUTO_INCREMENT=118600001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_province`
--

INSERT INTO `tbl_province` (`psgc`, `col_province`, `created_at`, `updated_at`) VALUES
(112300000, 'DAVAO DEL NORTE', '2024-08-03 11:25:42', '2024-08-03 11:44:03'),
(112400000, 'DAVAO DEL SUR', '2024-08-03 11:25:42', '2024-08-03 11:44:03'),
(112402000, 'DAVAO CITY', '2024-08-03 11:25:42', '2024-08-04 06:23:01'),
(112500000, 'DAVAO ORIENTAL', '2024-08-03 11:25:42', '2024-08-03 11:44:03'),
(118200000, 'DAVAO DE ORO', '2024-08-03 11:25:42', '2024-08-03 11:44:03'),
(118600000, 'DAVAO OCCIDENTAL', '2024-08-03 11:25:42', '2024-08-03 11:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeeid` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `employeeid`, `password`, `program`, `created_at`, `updated_at`) VALUES
(1, 'Adrian Allan 0. Cacho', 'acacho@dswd.gov.ph', '11-06067', '$2y$12$ygc7NTo1oMDCDq0KERy/X.Ph.ElYwVP3TRf3moOF7IkMM.2i.2onO', '4Ps', '2024-07-31 08:59:27', '2024-07-31 08:59:27'),
(2, 'Meliza L. Facun', 'mfacun@dswd.gov.ph', '11-06068', '$2y$12$nxzsXSlTqErKrcr6Vb8f0eBdRAdgvX55IKvgkA1Ag4X0.oJyqDlqe', 'SLP', '2024-07-31 09:08:27', '2024-07-31 09:08:27'),
(3, 'Lorgil Lubiano', 'llubiano@dswd.gov.ph', '11-06069', '$2y$12$T.CmMUSgkXnzPE0/CnPuFOoNiVLlcAb4jT5seRsN4wjhVoWTQblS6', 'KC-NCDDP', '2024-07-31 09:09:39', '2024-07-31 09:09:39'),
(4, 'ken aquitan', 'kaquitan@dswd.gov.ph', '11-06778', '$2y$12$QOOhIrGBHkriDQCNEGIIVeiFWwWr2hb1oUbR.qLdGPSPxOI.f5k0W', 'AICS', '2024-08-07 08:08:09', '2024-08-07 08:08:09'),
(6, 'ken', 'kmquitan@dswd.gov.ph', '11-06779', '$2y$12$4GQkPina2a9kanqPCKKkE.8dxqA1.tB4gZJetTNTBoEnlo2sr0rWq', 'DRP', '2024-08-07 08:16:41', '2024-08-07 08:16:41'),
(7, 'lorgil', 'klquitan@dswd.gov.ph', '11-06770', '$2y$12$7Y/JHtm.9zZWNZZZP8EtU.xJkeA5BOch.mOQ3K9Qnt.97Jkucl17O', 'DRP', '2024-08-07 08:18:56', '2024-08-07 08:18:56'),
(8, 'mel', 'ml@dswd.gov.ph', '11-00998', '$2y$12$WqfPl/c2DOZTmheNVAClKe0FI.qfjo3wA0z5x1EIMAUmkt7uPAVp2', 'SocPen', '2024-08-07 08:24:14', '2024-08-07 08:24:14'),
(9, 'Adrian Allan 0. Cacho', 'amcacho@dswd.gov.ph', '11-09872', '$2y$12$GN5T1R8EKFtJr5ZvPQVg3OPqkFkU5es4FKndQoPvJv.bTaNrdG14K', 'SFP', '2024-08-07 20:16:01', '2024-08-07 20:16:01'),
(10, 'Chris Neil Lesley A. Llavan', 'cn@dswd.gov.ph', '11-06771', '$2y$12$xoAFv/7wW.b9LhNkW6WzJeG/nM2Yi1X12gSbZDschK6p.iR7I/6KS', 'CN', '2024-08-07 20:18:38', '2024-08-07 20:18:38'),
(11, 'ken a. uy', 'ku@dswd.gov.ph', '11-09823', '$2y$12$84Q3GlK5ZMrVHPRql4s4ZuMoRcwCWXrVVDa4Na4nMQZmBoT9tDDiC', 'DRP', '2024-08-07 21:18:53', '2024-08-07 21:18:53'),
(12, 'Adrian Allan 0. Cacho', 'aocacho@dswd.gov.ph', '11-09287', '$2y$12$2y.telxSpqKoP4zcpFGvPOqFr34qyH.AFCZPaf/lrs8JmXYjC0c8m', 'SFP', '2024-08-07 21:44:19', '2024-08-07 21:44:19'),
(13, 'mmmm', 'acmacho@dswd.gov.ph', '11-02982', '$2y$12$xa1b1wzKAXnJp0pEj0EO2uXD7Pql6wXnMod3YfgZHuue4aEq8hVHa', 'DRP', '2024-08-07 21:46:50', '2024-08-07 21:46:50'),
(14, 'sydrick loren', 'sad@dswd.gov.ph', '11-99900', '$2y$12$6jBFcb84TfwIVVdWiB3bouOvjugA4ha/sERjqhHBbVP7Q1qlU9/t6', '4Ps', '2024-08-07 21:47:30', '2024-08-07 21:47:30'),
(15, 'sydrick loren', 'sad1@dswd.gov.ph', '11-99900', '$2y$12$49VsnYOH5xdAEOQ3X4bk5OUZ99ng3ZPR29gYcg8lWgRkiZkTvE256', '4Ps', '2024-08-07 21:50:19', '2024-08-07 21:50:19'),
(16, 'Meliza L. Facun', 'alcacho@dswd.gov.ph', '11-06067', '$2y$12$HR9OboGGGBkAVW/.TPFbV..0QD/iqRDjbpnkptf2EA0SBwxfuUxYm', 'SLP', '2024-08-08 06:34:42', '2024-08-08 06:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `utilizations`
--

DROP TABLE IF EXISTS `utilizations`;
CREATE TABLE IF NOT EXISTS `utilizations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `province` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_municipality` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `physical` int NOT NULL,
  `fund_utilized` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `utilizations`
--

INSERT INTO `utilizations` (`id`, `province`, `city_municipality`, `program`, `date`, `physical`, `fund_utilized`, `created_at`, `updated_at`) VALUES
(11, 'Davao del sur', 'davao', 'Kalahi', '2024-08-03', 12, 123, '2024-08-02 09:43:59', '2024-08-02 09:43:59'),
(2, 'south cotabato', 'koronadal city', 'a', '2024-08-03', 1, 1, '2024-08-02 09:13:39', '2024-08-02 09:13:39'),
(3, 'south cotabato', 'koronadal city', 'a', '2024-08-03', 1, 5, '2024-08-02 09:13:56', '2024-08-02 09:13:56'),
(4, 'south cotabato', 'koronadal city', 'c', '2024-08-03', 1, 1222, '2024-08-02 09:16:30', '2024-08-02 09:16:30'),
(5, 'south cotabato', 'koronadal city', 'c', '2024-08-03', 1, 1222, '2024-08-02 09:18:14', '2024-08-02 09:18:14'),
(6, 'south cotabato', 'koronadal city', 'c', '2024-08-03', 1, 1297387, '2024-08-02 09:18:20', '2024-08-02 09:18:20'),
(7, 'south cotabato', 'koronadal city', 'z', '2024-08-03', 123, 321, '2024-08-02 09:20:35', '2024-08-02 09:20:35'),
(8, 'south cotabato', 'koronadal city', 's', '2024-08-03', 123, 2323, '2024-08-02 09:21:30', '2024-08-02 09:21:30'),
(9, 'south cotabato', 'koronadal city', 's', '2024-08-03', 123, 2323, '2024-08-02 09:21:35', '2024-08-02 09:21:35'),
(10, 'Davao City', '1st District', 'Centenarian', '2024-08-03', 1, 100000, '2024-08-02 09:22:57', '2024-08-02 09:22:57'),
(12, 'Davao del sur', 'davao', 'Kalahi', '2024-08-03', 12, 123, '2024-08-02 09:44:22', '2024-08-02 09:44:22'),
(13, 'Davao del sur', 'davao', 'Kalahi', '2024-08-03', 12, 123, '2024-08-02 09:44:23', '2024-08-02 09:44:23'),
(14, 'Davao del sur', 'davao', 'Kalahi', '2024-08-03', 12, 123, '2024-08-02 09:44:24', '2024-08-02 09:44:24'),
(15, 'Davao del sur', 'davao', 'Kalahi', '2024-08-03', 12, 123, '2024-08-02 09:44:24', '2024-08-02 09:44:24'),
(16, 'Davao del sur', 'davao', 'Kalahi', '2024-08-03', 12, 123, '2024-08-02 09:44:25', '2024-08-02 09:44:25'),
(17, 'Davao De Oro', 'Mawab', 'Centenarian', '2024-08-05', 100, 200000, '2024-08-04 08:06:20', '2024-08-04 08:06:20'),
(18, 'Davao City', '3rd District', '4P\'s', '2024-08-05', 1000, 290934, '2024-08-04 17:53:30', '2024-08-04 17:53:30'),
(20, 'dc', '2nd', '4Ps', '2024-08-05', 1900, 122902, '2024-08-04 19:25:32', '2024-08-04 19:25:32'),
(21, 'dc', '2nd', 'SocPen', '2024-08-08', 767558, 875690, '2024-08-07 08:35:58', '2024-08-07 08:35:58'),
(22, 'dc', '2nd', 'SocPen', '2024-08-08', 767558, 875690, '2024-08-07 08:36:09', '2024-08-07 08:36:09'),
(23, 'dc', '3rd', 'KC-NCDDP', '2024-08-08', 3454, 23356, '2024-08-07 08:44:09', '2024-08-07 08:44:09'),
(24, 'dc', '3rd', 'KC-NCDDP', '2024-08-08', 3454, 32435, '2024-08-07 08:47:16', '2024-08-07 08:47:16'),
(25, 'dc', '3rd', 'KC-NCDDP', '2024-08-08', 3454, 32435, '2024-08-07 08:47:26', '2024-08-07 08:47:26');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
