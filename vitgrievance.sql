-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2017 at 07:01 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vitgrievance`
--

-- --------------------------------------------------------

--
-- Table structure for table `grievance`
--

DROP TABLE IF EXISTS `grievance`;
CREATE TABLE IF NOT EXISTS `grievance` (
  `uid` varchar(20) DEFAULT NULL,
  `description` varchar(4096) DEFAULT NULL,
  `dos` timestamp NULL DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grievance`
--

INSERT INTO `grievance` (`uid`, `description`, `dos`, `subject`, `department`) VALUES
('ddg', 'guys smoking near my room!!!!!!!!!', '2016-03-22 02:32:49', 'smoking near my room', 'hosteldiscipline'),
('ddg', '123456789 my wifi is not working for quite sometime.', '2016-03-22 02:36:20', 'wifi not working ', 'hosteldiscipline'),
('shravya7', 'ggbnyfhk.', '2016-03-22 04:30:28', 'jgkhjgnbkj', 'hostelfood'),
('aalekh123', 'ragging is carried out in hostel', '2017-07-19 17:54:06', 'ragging', 'Ragging Report');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Firstname` varchar(20) DEFAULT NULL,
  `Lastname` varchar(20) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Contactnumber` int(11) DEFAULT NULL,
  `Alternatecontactnumber` int(11) DEFAULT NULL,
  `Hostelblock` char(1) DEFAULT NULL,
  `Roomnumber` int(11) DEFAULT NULL,
  `psw` varchar(20) DEFAULT NULL,
  `repsw` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Firstname`, `Lastname`, `Email`, `Username`, `Contactnumber`, `Alternatecontactnumber`, `Hostelblock`, `Roomnumber`, `psw`, `repsw`) VALUES
('deepanshu', 'Dixit', 'deepanshu.dixit2013@', 'ddg', 2147483647, 1234556667, 'l', 123, '123', '123'),
('poornima', 'Dixit', 'deepanshu.dixit2013@', 'poo', 2147483647, 123456789, 'g', 456, '456', '456'),
('poornima', 'Dixit', 'poornima@ddg.com', 'poornima', 2147483647, 123456789, 'g', 789, 'babban', 'babban'),
('h', 'fg', 'fgf@gmail.com', 'fd', 5555, 55121, '5', 55, '12', '12'),
('shravya', 'purohit', 'shravyapurohit@gmail', 'shravya7', 2147483647, 2147483647, 'L', 407, '7567985626', '7567985626'),
('aalekh', 'srivastava', 'aalekh@abc.com', 'aalekh123', 1234567890, 123457890, 'A', 151, '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `webcomp`
--

DROP TABLE IF EXISTS `webcomp`;
CREATE TABLE IF NOT EXISTS `webcomp` (
  `subject` varchar(50) DEFAULT NULL,
  `description` varchar(4096) DEFAULT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webcomp`
--

INSERT INTO `webcomp` (`subject`, `description`, `email`) VALUES
('site doesnt load', 'i tried but the site wont load!!!!', 'deepanshuiit2013@gmail.com'),
('site doesnt load', 'i tried but the site wont load!!!!', 'deepanshuiit2013@gmail.com'),
('site doesnt load', 'i tried but the site wont load!!!!', 'deepanshuiit2013@gmail.com'),
('site doesnt load', 'i tried but the site wont load!!!!', 'deepanshuiit2013@gmail.com'),
('site doesnt load', 'i tried but the site wont load!!!!', 'deepanshuiit2013@gmail.com'),
('site doesnt load', 'i tried but the site wont load!!!!', 'deepanshuiit2013@gmail.com'),
('ndslkjfnjn', 'hbjfsfknjkfnkjnfsnfkjs', 'tanmayranawat114@gmail.com'),
('hdgvvjkhjfdg', 'gdhfgbjfm\r\n', 'shravyapurohit@gmail.com'),
('abc', 'dec', 'aalekh'),
('food', 'food quality is bad', 'poo');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
