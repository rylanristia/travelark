-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 13, 2023 at 05:18 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_travlerk`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkout_instant_travel_sumaries`
--

CREATE TABLE `checkout_instant_travel_sumaries` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `palace_id` bigint UNSIGNED NOT NULL,
  `transaction_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` double NOT NULL,
  `ticket_date` datetime NOT NULL,
  `qty` int NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `checkout_instant_travel_sumaries`
--

INSERT INTO `checkout_instant_travel_sumaries` (`id`, `user_id`, `palace_id`, `transaction_number`, `total_price`, `ticket_date`, `qty`, `firstname`, `lastname`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'LBir3HpjUU6433e16489be1', 500000, '2022-05-12 00:00:00', 5, 'mahathirtama', 'ahmad', 'tama@gmail.com', '085771434475', '2023-04-10 10:13:56', '2023-04-10 10:13:56'),
(2, 1, 1, '1FMtbZiBcy6433e16b969c7', 500000, '2022-05-12 00:00:00', 5, 'mahathirtama', 'ahmad', 'tama@gmail.com', '085771434475', '2023-04-10 10:14:03', '2023-04-10 10:14:03'),
(3, 1, 2, 's1hhutYw2o6433e17149497', 500000, '2022-05-12 00:00:00', 5, 'mahathirtama', 'ahmad', 'tama@gmail.com', '085771434475', '2023-04-10 10:14:09', '2023-04-10 10:14:09'),
(4, 1, 3, 'y69QU6AzwC6433e1769ac77', 500000, '2022-05-12 00:00:00', 5, 'mahathirtama', 'ahmad', 'tama@gmail.com', '085771434475', '2023-04-10 10:14:14', '2023-04-10 10:14:14'),
(5, 1, 4, 'OnM1WvQk8v6433e17d88ce1', 500000, '2022-05-12 00:00:00', 5, 'mahathirtama', 'ahmad', 'tama@gmail.com', '085771434475', '2023-04-10 10:14:21', '2023-04-10 10:14:21'),
(6, 1, 2, 'ghGKq2S5SN643794993cbe3', 30000, '2022-05-12 00:00:00', 2, 'tama', 'ahmad', 'tama@gmail.com', '085771434475', '2023-04-13 05:35:21', '2023-04-13 05:35:21'),
(7, 1, 2, 'Mz3383bqUz6437949ed4821', 30000, '2022-05-12 00:00:00', 2, 'tama', 'ahmad', 'tama@gmail.com', '085771434475', '2023-04-13 05:35:26', '2023-04-13 05:35:26'),
(8, 1, 2, 'TaZfJfTHO864379b8196e9b', 30000, '2022-05-12 00:00:00', 2, 'tama', 'ahmad', 'tama@gmail.com', '085771434475', '2023-04-13 06:04:49', '2023-04-13 06:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `checkout_package_travel_sumaries`
--

CREATE TABLE `checkout_package_travel_sumaries` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `trip_package_id` bigint UNSIGNED NOT NULL,
  `total_price` double NOT NULL,
  `transaction_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `ticket_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `checkout_package_travel_sumaries`
--

INSERT INTO `checkout_package_travel_sumaries` (`id`, `user_id`, `trip_package_id`, `total_price`, `transaction_number`, `firstname`, `lastname`, `email`, `phone_number`, `qty`, `ticket_date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 500000, 'jLg8ti1JZC6433dfaf03023', 'mahathirtama', 'ahmad', 'tama@gmail.com', '085771434475', 5, '2022-05-12 00:00:00', '2023-04-10 10:06:39', '2023-04-10 10:06:39'),
(2, 1, 1, 500000, 'X0QoVEl4kw6433dfe7e71c4', 'mahathirtama aja', 'ahmad', 'tama@gmail.com', '085771434475', 5, '2022-05-12 00:00:00', '2023-04-10 10:07:35', '2023-04-10 10:07:35'),
(3, 1, 2, 500000, '8NChjlxwdM6433dffc31a25', 'mahathirtama aja', 'ahmad', 'tama@gmail.com', '085771434475', 5, '2022-05-12 00:00:00', '2023-04-10 10:07:56', '2023-04-10 10:07:56'),
(4, 1, 2, 500000, '3v91g1Hmlx6433e03f5bf35', 'mahathirtama aja', 'ahmad', 'tama@gmail.com', '085771434475', 5, '2022-05-12 00:00:00', '2023-04-10 10:09:03', '2023-04-10 10:09:03'),
(5, 1, 3, 500000, 'pKUDq2sAeY6433e0467e538', 'mahathirtama aja', 'ahmad', 'tama@gmail.com', '085771434475', 5, '2022-05-12 00:00:00', '2023-04-10 10:09:10', '2023-04-10 10:09:10'),
(6, 1, 4, 500000, 'MDTjuX490c6433e04e27cd5', 'mahathirtama aja', 'ahmad', 'tama@gmail.com', '085771434475', 5, '2022-05-12 00:00:00', '2023-04-10 10:09:18', '2023-04-10 10:09:18'),
(7, 1, 1, 30000, 'yA97PpWFrl64379b8633700', 'tama', 'ahmad', 'tama@gmail.com', '085771434475', 2, '2022-05-12 00:00:00', '2023-04-13 06:04:54', '2023-04-13 06:04:54'),
(8, 1, 1, 30000, 'tqiMPxjp5r6437c94618a8b', 'tama', 'ahmad', 'tama@gmail.com', '085771434475', 2, '2022-05-12 00:00:00', '2023-04-13 09:20:06', '2023-04-13 09:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Banda Aceh', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(2, 'Langsa', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(3, 'Lhokseumawe', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(4, 'Sabang', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(5, 'Subulussalam', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(6, 'Denpasar', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(7, 'Pangkalpinang', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(8, 'Cilegon', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(9, 'Serang', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(10, 'Tangerang Selatan', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(11, 'Tangerang', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(12, 'Bengkulu', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(13, 'Yogyakarta', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(14, 'Gorontalo', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(15, 'Kota Administrasi Jakarta Barat', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(16, 'Kota Administrasi Jakarta Pusat', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(17, 'Kota Administrasi Jakarta Selatan', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(18, 'Kota Administrasi Jakarta Timur', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(19, 'Kota Administrasi Jakarta Utara', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(20, 'Sungai Penuh', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(21, 'Jambi', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(22, 'Bandung', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(23, 'Bekasi', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(24, 'Bogor', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(25, 'Cimahi', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(26, 'Cirebon', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(27, 'Depok', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(28, 'Sukabumi', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(29, 'Tasikmalaya', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(30, 'Banjar', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(31, 'Magelang', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(32, 'Pekalongan', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(33, 'Salatiga', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(34, 'Semarang', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(35, 'Surakarta', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(36, 'Tegal', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(37, 'Batu', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(38, 'Blitar', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(39, 'Kediri', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(40, 'Madiun', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(41, 'Malang', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(42, 'Mojokerto', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(43, 'Pasuruan', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(44, 'Probolinggo', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(45, 'Surabaya', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(46, 'Pontianak', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(47, 'Singkawang', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(48, 'Banjarbaru', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(49, 'Banjarmasin', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(50, 'Palangka Raya', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(51, 'Balikpapan', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(52, 'Bontang', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(53, 'Samarinda', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(54, 'Nusantara', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(55, 'Tarakan', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(56, 'Batam', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(57, 'Tanjungpinang', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(58, 'Bandar Lampung', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(59, 'Metro', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(60, 'Ternate', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(61, 'Tidore Kepulauan', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(62, 'Ambon', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(63, 'Tual', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(64, 'Bima', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(65, 'Mataram', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(66, 'Kupang', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(67, 'Sorong', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(68, 'Jayapura', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(69, 'Dumai', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(70, 'Pekanbaru', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(71, 'Makassar', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(72, 'Palopo', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(73, 'Parepare', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(74, 'Palu', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(75, 'Baubau', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(76, 'Kendari', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(77, 'Bitung', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(78, 'Kotamobagu', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(79, 'Manado', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(80, 'Tomohon', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(81, 'Bukittinggi', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(82, 'Padang', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(83, 'Padang Panjang', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(84, 'Pariaman', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(85, 'Payakumbuh', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(86, 'Sawahlunto', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(87, 'Solok', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(88, 'Lubuklinggau', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(89, 'Pagar Alam', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(90, 'Palembang', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(91, 'Prabumulih', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(92, 'Binjai', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(93, 'Gunungsitoli', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(94, 'Medan', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(95, 'Padangsidimpuan', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(96, 'Pematangsiantar', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(97, 'Sibolga', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(98, 'Tanjungbalai', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(99, 'Tebing Tinggi', '2023-04-10 09:57:46', '2023-04-10 09:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Indonesia', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(2, 'Japan', '2023-04-10 09:57:46', '2023-04-10 09:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED NOT NULL,
  `city_id` bigint UNSIGNED NOT NULL,
  `province_id` bigint UNSIGNED NOT NULL,
  `destination_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `private_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `user_id`, `tag_id`, `country_id`, `city_id`, `province_id`, `destination_name`, `image`, `price`, `description`, `private_price`, `created_at`, `updated_at`) VALUES
(3, 1, 1, 1, 1, 1, 'bali', 'public/destinations/7RBx34REoLusjmYp5GjjopW5UnpSut8hIkUNLoP9.jpg', 3000, 'test aja', 5000, '2023-04-10 09:57:57', '2023-04-10 09:57:57'),
(4, 1, 1, 1, 1, 1, 'jogja', 'public/destinations/o1oFFXSnro3ahKRuF7Hck1P29GaZWcKmGGhcpBcM.jpg', 3000, 'test aja', 5000, '2023-04-10 09:59:10', '2023-04-10 09:59:10'),
(5, 1, 1, 1, 1, 1, 'jakarta', 'public/destinations/5gEk4bBjS2u2Sas4bPSlRep0hsZ3K0KLxxJf4NSB.jpg', 3000, 'test aja', 5000, '2023-04-10 09:59:24', '2023-04-10 09:59:24'),
(6, 1, 1, 1, 1, 1, 'bandung', 'public/destinations/XjWsuwLB5xcTgw4kqPhcBhFDgobgsZvUs8WTeFdO.jpg', 3000, 'test aja', 5000, '2023-04-10 09:59:32', '2023-04-10 09:59:32');

-- --------------------------------------------------------

--
-- Table structure for table `destination_details`
--

CREATE TABLE `destination_details` (
  `id` bigint UNSIGNED NOT NULL,
  `destination_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destination_details`
--

INSERT INTO `destination_details` (`id`, `destination_id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(2, 3, 'istana nyai rorokidul', 'public/destinations/35JOcExtVMLGPUOwVdshQt5zWFgkXEwXfZdcKBns.jpg', '2023-04-10 10:00:30', '2023-04-10 10:00:30'),
(3, 3, 'istana nyai roro jongrang', 'public/destinations/GWpi5lX9c7sAOkCswioPGEm5HxQxnev5Z4SnvOsZ.jpg', '2023-04-10 10:00:43', '2023-04-10 10:00:43'),
(4, 3, 'istana nyai roro kadal', 'public/destinations/QR2gz5P9rcTnsGWkkVmXrJflrldoO9HMqyucDQGL.jpg', '2023-04-10 10:00:52', '2023-04-10 10:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `detail_packages`
--

CREATE TABLE `detail_packages` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `trip_packages_id` bigint UNSIGNED NOT NULL,
  `checkout_package_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_packages`
--

INSERT INTO `detail_packages` (`id`, `user_id`, `trip_packages_id`, `checkout_package_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2023-04-10 10:06:39', '2023-04-10 10:06:39'),
(2, 1, 1, 2, '2023-04-10 10:07:36', '2023-04-10 10:07:36'),
(3, 1, 2, 3, '2023-04-10 10:07:56', '2023-04-10 10:07:56'),
(4, 1, 2, 4, '2023-04-10 10:09:03', '2023-04-10 10:09:03'),
(5, 1, 3, 5, '2023-04-10 10:09:10', '2023-04-10 10:09:10'),
(6, 1, 4, 6, '2023-04-10 10:09:18', '2023-04-10 10:09:18'),
(7, 1, 1, 7, '2023-04-13 06:04:54', '2023-04-13 06:04:54'),
(8, 1, 1, 8, '2023-04-13 09:20:06', '2023-04-13 09:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_trips`
--

CREATE TABLE `featured_trips` (
  `id` bigint UNSIGNED NOT NULL,
  `trip_package_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featured_trips`
--

INSERT INTO `featured_trips` (`id`, `trip_package_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'diperbolehkan tidur di jalan', '2023-04-10 10:03:31', '2023-04-10 10:03:31'),
(2, 1, 'tidur di empang', '2023-04-10 10:03:50', '2023-04-10 10:03:50'),
(3, 1, 'boleh ganti destination', '2023-04-10 10:04:08', '2023-04-10 10:04:08');

-- --------------------------------------------------------

--
-- Table structure for table `guides`
--

CREATE TABLE `guides` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guides`
--

INSERT INTO `guides` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'tama', '2023-04-10 09:57:16', '2023-04-10 09:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `instant_travels`
--

CREATE TABLE `instant_travels` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `palace_id` bigint UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instant_travels`
--

INSERT INTO `instant_travels` (`id`, `user_id`, `palace_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'public/palaces/clgtojHsa9edVOuhbvLVo1nQnGscNDj6JwV1NX8I.jpg', '2023-04-10 10:11:44', '2023-04-11 05:47:49'),
(2, 1, 1, 'public/palaces/iLRfarb5XQuyCq4HFzi7bwrqURQxOxpXtvs313iO.jpg', '2023-04-10 10:11:47', '2023-04-10 10:11:47'),
(3, 1, 1, 'public/palaces/pv4aZmgZhVqxVoP0As0YscGLVztj2rUI4LfsHq4s.jpg', '2023-04-10 10:11:50', '2023-04-10 10:11:50'),
(4, 1, 1, 'public/palaces/9DPizNZlE4uP8nxWSaQxJHBECMgj75Vidk2kgyay.jpg', '2023-04-10 10:11:53', '2023-04-10 10:11:53'),
(5, 1, 1, 'public/palaces/XjRZahPDjIID8zlTD6HbvsNV2dQejSzb4iSrRaVb.jpg', '2023-04-10 10:11:56', '2023-04-10 10:11:56'),
(6, 1, 2, 'public/palaces/nwb9DuYNXqyBjt8KMAPbyJeuFaguxyYMnn74xoQc.jpg', '2023-04-10 10:12:03', '2023-04-10 10:12:03'),
(7, 1, 2, 'public/palaces/LxRl4yxday2RyPFyaF3nKtRVIGDS7xYjZrkJpwq7.jpg', '2023-04-10 10:12:05', '2023-04-10 10:12:05'),
(8, 1, 2, 'public/palaces/P5IGJUhBNlvh9wktuY0jpUyFjjOMGF4ilF3Ab9tC.jpg', '2023-04-10 10:12:08', '2023-04-10 10:12:08'),
(9, 1, 2, 'public/palaces/MuEhWHcUqbqMOQJVo70bT50pvWL4C22fSjJhKxUI.jpg', '2023-04-10 10:12:10', '2023-04-10 10:12:10'),
(10, 1, 3, 'public/palaces/tkk6nckdlodrHSxgKlJUILoaWkRO5Zn09W61TciX.jpg', '2023-04-10 10:12:16', '2023-04-10 10:12:16'),
(11, 1, 3, 'public/palaces/Yn1NEGz4w2zFgmY74dG3MVZngbc9pQolvA50oOMk.jpg', '2023-04-10 10:12:19', '2023-04-10 10:12:19'),
(12, 1, 3, 'public/palaces/gfkmjmCOPgMzCdt9r4hfks20jjje4H1Osz1Qx0ej.jpg', '2023-04-10 10:12:22', '2023-04-10 10:12:22'),
(13, 1, 3, 'public/palaces/K3ETsRlLLKVetbzxmq0R79dyKYKELd2qNWZWTB19.jpg', '2023-04-10 10:12:24', '2023-04-10 10:12:24'),
(14, 1, 4, 'public/palaces/8M6XcRu8AywNkI1pHE5G9SEehbqslP7dNH6NHhso.jpg', '2023-04-10 10:12:33', '2023-04-10 10:12:33'),
(15, 1, 4, 'public/palaces/WmNfLSKpN2DinrQaBNuGVgAOWiPQomYVxe9xk8kI.jpg', '2023-04-10 10:12:36', '2023-04-10 10:12:36'),
(16, 1, 4, 'public/palaces/nRLhakjDYNwqJDparAR9ahD8DhStZm4tqL9K5atO.jpg', '2023-04-10 10:12:38', '2023-04-10 10:12:38'),
(17, 1, 4, 'public/palaces/SFCWnuwoN0JWIUabPT6IYhQouL8mlvVOjRclaeFX.jpg', '2023-04-10 10:12:40', '2023-04-10 10:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_01_01_create_cities_table', 1),
(6, '2023_04_01_02_create_tags_table', 1),
(7, '2023_04_01_03.5_create_countries_table', 1),
(8, '2023_04_01_03_create_provinces_table', 1),
(9, '2023_04_01_04_create_palaces_table', 1),
(10, '2023_04_01_06_create_guides_table', 1),
(11, '2023_04_01_07_create_destinations_table', 1),
(12, '2023_04_01_08_create_destination_details_table', 1),
(13, '2023_04_01_09_create_trip_packages_table', 1),
(14, '2023_04_01_11_create_trip_acomodations_table', 1),
(15, '2023_04_01_12_create_tickets_table', 1),
(16, '2023_04_01_13_create_instant_travels_table', 1),
(17, '2023_04_06_14_create_checkout_instant_travel_sumaries_table', 1),
(18, '2023_04_06_15_create_checkout_package_travel_sumaries_table', 1),
(19, '2023_04_08_16_create_featured_trip_table', 1),
(20, '2023_04_09_17_create_detail_packages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `palaces`
--

CREATE TABLE `palaces` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED NOT NULL,
  `city_id` bigint UNSIGNED NOT NULL,
  `province_id` bigint UNSIGNED NOT NULL,
  `palace_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `palaces`
--

INSERT INTO `palaces` (`id`, `user_id`, `tag_id`, `country_id`, `city_id`, `province_id`, `palace_name`, `image`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 'hanya unit test', 'public/palaces/wgPID68ZLRP8MyfSq8NeRgF8fYq0bEAYfIEtC1fV.jpg', 10000, 'unit test', '2023-04-10 10:10:37', '2023-04-13 17:10:20'),
(2, 1, 1, 1, 1, 1, 'kuburan jeruk purut', 'public/palaces/2ImiQWEHITUmSMDVF6kP9Gu7HubZQivuczYeTLJ0.jpg', 4000, 'test', '2023-04-10 10:11:02', '2023-04-10 10:11:02'),
(3, 1, 1, 1, 1, 1, 'kuburan jeruk parit', 'public/palaces/vw8SOosE2BttdIAgyfPgAeakchILdOe3WF13Elz6.jpg', 4000, 'test', '2023-04-10 10:11:12', '2023-04-10 10:11:12'),
(4, 1, 1, 1, 1, 1, 'kuburan jeruk bali', 'public/palaces/BdRil82Gdtq1UWKbp9pthzql3qlq5EfrwW6e0o0A.jpg', 4000, 'test', '2023-04-10 10:11:20', '2023-04-10 10:11:20'),
(6, 1, 1, 1, 1, 1, 'hanya unit test', 'public/palaces/2qERxaRmGsl3EpJNZLBZPKinqvakPtWT9zqXQh0K.jpg', 10000, 'unit test', '2023-04-13 13:50:39', '2023-04-13 13:50:39'),
(7, 1, 1, 1, 1, 1, 'kuburan jeruk bali', 'public/palaces/6ihNHJNcp57SknNkLXjPMJUPxiT7B8fucAWxQWMM.jpg', 4000, 'test', '2023-04-13 14:31:36', '2023-04-13 14:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Nanggroe Aceh Darussalam', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(2, 'Sumatera Utara', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(3, 'Sumatera Selatan', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(4, 'Sumatera Barat', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(5, 'Bengkulu', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(6, 'Riau', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(7, 'Kepulauan Riau', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(8, 'Jambi', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(9, 'Lampung', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(10, 'Bangka Belitung', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(11, 'Kalimantan Barat', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(12, 'Kalimantan Timur', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(13, 'Kalimantan Selatan', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(14, 'Kalimantan Tengah', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(15, 'Kalimantan Utara', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(16, 'Banten', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(17, 'DKI Jakarta', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(18, 'Jawa Barat', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(19, 'Jawa Tengah', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(20, 'Daerah Istimewa Yogyakarta', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(21, 'Jawa Timur', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(22, 'Bali', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(23, 'Nusa Tenggara Timur', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(24, 'Nusa Tenggara Barat', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(25, 'Gorontalo', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(26, 'Sulawesi Barat', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(27, 'Sulawesi Tengah', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(28, 'Sulawesi Utara', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(29, 'Sulawesi Tenggara', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(30, 'Sulawesi Selatan', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(31, 'Maluku Utara', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(32, 'Maluku', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(33, 'Papua Barat', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(34, 'Papua', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(35, 'Papua Tengah', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(36, 'Papua Pegunungan', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(37, 'Papua Selatan', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(38, 'Papua Barat Daya', '2023-04-10 09:57:46', '2023-04-10 09:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Island', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(2, 'Forest', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(3, 'Mountain', '2023-04-10 09:57:46', '2023-04-10 09:57:46'),
(4, 'Beach', '2023-04-10 09:57:46', '2023-04-10 09:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip_acomodations`
--

CREATE TABLE `trip_acomodations` (
  `id` bigint UNSIGNED NOT NULL,
  `trip_package_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trip_acomodations`
--

INSERT INTO `trip_acomodations` (`id`, `trip_package_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'vila jadul', '2023-04-10 10:04:42', '2023-04-10 10:04:42'),
(2, 1, 'kuburan', '2023-04-10 10:04:54', '2023-04-10 10:04:54'),
(3, 1, 'rumah makan padang', '2023-04-10 10:05:14', '2023-04-10 10:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `trip_packages`
--

CREATE TABLE `trip_packages` (
  `id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `destination_id` bigint UNSIGNED NOT NULL,
  `guide_id` bigint UNSIGNED NOT NULL,
  `type` enum('open','private') COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int NOT NULL,
  `quota` int NOT NULL,
  `departure_time` datetime NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trip_packages`
--

INSERT INTO `trip_packages` (`id`, `created_by`, `destination_id`, `guide_id`, `type`, `duration`, `quota`, `departure_time`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 1, 'private', 2, 30, '2023-04-10 00:00:00', 3000, '2023-04-10 10:01:30', '2023-04-10 10:01:30'),
(2, 1, 4, 1, 'private', 2, 30, '2023-04-10 00:00:00', 3000, '2023-04-10 10:02:08', '2023-04-10 10:02:08'),
(3, 1, 5, 1, 'open', 2, 30, '2023-04-10 00:00:00', 3000, '2023-04-10 10:02:26', '2023-04-10 10:02:26'),
(4, 1, 6, 1, 'open', 2, 30, '2023-04-10 00:00:00', 3000, '2023-04-10 10:02:32', '2023-04-10 10:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('traveler','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `phone`, `level`, `token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'tama', 'wibu@gmail.com', NULL, '$2y$10$XSED5yDDcO0tMCrPylm2UO6bG1D/1lZkRVUPqvRLOvQLX245NgJzO', '085771434475', 'admin', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbG9jYWxob3N0L2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNjgxNDA1ODE2LCJleHAiOjE2ODE0MDk0MTYsIm5iZiI6MTY4MTQwNTgxNiwianRpIjoiNGlsZnI2dTJkbnRjMnlDRCIsInN1YiI6IjEiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.JYbLYRDI6-uHHQByS98sunquc6108R_Gj039SSqMWy4', NULL, '2023-04-10 09:53:44', '2023-04-13 17:10:17'),
(2, 'unittest', 'unittest@gmail.com', NULL, '$2y$04$rhrvFtYfx1aTF8zUv/C55edDARJ3O1t.qBnHh0gbmCQKR34314jyC', '085771434475', 'traveler', NULL, NULL, '2023-04-13 14:05:29', '2023-04-13 14:05:29'),
(3, 'unittest2', 'unittest2@gmail.com', NULL, '$2y$04$UbSDV6jmCciKzFDbIA9goeOwYZVDkpXEBFMGG8SDLjXUY0AL2/qLK', '085771434475', 'traveler', NULL, NULL, '2023-04-13 14:06:06', '2023-04-13 14:06:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkout_instant_travel_sumaries`
--
ALTER TABLE `checkout_instant_travel_sumaries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `checkout_instant_travel_sumaries_transaction_number_unique` (`transaction_number`),
  ADD KEY `checkout_instant_travel_sumaries_user_id_foreign` (`user_id`),
  ADD KEY `checkout_instant_travel_sumaries_palace_id_foreign` (`palace_id`);

--
-- Indexes for table `checkout_package_travel_sumaries`
--
ALTER TABLE `checkout_package_travel_sumaries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `checkout_package_travel_sumaries_transaction_number_unique` (`transaction_number`),
  ADD KEY `checkout_package_travel_sumaries_user_id_foreign` (`user_id`),
  ADD KEY `checkout_package_travel_sumaries_trip_package_id_foreign` (`trip_package_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destinations_user_id_foreign` (`user_id`),
  ADD KEY `destinations_tag_id_foreign` (`tag_id`),
  ADD KEY `destinations_country_id_foreign` (`country_id`),
  ADD KEY `destinations_city_id_foreign` (`city_id`),
  ADD KEY `destinations_province_id_foreign` (`province_id`);

--
-- Indexes for table `destination_details`
--
ALTER TABLE `destination_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_details_destination_id_foreign` (`destination_id`);

--
-- Indexes for table `detail_packages`
--
ALTER TABLE `detail_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_packages_user_id_foreign` (`user_id`),
  ADD KEY `detail_packages_trip_packages_id_foreign` (`trip_packages_id`),
  ADD KEY `detail_packages_checkout_package_id_foreign` (`checkout_package_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `featured_trips`
--
ALTER TABLE `featured_trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `featured_trips_trip_package_id_foreign` (`trip_package_id`);

--
-- Indexes for table `guides`
--
ALTER TABLE `guides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instant_travels`
--
ALTER TABLE `instant_travels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instant_travels_user_id_foreign` (`user_id`),
  ADD KEY `instant_travels_palace_id_foreign` (`palace_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `palaces`
--
ALTER TABLE `palaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `palaces_user_id_foreign` (`user_id`),
  ADD KEY `palaces_tag_id_foreign` (`tag_id`),
  ADD KEY `palaces_country_id_foreign` (`country_id`),
  ADD KEY `palaces_city_id_foreign` (`city_id`),
  ADD KEY `palaces_province_id_foreign` (`province_id`);

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
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_acomodations`
--
ALTER TABLE `trip_acomodations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trip_acomodations_trip_package_id_foreign` (`trip_package_id`);

--
-- Indexes for table `trip_packages`
--
ALTER TABLE `trip_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trip_packages_created_by_foreign` (`created_by`),
  ADD KEY `trip_packages_destination_id_foreign` (`destination_id`),
  ADD KEY `trip_packages_guide_id_foreign` (`guide_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkout_instant_travel_sumaries`
--
ALTER TABLE `checkout_instant_travel_sumaries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `checkout_package_travel_sumaries`
--
ALTER TABLE `checkout_package_travel_sumaries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `destination_details`
--
ALTER TABLE `destination_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detail_packages`
--
ALTER TABLE `detail_packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featured_trips`
--
ALTER TABLE `featured_trips`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guides`
--
ALTER TABLE `guides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `instant_travels`
--
ALTER TABLE `instant_travels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `palaces`
--
ALTER TABLE `palaces`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trip_acomodations`
--
ALTER TABLE `trip_acomodations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trip_packages`
--
ALTER TABLE `trip_packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `checkout_instant_travel_sumaries`
--
ALTER TABLE `checkout_instant_travel_sumaries`
  ADD CONSTRAINT `checkout_instant_travel_sumaries_palace_id_foreign` FOREIGN KEY (`palace_id`) REFERENCES `palaces` (`id`),
  ADD CONSTRAINT `checkout_instant_travel_sumaries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `checkout_package_travel_sumaries`
--
ALTER TABLE `checkout_package_travel_sumaries`
  ADD CONSTRAINT `checkout_package_travel_sumaries_trip_package_id_foreign` FOREIGN KEY (`trip_package_id`) REFERENCES `trip_packages` (`id`),
  ADD CONSTRAINT `checkout_package_travel_sumaries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `destinations`
--
ALTER TABLE `destinations`
  ADD CONSTRAINT `destinations_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `destinations_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `destinations_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`),
  ADD CONSTRAINT `destinations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`),
  ADD CONSTRAINT `destinations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `destination_details`
--
ALTER TABLE `destination_details`
  ADD CONSTRAINT `destination_details_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`);

--
-- Constraints for table `detail_packages`
--
ALTER TABLE `detail_packages`
  ADD CONSTRAINT `detail_packages_checkout_package_id_foreign` FOREIGN KEY (`checkout_package_id`) REFERENCES `checkout_package_travel_sumaries` (`id`),
  ADD CONSTRAINT `detail_packages_trip_packages_id_foreign` FOREIGN KEY (`trip_packages_id`) REFERENCES `trip_packages` (`id`),
  ADD CONSTRAINT `detail_packages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `featured_trips`
--
ALTER TABLE `featured_trips`
  ADD CONSTRAINT `featured_trips_trip_package_id_foreign` FOREIGN KEY (`trip_package_id`) REFERENCES `trip_packages` (`id`);

--
-- Constraints for table `instant_travels`
--
ALTER TABLE `instant_travels`
  ADD CONSTRAINT `instant_travels_palace_id_foreign` FOREIGN KEY (`palace_id`) REFERENCES `palaces` (`id`),
  ADD CONSTRAINT `instant_travels_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `palaces`
--
ALTER TABLE `palaces`
  ADD CONSTRAINT `palaces_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `palaces_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `palaces_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`),
  ADD CONSTRAINT `palaces_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`),
  ADD CONSTRAINT `palaces_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `trip_acomodations`
--
ALTER TABLE `trip_acomodations`
  ADD CONSTRAINT `trip_acomodations_trip_package_id_foreign` FOREIGN KEY (`trip_package_id`) REFERENCES `trip_packages` (`id`);

--
-- Constraints for table `trip_packages`
--
ALTER TABLE `trip_packages`
  ADD CONSTRAINT `trip_packages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `trip_packages_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`),
  ADD CONSTRAINT `trip_packages_guide_id_foreign` FOREIGN KEY (`guide_id`) REFERENCES `guides` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
