-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 14, 2022 at 04:53 PM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homelane_assesment`
--

-- --------------------------------------------------------

--
-- Table structure for table `commission_category`
--

CREATE TABLE `commission_category` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `modified_by` int DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commission_category`
--

INSERT INTO `commission_category` (`id`, `name`, `status`, `is_deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'All', 'active', 0, 0, '2018-03-19 00:00:00', NULL, '2018-03-19 11:59:20'),
(2, 'Woodwork', 'active', 0, 0, '2018-03-19 00:00:00', NULL, '2018-03-19 12:00:37'),
(3, 'Accessory', 'active', 0, 0, '2018-03-19 00:00:00', NULL, '2018-03-28 11:10:12'),
(4, 'Appliance', 'active', 0, 0, '2018-03-19 00:00:00', NULL, '2018-03-28 11:10:12'),
(5, 'False Ceiling', 'active', 0, 0, '2018-03-19 00:00:00', NULL, '2018-03-19 12:02:19'),
(6, 'Furniture', 'active', 0, 0, '2018-03-19 00:00:00', NULL, '2018-03-19 12:02:43'),
(7, 'Wallpaper', 'active', 0, 0, '2018-03-19 00:00:00', NULL, '2018-03-19 12:03:10'),
(8, 'Wall Paintings', 'active', 0, 0, '2018-03-19 00:00:00', NULL, '2018-03-28 13:25:31'),
(9, 'Countertop', 'active', 0, 0, '2018-03-19 00:00:00', NULL, '2018-03-19 12:04:27'),
(10, 'Electrical', 'active', 0, 0, '2018-03-19 00:00:00', NULL, '2018-03-19 12:05:04'),
(11, 'Civil', 'active', 0, 0, '2018-03-19 00:00:00', NULL, '2018-03-19 12:05:22'),
(12, 'Others', 'active', 0, 0, '2018-03-19 00:00:00', NULL, '2018-03-19 12:05:43'),
(13, 'Mattress', 'active', 0, 0, '2018-10-23 00:00:00', NULL, '2018-03-19 12:05:43'),
(14, 'CNC Jali', 'active', 0, 0, '2018-10-23 00:00:00', NULL, '2018-03-19 12:05:43'),
(15, 'Lighting', 'active', 0, 0, '2018-10-25 00:00:00', NULL, '2018-03-19 12:05:43'),
(16, 'Home Automation', 'active', 0, 0, '2019-03-06 00:00:00', NULL, '2018-03-19 12:05:43'),
(17, 'IKEA', 'active', 0, 0, '2019-03-26 00:00:00', NULL, '2019-03-27 05:37:40'),
(18, 'Space Saving', 'active', 0, 0, '2019-03-26 00:00:00', NULL, '2019-03-27 05:37:40'),
(19, 'UL', 'active', 0, 0, '2019-03-26 00:00:00', NULL, '2019-04-17 06:32:56'),
(20, 'Kathedra', 'active', 0, 0, '2019-03-26 00:00:00', NULL, '2019-03-27 05:37:40'),
(21, 'Other Furniture', 'active', 0, 0, '2019-03-26 00:00:00', NULL, '2019-03-27 05:37:40'),
(22, 'Flooring', 'active', 0, 0, '2020-01-23 11:59:00', NULL, '2020-04-16 17:16:09'),
(23, 'Renovation', 'active', 0, 0, '2020-01-23 11:59:00', NULL, '2020-04-16 17:16:09'),
(24, 'Wall Art', 'active', 0, 0, '2020-01-23 11:59:00', NULL, '2020-04-16 17:16:09'),
(25, 'Flipkart', 'active', 0, 0, '2020-01-23 11:59:00', NULL, '2020-04-16 17:16:09'),
(26, 'Loose Furniture', 'active', 0, 0, '2020-01-23 11:59:00', NULL, '2020-04-16 17:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `commission_config`
--

CREATE TABLE `commission_config` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `city_id` int UNSIGNED DEFAULT '0',
  `showroom_id` int DEFAULT NULL,
  `status` enum('active','paused','inactive','locked') NOT NULL DEFAULT 'active',
  `appointment_type` enum('residence','showroom','') DEFAULT NULL,
  `superactive_percentage` decimal(4,2) NOT NULL DEFAULT '0.00',
  `referral_bonus` decimal(4,2) NOT NULL DEFAULT '0.00',
  `effective_from` date NOT NULL,
  `effective_to` date NOT NULL,
  `parent_id` int DEFAULT NULL,
  `belongs_to` enum('dp','squre_partner','squarelet') NOT NULL DEFAULT 'dp',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `modified_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commission_config`
--

INSERT INTO `commission_config` (`id`, `name`, `city_id`, `showroom_id`, `status`, `appointment_type`, `superactive_percentage`, `referral_bonus`, `effective_from`, `effective_to`, `parent_id`, `belongs_to`, `is_deleted`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(402, 'customSqltCommission_5389472101', 0, NULL, 'locked', NULL, '0.00', '0.00', '2022-02-08', '2022-02-14', 138, 'squarelet', 0, '2022-02-08 05:48:55', 155606, '2022-02-14 11:06:28', NULL),
(428, 'customSqltCommission_5389472101', 0, NULL, 'locked', NULL, '0.00', '0.00', '2022-02-14', '2022-03-14', 138, 'squarelet', 0, '2022-02-08 05:48:55', 155606, '2022-02-11 06:05:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `commission_regular`
--

CREATE TABLE `commission_regular` (
  `id` int NOT NULL,
  `config_id` int NOT NULL COMMENT 'config_id is foreign key to the table commission_config table',
  `category_id` int NOT NULL DEFAULT '0' COMMENT 'config_id is foreign key to the table commission_category table',
  `is_mrp` int DEFAULT '0' COMMENT 'Mrp=>1,Discount=>0;',
  `order_booking` decimal(4,2) NOT NULL DEFAULT '0.00',
  `design_complete` decimal(4,2) NOT NULL DEFAULT '0.00',
  `post_production` decimal(4,2) NOT NULL DEFAULT '0.00',
  `additional_inst` decimal(4,2) NOT NULL DEFAULT '0.00',
  `sqp_sqlt_install` decimal(4,2) NOT NULL DEFAULT '0.00',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `modified_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commission_regular`
--

INSERT INTO `commission_regular` (`id`, `config_id`, `category_id`, `is_mrp`, `order_booking`, `design_complete`, `post_production`, `additional_inst`, `sqp_sqlt_install`, `is_deleted`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 402, 2, 0, '3.00', '3.00', '13.00', '0.00', '8.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(2, 402, 4, 0, '3.00', '3.00', '5.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(3, 402, 3, 0, '3.00', '3.00', '13.00', '0.00', '8.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(4, 402, 5, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(5, 402, 6, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(6, 402, 7, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(7, 402, 8, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(8, 402, 9, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(9, 402, 10, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(10, 402, 11, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(11, 402, 12, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(12, 402, 13, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(13, 402, 14, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(14, 402, 15, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(15, 402, 16, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(16, 402, 17, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(17, 402, 18, 0, '3.00', '3.00', '5.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(18, 402, 19, 0, '3.00', '3.00', '5.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(19, 402, 20, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(20, 402, 21, 0, '3.00', '3.00', '5.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(21, 402, 22, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(22, 402, 23, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(23, 402, 24, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(24, 402, 25, 0, '3.00', '3.00', '7.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(25, 402, 26, 0, '3.00', '3.00', '5.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(26, 402, 1, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(27, 402, 27, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(28, 402, 28, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(29, 402, 29, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(30, 402, 30, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(31, 402, 31, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(32, 402, 32, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(33, 402, 60, 0, '2.00', '2.00', '6.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(34, 402, 61, 0, '2.00', '2.00', '3.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(35, 402, 33, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(36, 402, 34, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(37, 402, 35, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-08 05:48:55', 155606, '2022-02-07 18:48:55', NULL),
(519, 428, 2, 0, '3.00', '6.00', '13.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(520, 428, 4, 0, '2.00', '3.00', '4.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(521, 428, 3, 0, '3.00', '6.00', '13.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(522, 428, 5, 0, '2.00', '4.00', '6.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(523, 428, 6, 0, '2.00', '4.00', '6.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(524, 428, 7, 0, '2.00', '4.00', '6.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(525, 428, 8, 0, '2.00', '4.00', '6.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(526, 428, 9, 0, '2.00', '4.00', '6.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(527, 428, 10, 0, '2.00', '4.00', '6.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(528, 428, 11, 0, '2.00', '4.00', '6.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(529, 428, 12, 0, '2.00', '4.00', '6.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(530, 428, 13, 0, '2.00', '4.00', '6.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(531, 428, 14, 0, '2.00', '4.00', '6.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(532, 428, 15, 0, '2.00', '4.00', '6.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(533, 428, 16, 0, '2.00', '4.00', '6.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(534, 428, 17, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(535, 428, 18, 0, '2.00', '3.00', '4.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(536, 428, 19, 0, '2.00', '3.00', '4.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(537, 428, 20, 0, '2.00', '4.00', '6.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(538, 428, 21, 0, '2.00', '3.00', '4.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(539, 428, 22, 0, '2.00', '4.00', '6.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(540, 428, 23, 0, '2.00', '4.00', '6.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(541, 428, 24, 0, '2.00', '4.00', '6.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(542, 428, 25, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(543, 428, 26, 0, '2.00', '3.00', '4.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(544, 428, 1, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(545, 428, 1, 0, '2.00', '4.00', '6.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(546, 428, 1, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(547, 428, 1, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(548, 428, 1, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(549, 428, 1, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(550, 428, 1, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(551, 428, 1, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(552, 428, 1, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(553, 428, 1, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(554, 428, 1, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(555, 428, 1, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(556, 428, 1, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL),
(557, 428, 1, 0, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '2022-02-14 11:06:28', 0, '2022-02-14 11:06:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commission_category`
--
ALTER TABLE `commission_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission_config`
--
ALTER TABLE `commission_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission_regular`
--
ALTER TABLE `commission_regular`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- AUTO_INCREMENT for table `commission_category`
--
ALTER TABLE `commission_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `commission_config`
--
ALTER TABLE `commission_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;

--
-- AUTO_INCREMENT for table `commission_regular`
--
ALTER TABLE `commission_regular`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=584;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
