-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 09, 2017 at 04:46 AM
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
('utkarsh', 'utkarsh_123', 'Utkarsh Agarwal');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `hostel_id` int(5) NOT NULL,
  `hostel_name` varchar(10) NOT NULL,
  `no_of_beds` int(5) NOT NULL,
  `gpa_req` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`hostel_id`, `hostel_name`, `no_of_beds`, `gpa_req`) VALUES
(1, 'hostel1', 50, '6.50'),
(2, 'hostel2', 40, '9.00'),
(3, 'hostel3', 100, '4.00'),
(4, 'hostel4', 80, '8.50'),
(5, 'hostel5', 100, '4.00');

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
  `year` year(4) NOT NULL,
  `course` varchar(20) NOT NULL,
  `gpa` decimal(10,0) NOT NULL,
  `hostel_id` int(5) NOT NULL,
  `room` int(5) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Constraints for table `wardens`
--
ALTER TABLE `wardens`
  ADD CONSTRAINT `hostel_wardens` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`hostel_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
