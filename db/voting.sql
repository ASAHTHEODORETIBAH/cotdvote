-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 23, 2025 at 08:38 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `username`, `password`, `aname`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(2, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `matricule`, `level`, `department`, `photo`, `approve_status`) VALUES
(1, 'Asah Theodore', 'CT22AO23', '400', 'Mechanical Engineering', 'apple.webp', 2),
(2, 'Asah beltus', 'CT22AO22', '400', 'Mechanical Engineering', 'img_1696069300384_1.jpg', 2),
(3, 'Asah beltus bb', 'CT22AO24', '400', 'Mechanical Engineering', 'logo.png', 1),
(4, 'ddrffg', 'CT22A124', '200', 'Computer Engineering', 'IMG-20240110-WA0070.jpg', 1),
(5, 'Teku Ako Karis', 'Douala', '200', 'Electrical Engineering', 'IMG-20240724-WA0026.jpg', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_2nd`
--

INSERT INTO `candidate_2nd` (`id`, `name`, `matricule`, `level`, `department`, `photo`, `approve_status`) VALUES
(1, 'Mayank', 'mayank@gmail.com', '1238846', 'Information Technology', 0x3638343638, 1),
(2, 'Mayank', 'adfi8edhfousah@gmail.com', '65', 'Information Technology', 0x32303035303032, 2),
(3, 'Asah Theodore', 'CT22AO23 ', '200', 'Computer Engineering', 0x696d616765732f494d472d32303234303632332d5741303034342e6a7067, 2),
(4, 'Asah Theodore', 'CT22A124', '300', 'Mechanical Engineering', 0x696d616765732f494d472d32303234303632332d5741303034302e6a7067, 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_3rd`
--

INSERT INTO `candidate_3rd` (`id`, `name`, `matricule`, `level`, `department`, `photo`, `approve_status`) VALUES
(1, 'Mayank', 'mayank@g', '32412', 'Information Technology', 0x33333432, 2),
(2, 'Parinay', 'mayank@g', '6269888', 'Mechanical', 0x36383439353435, 2),
(3, 'Abhay', 'mayank@g', '626887802', 'Information Technology', 0x35323535313532, 1),
(4, 'Asah Theodore', 'CT22AO23', '300', 'Computer Engineering', 0x696d616765732f494d472d32303234303633302d5741303031362e6a7067, 1),
(5, 'Asah Theodore', 'CT22A120', '200', 'Computer Engineering', 0x696d616765732f494d472d32303234303632332d5741303034382e6a7067, 0);

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
(1, 'Asah Theodore tibah', 'CT22AO23 ', '200', 'Computer Engineering', 0x696d616765732f6170706c652e77656270, 1),
(2, 'Asah Theodore', 'CT22A124', '200', 'Computer Engineering', 0x696d616765732f494d472d32303234303131302d5741303037302e6a7067, 1),
(3, 'Asah Theodore', 'CT22A122', '200', 'Computer Engineering', 0x696d616765732f494d472d32303234303131302d5741303037302e6a7067, 1),
(4, 'Asah Theodore', 'CT22A125', '200', 'Computer Engineering', 0x696d616765732f494d472d32303234303131302d5741303037302e6a7067, 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_5th`
--

INSERT INTO `candidate_5th` (`id`, `name`, `matricule`, `level`, `department`, `photo`, `approve_status`) VALUES
(1, 'Asah Theodore', 'CT22A125', '200', 'Computer Engineering', 0x696d616765732f696d675f313639363036393330303338345f312e6a7067, 1),
(2, 'Asah beltus', 'CT22AO23', '200', 'Computer Engineering', 0x696d616765732f6c6f676f2e706e67, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_6th`
--

INSERT INTO `candidate_6th` (`id`, `name`, `matricule`, `level`, `department`, `photo`, `approve_status`) VALUES
(1, 'Asah Theodore', 'CT22A124', '200', 'Computer Engineering', 0x696d616765732f696d675f313639363036393330303338345f312e6a7067, 1),
(2, 'Asah Theodore', 'CT22AO21', '200', 'Computer Engineering', 0x696d616765732f494d472d32303234303131302d5741303037302e6a7067, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_7th`
--

INSERT INTO `candidate_7th` (`id`, `name`, `matricule`, `level`, `department`, `photo`, `approve_status`) VALUES
(1, 'Asah Theodore tibah', 'CT22AO21', '200', 'Computer Engineering', 0x696d616765732f696d675f313639353939373038373436315f332e6a7067, 1),
(2, 'Asah beltus', 'CT22AO23 ', '200', 'Computer Engineering', 0x696d616765732f696d675f313639363036393330303338345f312e6a7067, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_8th`
--

INSERT INTO `candidate_8th` (`id`, `name`, `matricule`, `level`, `department`, `photo`, `approve_status`) VALUES
(1, 'Asah Theodore', 'CT22AO23 ', '200', 'Computer Engineering', 0x696d616765732f494d472d32303234303131302d5741303037302e6a7067, 1),
(2, 'Asah beltus', 'CT22AO21', '200', 'Computer Engineering', 0x696d616765732f696d675f313639363036393330303338345f312e6a7067, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_9th`
--

INSERT INTO `candidate_9th` (`id`, `name`, `matricule`, `level`, `department`, `photo`, `approve_status`) VALUES
(1, 'Asah Theodore tibah', 'CT22A125', '200', 'Computer Engineering', 0x696d616765732f494d472d32303234303131302d5741303037302e6a7067, 1),
(2, 'Asah Theodore tibah', 'CT22A225', '200', 'Computer Engineering', 0x696d616765732f494d472d32303234303131302d5741303037302e6a7067, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(1, 'Aditya', 'adityakumarverified@gmail.com', 'nothing'),
(2, 'Aditya', 'adityakumarverified@gmail.com', 'nothing');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`id`, `name`, `email`, `number`, `rollno`, `suggestion`) VALUES
(1, 'Aditya', 'adityakumarverified@gmail.com', 9898, 651, 'Nothing'),
(2, 'Asah Theodore', 'asahtibah@gmail.com', NULL, NULL, 'hellow'),
(3, 'Asah Theodore', 'asahtibah@gmail.com', NULL, NULL, 'hellow');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `matricule` varchar(8) DEFAULT NULL,
  `candidate` varchar(60) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `matricule`, `candidate`, `reason`) VALUES
(1, 'Asah Theodore', 'asahtibah@gmail.com', 'CT22AO23', 'Asah Theodore', ''),
(2, 'Asah Theodore', 'sahtibah@gmail.com', 'CT22AO19', 'Teku Ako Karis', 'hate you'),
(3, 'Asah Theodore', 'sahtiah@gmail.com', 'CT22AO12', 'Teku Ako Karis', 'hate you');

-- --------------------------------------------------------

--
-- Table structure for table `users_2nd`
--

DROP TABLE IF EXISTS `users_2nd`;
CREATE TABLE IF NOT EXISTS `users_2nd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `matricule` varchar(8) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_2nd`
--

INSERT INTO `users_2nd` (`id`, `name`, `email`, `matricule`, `candidate`, `reason`) VALUES
(1, 'Parinay', 'mayank@gmail.com', 'IT', 'Mayank', 'dsft'),
(2, 'aditya', 'mayank@gmail.com', 'IT', 'Parinay', 'sea'),
(3, 'Mayank', 'mayank@gmail.com', 'IT', 'Mayank', 'nothing'),
(4, 'Asah Theodore', 'asahtibah@gmail.com', 'CT22AO23', 'Mayank', '333'),
(5, 'Asah Theodore', 'aesahtibah@gmail.com', 'CT12AO23', 'Mayank', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_3rd`
--

DROP TABLE IF EXISTS `users_3rd`;
CREATE TABLE IF NOT EXISTS `users_3rd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `matricule` varchar(8) DEFAULT NULL,
  `candidate` varchar(60) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_3rd`
--

INSERT INTO `users_3rd` (`id`, `name`, `email`, `matricule`, `candidate`, `reason`) VALUES
(1, 'Asah Theodore', 'asahtibah@gmail.com', 'CT22AO23', 'Abhay', ''),
(2, 'Asah Ramsi', 'rsah@gmail.com', 'CT22A003', 'Asah Theodore', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `users_4th`
--

DROP TABLE IF EXISTS `users_4th`;
CREATE TABLE IF NOT EXISTS `users_4th` (
  `id` int NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `matricule` varchar(8) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_4th`
--

INSERT INTO `users_4th` (`id`, `name`, `email`, `matricule`, `candidate`, `reason`) VALUES
(0, 'Asah Theodore', 'asahtibah@gmail.com', 'CT22AO23', 'Asah Theodore tibah', 'qwert'),
(0, 'Asah Theodore', 'asahtibh@gmail.com', 'CT22AO27', 'Asah Theodore tibah', 'ckcghj. .jn  j gjjhcgj');

-- --------------------------------------------------------

--
-- Table structure for table `users_5th`
--

DROP TABLE IF EXISTS `users_5th`;
CREATE TABLE IF NOT EXISTS `users_5th` (
  `id` int NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `matricule` varchar(8) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_5th`
--

INSERT INTO `users_5th` (`id`, `name`, `email`, `matricule`, `candidate`, `reason`) VALUES
(0, 'Asah Theodore', 'asahtibah@gmail.com', 'CT22AO29', 'Asah Theodore', 'sdvs vm f  ksdnkbn');

-- --------------------------------------------------------

--
-- Table structure for table `users_6th`
--

DROP TABLE IF EXISTS `users_6th`;
CREATE TABLE IF NOT EXISTS `users_6th` (
  `id` int NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `matricule` varchar(8) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_7th`
--

DROP TABLE IF EXISTS `users_7th`;
CREATE TABLE IF NOT EXISTS `users_7th` (
  `id` int NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `matricule` varchar(8) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_8th`
--

DROP TABLE IF EXISTS `users_8th`;
CREATE TABLE IF NOT EXISTS `users_8th` (
  `id` int NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `matricule` varchar(8) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_9th`
--

DROP TABLE IF EXISTS `users_9th`;
CREATE TABLE IF NOT EXISTS `users_9th` (
  `id` int NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `matricule` varchar(8) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
