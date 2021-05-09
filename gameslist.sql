-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2021 at 12:31 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameslist`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_05_09_050220_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(22,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `photo`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'data:image/jpeg;base64,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', 'Balut', 'Kain tayo ng balut', '20.00', '2021-05-08 23:40:41', '2021-05-08 23:40:41'),
(2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaxjidjGTp5tRKKVOjP_O6YPPNrrayNc34RQ&usqp=CAU', 'Taho', 'Taho is a Filipino delicacy loved by many Filipinos and foreign people. Kain taho.', '11.00', '2021-05-08 23:46:55', '2021-05-09 00:36:30'),
(3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgW43gjmGv3Xxa1HOaT2kI2cjtiL0k_pRdyw&usqp=CAU', 'Tae', 'Kain tayo tae.', '0.00', '2021-05-09 00:37:41', '2021-05-09 00:39:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
