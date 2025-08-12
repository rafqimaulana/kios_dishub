-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 12, 2025 at 08:43 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kios_dishub`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `regency_id` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `regency_id`, `name`) VALUES
('1', '1', 'Samarinda Kota'),
('2', '1', 'Samarinda Sebrang'),
('3', '1', 'Samarinda Utara'),
('4', '1', 'Sungai Kunjang'),
('5', '2', 'Balikpapan Kota'),
('6', '3', 'Tenggarong Kota'),
('7', '4', 'Berau Kota'),
('8', '5', 'Bontang Kota'),
('9', '6', 'Paser Kota');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `infos`
--

CREATE TABLE `infos` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenberitas`
--

CREATE TABLE `jenberitas` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenberitas`
--

INSERT INTO `jenberitas` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Universitas', 'Universitas', '2024-12-29 05:18:56', '2024-12-29 05:18:56'),
(2, 'Wisata', 'Wisata', '2024-12-29 05:18:56', '2024-12-29 05:18:56'),
(3, 'Kuliner', 'Kuliner', '2024-12-29 05:18:56', '2024-12-29 05:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Tempat Kegiatan Usaha', 'Kos-Laki-Laki', '2024-12-29 05:18:56', '2024-12-29 05:18:56'),
(2, 'Tempat Tinggal', 'Kos-Perempuan', '2024-12-29 05:18:56', '2024-12-29 05:18:56'),
(3, 'Bebas', 'Kos-Campur', '2024-12-29 05:18:56', '2024-12-29 05:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `kamars`
--

CREATE TABLE `kamars` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Harga` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fasilitas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keranjangs`
--

CREATE TABLE `keranjangs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kosts`
--

CREATE TABLE `kosts` (
  `id` bigint UNSIGNED NOT NULL,
  `jenis_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regency_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `village_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maps` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wifi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jemur` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tamu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dapur` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teman` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hewan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rekening` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_05_02_140432_create_provinces_tables', 1),
(4, '2017_05_02_140444_create_regencies_tables', 1),
(5, '2017_05_02_142019_create_districts_tables', 1),
(6, '2017_05_02_143454_create_villages_tables', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2022_07_01_013937_create_posts_table', 1),
(10, '2022_07_05_105342_add_is_admin_to_users_table', 1),
(11, '2022_07_13_015019_create_jenis_table', 1),
(12, '2022_07_18_063549_create_news_table', 1),
(13, '2022_07_18_075151_create_jenberitas_table', 1),
(14, '2022_07_26_013743_add_is_pemilik_to_users_table', 1),
(15, '2022_08_03_121335_keranjangs', 1),
(16, '2022_09_05_115419_kost', 1),
(17, '2022_09_17_051155_kamars', 1),
(18, '2022_09_20_075528_pembayarans', 1),
(19, '2022_09_26_144418_infos', 1),
(20, '2022_09_27_010001_add_is_superadmin_to_users_tabel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `jenberita_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayarans`
--

CREATE TABLE `pembayarans` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayarans`
--

INSERT INTO `pembayarans` (`id`, `user_id`, `slug`, `post_id`, `status`, `image`, `created_at`, `updated_at`) VALUES
(11, '11', '4 + 11', '4', 'Pembayaran Berhasil', NULL, '2025-01-16 09:44:17', '2025-01-16 22:55:22'),
(12, '12', '5 + 12', '5', 'Pembayaran Berhasil', 'post-images/6sMlbC5n19sglP0hxfFuYWDlYAlcgRqBubdT0Iee.jpg', '2025-01-16 09:49:27', '2025-01-16 23:06:04'),
(13, '13', '6 + 13', '6', 'Sedang diproses', NULL, '2025-01-16 09:53:41', '2025-01-16 09:53:41'),
(14, '14', '7 + 14', '7', 'Sedang diproses', NULL, '2025-01-16 09:56:10', '2025-01-16 09:56:10'),
(15, '15', '8 + 15', '8', 'Sedang diproses', NULL, '2025-01-16 09:57:42', '2025-01-16 09:57:42'),
(16, '16', '9 + 16', '9', 'Sedang diproses', NULL, '2025-01-16 10:00:32', '2025-01-16 10:00:32'),
(17, '17', '10 + 17', '10', 'Sedang diproses', NULL, '2025-01-16 10:03:50', '2025-01-16 10:03:50'),
(18, '18', '11 + 18', '11', 'Sedang diproses', NULL, '2025-01-16 10:05:11', '2025-01-16 10:05:11'),
(19, '19', '11 + 19', '11', 'Sedang diproses', NULL, '2025-01-16 22:57:05', '2025-01-16 22:57:05'),
(21, '13', '2 + 13', '2', 'Pembayaran Berhasil', NULL, '2025-01-29 19:02:40', '2025-01-29 19:03:23'),
(22, '13', '11 + 13', '11', 'Pembayaran Berhasil', NULL, '2025-01-29 19:13:54', '2025-01-29 19:14:46'),
(23, '1', '11 + 7', '11', 'Pembayaran Berhasil', NULL, '2025-06-27 08:43:22', '2025-06-30 01:21:21'),
(24, '1', '24 + 13', '24', 'Pembayaran Berhasil', NULL, '2025-06-30 01:20:41', '2025-06-30 01:21:43'),
(25, '1', '23 + 13', '23', 'Pembayaran Berhasil', NULL, '2025-06-30 01:25:51', '2025-06-30 01:26:56'),
(26, '7', '20 + 7', '20', 'Sedang diproses', NULL, '2025-06-30 01:38:14', '2025-06-30 01:38:14'),
(27, '13', '28 + 13', '28', 'Pembayaran Berhasil - Cash', NULL, '2025-07-07 22:47:37', '2025-07-07 22:50:22'),
(28, '7', '15 + 7', '15', 'Sedang diproses', NULL, '2025-07-07 22:51:27', '2025-07-07 22:51:27'),
(29, '10', '28 + 10', '28', 'Pembayaran Berhasil - Cash', NULL, '2025-07-07 22:52:31', '2025-07-07 22:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `jenis_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kamar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maps` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipekamar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `listrik` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `air` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kamarmandi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ac` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kasur` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lemari` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meja` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `wifi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `jemur` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tamu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dapur` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `akses` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `maks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `teman` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hewan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bayar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rekening` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regency_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `village_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `jenis_id`, `user_id`, `name`, `slug`, `image`, `image2`, `image3`, `image4`, `image5`, `alamat`, `excerpt`, `body`, `price`, `kamar`, `no_hp`, `maps`, `tipekamar`, `listrik`, `air`, `kamarmandi`, `ac`, `kasur`, `lemari`, `meja`, `wifi`, `jemur`, `tamu`, `dapur`, `akses`, `maks`, `teman`, `hewan`, `bayar`, `rekening`, `province_id`, `regency_id`, `village_id`, `district_id`, `published_at`, `created_at`, `updated_at`) VALUES
(2, 1, 7, 'Kios Samarinda 1 Sungai Kunjang', 'muini-2', NULL, NULL, NULL, NULL, NULL, 'Terminal Sungai Kunjang Samarinda', 'Sudah Membayar', '<div>Sudah Membayar</div>', '140.000', 'Ada Kamar Kosong', '0', '-', '20M', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Boleh membawa', '-', '0011203706', '1', '1', '1', '1', NULL, '2024-12-29 10:06:11', '2025-06-27 08:33:24'),
(3, 1, 7, 'Kios Samarinda 2 Sungai Kunjang', 'kios-samarinda-1', NULL, NULL, NULL, NULL, NULL, 'Terminal Sungai Kunjang Samarinda', 'Sudah Membayar', '<div>Sudah Membayar<br><br></div>', '147.000', 'Ada Kamar Kosong', '0', '-', '3,50M', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Boleh membawa', '-', '0011203706', '1', '1', '1', '1', NULL, '2024-12-29 10:10:43', '2025-06-27 08:38:43'),
(4, 1, 7, 'Kios Samarinda 3 Sungai Kunjang', 'kios-samarinda-2', NULL, NULL, NULL, NULL, NULL, 'Terminal Sungai Kunjang Samarinda', 'Sudah Membayar', '<div>Sudah Membayar</div>', '287.000', 'Ada Kamar Kosong', '0', '-', '5M', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Boleh membawa', '-', '0011203706', '1', '1', '1', '1', NULL, '2024-12-29 10:12:36', '2025-06-27 08:39:08'),
(5, 1, 7, 'Kios Samarinda 4 Sungai Kunjang', 'kios-samarinda-3', NULL, NULL, NULL, NULL, NULL, 'Terminal Sungai Kunjang Samarinda', 'Sudah Membayar', '<div>Sudah Membayar</div>', '323.400', 'Ada Kamar Kosong', '0', '-', '5M', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Boleh membawa', '-', '0011203706', '1', '1', '1', '1', NULL, '2024-12-29 18:52:44', '2025-06-27 08:39:23'),
(6, 1, 7, 'Kios Samarinda 5 Sungai Kunjang', 'kios-samarinda-4', NULL, NULL, NULL, NULL, NULL, 'Terminal Sungai Kunjang Samarinda', 'Sudah Membayar', '<div>Sudah Membayar</div>', '140.000', 'Ada Kamar Kosong', '0', '-', '5M', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Boleh membawa', '-', '0011203706', '1', '1', '1', '1', NULL, '2024-12-29 18:57:26', '2025-06-27 08:39:39'),
(7, 1, 7, 'Kios Samarinda 6 Sungai Kunjang', 'kios-samarinda-4-2', NULL, NULL, NULL, NULL, NULL, 'Terminal Sungai Kunjang Samarinda', 'Sudah Membayar', '<div>Sudah Membayar</div>', '140.000', 'Ada Kamar Kosong', '0', '-', '5M', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Boleh membawa', '-', '0011203706', '1', '1', '1', '1', NULL, '2024-12-29 19:01:03', '2025-06-27 08:39:55'),
(8, 1, 7, 'Kios Samarinda 7 Sungai Kunjang', 'kios-samarinda-5', NULL, NULL, NULL, NULL, NULL, 'Terminal Sungai Kunjang Samarinda', 'Sudah Membayar', '<div>Sudah Membayar</div>', '147.000', 'Ada Kamar Kosong', '0', '-', '6M', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Boleh membawa', '-', '0011203706', '1', '1', '1', '1', NULL, '2024-12-29 19:04:49', '2025-06-27 08:40:08'),
(9, 1, 7, 'Kios Samarinda 8 Sungai Kunjang', 'kios-samarinda-4-3', NULL, NULL, NULL, NULL, NULL, 'Terminal Sungai Kunjang Samarinda', 'Sudah Membayar', '<div>Sudah Membayar</div>', '73.500', 'Ada Kamar Kosong', '0', '-', '3M', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Boleh membawa', '-', '0011203706', '1', '1', '1', '1', NULL, '2024-12-29 19:08:21', '2025-06-27 08:40:19'),
(10, 1, 7, 'Kios Samarinda 9 Sungai Kunjang', 'kios-samarinda-4-4', NULL, NULL, NULL, NULL, NULL, 'Terminal Sungai Kunjang Samarinda', 'Sudah Membayar', '<div>Sudah Membayar</div>', '175.000', 'Ada Kamar Kosong', '0', '-', '5M', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Boleh membawa', '-', '0011203706', '1', '1', '1', '1', NULL, '2024-12-29 19:11:01', '2025-06-27 08:40:31'),
(11, 1, 7, 'Kios Samarinda 10 Sungai Kunjang', 'kios-samarinda-4-5', NULL, NULL, NULL, NULL, NULL, 'Terminal Sungai Kunjang Samarinda', 'Sudah Membayar', '<div>Sudah Membayar</div>', '73.500', 'Ada Kamar Kosong', '0', '-', '5M', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Boleh membawa', '-', '0011203706', '1', '1', '1', '1', NULL, '2024-12-29 19:15:13', '2025-06-27 08:40:43'),
(15, 1, 7, 'Kios Samarinda 1 Terminal Lempake', 'kios-samarinda-1-terminal-lempake', NULL, NULL, NULL, NULL, NULL, 'Jl. Kebon Agung, Gn. Lingai, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75243', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '0', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Boleh membawa', '-', '-', '1', '1', '4', '1', NULL, '2025-06-27 08:55:58', '2025-07-07 22:26:17'),
(16, 1, 7, 'Kios Samarinda 2 Terminal Lempake', 'kios-samarinda-2-terminal-lempake', NULL, NULL, NULL, NULL, NULL, 'Jl. Kebon Agung, Gn. Lingai, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75243', '-', '<div>-</div>', '147.000', 'Ada Kamar Kosong', '0', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '1', '1', '1', NULL, '2025-06-30 00:54:57', '2025-06-30 00:54:57'),
(17, 1, 7, 'Kios Samarinda 3 Terminal Lempake', 'kios-samarinda-3-terminal-lempake', NULL, NULL, NULL, NULL, NULL, 'Jl. Kebon Agung, Gn. Lingai, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75243', '-', '<div>-</div>', '73.500', 'Ada Kamar Kosong', '0', '-', '30x30', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '1', '1', '1', NULL, '2025-06-30 00:56:17', '2025-06-30 00:56:17'),
(18, 1, 7, 'Kios Samarinda 4 Terminal Lempake', 'kios-samarinda-4-terminal-lempake', NULL, NULL, NULL, NULL, NULL, 'Jl. Kebon Agung, Gn. Lingai, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75243', '-', '<div>-</div>', '147.000', 'Ada Kamar Kosong', '-', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '1', '1', '1', NULL, '2025-06-30 00:57:35', '2025-06-30 00:57:35'),
(19, 1, 7, 'Kios Samarinda 5 Terminal Lempake', 'kios-samarinda-5-terminal-lempake', NULL, NULL, NULL, NULL, NULL, 'Jl. Kebon Agung, Gn. Lingai, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75243', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '-', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '1', '1', '1', NULL, '2025-06-30 00:58:33', '2025-06-30 00:58:33'),
(20, 1, 7, 'Kios Samarinda 1 Terminal Samarinda Sebrang', 'kios-samarinda-1-terminal-samarinda-sebrang', NULL, NULL, NULL, NULL, NULL, 'Jl. Bung Tomo, Sungai Keledang, Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur 75132', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '0', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Boleh membawa', '-', '-', '1', '1', '2', '1', NULL, '2025-06-30 01:09:21', '2025-07-07 12:37:50'),
(21, 1, 7, 'Kios Samarinda 2 Terminal Samarinda Sebrang', 'kios-samarinda-2-terminal-samarinda-sebrang', NULL, NULL, NULL, NULL, NULL, 'Jl. Bung Tomo, Sungai Keledang, Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur 75132', '-', '<div>-</div>', '147.000', 'Ada Kamar Kosong', '0', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '1', '1', '1', NULL, '2025-06-30 01:10:53', '2025-06-30 01:10:53'),
(22, 1, 7, 'Kios Samarinda 3 Terminal Samarinda Sebrang', 'kios-samarinda-3-terminal-samarinda-sebrang', NULL, NULL, NULL, NULL, NULL, 'Jl. Bung Tomo, Sungai Keledang, Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur 75132', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '0', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '1', '1', '1', NULL, '2025-06-30 01:12:13', '2025-06-30 01:12:13'),
(23, 1, 1, 'Kios Samarinda 4 Terminal Samarinda Sebrang', 'kios-samarinda-4-terminal-samarinda-sebrang', NULL, NULL, NULL, NULL, NULL, 'Jl. Bung Tomo, Sungai Keledang, Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur 75132', '-', '<div>-</div>', '140.000', 'Kamar Penuh', '0', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Boleh membawa', '-', '-', '1', '1', '1', '1', NULL, '2025-06-30 01:13:44', '2025-06-30 01:28:09'),
(24, 1, 7, 'Kios Samarinda 5 Terminal Samarinda Sebrang', 'kios-samarinda-5-terminal-samarinda-sebrang', NULL, NULL, NULL, NULL, NULL, 'Jl. Bung Tomo, Sungai Keledang, Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur 75132', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '0', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '1', '1', '1', NULL, '2025-06-30 01:15:02', '2025-06-30 01:15:02'),
(25, 1, 7, 'Kios 1 Terminal Balikpapan', 'kios-1-terminal-balikpapan', NULL, NULL, NULL, NULL, NULL, 'Jl. Bougenvile No.7, Batu Ampar, Kec. Balikpapan Utara, Kota Balikpapan, Kalimantan Timur 76136', '-', '<div>-</div>', '175.000', 'Ada Kamar Kosong', '-', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '2', '5', '5', NULL, '2025-07-07 22:36:32', '2025-07-07 22:36:32'),
(26, 1, 7, 'Kios 1 Terminal Berau', 'kios-1-terminal-berau', NULL, NULL, NULL, NULL, NULL, 'Jl. Marsma Iswahyudi, Rinding, Kec. Tlk. Bayur, Kabupaten Berau, Kalimantan Timur 77352', '-', '<h1>-</h1>', '147.000', 'Ada Kamar Kosong', '0', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '4', '7', '7', NULL, '2025-07-07 22:38:41', '2025-07-07 22:38:41'),
(27, 1, 7, 'Kios 1 Terminal Bontang', 'kios-1-terminal-bontang', NULL, NULL, NULL, NULL, NULL, 'Kanaan, Kec. Bontang Bar., Kota Bontang, Kalimantan Timur 75321', '-', '<div>-</div>', '73.500', 'Ada Kamar Kosong', '-', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '5', '8', '8', NULL, '2025-07-07 22:40:32', '2025-07-07 22:40:32'),
(28, 1, 7, 'Kios Terminal 1 Paser', 'kios-terminal-1-paser', NULL, NULL, NULL, NULL, NULL, 'Kanaan, Kec. Bontang Bar., Kota Bontang, Kalimantan Timur 75321', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '-', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '6', '9', '9', NULL, '2025-07-07 22:42:02', '2025-07-07 22:42:02'),
(29, 1, 7, 'Kios Terminal 2 Paser', 'kios-terminal-2-paser', NULL, NULL, NULL, NULL, NULL, 'Kanaan, Kec. Bontang Bar., Kota Bontang, Kalimantan Timur 75321', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '085845672994', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Boleh membawa', '-', '-', '1', '6', '9', '9', NULL, '2025-08-12 08:02:47', '2025-08-12 08:02:47'),
(30, 1, 7, 'Kios Terminal 3 Paser', 'kios-terminal-3-paser', NULL, NULL, NULL, NULL, NULL, 'Kanaan, Kec. Bontang Bar., Kota Bontang, Kalimantan Timur 75321', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '085845672994', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '6', '9', '9', NULL, '2025-08-12 08:03:29', '2025-08-12 08:03:29'),
(31, 1, 7, 'Kios Terminal 4 Paser', 'kios-terminal-4-paser', NULL, NULL, NULL, NULL, NULL, 'Kanaan, Kec. Bontang Bar., Kota Bontang, Kalimantan Timur 75321', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '085845672994', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '6', '9', '9', NULL, '2025-08-12 08:06:01', '2025-08-12 08:06:01'),
(32, 1, 7, 'Kios Terminal 5 Paser', 'kios-terminal-5-paser', NULL, NULL, NULL, NULL, NULL, 'Kanaan, Kec. Bontang Bar., Kota Bontang, Kalimantan Timur 75321', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '085845672994', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', '1', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '6', '9', '9', NULL, '2025-08-12 08:07:05', '2025-08-12 08:07:05'),
(33, 1, 7, 'Kios 2 Terminal Balikpapan', 'kios-2-terminal-balikpapan', NULL, NULL, NULL, NULL, NULL, 'Jl. Bougenvile No.7, Batu Ampar, Kec. Balikpapan Utara, Kota Balikpapan, Kalimantan Timur 76136', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '085845672994', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '2', '5', '5', NULL, '2025-08-12 08:11:05', '2025-08-12 08:11:05'),
(34, 1, 7, 'Kios 3 Terminal Balikpapan', 'kios-3-terminal-balikpapan', NULL, NULL, NULL, NULL, NULL, 'Jl. Bougenvile No.7, Batu Ampar, Kec. Balikpapan Utara, Kota Balikpapan, Kalimantan Timur 76136', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '085845672994', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '2', '5', '5', NULL, '2025-08-12 08:19:09', '2025-08-12 08:19:09'),
(35, 1, 7, 'Kios 4 Terminal Balikpapan', 'kios-4-terminal-balikpapan', NULL, NULL, NULL, NULL, NULL, 'Jl. Bougenvile No.7, Batu Ampar, Kec. Balikpapan Utara, Kota Balikpapan, Kalimantan Timur 76136', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '085845672994', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '2', '5', '5', NULL, '2025-08-12 08:19:51', '2025-08-12 08:19:51'),
(36, 1, 7, 'Kios 5 Terminal Balikpapan', 'kios-5-terminal-balikpapan', NULL, NULL, NULL, NULL, NULL, 'Jl. Bougenvile No.7, Batu Ampar, Kec. Balikpapan Utara, Kota Balikpapan, Kalimantan Timur 76136', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '085845672994', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '2', '5', '5', NULL, '2025-08-12 08:20:54', '2025-08-12 08:20:54'),
(37, 1, 7, 'Kios 2 Terminal Berau', 'kios-2-terminal-berau', NULL, NULL, NULL, NULL, NULL, 'Jl. Marsma Iswahyudi, Rinding, Kec. Tlk. Bayur, Kabupaten Berau, Kalimantan Timur 77352', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '085845672994', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '4', '7', '7', NULL, '2025-08-12 08:24:06', '2025-08-12 08:24:06'),
(38, 1, 7, 'Kios 3 Terminal Berau', 'kios-3-terminal-berau', NULL, NULL, NULL, NULL, NULL, 'Jl. Marsma Iswahyudi, Rinding, Kec. Tlk. Bayur, Kabupaten Berau, Kalimantan Timur 77352', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '085845672994', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Boleh membawa', '-', '-', '1', '4', '7', '7', NULL, '2025-08-12 08:25:23', '2025-08-12 08:25:23'),
(39, 1, 7, 'Kios 4 Terminal Berau', 'kios-4-terminal-berau', NULL, NULL, NULL, NULL, NULL, 'Jl. Marsma Iswahyudi, Rinding, Kec. Tlk. Bayur, Kabupaten Berau, Kalimantan Timur 77352', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '085845672994', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '4', '7', '7', NULL, '2025-08-12 08:25:59', '2025-08-12 08:25:59'),
(40, 1, 7, 'Kios 5 Terminal Berau', 'kios-5-terminal-berau', NULL, NULL, NULL, NULL, NULL, 'Jl. Marsma Iswahyudi, Rinding, Kec. Tlk. Bayur, Kabupaten Berau, Kalimantan Timur 77352', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '085845672994', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '4', '7', '7', NULL, '2025-08-12 08:26:39', '2025-08-12 08:26:39'),
(41, 1, 7, 'Kios 2 Terminal Bontang', 'kios-2-terminal-bontang', NULL, NULL, NULL, NULL, NULL, 'Kanaan, Kec. Bontang Bar., Kota Bontang, Kalimantan Timur 75321', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '085845672994', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '5', '8', '8', NULL, '2025-08-12 08:27:55', '2025-08-12 08:27:55'),
(42, 1, 7, 'Kios 3 Terminal Bontang', 'kios-3-terminal-bontang', NULL, NULL, NULL, NULL, NULL, 'Kanaan, Kec. Bontang Bar., Kota Bontang, Kalimantan Timur 75321', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '085845672994', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '5', '8', '8', NULL, '2025-08-12 08:28:39', '2025-08-12 08:28:39'),
(43, 1, 7, 'Kios 4 Terminal Bontang', 'kios-4-terminal-bontang', NULL, NULL, NULL, NULL, NULL, 'Kanaan, Kec. Bontang Bar., Kota Bontang, Kalimantan Timur 75321', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '085845672994', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '5', '8', '8', NULL, '2025-08-12 08:29:18', '2025-08-12 08:29:18'),
(44, 1, 7, 'Kios 5 Terminal Bontang', 'kios-5-terminal-bontang', NULL, NULL, NULL, NULL, NULL, 'Kanaan, Kec. Bontang Bar., Kota Bontang, Kalimantan Timur 75321', '-', '<div>-</div>', '140.000', 'Ada Kamar Kosong', '085845672994', '-', '40x40', 'Termasuk', 'Termasuk', 'Kamar Mandi Dalam', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Terdapat', 'Akses 24 jam', 'bebas', 'Lawan Jenis dilarang ke kamar', 'Dilarang Membawa', '-', '-', '1', '5', '8', '8', NULL, '2025-08-12 08:30:38', '2025-08-12 08:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
('1', 'Kalimantan Timur');

-- --------------------------------------------------------

--
-- Table structure for table `regencies`
--

CREATE TABLE `regencies` (
  `id` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regencies`
--

INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES
('1', '1', 'Samarinda'),
('2', '1', 'Balikpapan'),
('3', '1', 'Tenggarong'),
('4', '1', 'Berau'),
('5', '1', 'Bontang'),
('6', '1', 'Paser');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_pemilik` int NOT NULL DEFAULT '0',
  `is_superadmin` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`, `is_pemilik`, `is_superadmin`) VALUES
(1, 'Paguh', 'paguh', 'paguh2015@gmail.com', NULL, '$2a$12$8xDBuqVYai9CXiz9rIDNVegZbZxLfSFXIb4O1Xs.axl31VhLcOck2', NULL, '2024-12-29 05:18:55', '2024-12-29 05:18:55', 1, 0, 1),
(2, 'admin', 'admin', 'admin@gmail.com', NULL, '$2a$12$8xDBuqVYai9CXiz9rIDNVegZbZxLfSFXIb4O1Xs.axl31VhLcOck2', NULL, '2024-12-29 05:18:56', '2024-12-29 05:18:56', 1, 0, 0),
(3, 'superadmin', 'superadmin', 'superadmin@gmail.com', NULL, '$2a$12$8xDBuqVYai9CXiz9rIDNVegZbZxLfSFXIb4O1Xs.axl31VhLcOck2', NULL, '2024-12-29 05:18:56', '2024-12-29 05:18:56', 0, 0, 1),
(4, 'Rosalia Erdman', 'prudence.bosco', 'marion43@example.net', '2024-12-29 05:18:56', '$2a$12$8xDBuqVYai9CXiz9rIDNVegZbZxLfSFXIb4O1Xs.axl31VhLcOck2', 'LNxO2RO0gCYcLQaFVHy5UcGhmT1Vlqs2qGoNQJju58CRCvoW73U4UuVcjGSj', '2024-12-29 05:18:56', '2024-12-29 05:18:56', 0, 0, 0),
(5, 'Deondre Gulgowski', 'kasandra.casper', 'shoppe@example.net', '2024-12-29 05:18:56', '$2a$12$8xDBuqVYai9CXiz9rIDNVegZbZxLfSFXIb4O1Xs.axl31VhLcOck2', '3eKP3N5qoe', '2024-12-29 05:18:56', '2024-12-29 05:18:56', 0, 0, 0),
(6, 'pemilik', 'pemilik', 'pemilik@gmail.com', NULL, '$2a$12$8xDBuqVYai9CXiz9rIDNVegZbZxLfSFXIb4O1Xs.axl31VhLcOck2', NULL, '2024-12-29 05:59:48', '2024-12-29 05:59:48', 0, 1, 0),
(7, 'dishubprov', 'dishubprov', 'disubprov@gmail.com', NULL, '$2y$10$vaDq890fIP9YYZbfoRYkXu51UU0L2KxZkKL/C0A57sPepZXIfkq6q', NULL, '2024-12-29 09:02:51', '2024-12-29 09:02:51', 1, 1, 1),
(8, 'pencari', 'pencari', 'pencari@gmail.com', NULL, '$2a$12$8xDBuqVYai9CXiz9rIDNVegZbZxLfSFXIb4O1Xs.axl31VhLcOck2', NULL, '2025-01-16 09:03:55', '2025-01-16 09:03:55', 0, 0, 0),
(9, 'PO Trans Kaltim', 'PO Trans Kaltim', 'potranskaltim@gmail.com', NULL, '$2y$10$sNExEc9cpdIURYfd3wJWKO7nUbhqYut3Q3kknILpgWOTs8m6ZX8n.', NULL, '2025-01-16 09:13:39', '2025-01-16 09:13:39', 0, 0, 0),
(10, 'muini', 'muini', 'muini@gmail.com', NULL, '$2y$10$0lPHIkhBnGHbuGKUOA/q1OZCfGK/FVcYU5djYJnLJr99EeXepLkaO', NULL, '2025-01-16 09:27:25', '2025-01-16 09:27:25', 0, 0, 0),
(11, 'Suryani', 'Suryani', 'suryani@gmail.com', NULL, '$2y$10$/jsbfK9zqlXrYC3JNsPVZekgpwyVxKufaLegIP8bwIGmBYmoWwCC.', NULL, '2025-01-16 09:43:39', '2025-01-16 09:43:39', 0, 0, 0),
(12, 'Jumniati', 'Jumniati', 'jumniati@gmail.com', NULL, '$2y$10$8WGogLIfDUyuu2OoXJelSOVo1inT6yZRo1blKu1Qetcs.eShKK/.i', NULL, '2025-01-16 09:48:45', '2025-01-16 09:48:45', 0, 0, 0),
(13, 'Urip Suparmi', 'Urip Suparmi', 'uripsuparmi@gmail.com', NULL, '$2a$12$8xDBuqVYai9CXiz9rIDNVegZbZxLfSFXIb4O1Xs.axl31VhLcOck2', NULL, '2025-01-16 09:50:25', '2025-01-16 09:50:25', 0, 0, 0),
(14, 'Lukman Bahar', 'Lukman Bahar', 'lukmanbahar@gmail.com', NULL, '$2y$10$AAo72EYvuqNCT1Bk9aZVc.OJMbw6JfWCyUfzRl5LIdy4zI.DTHXtC', NULL, '2025-01-16 09:55:42', '2025-01-16 09:55:42', 0, 0, 0),
(15, 'Rusli', 'Rusli', 'rusli@gmail.com', NULL, '$2y$10$m6A/9BXhcx3VvZHeo6Nr/e0cOhjMneOaqu9Tj0BBygqsqhKgaxF1.', NULL, '2025-01-16 09:57:00', '2025-01-16 09:57:00', 0, 0, 0),
(16, 'Wakim Cristin Lutfi', 'Wakim Cristin Lutfi', 'wakimcristinlutfi@gmail.com', NULL, '$2y$10$eGmVx6sIMdS.Q0/ef9Jdue5SGo3j8qjuL4CNrGMBACkIlovlZ4jWu', NULL, '2025-01-16 10:00:04', '2025-01-16 10:00:04', 0, 0, 0),
(17, 'Saruji', 'Saruji', 'saruji@gmail.com', NULL, '$2y$10$S5RMibtopYIvItz75rNowe12sRfXruCLNYf/QGRHaZ37ez9rf7cp.', NULL, '2025-01-16 10:03:09', '2025-01-16 10:03:09', 0, 0, 0),
(18, 'Ferdy Rahmadhani', 'Ferdy Rahmadhani', 'ferdyrahmadhani@gmail.com', NULL, '$2y$10$veZT/VIkOv6QSfVh2LpSUOpkedrDvV6JTDBu6Rtmbcba9TbrAIcOO', NULL, '2025-01-16 10:04:44', '2025-01-16 10:04:44', 0, 0, 0),
(19, 'ahmad alal', 'ahmad alal', 'ahmadalal@gmail.com', NULL, '$2y$10$HQF.Y446x..ExdAaGfVXAOm8SKUthx.1dmOrvTx5xOAXpv5a26MLy', NULL, '2025-01-16 22:56:23', '2025-01-16 22:56:23', 0, 0, 0),
(20, 'alpian', 'alpian', 'alpin@gmail.com', NULL, '$2y$10$Lx9YdekA/By0s5PGLiiqQOzLrMWNJSVlRrwL32BlVRhWvYK2Piz3W', NULL, '2025-08-12 08:34:08', '2025-08-12 08:34:08', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `villages`
--

CREATE TABLE `villages` (
  `id` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villages`
--

INSERT INTO `villages` (`id`, `district_id`, `name`) VALUES
('1', '1', 'Sungai Pinang Luar'),
('2', '2', 'Sungai Keledang'),
('3', '4', 'Karang Asam Ulu'),
('4', '3', 'Gunung Lingai'),
('5', '5', 'Batu Ampar'),
('6', '6', 'Timbau'),
('7', '7', 'Rinding'),
('8', '8', 'Kanaan'),
('9', '9', 'Kuaro');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD KEY `districts_regency_id_foreign` (`regency_id`),
  ADD KEY `districts_id_index` (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `infos_slug_unique` (`slug`);

--
-- Indexes for table `jenberitas`
--
ALTER TABLE `jenberitas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jenberitas_name_unique` (`name`),
  ADD UNIQUE KEY `jenberitas_slug_unique` (`slug`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jenis_name_unique` (`name`),
  ADD UNIQUE KEY `jenis_slug_unique` (`slug`);

--
-- Indexes for table `kamars`
--
ALTER TABLE `kamars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kamars_slug_unique` (`slug`);

--
-- Indexes for table `keranjangs`
--
ALTER TABLE `keranjangs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keranjangs_slug_unique` (`slug`);

--
-- Indexes for table `kosts`
--
ALTER TABLE `kosts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kosts_slug_unique` (`slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pembayarans_slug_unique` (`slug`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD KEY `provinces_id_index` (`id`);

--
-- Indexes for table `regencies`
--
ALTER TABLE `regencies`
  ADD KEY `regencies_province_id_foreign` (`province_id`),
  ADD KEY `regencies_id_index` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `villages`
--
ALTER TABLE `villages`
  ADD KEY `villages_district_id_foreign` (`district_id`),
  ADD KEY `villages_id_index` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenberitas`
--
ALTER TABLE `jenberitas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kamars`
--
ALTER TABLE `kamars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keranjangs`
--
ALTER TABLE `keranjangs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kosts`
--
ALTER TABLE `kosts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembayarans`
--
ALTER TABLE `pembayarans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_regency_id_foreign` FOREIGN KEY (`regency_id`) REFERENCES `regencies` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `regencies`
--
ALTER TABLE `regencies`
  ADD CONSTRAINT `regencies_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `villages`
--
ALTER TABLE `villages`
  ADD CONSTRAINT `villages_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
