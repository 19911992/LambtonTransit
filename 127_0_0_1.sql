-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 20, 2018 at 06:31 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectbus`
--
CREATE DATABASE IF NOT EXISTS `projectbus` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projectbus`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(1, 'Puneet', 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `busroute`
--

DROP TABLE IF EXISTS `busroute`;
CREATE TABLE IF NOT EXISTS `busroute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `busno` varchar(50) NOT NULL,
  `pickup` varchar(50) NOT NULL,
  `depart` varchar(50) NOT NULL,
  `day` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `busroute`
--

INSERT INTO `busroute` (`id`, `busno`, `pickup`, `depart`, `day`) VALUES
(3, 'L11', 'Charolais Blvd, Near the Beer Store Brampton', 'Lambton College', '1'),
(5, 'L12', 'Square One, Mississauga', 'Lambton College', '1'),
(6, 'L13', 'Lambton College', 'Brampton', '1'),
(7, 'L14', 'Lambton College', 'Mississauga/Brampton', '1'),
(8, 'L15', 'Charolais Blvd, Near the Beer Store Brampton', 'Lambton College', '3'),
(9, 'L16', 'Square One, Mississauga', 'Lambton College', '3'),
(10, 'L17', 'Lambton College', 'Brampton', '3');

-- --------------------------------------------------------

--
-- Table structure for table `bususerticket`
--

DROP TABLE IF EXISTS `bususerticket`;
CREATE TABLE IF NOT EXISTS `bususerticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` varchar(45) NOT NULL,
  `busid` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bususerticket`
--

INSERT INTO `bususerticket` (`id`, `studentid`, `busid`, `date`) VALUES
(2, '2', '24', '19/02/2018'),
(3, '2', '32', '19/02/2018'),
(4, '2', '6', '20/02/2018'),
(5, '2', '10', '20/02/2018');

-- --------------------------------------------------------

--
-- Table structure for table `datecheck`
--

DROP TABLE IF EXISTS `datecheck`;
CREATE TABLE IF NOT EXISTS `datecheck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(50) NOT NULL,
  `busid` varchar(50) NOT NULL,
  `ticket` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datecheck`
--

INSERT INTO `datecheck` (`id`, `date`, `busid`, `ticket`) VALUES
(13, '20/02/2018', '10', '1'),
(12, '20/02/2018', '6', '1'),
(11, '19/02/2018', '32', '1'),
(10, '19/02/2018', '24', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `username` varchar(110) NOT NULL,
  `password` varchar(110) NOT NULL,
  `course` varchar(110) NOT NULL,
  `phone` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `username`, `password`, `course`, `phone`) VALUES
(2, 'Puneet', 'C0709055', '123', 'MADT', '6477104192'),
(3, 'Rahul Teja', 'C0714435', 'C0714435', 'MADT', '4168891009'),
(4, 'Vishal Verma', 'C0714683', 'C0714683', 'MADT', '6472933372');

-- --------------------------------------------------------

--
-- Table structure for table `timebus`
--

DROP TABLE IF EXISTS `timebus`;
CREATE TABLE IF NOT EXISTS `timebus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `busid` varchar(100) NOT NULL,
  `timebus` time NOT NULL,
  `ticket` varchar(100) NOT NULL DEFAULT '60',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timebus`
--

INSERT INTO `timebus` (`id`, `busid`, `timebus`, `ticket`) VALUES
(10, '3', '11:40:00', '60'),
(9, '3', '11:00:00', '60'),
(29, '8', '16:25:00', '60'),
(6, '3', '06:45:00', '60'),
(11, '3', '12:30:00', '60'),
(28, '8', '15:40:00', '60'),
(27, '8', '14:30:00', '60'),
(14, '3', '15:40:00', '60'),
(15, '3', '16:00:00', '60'),
(26, '8', '10:20:00', '60'),
(17, '5', '06:45:00', '60'),
(31, '9', '16:25:00', '60'),
(19, '5', '12:00:00', '60'),
(30, '9', '11:15:00', '60'),
(21, '6', '11:30:00', '60'),
(22, '6', '13:30:00', '60'),
(33, '10', '21:35:00', '60'),
(24, '6', '19:45:00', '60'),
(32, '10', '17:05:00', '60');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
