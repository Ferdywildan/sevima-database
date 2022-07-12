-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2022 at 09:47 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sevima`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(20) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `umur` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`, `jenis_kelamin`, `umur`, `telepon`) VALUES
(10001, 'John', 'Medokan', 'L', '20', '0987645321'),
(10002, 'Agnes', 'Tandes', 'P', '21', '0987645322'),
(10003, 'Monica', 'Rungkut', 'P', '20', '0987645323'),
(10004, 'Sherlock', 'Lontar', 'L', '22', '0987645324'),
(10005, 'Holmes', 'Ngagel', 'L', '23', '0987645325'),
(10006, 'Watson', 'Nginden', 'L', '21', '0987645326'),
(10007, 'Irena', 'Benowo', 'P', '23', '0987645327');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `nim` int(12) NOT NULL,
  `kode_mk` varchar(12) NOT NULL,
  `nama_mk` varchar(20) NOT NULL,
  `sks` varchar(12) NOT NULL,
  `nilai_angka` varchar(12) NOT NULL,
  `nilai_huruf` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`nim`, `kode_mk`, `nama_mk`, `sks`, `nilai_angka`, `nilai_huruf`) VALUES
(10001, 'MKC', 'Fisika', '4', '20', 'E'),
(10002, 'MKB', 'Biologi', '3', '43', 'D'),
(10002, 'MKA', 'Matematika', '2', '66', 'C'),
(10001, 'MKB', 'Biologi', '3', '75', 'B'),
(10001, 'MKA', 'Matematika', '2', '89', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD KEY `nim` (`nim`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
