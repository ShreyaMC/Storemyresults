-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2017 at 09:31 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE IF NOT EXISTS `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) NOT NULL,
  `Section` varchar(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'First', 1, 'A', '2021-01-06 16:52:33', '2021-01-07 05:53:47'),
(2, 'Second', 2, 'A', '2021-01-06 17:21:20', '2021-01-06 17:21:38'),
(4, 'Fourth', 4, 'B', '2021-01-07 09:20:23', '0000-00-00 00:00:00'),
(5, 'Sixth', 6, 'A', '2021-01-07 09:35:08', '0000-00-00 00:00:00'),
(6, 'Sixth', 6, 'B', '2021-01-28 18:42:41', '2021-01-28 18:43:02'),
(7, 'Seventh', 7, 'B', '2021-01-28 18:52:00', '2021-01-28 18:52:15'),
(8, 'Eight', 8, 'A', '2021-01-28 19:21:05', '2021-01-01 19:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE IF NOT EXISTS `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(2, 1, 1, 2, 100, '2021-01-24 17:54:09', '2021-01-28 18:34:32'),
(3, 1, 1, 1, 80, '2021-01-24 17:54:09', '2021-01-28 18:34:25'),
(4, 1, 1, 5, 78, '2021-01-24 17:54:09', '2021-01-28 18:34:26'),
(5, 1, 1, 4, 60, '2021-01-24 17:54:09', '2021-01-28 18:34:26'),
(6, 1, 1, 3, 80, '2021-01-24 17:54:09', '2021-01-28 18:34:26'),
(7, 2, 4, 2, 90, '2021-01-28 18:38:18', NULL),
(8, 2, 4, 1, 75, '2021-01-28 18:38:18', NULL),
(9, 2, 4, 5, 56, '2021-01-28 18:38:18', '2021-01-28 19:26:42'),
(10, 2, 4, 4, 80, '2021-01-28 18:38:18', '2021-01-28 19:26:42'),
(11, 2, 4, 3, 78, '2021-01-24 17:54:09', '2021-01-28 18:34:26'),
(12, 3, 6, 4, 60, '2021-01-24 17:54:09', '2021-01-28 18:34:26'),
(13, 3, 6, 3, 70, '2021-01-24 17:54:09', '2021-01-28 18:34:26'),
(14, 3, 6, 2, 68, '2021-01-24 17:54:09', '2021-01-28 18:34:26'),
(15, 3, 6, 1, 78, '2021-01-24 17:54:09', '2021-01-28 18:34:26'),
(16, 3, 6, 5, 88, '2021-01-24 17:54:09', '2021-01-28 18:34:26'),
(17, 4, 7, 2, 54, '2021-01-28 18:56:21', '2021-01-28 19:03:10'),
(18, 4, 7, 1, 85, '2021-01-28 18:56:21', NULL),
(19, 4, 7, 5, 55, '2021-01-28 18:56:21', '2021-01-28 19:03:10'),
(20, 4, 7, 3, 65, '2021-01-28 18:56:21', '2021-01-28 19:03:10'),
(21, 4, 7, 4, 79, '2021-01-24 17:54:09', '2021-01-28 18:34:26'),
(22, 5, 8, 2, 75, '2021-01-28 19:25:07', NULL),
(23, 5, 8, 1, 56, '2021-01-28 19:25:07', NULL),
(24, 5, 8, 5, 52, '2021-01-28 19:25:07', NULL),
(25, 5, 8, 3, 76, '2021-01-28 19:25:07', NULL),
(26, 5, 8, 4, 75, '2021-01-28 19:25:07', NULL);


-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE IF NOT EXISTS `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `RollId` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Status` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Aajna', 'KV001', 'aajna@codeprojects.com', 'Female', '2012-03-03', 1, '2021-06-12 10:30:57', '2021-01-26 04:36:37', 1),
(2, 'Ambika', 'KV002', 'ambikas@gmail.co', 'Female', '2013-02-02', 2, '2021-08-19 19:18:28', '2021-01-26 04:59:17', 1),
(3, 'Apoorva', 'KV003', 'appu@gmail.com', 'Female', '2014-08-06', 4, '2021-08-28 18:45:31', '2021-01-28 18:46:02', 1),
(4, 'Ashwin', 'KV004', 'ashwin@gmail.com', 'Male', '2010-02-03', 6, '2021-08-28 18:54:58', '2021-01-28 18:55:20', 1),
(5, 'Madhura', 'KV005', 'madhu@gmail.com', 'Female', '2012-02-03', 8, '2021-08-28 19:23:53', '2021-01-28 19:24:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE IF NOT EXISTS `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 1, 5, 1, '2020-06-07 11:16:56', '2020-06-07 11:16:56'),
(4, 1, 2, 1, '2020-06-12 06:46:32', '2020-06-12 06:46:32'),
(5, 1, 4, 1, '2020-06-12 06:46:35', '2020-06-12 06:46:35'),
(6, 1, 1, 1, '2020-06-12 06:46:40', '2020-06-12 06:46:40'),
(8, 1, 3, 1, '2020-08-26 03:21:27', '2020-08-26 03:21:27'),
(10, 4, 1, 1, '2020-08-26 03:22:05', '2020-08-26 03:22:05'),
(12, 4, 2, 1, '2020-08-26 03:22:15', '2020-08-26 03:22:15'),
(13, 4, 5, 1, '2020-08-26 03:22:20', '2020-08-26 03:22:20'),
(14, 4, 3, 1, '2020-08-28 18:44:06', '2020-08-28 18:44:06'),
(15, 4, 4, 1, '2020-08-28 18:44:12', '2020-08-28 18:44:12'),
(16, 2, 4, 1, '2020-08-28 18:44:18', '2020-08-28 18:44:18'),
(17, 2, 3, 1, '2020-08-28 18:44:23', '2020-08-28 18:44:23'),
(18, 2, 1, 1, '2020-08-28 18:53:12', '2020-08-28 18:53:12'),
(19, 2, 5, 1, '2020-08-28 18:53:19', '2020-08-28 18:53:19'),
(20, 2, 2, 1, '2020-08-28 18:53:38', '2020-08-28 18:53:38'),
(21, 3, 3, 1, '2020-08-28 18:53:44', '2020-08-28 18:53:44'),
(22, 3, 5, 0, '2020-08-28 18:53:50', '2020-08-28 18:53:50'),
(23, 3, 1, 1, '2020-08-28 19:22:25', '2020-08-28 19:22:25'),
(24, 3, 2, 1, '2020-08-28 19:22:31', '2020-08-28 19:22:31'),
(25, 3, 4, 1, '2020-08-28 19:22:36', '2020-08-28 19:22:36'),
(26, 5, 1, 1, '2020-08-28 19:22:42', '2020-08-28 19:22:42'),
(27, 5, 2, 0, '2020-08-28 19:22:47', '2020-08-28 19:22:47'),
(28, 5, 3, 1, '2020-08-28 19:22:47', '2020-08-28 19:22:47'),
(29, 5, 4, 0, '2020-08-28 19:22:47', '2020-08-28 19:22:47'),
(30, 5, 5, 0, '2020-08-28 19:22:47', '2020-08-28 19:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE IF NOT EXISTS `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Kannada', 'KAN01', '2020-06-07 09:23:57', '2020-06-07 09:46:54'),
(2, 'English', 'ENG02', '2020-06-07 09:24:25', '2020-06-01 08:00:00'),
(3, 'Science', 'SCI03', '2020-06-07 09:36:15', '2020-07-03 05:00:00'),
(4, 'Social Studies', 'SST04', '2020-08-28 18:43:29', '2020-08-28 18:43:45'),
(5, 'Maths', 'MAT05', '2020-08-28 18:52:41', '2020-08-28 18:52:55');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
   ALTER TABLE `admin`
   ADD PRIMARY KEY(`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
ADD PRIMARY KEY(`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
