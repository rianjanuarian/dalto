-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Inang: localhost
-- Waktu pembuatan: 02 Jan 2020 pada 13.18
-- Versi Server: 5.5.25a
-- Versi PHP: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `gajian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
  `kary_id` varchar(10) NOT NULL,
  `kode_kar` varchar(10) NOT NULL,
  `nama_kar` varchar(30) NOT NULL,
  `alamat_kar` varchar(80) NOT NULL,
  `no_rek` varchar(30) NOT NULL,
  `gaji_utama` decimal(10,0) NOT NULL,
  `gol_kar` varchar(10) NOT NULL,
  PRIMARY KEY (`kary_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`kary_id`, `kode_kar`, `nama_kar`, `alamat_kar`, `no_rek`, `gaji_utama`, `gol_kar`) VALUES
('', '10001', 'Udin Saprudin', 'Naggeleng', '0182741287', 4500000, 'B');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gaji`
--

CREATE TABLE IF NOT EXISTS `tb_gaji` (
  `gaji_id` int(11) NOT NULL AUTO_INCREMENT,
  `kary_id` int(11) NOT NULL,
  `kode_gaji` varchar(5) NOT NULL,
  `jam_lembur` int(11) NOT NULL,
  `uang_lembur` double NOT NULL,
  `total_gaji` double NOT NULL,
  `bulan_transfer` varchar(20) NOT NULL,
  `tgl_transfer` varchar(20) NOT NULL,
  `jam_transfer` varchar(10) NOT NULL,
  PRIMARY KEY (`gaji_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `tb_gaji`
--

INSERT INTO `tb_gaji` (`gaji_id`, `kary_id`, `kode_gaji`, `jam_lembur`, `uang_lembur`, `total_gaji`, `bulan_transfer`, `tgl_transfer`, `jam_transfer`) VALUES
(1, 1, 'GJ001', 58, 583367, 2333367, 'January 2014', '12/01/2014', '02:14:35'),
(2, 4, 'GJ002', 66, 820326, 2970576, 'January 2014', '12/01/2014', '02:14:42'),
(3, 6, 'GJ003', 24, 256999, 2109539, 'January 2014', '12/01/2014', '03:11:51'),
(7, 0, 'GJ002', 2, 52023, 4552023, 'Januari', '02/01/2020', '12:47:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `username`, `password`, `fullname`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
