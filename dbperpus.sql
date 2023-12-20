-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Des 2023 pada 09.34
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbperpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(5) NOT NULL,
  `loker_buku` varchar(25) NOT NULL,
  `no_rak` int(5) NOT NULL,
  `no_laci` int(5) NOT NULL,
  `no_boks` int(5) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `nama_pengarang` varchar(100) NOT NULL,
  `tahun_terbit` date NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `status` varchar(25) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `loker_buku`, `no_rak`, `no_laci`, `no_boks`, `judul_buku`, `nama_pengarang`, `tahun_terbit`, `penerima`, `penerbit`, `status`, `keterangan`) VALUES
(20, 'Buku Anak Anak', 22, 23, 24, 'Mari Belajar Gembira', 'Swedio', '2023-12-31', 'yanto', 'CV. Petir', 'Ada', '10'),
(22, 'Buku Anak Anak', 89, 898, 989, 'Majalah Genie', 'Mahkamah', '2019-12-31', 'Permata', 'CV. Badai', 'Ada', '12'),
(24, 'Buku Anak Anak', 23, 221, 21, 'Masakan Tradisional Indonesia', 'Chef Juna', '2030-12-31', 'Paud', 'UD. Skyscraper', 'Ada', '20'),
(25, 'Buku Anak Anak', 2, 2, 12, 'hidup sehat', 'muhammad iqbal', '2030-12-31', 'Unisnu', 'indie', 'Ada', '12345'),
(26, 'Buku Anak Anak', 3, 3, 12, 'mari belajar', 'rika hardina', '2030-12-31', 'Unisnu', 'Anlitera', 'Ada', '12345'),
(27, 'Buku Anak Anak', 3, 3, 3, 'Sopan santun', 'Dwi hartono', '2030-12-31', 'Unisnu', 'Andi publisher', 'Ada', '12345'),
(28, 'Buku Anak Anak', 4, 4, 123, 'Bermain dengan alat tradisional', 'Aan sutejo', '2030-12-31', 'Unisnu', 'Gramedia', 'Ada', '12345'),
(29, 'Buku Anak Anak', 5, 5, 5, 'Belajar membaca', 'Mizan', '2030-12-31', 'Unisnu', 'Elexmedia', 'Ada', '12345'),
(30, 'Buku Anak Anak', 6, 6, 6, 'Belajar berhitung', 'Tri Azhari', '2030-12-31', 'Unisnu', 'Agro media', 'Ada', '12345'),
(31, 'Buku Anak Anak', 7, 7, 7, 'Cara mudah membaca tanpa mengeja', 'irma yani', '2030-12-31', 'Unisnu', 'Gramdia', 'Ada', '12345'),
(32, 'Buku Anak Anak', 8, 8, 8, 'belajar menebalkan', 'tri hawanda', '2030-12-31', 'Paud', 'Andalas', 'Ada', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `judul_buku` varchar(50) NOT NULL,
  `peminjam` varchar(50) NOT NULL,
  `tgl_pinjam` varchar(25) NOT NULL,
  `tgl_kembali` varchar(25) NOT NULL,
  `lama_pinjam` int(5) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`judul_buku`, `peminjam`, `tgl_pinjam`, `tgl_kembali`, `lama_pinjam`, `keterangan`, `id`) VALUES
('Mari Belajar Gembira', 'dewer', '2023-12-06', '2023-12-28', 22, 'awdad', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(25) NOT NULL,
  `paswd` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `paswd`, `email`, `nama`, `level`, `ket`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'ilham@gmail.com', 'Muhammad ilham rosadi', 1, 'Staff Perpustakaan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
