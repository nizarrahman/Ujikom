-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Apr 2024 pada 08.59
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom-nizar-pm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `verif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `email`, `nama`, `username`, `password`, `telp`, `verif`) VALUES
('3576014403910003', 'saya@nizardev.xyz', 'Nizar Rahman', 'nizardev', 'bf93e5f003e40c3fba44e512aecd3cdc', '6282218999999', 1),
('3576014403910004', 'rnizar221@gmail.com', 'anjay mabar', 'nizardev2', 'bf93e5f003e40c3fba44e512aecd3cdc', '628221899922', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(5) NOT NULL,
  `tgl_pengaduan` varchar(20) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `judul` varchar(40) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('proses','selesai','ditolak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `judul`, `isi_laporan`, `foto`, `status`) VALUES
(3, '2023-02-25', '1376012310010005', '', 'mamankkkkkkk', '250220234010kantor.jpg', 'selesai'),
(4, '2023-02-27', '1376012310010005', '', 'mamank', '270220231054team-image.jpg', 'selesai'),
(10, '2023-03-10', '1231231231231231', '', 'WOI', '100320230402noImage.png', 'selesai'),
(13, '2023-03-14', '12383828913', '132', '1231', '140320231732login.png', 'selesai'),
(14, '2023-03-14', '12383828913', '123123222', 'mmmm', '140320232706register.png', 'selesai'),
(16, '2023-03-16', '12383828913', '12311111111111111', '2222222222222', '160320232410download.jpg', 'selesai'),
(17, '2023-03-16', '1231231231231231', 'ck', 'cek', '160320233212login.png', 'ditolak'),
(18, '2024-04-24', '3576014403910003', 'asda', 'adsad', '240420244954LOGO PASS.png', 'selesai'),
(19, '2024-04-29', '3576014403910003', 'anjay mabar', 'anjay', '290420241414LOGO PASS.png', 'proses'),
(20, '2024-04-29', '3576014403910003', 'Kebakaran', 'halo ada kebakaran di daerah cianu rt 2 rw 1', '290420245645646271a87820f.jpg', 'selesai'),
(21, '2024-04-30', '3576014403910003', 'anjay mabar', 'halo ada kebakaran di d11aerah cianu rt 2 rw 1', '300420245436646271a87820f.jpg', 'ditolak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(5) NOT NULL,
  `nama_petugas` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp_petugas` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `email`, `username`, `password`, `telp_petugas`, `level`) VALUES
(2, 'M Riski', 'petugas@gmail.com', 'petugas', 'bf93e5f003e40c3fba44e512aecd3cdc', '08123456789', 'petugas'),
(3, 'Nizar Rahman', 'saya@nizardev.xyz', 'admin', 'bf93e5f003e40c3fba44e512aecd3cdc', '8222222222', 'admin'),
(7, 'ferdian', 'anjay@mail.com', 'ferdii', 'bf93e5f003e40c3fba44e512aecd3cdc', '123', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(5) NOT NULL,
  `id_pengaduan` int(5) NOT NULL,
  `tgl_tanggapan` varchar(20) NOT NULL,
  `tanggapan` text NOT NULL,
  `bukti` varchar(255) NOT NULL,
  `id_petugas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `bukti`, `id_petugas`) VALUES
(3, 3, '2023-02-25', 'siap', '', 2),
(4, 4, '2023-03-01', 'siap mank', '', 3),
(5, 8, '2023-03-07', 'siap ditunggu', '', 3),
(12, 13, '2023-03-14', 'ok', '140320231815register.png', 3),
(13, 14, '2023-03-14', 'qSKQSKQks', '140320232733login.png', 3),
(15, 10, '2023-03-15', 'oke', 'noImage.png', 7),
(16, 16, '2023-03-16', '234569', 'noImage.png', 6),
(17, 17, '2023-03-16', 'ssssss', '160320235058140320230526register.png', 3),
(18, 18, '2024-04-24', 'asdad', '240420245044LOGO PASS.png', 3),
(19, 20, '2024-04-29', 'oke akan segera di proses', 'noImage.png', 3),
(20, 21, '2024-04-30', 'mohon maaf ini hoax', 'noImage.png', 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD UNIQUE KEY `isi_laporan` (`isi_laporan`) USING HASH;

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`),
  ADD UNIQUE KEY `id_pengaduan` (`id_pengaduan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
