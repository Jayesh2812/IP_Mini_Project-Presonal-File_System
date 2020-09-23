-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 09:23 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `id14927714_ip_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `2015-16`
--

CREATE TABLE IF NOT EXISTS `2015-16` (
  `Srno` int(11) NOT NULL,
  `Login` varchar(30) DEFAULT NULL,
  `Department` varchar(30) DEFAULT NULL,
  `Highest_Degree_Title` varchar(255) DEFAULT NULL,
  `Highest_Degree_Url` varchar(255) DEFAULT NULL,
  `Specialization` varchar(255) DEFAULT NULL,
  `Phd_Guidance` varchar(10) DEFAULT NULL,
  `Phd_Received` varchar(10) DEFAULT NULL,
  `Phd_Received_Url` varchar(255) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `Designation_url` varchar(50) DEFAULT NULL,
  `Association_Type` varchar(50) DEFAULT NULL,
  `Currently_associated` varchar(30) DEFAULT NULL,
  `Currently_Association_Url` varchar(255) DEFAULT NULL,
  `is_HOD` varchar(30) DEFAULT NULL,
  `HOD_Appointment_Letter` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `every_year`
--

CREATE TABLE IF NOT EXISTS `every_year` (
  `Srno` int(11) NOT NULL,
  `Login` varchar(30) DEFAULT NULL,
  `Department` varchar(30) DEFAULT NULL,
  `Highest_Degree_Title` varchar(255) DEFAULT NULL,
  `Highest_Degree_Url` varchar(255) DEFAULT NULL,
  `Specialization` varchar(255) DEFAULT NULL,
  `Phd_Guidance` bit(1) DEFAULT NULL,
  `Phd_Received` bit(1) DEFAULT NULL,
  `Phd_Received_Url` varchar(255) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `Designation_url` varchar(50) DEFAULT NULL,
  `Association_Type` varchar(50) DEFAULT NULL,
  `Currently_associated` varchar(30) DEFAULT NULL,
  `Currently_Association_Url` varchar(255) DEFAULT NULL,
  `is_HOD` varchar(30) DEFAULT NULL,
  `HOD_Appointment_Letter` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE IF NOT EXISTS `experience` (
`Srno` int(11) NOT NULL,
  `Login` varchar(30) DEFAULT NULL,
  `Organisation_Name` varchar(255) DEFAULT NULL,
  `From_Date` date DEFAULT NULL,
  `To_Date` date DEFAULT NULL,
  `Releiving_Url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `experience`
--


-- --------------------------------------------------------

--
-- Table structure for table `extra_curricular_qualification`
--

CREATE TABLE IF NOT EXISTS `extra_curricular_qualification` (
`Srno` int(11) NOT NULL,
  `Login` varchar(30) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `From_Date` date DEFAULT NULL,
  `To_Date` date DEFAULT NULL,
  `Marksheet_Url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `extra_curricular_qualification`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_and_password`
--

CREATE TABLE IF NOT EXISTS `login_and_password` (
  `Login` varchar(30) NOT NULL,
  `Password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_and_password`
--

INSERT INTO `login_and_password` (`Login`, `Password`) VALUES
('1', 'jd'),
('Jayesh@2812', 'jd123');

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE IF NOT EXISTS `personal_info` (
`Srno` int(11) NOT NULL,
  `Login` varchar(30) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Dob` date DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Pan_No` varchar(30) DEFAULT NULL,
  `Pan_Url` varchar(255) DEFAULT NULL,
  `Aadhar_No` varchar(30) DEFAULT NULL,
  `Aadhar_Url` varchar(255) DEFAULT NULL,
  `Joining_Date` date DEFAULT NULL,
  `Appointment_Letter_Url` varchar(255) DEFAULT NULL,
  `Research_Profile_Url` varchar(255) DEFAULT NULL,
  `Research_Profile_Url_2` varchar(255) DEFAULT NULL,
  `Research_Profile_Url_3` varchar(255) DEFAULT NULL,
  `Research_Profile_Url_4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;


-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE IF NOT EXISTS `qualification` (
`Srno` int(11) NOT NULL,
  `Login` varchar(30) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `From_Date` date DEFAULT NULL,
  `To_Date` date DEFAULT NULL,
  `Marksheet_Url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `qualification`
--


-- --------------------------------------------------------

--
-- Table structure for table `research_paper`
--

CREATE TABLE IF NOT EXISTS `research_paper` (
`Srno` int(11) NOT NULL,
  `Login` varchar(30) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Name_Of_Journal` varchar(255) DEFAULT NULL,
  `Impact_Factor` varchar(255) DEFAULT NULL,
  `Publication_Year` varchar(255) DEFAULT NULL,
  `Paper_Url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
 ADD PRIMARY KEY (`Srno`), ADD KEY `Login` (`Login`);

--
-- Indexes for table `extra_curricular_qualification`
--
ALTER TABLE `extra_curricular_qualification`
 ADD PRIMARY KEY (`Srno`), ADD KEY `Login` (`Login`);

--
-- Indexes for table `login_and_password`
--
ALTER TABLE `login_and_password`
 ADD PRIMARY KEY (`Login`);

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
 ADD PRIMARY KEY (`Srno`), ADD KEY `Login` (`Login`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
 ADD PRIMARY KEY (`Srno`), ADD KEY `Login` (`Login`);

--
-- Indexes for table `research_paper`
--
ALTER TABLE `research_paper`
 ADD PRIMARY KEY (`Srno`), ADD KEY `Login` (`Login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
MODIFY `Srno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `extra_curricular_qualification`
--
ALTER TABLE `extra_curricular_qualification`
MODIFY `Srno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `personal_info`
--
ALTER TABLE `personal_info`
MODIFY `Srno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `qualification`
--
ALTER TABLE `qualification`
MODIFY `Srno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `research_paper`
--
ALTER TABLE `research_paper`
MODIFY `Srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
ADD CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`Login`) REFERENCES `login_and_password` (`Login`);

--
-- Constraints for table `extra_curricular_qualification`
--
ALTER TABLE `extra_curricular_qualification`
ADD CONSTRAINT `extra_curricular_qualification_ibfk_1` FOREIGN KEY (`Login`) REFERENCES `login_and_password` (`Login`);

--
-- Constraints for table `personal_info`
--
ALTER TABLE `personal_info`
ADD CONSTRAINT `personal_info_ibfk_1` FOREIGN KEY (`Login`) REFERENCES `login_and_password` (`Login`);

--
-- Constraints for table `qualification`
--
ALTER TABLE `qualification`
ADD CONSTRAINT `qualification_ibfk_1` FOREIGN KEY (`Login`) REFERENCES `login_and_password` (`Login`);

--
-- Constraints for table `research_paper`
--
ALTER TABLE `research_paper`
ADD CONSTRAINT `research_paper_ibfk_1` FOREIGN KEY (`Login`) REFERENCES `login_and_password` (`Login`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
