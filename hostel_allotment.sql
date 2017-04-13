-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 13, 2017 at 08:48 AM
-- Server version: 5.7.17-0ubuntu0.16.04.2
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel_allotment`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `createStudent` (IN `p_reg` BIGINT(15), IN `p_name` VARCHAR(20), IN `p_year` INT(1), IN `p_course` VARCHAR(20), IN `p_gpa` DECIMAL(10,2), IN `p_email` VARCHAR(40), IN `p_phone` INT(15) UNSIGNED, IN `p_gender` VARCHAR(10), IN `p_password` VARCHAR(40))  BEGIN
    
     
        insert into students
        (
            reg_no,
		stud_name,
			year,
			course,
			gpa,
			email,
			phone,
			gender,
			password
        )
        values
        (
            p_reg,
p_name,
p_year,
p_course,
p_gpa,
p_email,
p_phone,
p_gender,
p_password
        );
     
    
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `admin_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `password`, `admin_name`) VALUES
('utkarsh', 'utkarsh', 'Utkarsh Agarwal');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `hostel_id` int(5) NOT NULL,
  `hostel_name` varchar(10) NOT NULL,
  `no_of_beds` int(5) NOT NULL,
  `gpa_req` decimal(10,2) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`hostel_id`, `hostel_name`, `no_of_beds`, `gpa_req`, `gender`) VALUES
(1, 'hostel1', 50, '6.50', 'male'),
(2, 'hostel2', 40, '9.00', 'male'),
(3, 'hostel3', 100, '4.00', 'male'),
(4, 'hostel4', 80, '8.50', 'female'),
(5, 'hostel5', 100, '4.00', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `hostel1`
--

CREATE TABLE `hostel1` (
  `reg_no` bigint(15) NOT NULL,
  `stud_name` varchar(20) NOT NULL,
  `room` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostel2`
--

CREATE TABLE `hostel2` (
  `reg_no` bigint(15) NOT NULL,
  `stud_name` varchar(20) NOT NULL,
  `room` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostel3`
--

CREATE TABLE `hostel3` (
  `reg_no` bigint(15) NOT NULL,
  `stud_name` varchar(20) NOT NULL,
  `room` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostel4`
--

CREATE TABLE `hostel4` (
  `reg_no` bigint(15) NOT NULL,
  `stud_name` varchar(20) NOT NULL,
  `room` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostel5`
--

CREATE TABLE `hostel5` (
  `reg_no` bigint(15) NOT NULL,
  `stud_name` varchar(20) NOT NULL,
  `room` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `reg_no` bigint(15) NOT NULL,
  `stud_name` varchar(20) NOT NULL,
  `year` int(1) NOT NULL,
  `course` varchar(20) NOT NULL,
  `gpa` decimal(10,2) NOT NULL,
  `hostel_id` int(5) DEFAULT NULL,
  `room` int(5) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`reg_no`, `stud_name`, `year`, `course`, `gpa`, `hostel_id`, `room`, `email`, `phone`, `password`, `gender`) VALUES
(45, 'gdrfed', 2003, '354ertfyg', '34.00', 2, 76, 'sedrft', 43567456, 'dcfvg', 'female'),
(3456, 'rdtfg', 2, 'erdtf', '45.00', NULL, NULL, 'rtdfg@hj.com', 2345678, 'gfvdcs', 'female '),
(1234567, 'raav', 2017, 'efdcx', '6.70', NULL, NULL, 'fd@fe.com', 1234567890, 'tfygh', 'female '),
(34565768, 'rdtfg', 2, 'erdtf', '45.00', NULL, NULL, 'rtdfg@hj.com', 2345678, 'ghj', 'male'),
(150905104, 'Raavishu', 2017, 'CSE', '5.70', NULL, NULL, 'coolguy.agarwal365@gmail.com', 987654321, 'utkarsh', 'female '),
(150905112, 'utkarsh agarwal', 2002, 'CSE', '9.00', 2, 515, 'jwnd@f4e.com', 9648055344, 'utkarsh', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `student_preferences`
--

CREATE TABLE `student_preferences` (
  `reg_no` bigint(15) NOT NULL,
  `pref_1` int(5) NOT NULL,
  `pref_2` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_preferences`
--

INSERT INTO `student_preferences` (`reg_no`, `pref_1`, `pref_2`) VALUES
(45, 5, 4),
(150905112, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wardens`
--

CREATE TABLE `wardens` (
  `warden_id` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `hostel_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`hostel_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`reg_no`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `student_preferences`
--
ALTER TABLE `student_preferences`
  ADD PRIMARY KEY (`reg_no`);

--
-- Indexes for table `wardens`
--
ALTER TABLE `wardens`
  ADD PRIMARY KEY (`warden_id`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `student_hostel` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`hostel_id`) ON UPDATE CASCADE;

--
-- Constraints for table `student_preferences`
--
ALTER TABLE `student_preferences`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`reg_no`) REFERENCES `students` (`reg_no`);

--
-- Constraints for table `wardens`
--
ALTER TABLE `wardens`
  ADD CONSTRAINT `hostel_wardens` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`hostel_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
