-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2019 at 04:17 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mdev`
--

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_02_13_074949_create_tagihans_table', 2),
(9, '2019_02_15_032433_drop_tagihan_table', 3),
(10, '2019_02_15_033021_create_tagihans_table', 4),
(11, '2019_02_15_063727_drop_tagihans_table', 5),
(12, '2019_02_15_063950_create_tagihans_table', 6),
(13, '2019_02_15_070546_create_rekenings_table', 7),
(14, '2019_02_15_072249_drop_table', 8),
(15, '2019_02_15_072453_create_tagihans_table', 9),
(16, '2019_02_15_073557_create_tabungans_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('2311962fc068aa4fb6765a1a8d9bdffe7166edbc5e265656ab1fa3cc30ef14cbe51ac1b4deba5a01', 1, 1, 'mdev', '[]', 0, '2019-02-18 21:26:11', '2019-02-18 21:26:11', '2020-02-19 04:26:11'),
('2de8800975b67318ede7bb4712767d591b6b2b94795aa8b4f14ef883c3bc0fd33e87526a4989a83b', 1, 1, 'mdev', '[]', 0, '2019-02-12 03:34:36', '2019-02-12 03:34:36', '2020-02-12 10:34:36'),
('3272dc332ab1523be3c09b64b57cac6c27f4992c9f8da2a3ee7b0bb5ebc18ed712a6f01ddf2a2a74', 1, 1, 'mdev', '[]', 0, '2019-02-12 03:34:45', '2019-02-12 03:34:45', '2020-02-12 10:34:45'),
('3a02eb429248cbaa71635813a461745b1426bdd935d42d3624e4e19e8f6e45cbabc09133d8a3a1f2', 1, 1, 'mdev', '[]', 0, '2019-02-18 21:22:53', '2019-02-18 21:22:53', '2020-02-19 04:22:53'),
('53bf7ba41817d7989d1db0e14d76b3b696e315afbf8c67c70ba7059c2e2a6b27b9844cd2d482503a', 1, 1, 'mdev', '[]', 0, '2019-02-19 01:53:45', '2019-02-19 01:53:45', '2020-02-19 08:53:45'),
('7f18e04056b7083f57df25def70c89d21e86315c6c815e77a61a2d5432910c3c66c1fdb67241aa42', 1, 1, 'mdev', '[]', 0, '2019-02-18 21:26:32', '2019-02-18 21:26:32', '2020-02-19 04:26:32'),
('a67acd98355b2aeddc8dd20aca1b9cde59118034c029bb7fba9877c839979e518e229f153eb74602', 1, 1, 'mdev', '[]', 0, '2019-02-18 21:22:32', '2019-02-18 21:22:32', '2020-02-19 04:22:32'),
('d4902cbd4a0e8f02b4fe46cff59009aec815cb140d225f4581469063404f335ec0c80fe9aeaabbd1', 1, 1, 'mdev', '[]', 0, '2019-02-18 21:37:43', '2019-02-18 21:37:43', '2020-02-19 04:37:43'),
('d60f8529247950cc9ea3d42a69e09f32d182c0795df9fbace3b2d18033dff2d6233fdc9f16def93b', 1, 1, 'mdev', '[]', 0, '2019-02-18 23:29:52', '2019-02-18 23:29:52', '2020-02-19 06:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'yDQbfZRqfhIH2hCnNbUHpY8346thzewrOKvGQkMR', 'http://localhost', 1, 0, 0, '2019-02-11 03:44:09', '2019-02-11 03:44:09'),
(2, NULL, 'Laravel Password Grant Client', '95oo7KvJ1voeYX0Mvqon6Agrg6pvl6iLAy2yDDkV', 'http://localhost', 0, 1, 0, '2019-02-11 03:44:09', '2019-02-11 03:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-02-11 03:44:09', '2019-02-11 03:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `tabungans`
--

CREATE TABLE `tabungans` (
  `id_tab` int(10) UNSIGNED NOT NULL,
  `atas_nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rekening` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_bank` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tabungans`
--

INSERT INTO `tabungans` (`id_tab`, `atas_nama`, `rekening`, `nama_bank`, `created_at`, `updated_at`) VALUES
(1, 'Abdul Malik Khoiri', '1234567890', 'BCA', '2019-02-15 01:44:29', '2019-02-15 01:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `tagihans`
--

CREATE TABLE `tagihans` (
  `id_tag` int(10) UNSIGNED NOT NULL,
  `nama_tag` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_tag` int(11) NOT NULL,
  `description_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_tag` enum('aktif','nonaktif','selesai') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tagihans`
--

INSERT INTO `tagihans` (`id_tag`, `nama_tag`, `total_tag`, `description_tag`, `status_tag`, `created_at`, `updated_at`) VALUES
(1, 'Pembayaran Kontrakan', 2000000, NULL, 'aktif', '2019-02-15 00:55:19', '2019-02-15 00:55:19'),
(2, 'Pembayaran Air', 300000, NULL, 'aktif', '2019-02-15 01:37:13', '2019-02-15 01:37:13'),
(3, 'Pembayaran Listrik', 100000, NULL, 'aktif', '2019-02-15 02:55:44', '2019-02-15 02:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'malik', 'malik@gmail.com', NULL, '$2y$10$ez2u1LBV9vWbpjRDKmWpf.X0v4QSDTWzzqrRpzms3c7ZpAtnKtWSC', NULL, '2019-02-12 03:34:34', '2019-02-12 03:34:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tabungans`
--
ALTER TABLE `tabungans`
  ADD PRIMARY KEY (`id_tab`);

--
-- Indexes for table `tagihans`
--
ALTER TABLE `tagihans`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabungans`
--
ALTER TABLE `tabungans`
  MODIFY `id_tab` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tagihans`
--
ALTER TABLE `tagihans`
  MODIFY `id_tag` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
