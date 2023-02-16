-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Fev-2023 às 14:53
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `api_youtube`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historics`
--

CREATE TABLE `historics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `busca` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `historics`
--

INSERT INTO `historics` (`id`, `user_id`, `busca`, `created_at`, `updated_at`) VALUES
(1, 1, 'cannibal', '2023-02-14 23:55:24', '2023-02-14 23:55:24'),
(2, 1, 'daniel', '2023-02-15 15:30:36', '2023-02-15 15:30:36'),
(3, 1, 'morbid angel', '2023-02-15 15:31:28', '2023-02-15 15:31:28'),
(4, 1, 'morbid%angel', '2023-02-15 15:31:47', '2023-02-15 15:31:47'),
(5, 1, 'morbid', '2023-02-15 15:32:02', '2023-02-15 15:32:02'),
(6, 16, 'mostrosity', '2023-02-15 18:00:43', '2023-02-15 18:00:43'),
(7, 16, 'cannibal', '2023-02-15 18:01:21', '2023-02-15 18:01:21'),
(8, 16, 'raul', '2023-02-15 18:01:55', '2023-02-15 18:01:55'),
(9, 16, 'daniel', '2023-02-15 18:02:08', '2023-02-15 18:02:08'),
(10, 1, 'cannibal', '2023-02-15 23:18:34', '2023-02-15 23:18:34'),
(11, 1, 'cannibal corpse', '2023-02-15 23:18:53', '2023-02-15 23:18:53'),
(12, 1, 'cannibal%20corpse', '2023-02-15 23:20:02', '2023-02-15 23:20:02'),
(13, 1, 'cannibal%20corpse', '2023-02-15 23:20:48', '2023-02-15 23:20:48'),
(14, 1, 'queen', '2023-02-15 23:29:33', '2023-02-15 23:29:33'),
(15, 1, 'queen', '2023-02-15 23:29:59', '2023-02-15 23:29:59'),
(16, 1, 'junior', '2023-02-15 23:41:10', '2023-02-15 23:41:10'),
(17, 1, 'maria mercedes', '2023-02-15 23:42:59', '2023-02-15 23:42:59'),
(18, 1, 'morbid angel', '2023-02-15 23:43:22', '2023-02-15 23:43:22'),
(19, 1, 'morbid angel', '2023-02-15 23:45:20', '2023-02-15 23:45:20'),
(20, 1, 'morbid angel', '2023-02-15 23:46:44', '2023-02-15 23:46:44'),
(21, 1, 'morbid angel', '2023-02-15 23:47:22', '2023-02-15 23:47:22'),
(22, 1, 'daniel', '2023-02-15 23:48:15', '2023-02-15 23:48:15'),
(23, 1, 'cannibal', '2023-02-15 23:48:28', '2023-02-15 23:48:28'),
(24, 1, 'daniel', '2023-02-16 00:00:11', '2023-02-16 00:00:11'),
(25, 1, 'daniel', '2023-02-16 00:03:11', '2023-02-16 00:03:11'),
(26, 1, 'daniel', '2023-02-16 00:07:08', '2023-02-16 00:07:08'),
(27, 1, 'daniel', '2023-02-16 00:10:03', '2023-02-16 00:10:03'),
(28, 1, 'daniel', '2023-02-16 00:11:51', '2023-02-16 00:11:51'),
(29, 1, 'daniel', '2023-02-16 00:12:11', '2023-02-16 00:12:11'),
(30, 19, 'nirvana', '2023-02-16 02:52:33', '2023-02-16 02:52:33'),
(31, 20, 'nirvana', '2023-02-16 03:12:42', '2023-02-16 03:12:42'),
(32, 1, 'daniel', '2023-02-16 15:32:17', '2023-02-16 15:32:17'),
(33, 1, 'daniel', '2023-02-16 15:35:05', '2023-02-16 15:35:05'),
(34, 1, 'daniel', '2023-02-16 15:37:14', '2023-02-16 15:37:14'),
(35, 1, 'daniel', '2023-02-16 15:37:58', '2023-02-16 15:37:58'),
(36, 1, 'daniel', '2023-02-16 15:40:46', '2023-02-16 15:40:46'),
(37, 1, 'daniel', '2023-02-16 15:44:23', '2023-02-16 15:44:23'),
(38, 1, 'daniel', '2023-02-16 15:44:51', '2023-02-16 15:44:51'),
(39, 1, 'daniel', '2023-02-16 15:48:24', '2023-02-16 15:48:24'),
(40, 1, 'cannibal', '2023-02-16 15:50:06', '2023-02-16 15:50:06'),
(41, 1, 'daniel', '2023-02-16 15:50:14', '2023-02-16 15:50:14'),
(42, 1, 'daniel', '2023-02-16 15:50:32', '2023-02-16 15:50:32'),
(43, 1, 'daniel', '2023-02-16 15:51:42', '2023-02-16 15:51:42'),
(44, 1, 'daniel', '2023-02-16 15:52:46', '2023-02-16 15:52:46'),
(45, 1, 'cannibal corpse', '2023-02-16 15:56:45', '2023-02-16 15:56:45'),
(46, 1, 'cannibal corpse', '2023-02-16 15:58:02', '2023-02-16 15:58:02'),
(47, 1, 'cannibal corpse', '2023-02-16 15:59:04', '2023-02-16 15:59:04'),
(48, 1, 'cannibal corpse', '2023-02-16 15:59:12', '2023-02-16 15:59:12'),
(49, 1, 'cannibal corpse', '2023-02-16 15:59:17', '2023-02-16 15:59:17'),
(50, 1, 'cannibal corpse', '2023-02-16 15:59:39', '2023-02-16 15:59:39'),
(51, 1, 'cannibal corpse', '2023-02-16 16:03:54', '2023-02-16 16:03:54'),
(52, 1, 'cannibal corpse', '2023-02-16 16:04:02', '2023-02-16 16:04:02'),
(53, 1, 'cannibal corpse', '2023-02-16 16:04:17', '2023-02-16 16:04:17'),
(54, 1, 'cannibal corpse', '2023-02-16 16:05:37', '2023-02-16 16:05:37'),
(55, 1, 'cannibal corpse', '2023-02-16 16:06:39', '2023-02-16 16:06:39'),
(56, 1, 'cannibal corpse', '2023-02-16 16:07:19', '2023-02-16 16:07:19'),
(57, 1, 'cannibal corpse', '2023-02-16 16:08:10', '2023-02-16 16:08:10'),
(58, 1, 'cannibal corpse', '2023-02-16 16:08:55', '2023-02-16 16:08:55'),
(59, 1, 'cannibal', '2023-02-16 16:09:57', '2023-02-16 16:09:57'),
(60, 1, 'morbid angel', '2023-02-16 16:12:14', '2023-02-16 16:12:14'),
(61, 17, 'daniel', '2023-02-16 16:26:27', '2023-02-16 16:26:27'),
(62, 17, 'slayer', '2023-02-16 16:27:07', '2023-02-16 16:27:07'),
(63, 31, 'mostrosity', '2023-02-16 16:30:18', '2023-02-16 16:30:18'),
(64, 21, 'anitta', '2023-02-16 16:49:02', '2023-02-16 16:49:02'),
(65, 21, 'anitta', '2023-02-16 16:49:13', '2023-02-16 16:49:13'),
(66, 21, 'galvao', '2023-02-16 16:49:45', '2023-02-16 16:49:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2014_10_12_000000_create_users_table', 2),
(7, '2023_02_14_203614_create_historics_table', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `sobrenome`, `tipo`, `telefone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'Admin', 'Admin', '(18)99745-4545', 'admin@admin.com.br', NULL, '$2y$10$jHpFc6yPF/ZGF00UCFU4cuaTZpWTgZq0sMHrq9XGk6YqGGlWY3CTm', NULL, '2023-02-12 22:07:40', '2023-02-13 22:02:54'),
(17, 'Thyago', 'Bomfim', 'Usuario', '18997454417', 'THYAGO.TPD@GMAIL.COM', NULL, '$2y$10$L5FCcnJs7TUGc2g2g3k2Re8j2a2nAhiKz1ErTL/aSKxOTTcR3e96q', NULL, '2023-02-15 22:23:33', '2023-02-15 22:41:00'),
(18, 'cL5PCJ1R8j7YJug', 'chLeaDg14sBjrWmmZkKI', 'Usuario', 'srjLdSyuqKuafch', 'dwlGeUpmlI@gmail.com', NULL, '$2y$10$q.C0OuxjrECwrUX96Tx/DO7lineSVp4VdFTmlT.YDoA4YWDWM4yc2', NULL, NULL, NULL),
(19, 'ivoSqCqkghP6bkZ', 'Sd0CA3DqS3I13UlmLNw6', 'Usuario', 'msu76tbhMMxgGVv', 'dlZEuC70dt@gmail.com', NULL, '$2y$10$jMojymNE7V2ICUgm6WLLs.G3v5bwmzuFsTdGoaRDAahO3axFItUuq', NULL, '2023-02-16 02:52:33', '2023-02-16 02:52:33'),
(20, '1Wn378l3bCeOVfs', 'j7g24wxFeCsQQETpNazN', 'Usuario', 'xMN9Nk8WmbnR3K7', '3zTVXMW4VO@gmail.com', NULL, '$2y$10$NrIWhamMCuAzo9y3nAg.4e33oufAloM5X4TnLMvpsZlN7RO0GUXRK', NULL, '2023-02-16 03:12:42', '2023-02-16 03:12:42'),
(21, 'Bernice Macejkovic', 'Breitenberg', 'Usuario', '1-855-729-9882', 'roel45@example.net', '2023-02-16 04:57:32', '$2y$10$6Q6FTM7FVqtcPD82P738..AKY8Ha1Ar1M2FK/m8b606a0zJskV93e', 'drT6wM6fzhPhLHkHihkISyzbtouzS2uxwCt3ZVkIfDaY5EVdV3SffBaKtB2l', '2023-02-16 04:57:33', '2023-02-16 04:57:33'),
(22, 'Prof. Kailyn Kuhic III', 'Hane', 'Usuario', '866.814.7587', 'johnnie.waters@example.com', '2023-02-16 04:57:32', '$2y$10$PTzXDtqJaB1srZcnJONIoupZLZsPGgJBRNPhhwkvhmLwDIZbJbYPO', 'mnMUOBY37X', '2023-02-16 04:57:33', '2023-02-16 04:57:33'),
(23, 'Tristian Carroll', 'Pollich', 'Usuario', '888-802-7231', 'bernice30@example.net', '2023-02-16 04:57:32', '$2y$10$uA9atFXGySn2NiHYe6eiCuANNSTPMHtNEGUQ3KKDYhua9Wd1u97IW', 'VNYoYPdpI2', '2023-02-16 04:57:33', '2023-02-16 04:57:33'),
(24, 'Jan Wintheiser II', 'Hilpert', 'Usuario', '800-495-5106', 'enrico.mueller@example.com', '2023-02-16 04:57:32', '$2y$10$ppq6hfYtSSzCmeDSD4KE2uugDv4WihcfjVwjfmftWNNw9BUxbbU8K', 'aGEuw7BX62', '2023-02-16 04:57:33', '2023-02-16 04:57:33'),
(25, 'Elijah Nienow II', 'Hodkiewicz', 'Usuario', '1-844-693-3566', 'marcelina.crona@example.org', '2023-02-16 04:57:32', '$2y$10$4pDmpD.0WOnTctPsnI4PfuKRcj6ue/zzeKGa3DPZufFpbo1fwYJCK', 'Jx7CWpukT2', '2023-02-16 04:57:33', '2023-02-16 04:57:33'),
(26, 'Lavada Ruecker I', 'Tillman', 'Usuario', '(800) 317-9847', 'twilkinson@example.org', '2023-02-16 04:57:32', '$2y$10$p5oNT/fbyh094A/a2FhZpus5bVWpnfERf4Z2lNdyP6MSqQZjr07Za', '6OMSPAJ6I8', '2023-02-16 04:57:33', '2023-02-16 04:57:33'),
(27, 'Ward Hettinger Jr.', 'Hagenes', 'Usuario', '(855) 938-5034', 'zharvey@example.org', '2023-02-16 04:57:32', '$2y$10$hu4jAN8F0skmqHDpBwf7HeG8XZtlAqcBxBEDTvrs7cjiBSnLYuhmK', 'GxYswscdCi', '2023-02-16 04:57:33', '2023-02-16 04:57:33'),
(28, 'Ervin Schultz', 'Emard', 'Usuario', '(866) 321-4195', 'johnathan.weissnat@example.org', '2023-02-16 04:57:32', '$2y$10$sVeJD9220IjZZyJKUlcBPeE52glUQ6KhT4irLkNKrey50IOvclFR6', 'S0xpUzACh3', '2023-02-16 04:57:33', '2023-02-16 04:57:33'),
(29, 'Chad Yost', 'Marquardt', 'Usuario', '855.228.7397', 'hermann38@example.org', '2023-02-16 04:57:32', '$2y$10$q0kW/RyNda8qKOr.0dyCSOefnlN7aOh1ufsN/AAJIkTotgBSoR2XO', 'qrgItfVekp', '2023-02-16 04:57:33', '2023-02-16 04:57:33'),
(30, 'Karine Herman', 'Metz', 'Usuario', '866.306.0846', 'jfritsch@example.com', '2023-02-16 04:57:32', '$2y$10$DmcQW5PTc0lF9sJ9wfhJsOiIjcrbbiGMA7aPvXuRsl2gl61Af.e4G', 'xXsIcasLFV', '2023-02-16 04:57:33', '2023-02-16 04:57:33'),
(31, 'Amanda', 'Cardoso', 'Admin', '(18)99748-4848', 'amanda@gmail.com', NULL, '$2y$10$/k.ocmM3lNvLeZU2HjXtn.I8m2muTr4ldQfJRxZabjIysExrIrE92', NULL, '2023-02-16 16:29:07', '2023-02-16 16:29:07');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `historics`
--
ALTER TABLE `historics`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `historics`
--
ALTER TABLE `historics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
