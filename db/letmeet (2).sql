-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2019 at 09:20 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

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

CREATE TABLE `books` (
  `bookid` int(30) NOT NULL,
  `booklang` varchar(30) DEFAULT NULL,
  `bookgenre` varchar(30) DEFAULT NULL,
  `Comics` varchar(30) DEFAULT NULL,
  `booksize` varchar(30) DEFAULT NULL,
  `bookfav` varchar(30) DEFAULT NULL,
  `bookauth` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `booklang`, `bookgenre`, `Comics`, `booksize`, `bookfav`, `bookauth`) VALUES
(10, 'Engish', 'SelfHelp', 'Yes', 'Small', 'Fault in our stars', 'J K Rowling'),
(11, 'Engish', 'SelfHelp', 'Yes', 'Medium', 'Avenger', 'Robin Sharma'),
(12, 'Marathi', 'Biography', 'No', 'Small', 'Sane guruji', 'pl deshpande'),
(13, 'Marathi', 'Educational', 'Yes', 'Small', 'Rich Dad Poor Dad', 'J K Rowling'),
(14, 'Marathi', 'Novel', 'No', 'Big', 'Hari Vigaya', 'Ram'),
(15, 'Engish', 'SelfHelp', 'Yes', 'Small', 'Avenger', 'Robin Sharma'),
(16, 'Engish', 'SelfHelp', 'Yes', 'Small', 'Fault in our stars', 'J K Rowling'),
(17, 'Engish', 'Fiction', 'Yes', 'Small', 'Fault in our stars', 'J K Rowling'),
(18, 'Engish', 'Horror', 'Yes', 'Medium', 'Avenger', 'Robin Sharma'),
(19, 'Engish', 'SelfHelp', 'Yes', 'Small', 'Fault in our stars', 'Robin Sharma');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movieid` int(30) NOT NULL,
  `movielang` varchar(30) DEFAULT NULL,
  `moviegenre` varchar(30) DEFAULT NULL,
  `animation` varchar(30) DEFAULT NULL,
  `movielocation` varchar(30) DEFAULT NULL,
  `favmovie` varchar(30) DEFAULT NULL,
  `favdirector` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieid`, `movielang`, `moviegenre`, `animation`, `movielocation`, `favmovie`, `favdirector`) VALUES
(3, 'Engish', 'SuperHero', 'Yes', 'home', 'Avenger', 'Rohit Sheety'),
(4, 'Engish', 'Fictional', 'No', 'movietheater', 'Avenger', 'Rohit Sheety'),
(5, 'Hindi', 'Action', 'No', 'home', 'Mukaddar ka sikendar', 'subhah ge'),
(6, 'Hindi', 'Biographical', 'Yes', 'movietheater', 'Bahubali', 'Sanja Lella Bhansali'),
(7, 'Hindi', 'Darma', 'No', 'home', 'Bahubali', 'Rohit Sheety'),
(8, 'Engish', 'SuperHero', 'Yes', 'home', 'Avenger', 'Rohit Sheety'),
(9, 'Engish', 'SuperHero', 'Yes', 'movietheater', 'Bahubali', 'Sanja Lella Bhansali'),
(10, 'Engish', 'Comedy', 'Yes', 'home', 'Bahubali', 'Sanja Lella Bhansali'),
(11, 'Hindi', 'Comedy', 'Yes', 'home', 'Bahubali', 'Rohit Sheety'),
(12, 'Hindi', 'Horror', 'Yes', 'home', 'zzzzzz', 'zzzzzz');

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `songid` int(30) NOT NULL,
  `songlang` varchar(30) DEFAULT NULL,
  `songgenre` varchar(30) DEFAULT NULL,
  `potery` varchar(30) DEFAULT NULL,
  `concert` varchar(30) DEFAULT NULL,
  `songfav` varchar(30) DEFAULT NULL,
  `singerfav` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`songid`, `songlang`, `songgenre`, `potery`, `concert`, `songfav`, `singerfav`) VALUES
(3, 'Marathi', 'Classical', 'No', 'No', 'Apan Time Ayagga', 'Ed sherran'),
(4, 'Engish', 'Rap', 'No', 'Frequently', 'Hari Ram', 'Ed sherran'),
(5, 'Hindi', 'Sad', 'No', 'No', 'Salame ishq', 'kishor kumar'),
(6, 'Marathi', 'Devotional', 'Yes', 'No', 'Rama Raghu Nandana', 'Sudir p'),
(7, 'Marathi', 'Devotional', 'Yes', 'onces', 'Hari om', 'lata mangeshkar'),
(8, 'Marathi', 'Classical', 'Yes', 'onces', 'Apan Time Ayagga', 'kishor kumar'),
(9, 'Engish', 'Classical', 'Yes', 'occasionally', 'Apan Time Ayagga', 'kishor kumar'),
(10, 'Hindi', 'Classical', 'Yes', 'Frequently', 'Apan Time Ayagga', 'Ed sherran'),
(11, 'Hindi', 'Romantic', 'Yes', 'Frequently', 'Apan Time Ayagga', 'kishor kumar'),
(12, 'Engish', 'Romantic', 'Yes', 'occasionally', 'Apan Time Ayagga', 'lata mangeshkar');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `sportid` int(30) NOT NULL,
  `sporttype` varchar(30) DEFAULT NULL,
  `sportgenre` varchar(30) DEFAULT NULL,
  `sporttime` varchar(30) DEFAULT NULL,
  `sportwatch` varchar(30) DEFAULT NULL,
  `favsport` varchar(30) DEFAULT NULL,
  `favsportsmen` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`sportid`, `sporttype`, `sportgenre`, `sporttime`, `sportwatch`, `favsport`, `favsportsmen`) VALUES
(3, 'indoor', 'cricket', 'never', 'home', 'Cricket', 'MS Dhoni'),
(4, 'indoor', 'cricket', 'ocassionally', 'stadium', 'Cricket', 'MS Dhoni'),
(5, 'Outdoor', 'cricket', 'ocassionally', 'hotal', 'Cricket', 'Kapil Dev'),
(6, 'Outdoor', 'Kabaddi', 'never', 'stadium', 'Kabbadi', 'MS Dhoni'),
(7, 'Outdoor', '', 'ocassionally', 'home', 'Cricket', 'MS Dhoni'),
(8, 'indoor', 'cricket', 'veryoften', 'home', 'Cricket', 'MS Dhoni'),
(9, 'indoor', 'cricket', 'veryoften', 'home', 'Cricket', 'Kapil Dev'),
(10, 'indoor', 'cricket', 'veryoften', 'stadium', 'Cricket', 'MS Dhoni'),
(11, 'Outdoor', 'hockey', 'ocassionally', 'stadium', 'Kabbadi', 'Kapil Dev'),
(12, 'Outdoor', 'hockey', 'never', 'stadium', 'Cricket', 'MS Dhoni');

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE `travel` (
  `travelid` int(30) NOT NULL,
  `travelpreferrence` varchar(30) DEFAULT NULL,
  `travelplaces` varchar(30) DEFAULT NULL,
  `travellike` varchar(30) DEFAULT NULL,
  `travellocation` varchar(30) DEFAULT NULL,
  `favlocation` varchar(30) DEFAULT NULL,
  `favtraveller` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel`
--

INSERT INTO `travel` (`travelid`, `travelpreferrence`, `travelplaces`, `travellike`, `travellocation`, `favlocation`, `favtraveller`) VALUES
(3, 'alone', 'modern', 'veryoften', 'outsidecountry', 'Pune', 'Drewn Bisky'),
(4, 'friends', 'modern', 'veryoften', 'homecountry', 'Londom', 'dsds'),
(5, 'family', 'nature', 'veryoften', 'homecountry', 'Goa', 'Veena'),
(6, 'family', 'nature', 'ocassionally', 'homecountry', 'Japan', 'Drewn Bisky'),
(7, 'family', 'modern', 'ocassionally', 'homecountry', 'Pune', 'Veena'),
(8, 'alone', 'modern', 'veryoften', 'outsidecountry', 'Pune', 'Drewn Bisky'),
(9, 'alone', 'modern', 'veryoften', 'homecountry', 'Londom', 'Drewn Bisky'),
(10, 'alone', 'modern', 'veryoften', 'homecountry', 'Pune', 'Drewn Bisky'),
(11, 'friends', 'historic', 'ocassionally', 'homecountry', 'Pune', 'Drewn Bisky'),
(12, 'friends', 'romantic', 'ocassionally', 'homecountry', 'Londom', 'Veena');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(40) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(124) NOT NULL,
  `email` varchar(300) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `city` varchar(100) NOT NULL,
  `fblink` varchar(300) NOT NULL,
  `instagramlink` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `fname`, `lname`, `username`, `password`, `email`, `dob`, `gender`, `city`, `fblink`, `instagramlink`) VALUES
(7, 'Sachin', 'Bavdhankar', 'Sachinbhau123', 'Archana1974', 'sachinbavdhankarsb@gmail.com', '1999-08-01', 'Male', 'PUNE', 'https://www.facebook.com/sachin.bhau.1806?ref=bookmarks', 'https://www.instagram.com/sachin.bhau/'),
(8, 'Shubham', 'Pawar', 'Shubham3007', 'Pawar1999', 'pawar3007@gmail.com', '1999-06-15', 'Male', 'PUNE', 'https://www.facebook.com/sachin.bhau.1806?ref=bookmarks', 'https://www.instagram.com/sanket.bhau/'),
(9, 'Chandrakant', 'Bavdhankar', 'Chandu1967', 'Sachin1999', 'chandra492bavdhankar@gmail.com', '1967-12-04', 'Male', 'PUNE', 'https://www.facebook.com/sachin.bhau.1806?ref=bookmarks', 'https://www.instagram.com/sachin.bhau/'),
(10, 'Archana', 'Bavdhankar', 'Archana123', 'Archana1974', 'archanabavdahnakar@gmail.com', '1974-10-29', 'Female', 'PUNE', 'https://www.facebook.com/sachin.bhau.1806?ref=bookmarks', 'https://www.instagram.com/sachin.bhau/'),
(11, 'Usha', 'Bavdhankar', 'Usha1941', 'Usha18091941', 'chandra492bavdhankar@gmail.com', '1941-09-18', 'Female', 'PUNE', 'https://www.facebook.com/sanketbhau.1806?ref=bookmarks', 'https://www.instagram.com/sanket.basashau/'),
(12, 'Govind', 'Poter', 'Govind1999', 'Govind1999', 'sachinbavdhankarsb@gmail.com', '1999-08-01', 'Male', 'PUNE', 'https://www.facebook.com/sachin.bhau.1806?ref=bookmarks', 'https://www.instagram.com/sanket.basashau/');

-- --------------------------------------------------------

--
-- Table structure for table `userchoice`
--

CREATE TABLE `userchoice` (
  `userid` varchar(30) NOT NULL,
  `bookid` varchar(30) DEFAULT NULL,
  `movieid` varchar(30) DEFAULT NULL,
  `musicid` varchar(30) DEFAULT NULL,
  `sportid` varchar(30) DEFAULT NULL,
  `travelid` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userchoice`
--

INSERT INTO `userchoice` (`userid`, `bookid`, `movieid`, `musicid`, `sportid`, `travelid`) VALUES
('10', '13', '6', '6', '6', '6'),
('11', '14', '7', '7', '7', '7'),
('12', '17', '10', '10', '10', '10'),
('7', '10', '3', '3', '3', '3'),
('8', '11', '4', '4', '4', '4'),
('9', '12', '5', '5', '5', '5');

-- --------------------------------------------------------

--
-- Table structure for table `usersmatch`
--

CREATE TABLE `usersmatch` (
  `user1id` int(11) NOT NULL,
  `user2id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersmatch`
--

INSERT INTO `usersmatch` (`user1id`, `user2id`) VALUES
(7, 8),
(8, 7),
(9, 11),
(10, 0),
(11, 9),
(12, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieid`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`songid`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`sportid`);

--
-- Indexes for table `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`travelid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `userchoice`
--
ALTER TABLE `userchoice`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `usersmatch`
--
ALTER TABLE `usersmatch`
  ADD PRIMARY KEY (`user1id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movieid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `songid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `sportid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `travel`
--
ALTER TABLE `travel`
  MODIFY `travelid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
