-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2023 at 04:44 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `symfapptest`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `contact_number`, `address`, `email`) VALUES
(1, 'Updated Name', '9880348230', '#123, home, city 12345', NULL),
(2, 'John Doe', '1234567890', '123 Main St', NULL),
(3, 'John Doe', '1234567890', '123 Main St', NULL),
(4, 'John Doe', '1234567890', '123 Main St', NULL),
(5, 'John Doe', '1234567890', '123 Main St', NULL),
(6, 'John Doe', '1234567890', '123 Main St', NULL),
(7, 'John Doe', '1234567890', '123 Main St', NULL),
(8, 'John Doe', '1234567890', '123 Main St', NULL),
(9, 'John Doe', '1234567890', '123 Main St', NULL),
(10, 'John Doe', '1234567890', '123 Main St', NULL),
(12, 'John Doe', '1234567890', '123 Main St', NULL),
(13, 'John Doe', '1234567890', '123 Main St', NULL),
(14, 'John Doe', '1234567890', '123 Main St', NULL),
(15, 'John Doe', '1234567890', '123 Main St', NULL),
(16, 'John Doe', '1234567890', '123 Main St', NULL),
(17, 'John Doe', '1234567890', '123 Main St', NULL),
(18, 'John Doe', '1234567890', '123 Main St', NULL),
(19, 'John Doe', '1234567890', '123 Main St', NULL),
(20, 'John Doe', '1234567890', '123 Main St', NULL),
(21, 'John Doe', '1234567890', '123 Main St', NULL),
(22, 'John Doe', '1234567890', '123 Main St', NULL),
(23, 'John Doe', '1234567890', '123 Main St', NULL),
(24, 'John Doe', '1234567890', '123 Main St', NULL),
(25, 'John Doe', '1234567890', '123 Main St', NULL),
(26, 'John Doe', '1234567890', '123 Main St', NULL),
(27, 'John Doe', '1234567890', '123 Main St', NULL),
(28, 'John Doe', '1234567890', '123 Main St', NULL),
(29, 'John Doe', '1234567890', '123 Main St', NULL),
(30, 'John Doe', '1234567890', '123 Main St', NULL),
(31, 'John Doe', '1234567890', '123 Main St', NULL),
(32, 'John Doe', '1234567890', '123 Main St', NULL),
(33, 'John Doe', '1234567890', '123 Main St', NULL),
(34, 'John Doe', '1234567890', '123 Main St', NULL),
(35, 'John Doe', '1234567890', '123 Main St', NULL),
(36, 'John Doe', '1234567890', '123 Main St', NULL),
(37, 'John Doe', '1234567890', '123 Main St', NULL),
(38, 'John Doe', '1234567890', '123 Main St', NULL),
(39, 'John Doe', '1234567890', '123 Main St', NULL),
(40, 'John Doe', '1234567890', '123 Main St', NULL),
(41, 'John Doe', '1234567890', '123 Main St', NULL),
(42, 'John Doe', '1234567890', '123 Main St', NULL),
(43, 'John Doe', '1234567890', '123 Main St', NULL),
(44, 'John Doe', '1234567890', '123 Main St', NULL),
(45, 'John Doe', '1234567890', '123 Main St', NULL),
(46, 'John Doe', '1234567890', '123 Main St', NULL),
(47, 'John Doe', '1234567890', '123 Main St', NULL),
(48, 'John Doe', '1234567890', '123 Main St', NULL),
(49, 'John Doe', '1234567890', '123 Main St', NULL),
(50, 'John Doe', '1234567890', '123 Main St', NULL),
(51, 'John Doe', '1234567890', '123 Main St', NULL),
(52, 'John Doe', '1234567890', '123 Main St', NULL),
(53, 'John Doe', '1234567890', '123 Main St', NULL),
(54, 'John Doe', '1234567890', '123 Main St', NULL),
(55, 'John Doe', '1234567890', '123 Main St', NULL),
(56, 'John Doe', '1234567890', '123 Main St', NULL),
(57, 'John Doe', '1234567890', '123 Main St', NULL),
(58, 'John Doe', '1234567890', '123 Main St', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231009144555', '2023-10-09 16:47:52', 77),
('DoctrineMigrations\\Version20231017064619', '2023-10-17 08:46:35', 36),
('DoctrineMigrations\\Version20231017070540', '2023-10-17 09:05:58', 97),
('DoctrineMigrations\\Version20231017071545', '2023-10-17 09:16:05', 63),
('DoctrineMigrations\\Version20231017074155', '2023-10-17 09:42:31', 85);

-- --------------------------------------------------------

--
-- Table structure for table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reset_password_request`
--

INSERT INTO `reset_password_request` (`id`, `user_id`, `selector`, `hashed_token`, `requested_at`, `expires_at`) VALUES
(1, 2, 'MNhfndZ2lBvok5uGEXWI', 'N3ENQsQTWDo5N4mMXMhMF2zdJ8y8Lcf9IuzYUzY4tMQ=', '2023-10-17 09:44:10', '2023-10-17 10:44:10'),
(5, 3, 'KO5IZFtwSgjxMrfdVivU', '3eylB8ZrPUA4BBHLWfw1xATHRwZiMSipbVfeMhdkpok=', '2023-10-17 12:20:29', '2023-10-17 13:20:29'),
(6, 4, 'qttJzhVl8pF3tj1rJvtc', 'XKQ4qont4uPX3mPpCsyOuMtFFWAOXydVnSGcLq2aQZ0=', '2023-10-17 13:39:14', '2023-10-17 14:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_status` int(11) NOT NULL,
  `confirm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `email`, `phone_number`, `reg_status`, `confirm_token`, `is_verified`) VALUES
(1, 'admin', '[]', '$2y$13$bldA4MB4g86SHxlY/pWiKOrtd./CvFgauIDjqAeEtuOmdr0GT2Ub.', 'test@test.in', '8867466035', 0, NULL, 0),
(2, 'admin2', '[]', '$2y$13$d.rN1/1/AnwsJcpGHY0QBec8EmhfgTueZzfiJdwmGKLnyvKCVTM4S', 'test2@test.in', '8867466035', 0, NULL, 0),
(3, 'admin3', '[]', '$2y$13$lN.2Re6ZqDYShcfs8wrS5upnrNXxgQIH12W9FSzHceeUrQcCYOY7W', 'test1234@gmail.com', '1234567890', 0, NULL, 1),
(4, '123user', '[]', '$2y$13$tLr/9WOCi7Pgh8n6HH/50uAFR5BvvM4e5g2OtnYe20od/9iLX6BeO', 'user@test.mail', '1234567890', 0, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
