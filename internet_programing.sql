-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2020 at 03:23 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `internet_programing`
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
  `Designation_url` varchar(255) DEFAULT NULL,
  `Association_Type` varchar(50) DEFAULT NULL,
  `Currently_associated` varchar(30) DEFAULT NULL,
  `Currently_Association_Url` varchar(255) DEFAULT NULL,
  `is_HOD` varchar(30) DEFAULT NULL,
  `HOD_Appointment_Letter` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2015-16`
--

INSERT INTO `2015-16` (`Srno`, `Login`, `Department`, `Highest_Degree_Title`, `Highest_Degree_Url`, `Specialization`, `Phd_Guidance`, `Phd_Received`, `Phd_Received_Url`, `Designation`, `Designation_url`, `Association_Type`, `Currently_associated`, `Currently_Association_Url`, `is_HOD`, `HOD_Appointment_Letter`) VALUES
(1, 'Jayesh@2812', 'INFT', 'PhD', 'D:/IP Mini Project - Personal File System/UPLOADS/others/', 'Network', 'No', 'Yes', 'D:/IP Mini Project - Personal File System/UPLOADS/others/Form.pdf', 'assistant', 'D:/IP Mini Project - Personal File System/UPLOADS/', 'contract', 'Yes', '', 'No', ''),
(1, 'Jayesh@2812', 'INFT', 'PhD', 'D:/IP Mini Project - Personal File System/UPLOADS/others/ban.pdf', 'Network', 'No', 'Yes', 'D:/IP Mini Project - Personal File System/UPLOADS/others/Form.pdf', 'assistant', 'D:/IP Mini Project - Personal File System/UPLOADS/', 'contract', 'Yes', '', 'No', ''),
(1, 'Jayesh@2812', 'INFT', 'PhD', 'D:/IP Mini Project - Personal File System/UPLOADS/others/ban.pdf', 'Network', 'No', 'Yes', 'D:/IP Mini Project - Personal File System/UPLOADS/others/Form.pdf', 'assistant', 'D:/IP Mini Project - Personal File System/UPLOADS/', 'contract', 'Yes', '', 'Yes', 'D:/IP Mini Project - Personal File System/UPLOADS/others/python.pdf'),
(1, '1', 'INFT', '', 'D:/IP Mini Project - Personal File System/UPLOADS/others/', '', 'No', 'No', '', 'Assistant Professor', 'D:/IP Mini Project - Personal File System/UPLOADS/', 'Regular', 'Yes', '', 'No', ''),
(1, '1', 'INFT', '', 'D:/IP Mini Project - Personal File System/UPLOADS/others/', '', 'No', 'No', '', 'Assistant Professor', 'D:/IP Mini Project - Personal File System/UPLOADS/', 'Regular', 'Yes', '', 'No', ''),
(1, '1', 'INFT', '', 'D:/IP Mini Project - Personal File System/UPLOADS/academic/', '', 'No', 'No', '', 'Assistant Professor', 'D:/IP Mini Project - Personal File System/UPLOADS/', 'Regular', 'Yes', '', 'No', ''),
(1, 'Jayesh@2812', 'INFT', 'ghbgh', 'D:/IP Mini Project - Personal File System/UPLOADS/academic/5.pdf', 'ddd', 'No', 'No', '', 'Assistant Professor', 'D:/IP Mini Project - Personal File System/UPLOADS/academic/5.pdf', 'Regular', 'Yes', '', 'No', ''),
(1, 'Jayesh@2812', 'INFT', 'ghbgh', 'D:/IP Mini Project - Personal File System/UPLOADS/academic/5.pdf', 'ddd', 'No', 'No', '', 'Assistant Professor', 'D:/IP Mini Project - Personal File System/UPLOADS/academic/cet acknowlerdgement.pdf', 'Regular', 'Yes', '', 'No', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`Srno`, `Login`, `Organisation_Name`, `From_Date`, `To_Date`, `Releiving_Url`) VALUES
(2, 'Jayesh@2812', 'gfgfgfdgfdgfdg', '2020-06-17', '2020-09-06', 'D:/IP Mini Project - Personal File System/UPLOADS/ExperienceNew LL Acknowledgement.pdf'),
(3, 'Jayesh@2812', 'gfgfgfdgfdgfdg', '2020-06-17', '2020-09-06', 'D:/IP Mini Project - Personal File System/UPLOADS/Experience/New LL Acknowledgement.pdf'),
(4, 'Jayesh@2812', 'gfgfgfdgfdgfdg', '2020-06-17', '2020-09-06', 'D:/IP Mini Project - Personal File System/UPLOADS/Experience/New LL Acknowledgement.pdf'),
(5, 'Jayesh@2812', 'gfgfgfdgfdgfdg', '2020-06-17', '2020-09-06', 'D:/IP Mini Project - Personal File System/UPLOADS/Experience/New LL Acknowledgement.pdf'),
(6, 'Jayesh@2812', 'gfgfgfdgfdgfdg', '2020-06-17', '2020-09-06', 'D:/IP Mini Project - Personal File System/UPLOADS/Experience/New LL Acknowledgement.pdf'),
(7, 'Jayesh@2812', 'gfgfgfdgfdgfdg', '2020-06-17', '2020-09-06', 'D:/IP Mini Project - Personal File System/UPLOADS/Experience/New LL Acknowledgement.pdf'),
(8, 'Jayesh@2812', 'gfgfgfdgfdgfdg', '2020-06-17', '2020-09-06', 'D:/IP Mini Project - Personal File System/UPLOADS/Experience/New LL Acknowledgement.pdf'),
(9, 'Jayesh@2812', 'gfgfgfdgfdgfdg', '2020-06-17', '2020-09-06', 'D:/IP Mini Project - Personal File System/UPLOADS/Experience/New LL Acknowledgement.pdf'),
(10, 'Jayesh@2812', 'gfgfgfdgfdgfdg', '2020-06-17', '2020-09-06', 'D:/IP Mini Project - Personal File System/UPLOADS/Experience/New LL Acknowledgement.pdf'),
(11, 'Jayesh@2812', 'gfgfgfdgfdgfdg', '2020-06-17', '2020-09-06', 'D:/IP Mini Project - Personal File System/UPLOADS/Experience/New LL Acknowledgement.pdf'),
(12, 'Jayesh@2812', 'gfgfgfdgfdgfdg', '2020-06-17', '2020-09-06', 'D:/IP Mini Project - Personal File System/UPLOADS/Experience/New LL Acknowledgement.pdf'),
(13, 'Jayesh@2812', 'hufgyg', '2020-09-03', '2020-09-17', 'D:/IP Mini Project - Personal File System/UPLOADS/Experience/python.pdf'),
(14, 'Jayesh@2812', 'Jayesh', '2020-09-10', '2020-09-24', 'D:/IP Mini Project - Personal File System/UPLOADS/Experience/python.pdf');

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

INSERT INTO `extra_curricular_qualification` (`Srno`, `Login`, `Title`, `From_Date`, `To_Date`, `Marksheet_Url`) VALUES
(1, 'Jayesh@2812', 'ohoihylgfdr', '2020-09-10', '2020-01-16', 'D:/IP Mini Project - Personal File System/UPLOADS/Extra Curricularsyllabus.pdf'),
(2, 'Jayesh@2812', 'ohoihylgfdr', '2020-09-10', '2020-01-16', 'D:/IP Mini Project - Personal File System/UPLOADS/Extra Curricular/syllabus.pdf'),
(3, 'Jayesh@2812', 'ohoihylgfdr', '2020-09-10', '2020-01-16', 'D:/IP Mini Project - Personal File System/UPLOADS/Extra Curricular/syllabus.pdf'),
(4, 'Jayesh@2812', 'ohoihylgfdr', '2020-09-10', '2020-01-16', 'D:/IP Mini Project - Personal File System/UPLOADS/Extra Curricular/syllabus.pdf'),
(5, 'Jayesh@2812', 'ohoihylgfdr', '2020-09-10', '2020-01-16', 'D:/IP Mini Project - Personal File System/UPLOADS/Extra Curricular/syllabus.pdf'),
(6, 'Jayesh@2812', 'ohoihylgfdr', '2020-09-10', '2020-01-16', 'D:/IP Mini Project - Personal File System/UPLOADS/Extra Curricular/syllabus.pdf'),
(7, 'Jayesh@2812', 'ohoihylgfdr', '2020-09-10', '2020-01-16', 'D:/IP Mini Project - Personal File System/UPLOADS/Extra Curricular/syllabus.pdf'),
(8, 'Jayesh@2812', 'ohoihylgfdr', '2020-09-10', '2020-01-16', 'D:/IP Mini Project - Personal File System/UPLOADS/Extra Curricular/syllabus.pdf'),
(9, 'Jayesh@2812', 'ohoihylgfdr', '2020-09-10', '2020-01-16', 'D:/IP Mini Project - Personal File System/UPLOADS/Extra Curricular/syllabus.pdf'),
(10, 'Jayesh@2812', 'ohoihylgfdr', '2020-09-10', '2020-01-16', 'D:/IP Mini Project - Personal File System/UPLOADS/Extra Curricular/syllabus.pdf'),
(11, 'Jayesh@2812', 'ohoihylgfdr', '2020-09-10', '2020-01-16', 'D:/IP Mini Project - Personal File System/UPLOADS/Extra Curricular/syllabus.pdf'),
(12, 'Jayesh@2812', 'rger', '2020-09-18', '2020-09-18', 'D:/IP Mini Project - Personal File System/UPLOADS/Extra Curricular/seat allotment cap 1.pdf'),
(13, 'Jayesh@2812', '', '0000-00-00', '0000-00-00', 'D:/IP Mini Project - Personal File System/UPLOADS/Extra Curricular/seat allotment cap 1.pdf'),
(14, 'Jayesh@2812', '', '0000-00-00', '0000-00-00', 'D:/IP Mini Project - Personal File System/UPLOADS/Extra Curricular/seat allotment cap 1.pdf'),
(15, 'Jayesh@2812', 'gf', '2020-09-25', '2020-09-25', 'D:/IP Mini Project - Personal File System/UPLOADS/Extra Curricular/with income.pdf');

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
('faculty', 'faculty123'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`Srno`, `Login`, `Name`, `Dob`, `Email`, `Pan_No`, `Pan_Url`, `Aadhar_No`, `Aadhar_Url`, `Joining_Date`, `Appointment_Letter_Url`, `Research_Profile_Url`, `Research_Profile_Url_2`, `Research_Profile_Url_3`, `Research_Profile_Url_4`) VALUES
(47, 'Jayesh@2812', 'Jayesh Deorukhkar', '0000-00-00', 'jddeorukhkar@gmail.com', '', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/', '', '', '0000-00-00', '', '', '', '', ''),
(48, 'Jayesh@2812', 'Milind Govind Deorukhkar', '0000-00-00', 'jddeorukhkar@gmail.com', '', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/', '', '', '0000-00-00', '', '', '', '', ''),
(49, 'Jayesh@2812', 'Milind Govind Deorukhkar', '0000-00-00', 'jddeorukhkar@gmail.com', '', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/', '', '', '0000-00-00', '', '', '', '', ''),
(50, 'Jayesh@2812', 'Milind Govind Deorukhkar', '0000-00-00', 'jddeorukhkar@gmail.com', '', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/', '', '', '0000-00-00', '', '', '', '', ''),
(51, 'Jayesh@2812', 'Milind Govind Deorukhkar', '0000-00-00', 'jddeorukhkar@gmail.com', '', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/', '', '', '0000-00-00', '', '', '', '', ''),
(52, 'Jayesh@2812', 'Mitali Govind Deorukhkar', '0000-00-00', 'jddeorukhkar@gmail.com', '', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/', '', '', '0000-00-00', '', '', '', '', ''),
(53, 'Jayesh@2812', 'Jayesh Deorukhkar', '0000-00-00', 'jddeorukhkar@gmail.com', '', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/', '', '', '0000-00-00', '', '', '', '', ''),
(54, 'Jayesh@2812', '', '0000-00-00', '', '', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/', '', '', '0000-00-00', '', '', '', '', ''),
(55, 'Jayesh@2812', '', '0000-00-00', '', '', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/', '', '', '0000-00-00', '', '', '', '', ''),
(56, 'Jayesh@2812', '', '0000-00-00', '', '', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/', '', '', '0000-00-00', '', '', '', '', ''),
(57, 'Jayesh@2812', '', '0000-00-00', '', '', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/', '', '', '0000-00-00', '', '', '', '', ''),
(58, 'Jayesh@2812', '', '0000-00-00', '', '', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/', '', '', '0000-00-00', '', '', '', '', ''),
(59, 'Jayesh@2812', '', '0000-00-00', '', '', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/', '', '', '0000-00-00', '', '', '', '', ''),
(60, 'Jayesh@2812', '', '0000-00-00', '', '', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/', '', '', '0000-00-00', '', '', '', '', ''),
(61, 'Jayesh@2812', '', '0000-00-00', '', '', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/', '', '', '0000-00-00', '', '', '', '', ''),
(62, 'Jayesh@2812', '', '0000-00-00', '', '', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/', '', '', '0000-00-00', '', '', '', '', ''),
(63, 'Jayesh@2812', 'Jayesh Deorukhkar', '2020-09-18', 'jddeorukhkar@gmail.com', '5464', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/python.pdf', '46666', 'python.pdf', '2020-09-12', 'python.pdf', 'fhvhyghikj', 'hgkgugui', 'jgjhjgjgj', 'guyuihbkjkj'),
(64, 'Jayesh@2812', 'fdgdfgfdg', '2020-10-07', 'jddeorukhkar@gmail.com', '987287287287', 'D:/IP Mini Project - Personal File System/UPLOADS/General Docs/ban.pdf', '78528728787', 'python.pdf', '2020-10-14', 'Form.pdf', 'hkjrtyh', 'ertger', 'gerfgvergv', 'dfvdfgvedrfv');

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

INSERT INTO `qualification` (`Srno`, `Login`, `Title`, `From_Date`, `To_Date`, `Marksheet_Url`) VALUES
(1, 'Jayesh@2812', 'Jayesh Deorukhkar', '2020-09-18', '2020-09-28', 'D:/IP Mini Project - Personal File System/UPLOADS/Qualificationsupervised learning 3.pdf'),
(2, 'Jayesh@2812', 'Jayesh Deorukhkar', '2020-09-18', '2020-09-28', 'D:/IP Mini Project - Personal File System/UPLOADS/Qualification/supervised learning 3.pdf'),
(3, 'Jayesh@2812', 'Jayesh Deorukhkar', '2020-09-18', '2020-09-28', 'D:/IP Mini Project - Personal File System/UPLOADS/Qualification/supervised learning 3.pdf'),
(4, 'Jayesh@2812', 'Jayesh Deorukhkar', '2020-09-18', '2020-09-28', 'D:/IP Mini Project - Personal File System/UPLOADS/Qualification/supervised learning 3.pdf'),
(5, 'Jayesh@2812', 'Jayesh Deorukhkar', '2020-09-18', '2020-09-28', 'D:/IP Mini Project - Personal File System/UPLOADS/Qualification/supervised learning 3.pdf'),
(6, 'Jayesh@2812', 'Jayesh Deorukhkar', '2020-09-18', '2020-09-28', 'D:/IP Mini Project - Personal File System/UPLOADS/Qualification/supervised learning 3.pdf'),
(7, 'Jayesh@2812', 'Jayesh Deorukhkar', '2020-09-18', '2020-09-28', 'D:/IP Mini Project - Personal File System/UPLOADS/Qualification/supervised learning 3.pdf'),
(8, 'Jayesh@2812', 'Jayesh Deorukhkar', '2020-09-18', '2020-09-28', 'D:/IP Mini Project - Personal File System/UPLOADS/Qualification/supervised learning 3.pdf'),
(9, 'Jayesh@2812', 'Jayesh Deorukhkar', '2020-09-18', '2020-09-28', 'D:/IP Mini Project - Personal File System/UPLOADS/Qualification/supervised learning 3.pdf'),
(10, 'Jayesh@2812', 'Jayesh Deorukhkar', '2020-09-18', '2020-09-28', 'D:/IP Mini Project - Personal File System/UPLOADS/Qualification/supervised learning 3.pdf'),
(11, 'Jayesh@2812', 'JAyesh', '2020-09-25', '2020-09-24', 'D:/IP Mini Project - Personal File System/UPLOADS/Qualification/jee result.pdf');

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
MODIFY `Srno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `extra_curricular_qualification`
--
ALTER TABLE `extra_curricular_qualification`
MODIFY `Srno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `personal_info`
--
ALTER TABLE `personal_info`
MODIFY `Srno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
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
