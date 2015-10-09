-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: RaspberryNAS.lan
-- Generation Time: Sep 30, 2015 at 09:51 PM
-- Server version: 5.5.44-0+deb7u1
-- PHP Version: 5.6.13-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `decibel_monitor`
--

-- --------------------------------------------------------

--
-- Table structure for table `adverage_data`
--

CREATE TABLE IF NOT EXISTS `adverage_data` (
`id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `plug_adverage` int(11) NOT NULL,
  `plug_peak` int(11) NOT NULL,
  `tub_adverage` int(11) NOT NULL,
  `tub_peak` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adverage_data`
--

INSERT INTO `adverage_data` (`id`, `timestamp`, `plug_adverage`, `plug_peak`, `tub_adverage`, `tub_peak`) VALUES
(1, '2015-09-30 21:37:00', 49, 86, 48, 86),
(2, '2015-09-30 21:38:00', 57, 104, 57, 104),
(3, '2015-09-30 21:39:00', 68, 118, 68, 118),
(4, '2015-09-30 21:40:00', 48, 60, 48, 60),
(5, '2015-09-30 21:41:00', 54, 83, 54, 83),
(6, '2015-09-30 21:42:00', 50, 58, 50, 58),
(7, '2015-09-30 21:43:00', 49, 56, 49, 56),
(8, '2015-09-30 21:44:00', 56, 109, 56, 109),
(9, '2015-09-30 21:45:00', 0, 0, 0, 0),
(10, '2015-09-30 21:46:00', 0, 0, 0, 0),
(11, '2015-09-30 21:47:00', 0, 0, 0, 0),
(12, '2015-09-30 21:48:00', 41, 45, 41, 45),
(13, '2015-09-30 21:49:00', 43, 54, 43, 54),
(14, '2015-09-30 21:50:00', 44, 53, 44, 53),
(15, '2015-09-30 21:51:00', 51, 58, 51, 58);

-- --------------------------------------------------------

--
-- Table structure for table `plug_raw`
--

CREATE TABLE IF NOT EXISTS `plug_raw` (
`id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `decibel` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plug_raw`
--

INSERT INTO `plug_raw` (`id`, `timestamp`, `decibel`) VALUES
(1, '2015-09-30 21:51:01', 53),
(2, '2015-09-30 21:51:01', 53),
(3, '2015-09-30 21:51:02', 53),
(4, '2015-09-30 21:51:02', 53),
(5, '2015-09-30 21:51:02', 53),
(6, '2015-09-30 21:51:02', 50),
(7, '2015-09-30 21:51:03', 50),
(8, '2015-09-30 21:51:03', 50),
(9, '2015-09-30 21:51:03', 53),
(10, '2015-09-30 21:51:03', 53),
(11, '2015-09-30 21:51:04', 53),
(12, '2015-09-30 21:51:04', 53),
(13, '2015-09-30 21:51:04', 53),
(14, '2015-09-30 21:51:04', 53),
(15, '2015-09-30 21:51:05', 43),
(16, '2015-09-30 21:51:05', 43),
(17, '2015-09-30 21:51:05', 43),
(18, '2015-09-30 21:51:05', 45),
(19, '2015-09-30 21:51:06', 45),
(20, '2015-09-30 21:51:06', 45),
(21, '2015-09-30 21:51:06', 54),
(22, '2015-09-30 21:51:06', 54),
(23, '2015-09-30 21:51:07', 54),
(24, '2015-09-30 21:51:07', 51),
(25, '2015-09-30 21:51:07', 51),
(26, '2015-09-30 21:51:07', 51),
(27, '2015-09-30 21:51:08', 55),
(28, '2015-09-30 21:51:08', 55),
(29, '2015-09-30 21:51:08', 55),
(30, '2015-09-30 21:51:08', 54),
(31, '2015-09-30 21:51:09', 54),
(32, '2015-09-30 21:51:09', 54),
(33, '2015-09-30 21:51:09', 48),
(34, '2015-09-30 21:51:09', 48),
(35, '2015-09-30 21:51:10', 48),
(36, '2015-09-30 21:51:10', 54),
(37, '2015-09-30 21:51:10', 54),
(38, '2015-09-30 21:51:10', 54),
(39, '2015-09-30 21:51:10', 60),
(40, '2015-09-30 21:51:11', 60),
(41, '2015-09-30 21:51:11', 60),
(42, '2015-09-30 21:51:11', 59),
(43, '2015-09-30 21:51:11', 59),
(44, '2015-09-30 21:51:12', 59),
(45, '2015-09-30 21:51:12', 50),
(46, '2015-09-30 21:51:13', 51),
(47, '2015-09-30 21:51:13', 51),
(48, '2015-09-30 21:51:13', 51),
(49, '2015-09-30 21:51:13', 55),
(50, '2015-09-30 21:51:14', 55),
(51, '2015-09-30 21:51:14', 55),
(52, '2015-09-30 21:51:14', 48),
(53, '2015-09-30 21:51:14', 48),
(54, '2015-09-30 21:51:14', 48),
(55, '2015-09-30 21:51:15', 50),
(56, '2015-09-30 21:51:15', 50),
(57, '2015-09-30 21:51:15', 50),
(58, '2015-09-30 21:51:15', 49),
(59, '2015-09-30 21:51:16', 49),
(60, '2015-09-30 21:51:16', 49),
(61, '2015-09-30 21:51:16', 47),
(62, '2015-09-30 21:51:17', 47),
(63, '2015-09-30 21:51:17', 47),
(64, '2015-09-30 21:51:17', 50),
(65, '2015-09-30 21:51:17', 50),
(66, '2015-09-30 21:51:17', 50),
(67, '2015-09-30 21:51:18', 53),
(68, '2015-09-30 21:51:18', 53),
(69, '2015-09-30 21:51:18', 53),
(70, '2015-09-30 21:51:18', 44),
(71, '2015-09-30 21:51:19', 44),
(72, '2015-09-30 21:51:19', 44),
(73, '2015-09-30 21:51:19', 45),
(74, '2015-09-30 21:51:19', 45),
(75, '2015-09-30 21:51:20', 45),
(76, '2015-09-30 21:51:20', 39),
(77, '2015-09-30 21:51:20', 39),
(78, '2015-09-30 21:51:20', 39),
(79, '2015-09-30 21:51:21', 41),
(80, '2015-09-30 21:51:21', 41),
(81, '2015-09-30 21:51:21', 44),
(82, '2015-09-30 21:51:21', 44),
(83, '2015-09-30 21:51:22', 44),
(84, '2015-09-30 21:51:22', 50),
(85, '2015-09-30 21:51:22', 50),
(86, '2015-09-30 21:51:22', 50),
(87, '2015-09-30 21:51:23', 55),
(88, '2015-09-30 21:51:23', 55),
(89, '2015-09-30 21:51:23', 55),
(90, '2015-09-30 21:51:23', 50),
(91, '2015-09-30 21:51:24', 50),
(92, '2015-09-30 21:51:24', 50),
(93, '2015-09-30 21:51:24', 51),
(94, '2015-09-30 21:51:24', 51),
(95, '2015-09-30 21:51:25', 51),
(96, '2015-09-30 21:51:25', 51),
(97, '2015-09-30 21:51:25', 51),
(98, '2015-09-30 21:51:25', 51),
(99, '2015-09-30 21:51:26', 49),
(100, '2015-09-30 21:51:26', 49),
(101, '2015-09-30 21:51:26', 49),
(102, '2015-09-30 21:51:26', 53),
(103, '2015-09-30 21:51:27', 53),
(104, '2015-09-30 21:51:27', 53),
(105, '2015-09-30 21:51:27', 49),
(106, '2015-09-30 21:51:27', 49),
(107, '2015-09-30 21:51:28', 49),
(108, '2015-09-30 21:51:28', 46),
(109, '2015-09-30 21:51:28', 46),
(110, '2015-09-30 21:51:28', 46),
(111, '2015-09-30 21:51:29', 41),
(112, '2015-09-30 21:51:29', 41),
(113, '2015-09-30 21:51:29', 41),
(114, '2015-09-30 21:51:29', 40),
(115, '2015-09-30 21:51:30', 40),
(116, '2015-09-30 21:51:30', 40),
(117, '2015-09-30 21:51:30', 45),
(118, '2015-09-30 21:51:30', 45),
(119, '2015-09-30 21:51:31', 45),
(120, '2015-09-30 21:51:31', 46),
(121, '2015-09-30 21:51:31', 46),
(122, '2015-09-30 21:51:31', 46),
(123, '2015-09-30 21:51:31', 48),
(124, '2015-09-30 21:51:32', 48),
(125, '2015-09-30 21:51:32', 48);

-- --------------------------------------------------------

--
-- Table structure for table `tub_raw`
--

CREATE TABLE IF NOT EXISTS `tub_raw` (
`id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `decibel` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tub_raw`
--

INSERT INTO `tub_raw` (`id`, `timestamp`, `decibel`) VALUES
(1, '2015-09-30 21:51:01', 53),
(2, '2015-09-30 21:51:01', 53),
(3, '2015-09-30 21:51:01', 53),
(4, '2015-09-30 21:51:02', 53),
(5, '2015-09-30 21:51:02', 53),
(6, '2015-09-30 21:51:02', 50),
(7, '2015-09-30 21:51:03', 50),
(8, '2015-09-30 21:51:03', 50),
(9, '2015-09-30 21:51:03', 53),
(10, '2015-09-30 21:51:03', 53),
(11, '2015-09-30 21:51:04', 53),
(12, '2015-09-30 21:51:04', 53),
(13, '2015-09-30 21:51:04', 53),
(14, '2015-09-30 21:51:04', 53),
(15, '2015-09-30 21:51:05', 43),
(16, '2015-09-30 21:51:05', 43),
(17, '2015-09-30 21:51:05', 43),
(18, '2015-09-30 21:51:05', 45),
(19, '2015-09-30 21:51:06', 45),
(20, '2015-09-30 21:51:06', 45),
(21, '2015-09-30 21:51:06', 54),
(22, '2015-09-30 21:51:06', 54),
(23, '2015-09-30 21:51:07', 54),
(24, '2015-09-30 21:51:07', 51),
(25, '2015-09-30 21:51:07', 51),
(26, '2015-09-30 21:51:07', 51),
(27, '2015-09-30 21:51:08', 55),
(28, '2015-09-30 21:51:08', 55),
(29, '2015-09-30 21:51:08', 55),
(30, '2015-09-30 21:51:08', 54),
(31, '2015-09-30 21:51:09', 54),
(32, '2015-09-30 21:51:09', 54),
(33, '2015-09-30 21:51:09', 48),
(34, '2015-09-30 21:51:09', 48),
(35, '2015-09-30 21:51:09', 48),
(36, '2015-09-30 21:51:10', 54),
(37, '2015-09-30 21:51:10', 54),
(38, '2015-09-30 21:51:10', 54),
(39, '2015-09-30 21:51:10', 60),
(40, '2015-09-30 21:51:11', 60),
(41, '2015-09-30 21:51:11', 60),
(42, '2015-09-30 21:51:11', 59),
(43, '2015-09-30 21:51:11', 59),
(44, '2015-09-30 21:51:12', 59),
(45, '2015-09-30 21:51:12', 50),
(46, '2015-09-30 21:51:13', 51),
(47, '2015-09-30 21:51:13', 51),
(48, '2015-09-30 21:51:13', 51),
(49, '2015-09-30 21:51:13', 55),
(50, '2015-09-30 21:51:14', 55),
(51, '2015-09-30 21:51:14', 55),
(52, '2015-09-30 21:51:14', 48),
(53, '2015-09-30 21:51:14', 48),
(54, '2015-09-30 21:51:14', 48),
(55, '2015-09-30 21:51:15', 50),
(56, '2015-09-30 21:51:15', 50),
(57, '2015-09-30 21:51:15', 50),
(58, '2015-09-30 21:51:15', 49),
(59, '2015-09-30 21:51:16', 49),
(60, '2015-09-30 21:51:16', 49),
(61, '2015-09-30 21:51:16', 47),
(62, '2015-09-30 21:51:16', 47),
(63, '2015-09-30 21:51:17', 47),
(64, '2015-09-30 21:51:17', 50),
(65, '2015-09-30 21:51:17', 50),
(66, '2015-09-30 21:51:17', 50),
(67, '2015-09-30 21:51:18', 53),
(68, '2015-09-30 21:51:18', 53),
(69, '2015-09-30 21:51:18', 53),
(70, '2015-09-30 21:51:18', 44),
(71, '2015-09-30 21:51:19', 44),
(72, '2015-09-30 21:51:19', 44),
(73, '2015-09-30 21:51:19', 45),
(74, '2015-09-30 21:51:19', 45),
(75, '2015-09-30 21:51:20', 45),
(76, '2015-09-30 21:51:20', 39),
(77, '2015-09-30 21:51:20', 39),
(78, '2015-09-30 21:51:20', 39),
(79, '2015-09-30 21:51:21', 41),
(80, '2015-09-30 21:51:21', 41),
(81, '2015-09-30 21:51:21', 44),
(82, '2015-09-30 21:51:21', 44),
(83, '2015-09-30 21:51:22', 44),
(84, '2015-09-30 21:51:22', 50),
(85, '2015-09-30 21:51:22', 50),
(86, '2015-09-30 21:51:22', 50),
(87, '2015-09-30 21:51:23', 55),
(88, '2015-09-30 21:51:23', 55),
(89, '2015-09-30 21:51:23', 55),
(90, '2015-09-30 21:51:23', 50),
(91, '2015-09-30 21:51:24', 50),
(92, '2015-09-30 21:51:24', 50),
(93, '2015-09-30 21:51:24', 51),
(94, '2015-09-30 21:51:24', 51),
(95, '2015-09-30 21:51:25', 51),
(96, '2015-09-30 21:51:25', 51),
(97, '2015-09-30 21:51:25', 51),
(98, '2015-09-30 21:51:25', 51),
(99, '2015-09-30 21:51:26', 49),
(100, '2015-09-30 21:51:26', 49),
(101, '2015-09-30 21:51:26', 49),
(102, '2015-09-30 21:51:26', 53),
(103, '2015-09-30 21:51:27', 53),
(104, '2015-09-30 21:51:27', 53),
(105, '2015-09-30 21:51:27', 49),
(106, '2015-09-30 21:51:27', 49),
(107, '2015-09-30 21:51:28', 49),
(108, '2015-09-30 21:51:28', 46),
(109, '2015-09-30 21:51:28', 46),
(110, '2015-09-30 21:51:28', 46),
(111, '2015-09-30 21:51:29', 41),
(112, '2015-09-30 21:51:29', 41),
(113, '2015-09-30 21:51:29', 41),
(114, '2015-09-30 21:51:29', 40),
(115, '2015-09-30 21:51:30', 40),
(116, '2015-09-30 21:51:30', 40),
(117, '2015-09-30 21:51:30', 45),
(118, '2015-09-30 21:51:30', 45),
(119, '2015-09-30 21:51:30', 45),
(120, '2015-09-30 21:51:31', 46),
(121, '2015-09-30 21:51:31', 46),
(122, '2015-09-30 21:51:31', 46),
(123, '2015-09-30 21:51:31', 48),
(124, '2015-09-30 21:51:32', 48),
(125, '2015-09-30 21:51:32', 48),
(126, '2015-09-30 21:51:32', 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adverage_data`
--
ALTER TABLE `adverage_data`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plug_raw`
--
ALTER TABLE `plug_raw`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tub_raw`
--
ALTER TABLE `tub_raw`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adverage_data`
--
ALTER TABLE `adverage_data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `plug_raw`
--
ALTER TABLE `plug_raw`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `tub_raw`
--
ALTER TABLE `tub_raw`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=126;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;