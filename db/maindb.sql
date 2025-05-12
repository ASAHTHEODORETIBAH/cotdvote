-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 07, 2025 at 02:58 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `aname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `username`, `password`, `aname`) VALUES
(1, 'asahtheodore@gmail.com ', 'ymsadlab', 'Theodore ');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
CREATE TABLE IF NOT EXISTS `candidates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `matricule` varchar(8) DEFAULT NULL,
  `level` varchar(9) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `photo` varchar(255) NOT NULL,
  `approve_status` int DEFAULT '0' COMMENT '0 for pending , 1 for approve 2 for reject',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `matricule`, `level`, `department`, `photo`, `approve_status`) VALUES
(1, 'Asah Theodore', 'CT22A023', '400', 'Computer Engineering', 'IMG-20240408-WA0034 (2).jpg', 1),
(2, 'Asah Beltus', 'CT22A024', '300', 'Mechanical Engineering', '1000034017.jpg', 1),
(3, 'Asah BLaise', 'CT22A025', '300', 'Mechanical Engineering', 'IMG-20240630-WA0023.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_2nd`
--

DROP TABLE IF EXISTS `candidate_2nd`;
CREATE TABLE IF NOT EXISTS `candidate_2nd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `matricule` varchar(200) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `photo` blob,
  `approve_status` int DEFAULT '0' COMMENT '0 for pending , 1 for approve 2 for reject',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_2nd`
--

INSERT INTO `candidate_2nd` (`id`, `name`, `matricule`, `level`, `department`, `photo`, `approve_status`) VALUES
(1, 'Asah Theodore', 'CT22A023', '300', 'Electrical Engineering', 0x494d472d32303234303730342d5741303031332e6a7067, 1),
(2, 'Asah Grace', 'CT22A123', '200', 'Computer Engineering', 0x494d472d32303234303732312d5741303038322e6a7067, 1),
(3, 'Franklin Fred ', 'CT22A127', '200', 'Computer Engineering', 0x494d472d32303234303830362d5741303032332e6a7067, 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_3rd`
--

DROP TABLE IF EXISTS `candidate_3rd`;
CREATE TABLE IF NOT EXISTS `candidate_3rd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `matricule` varchar(8) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `department` varchar(60) DEFAULT NULL,
  `photo` blob,
  `approve_status` int DEFAULT '0' COMMENT '	0 for pending , 1 for approve 2 for reject',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_3rd`
--

INSERT INTO `candidate_3rd` (`id`, `name`, `matricule`, `level`, `department`, `photo`, `approve_status`) VALUES
(1, 'Thierry Hans', 'CT22A178', '300', 'Computer Engineering', 0x494d472d32303234303732332d5741303035302e6a7067, 1),
(2, 'Thomas Williams ', 'CT22A171', '200', 'Electrical Engineering', 0x494d472d32303234303732342d5741303032362e6a7067, 1),
(3, 'Asah Ramsi ', 'CT22A123', '400', 'Mechanical Engineering', 0x494d472d32303234303730342d5741303031332e6a7067, 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_4th`
--

DROP TABLE IF EXISTS `candidate_4th`;
CREATE TABLE IF NOT EXISTS `candidate_4th` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `matricule` varchar(200) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `photo` blob,
  `approve_status` int DEFAULT '0' COMMENT '0 for pending , 1 for approve 2 for reject',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_4th`
--

INSERT INTO `candidate_4th` (`id`, `name`, `matricule`, `level`, `department`, `photo`, `approve_status`) VALUES
(1, 'Asah Theodore', 'CT22A023', '300', 'Mechanical Engineering', 0x494d472d32303234303632332d5741303035312e6a7067, 1),
(2, 'Asah beltus', 'CT22A123', '300', 'Computer Engineering', 0x494d472d32303234303632332d5741303034382e6a7067, 1),
(3, 'Asah Julliete', 'CT22A036', '200', 'Computer Engineering', 0x494d472d32303234303732312d5741303038342e6a7067, 1),
(4, 'Asah beltus', 'CT22A178', '200', 'Computer Engineering', 0x494d472d32303234303732312d5741303038342e6a7067, 2);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_5th`
--

DROP TABLE IF EXISTS `candidate_5th`;
CREATE TABLE IF NOT EXISTS `candidate_5th` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `matricule` varchar(200) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `photo` blob,
  `approve_status` int DEFAULT '0' COMMENT '0 for pending , 1 for approve 2 for reject',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_5th`
--

INSERT INTO `candidate_5th` (`id`, `name`, `matricule`, `level`, `department`, `photo`, `approve_status`) VALUES
(1, 'Asah Theodore', 'CT22A123', '400', 'Computer Engineering', 0x494d472d32303234303633302d5741303031362e6a7067, 1),
(2, 'Clinton Dior ', 'CT22A103', '200', 'Mechanical Engineering', 0x494d472d32303234303633302d5741303031382e6a7067, 1),
(3, 'Asah Beltus', 'CT22A130', '300', 'Electrical Engineering', 0x494d472d32303234303830362d5741303032342e6a7067, 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_6th`
--

DROP TABLE IF EXISTS `candidate_6th`;
CREATE TABLE IF NOT EXISTS `candidate_6th` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `matricule` varchar(200) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `photo` blob,
  `approve_status` int DEFAULT '0' COMMENT '0 for pending , 1 for approve 2 for reject',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_7th`
--

DROP TABLE IF EXISTS `candidate_7th`;
CREATE TABLE IF NOT EXISTS `candidate_7th` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `matricule` varchar(200) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `photo` blob,
  `approve_status` int DEFAULT '0' COMMENT '0 for pending , 1 for approve 2 for reject',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_8th`
--

DROP TABLE IF EXISTS `candidate_8th`;
CREATE TABLE IF NOT EXISTS `candidate_8th` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `matricule` varchar(200) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `photo` blob,
  `approve_status` int DEFAULT '0' COMMENT '0 for pending , 1 for approve 2 for reject',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_9th`
--

DROP TABLE IF EXISTS `candidate_9th`;
CREATE TABLE IF NOT EXISTS `candidate_9th` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `matricule` varchar(200) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `photo` blob,
  `approve_status` int DEFAULT '0' COMMENT '0 for pending , 1 for approve 2 for reject',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_9th`
--

INSERT INTO `candidate_9th` (`id`, `name`, `matricule`, `level`, `department`, `photo`, `approve_status`) VALUES
(1, 'Asah Ramsi', 'CT22A023', '200', 'Computer Engineering', 0x494d472d32303234303430382d5741303034302e6a7067, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fees_table`
--

DROP TABLE IF EXISTS `fees_table`;
CREATE TABLE IF NOT EXISTS `fees_table` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `matricule` varchar(8) DEFAULT NULL,
  `fee_status` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=500 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `fees_table`
--

INSERT INTO `fees_table` (`f_id`, `matricule`, `fee_status`) VALUES
(1, 'CT22A001', 'paid'),
(2, 'CT22A002', 'paid'),
(3, 'CT22A003', 'paid'),
(4, 'CT22A004', 'paid'),
(5, 'CT22A005', 'paid'),
(6, 'CT22A006', 'paid'),
(7, 'CT22A007', 'paid'),
(8, 'CT22A008', 'paid'),
(9, 'CT22A009', 'paid'),
(10, 'CT22A010', 'paid'),
(11, 'CT22A011', 'paid'),
(12, 'CT22A012', 'paid'),
(13, 'CT22A013', 'paid'),
(14, 'CT22A014', 'paid'),
(15, 'CT22A015', 'paid'),
(16, 'CT22A016', 'paid'),
(17, 'CT22A017', 'paid'),
(18, 'CT22A018', 'paid'),
(19, 'CT22A019', 'paid'),
(20, 'CT22A020', 'paid'),
(21, 'CT22A021', 'paid'),
(22, 'CT22A022', 'paid'),
(23, 'CT22A023', 'paid'),
(24, 'CT22A024', 'paid'),
(25, 'CT22A025', 'paid'),
(26, 'CT22A026', 'paid'),
(27, 'CT22A027', 'paid'),
(28, 'CT22A028', 'paid'),
(29, 'CT22A029', 'paid'),
(30, 'CT22A030', 'paid'),
(31, 'CT22A031', 'paid'),
(32, 'CT22A032', 'paid'),
(33, 'CT22A033', 'paid'),
(34, 'CT22A034', 'paid'),
(35, 'CT22A035', 'paid'),
(36, 'CT22A036', 'paid'),
(37, 'CT22A037', 'paid'),
(38, 'CT22A038', 'paid'),
(39, 'CT22A039', 'paid'),
(40, 'CT22A040', 'paid'),
(41, 'CT22A041', 'paid'),
(42, 'CT22A042', 'paid'),
(43, 'CT22A043', 'paid'),
(44, 'CT22A044', 'paid'),
(45, 'CT22A045', 'paid'),
(46, 'CT22A046', 'paid'),
(47, 'CT22A047', 'paid'),
(48, 'CT22A048', 'paid'),
(49, 'CT22A049', 'paid'),
(50, 'CT22A050', 'paid'),
(51, 'CT22A051', 'paid'),
(52, 'CT22A052', 'paid'),
(53, 'CT22A053', 'paid'),
(54, 'CT22A054', 'paid'),
(55, 'CT22A055', 'paid'),
(56, 'CT22A056', 'paid'),
(57, 'CT22A057', 'paid'),
(58, 'CT22A058', 'paid'),
(59, 'CT22A059', 'paid'),
(60, 'CT22A060', 'paid'),
(61, 'CT22A061', 'paid'),
(62, 'CT22A062', 'paid'),
(63, 'CT22A063', 'paid'),
(64, 'CT22A064', 'paid'),
(65, 'CT22A065', 'paid'),
(66, 'CT22A066', 'paid'),
(67, 'CT22A067', 'paid'),
(68, 'CT22A068', 'paid'),
(69, 'CT22A069', 'paid'),
(70, 'CT22A070', 'paid'),
(71, 'CT22A071', 'paid'),
(72, 'CT22A072', 'paid'),
(73, 'CT22A073', 'paid'),
(74, 'CT22A074', 'paid'),
(75, 'CT22A075', 'paid'),
(76, 'CT22A076', 'paid'),
(77, 'CT22A077', 'paid'),
(78, 'CT22A078', 'paid'),
(79, 'CT22A079', 'paid'),
(80, 'CT22A080', 'paid'),
(81, 'CT22A081', 'paid'),
(82, 'CT22A082', 'paid'),
(83, 'CT22A083', 'paid'),
(84, 'CT22A084', 'paid'),
(85, 'CT22A085', 'paid'),
(86, 'CT22A086', 'paid'),
(87, 'CT22A087', 'paid'),
(88, 'CT22A088', 'paid'),
(89, 'CT22A089', 'paid'),
(90, 'CT22A090', 'paid'),
(91, 'CT22A091', 'paid'),
(92, 'CT22A092', 'paid'),
(93, 'CT22A093', 'paid'),
(94, 'CT22A094', 'paid'),
(95, 'CT22A095', 'paid'),
(96, 'CT22A096', 'paid'),
(97, 'CT22A097', 'paid'),
(98, 'CT22A098', 'paid'),
(99, 'CT22A099', 'paid'),
(100, 'CT22A100', 'paid'),
(101, 'CT22A101', 'paid'),
(102, 'CT22A102', 'paid'),
(103, 'CT22A103', 'paid'),
(104, 'CT22A104', 'paid'),
(105, 'CT22A105', 'paid'),
(106, 'CT22A106', 'paid'),
(107, 'CT22A107', 'paid'),
(108, 'CT22A108', 'paid'),
(109, 'CT22A109', 'paid'),
(110, 'CT22A110', 'paid'),
(111, 'CT22A111', 'paid'),
(112, 'CT22A112', 'paid'),
(113, 'CT22A113', 'paid'),
(114, 'CT22A114', 'paid'),
(115, 'CT22A115', 'paid'),
(116, 'CT22A116', 'paid'),
(117, 'CT22A117', 'paid'),
(118, 'CT22A118', 'paid'),
(119, 'CT22A119', 'paid'),
(120, 'CT22A120', 'paid'),
(121, 'CT22A121', 'paid'),
(122, 'CT22A122', 'paid'),
(123, 'CT22A123', 'paid'),
(124, 'CT22A124', 'paid'),
(125, 'CT22A125', 'paid'),
(126, 'CT22A126', 'paid'),
(127, 'CT22A127', 'paid'),
(128, 'CT22A128', 'paid'),
(129, 'CT22A129', 'paid'),
(130, 'CT22A130', 'paid'),
(131, 'CT22A131', 'paid'),
(132, 'CT22A132', 'paid'),
(133, 'CT22A133', 'paid'),
(134, 'CT22A134', 'paid'),
(135, 'CT22A135', 'paid'),
(136, 'CT22A136', 'paid'),
(137, 'CT22A137', 'paid'),
(138, 'CT22A138', 'paid'),
(139, 'CT22A139', 'paid'),
(140, 'CT22A140', 'paid'),
(141, 'CT22A141', 'paid'),
(142, 'CT22A142', 'paid'),
(143, 'CT22A143', 'paid'),
(144, 'CT22A144', 'paid'),
(145, 'CT22A145', 'paid'),
(146, 'CT22A146', 'paid'),
(147, 'CT22A147', 'paid'),
(148, 'CT22A148', 'paid'),
(149, 'CT22A149', 'paid'),
(150, 'CT22A150', 'paid'),
(151, 'CT22A151', 'paid'),
(152, 'CT22A152', 'paid'),
(153, 'CT22A153', 'paid'),
(154, 'CT22A154', 'paid'),
(155, 'CT22A155', 'paid'),
(156, 'CT22A156', 'paid'),
(157, 'CT22A157', 'paid'),
(158, 'CT22A158', 'paid'),
(159, 'CT22A159', 'paid'),
(160, 'CT22A160', 'paid'),
(161, 'CT22A161', 'paid'),
(162, 'CT22A162', 'paid'),
(163, 'CT22A163', 'paid'),
(164, 'CT22A164', 'paid'),
(165, 'CT22A165', 'paid'),
(166, 'CT22A166', 'paid'),
(167, 'CT22A167', 'paid'),
(168, 'CT22A168', 'paid'),
(169, 'CT22A169', 'paid'),
(170, 'CT22A170', 'paid'),
(171, 'CT22A171', 'paid'),
(172, 'CT22A172', 'paid'),
(173, 'CT22A173', 'paid'),
(174, 'CT22A174', 'paid'),
(175, 'CT22A175', 'paid'),
(176, 'CT22A176', 'paid'),
(177, 'CT22A177', 'paid'),
(178, 'CT22A178', 'paid'),
(179, 'CT22A179', 'notpaid'),
(180, 'CT22A180', 'notpaid'),
(181, 'CT22A181', 'notpaid'),
(182, 'CT22A182', 'notpaid'),
(183, 'CT22A183', 'notpaid'),
(184, 'CT22A184', 'notpaid'),
(185, 'CT22A185', 'notpaid'),
(186, 'CT22A186', 'notpaid'),
(187, 'CT22A187', 'notpaid'),
(188, 'CT22A188', 'notpaid'),
(189, 'CT22A189', 'notpaid'),
(190, 'CT22A190', 'notpaid'),
(191, 'CT22A191', 'notpaid'),
(192, 'CT22A192', 'notpaid'),
(193, 'CT22A193', 'notpaid'),
(194, 'CT22A194', 'notpaid'),
(195, 'CT22A195', 'notpaid'),
(196, 'CT22A196', 'notpaid'),
(197, 'CT22A197', 'notpaid'),
(198, 'CT22A198', 'notpaid'),
(199, 'CT22A199', 'notpaid'),
(200, 'CT22A200', 'notpaid'),
(201, 'CT22A201', 'notpaid'),
(202, 'CT22A202', 'notpaid'),
(203, 'CT22A203', 'notpaid'),
(204, 'CT22A204', 'notpaid'),
(205, 'CT22A205', 'notpaid'),
(206, 'CT22A206', 'notpaid'),
(207, 'CT22A207', 'notpaid'),
(208, 'CT22A208', 'notpaid'),
(209, 'CT22A209', 'notpaid'),
(210, 'CT22A210', 'notpaid'),
(211, 'CT22A211', 'notpaid'),
(212, 'CT22A212', 'notpaid'),
(213, 'CT22A213', 'notpaid'),
(214, 'CT22A214', 'notpaid'),
(215, 'CT22A215', 'notpaid'),
(216, 'CT22A216', 'notpaid'),
(217, 'CT22A217', 'notpaid'),
(218, 'CT22A218', 'notpaid'),
(219, 'CT22A219', 'notpaid'),
(220, 'CT22A220', 'notpaid'),
(221, 'CT22A221', 'notpaid'),
(222, 'CT22A222', 'notpaid'),
(223, 'CT22A223', 'notpaid'),
(224, 'CT22A224', 'notpaid'),
(225, 'CT22A225', 'notpaid'),
(226, 'CT22A226', 'notpaid'),
(227, 'CT22A227', 'notpaid'),
(228, 'CT22A228', 'notpaid'),
(229, 'CT22A229', 'notpaid'),
(230, 'CT22A230', 'notpaid'),
(231, 'CT22A231', 'notpaid'),
(232, 'CT22A232', 'notpaid'),
(233, 'CT22A233', 'notpaid'),
(234, 'CT22A234', 'notpaid'),
(235, 'CT22A235', 'notpaid'),
(236, 'CT22A236', 'notpaid'),
(237, 'CT22A237', 'notpaid'),
(238, 'CT22A238', 'notpaid'),
(239, 'CT22A239', 'notpaid'),
(240, 'CT22A240', 'notpaid'),
(241, 'CT22A241', 'notpaid'),
(242, 'CT22A242', 'notpaid'),
(243, 'CT22A243', 'notpaid'),
(244, 'CT22A244', 'notpaid'),
(245, 'CT22A245', 'notpaid'),
(246, 'CT22A246', 'notpaid'),
(247, 'CT22A247', 'notpaid'),
(248, 'CT22A248', 'notpaid'),
(249, 'CT22A249', 'notpaid'),
(250, 'CT23A001', 'notpaid'),
(251, 'CT23A002', 'notpaid'),
(252, 'CT23A003', 'notpaid'),
(253, 'CT23A004', 'notpaid'),
(254, 'CT23A005', 'notpaid'),
(255, 'CT23A006', 'notpaid'),
(256, 'CT23A007', 'notpaid'),
(257, 'CT23A008', 'notpaid'),
(258, 'CT23A009', 'notpaid'),
(259, 'CT23A010', 'notpaid'),
(260, 'CT23A011', 'notpaid'),
(261, 'CT23A012', 'notpaid'),
(262, 'CT23A013', 'notpaid'),
(263, 'CT23A014', 'notpaid'),
(264, 'CT23A015', 'notpaid'),
(265, 'CT23A016', 'notpaid'),
(266, 'CT23A017', 'paid'),
(267, 'CT23A018', 'paid'),
(268, 'CT23A019', 'paid'),
(269, 'CT23A020', 'paid'),
(270, 'CT23A021', 'paid'),
(271, 'CT23A022', 'paid'),
(272, 'CT23A023', 'paid'),
(273, 'CT23A024', 'paid'),
(274, 'CT23A025', 'paid'),
(275, 'CT23A026', 'paid'),
(276, 'CT23A027', 'paid'),
(277, 'CT23A028', 'paid'),
(278, 'CT23A029', 'paid'),
(279, 'CT23A030', 'paid'),
(280, 'CT23A031', 'paid'),
(281, 'CT23A032', 'paid'),
(282, 'CT23A033', 'paid'),
(283, 'CT23A034', 'paid'),
(284, 'CT23A035', 'notpaid'),
(285, 'CT23A036', 'notpaid'),
(286, 'CT23A037', 'notpaid'),
(287, 'CT23A038', 'notpaid'),
(288, 'CT23A039', 'notpaid'),
(289, 'CT23A040', 'notpaid'),
(290, 'CT23A041', 'notpaid'),
(291, 'CT23A042', 'notpaid'),
(292, 'CT23A043', 'notpaid'),
(293, 'CT23A044', 'notpaid'),
(294, 'CT23A045', 'notpaid'),
(295, 'CT23A046', 'notpaid'),
(296, 'CT23A047', 'notpaid'),
(297, 'CT23A048', 'notpaid'),
(298, 'CT23A049', 'paid'),
(299, 'CT23A050', 'paid'),
(300, 'CT23A051', 'paid'),
(301, 'CT23A052', 'paid'),
(302, 'CT23A053', 'paid'),
(303, 'CT23A054', 'paid'),
(304, 'CT23A055', 'paid'),
(305, 'CT23A056', 'paid'),
(306, 'CT23A057', 'paid'),
(307, 'CT23A058', 'paid'),
(308, 'CT23A059', 'paid'),
(309, 'CT23A060', 'paid'),
(310, 'CT23A061', 'paid'),
(311, 'CT23A062', 'paid'),
(312, 'CT23A063', 'paid'),
(313, 'CT23A064', 'paid'),
(314, 'CT23A065', 'paid'),
(315, 'CT23A066', 'notpaid'),
(316, 'CT23A067', 'notpaid'),
(317, 'CT23A068', 'notpaid'),
(318, 'CT23A069', 'notpaid'),
(319, 'CT23A070', 'notpaid'),
(320, 'CT23A071', 'notpaid'),
(321, 'CT23A072', 'notpaid'),
(322, 'CT23A073', 'notpaid'),
(323, 'CT23A074', 'notpaid'),
(324, 'CT23A075', 'notpaid'),
(325, 'CT23A076', 'notpaid'),
(326, 'CT23A077', 'notpaid'),
(327, 'CT23A078', 'notpaid'),
(328, 'CT23A079', 'notpaid'),
(329, 'CT23A080', 'notpaid'),
(330, 'CT23A081', 'notpaid'),
(331, 'CT23A082', 'notpaid'),
(332, 'CT23A083', 'notpaid'),
(333, 'CT23A084', 'notpaid'),
(334, 'CT23A085', 'notpaid'),
(335, 'CT23A086', 'notpaid'),
(336, 'CT23A087', 'notpaid'),
(337, 'CT23A088', 'notpaid'),
(338, 'CT23A089', 'notpaid'),
(339, 'CT23A090', 'notpaid'),
(340, 'CT23A091', 'notpaid'),
(341, 'CT23A092', 'paid'),
(342, 'CT23A093', 'paid'),
(343, 'CT23A094', 'paid'),
(344, 'CT23A095', 'paid'),
(345, 'CT23A096', 'paid'),
(346, 'CT23A097', 'paid'),
(347, 'CT23A098', 'paid'),
(348, 'CT23A099', 'paid'),
(349, 'CT23A100', 'paid'),
(350, 'CT23A101', 'paid'),
(351, 'CT23A102', 'paid'),
(352, 'CT23A103', 'paid'),
(353, 'CT23A104', 'paid'),
(354, 'CT23A105', 'paid'),
(355, 'CT23A106', 'paid'),
(356, 'CT23A107', 'paid'),
(357, 'CT23A108', 'paid'),
(358, 'CT23A109', 'paid'),
(359, 'CT23A110', 'paid'),
(360, 'CT23A111', 'paid'),
(361, 'CT23A112', 'paid'),
(362, 'CT23A113', 'paid'),
(363, 'CT23A114', 'notpaid'),
(364, 'CT23A115', 'notpaid'),
(365, 'CT23A116', 'notpaid'),
(366, 'CT23A117', 'notpaid'),
(367, 'CT23A118', 'notpaid'),
(368, 'CT23A119', 'notpaid'),
(369, 'CT23A120', 'notpaid'),
(370, 'CT23A121', 'notpaid'),
(371, 'CT23A122', 'notpaid'),
(372, 'CT23A123', 'notpaid'),
(373, 'CT23A124', 'notpaid'),
(374, 'CT23A125', 'notpaid'),
(375, 'CT23A126', 'notpaid'),
(376, 'CT23A127', 'notpaid'),
(377, 'CT23A128', 'notpaid'),
(378, 'CT23A129', 'notpaid'),
(379, 'CT23A130', 'notpaid'),
(380, 'CT23A131', 'notpaid'),
(381, 'CT23A132', 'notpaid'),
(382, 'CT23A133', 'notpaid'),
(383, 'CT23A134', 'notpaid'),
(384, 'CT23A135', 'notpaid'),
(385, 'CT23A136', 'notpaid'),
(386, 'CT23A137', 'notpaid'),
(387, 'CT23A138', 'notpaid'),
(388, 'CT23A139', 'paid'),
(389, 'CT23A140', 'paid'),
(390, 'CT23A141', 'paid'),
(391, 'CT23A142', 'paid'),
(392, 'CT23A143', 'paid'),
(393, 'CT23A144', 'paid'),
(394, 'CT23A145', 'paid'),
(395, 'CT23A146', 'paid'),
(396, 'CT23A147', 'paid'),
(397, 'CT23A148', 'paid'),
(398, 'CT23A149', 'paid'),
(399, 'CT23A150', 'paid'),
(400, 'CT23A151', 'paid'),
(401, 'CT23A152', 'paid'),
(402, 'CT23A153', 'paid'),
(403, 'CT23A154', 'paid'),
(404, 'CT23A155', 'paid'),
(405, 'CT23A156', 'paid'),
(406, 'CT23A157', 'paid'),
(407, 'CT23A158', 'paid'),
(408, 'CT23A159', 'paid'),
(409, 'CT23A160', 'notpaid'),
(410, 'CT23A161', 'notpaid'),
(411, 'CT23A162', 'notpaid'),
(412, 'CT23A163', 'notpaid'),
(413, 'CT23A164', 'notpaid'),
(414, 'CT23A165', 'notpaid'),
(415, 'CT23A166', 'notpaid'),
(416, 'CT23A167', 'notpaid'),
(417, 'CT23A168', 'notpaid'),
(418, 'CT23A169', 'notpaid'),
(419, 'CT23A170', 'notpaid'),
(420, 'CT23A171', 'notpaid'),
(421, 'CT23A172', 'notpaid'),
(422, 'CT23A173', 'paid'),
(423, 'CT23A174', 'paid'),
(424, 'CT23A175', 'paid'),
(425, 'CT23A176', 'paid'),
(426, 'CT23A177', 'paid'),
(427, 'CT23A178', 'paid'),
(428, 'CT23A179', 'paid'),
(429, 'CT23A180', 'paid'),
(430, 'CT23A181', 'paid'),
(431, 'CT23A182', 'paid'),
(432, 'CT23A183', 'paid'),
(433, 'CT23A184', 'paid'),
(434, 'CT23A185', 'paid'),
(435, 'CT23A186', 'paid'),
(436, 'CT23A187', 'paid'),
(437, 'CT23A188', 'paid'),
(438, 'CT23A189', 'paid'),
(439, 'CT23A190', 'paid'),
(440, 'CT23A191', 'paid'),
(441, 'CT23A192', 'paid'),
(442, 'CT23A193', 'paid'),
(443, 'CT23A194', 'paid'),
(444, 'CT23A195', 'paid'),
(445, 'CT23A196', 'notpaid'),
(446, 'CT23A197', 'notpaid'),
(447, 'CT23A198', 'notpaid'),
(448, 'CT23A199', 'notpaid'),
(449, 'CT23A200', 'notpaid'),
(450, 'CT23A201', 'notpaid'),
(451, 'CT23A202', 'notpaid'),
(452, 'CT23A203', 'notpaid'),
(453, 'CT23A204', 'notpaid'),
(454, 'CT23A205', 'notpaid'),
(455, 'CT23A206', 'notpaid'),
(456, 'CT23A207', 'notpaid'),
(457, 'CT23A208', 'notpaid'),
(458, 'CT23A209', 'notpaid'),
(459, 'CT23A210', 'notpaid'),
(460, 'CT23A211', 'notpaid'),
(461, 'CT23A212', 'notpaid'),
(462, 'CT23A213', 'notpaid'),
(463, 'CT23A214', 'notpaid'),
(464, 'CT23A215', 'notpaid'),
(465, 'CT23A216', 'notpaid'),
(466, 'CT23A217', 'paid'),
(467, 'CT23A218', 'paid'),
(468, 'CT23A219', 'paid'),
(469, 'CT23A220', 'paid'),
(470, 'CT23A221', 'paid'),
(471, 'CT23A222', 'paid'),
(472, 'CT23A223', 'paid'),
(473, 'CT23A224', 'paid'),
(474, 'CT23A225', 'paid'),
(475, 'CT23A226', 'paid'),
(476, 'CT23A227', 'paid'),
(477, 'CT23A228', 'paid'),
(478, 'CT23A229', 'paid'),
(479, 'CT23A230', 'paid'),
(480, 'CT23A231', 'paid'),
(481, 'CT23A232', 'paid'),
(482, 'CT23A233', 'paid'),
(483, 'CT23A234', 'paid'),
(484, 'CT23A235', 'paid'),
(485, 'CT23A236', 'paid'),
(486, 'CT23A237', 'paid'),
(487, 'CT23A238', 'paid'),
(488, 'CT23A239', 'paid'),
(489, 'CT23A240', 'paid'),
(490, 'CT23A241', 'paid'),
(491, 'CT23A242', 'paid'),
(492, 'CT23A243', 'paid'),
(493, 'CT23A244', 'paid'),
(494, 'CT23A245', 'paid'),
(495, 'CT23A246', 'paid'),
(496, 'CT23A247', 'paid'),
(497, 'CT23A248', 'paid'),
(498, 'CT23A249', 'paid'),
(499, 'CT23A250', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Matricule` varchar(8) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Department` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Level` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `Name`, `Matricule`, `Email`, `Department`, `Level`, `Password`) VALUES
(1, 'Asah Theodore', 'CT22A023', 'asahtheodore@gmail.com', 'Computer Engineering', '400', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

DROP TABLE IF EXISTS `suggestion`;
CREATE TABLE IF NOT EXISTS `suggestion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `number` bigint DEFAULT NULL,
  `rollno` bigint DEFAULT NULL,
  `suggestion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricule` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `candidate` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `matricule`, `candidate`) VALUES
(1, 'CT22A023 ', 'Asah Beltus'),
(2, 'CT22A123 ', 'Asah Beltus'),
(3, 'CT22A177', 'Asah BLaise');

-- --------------------------------------------------------

--
-- Table structure for table `users_2nd`
--

DROP TABLE IF EXISTS `users_2nd`;
CREATE TABLE IF NOT EXISTS `users_2nd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricule` varchar(8) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_2nd`
--

INSERT INTO `users_2nd` (`id`, `matricule`, `candidate`) VALUES
(1, 'CT22A023', 'Franklin Fred'),
(2, 'CT22A123', 'Asah Grace'),
(3, 'CT22A097', 'Franklin Fred');

-- --------------------------------------------------------

--
-- Table structure for table `users_3rd`
--

DROP TABLE IF EXISTS `users_3rd`;
CREATE TABLE IF NOT EXISTS `users_3rd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricule` varchar(8) DEFAULT NULL,
  `candidate` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_4th`
--

DROP TABLE IF EXISTS `users_4th`;
CREATE TABLE IF NOT EXISTS `users_4th` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricule` varchar(8) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_4th`
--

INSERT INTO `users_4th` (`id`, `matricule`, `candidate`) VALUES
(1, 'CT22A023', 'Asah beltus');

-- --------------------------------------------------------

--
-- Table structure for table `users_5th`
--

DROP TABLE IF EXISTS `users_5th`;
CREATE TABLE IF NOT EXISTS `users_5th` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricule` varchar(8) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_5th`
--

INSERT INTO `users_5th` (`id`, `matricule`, `candidate`) VALUES
(1, 'CT22A023', 'Asah Beltus');

-- --------------------------------------------------------

--
-- Table structure for table `users_6th`
--

DROP TABLE IF EXISTS `users_6th`;
CREATE TABLE IF NOT EXISTS `users_6th` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricule` varchar(8) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_7th`
--

DROP TABLE IF EXISTS `users_7th`;
CREATE TABLE IF NOT EXISTS `users_7th` (
  `id` int NOT NULL,
  `matricule` varchar(8) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_8th`
--

DROP TABLE IF EXISTS `users_8th`;
CREATE TABLE IF NOT EXISTS `users_8th` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricule` varchar(8) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_9th`
--

DROP TABLE IF EXISTS `users_9th`;
CREATE TABLE IF NOT EXISTS `users_9th` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricule` varchar(8) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
