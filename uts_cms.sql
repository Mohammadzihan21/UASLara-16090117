-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jul 2019 pada 13.31
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_cms`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blogs`
--

INSERT INTO `blogs` (`id`, `judul`, `konten`, `gambar`, `kategori_id`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'aaa', '<p>aa&nbsp;&nbsp;&nbsp;&nbsp;<p><br></p></p>', '/opt/lampp/temp/php5t6Pm2', 2, '2018-05-27 16:20:38', '2018-05-27 20:46:20', 1),
(4, 'babab', '<p>babab&nbsp;&nbsp;&nbsp;&nbsp;<p><br></p></p>', 'uploads/62809.jpg', 2, '2018-05-27 16:36:36', '2019-04-08 07:36:07', 1),
(5, 'Post pertaman', 'Ini Post<b> Pertama</b><br><p><br></p>', 'uploads/46778.jpeg', 2, '2018-05-27 23:41:37', '2018-05-27 23:41:58', 1),
(6, 'Kyrie is Da Best', '<p>Kyrie oh Kyrie</p>', 'uploads/23248.jpg', 1, '2018-06-05 14:32:02', '2018-06-05 14:34:18', 1),
(7, 'cobaa', '<p>asdfghfdsfa</p>', 'uploads/81411.jpeg', 3, '2019-03-22 10:24:25', '2019-05-16 01:18:55', 1),
(8, 'nyoba lagi', '<p>rxddtfcvgybhujioklp;[\'/]</p><p>|</p>', 'uploads/23008.png', 2, '2019-04-08 07:30:58', '2019-07-14 22:30:08', 1),
(9, 'WWCD', '<p>puasaa cok</p>', 'uploads/94023.png', 2, '2019-05-16 01:15:17', '2019-07-14 22:30:29', 0),
(10, 'Nyacak', '<p>sung nyacak</p>', 'uploads/40555.png', 6, '2019-05-16 01:16:51', '2019-05-16 01:16:51', 0),
(11, 'yk digital', '<p>dfghjkl;&nbsp;&nbsp;&nbsp;&nbsp;</p>', 'uploads/61587.png', 1, '2019-05-16 09:29:36', '2019-05-16 09:29:36', 0),
(12, 'pmco', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><br></p>', 'uploads/56804.png', 1, '2019-07-14 22:29:37', '2019-07-14 22:29:37', 0),
(13, 'Mata Kuliah Framework Programming', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><b>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</b></span><br></p>', 'uploads/71582.png', 2, '2019-07-14 22:44:56', '2019-07-14 22:45:32', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `configs`
--

CREATE TABLE `configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pos` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `configs`
--

INSERT INTO `configs` (`id`, `nama_perusahaan`, `deskripsi`, `email`, `telepon`, `alamat`, `kota`, `kode_pos`, `facebook`, `instagram`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'ADIDAS INDONESIA', 'Lorem ipsum <b>dolor sit amet, consectetur adipisicing elit</b>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo', 'support@adidas.id', '+62 423 323', 'Jl. Kapt.Sudibyo No 69', 'Jakarta Pusat', '52451', 'Adidas Indonesia', '@AdidasID', 'images/logo.png', '2018-04-01 08:28:56', '2018-06-05 20:18:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` int(10) UNSIGNED NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `judul`, `kategori_id`, `gambar`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'aaa', 1, 'uploads/gallery/86536.jpg', '2018-05-27 23:08:00', '2019-05-02 00:35:35', 1),
(2, 'Good', 3, 'uploads/gallery/23562.jpg', '2018-06-01 08:24:53', '2019-05-02 00:36:13', 1),
(3, 'Nyacak', 1, 'uploads/gallery/54509.jpg', '2019-05-02 00:36:04', '2019-05-02 00:36:04', 0),
(4, 'yk digital', 2, 'uploads/gallery/91990.png', '2019-05-02 00:36:32', '2019-05-02 00:36:32', 0),
(5, 'PMCO', 1, 'uploads/gallery/62550.png', '2019-07-14 22:33:50', '2019-07-14 22:33:50', 0),
(6, 'Framework Programing', 2, 'uploads/gallery/91885.png', '2019-07-14 22:46:48', '2019-07-14 22:46:48', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategori` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `kategori`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'Event', '2018-04-01 22:32:35', '2018-05-27 21:28:20', 0),
(2, 'Tutorial', '2018-04-03 00:48:55', '2018-04-03 00:48:55', 0),
(3, 'Seminar Nasional', '2018-05-27 21:36:55', '2018-05-27 23:18:31', 1),
(4, 'Sneakers', '2018-06-05 13:19:33', '2018-06-05 13:19:33', 0),
(5, 'News', '2018-06-05 20:17:08', '2018-06-05 20:17:24', 1),
(6, 'Shoes', '2019-05-16 01:16:02', '2019-05-16 01:16:02', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentars`
--

CREATE TABLE `komentars` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `komentars`
--

INSERT INTO `komentars` (`id`, `blog_id`, `nama`, `email`, `pesan`, `status`, `created_at`, `updated_at`) VALUES
(2, 9, 'Mohammad Syifaul Zihan', 'mohammadzihan@gmail.com', 'nuub', 0, '2019-07-09 22:00:59', '2019-07-09 22:00:59'),
(3, 12, 'Mohammad Syifaul Zihan', 'mohammadzihan@gmail.com', '#indopride #gaspoll', 0, '2019-07-14 22:43:44', '2019-07-14 22:46:23'),
(4, 13, 'Mohammad Syifaul Zihan', 'zihan@mail.com', 'Mata Kuliah Framework Programming', 0, '2019-07-15 04:17:54', '2019-07-15 04:17:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logs`
--

CREATE TABLE `logs` (
  `id` int(1) NOT NULL,
  `log` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `logs`
--

INSERT INTO `logs` (`id`, `log`, `created_at`, `updated_at`) VALUES
(1, 'Admin login', '2018-06-05 14:25:40', '2018-06-05 14:25:40'),
(2, 'Admin menambahkan Post Baru yang berjudul Kyrie is Da Best', '2018-06-05 14:32:02', '2018-06-05 14:32:02'),
(3, 'Admin mengedit Post yang memiliki id : 3', '2018-06-05 14:33:36', '2018-06-05 14:33:36'),
(4, 'Admin menghapus Post yang memiliki id : 6', '2018-06-05 14:34:18', '2018-06-05 14:34:18'),
(5, 'Admin menambahkan Post Baru yang berjudul cobaa', '2019-03-22 10:24:25', '2019-03-22 10:24:25'),
(6, 'Admin menambahkan Post Baru yang berjudul nyoba lagi', '2019-04-08 07:30:58', '2019-04-08 07:30:58'),
(7, 'Admin mengedit Post yang memiliki id : 7', '2019-04-08 07:31:12', '2019-04-08 07:31:12'),
(8, 'Admin menghapus Post yang memiliki id : 4', '2019-04-08 07:36:07', '2019-04-08 07:36:07'),
(9, 'Admin mengedit Post yang memiliki id : 7', '2019-04-16 02:41:27', '2019-04-16 02:41:27'),
(10, 'Admin menambahkan Post Baru yang berjudul werr', '2019-05-16 01:15:17', '2019-05-16 01:15:17'),
(11, 'Admin menambahkan Post Baru yang berjudul Nyacak', '2019-05-16 01:16:51', '2019-05-16 01:16:51'),
(12, 'Admin menghapus Post yang memiliki id : 7', '2019-05-16 01:18:55', '2019-05-16 01:18:55'),
(13, 'Admin menambahkan Post Baru yang berjudul yk digital', '2019-05-16 09:29:36', '2019-05-16 09:29:36'),
(14, 'Admin menambahkan Post Baru yang berjudul pmco', '2019-07-14 22:29:38', '2019-07-14 22:29:38'),
(15, 'Admin menghapus Post yang memiliki id : 8', '2019-07-14 22:30:08', '2019-07-14 22:30:08'),
(16, 'Admin mengedit Post yang memiliki id : 9', '2019-07-14 22:30:29', '2019-07-14 22:30:29'),
(17, 'Admin menambahkan Post Baru yang berjudul Framework Programing', '2019-07-14 22:44:56', '2019-07-14 22:44:56'),
(18, 'Admin mengedit Post yang memiliki id : 13', '2019-07-14 22:45:32', '2019-07-14 22:45:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(39, '2014_10_12_000000_create_users_table', 1),
(40, '2014_10_12_100000_create_password_resets_table', 1),
(41, '2018_03_30_091400_create_configs_table', 1),
(42, '2018_03_30_091622_create_galleries_table', 1),
(43, '2018_03_30_091637_create_blogs_table', 1),
(44, '2018_03_30_091653_create_kategoris_table', 1),
(45, '2018_03_30_091713_create_komentars_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@mail.com', '$2y$10$RIW36fOu4ZZ32f3SL7db5OPPXmak0GpR7SH0zTJR569QplUBmMTs6', 'U0RPVDauaqVexjcc6szWdwfGw9iyrpzl2qeLshSQbGOySPV9MsHuWBHgyoAv', '2018-04-03 00:29:10', '2018-04-03 00:29:10'),
(2, 'Zihan', 'zihan@mail.com', '$2y$10$kyS/A84KvSBlk3JH1Swl9eONC/lPlJU.K0bk/TVNo9ORH9WqkD7MW', 'YsIUIuPLSp2psxUWWvzMQlb406NBWerUT5cGF4GNbW8JucIH4iEJ8VMh3M5u', '2019-04-09 02:14:26', '2019-04-09 02:14:26'),
(3, 'coba', 'coba@mail.com', '$2y$10$U2is9tf3zEZSqkKHTOQptOmCw1MeHxi8BZwxGVpI3HmepjdVbiDPy', NULL, '2019-05-15 23:27:22', '2019-05-15 23:27:22');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komentars`
--
ALTER TABLE `komentars`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `komentars`
--
ALTER TABLE `komentars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
