-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 10:03 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helpthepoor`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminaccount`
--

CREATE TABLE `adminaccount` (
  `id` int(3) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminaccount`
--

INSERT INTO `adminaccount` (`id`, `username`, `password`) VALUES
(1, 'helpthepoor@admin.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary`
--

CREATE TABLE `beneficiary` (
  `id` int(5) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `help_needed` varchar(500) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `tel_number` int(15) NOT NULL,
  `help_type` varchar(50) NOT NULL,
  `add_help` varchar(500) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beneficiary`
--

INSERT INTO `beneficiary` (`id`, `email`, `name`, `help_needed`, `lat`, `lng`, `tel_number`, `help_type`, `add_help`, `status`, `timestamp`) VALUES
(38, 'dannyrachevaski@gmail.com', 'Mat Sabu', 'Saya perlukan barangan bayi untuk bayi saya yang baru lahir, kalau boleh bagi pampers dan susu untuk anak saya', 1.4509843323961786, 110.39450454685722, 98827392, 'Makanan-Asas', 'Saya tinggal di Unicentral', 'Telah Dibantu', '2022-06-10 09:53:55'),
(39, 'mikhailcrimsonflag@gmail.com', 'Hamba Allah', 'Saya mahu duit kerana saysa mahu alakan duit', 1.4700411352231595, 110.42477917664657, 121233312, 'Kewangan', NULL, 'Telah Dibantu', '2022-06-10 11:57:20'),
(41, 'mikhailcrimsonflag@gmail.com', 'Hamba Allah', 'Saya mahu makanan atau minuman untuk menampung hidup saya kerana saya baru dibuang kerja', 1.4650002360538201, 110.42762660967128, 129323324, 'Makanan-Asas', NULL, 'Telah Dibantu', '2022-06-10 12:08:46'),
(43, 'mikhailcrimsonflag@gmail.com', 'Mat Sabu', 'Saya mahukan barangan sekolah unutk anak saya', 1.4628594589476467, 110.33032035775251, 56654532, 'Barangan-Sekolah', 'Saya tinggal dekat Hospital Sentosa', 'Mahu Bantuan', '2022-06-12 16:53:45'),
(46, 'muhdirfandaniel1@gmail.com', 'Mat Sabaq', 'Saya mahu barangan bayi', 1.463301343671093, 110.4296650885226, 143323243, 'Barangan-Sekolah', 'Saya tinggal belakang FEB', 'Telah Dibantu', '2022-06-13 07:19:21'),
(47, 'dannyrachevaski@gmail.com', 'Hamid', 'Saya mahukan makanan ruji macam beras', 1.4695113049981186, 110.43030452721725, 121233312, 'Makanan-Asas', 'Saya tinggal sebelah kolej sakura', 'Sedang Dibantu', '2022-06-16 14:01:18');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(10) NOT NULL,
  `donationid` int(10) NOT NULL,
  `donationname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `benefemail` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `tel_number` int(20) NOT NULL,
  `add_info` varchar(100) DEFAULT NULL,
  `picture` longblob DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `help_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `donationid`, `donationname`, `email`, `benefemail`, `name`, `tel_number`, `add_info`, `picture`, `timestamp`, `help_type`, `status`) VALUES
(28, 38, 'Mat Sabu', 'muhdirfandaniel1@gmail.com', 'dannyrachevaski@gmail.com', 'Hamba Allah', 143323434, 'Saya nak derma makanan asas untuk kamu', NULL, '2022-06-10 10:05:23', 'Makanan-Asas', NULL),
(31, 39, 'Hamba Allah', 'dannyrachevaski@gmail.com', 'mikhailcrimsonflag@gmail.com', 'Hamba Allah Yang Lain', 132212324, 'Saya Derma pada dia duit RM1000', NULL, '2022-06-10 12:00:29', 'Kewangan', NULL),
(33, 41, 'Hamba Allah', 'mikhailcrimsonflag@gmail.com', 'mikhailcrimsonflag@gmail.com', 'Hamba Allah', 121233312, 'Saya beri kamu makanan yang asas', NULL, '2022-06-12 16:43:25', 'Makanan-Asas', 'Bantuan Telah Diterima'),
(36, 46, 'Mat Sabaq', 'dannyrachevaski@gmail.com', 'muhdirfandaniel1@gmail.com', 'Hamba Allah', 129323324, 'Saya mahu beri kamu barangan sekolah', NULL, '2022-06-13 13:06:54', 'Barangan-Sekolah', 'Bantuan Telah Diterima'),
(37, 47, 'Hamid', 'mikhailcrimsonflag@gmail.com', 'dannyrachevaski@gmail.com', 'Hamba Allah', 121233312, 'Saya mahu beri kamu beras dan gula', NULL, '2022-06-16 14:17:05', 'Makanan-Asas', 'Menunggu Pengesahan Dari Peminta Bantuan');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(5) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `help_offered` varchar(500) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `tel_number` int(15) NOT NULL,
  `help_type` varchar(50) NOT NULL,
  `add_info` varchar(500) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `email`, `name`, `help_offered`, `lat`, `lng`, `tel_number`, `help_type`, `add_info`, `status`, `timestamp`) VALUES
(13, 'muhdirfandaniel1@gmail.com', 'Hamba Allah', 'Saya mahu tawar makanan asas berupa beras dan minyak', 1.4388688931028988, 110.45511817879743, 132234354, 'Makanan-Asas', 'Saya ada di tepi UITM', 'Tidak Lagi Aktif', '2022-06-10 12:56:20'),
(14, 'muhdirfandaniel1@gmail.com', 'Nurul', 'Saya tawarkan bantuan berupa makanan asas di kedai saya', 1.4505038340854688, 110.44275855965681, 123324345, 'Makanan-Asas', 'Saya ada dekat dekat UITM', 'Tidak Lagi Aktif', '2022-06-11 16:17:16'),
(16, 'muhdirfandaniel1@gmail.com', 'Hamba Allah', 'Saya beri bantuan barangan bayi', 1.468891381943119, 110.43596076939141, 132234533, 'Barangan-Bayi', 'Saya ada di Pusat Islam', 'Aktif', '2022-06-11 16:46:13'),
(17, 'muhdirfandaniel1@gmail.com', 'Mat Lazim', 'Saya menawarkan beras dan minyak kepada sesiapa sahaja', 1.4590498157009475, 110.43291377995048, 132232343, 'Makanan-Asas', 'Saya tinggal di unijaya', 'Aktif', '2022-06-12 17:06:08'),
(20, 'dannyrachevaski@gmail.com', 'Hamba Allah', 'Saya tawarkan bantuan beras dan gula', 1.4696314285696181, 110.4301865100206, 121233312, 'Makanan-Asas', NULL, 'Tidak Lagi Aktif', '2022-06-16 08:39:33'),
(21, 'dannyrachevaski@gmail.com', 'Hamid', 'Saya mahu dermakan basikal sekolah', 1.4651246502608473, 110.42265701267755, 129323324, 'Barangan-Sekolah', NULL, 'Tidak Aktif', '2022-06-16 08:40:24'),
(22, 'dannyrachevaski@gmail.com', 'Hamba Allah', 'Saya tawarkan bantuan buku buku sekolah', 1.4711394062769663, 110.43189239495406, 121233312, 'Makanan-Asas', 'Saya tawarkan buku add math terpakai. Saya ada di kolej allamanda.', 'Aktif', '2022-06-16 13:33:37');

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
-- Table structure for table `issuereport`
--

CREATE TABLE `issuereport` (
  `id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `issuetitle` varchar(100) NOT NULL,
  `issuedescription` varchar(500) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issuereport`
--

INSERT INTO `issuereport` (`id`, `email`, `name`, `issuetitle`, `issuedescription`, `status`) VALUES
(6, 'dannyrachevaski@gmail.com', 'Mat Sakan', 'Saya kena tipu', 'Saya kena tipu pada 20 Februari katanya saya akan terima bantuan tapi sampai petang tak ada lagi dari najib. Ini nombor telefon saya 0123223343', 'Isu Selesai'),
(7, 'mikhailcrimsonflag@gmail.com', 'Juhasa', 'Marker saya hilang', 'Saya telah buat marker tapi marker saya hilang secara tiba tiba. Tolong saya.', 'Isu Selesai'),
(8, 'dannyrachevaski@gmail.com', 'Hamid', 'Marker saya hilang', 'Saya punya marker hilang kenapa', 'Isu Selesai'),
(9, 'dannyrachevaski@gmail.com', 'Hamid', 'Marker saya hilang', 'Marker saya hilang tolong', 'Isu Selesai'),
(10, 'dannyrachevaski@gmail.com', 'Niel', 'Saya dah bagi bantuan tapi masih ada lagi marker', 'Saya dah bagi bantuan tapi marker masih ada lagi', 'Isu Selesai'),
(11, 'muhdirfandaniel1@gmail.com', 'Saya', 'Saya ada masalah dengan website saya', 'Saya mahu ini.', 'Dalam Siasatan'),
(12, 'muhdirfandaniel1@gmail.com', 'Hamba Allah', 'Marker saya hilang', 'h', 'Dalam Siasatan'),
(13, 'dannyrachevaski@gmail.com', 'Mat Lazim', 'Saya mahu buat lagi satu marker', 'Saya nak buat lagi satu marker kerana saya tak terima bantuan lagi, tapi saya sekarang ni memerlukan bantuan duit kerana saya sekarang ni ada di hospital akibat sakit jadi saya memerlukan duit juga tolong saya', 'Dalam Siasatan');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_29_144458_add_google_id_to_users_table', 1),
(6, '2022_05_30_071739_change_username_column_to_users_table', 2);

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
-- Table structure for table `typeofbantuan`
--

CREATE TABLE `typeofbantuan` (
  `bantuanid` int(5) NOT NULL,
  `bantuanname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `typeofbantuan`
--

INSERT INTO `typeofbantuan` (`bantuanid`, `bantuanname`) VALUES
(1, 'Makanan-Asas'),
(2, 'Kewangan'),
(3, 'Barangan-Bayi'),
(4, 'Barangan-Sekolah');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `google_id`) VALUES
(2, NULL, 'muhdirfandaniel1@gmail.com', NULL, '$2y$10$M5QtZK2IjNxuUjk.dzzQUuIu1Ug/6ZHEBkxK6k7z0vhD37AyoviRu', NULL, '2022-05-30 07:47:54', '2022-05-30 07:47:54', '115972167448224897534'),
(3, NULL, 'dannyrachevaski@gmail.com', NULL, '$2y$10$IiJPquuuxItXDGiI3u2rr.FDaL4zYQusEcFR/cZYMvgeGvkPOWZbO', NULL, '2022-05-30 23:05:50', '2022-05-30 23:05:50', '100370637981526722717'),
(4, NULL, 'mikhailcrimsonflag@gmail.com', NULL, '$2y$10$ezyyCevWfsIHRKU0/M4Cy.7zSvEJHzkMFUbb0LElJkN7k1ChhteLe', NULL, '2022-06-02 23:28:42', '2022-06-02 23:28:42', '101042598506838210184');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminaccount`
--
ALTER TABLE `adminaccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary`
--
ALTER TABLE `beneficiary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `issuereport`
--
ALTER TABLE `issuereport`
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
-- Indexes for table `typeofbantuan`
--
ALTER TABLE `typeofbantuan`
  ADD PRIMARY KEY (`bantuanid`);

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
-- AUTO_INCREMENT for table `adminaccount`
--
ALTER TABLE `adminaccount`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beneficiary`
--
ALTER TABLE `beneficiary`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issuereport`
--
ALTER TABLE `issuereport`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `typeofbantuan`
--
ALTER TABLE `typeofbantuan`
  MODIFY `bantuanid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
