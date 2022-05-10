-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 04:11 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbdesa`
--

-- --------------------------------------------------------

--
-- Table structure for table `twarga`
--

CREATE TABLE `twarga` (
  `nik` varchar(16) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `hp` varchar(14) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `twarga`
--

INSERT INTO `twarga` (`nik`, `nama`, `alamat`, `hp`) VALUES
('1234567890', 'Agus', 'Jl. Perjuangan', '0893888383833'),
('1234567891', 'Budi', 'Jl. Kesambi', '09838383883383'),
('2123456780', 'User1', 'Alamat1', 'HP1\r'),
('2123456781', 'User2', 'Alamat2', 'HP2\r'),
('2123456782', 'User3', 'Alamat3', 'HP3\r'),
('2123456783', 'User4', 'Alamat4', 'HP4\r'),
('2123456784', 'User5', 'Alamat5', 'HP5\r'),
('2123456785', 'User6', 'Alamat6', 'HP6\r'),
('2123456786', 'User7', 'Alamat7', 'HP7\r'),
('2123456787', 'User8', 'Alamat8', 'HP8\r'),
('2123456788', 'User9', 'Alamat9', 'HP9\r'),
('2123456789', 'User10', 'Alamat10', 'HP10\r'),
('2123456790', 'User11', 'Alamat11', 'HP11\r'),
('2123456791', 'User12', 'Alamat12', 'HP12\r'),
('2123456792', 'User13', 'Alamat13', 'HP13\r'),
('2123456793', 'User14', 'Alamat14', 'HP14\r'),
('2123456794', 'User15', 'Alamat15', 'HP15\r'),
('2123456795', 'User16', 'Alamat16', 'HP16\r'),
('2123456796', 'User17', 'Alamat17', 'HP17\r'),
('2123456797', 'User18', 'Alamat18', 'HP18\r'),
('2123456798', 'User19', 'Alamat19', 'HP19\r'),
('2123456799', 'User20', 'Alamat20', 'HP20\r'),
('2123456800', 'User21', 'Alamat21', 'HP21\r'),
('2123456801', 'User22', 'Alamat22', 'HP22\r'),
('2123456802', 'User23', 'Alamat23', 'HP23\r'),
('2123456803', 'User24', 'Alamat24', 'HP24\r'),
('2123456804', 'User25', 'Alamat25', 'HP25\r');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `twarga`
--
ALTER TABLE `twarga`
  ADD PRIMARY KEY (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
