-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 26, 2022 at 03:22 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--
CREATE DATABASE IF NOT EXISTS `app` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `app`;

-- --------------------------------------------------------

--
-- Table structure for table `Data`
--

CREATE TABLE `Data` (
  `Id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Data`
--

INSERT INTO `Data` (`Id`, `country`, `username`, `action`) VALUES
(1, 'Afghanistan ', 'Nebio', 'Delete'),
(2, 'Afghanistan ', 'AliJan', 'Save'),
(4, 'Yux', 'admin', 'G'),
(5, 'Afternoon ', 'Nebil ', 'Dudu'),
(6, 'Jj', 'admin', 'Uu'),
(7, 'Jj', 'admin', 'Uu');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` int(255) NOT NULL,
  `First_name` varchar(40) NOT NULL,
  `Last_name` varchar(40) NOT NULL,
  `Birth_date` date NOT NULL,
  `Points` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID`, `First_name`, `Last_name`, `Birth_date`, `Points`) VALUES
(1, 'Nebil', 'Sharifi', '2021-01-20', '24.00'),
(2, 'sara', 'Sharifi', '2021-01-20', '28.00'),
(3, 'kara', 'Sharifi', '2021-01-20', '28.00'),
(5, 'ahma', 'Soarifi', '2021-01-20', '200.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Data`
--
ALTER TABLE `Data`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`);
--
-- Database: `Blog`
--
CREATE DATABASE IF NOT EXISTS `Blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_persian_ci;
USE `Blog`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `Id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_persian_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`Id`, `title`, `text`, `username`) VALUES
(1, 'آشنایی با سخت افزار', 'سخت افزار نمونه اجزای فیزیکی یک کامپیوتر هستند. ', 'نبیل شریفی');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `Car_parts`
--
CREATE DATABASE IF NOT EXISTS `Car_parts` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Car_parts`;

-- --------------------------------------------------------

--
-- Table structure for table `Parts_information`
--

CREATE TABLE `Parts_information` (
  `ID` int(11) NOT NULL,
  `Tipat_caver` varchar(50) NOT NULL,
  `Came_shaft` varchar(50) NOT NULL,
  `Caram_saft` varchar(50) NOT NULL,
  `Daex` varchar(50) NOT NULL,
  `Calach` varchar(50) NOT NULL,
  `Firival` varchar(50) NOT NULL,
  `Girbax` varchar(50) NOT NULL,
  `Panjbolt` varchar(50) NOT NULL,
  `Aghzaz` varchar(50) NOT NULL,
  `Anglite` varchar(50) NOT NULL,
  `Wali_pamp` varchar(50) NOT NULL,
  `Jali_gairbox` varchar(50) NOT NULL,
  `Pashtam_gairbox` varchar(50) NOT NULL,
  `Tasma_mashin` varchar(50) NOT NULL,
  `Zanjir_tasma` varchar(50) NOT NULL,
  `PRICE` decimal(3,2) DEFAULT 0.00,
  `Points` int(11) DEFAULT 20
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Parts_information`
--
ALTER TABLE `Parts_information`
  ADD PRIMARY KEY (`ID`);
--
-- Database: `Management_Transport`
--
CREATE DATABASE IF NOT EXISTS `Management_Transport` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Management_Transport`;

-- --------------------------------------------------------

--
-- Table structure for table `Emplyee`
--

CREATE TABLE `Emplyee` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `F_name` varchar(20) NOT NULL,
  `L_Name` varchar(20) NOT NULL,
  `Province` varchar(20) NOT NULL,
  `Adress` text NOT NULL,
  `Gender` varchar(15) NOT NULL,
  `Salary` int(15) NOT NULL,
  `Phone_No` varchar(14) NOT NULL,
  `Language` varchar(15) NOT NULL,
  `DOB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Emplyee`
--
ALTER TABLE `Emplyee`
  ADD PRIMARY KEY (`ID`);
--
-- Database: `mangment_hotel_sysyem`
--
CREATE DATABASE IF NOT EXISTS `mangment_hotel_sysyem` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mangment_hotel_sysyem`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` int(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `room_number` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);
--
-- Database: `payrol_mis`
--
CREATE DATABASE IF NOT EXISTS `payrol_mis` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `payrol_mis`;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_employes`
--

CREATE TABLE `attendance_employes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `presentDay` tinyint(1) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `e_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance_employes`
--

INSERT INTO `attendance_employes` (`id`, `presentDay`, `date`, `e_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-10-01', 3, NULL, '2022-10-04 13:15:19', '2022-10-04 15:01:27'),
(2, 0, '2022-10-02', 3, '2022-10-04 15:02:38', '2022-10-04 13:45:05', '2022-10-04 15:02:38'),
(4, 0, '2022-10-02', 3, NULL, '2022-10-05 22:56:25', '2022-10-05 22:56:25'),
(5, 1, '2022-10-03', 3, NULL, '2022-10-05 22:56:39', '2022-10-05 22:56:39'),
(6, 0, '2022-10-04', 3, NULL, '2022-10-05 22:56:48', '2022-10-05 22:56:48'),
(7, 0, '2022-10-05', 3, NULL, '2022-10-05 22:56:56', '2022-10-05 22:56:56'),
(8, 1, '2022-10-06', 3, NULL, '2022-10-05 22:57:08', '2022-10-05 22:57:08'),
(9, 1, '2022-10-07', 3, NULL, '2022-10-05 22:57:18', '2022-10-05 22:57:18'),
(10, 1, '2022-10-08', 3, NULL, '2022-10-05 22:57:33', '2022-10-05 22:57:33'),
(11, 1, '2022-10-09', 3, NULL, '2022-10-05 22:57:42', '2022-10-05 22:57:42'),
(12, 1, '2022-10-10', 3, NULL, '2022-10-05 22:57:51', '2022-10-05 22:57:51'),
(13, 0, '2022-10-11', 3, NULL, '2022-10-06 02:51:19', '2022-10-06 02:51:19'),
(14, 1, '2022-10-11', 4, NULL, '2022-10-06 02:51:19', '2022-10-06 02:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `employes`
--

CREATE TABLE `employes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employe_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employe_lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employe_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `age` smallint(6) DEFAULT NULL,
  `country_emp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_emp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employe_tell` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FieldJob_fk_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employes`
--

INSERT INTO `employes` (`id`, `employe_name`, `employe_lastname`, `employe_email`, `image`, `date`, `age`, `country_emp`, `address_emp`, `employe_tell`, `FieldJob_fk_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'ali', 'mohammadi', 'ali@gmail.com', '1664862093.jpg', '1996-10-01', 55, 'iran', 'asdasd', '7657656', 1, NULL, '2022-10-04 01:03:01', '2022-10-06 01:35:30'),
(4, 'momin', 'shahi', 'momin@gmail.com', '1665040847.png', '2022-10-06', 19, 'iran', 'tehran metro', '87778', 1, NULL, '2022-10-06 02:50:47', '2022-10-06 02:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_jobs`
--

CREATE TABLE `field_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Field_Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Field_Salary` double DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `field_jobs`
--

INSERT INTO `field_jobs` (`id`, `Field_Title`, `Field_Salary`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'html css', 10000, NULL, '2022-10-03 13:22:37', '2022-10-03 13:27:44'),
(2, 'php', 11111, NULL, '2022-10-03 13:22:46', '2022-10-03 13:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2022_09_27_044324_create_field_jobs_table', 2),
(17, '2022_09_28_083559_create_employes_table', 3),
(18, '2022_10_04_170846_create_attendance_employes_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ali@gmail.com', '$2y$10$TqY9dazeklZ2JMHm5Sl3ve/tpJh6jdi2RfkMaREal4ERGa41IIo92', '2022-10-03 11:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'feraidon momin', '1664815585.jpg', 'feraidon.momin@gmail.com', NULL, '$2y$10$jU4coD6m78hllQxXBat8.uAS7S3b5BGWP0p3DodVM5AreaSJslfYS', NULL, '2022-10-03 12:13:03', '2022-10-03 12:16:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_employes`
--
ALTER TABLE `attendance_employes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendance_employes_e_id_foreign` (`e_id`);

--
-- Indexes for table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employes_employe_email_unique` (`employe_email`),
  ADD KEY `employes_fieldjob_fk_id_foreign` (`FieldJob_fk_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `field_jobs`
--
ALTER TABLE `field_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_employes`
--
ALTER TABLE `attendance_employes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `employes`
--
ALTER TABLE `employes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_jobs`
--
ALTER TABLE `field_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance_employes`
--
ALTER TABLE `attendance_employes`
  ADD CONSTRAINT `attendance_employes_e_id_foreign` FOREIGN KEY (`e_id`) REFERENCES `employes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employes`
--
ALTER TABLE `employes`
  ADD CONSTRAINT `employes_fieldjob_fk_id_foreign` FOREIGN KEY (`FieldJob_fk_id`) REFERENCES `field_jobs` (`id`) ON DELETE CASCADE;
--
-- Database: `post`
--
CREATE DATABASE IF NOT EXISTS `post` DEFAULT CHARACTER SET utf8 COLLATE utf8_persian_ci;
USE `post`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

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
--
-- Database: `users`
--
CREATE DATABASE IF NOT EXISTS `users` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `users`;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `ids` int(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `name`, `number`, `ids`, `hash`, `ip`) VALUES
(1, 'nebil', '244', 1, '0x3a1233', '127.0.0.1'),
(1, 'nebil', '244', 1, '0x3a1233', '127.0.0.1'),
(2, 'nebil', '244', 1, '0x3a1233', '127.0.0.1');
--
-- Database: `users_db`
--
CREATE DATABASE IF NOT EXISTS `users_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `users_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `level_role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `level_role`) VALUES
(5, 'admin', '202cb962ac59075b964b07152d234b70', 1),
(6, 'nebil', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(7, 'nebil', '25f9e794323b453885f5181f1b624d0b', 1),
(8, 'gues', '25f9e794323b453885f5181f1b624d0b', 1);

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
(109, 'nebil', 'Im nebil sharifi', '14.jpeg', 1, '28c8edde3d61a0411511d3b1866f0636', 'navidsharefi963@gmail.com'),
(242, 'Rehin', 'Kadi', '35.jpeg', 0, 'cfcd208495d565ef66e7dff9f98764da', 'navidsharefi963@gmail.com'),
(111, 'admin', 'Im nebil sharifi', '17.jpeg', 1, '28c8edde3d61a0411511d3b1866f0636', 'navidsharefi963@gmail.com'),
(114, 'Andcjc', 'Im nebil sharifi', '32.jpeg', 1, '28c8edde3d61a0411511d3b1866f0636', 'navidsharefi963@gmail.com'),
(241, 'Python', 'Python a programing language is Python a programing language is debloxdePython a programing language is debloxblox', '24.jpeg', 0, 'cfcd208495d565ef66e7dff9f98764da', 'nebiljansharifi@gmail.com');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
--
-- Database: `wp-admin`
--
CREATE DATABASE IF NOT EXISTS `wp-admin` DEFAULT CHARACTER SET utf8 COLLATE utf8_persian_ci;
USE `wp-admin`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `photo` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `about` longtext COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`photo`, `id`, `username`, `email`, `password`, `about`) VALUES
('king.jpg', 1, 'نبیل شریفی', 'Nebil455@gmail.com', '@admin54321', 'نبیل شریفی هستم برنامه نویس پایتون و همچنان آشنایی با زبان های دیگه را به صورت مرسوم دارم . و علاقه شدید به یادگیری چیزی های جدید اکثریت وقت ها سعی میکنم کتاب مطالعه کنم و همچنان مهارت های لینوکسی خودرا بالا ببرم . به عنوان یک برنامه نویس وب دولپر و همچنان فول استک دولپر کار میکنم .'),
('m.jpg', 2, 'میثم عطایی', 'adila_Hosseini@gmail.com', 'Root12', 'میثم عطایی هستم برنامه نویسی سی پلاس و همچنان آشنایی به هک امنیت دارم خوشحال هستم .که ادمین این سایت هستم '),
('nebil.jpg', 3, 'نبیل شریفی', 'adila_Hosseini@gmail.com', '123456', 'نبیل شریفی هستم هکر تعمیرکار هر گونه شعل بلدیم این ول سایت رمسنی من استبتخ تقنینر');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `imgs` varchar(255) COLLATE utf32_persian_ci NOT NULL,
  `title` text COLLATE utf32_persian_ci NOT NULL,
  `name` text COLLATE utf32_persian_ci NOT NULL,
  `posts` longtext COLLATE utf32_persian_ci NOT NULL,
  `date` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf32 COLLATE=utf32_persian_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `imgs`, `title`, `name`, `posts`, `date`) VALUES
(3, '12.jpeg', 'آشنایی با سخت افزار', 'نوشین شریفی', 'سخت‌افزار رایانه در واقع همان قسمت‌ها یا اجزای فیزیکیِ رایانه مانند نمایشگر، موشواره، صفحه‌کلید، دیسک سخت، واحد سامانه (کارت‌های گرافیک، کارت‌های صدا، حافظه اصلی، مادِربورد و تراشه‌های دیگر) و… هستند که قابل لمس‌اند', '1401/1/4'),
(1, '10.jpeg', 'آشنایی با پایتون', 'نبیل شریفی', 'امروزه در دنیای برنامه نویسی، پایتون یا (Python) یکی از قدرتمندترین زبان‌های برنامه نویسی است. این زبان با ویژگی‌های شی گرا و حرفه‌ای بودن، در حال گسترش روزافزون در جهان است. با به وجود آمدن پایتون، تحول شگرفی در دنیای برنامه نویسی توسعه برنامه‌های وب و طراحی بازی‌های رایانه‌ای به وجود آمد', '1401/1/3'),
(3, '18.jpeg', 'آشنایی با کالی  لینوکس', 'میثم عطایی', ' کالی لینوکس نام یک توزیع لینوکس برای انجام تست‌های امنیت و هک می‌باشد. توزیع Kali Linux توسط تیم سازندهٔ بک ترک ساخته شده و برخلاف بک ترک که بر پایهٔ اوبونتو بود، کالی لینوکس بر پایهٔ دبیان است.پروژهٔ بک ترک دیگر توسط تیم سازندهٔ آن پشتیبانی نمی‌شود و Kali Linux جایگزین آن شده است.', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
