-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Okt 2024 pada 18.20
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `database_mahasiswa`
--

CREATE TABLE `database_mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `name_mahasiswa` varchar(50) NOT NULL,
  `npm_mahasiswa` varchar(50) NOT NULL,
  `detail _lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `database_mahasiswa`
--

INSERT INTO `database_mahasiswa` (`id_mahasiswa`, `name_mahasiswa`, `npm_mahasiswa`, `detail _lahir`) VALUES
(6, 'Alexius', '21012345', '2014-06-11'),
(7, 'Andi Setiawan', '223344556', '2014-10-24'),
(8, 'Anisa Kurniawati', '334455667', '2014-08-15'),
(9, ' Budi Santoso', '987654321', '2014-08-12'),
(10, 'Bayu Nugraha', '112233446', '2014-07-23'),
(11, ' Bella Anggraini', '223344557', '2014-10-02'),
(12, 'Citra Ayu', '112233445', '2014-10-05'),
(13, 'Clara Wiranti', '334455669', '2014-07-09'),
(14, 'Cakra Yudha', '445566779', '2014-06-10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `database_mahasiswa`
--
ALTER TABLE `database_mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `database_mahasiswa`
--
ALTER TABLE `database_mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
