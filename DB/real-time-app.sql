-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2022 at 03:43 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real-time-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_type_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 2, 10, 'dsfdasfsdafsadfdsa', '2022-02-18 10:56:33', NULL),
(2, 2, 4, 'dsfdasfsdafsadfdsa', '2022-02-18 10:56:35', NULL),
(3, 2, 2, 'dsfdasfsdafsadfdsa', '2022-02-18 10:56:35', NULL),
(4, 1, 7, 'sdfsdafads', '2022-02-18 10:59:04', NULL),
(5, 1, 5, 'dsfsdfsdafads', '2022-02-18 11:01:31', NULL),
(6, 1, 7, 'If you need to log an existing user instance into your application, you may call the login method with the user instance. The given object must b', '2022-02-18 11:01:54', NULL),
(7, 2, 10, 'If you need to log an existing user instance into your application, you may call the login method with the user instance. The given object must b', '2022-02-18 11:02:00', NULL),
(8, 1, 9, 'HELLO MR USER HOW ARE YOU?', '2022-02-18 19:29:43', NULL),
(9, 1, 5, 'HELLO MR USER2 I AM FINE AND HOW ARE YOU?', '2022-02-18 19:30:04', NULL),
(10, 2, 10, 'IS EVERYTHING THERE ALRIGHT BROTHER. AND HOW IS GOING THERE. WORKING WELL...', '2022-02-18 19:30:43', NULL),
(11, 2, 4, 'sdsadsadsa', '2022-02-18 20:15:47', NULL),
(12, 1, 1, 'yyyyyyyyyyyyyyyyyyyyyy', '2022-02-18 20:16:00', NULL),
(13, 1, 9, 'user', '2022-02-18 20:18:09', NULL),
(14, 2, 10, 'user', '2022-02-18 20:18:44', NULL),
(15, 1, 5, 'fdgdsfgsdfgdf', '2022-02-18 20:26:08', NULL),
(16, 1, 7, 'fgsdfgdfgdf', '2022-02-18 20:26:48', NULL),
(17, 2, 6, 'dfgdfgsdfgdfgdfg', '2022-02-18 20:27:33', NULL),
(18, 2, 4, 'dfgsdafds', '2022-02-18 20:30:37', NULL),
(19, 2, 10, 'dsfsdfsadfsdfasd', '2022-02-18 20:31:55', NULL),
(20, 1, 1, 'fdgdsfgdfsgdfgdf', '2022-02-18 20:32:42', NULL),
(21, 1, 7, 'fdgdsfgsdfgsdfgdfg', '2022-02-18 20:34:26', NULL),
(22, 2, 2, 'fdgdsfgdsfgdfgdfgdf', '2022-02-18 20:34:43', NULL),
(23, 1, 3, 'fdgsdfgdfgdfg', '2022-02-18 20:35:59', NULL),
(24, 2, 8, 'fdgsdfgdfgdfgdfgdfgdfg', '2022-02-18 20:36:31', NULL),
(25, 2, 8, 'fsdafdsfdsaf', '2022-02-18 20:37:00', NULL),
(26, 2, 8, 'This is adsmflksdamf dsf sd f sdfnkdsnfkjdsn fds', '2022-02-18 20:37:55', NULL),
(27, 2, 8, 'dsfasdfadsfadsfads', '2022-02-18 20:38:07', NULL),
(28, 2, 6, 'i fm mr ahmia amfor from dskmaldf dsf sd fs', '2022-02-18 20:38:27', NULL),
(29, 1, 5, 'and lsdf sdkfnsdfnsdfkldst fdsfin434 454 kfjdskjf sdf sdfds', '2022-02-18 20:38:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_01_06_192844_create_scores_table', 1),
(15, '2022_01_23_072027_create_usertypes_table', 2),
(16, '2022_01_23_072639_create_messages_table', 2),
(20, '2014_10_12_200000_add_two_factor_columns_to_users_table', 3),
(21, '2022_02_14_025011_create_messages_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user@gmail.com', '$2y$10$qzgvdTevTjNmhpBGZc2iAu2JP5.Oulsr87ixHPlG1syTZu85fdQXu', '2022-02-13 10:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', NULL, '$2y$10$V6q.8yTr1fYYaH1RySi32.WzxtjfuYAyVWylQvW5jUozaDZP8RKxK', NULL, NULL, NULL, '2022-02-13 09:59:49', '2022-02-13 09:59:49'),
(2, 'user2', 'user2@gmail.com', NULL, '$2y$10$ZZFxxXFCfR8tpFBmW9J/pu3SZVHzFpHRPnVkmjPO9KghzQcXRoqqK', NULL, NULL, NULL, '2022-02-13 10:15:58', '2022-02-13 10:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `usertypes`
--

CREATE TABLE `usertypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `usertypes`
--
ALTER TABLE `usertypes`
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
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usertypes`
--
ALTER TABLE `usertypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
