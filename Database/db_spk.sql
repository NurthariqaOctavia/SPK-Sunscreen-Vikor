-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2024 at 08:58 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spk`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama`) VALUES
(11, 'Lastin'),
(12, 'Sujoko/Saturi'),
(13, 'Hasyim'),
(14, 'Suwito'),
(15, 'Intan Ratnasari'),
(16, 'Kanifah'),
(17, 'H. Samsul'),
(18, 'Daroji'),
(19, 'Suparto'),
(20, 'Agus Purnomo');

-- --------------------------------------------------------

--
-- Table structure for table `alternatif_v`
--

CREATE TABLE `alternatif_v` (
  `id_alternatif_v` int(11) NOT NULL,
  `nama_v` varchar(100) NOT NULL,
  `spf` int(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `berat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif_v`
--

INSERT INTO `alternatif_v` (`id_alternatif_v`, `nama_v`, `spf`, `harga`, `berat`) VALUES
(1, 'Azarine Hydrashoothe Sunscreen Gel', 45, 'Rp. 65.000', '50 ml'),
(2, 'Emina Sun Battle', 30, 'Rp. 32.500', '60 ml'),
(3, 'Wardah UV Shield Essential Sunscreen Gel', 35, 'Rp. 30.000', '40 ml'),
(4, 'YOU Sunbrella Ultra Protech', 50, 'Rp. 58.000', '30 ml'),
(5, 'Facetology', 50, 'Rp. 56.000', '100 ml'),
(6, 'Madama Gie Protect Me Lets Glow Tinted Sunscreen', 50, 'Rp. 40.000', '30 ml');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hasil_v`
--

CREATE TABLE `hasil_v` (
  `id_hasil_v` int(11) NOT NULL,
  `id_alternatif_v` int(11) NOT NULL,
  `nilai_v` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_v`
--

INSERT INTO `hasil_v` (`id_hasil_v`, `id_alternatif_v`, `nilai_v`) VALUES
(1, 1, 1),
(2, 2, 0.4823),
(3, 3, 0.2484),
(4, 4, 0.1921),
(5, 5, 0.6146),
(6, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kode_kriteria` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `type` enum('Benefit','Cost') NOT NULL,
  `bobot` float NOT NULL,
  `ada_pilihan` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kode_kriteria`, `nama`, `type`, `bobot`, `ada_pilihan`) VALUES
(12, 'C1', 'Pinjaman', 'Cost', 20, 0),
(13, 'C2', 'Angsuran', 'Cost', 10, 0),
(14, 'C3', 'Jaminan', 'Benefit', 20, 1),
(15, 'C4', 'Status', 'Benefit', 70, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria_v`
--

CREATE TABLE `kriteria_v` (
  `id_kriteria_v` int(11) NOT NULL,
  `kode_kriteria_v` varchar(10) NOT NULL,
  `nama_v` varchar(50) NOT NULL,
  `bobot_v` float NOT NULL,
  `ada_pilihan_v` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria_v`
--

INSERT INTO `kriteria_v` (`id_kriteria_v`, `kode_kriteria_v`, `nama_v`, `bobot_v`, `ada_pilihan_v`) VALUES
(1, 'C1', 'Nama Brand', 0.3, 1),
(2, 'C2', 'Jenis Kulit', 0.15, 1),
(3, 'C3', 'SPF', 0.1, 1),
(4, 'C4', 'Harga', 0.25, 1),
(5, 'C5', 'Berat', 0.2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_alternatif` int(10) NOT NULL,
  `id_kriteria` int(10) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(95, 12, 12, 5000000),
(96, 12, 13, 10),
(97, 12, 14, 16),
(98, 12, 15, 4),
(99, 11, 12, 1000000),
(100, 11, 13, 12),
(101, 11, 14, 16),
(102, 11, 15, 5),
(103, 13, 12, 1200000),
(104, 13, 13, 6),
(105, 13, 14, 16),
(106, 13, 15, 5),
(107, 14, 12, 8000000),
(108, 14, 13, 4),
(109, 14, 14, 14),
(110, 14, 15, 5),
(111, 15, 12, 4000000),
(112, 15, 13, 10),
(113, 15, 14, 16),
(114, 15, 15, 1),
(115, 16, 12, 10000000),
(116, 16, 13, 3),
(117, 16, 14, 16),
(118, 16, 15, 5),
(119, 17, 12, 6000000),
(120, 17, 13, 6),
(121, 17, 14, 16),
(122, 17, 15, 3),
(123, 18, 12, 3000000),
(124, 18, 13, 6),
(125, 18, 14, 16),
(126, 18, 15, 4),
(127, 19, 12, 9000000),
(128, 19, 13, 6),
(129, 19, 14, 15),
(130, 19, 15, 5),
(131, 20, 12, 5000000),
(132, 20, 13, 10),
(133, 20, 14, 16),
(134, 20, 15, 5);

-- --------------------------------------------------------

--
-- Table structure for table `penilaian_v`
--

CREATE TABLE `penilaian_v` (
  `id_penilaian_v` int(11) NOT NULL,
  `id_alternatif_v` int(10) NOT NULL,
  `id_kriteria_v` int(10) NOT NULL,
  `nilai_v` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penilaian_v`
--

INSERT INTO `penilaian_v` (`id_penilaian_v`, `id_alternatif_v`, `id_kriteria_v`, `nilai_v`) VALUES
(61, 1, 1, 1),
(62, 1, 2, 10),
(63, 1, 3, 22),
(64, 1, 4, 14),
(65, 1, 5, 20),
(66, 2, 1, 2),
(67, 2, 2, 8),
(68, 2, 3, 24),
(69, 2, 4, 17),
(70, 2, 5, 19),
(71, 3, 1, 3),
(72, 3, 2, 7),
(73, 3, 3, 23),
(74, 3, 4, 17),
(75, 3, 5, 20),
(76, 4, 1, 5),
(77, 4, 2, 9),
(78, 4, 3, 22),
(79, 4, 4, 15),
(80, 4, 5, 21),
(81, 5, 1, 6),
(82, 5, 2, 7),
(83, 5, 3, 22),
(84, 5, 4, 15),
(85, 5, 5, 18),
(86, 6, 1, 4),
(87, 6, 2, 7),
(88, 6, 3, 22),
(89, 6, 4, 16),
(90, 6, 5, 21);

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `nama`, `nilai`) VALUES
(14, 14, '	BPKB Mobil', 5),
(15, 14, 'SK Kios', 4),
(16, 14, 'BPKB Motor', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria_v`
--

CREATE TABLE `sub_kriteria_v` (
  `id_sub_kriteria_v` int(11) NOT NULL,
  `id_kriteria_v` int(11) NOT NULL,
  `nama_v` varchar(50) NOT NULL,
  `nilai_v` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_kriteria_v`
--

INSERT INTO `sub_kriteria_v` (`id_sub_kriteria_v`, `id_kriteria_v`, `nama_v`, `nilai_v`) VALUES
(1, 1, 'Azarine', 1),
(2, 1, 'Emina', 2),
(3, 1, 'Wardah', 3),
(4, 1, 'Madamie Gie', 6),
(5, 1, 'Y.O.U', 4),
(6, 1, 'Facetology', 5),
(7, 2, 'Semua Kulit', 1),
(8, 2, 'Kulit Kering', 2),
(9, 2, 'Kulit Berminyak', 3),
(10, 2, 'Kulit Sensitif', 4),
(14, 4, '60000 - 70000', 1),
(15, 4, '50000 - 59999', 2),
(16, 4, '40000 - 49999 ', 3),
(17, 4, '30000 - 39999 ', 4),
(18, 5, '80 - 100 ml', 1),
(19, 5, '60 - 79 ml', 2),
(20, 5, '40 - 59 ml', 3),
(21, 5, '30 - 49 ml', 4),
(22, 3, '41 - 50', 1),
(23, 3, '31 - 40', 2),
(24, 3, '21 - 30', 3),
(25, 3, '21 - 30', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(70) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `role` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `email`, `role`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Admin', 'admin@gmail.com', '1'),
(8, 'user', '12dea96fec20593566ab75692c9949596833adc9', 'User', 'user@gmail.com', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `alternatif_v`
--
ALTER TABLE `alternatif_v`
  ADD PRIMARY KEY (`id_alternatif_v`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `hasil_v`
--
ALTER TABLE `hasil_v`
  ADD PRIMARY KEY (`id_hasil_v`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `kriteria_v`
--
ALTER TABLE `kriteria_v`
  ADD PRIMARY KEY (`id_kriteria_v`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`);

--
-- Indexes for table `penilaian_v`
--
ALTER TABLE `penilaian_v`
  ADD PRIMARY KEY (`id_penilaian_v`);

--
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`);

--
-- Indexes for table `sub_kriteria_v`
--
ALTER TABLE `sub_kriteria_v`
  ADD PRIMARY KEY (`id_sub_kriteria_v`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `alternatif_v`
--
ALTER TABLE `alternatif_v`
  MODIFY `id_alternatif_v` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hasil_v`
--
ALTER TABLE `hasil_v`
  MODIFY `id_hasil_v` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kriteria_v`
--
ALTER TABLE `kriteria_v`
  MODIFY `id_kriteria_v` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `penilaian_v`
--
ALTER TABLE `penilaian_v`
  MODIFY `id_penilaian_v` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sub_kriteria_v`
--
ALTER TABLE `sub_kriteria_v`
  MODIFY `id_sub_kriteria_v` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
