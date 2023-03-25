-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2023 at 03:11 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventplanner`
--

-- --------------------------------------------------------

--
-- Table structure for table `planner_list`
--

CREATE TABLE `planner_list` (
  `planners_profile_picture` varchar(255) NOT NULL,
  `planners_email` varchar(30) NOT NULL,
  `planners_password` varchar(8) DEFAULT NULL,
  `planners_name` varchar(30) DEFAULT NULL,
  `planners_phone` varchar(11) NOT NULL,
  `planners_designation` varchar(50) DEFAULT NULL,
  `planners_location` varchar(30) DEFAULT NULL,
  `planners_bio` varchar(100) DEFAULT NULL,
  `planners_experience` varchar(100) DEFAULT NULL,
  `level` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `planner_list`
--

INSERT INTO `planner_list` (`planners_profile_picture`, `planners_email`, `planners_password`, `planners_name`, `planners_phone`, `planners_designation`, `planners_location`, `planners_bio`, `planners_experience`, `level`) VALUES
('\"C:xampphtdocsEventPlannerImagesman1.jpg\"', 'planner1@example.com', 'password', 'John Smith', '0171111111', 'Event Planner', 'Banani', 'I have been planning events for over 10 years.', '10 years of experience in event planning.', '1'),
('\"C:xampphtdocsEventPlannerImagesman2.jpg\"', 'planner3@example.com', 'password', 'Michael Brown', '01722222222', 'Corporate Event Planner', 'Gulshan', 'I have experience planning large corporate events.', '6 years of experience in corporate event planning.', '2'),
('\"C:xampphtdocsEventPlannerImagesman3.jpg\"', 'planner5@example.com', 'password', 'David Lee', '01733333333', 'Birthday Planner', 'Mohakhali', 'I have worked with some of the biggest names in the music industry.', '7 years of experience in concert planning.', '1'),
('\"C:xampphtdocsEventPlannerImagesman4.jpg\"g', 'planner7@example.com', 'password', 'William Johnson', '01744444444', 'Birthday Planner', 'London', 'I am passionate about giving back to the community and creating successful charity events.', '4 years of experience in charity event planning.', '3'),
('\"C:xampphtdocsEventPlannerImagesman5.jpg\"', 'planner9@example.com', 'password', 'Daniel Davis', '01755555555', 'Weeding Planner', 'Gulshan', 'I love bringing filmmakers and audiences together.', '6 years of experience in film festival planning.', '3'),
('\"C:xampphtdocsEventPlannerImageswoman1.jpg\"', 'planner10@example.com', 'password', 'Olivia Lee', '01766666666', 'Catering Planner', 'Badda', 'I have a passion for food and creating unforgettable catering events.', '4 years of experience in catering planning.', '2'),
('\"C:xampphtdocsEventPlannerImageswoman2.jpg\"', 'planner2@example.com', 'password', 'Sarah Johnson', '01777777777', 'Wedding Planner', 'Los Angeles', 'I specialize in creating beautiful and unique weddings.', '8 years of experience in wedding planning.', '1'),
('\"C:xampphtdocsEventPlannerImageswoman3.jpg\"', 'planner4@example.com', 'password', 'Emily Davis', '01788888888', 'Surprise Party Planner', 'Banani', 'I love creating fun and memorable parties for my clients.', '5 years of experience in party planning.', '3'),
('\"C:xampphtdocsEventPlannerImageswoman4.jpg\"g', 'planner6@example.com', 'password', 'Jessica Brown', '01799999999', 'Customized Planner', 'Mohakhali', 'I have a keen eye for design and love creating stunning fashion events.', '3 years of experience in fashion show planning.', '2'),
('\"C:xampphtdocsEventPlannerImageswoman5.jpg\"', 'planner8@example.com', 'password', 'Sophia Smith', '01611111111', 'Home Party Planner', 'Basundhora', 'I have extensive experience in creating successful trade show events.', '9 years of experience in trade show planning.', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `username` varchar(10) NOT NULL,
  `password` varchar(8) DEFAULT NULL,
  `full_name` varchar(30) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `college` varchar(50) DEFAULT NULL,
  `university` varchar(50) DEFAULT NULL,
  `profile_pic` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `planner_list`
--
ALTER TABLE `planner_list`
  ADD PRIMARY KEY (`planners_profile_picture`,`planners_email`,`planners_phone`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
