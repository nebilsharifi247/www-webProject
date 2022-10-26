-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 26, 2022 at 06:55 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.10

-- DEFAULT username admin password 123 and have more user guess 123345
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `post`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
CREATE DATABASE post;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `level_role` int(11) NOT NULL,
  `email` varchar(30) COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `level_role`, `email`) VALUES
(5, 'admin', '202cb962ac59075b964b07152d234b70', 1, 'navidsharefi963@gmail.com'),
(6, 'nebil', '827ccb0eea8a706c4c34a16891f84e7b', 1, 'navidsharefi963@gmail.com'),
(7, 'nebil', '25f9e794323b453885f5181f1b624d0b', 1, 'navidsharefi963@gmail.com'),
(8, 'gues', '25f9e794323b453885f5181f1b624d0b', 1, 'navidsharefi963@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `img` varchar(230) COLLATE utf8_persian_ci NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `user_token` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `text`, `img`, `admin`, `user_token`, `email`) VALUES
(289, 'Meysam', 'This root document.getElementById', '40.jpeg', 0, 'cfcd208495d565ef66e7dff9f98764da', 'af9hans@yandex.com'),
(288, 'Marwa', 'Back end developer', '32.jpeg', 0, 'cfcd208495d565ef66e7dff9f98764da', 'nebiljansharifi@gmail.com'),
(293, 'Nebil sharifi', 'Full stack Developer', '39.jpeg', 0, 'cfcd208495d565ef66e7dff9f98764da', 'nebiljansharifi@gmail.com'),
(291, 'Admin', '123', '22.jpeg', 0, 'cfcd208495d565ef66e7dff9f98764da', 'navidsharefi963@gmail.comeidi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
