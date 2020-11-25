-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 15, 2019 at 02:43 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `letmeet`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--
-- Creation: Oct 14, 2019 at 09:03 AM
-- Last update: Oct 15, 2019 at 02:18 PM
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `bookid` int(30) NOT NULL AUTO_INCREMENT,
  `booklang` varchar(30) DEFAULT NULL,
  `bookgenre` varchar(30) DEFAULT NULL,
  `Comics` varchar(30) DEFAULT NULL,
  `booksize` varchar(30) DEFAULT NULL,
  `bookfav` varchar(30) DEFAULT NULL,
  `bookauth` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `booklang`, `bookgenre`, `Comics`, `booksize`, `bookfav`, `bookauth`) VALUES
(10, 'Engish', 'SelfHelp', 'Yes', 'Small', 'Fault in our stars', 'J K Rowling'),
(12, 'Marathi', 'Biography', 'No', 'Small', 'Sane guruji', 'pl deshpande'),
(13, 'Marathi', 'Educational', 'Yes', 'Small', 'Rich Dad Poor Dad', 'J K Rowling'),
(14, 'Marathi', 'Novel', 'No', 'Big', 'Hari Vigaya', 'Ram'),
(17, 'Engish', 'Fiction', 'Yes', 'Small', 'Fault in our stars', 'J K Rowling');

-- --------------------------------------------------------

--
-- Table structure for table `deleted_users`
--
-- Creation: Oct 15, 2019 at 03:23 AM
-- Last update: Oct 15, 2019 at 02:18 PM
--

DROP TABLE IF EXISTS `deleted_users`;
CREATE TABLE IF NOT EXISTS `deleted_users` (
  `userid` int(11) DEFAULT NULL,
  `username` varchar(63) DEFAULT NULL,
  `email` varchar(63) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deleted_users`
--

INSERT INTO `deleted_users` (`userid`, `username`, `email`) VALUES
(8, 'Shubham3007', 'pawar3007@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--
-- Creation: Oct 14, 2019 at 09:03 AM
-- Last update: Oct 15, 2019 at 02:18 PM
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `movieid` int(30) NOT NULL AUTO_INCREMENT,
  `movielang` varchar(30) DEFAULT NULL,
  `moviegenre` varchar(30) DEFAULT NULL,
  `animation` varchar(30) DEFAULT NULL,
  `movielocation` varchar(30) DEFAULT NULL,
  `favmovie` varchar(30) DEFAULT NULL,
  `favdirector` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`movieid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieid`, `movielang`, `moviegenre`, `animation`, `movielocation`, `favmovie`, `favdirector`) VALUES
(3, 'Engish', 'SuperHero', 'Yes', 'home', 'Avenger', 'Rohit Sheety'),
(5, 'Hindi', 'Action', 'No', 'home', 'Mukaddar ka sikendar', 'subhah ge'),
(6, 'Hindi', 'Biographical', 'Yes', 'movietheater', 'Bahubali', 'Sanja Lella Bhansali'),
(7, 'Hindi', 'Darma', 'No', 'home', 'Bahubali', 'Rohit Sheety'),
(10, 'Engish', 'Comedy', 'Yes', 'home', 'Bahubali', 'Sanja Lella Bhansali');

-- --------------------------------------------------------

--
-- Table structure for table `music`
--
-- Creation: Oct 14, 2019 at 09:03 AM
-- Last update: Oct 15, 2019 at 02:00 PM
--

DROP TABLE IF EXISTS `music`;
CREATE TABLE IF NOT EXISTS `music` (
  `songid` int(30) NOT NULL AUTO_INCREMENT,
  `songlang` varchar(30) DEFAULT NULL,
  `songgenre` varchar(30) DEFAULT NULL,
  `potery` varchar(30) DEFAULT NULL,
  `concert` varchar(30) DEFAULT NULL,
  `songfav` varchar(30) DEFAULT NULL,
  `singerfav` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`songid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`songid`, `songlang`, `songgenre`, `potery`, `concert`, `songfav`, `singerfav`) VALUES
(3, 'Marathi', 'Classical', 'No', 'No', 'Apan Time Ayagga', 'Ed sherran'),
(4, 'Engish', 'Rap', 'No', 'Frequently', 'Hari Ram', 'Ed sherran'),
(5, 'Hindi', 'Sad', 'No', 'No', 'Salame ishq', 'kishor kumar'),
(6, 'Marathi', 'Devotional', 'Yes', 'No', 'Rama Raghu Nandana', 'Sudir p'),
(7, 'Marathi', 'Devotional', 'Yes', 'onces', 'Hari om', 'lata mangeshkar'),
(10, 'Hindi', 'Classical', 'Yes', 'Frequently', 'Apan Time Ayagga', 'Ed sherran'),
(16, '', '', '', '', '', ''),
(17, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--
-- Creation: Oct 14, 2019 at 09:03 AM
-- Last update: Oct 15, 2019 at 02:01 PM
--

DROP TABLE IF EXISTS `sports`;
CREATE TABLE IF NOT EXISTS `sports` (
  `sportid` int(30) NOT NULL AUTO_INCREMENT,
  `sporttype` varchar(30) DEFAULT NULL,
  `sportgenre` varchar(30) DEFAULT NULL,
  `sporttime` varchar(30) DEFAULT NULL,
  `sportwatch` varchar(30) DEFAULT NULL,
  `favsport` varchar(30) DEFAULT NULL,
  `favsportsmen` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sportid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`sportid`, `sporttype`, `sportgenre`, `sporttime`, `sportwatch`, `favsport`, `favsportsmen`) VALUES
(3, 'indoor', 'cricket', 'never', 'home', 'Cricket', 'MS Dhoni'),
(4, 'indoor', 'cricket', 'ocassionally', 'stadium', 'Cricket', 'MS Dhoni'),
(5, 'Outdoor', 'cricket', 'ocassionally', 'hotal', 'Cricket', 'Kapil Dev'),
(6, 'Outdoor', 'Kabaddi', 'never', 'stadium', 'Kabbadi', 'MS Dhoni'),
(7, 'Outdoor', '', 'ocassionally', 'home', 'Cricket', 'MS Dhoni'),
(10, 'indoor', 'cricket', 'veryoften', 'stadium', 'Cricket', 'MS Dhoni'),
(16, '', '', '', '', '', ''),
(17, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--
-- Creation: Oct 14, 2019 at 09:03 AM
-- Last update: Oct 15, 2019 at 02:18 PM
--

DROP TABLE IF EXISTS `travel`;
CREATE TABLE IF NOT EXISTS `travel` (
  `travelid` int(30) NOT NULL AUTO_INCREMENT,
  `travelpreferrence` varchar(30) DEFAULT NULL,
  `travelplaces` varchar(30) DEFAULT NULL,
  `travellike` varchar(30) DEFAULT NULL,
  `travellocation` varchar(30) DEFAULT NULL,
  `favlocation` varchar(30) DEFAULT NULL,
  `favtraveller` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`travelid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel`
--

INSERT INTO `travel` (`travelid`, `travelpreferrence`, `travelplaces`, `travellike`, `travellocation`, `favlocation`, `favtraveller`) VALUES
(3, 'alone', 'modern', 'veryoften', 'outsidecountry', 'Pune', 'Drewn Bisky'),
(5, 'family', 'nature', 'veryoften', 'homecountry', 'Goa', 'Veena'),
(6, 'family', 'nature', 'ocassionally', 'homecountry', 'Japan', 'Drewn Bisky'),
(7, 'family', 'modern', 'ocassionally', 'homecountry', 'Pune', 'Veena'),
(10, 'alone', 'modern', 'veryoften', 'homecountry', 'Pune', 'Drewn Bisky');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--
-- Creation: Oct 14, 2019 at 09:09 AM
-- Last update: Oct 15, 2019 at 02:18 PM
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(40) NOT NULL AUTO_INCREMENT,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(300) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `city` varchar(100) NOT NULL,
  `fblink` varchar(300) NOT NULL,
  `instagramlink` varchar(300) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `fname`, `lname`, `username`, `password`, `email`, `dob`, `gender`, `city`, `fblink`, `instagramlink`) VALUES
(7, 'Sachin', 'Bavdhankar', 'Sachinbhau123', 'Archana1974', 'sachinbavdhankarsb@gmail.com', '1999-08-01', 'Male', 'PUNE', 'https://www.facebook.com/sachin.bhau.1806?ref=bookmarks', 'https://www.instagram.com/sachin.bhau/'),
(10, 'Archana', 'Bavdhankar', 'Archana123', 'Archana1974', 'archanabavdahnakar@gmail.com', '1974-10-29', 'Female', 'PUNE', 'https://www.facebook.com/sachin.bhau.1806?ref=bookmarks', 'https://www.instagram.com/sachin.bhau/'),
(11, 'Usha', 'Bavdhankar', 'Usha1941', 'Usha18091941', 'chandra492bavdhankar@gmail.com', '1941-09-18', 'Female', 'PUNE', 'https://www.facebook.com/sanketbhau.1806?ref=bookmarks', 'https://www.instagram.com/sanket.basashau/'),
(12, 'Shubham', 'Pawar', 'Shubhams', 'Pawar3007', 'shubs@mmcoe.edu.in', '1999-03-15', 'Male', 'Pune', 'http://localhost/letmeet/html/Register.html', 'http://localhost/letmeet/html/Register.html');

--
-- Triggers `user`
--
DROP TRIGGER IF EXISTS `del_bkp`;
DELIMITER $$
CREATE TRIGGER `del_bkp` AFTER DELETE ON `user` FOR EACH ROW BEGIN
insert into deleted_users(userid,username,email) value(old.userid,old.username,old.email);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `userchoice`
--
-- Creation: Oct 14, 2019 at 09:03 AM
-- Last update: Oct 15, 2019 at 02:11 PM
--

DROP TABLE IF EXISTS `userchoice`;
CREATE TABLE IF NOT EXISTS `userchoice` (
  `userid` varchar(30) NOT NULL,
  `bookid` varchar(30) DEFAULT NULL,
  `movieid` varchar(30) DEFAULT NULL,
  `musicid` varchar(30) DEFAULT NULL,
  `sportid` varchar(30) DEFAULT NULL,
  `travelid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userchoice`
--

INSERT INTO `userchoice` (`userid`, `bookid`, `movieid`, `musicid`, `sportid`, `travelid`) VALUES
('10', '13', '6', '6', '6', '6'),
('11', '14', '7', '7', '7', '7'),
('12', '17', '10', '10', '10', '10'),
('7', '10', '3', '3', '3', '3'),
('9', '12', '5', '5', '5', '5');

-- --------------------------------------------------------

--
-- Table structure for table `usersmatch`
--
-- Creation: Oct 14, 2019 at 09:03 AM
-- Last update: Oct 15, 2019 at 02:11 PM
--

DROP TABLE IF EXISTS `usersmatch`;
CREATE TABLE IF NOT EXISTS `usersmatch` (
  `user1id` int(11) NOT NULL,
  `user2id` int(11) NOT NULL,
  PRIMARY KEY (`user1id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersmatch`
--

INSERT INTO `usersmatch` (`user1id`, `user2id`) VALUES
(7, 8),
(9, 11),
(10, 0),
(11, 9),
(12, 7);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
