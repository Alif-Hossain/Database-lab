-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2022 at 09:52 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transport_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `passenger_info`
--

CREATE TABLE `passenger_info` (
  `name` varchar(20) DEFAULT NULL,
  `serial_no` varchar(20) NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `District` varchar(20) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger_info`
--

INSERT INTO `passenger_info` (`name`, `serial_no`, `date_of_birth`, `District`, `phone_no`, `class`) VALUES
('Nadia Nourin', '193008', '2002-03-23 13:39:01', NULL, '01744817382', 'first'),
('Alif Hossain', '193009', '2001-03-23 13:39:01', NULL, '01744117382', 'first'),
('Suriyya Kabir', '193017', '1999-03-15 13:39:01', NULL, '01789065432', 'second'),
('Mofazzal Shovon', '193027', '1999-03-15 13:39:01', NULL, '01789865432', 'second'),
('Shumon', '193101', '2001-01-01 11:04:24', NULL, '01944117382', 'first'),
('Shimul', '193102', '1995-01-01 11:04:24', NULL, '01949117382', 'second'),
('Shuhan', '193103', '2003-01-01 11:04:24', NULL, '01544117382', 'first'),
('Shuhag', '193104', '1991-01-01 11:04:24', NULL, '01944117782', 'first'),
('Shojol', '193105', '1999-01-01 11:04:24', NULL, '01554117382', 'third'),
('Abul Mia', '193106', '1998-01-01 11:04:24', NULL, '01949917382', 'first'),
('Hablu Mia', '193107', '2001-01-01 11:04:24', NULL, '01964110382', 'first'),
('Rohim Mia', '193108', '1995-01-01 11:04:24', NULL, '01944100382', 'first'),
('Korim Mia', '193109', '1996-01-01 11:04:24', NULL, '01900017382', 'second'),
('Karimullah', '193111', '1995-01-01 11:04:24', NULL, '01946500382', 'first'),
('Mobin Mia', '193112', '1998-01-01 11:04:24', NULL, '01998100382', 'first');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_info`
--

CREATE TABLE `reservation_info` (
  `id_no` varchar(20) NOT NULL,
  `train_name` varchar(20) DEFAULT NULL,
  `total_seat` int(11) DEFAULT NULL,
  `available_seat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation_info`
--

INSERT INTO `reservation_info` (`id_no`, `train_name`, `total_seat`, `available_seat`) VALUES
('1001', 'provati express', 500, 150),
('1002', 'chitra express', 400, 120),
('1003', 'suborna express', 550, 160),
('1010', 'gudhuli express', 350, 120),
('1011', 'tista express', 400, 120),
('1012', 'ekota express', 450, 120),
('1013', 'upakul express', 450, 220),
('1014', 'paharika express', 450, 20),
('1015', 'rupsha express', 750, 320),
('1016', 'meghna express', 850, 220),
('1017', 'borendro express', 950, 120),
('1018', 'upobon express', 850, 230),
('1019', 'turna express', 650, 230),
('1020', 'egarosindur express', 550, 220),
('1021', 'simanto express', 450, 220);

-- --------------------------------------------------------

--
-- Table structure for table `train_info`
--

CREATE TABLE `train_info` (
  `name_of_train` varchar(20) DEFAULT NULL,
  `train_no` varchar(20) NOT NULL,
  `journey_date` datetime DEFAULT NULL,
  `from-to` varchar(20) NOT NULL,
  `class` varchar(20) DEFAULT NULL,
  `coach_no` varchar(20) DEFAULT NULL,
  `seat_no` varchar(20) DEFAULT NULL,
  `issue_date` datetime DEFAULT NULL,
  `fare` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train_info`
--

INSERT INTO `train_info` (`name_of_train`, `train_no`, `journey_date`, `from-to`, `class`, `coach_no`, `seat_no`, `issue_date`, `fare`) VALUES
('suborna express', '101', '2022-03-28 13:30:11', 'Dha-Syl', 'first', '78', '55', '2022-03-25 13:30:11', '220/-'),
('provati express', '102', '2022-03-29 13:30:11', 'Dha-Raj', 'first', '79', '58', '2022-03-24 13:30:11', '225/-'),
('chitra express', '103', '2022-03-30 13:30:11', 'Dha-Chitta', 'second', '80', '58', '2022-03-25 13:30:11', '250/-'),
('gudhuli  express', '201', '2022-04-08 13:30:11', 'Dha-Raj', 'first', '88', '155', '2022-03-29 13:30:11', '250/-'),
('tista _express', '202', '2022-04-05 13:30:11', 'Dha-Khu', 'first', '80', '355', '2022-03-24 13:30:11', '350/-'),
('ekota  express', '205', '2022-04-04 13:30:11', 'Dha-Raj', 'second', '85', '225', '2022-04-09 13:30:11', '320/-'),
('upakul  express', '207', '2022-04-03 13:30:11', 'Dha-Voi', 'second', '98', '355', '2022-03-29 13:30:11', '150/-'),
('turna  express', '223', '2022-04-06 13:30:11', 'Dha-Raj', 'first', '98', '255', '2022-04-12 13:30:11', '350/-'),
('paharika  express', '301', '2022-04-15 13:30:11', 'Dha-Syl', 'first', '78', '355', '2022-03-29 13:30:11', '155/-'),
('rupsha  express', '303', '2022-04-18 13:30:11', 'Dha-Rong', 'first', '28', '335', '2022-03-25 13:30:11', '350/-'),
('meghna  express', '305', '2022-04-12 13:30:11', 'Dha-Raj', 'first', '77', '235', '2022-03-29 13:30:11', '350/-'),
('upobon  express', '311', '2022-04-05 13:30:11', 'Dha-Raj', 'second', '56', '355', '2022-04-24 13:30:11', '350/-'),
('egarosindur  express', '321', '2022-04-02 13:30:11', 'Dha-Raj', 'first', '18', '255', '2022-04-10 13:30:11', '250/-'),
('simanto  express', '331', '2022-04-04 13:30:11', 'Dha-Raj', 'first', '78', '155', '2022-04-05 13:30:11', '250/-'),
('borendro  express', '350', '2022-04-18 13:30:11', 'Dha-Mymen', 'first', '18', '255', '2022-04-21 13:30:11', '250/-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `passenger_info`
--
ALTER TABLE `passenger_info`
  ADD PRIMARY KEY (`serial_no`);

--
-- Indexes for table `reservation_info`
--
ALTER TABLE `reservation_info`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `train_info`
--
ALTER TABLE `train_info`
  ADD PRIMARY KEY (`train_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
