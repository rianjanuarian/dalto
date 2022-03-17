-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Mar 17, 2022 at 05:19 AM
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
  `gaji_utama` decimal(10,0) NOT NULL,
  `gol_kar` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`kary_id`, `kode_kar`, `nama_kar`, `alamat_kar`, `no_rek`, `gaji_utama`, `gol_kar`) VALUES
(4, '1', 'rian', 'bondowoso', '0x11428C84769AA0238E9d6e4EE2006edF22d39e7A', '200000', 'C'),
(5, '2', 'bram', 'malang', '0x59f842A6fD3C466eCc69aFABf36d1170bb8E8522', '300000', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gaji`
--

CREATE TABLE `tb_gaji` (
  `gaji_id` int(11) NOT NULL,
  `kary_id` int(11) NOT NULL,
  `kode_gaji` varchar(5) NOT NULL,
  `jam_lembur` int(11) NOT NULL,
  `sanksi` int(11) NOT NULL,
  `uang_lembur` double NOT NULL,
  `total_gaji` double NOT NULL,
  `bulan_transfer` varchar(20) NOT NULL,
  `tgl_transfer` varchar(20) NOT NULL,
  `jam_transfer` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gaji`
--

INSERT INTO `tb_gaji` (`gaji_id`, `kary_id`, `kode_gaji`, `jam_lembur`, `sanksi`, `uang_lembur`, `total_gaji`, `bulan_transfer`, `tgl_transfer`, `jam_transfer`) VALUES
(11, 1, 'GJ001', 2, 0, 100000, 200000, 'Maret', '10/03/2022', '09:37:02'),
(12, 4, 'GJ001', 2, 0, 100000, 300000, 'Maret', '10/03/2022', '09:40:38'),
(13, 5, 'GJ001', 3, 0, 150000, 450000, 'Maret', '10/03/2022', '10:37:38'),
(7, 0, 'GJ002', 2, 0, 52023, 4552023, 'Januari', '02/01/2020', '12:47:14'),
(8, 0, 'GJ001', 1, 0, 26011, 4526011, 'Februari', '07/03/2022', '15:07:40'),
(9, 2, 'GJ001', 3, 0, 8670, 508670, 'Maret', '10/03/2022', '08:34:31'),
(10, 3, 'GJ002', 4, 0, 200000, 400000, 'Februari', '10/03/2022', '09:33:18'),
(14, 5, 'GJ001', 1, 1000, 50000, 349000, 'Juni', '10/03/2022', '11:23:59'),
(15, 5, 'GJ001', 2, 2000, 100000, 398000, 'Maret', '10/03/2022', '11:27:44');

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
  MODIFY `kary_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_gaji`
--
ALTER TABLE `tb_gaji`
  MODIFY `gaji_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
