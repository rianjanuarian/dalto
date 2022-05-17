-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 17, 2022 at 12:53 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gajian`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `kary_id` int(10) NOT NULL,
  `kode_kar` varchar(10) NOT NULL,
  `nama_kar` varchar(30) NOT NULL,
  `alamat_kar` varchar(80) NOT NULL,
  `no_rek` varchar(200) NOT NULL,
  `gaji_utama` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`kary_id`, `kode_kar`, `nama_kar`, `alamat_kar`, `no_rek`, `gaji_utama`) VALUES
(13, '5', 'Faizal', 'Bondowoso', '0x96f85232AAef48758ea9bC3f8ec13C60e86695E8', '1000000'),
(12, '4', 'Atmadi ', 'Bondowoso', '0x30aA5b7d708Ac6f27930f94775bB2C48346567f6', '1000000'),
(11, '3', 'Pri', 'Bondowoso', '0x96F1D87f501d62d346Ec2246E808Db28ecd9C057', '1000000'),
(10, '2', 'Eko', 'Bondowoso', '0x11428C84769AA0238E9d6e4EE2006edF22d39e7A', '1000000'),
(9, '1', 'Rio', 'Bondowoso', '0x59f842A6fD3C466eCc69aFABf36d1170bb8E8522', '1000000'),
(14, '6', 'Dede', 'Bondowoso', '0xe386963E9661257b360c37A856cd297211Bf2847', '1000000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gaji`
--

CREATE TABLE `tb_gaji` (
  `gaji_id` int(11) NOT NULL,
  `kary_id` int(11) NOT NULL,
  `kode_gaji` varchar(5) NOT NULL,
  `jam_lembur` int(11) NOT NULL,
  `bonus` int(11) NOT NULL,
  `sanksi` int(11) NOT NULL,
  `uang_lembur` double NOT NULL,
  `total_gaji` double NOT NULL,
  `total_gajiusd` int(100) NOT NULL,
  `bulan_transfer` varchar(20) NOT NULL,
  `tgl_transfer` varchar(20) NOT NULL,
  `jam_transfer` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gaji`
--

INSERT INTO `tb_gaji` (`gaji_id`, `kary_id`, `kode_gaji`, `jam_lembur`, `bonus`, `sanksi`, `uang_lembur`, `total_gaji`, `total_gajiusd`, `bulan_transfer`, `tgl_transfer`, `jam_transfer`) VALUES
(11, 1, 'GJ001', 2, 0, 0, 100000, 200000, 0, 'Maret', '10/03/2022', '09:37:02'),
(12, 4, 'GJ001', 2, 0, 0, 100000, 300000, 0, 'Maret', '10/03/2022', '09:40:38'),
(13, 5, 'GJ001', 3, 0, 0, 150000, 450000, 0, 'Maret', '10/03/2022', '10:37:38'),
(7, 0, 'GJ002', 2, 0, 0, 52023, 4552023, 0, 'Januari', '02/01/2020', '12:47:14'),
(8, 0, 'GJ001', 1, 0, 0, 26011, 4526011, 0, 'Februari', '07/03/2022', '15:07:40'),
(9, 2, 'GJ001', 3, 0, 0, 8670, 508670, 0, 'Maret', '10/03/2022', '08:34:31'),
(10, 3, 'GJ002', 4, 0, 0, 200000, 400000, 0, 'Februari', '10/03/2022', '09:33:18'),
(14, 5, 'GJ001', 1, 0, 1000, 50000, 349000, 0, 'Juni', '10/03/2022', '11:23:59'),
(15, 5, 'GJ001', 2, 0, 2000, 100000, 398000, 0, 'Maret', '10/03/2022', '11:27:44'),
(16, 5, 'GJ002', 2, 0, 100000, 100000, 300000, 21, 'Maret', '21/03/2022', '12:37:54'),
(17, 4, 'GJ001', 1, 10000, 5000, 50000, 255000, 20, 'November', '23/03/2022', '07:45:01'),
(18, 6, 'GJ001', 2, 100000, 50000, 100000, 1150000, 80, 'Juni', '07/04/2022', '15:07:56'),
(19, 14, 'GJ002', 1, 100000, 5000, 50000, 1145000, 20000, 'Januari', '09/05/2022', '17:10:13'),
(20, 9, 'GJ001', 1, 100000, 50000, 50000, 1100000, 75, 'Desember', '13/05/2022', '14:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `fullname` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `username`, `password`, `fullname`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`kary_id`);

--
-- Indexes for table `tb_gaji`
--
ALTER TABLE `tb_gaji`
  ADD PRIMARY KEY (`gaji_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `kary_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_gaji`
--
ALTER TABLE `tb_gaji`
  MODIFY `gaji_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
