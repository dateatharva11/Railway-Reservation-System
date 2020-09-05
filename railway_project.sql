-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2019 at 11:17 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railway`
--

-- --------------------------------------------------------

--
-- Table structure for table `central`
--

CREATE TABLE `central` (
  `Sr.No.` int(11) NOT NULL,
  `Source` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Rate2` int(16) NOT NULL,
  `Rate1` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `central`
--

INSERT INTO `central` (`Sr.No.`, `Source`, `Destination`, `Rate2`, `Rate1`) VALUES
(1, 'CST', 'Masjid', 5, 50),
(2, 'CST', 'Byculla', 5, 50),
(3, 'CST', 'Parel', 5, 50),
(4, 'CST', 'Dadar', 5, 50),
(5, 'CST', 'Matunga', 10, 70),
(6, 'CST', 'Sion', 10, 70),
(7, 'CST', 'Kurla', 10, 70),
(8, 'CST', 'Vidyavihar', 10, 70),
(9, 'CST', 'Ghatkopar', 15, 145),
(10, 'CST', 'Vikhroli', 15, 145),
(11, 'CST', 'Bhandup', 15, 145),
(12, 'CST', 'Mulund', 15, 145),
(13, 'CST', 'Thane', 20, 170),
(14, 'CST', 'Kopar', 20, 170),
(15, 'CST', 'Dombivli', 20, 170),
(16, 'CST', 'Kalyan', 20, 170),
(17, 'CST', 'Ulhasnagar', 25, 225),
(18, 'CST', 'Ambernath', 25, 225),
(19, 'CST', 'Badlapur', 25, 225),
(20, 'CST', 'Karjat', 25, 225),
(21, 'CST', 'Khopoli', 30, 290),
(22, 'CST', 'Titwala', 30, 290),
(23, 'CST', 'Asangaon', 30, 290),
(24, 'CST', 'Kasara', 30, 290),
(25, 'Masjid', 'CST', 5, 50),
(26, 'Masjid', 'Byculla', 5, 50),
(27, 'Masjid', 'Parel', 5, 50),
(28, 'Masjid', 'Dadar', 5, 50),
(29, 'Masjid', 'Matunga', 10, 70),
(30, 'Masjid', 'Sion', 10, 70),
(31, 'Masjid', 'Kurla', 10, 70),
(32, 'Masjid', 'Vidyavihar', 10, 70),
(33, 'Masjid', 'Ghatkopar', 15, 145),
(34, 'Masjid', 'Vikhroli', 15, 145),
(35, 'Masjid', 'Bhandup', 15, 145),
(36, 'Masjid', 'Mulund', 15, 145),
(37, 'Masjid', 'Thane', 20, 170),
(38, 'Masjid', 'Kopar', 20, 170),
(39, 'Masjid', 'Dombivli', 20, 170),
(40, 'Masjid', 'Kalyan', 20, 170),
(41, 'Masjid', 'Ulhasnagar', 25, 225),
(42, 'Masjid', 'Ambernath', 25, 225),
(43, 'Masjid', 'Badlapur', 25, 225),
(44, 'Masjid', 'Karjat', 25, 225),
(45, 'Masjid', 'Khopoli', 30, 290),
(46, 'Masjid', 'Titwala', 30, 290),
(47, 'Masjid', 'Asangaon', 30, 290),
(48, 'Masjid', 'Kasara', 30, 290),
(49, 'Byculla', 'CST', 5, 50),
(50, 'Byculla', 'Masjid', 5, 50),
(51, 'Byculla', 'Parel', 5, 50),
(52, 'Byculla', 'Dadar', 5, 50),
(53, 'Byculla', 'Matunga', 10, 70),
(54, 'Byculla', 'Sion', 10, 70),
(55, 'Byculla', 'Kurla', 10, 70),
(56, 'Byculla', 'Vidyavihar', 10, 70),
(57, 'Byculla', 'Ghatkopar', 15, 145),
(58, 'Byculla', 'Vikhroli', 15, 145),
(59, 'Byculla', 'Bhandup', 15, 145),
(60, 'Byculla', 'Mulund', 15, 145),
(61, 'Byculla', 'Thane', 20, 170),
(62, 'Byculla', 'Kopar', 20, 170),
(63, 'Byculla', 'Dombivli', 20, 170),
(64, 'Byculla', 'Kalyan', 20, 170),
(65, 'Byculla', 'Ulhasnagar', 25, 225),
(66, 'Byculla', 'Ambernath', 25, 225),
(67, 'Byculla', 'Badlapur', 25, 225),
(68, 'Byculla', 'Karjat', 25, 225),
(69, 'Byculla', 'Khopoli', 30, 290),
(70, 'Byculla', 'Titwala', 30, 290),
(71, 'Byculla', 'Asangaon', 30, 290),
(72, 'Byculla', 'Kasara', 30, 290),
(73, 'Parel', 'CST', 5, 50),
(74, 'Parel', 'Masjid', 5, 50),
(75, 'Parel', 'Byculla', 5, 50),
(76, 'Parel', 'Dadar', 5, 50),
(77, 'Parel', 'Matunga', 10, 70),
(78, 'Parel', 'Sion', 10, 70),
(79, 'Parel', 'Kurla', 10, 70),
(80, 'Parel', 'Vidyavihar', 10, 70),
(81, 'Parel', 'Ghatkopar', 15, 145),
(82, 'Parel', 'Vikhroli', 15, 145),
(83, 'Parel', 'Bhandup', 15, 145),
(84, 'Parel', 'Mulund', 15, 145),
(85, 'Parel', 'Thane', 20, 170),
(86, 'Parel', 'Kopar', 20, 170),
(87, 'Parel', 'Dombivli', 20, 170),
(88, 'Parel', 'Kalyan', 20, 170),
(89, 'Parel', 'Ulhasnagar', 25, 225),
(90, 'Parel', 'Ambernath', 25, 225),
(91, 'Parel', 'Badlapur', 25, 225),
(92, 'Parel', 'Karjat', 25, 225),
(93, 'Parel', 'Khopoli', 30, 290),
(94, 'Parel', 'Titwala', 30, 290),
(95, 'Parel', 'Asangaon', 30, 290),
(96, 'Parel', 'Kasara', 30, 290),
(97, 'Dadar', 'CST', 5, 50),
(98, 'Dadar', 'Masjid', 5, 50),
(99, 'Dadar', 'Byculla', 5, 50),
(100, 'Dadar', 'Parel', 5, 50),
(101, 'Dadar', 'Matunga', 5, 50),
(102, 'Dadar', 'Sion', 5, 50),
(103, 'Dadar', 'Kurla', 5, 50),
(104, 'Dadar', 'Vidyavihar', 5, 50),
(105, 'Dadar', 'Ghatkopar', 10, 70),
(106, 'Dadar', 'Vikhroli', 10, 70),
(107, 'Dadar', 'Bhandup', 10, 70),
(108, 'Dadar', 'Mulund', 10, 70),
(109, 'Dadar', 'Thane', 15, 145),
(110, 'Dadar', 'Kopar', 15, 145),
(111, 'Dadar', 'Dombivli', 15, 145),
(112, 'Dadar', 'Kalyan', 15, 145),
(113, 'Dadar', 'Ulhasnagar', 20, 170),
(114, 'Dadar', 'Ambernath', 20, 170),
(115, 'Dadar', 'Badlapur', 20, 170),
(116, 'Dadar', 'Karjat', 20, 170),
(117, 'Dadar', 'Khopoli', 25, 225),
(118, 'Dadar', 'Titwala', 25, 225),
(119, 'Dadar', 'Asangaon', 25, 225),
(120, 'Dadar', 'Kasara', 25, 225),
(121, 'Matunga', 'CST', 10, 70),
(122, 'Matunga', 'Masjid', 5, 50),
(123, 'Matunga', 'Byculla', 5, 50),
(124, 'Matunga', 'Parel', 5, 50),
(125, 'Matunga', 'Dadar', 5, 50),
(126, 'Matunga', 'Sion', 5, 50),
(127, 'Matunga', 'Kurla', 5, 50),
(128, 'Matunga', 'Vidyavihar', 5, 50),
(129, 'Matunga', 'Ghatkopar', 5, 50),
(130, 'Matunga', 'Vikhroli', 10, 70),
(131, 'Matunga', 'Bhandup', 10, 70),
(132, 'Matunga', 'Mulund', 10, 70),
(133, 'Matunga', 'Thane', 10, 70),
(134, 'Matunga', 'Kopar', 15, 145),
(135, 'Matunga', 'Dombivli', 15, 145),
(136, 'Matunga', 'Kalyan', 15, 145),
(137, 'Matunga', 'Ulhasnagar', 15, 145),
(138, 'Matunga', 'Ambernath', 20, 190),
(139, 'Matunga', 'Badlapur', 20, 190),
(140, 'Matunga', 'Karjat', 20, 190),
(141, 'Matunga', 'Khopoli', 20, 190),
(142, 'Matunga', 'Titwala', 25, 225),
(143, 'Matunga', 'Asangaon', 25, 225),
(144, 'Matunga', 'Kasara', 25, 225),
(145, 'Sion', 'CST', 10, 70),
(154, 'Sion', 'Masjid', 10, 70),
(155, 'Sion', 'Byculla', 5, 50),
(156, 'Sion', 'Parel', 5, 50),
(157, 'Sion', 'Dadar', 5, 50),
(158, 'Sion', 'Matunga', 5, 50),
(159, 'Sion', 'Kurla', 5, 50),
(160, 'Sion', 'Vidyavihar', 5, 50),
(161, 'Sion', 'Ghatkopar', 5, 50),
(162, 'Sion', 'Vikhroli', 5, 50),
(163, 'Sion', 'Bhandup', 10, 70),
(164, 'Sion', 'Mulund', 10, 70),
(165, 'Sion', 'Thane', 10, 70),
(166, 'Sion', 'Kopar', 10, 70),
(167, 'Sion', 'Dombivli', 15, 145),
(168, 'Sion', 'Kalyan', 15, 145),
(169, 'Sion', 'Ulhasnagar', 15, 145),
(170, 'Sion', 'Ambernath', 15, 145),
(171, 'Sion', 'Badlapur', 20, 165),
(172, 'Sion', 'Karjat', 20, 165),
(173, 'Sion', 'Khopoli', 20, 165),
(174, 'Sion', 'Titwala', 20, 165),
(175, 'Sion', 'Asangaon', 25, 190),
(176, 'Sion', 'Kasara', 25, 190),
(177, 'Kurla', 'CST', 10, 70),
(178, 'Kurla', 'Masjid', 10, 70),
(179, 'Kurla', 'Byculla', 10, 70),
(180, 'Kurla', 'Parel', 5, 50),
(181, 'Kurla', 'Dadar', 5, 50),
(182, 'Kurla', 'Matunga', 5, 50),
(183, 'Kurla', 'Sion', 5, 50),
(184, 'Kurla', 'Vidyavihar', 5, 50),
(185, 'Kurla', 'Ghatkopar', 5, 50),
(186, 'Kurla', 'Vikhroli', 5, 50),
(187, 'Kurla', 'Bhandup', 5, 50),
(188, 'Kurla', 'Mulund', 10, 70),
(189, 'Kurla', 'Thane', 10, 70),
(190, 'Kurla', 'Kopar', 10, 70),
(191, 'Kurla', 'Dombivli', 10, 70),
(192, 'Kurla', 'Kalyan', 15, 145),
(193, 'Kurla', 'Ulhasnagar', 15, 145),
(194, 'Kurla', 'Ambernath', 15, 145),
(195, 'Kurla', 'Badlapur', 15, 145),
(196, 'Kurla', 'Karjat', 20, 165),
(197, 'Kurla', 'Khopoli', 20, 165),
(198, 'Kurla', 'Titwala', 20, 165),
(199, 'Kurla', 'Asangaon', 20, 165),
(200, 'Kurla', 'Kasara', 25, 190),
(201, 'Vidyavihar', 'CST', 10, 70),
(202, 'Vidyavihar', 'Masjid', 10, 70),
(203, 'Vidyavihar', 'Byculla', 10, 70),
(204, 'Vidyavihar', 'Parel', 10, 70),
(205, 'Vidyavihar', 'Dadar', 5, 50),
(206, 'Vidyavihar', 'Matunga', 5, 50),
(207, 'Vidyavihar', 'Sion', 5, 50),
(208, 'Vidyavihar', 'Kurla', 5, 50),
(209, 'Vidyavihar', 'Ghatkopar', 5, 50),
(210, 'Vidyavihar', 'Vikhroli', 5, 50),
(211, 'Vidyavihar', 'Bhandup', 5, 50),
(212, 'Vidyavihar', 'Mulund', 5, 50),
(213, 'Vidyavihar', 'Thane', 10, 70),
(214, 'Vidyavihar', 'Kopar', 10, 70),
(215, 'Vidyavihar', 'Dombivli', 10, 70),
(216, 'Vidyavihar', 'Kalyan', 10, 70),
(217, 'Vidyavihar', 'Ulhasnagar', 15, 145),
(218, 'Vidyavihar', 'Ambernath', 15, 145),
(219, 'Vidyavihar', 'Badlapur', 15, 145),
(220, 'Vidyavihar', 'Karjat', 15, 145),
(221, 'Vidyavihar', 'Khopoli', 20, 190),
(222, 'Vidyavihar', 'Titwala', 20, 190),
(223, 'Vidyavihar', 'Asangaon', 20, 190),
(224, 'Vidyavihar', 'Kasara', 20, 190),
(225, 'Ghatkopar', 'CST', 15, 145),
(226, 'Ghatkopar', 'Masjid', 10, 70),
(227, 'Ghatkopar', 'Byculla', 10, 70),
(228, 'Ghatkopar', 'Parel', 10, 70),
(229, 'Ghatkopar', 'Dadar', 10, 70),
(230, 'Ghatkopar', 'Matunga', 5, 50),
(231, 'Ghatkopar', 'Sion', 5, 50),
(232, 'Ghatkopar', 'Kurla', 5, 50),
(233, 'Ghatkopar', 'Vidyavihar', 5, 50),
(234, 'Ghatkopar', 'Vikhroli', 5, 50),
(235, 'Ghatkopar', 'Bhandup', 5, 50),
(236, 'Ghatkopar', 'Mulund', 5, 50),
(237, 'Ghatkopar', 'Thane', 5, 50),
(238, 'Ghatkopar', 'Kopar', 10, 70),
(239, 'Ghatkopar', 'Dombivli', 10, 70),
(240, 'Ghatkopar', 'Kalyan', 10, 70),
(241, 'Ghatkopar', 'Ulhasnagar', 10, 70),
(242, 'Ghatkopar', 'Ambernath', 15, 145),
(243, 'Ghatkopar', 'Badlapur', 15, 145),
(244, 'Ghatkopar', 'Karjat', 15, 145),
(245, 'Ghatkopar', 'Khopoli', 15, 145),
(246, 'Ghatkopar', 'Titwala', 20, 190),
(247, 'Ghatkopar', 'Asangaon', 20, 190),
(248, 'Ghatkopar', 'Kasara', 20, 190);

-- --------------------------------------------------------

--
-- Table structure for table `western`
--

CREATE TABLE `western` (
  `Source` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Price` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `western`
--

INSERT INTO `western` (`Source`, `Destination`, `Price`) VALUES
('Churchgate', 'Marine Lines', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `central`
--
ALTER TABLE `central`
  ADD PRIMARY KEY (`Sr.No.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `central`
--
ALTER TABLE `central`
  MODIFY `Sr.No.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
