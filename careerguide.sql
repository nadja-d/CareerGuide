-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2023 at 07:07 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalogue`
--

CREATE TABLE `catalogue` (
  `CourseID` int(5) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Company` varchar(25) NOT NULL,
  `Instructor` varchar(30) NOT NULL,
  `Platform` varchar(20) NOT NULL,
  `Topic` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catalogue`
--

INSERT INTO `catalogue` (`CourseID`, `Course`, `Company`, `Instructor`, `Platform`, `Topic`) VALUES
(1, 'Start a CV', 'Google Digital Garage', 'Harry Swe', 'Independent', 'Career Help'),
(2, 'Critical Thinking', 'Hubspot', 'Sally Keq', 'Independent', 'Communication'),
(3, 'Technical Interview Prep', 'Girls Who Code', 'Selena Kierre', 'Forage', 'Specialist'),
(4, 'Workplace Preparation', 'ANZ', 'Perrie Said', 'Forage', 'Soft Skills'),
(5, 'Work Ready Skills', 'GradConnection', 'Jennie So', 'Forage', 'Soft Skills'),
(6, 'Working at a Startup', 'Y-Combinator', 'Lisa Ansley', 'Forage', 'Career Help'),
(7, 'Resume Writing Masterclass', 'Forage', 'Olivia Res', 'Forage', 'Career Help'),
(8, 'Professional Resilience', 'Deakin University', 'Sally Welkins', 'Coursera', 'Career Help'),
(9, 'Globalised and Mobile World', 'RMIT University', 'Lisa Kerrie', 'Coursera', 'Soft Skills'),
(10, 'Project Execution', 'Google', 'George Wills', 'Independent', 'Specialist'),
(11, 'SWE Prep', 'IBM', 'Kelly Wills', 'Independent', 'Specialist'),
(12, 'Career Course', 'Wonsulting', 'Jonathan Javier', 'Independent', 'Career Help');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Role` varchar(10) NOT NULL,
  `Occupation` varchar(15) NOT NULL,
  `Company` varchar(15) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Name`, `Username`, `Role`, `Occupation`, `Company`, `Password`) VALUES
(1, 'Nadja', 'nadjad', 'User', 'Student', 'BINUS', 'nadja123'),
(2, 'George', 'george', 'Partner', 'Software Engine', 'Google', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `usercourse`
--

CREATE TABLE `usercourse` (
  `CourseID` int(11) NOT NULL,
  `Course` varchar(40) NOT NULL,
  `Company` varchar(20) NOT NULL,
  `Instructor` varchar(30) NOT NULL,
  `Platform` varchar(30) NOT NULL,
  `Topic` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usercourse`
--

INSERT INTO `usercourse` (`CourseID`, `Course`, `Company`, `Instructor`, `Platform`, `Topic`) VALUES
(12, 'LinkedIn 101', 'LinkedIn Learning', 'Phil Welps', 'Independent', 'Career Help'),
(15, 'SWE Prep', 'IBM', 'George Wills', 'Independent', 'Specialist'),
(17, 'Career Course', 'Wonsulting', 'Jonathan Javier', 'CEO', 'Career Help'),
(19, 'Technical Interview Prep', 'Girls Who Code', 'Selena Kierre', 'Forage', 'Specialist');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalogue`
--
ALTER TABLE `catalogue`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `usercourse`
--
ALTER TABLE `usercourse`
  ADD PRIMARY KEY (`CourseID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalogue`
--
ALTER TABLE `catalogue`
  MODIFY `CourseID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `usercourse`
--
ALTER TABLE `usercourse`
  MODIFY `CourseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
