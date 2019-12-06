-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 06, 2019 at 09:24 AM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lettings2019`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE IF NOT EXISTS `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by_id` (`created_by_id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tasks, Reminders, Notes';

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `created_on`, `created_by_id`, `manager_id`) VALUES
(48, '2018-05-09 14:22:12', 1, 1),
(49, '2018-05-09 14:22:56', 1, 1),
(50, '2018-05-09 14:23:16', 1, 1),
(51, '2018-05-09 14:23:28', 1, 1),
(56, '2018-05-09 14:27:43', 1, 1),
(57, '2018-05-09 14:28:03', 1, 1),
(60, '2018-05-10 05:21:35', 1, 1),
(62, '2018-05-11 06:48:13', 1, 1),
(64, '2018-05-14 12:07:55', 1, 1),
(66, '2018-05-14 13:37:41', 1, 1),
(67, '2018-05-14 13:40:51', 1, 1),
(68, '2018-05-24 11:18:53', 1, 1),
(69, '2018-05-26 06:39:25', 1, 1),
(71, '2018-05-26 07:02:34', 1, 1),
(72, '2018-05-26 07:11:15', 1, 1),
(73, '2018-05-26 07:14:54', 1, 1),
(74, '2018-05-26 07:16:31', 1, 1),
(75, '2018-05-26 10:54:22', 1, 1),
(76, '2018-05-26 10:55:48', 1, 1),
(77, '2018-05-29 06:06:15', 1, 1),
(78, '2018-05-30 08:28:27', 1, 1),
(79, '2018-05-30 08:29:10', 1, 1),
(80, '2018-05-30 08:40:09', 1, 1),
(82, '2018-05-30 10:15:08', 1, 1),
(83, '2018-05-30 10:15:26', 1, 1),
(84, '2018-05-30 10:15:48', 1, 1),
(92, '2018-05-30 12:08:12', 1, 1),
(93, '2018-05-30 13:26:59', 1, 1),
(94, '2018-05-30 13:36:32', 1, 1),
(98, '2018-05-31 09:47:38', 1, 1),
(100, '2018-05-31 11:23:23', 1, 1),
(101, '2018-05-31 15:18:58', 1, 1),
(104, '2018-06-01 14:39:20', 1, 1),
(107, '2018-06-28 14:19:57', 1, 1),
(109, '2018-07-26 12:01:10', 1, 1),
(112, '2018-08-16 15:21:13', 1, 1),
(113, '2018-08-16 15:28:29', 1, 1),
(114, '2018-08-16 15:28:49', 1, 1),
(118, '2018-08-20 10:01:47', 1, 1),
(119, '2018-08-20 15:20:13', 1, 1),
(120, '2018-08-20 15:25:29', 1, 1),
(125, '2018-08-29 09:58:16', 1, 1),
(127, '2018-08-29 09:58:51', 1, 1),
(130, '2018-08-29 10:23:53', 1, 1),
(131, '2018-08-29 10:24:12', 1, 1),
(133, '2018-08-29 13:09:32', 1, 1),
(136, '2018-08-29 13:16:00', 1, 1),
(139, '2018-08-29 13:25:48', 1, 1),
(140, '2018-09-14 10:05:36', 1, 1),
(141, '2018-09-17 15:47:20', 1, 1),
(142, '2018-09-17 15:50:38', 1, 1),
(148, '2018-11-13 16:13:04', 1, 1),
(149, '2018-11-13 16:20:11', 3, 1),
(152, '2018-12-11 14:01:16', 7, 1),
(154, '2018-12-11 15:39:49', 1, 1),
(155, '2018-12-11 15:40:09', 1, 1),
(156, '2018-12-11 15:40:26', 1, 1),
(157, '2018-12-12 14:33:58', 1, 1),
(159, '2018-12-12 14:36:20', 1, 1),
(165, '2018-12-18 08:57:17', 1, 1),
(166, '2018-12-18 09:32:01', 3, 1),
(168, '2018-12-26 10:43:11', 1, 1),
(169, '2019-10-25 11:43:39', 1, 1),
(170, '2019-11-25 13:39:24', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `activity_invoices`
--

DROP TABLE IF EXISTS `activity_invoices`;
CREATE TABLE IF NOT EXISTS `activity_invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_id` (`activity_id`),
  KEY `invoice_id` (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `activity_invoices`
--

INSERT INTO `activity_invoices` (`id`, `activity_id`, `invoice_id`) VALUES
(1, 73, 6),
(2, 74, 6);

-- --------------------------------------------------------

--
-- Table structure for table `activity_lead`
--

DROP TABLE IF EXISTS `activity_lead`;
CREATE TABLE IF NOT EXISTS `activity_lead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_id` (`activity_id`),
  KEY `lead_id` (`lead_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `activity_lead`
--

INSERT INTO `activity_lead` (`id`, `activity_id`, `lead_id`) VALUES
(1, 169, 2);

-- --------------------------------------------------------

--
-- Table structure for table `activity_messages`
--

DROP TABLE IF EXISTS `activity_messages`;
CREATE TABLE IF NOT EXISTS `activity_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_id` (`activity_id`),
  KEY `message_id` (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `activity_messages`
--

INSERT INTO `activity_messages` (`id`, `activity_id`, `message_id`) VALUES
(3, 82, 10),
(4, 83, 10),
(5, 84, 10),
(12, 93, 10),
(13, 94, 9),
(16, 98, 14),
(18, 100, 16),
(19, 101, 15),
(21, 109, 34),
(24, 112, 34),
(25, 113, 33),
(26, 114, 35),
(27, 119, 39),
(28, 120, 39),
(31, 139, 38),
(32, 170, 31);

-- --------------------------------------------------------

--
-- Table structure for table `activity_property`
--

DROP TABLE IF EXISTS `activity_property`;
CREATE TABLE IF NOT EXISTS `activity_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_id` (`activity_id`),
  KEY `property_id` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `activity_property`
--

INSERT INTO `activity_property` (`id`, `activity_id`, `property_id`) VALUES
(66, 107, 25),
(67, 109, 24),
(69, 112, 24),
(70, 113, 33),
(71, 114, 24),
(77, 148, 32),
(78, 149, 32),
(79, 170, 36);

-- --------------------------------------------------------

--
-- Table structure for table `activity_user`
--

DROP TABLE IF EXISTS `activity_user`;
CREATE TABLE IF NOT EXISTS `activity_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_id` (`activity_id`),
  KEY `user_id` (`user_id`),
  KEY `user_type_id` (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `activity_user`
--

INSERT INTO `activity_user` (`id`, `activity_id`, `user_id`, `user_type_id`) VALUES
(16, 48, 5, 1),
(23, 60, 2, 2),
(24, 72, 7, 1),
(25, 77, 6, 2),
(28, 93, 17, 5),
(29, 94, 19, 5),
(32, 98, 13, 5),
(34, 100, 10, 5),
(35, 101, 13, 5),
(36, 107, 6, 5),
(38, 109, 33, 5),
(41, 112, 33, 5),
(42, 113, 1, 5),
(43, 114, 34, 5),
(44, 118, 44, 4),
(45, 119, 44, 5),
(46, 120, 44, 5),
(54, 130, 45, 4),
(55, 131, 45, 4),
(57, 133, 1, 3),
(60, 136, 40, 2),
(63, 139, 40, 5),
(64, 168, 28, 7),
(65, 170, 32, 5);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `name`) VALUES
(1, 'admin', 'ajay.designdirect@gmail.com', '921920a4ff6d1d975a9b1748b8005c55', 'ajay');

-- --------------------------------------------------------

--
-- Table structure for table `agent_settings`
--

DROP TABLE IF EXISTS `agent_settings`;
CREATE TABLE IF NOT EXISTS `agent_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `desc` text COLLATE utf8_bin NOT NULL,
  `gumtree_api_update` tinyint(1) NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `company_address` text COLLATE utf8_bin NOT NULL COMMENT 'address in html',
  PRIMARY KEY (`id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `agent_settings`
--

INSERT INTO `agent_settings` (`id`, `manager_id`, `name`, `desc`, `gumtree_api_update`, `phone`, `email`, `company_address`) VALUES
(1, 1, 'Lettings of London', 'Here at Lettings of London Ltd, we strive to meet your property requirements and are committed to providing you the highest levels of service. Whether you are moving IN or OUT, we are available 24 hours a day. It’s our policy to be 100% open and honest. Our multilingual team live, work and play in various parts of London. The area you are considering buying, selling or renting in are familiar to us.  We offer a full range of property-related services.\n \nWe aim to make the process of moving easier. In addition to our regular mainstream services, we offer a service where we put the vendor, landlord and the tenant in direct contact.', 1, '02032955000,07956522481', 'info@lettingsoflondon.com', 'Building 4 , North London Business Park Oakleigh Road , London N11 1NP');

-- --------------------------------------------------------

--
-- Table structure for table `agreement_status`
--

DROP TABLE IF EXISTS `agreement_status`;
CREATE TABLE IF NOT EXISTS `agreement_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='status for letting and sales';

--
-- Dumping data for table `agreement_status`
--

INSERT INTO `agreement_status` (`id`, `title`) VALUES
(1, 'Agreed'),
(2, 'Active'),
(3, 'Expired'),
(4, 'Terminated');

-- --------------------------------------------------------

--
-- Table structure for table `api_status`
--

DROP TABLE IF EXISTS `api_status`;
CREATE TABLE IF NOT EXISTS `api_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='status of api website''s list';

--
-- Dumping data for table `api_status`
--

INSERT INTO `api_status` (`id`, `title`) VALUES
(1, 'Pending'),
(2, 'Listed'),
(3, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `api_websites`
--

DROP TABLE IF EXISTS `api_websites`;
CREATE TABLE IF NOT EXISTS `api_websites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `folder` varchar(20) COLLATE utf8_bin NOT NULL,
  `rent` tinyint(1) NOT NULL,
  `sales` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Property Management Websites';

--
-- Dumping data for table `api_websites`
--

INSERT INTO `api_websites` (`id`, `title`, `folder`, `rent`, `sales`) VALUES
(1, 'Rightmove.co.uk', 'RightMove', 1, 1),
(2, 'Zoopla.co.uk', 'Zoopla', 1, 1),
(3, 'Gumtree.co.uk', 'Gumtree', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
CREATE TABLE IF NOT EXISTS `branches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  `desc` text COLLATE utf8_bin NOT NULL,
  `h_no` varchar(100) COLLATE utf8_bin NOT NULL,
  `street` varchar(100) COLLATE utf8_bin NOT NULL,
  `city` varchar(40) COLLATE utf8_bin NOT NULL,
  `postcode` varchar(10) COLLATE utf8_bin NOT NULL,
  `phone` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `manager_id`, `title`, `desc`, `h_no`, `street`, `city`, `postcode`, `phone`, `email`) VALUES
(2, 1, 'Lettings of London', 'Here at Lettings of London Ltd, we strive to meet your property requirements and are committed to providing you the highest levels of service. Whether you are moving IN or OUT, we are available 24 hours a day. It&rsquo;s our policy to be 100% open and honest. Our multilingual team live, work and play in various parts of London. The area you are considering buying, selling or renting in are familiar to us. We offer a full range of property-related services.\r\n\r\nWe aim to make the process of moving easier. In addition to our regular mainstream services, we offer a service where we put the vendor, landlord and the tenant in direct contact.', 'Building 4', 'North London Business Park,  Oakleigh Road', 'London', 'N11 1NP', '0203 295 5000,  0795 652 2481', 'info@lettingsoflondon.com');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
CREATE TABLE IF NOT EXISTS `certificates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `title`) VALUES
(1, 'Gas Certificate'),
(2, 'EPC'),
(3, 'Electricity Certificate'),
(4, 'Property Certificates');

-- --------------------------------------------------------

--
-- Table structure for table `certificates_agent`
--

DROP TABLE IF EXISTS `certificates_agent`;
CREATE TABLE IF NOT EXISTS `certificates_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `certificate_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `certificate_id` (`certificate_id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='agent''s certificates';

--
-- Dumping data for table `certificates_agent`
--

INSERT INTO `certificates_agent` (`id`, `certificate_id`, `manager_id`) VALUES
(1, 4, 1),
(2, 1, 1),
(3, 2, 1),
(4, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

DROP TABLE IF EXISTS `cms`;
CREATE TABLE IF NOT EXISTS `cms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `slug` varchar(255) COLLATE utf8_bin NOT NULL,
  `desc` blob NOT NULL,
  `page` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `title`, `slug`, `desc`, `page`) VALUES
(1, 'About Us', 'about-us', 0x3c68323e4f7572204d697373696f6e2053746174656d656e743c2f68323e0d0a3c703e546f20656d706f77657220747261696e65727320746f20696e63726561736520746865206f766572616c6c2070726f66657373696f6e616c207374616e64696e6720616e6420706572736f6e616c2066696e616e6369616c2073746162696c69747920627920646576656c6f70696e6720746865206162696c69747920746f206d6173746572207761797320746f2073656375726520616e64206d61696e7461696e20636c69656e747320696e206120627573696e657373206d616e6e65722e20546869732077696c6c20656e61626c6520747261696e65727320746f20657863656564207468656972206f776e2073657420676f616c7320616e6420746f2068656c70206d616b65206c6f6e672d7465726d20636172656572732074687573207265647563696e6720746865206f766572616c6c207475726e6f766572206f6620737461666620696e2074686520696e6475737472793c2f703e0d0a3c683320636c6173733d227365636f6e642d746f706963223e53454c4620524547554c415249534154494f4e3c2f68333e0d0a3c703e546865206669746e65737320696e6475737472792068617320612066657720697373756573206c696b65206576657279206f746865722e20546f2062652074616b656e20736572696f75736c792074686520696e647573747279206e6565647320746f2073656c6620726567756c61746520696e20646f696e6720736f2074686973206372656174657320612062657474657220656173696c7920756e64657273746f6f642070726f66657373696f6e616c206f75746c6f6f6b20746f2074686520696e6475737472792e3c2f703e0d0a3c683320636c6173733d227365636f6e642d746f706963223e50524f46455353494f4e414c49534d3c2f68333e0d0a3c703e54686572652061726520636f6d70616e696573207375636820617320524550732c204e5250542c204359512c205072656d6965722c20594d43412077686963682073657420696e647573747279207374616e646172647320616e642068656c7020636c75627320616e6420636c69656e74656c6c6520616c696b6520756e6465727374616e6420746865206c6576656c206f6620696e7374727563746f727320616e6420506572736f6e616c20547261696e6572732e2054686572652061726520616c736f20636f6d70616e696573207375636820617320506f6c697175696e2c20756b7363612077686963682070726f76696465207370656369616c69737420747261696e696e672077697468696e2074686520696e6475737472792e20464954412061696d7320746f207365742061206675727468657220706c6174666f726d20666f7220636c69656e747320616e6420636c75627320746f20756e6465727374616e6420746865206c6576656c206f662074686520747261696e65722077697468696e20626f78696e672c20616e642068656c702074686520747261696e6572732068656c70207468656d73656c76657320667572746865722e3c2f703e0d0a3c703e464954412061696d7320746f2072616973652070726f66657373696f6e616c207374616e646172647320616e642068656c702074686520696e647573747279206761696e2061206d6f72652070726f66657373696f6e616c207374617475726520616d6f6e6773742070726f66657373696f6e73207769746820612073696d696c61722063686172676520726174652e3c2f703e0d0a3c683320636c6173733d227365636f6e642d746f706963223e494e445553545259205455524e4f5645523c2f68333e0d0a3c703e54686520696e64757374727920737566666572732066726f6d206120666173742065766572207265766f6c76696e6720646f6f722c20612068696768207475726e6f766572206f6620506572736f6e616c20547261696e657273202c20636c61737320696e7374727563746f72732c2073616c6573207374616666206f722066726f6e7420726563657074696f6e206465736b20746869732064696d696e6973686573206974732061707065616c2061732061206361726565722e20556e74696c2077652063616e20736c6f7720746869732070726f6365737320646f776e2074686520696e64757374727920776f6e27742062652074616b656e20736572696f75736c7920617320612063617265657220706174687761792e3c2f703e0d0a3c683320636c6173733d227365636f6e642d746f706963223e434f4e53495354454e4359204f4620534552564943453c2f68333e0d0a3c703e546865206e65656420746f207374616e64617264697365206f6e2d7468652d666c6f6f7220736572766963652064656c697665727920616e642070726f746563742074686520696e6475737472792066726f6d206761696e696e6720612022636f77626f792220696d6167652074727920746f20736574207374616e6461726473206163726f73732074686520626f6172642077686963682077696c6c2068656c702070726f7465637420626f74682074686520696e6475737472792c2070656f706c65207573696e672069747320736572766963652e3c2f703e0d0a3c703e464954412061696d20746f204964656e7469667920696e6475737472792070726f626c656d20617265617320616e6420706c616365207468652073797374656d7320696e20746f206465616c2077697468207468656d2e3c2f703e, 1),
(2, 'Privacy Policy', 'privacy-policy', 0x3c68323e4f7572204d697373696f6e2053746174656d656e743c2f68323e0d0a3c703e546f20656d706f77657220747261696e65727320746f20696e63726561736520746865206f766572616c6c2070726f66657373696f6e616c207374616e64696e6720616e6420706572736f6e616c2066696e616e6369616c2073746162696c69747920627920646576656c6f70696e6720746865206162696c69747920746f206d6173746572207761797320746f2073656375726520616e64206d61696e7461696e20636c69656e747320696e206120627573696e657373206d616e6e65722e20546869732077696c6c20656e61626c6520747261696e65727320746f20657863656564207468656972206f776e2073657420676f616c7320616e6420746f2068656c70206d616b65206c6f6e672d7465726d20636172656572732074687573207265647563696e6720746865206f766572616c6c207475726e6f766572206f6620737461666620696e2074686520696e6475737472793c2f703e0d0a3c683320636c6173733d227365636f6e642d746f706963223e53454c4620524547554c415249534154494f4e3c2f68333e0d0a3c703e546865206669746e65737320696e6475737472792068617320612066657720697373756573206c696b65206576657279206f746865722e20546f2062652074616b656e20736572696f75736c792074686520696e647573747279206e6565647320746f2073656c6620726567756c61746520696e20646f696e6720736f2074686973206372656174657320612062657474657220656173696c7920756e64657273746f6f642070726f66657373696f6e616c206f75746c6f6f6b20746f2074686520696e6475737472792e3c2f703e0d0a3c683320636c6173733d227365636f6e642d746f706963223e50524f46455353494f4e414c49534d3c2f68333e0d0a3c703e54686572652061726520636f6d70616e696573207375636820617320524550732c204e5250542c204359512c205072656d6965722c20594d43412077686963682073657420696e647573747279207374616e646172647320616e642068656c7020636c75627320616e6420636c69656e74656c6c6520616c696b6520756e6465727374616e6420746865206c6576656c206f6620696e7374727563746f727320616e6420506572736f6e616c20547261696e6572732e2054686572652061726520616c736f20636f6d70616e696573207375636820617320506f6c697175696e2c20756b7363612077686963682070726f76696465207370656369616c69737420747261696e696e672077697468696e2074686520696e6475737472792e20464954412061696d7320746f207365742061206675727468657220706c6174666f726d20666f7220636c69656e747320616e6420636c75627320746f20756e6465727374616e6420746865206c6576656c206f662074686520747261696e65722077697468696e20626f78696e672c20616e642068656c702074686520747261696e6572732068656c70207468656d73656c76657320667572746865722e3c2f703e0d0a3c703e464954412061696d7320746f2072616973652070726f66657373696f6e616c207374616e646172647320616e642068656c702074686520696e647573747279206761696e2061206d6f72652070726f66657373696f6e616c207374617475726520616d6f6e6773742070726f66657373696f6e73207769746820612073696d696c61722063686172676520726174652e3c2f703e0d0a3c683320636c6173733d227365636f6e642d746f706963223e494e445553545259205455524e4f5645523c2f68333e0d0a3c703e54686520696e64757374727920737566666572732066726f6d206120666173742065766572207265766f6c76696e6720646f6f722c20612068696768207475726e6f766572206f6620506572736f6e616c20547261696e657273202c20636c61737320696e7374727563746f72732c2073616c6573207374616666206f722066726f6e7420726563657074696f6e206465736b20746869732064696d696e6973686573206974732061707065616c2061732061206361726565722e20556e74696c2077652063616e20736c6f7720746869732070726f6365737320646f776e2074686520696e64757374727920776f6e27742062652074616b656e20736572696f75736c7920617320612063617265657220706174687761792e3c2f703e0d0a3c683320636c6173733d227365636f6e642d746f706963223e434f4e53495354454e4359204f4620534552564943453c2f68333e0d0a3c703e546865206e65656420746f207374616e64617264697365206f6e2d7468652d666c6f6f7220736572766963652064656c697665727920616e642070726f746563742074686520696e6475737472792066726f6d206761696e696e6720612022636f77626f792220696d6167652074727920746f20736574207374616e6461726473206163726f73732074686520626f6172642077686963682077696c6c2068656c702070726f7465637420626f74682074686520696e6475737472792c2070656f706c65207573696e672069747320736572766963652e3c2f703e0d0a3c703e464954412061696d20746f204964656e7469667920696e6475737472792070726f626c656d20617265617320616e6420706c616365207468652073797374656d7320696e20746f206465616c2077697468207468656d2e3c2f703e, 1),
(3, 'Legal Disclaimer', 'legal-disclaimer', 0x3c68323e4f7572204d697373696f6e2053746174656d656e743c2f68323e0d0a3c703e546f20656d706f77657220747261696e65727320746f20696e63726561736520746865206f766572616c6c2070726f66657373696f6e616c207374616e64696e6720616e6420706572736f6e616c2066696e616e6369616c2073746162696c69747920627920646576656c6f70696e6720746865206162696c69747920746f206d6173746572207761797320746f2073656375726520616e64206d61696e7461696e20636c69656e747320696e206120627573696e657373206d616e6e65722e20546869732077696c6c20656e61626c6520747261696e65727320746f20657863656564207468656972206f776e2073657420676f616c7320616e6420746f2068656c70206d616b65206c6f6e672d7465726d20636172656572732074687573207265647563696e6720746865206f766572616c6c207475726e6f766572206f6620737461666620696e2074686520696e6475737472793c2f703e0d0a3c683320636c6173733d227365636f6e642d746f706963223e53454c4620524547554c415249534154494f4e3c2f68333e0d0a3c703e546865206669746e65737320696e6475737472792068617320612066657720697373756573206c696b65206576657279206f746865722e20546f2062652074616b656e20736572696f75736c792074686520696e647573747279206e6565647320746f2073656c6620726567756c61746520696e20646f696e6720736f2074686973206372656174657320612062657474657220656173696c7920756e64657273746f6f642070726f66657373696f6e616c206f75746c6f6f6b20746f2074686520696e6475737472792e3c2f703e0d0a3c683320636c6173733d227365636f6e642d746f706963223e50524f46455353494f4e414c49534d3c2f68333e0d0a3c703e54686572652061726520636f6d70616e696573207375636820617320524550732c204e5250542c204359512c205072656d6965722c20594d43412077686963682073657420696e647573747279207374616e646172647320616e642068656c7020636c75627320616e6420636c69656e74656c6c6520616c696b6520756e6465727374616e6420746865206c6576656c206f6620696e7374727563746f727320616e6420506572736f6e616c20547261696e6572732e2054686572652061726520616c736f20636f6d70616e696573207375636820617320506f6c697175696e2c20756b7363612077686963682070726f76696465207370656369616c69737420747261696e696e672077697468696e2074686520696e6475737472792e20464954412061696d7320746f207365742061206675727468657220706c6174666f726d20666f7220636c69656e747320616e6420636c75627320746f20756e6465727374616e6420746865206c6576656c206f662074686520747261696e65722077697468696e20626f78696e672c20616e642068656c702074686520747261696e6572732068656c70207468656d73656c76657320667572746865722e3c2f703e0d0a3c703e464954412061696d7320746f2072616973652070726f66657373696f6e616c207374616e646172647320616e642068656c702074686520696e647573747279206761696e2061206d6f72652070726f66657373696f6e616c207374617475726520616d6f6e6773742070726f66657373696f6e73207769746820612073696d696c61722063686172676520726174652e3c2f703e0d0a3c683320636c6173733d227365636f6e642d746f706963223e494e445553545259205455524e4f5645523c2f68333e0d0a3c703e54686520696e64757374727920737566666572732066726f6d206120666173742065766572207265766f6c76696e6720646f6f722c20612068696768207475726e6f766572206f6620506572736f6e616c20547261696e657273202c20636c61737320696e7374727563746f72732c2073616c6573207374616666206f722066726f6e7420726563657074696f6e206465736b20746869732064696d696e6973686573206974732061707065616c2061732061206361726565722e20556e74696c2077652063616e20736c6f7720746869732070726f6365737320646f776e2074686520696e64757374727920776f6e27742062652074616b656e20736572696f75736c7920617320612063617265657220706174687761792e3c2f703e0d0a3c683320636c6173733d227365636f6e642d746f706963223e434f4e53495354454e4359204f4620534552564943453c2f68333e0d0a3c703e546865206e65656420746f207374616e64617264697365206f6e2d7468652d666c6f6f7220736572766963652064656c697665727920616e642070726f746563742074686520696e6475737472792066726f6d206761696e696e6720612022636f77626f792220696d6167652074727920746f20736574207374616e6461726473206163726f73732074686520626f6172642077686963682077696c6c2068656c702070726f7465637420626f74682074686520696e6475737472792c2070656f706c65207573696e672069747320736572766963652e3c2f703e0d0a3c703e464954412061696d20746f204964656e7469667920696e6475737472792070726f626c656d20617265617320616e6420706c616365207468652073797374656d7320696e20746f206465616c2077697468207468656d2e3c2f703e, 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `code`, `name`) VALUES
(2, 'AF', 'Afghanistan'),
(3, 'AL', 'Albania'),
(4, 'DZ', 'Algeria'),
(5, 'AS', 'American samoa'),
(6, 'AD', 'Andorra'),
(7, 'AO', 'Angola'),
(8, 'AI', 'Anguilla'),
(9, 'AQ', 'Antarctica'),
(10, 'AG', 'Antigua and Barbuda'),
(11, 'AR', 'Argentina'),
(12, 'AM', 'Armenia'),
(13, 'AW', 'Aruba'),
(14, 'AU', 'Australia'),
(15, 'AT', 'Austria'),
(16, 'AZ', 'Azerbaijan'),
(17, 'BS', 'Bahamas'),
(18, 'BH', 'Bahrain'),
(19, 'BD', 'Bangladesh'),
(20, 'BB', 'Barbados'),
(21, 'BY', 'Belarus'),
(22, 'BE', 'Belgium'),
(23, 'BZ', 'Belize'),
(24, 'BJ', 'Benin'),
(25, 'BM', 'Bermuda'),
(26, 'BT', 'Bhutan'),
(27, 'BO', 'Bolivia'),
(28, 'BA', 'Bosnia hercegovina'),
(29, 'BW', 'Botswana'),
(30, 'BV', 'Bouvet Island'),
(31, 'BR', 'Brazil'),
(32, 'IO', 'British indian ocean territory'),
(33, 'BN', 'Brunei darussalam'),
(34, 'BG', 'Bulgaria'),
(35, 'BF', 'Burkina faso'),
(36, 'BI', 'Burundi'),
(37, 'KH', 'Cambodia'),
(38, 'CM', 'Cameroon'),
(39, 'CA', 'Canada'),
(40, 'CV', 'Cape verde'),
(41, 'KY', 'Cayman Islands'),
(42, 'CF', 'Central African Republic'),
(43, 'TD', 'Chad'),
(44, 'CL', 'Chile'),
(45, 'CN', 'China'),
(46, 'CX', 'Christmas Island'),
(47, 'CC', 'Cocos (keeling) islands'),
(48, 'CO', 'Colombia'),
(49, 'KM', 'Comoros'),
(50, 'CG', 'Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa rica'),
(53, 'CI', 'Cote   d\'ivoire'),
(54, 'HR', 'Croatia'),
(55, 'CU', 'Cuba'),
(56, 'CY', 'Cyprus'),
(57, 'CZ', 'Czech republic'),
(58, 'CS', 'Czechoslovakia'),
(59, 'DK', 'Denmark'),
(60, 'DJ', 'Djibouti'),
(61, 'DM', 'Dominica'),
(62, 'DO', 'Dominican Republic'),
(63, 'TP', 'East   timor'),
(64, 'EC', 'Ecuador'),
(65, 'EG', 'Egypt'),
(66, 'SV', 'El   salvador'),
(67, 'GQ', 'Equatorial guinea'),
(68, 'EE', 'Estonia'),
(69, 'ET', 'Ethiopia'),
(70, 'FK', 'Falkland islands (malvinas)'),
(71, 'FO', 'Faroe islands'),
(72, 'FJ', 'Fiji'),
(73, 'FI', 'Finland'),
(74, 'FR', 'France'),
(75, 'GF', 'French guiana'),
(76, 'PF', 'French   polynesia'),
(77, 'TF', 'French southern territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and mc donald islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (islamic republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'JM', 'Jamaica'),
(107, 'JP', 'Japan'),
(108, 'JO', 'Jordan'),
(109, 'KZ', 'Kazakhstan'),
(110, 'KE', 'Kenya'),
(111, 'KI', 'Kiribati'),
(112, 'KP', 'Korea, democratic people\'s republic of'),
(113, 'KR', 'Korea, republic   of'),
(114, 'KW', 'Kuwait'),
(115, 'KG', 'Kyrgyzstan'),
(116, 'LA', 'Lao   people\'s democratic republic'),
(117, 'LV', 'Latvia'),
(118, 'LB', 'Lebanon'),
(119, 'LS', 'Lesotho'),
(120, 'LR', 'Liberia'),
(121, 'LY', 'Libyan arab jamahiriya'),
(122, 'LI', 'Liechtenstein'),
(123, 'LT', 'Lithuania'),
(124, 'LU', 'Luxembourg'),
(125, 'MO', 'Macau'),
(126, 'MG', 'Madagascar'),
(127, 'MW', 'Malawi'),
(128, 'MY', 'Malaysia'),
(129, 'MV', 'Maldives'),
(130, 'ML', 'Mali'),
(131, 'MT', 'Malta'),
(132, 'MH', 'Marshall islands'),
(133, 'MQ', 'Martinique'),
(134, 'MR', 'Mauritania'),
(135, 'MU', 'Mauritius'),
(136, 'MX', 'Mexico'),
(137, 'FM', 'Micronesia'),
(138, 'MD', 'Moldova, republic of'),
(139, 'MC', 'Monaco'),
(140, 'MN', 'Mongolia'),
(141, 'MS', 'Montserrat'),
(142, 'MA', 'Morocco'),
(143, 'MZ', 'Mozambique'),
(144, 'MM', 'Myanmar'),
(145, 'NA', 'Namibia'),
(146, 'NR', 'Nauru'),
(147, 'NP', 'Nepal'),
(148, 'NL', 'Netherlands'),
(149, 'AN', 'Netherlands antilles'),
(150, 'NT', 'Neutral zone'),
(151, 'NC', 'New caledonia'),
(152, 'NZ', 'New zealand'),
(153, 'NI', 'Nicaragua'),
(154, 'NE', 'Niger'),
(155, 'NG', 'Nigeria'),
(156, 'NU', 'Niue'),
(157, 'NF', 'Norfolk island'),
(158, 'MP', 'Northern mariana islands'),
(159, 'NO', 'Norway'),
(160, 'OM', 'Oman'),
(161, 'PK', 'Pakistan'),
(162, 'PW', 'Palau'),
(163, 'PA', 'Panama'),
(164, 'PG', 'Papua new guinea'),
(165, 'PY', 'Paraguay'),
(166, 'PE', 'Peru'),
(167, 'PH', 'Philippines'),
(168, 'PN', 'Pitcairn'),
(169, 'PL', 'Poland'),
(170, 'PT', 'Portugal'),
(171, 'PR', 'Puerto rico'),
(172, 'QA', 'Qatar'),
(173, 'RE', 'Reunion'),
(174, 'RO', 'Romania'),
(175, 'RU', 'Russian federation'),
(176, 'RW', 'Rwanda'),
(177, 'KN', 'Saint kitts and nevis'),
(178, 'LC', 'Saint lucia'),
(179, 'VC', 'Saint vincent and the grenadines'),
(180, 'WS', 'Samoa'),
(181, 'SM', 'San marino'),
(182, 'ST', 'Sao tome and principe'),
(183, 'SA', 'Saudi arabia'),
(184, 'SN', 'Senegal'),
(185, 'SC', 'Seychelles'),
(186, 'SL', 'Sierra leone'),
(187, 'SG', 'Singapore'),
(188, 'SK', 'Slovakia'),
(189, 'SI', 'Slovenia'),
(190, 'SB', 'Solomon islands'),
(191, 'SO', 'Somalia'),
(192, 'ZA', 'South   africa'),
(193, 'ES', 'Spain'),
(194, 'LK', 'Sri lanka'),
(195, 'SH', 'St.   helena'),
(196, 'PM', 'St. pierre and miquelon'),
(197, 'SD', 'Sudan'),
(198, 'SR', 'Suriname'),
(199, 'SJ', 'Svalbard and jan mayen islands'),
(200, 'SZ', 'Swaziland'),
(201, 'SE', 'Sweden'),
(202, 'CH', 'Switzerland'),
(203, 'SY', 'Syrian arab republic'),
(204, 'TW', 'Taiwan, republic of china'),
(205, 'TJ', 'Tajikistan'),
(206, 'TZ', 'Tanzania, united republic of'),
(207, 'TH', 'Thailand'),
(208, 'TG', 'Togo'),
(209, 'TK', 'Tokelau'),
(210, 'TO', 'Tonga'),
(211, 'TT', 'Trinidad and tobago'),
(212, 'TN', 'Tunisia'),
(213, 'TR', 'Turkey'),
(214, 'TM', 'Turkmenistan'),
(215, 'TC', 'Turks and caicos islands'),
(216, 'TV', 'Tuvalu'),
(217, 'UG', 'Uganda'),
(218, 'UA', 'Ukraine'),
(219, 'AE', 'United arab emirates'),
(220, 'GB', 'United kingdom'),
(221, 'US', 'United states'),
(222, 'UM', 'United states minor outlying islands'),
(223, 'UY', 'Uruguay'),
(224, 'SU', 'Ussr'),
(225, 'UZ', 'Uzbekistan'),
(226, 'VU', 'Vanuatu'),
(227, 'VA', 'Vatican city state (holy see)'),
(228, 'VE', 'Venezuela'),
(229, 'VN', 'Viet nam'),
(230, 'VG', 'Virgin islands (british)'),
(231, 'VI', 'Virgin islands (u.s.)'),
(232, 'WF', 'Wallis and futuna islands'),
(233, 'EH', 'Western sahara'),
(234, 'YE', 'Yemen, republic of'),
(235, 'YU', 'Yugoslavia'),
(236, 'ZR', 'Zaire'),
(237, 'ZM', 'Zambia'),
(238, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `deposit_held`
--

DROP TABLE IF EXISTS `deposit_held`;
CREATE TABLE IF NOT EXISTS `deposit_held` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `deposit_held`
--

INSERT INTO `deposit_held` (`id`, `title`) VALUES
(1, 'Protection Scheme'),
(2, 'Landlord'),
(3, 'Agent');

-- --------------------------------------------------------

--
-- Table structure for table `doc_type`
--

DROP TABLE IF EXISTS `doc_type`;
CREATE TABLE IF NOT EXISTS `doc_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `doc_type`
--

INSERT INTO `doc_type` (`id`, `title`) VALUES
(1, 'Legal Contract'),
(2, 'Searches'),
(3, 'Title Plan'),
(4, 'Asts/Lease'),
(5, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expense_date` date NOT NULL,
  `cost` double NOT NULL,
  `tax` double NOT NULL,
  `note` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manager_id` (`manager_id`),
  KEY `created_by_id` (`created_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `manager_id`, `created_by_id`, `created_date`, `expense_date`, `cost`, `tax`, `note`) VALUES
(1, 1, 1, '2019-01-04 16:24:13', '2019-01-01', 200, 0, ''),
(2, 1, 1, '2019-01-04 16:38:29', '2018-12-12', 30, 0, ''),
(3, 1, 1, '2019-01-08 05:43:55', '2019-01-09', 300, 0, ''),
(4, 1, 1, '2019-01-08 10:05:45', '2019-01-04', 50, 7, ''),
(5, 1, 1, '2019-01-09 06:22:58', '2019-01-09', 50, 0, ''),
(6, 1, 1, '2019-01-09 06:24:09', '2019-01-09', 50, 0, ''),
(7, 1, 1, '2019-01-09 06:37:39', '2018-12-30', 120, 10, ''),
(8, 1, 1, '2019-01-09 07:28:41', '2019-01-01', 500, 0, ''),
(9, 1, 1, '2019-01-09 07:30:01', '2019-01-02', 300, 0, ''),
(10, 1, 1, '2019-01-09 07:30:52', '2019-01-01', 300, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

DROP TABLE IF EXISTS `expense_categories`;
CREATE TABLE IF NOT EXISTS `expense_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `manager_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `title`, `manager_id`) VALUES
(1, 'Travel Expenses', 1),
(2, 'Rent Collection Related', 1),
(3, 'Other Expenses', 1);

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

DROP TABLE IF EXISTS `expense_category`;
CREATE TABLE IF NOT EXISTS `expense_category` (
  `expense_id` int(11) NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `expense_category_title` text COLLATE utf8_bin NOT NULL,
  KEY `expense_id` (`expense_id`),
  KEY `expense_category_id` (`expense_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`expense_id`, `expense_category_id`, `expense_category_title`) VALUES
(7, 2, 'Expense category 1'),
(4, 2, 'Expense category 1'),
(3, 2, 'Expense category 1'),
(10, 2, 'Expense category 1'),
(6, 3, 'Other Expenses');

-- --------------------------------------------------------

--
-- Table structure for table `expense_property`
--

DROP TABLE IF EXISTS `expense_property`;
CREATE TABLE IF NOT EXISTS `expense_property` (
  `expense_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `property_title` text COLLATE utf8_bin NOT NULL,
  KEY `expense_id` (`expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `expense_property`
--

INSERT INTO `expense_property` (`expense_id`, `property_id`, `property_title`) VALUES
(5, 25, 'LOL02 - 1 bedroom house of multiple occupation to rent'),
(8, 35, 'LOL12 - 3 bedroom terraced house to rent'),
(9, 35, 'LOL12 - 3 bedroom terraced house to rent'),
(10, 39, 'wembleyhouse - 2 double Bedroom House. AVAILABLE LATE AUGUST. Call now HA0. Close to Tube and Train'),
(6, 24, 'LOL01 - 2 bedroom apartment to rent');

-- --------------------------------------------------------

--
-- Table structure for table `expense_vendor`
--

DROP TABLE IF EXISTS `expense_vendor`;
CREATE TABLE IF NOT EXISTS `expense_vendor` (
  `expense_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `vendor_title` text COLLATE utf8_bin NOT NULL,
  KEY `expense_id` (`expense_id`),
  KEY `vendor_id` (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `expense_vendor`
--

INSERT INTO `expense_vendor` (`expense_id`, `vendor_id`, `vendor_title`) VALUES
(1, 28, 'Ajay Testing'),
(2, 28, 'Ajay Testing'),
(5, 63, 'Aravind , Aravind Mills Pvt Ltd'),
(6, 66, 'Jixon Jacson Pvt ltd');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
CREATE TABLE IF NOT EXISTS `features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_type_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `property_type_id` (`property_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `property_type_id`, `title`, `multiple`) VALUES
(1, 1, 'Bedroom(s)', 0),
(2, 1, 'Bathroom(s)', 0),
(5, 1, 'Outdoor Space', 1),
(6, 1, 'Pets', 0),
(7, 1, 'DSS/LHA', 0);

-- --------------------------------------------------------

--
-- Table structure for table `features_agent`
--

DROP TABLE IF EXISTS `features_agent`;
CREATE TABLE IF NOT EXISTS `features_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `feature_id` (`feature_id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `feature_values`
--

DROP TABLE IF EXISTS `feature_values`;
CREATE TABLE IF NOT EXISTS `feature_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_id` int(11) NOT NULL,
  `value` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `feature_id` (`feature_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feature_values`
--

INSERT INTO `feature_values` (`id`, `feature_id`, `value`) VALUES
(1, 1, '1'),
(2, 1, '2'),
(3, 1, '3'),
(4, 1, '4'),
(6, 1, '5'),
(7, 1, '6'),
(8, 2, '1'),
(9, 2, '2'),
(10, 2, '3'),
(11, 2, '4'),
(13, 2, '5'),
(22, 5, 'Garden'),
(23, 5, 'Parking'),
(24, 6, 'Pets Allowed'),
(25, 6, 'Pets Not Allowed'),
(26, 7, 'YES'),
(27, 7, 'No DSS/LHA'),
(28, 1, '7'),
(29, 1, '8'),
(30, 1, '9'),
(31, 1, '10'),
(32, 1, '11'),
(33, 1, '12'),
(34, 1, '13'),
(35, 1, '14'),
(36, 1, '15'),
(37, 1, '15+'),
(38, 1, 'Studio+');

-- --------------------------------------------------------

--
-- Table structure for table `furnished_type`
--

DROP TABLE IF EXISTS `furnished_type`;
CREATE TABLE IF NOT EXISTS `furnished_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) COLLATE utf8_bin NOT NULL,
  `gumtree_api_id` varchar(1) COLLATE utf8_bin NOT NULL,
  `rightmove_api_id` varchar(1) COLLATE utf8_bin NOT NULL,
  `zoopla_api_id` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `furnished_type`
--

INSERT INTO `furnished_type` (`id`, `title`, `gumtree_api_id`, `rightmove_api_id`, `zoopla_api_id`) VALUES
(1, 'Not Specified', '3', '4', 'furnished_or_unfurnished'),
(2, 'Unfurnished', '2', '2', 'unfurnished'),
(3, 'Partly Furnished', '1', '1', 'part_furnished'),
(4, 'Furnished', '0', '0', 'furnished');

-- --------------------------------------------------------

--
-- Table structure for table `gumtree_log`
--

DROP TABLE IF EXISTS `gumtree_log`;
CREATE TABLE IF NOT EXISTS `gumtree_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `count` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `gumtree_log`
--

INSERT INTO `gumtree_log` (`id`, `manager_id`, `date`, `count`) VALUES
(1, 1, '2018-09-06 10:15:16', 60),
(2, 1, '2018-09-13 10:44:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inspection_rating`
--

DROP TABLE IF EXISTS `inspection_rating`;
CREATE TABLE IF NOT EXISTS `inspection_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `inspection_rating`
--

INSERT INTO `inspection_rating` (`id`, `title`) VALUES
(1, 'Not applicable'),
(2, 'Serious defect found'),
(3, 'Defect detected'),
(4, 'Requires immediate attention'),
(5, 'Maintenance required'),
(6, 'Fair condition'),
(7, 'Good condition'),
(8, 'Very good condition');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_type`
--

DROP TABLE IF EXISTS `insurance_type`;
CREATE TABLE IF NOT EXISTS `insurance_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `insurance_type`
--

INSERT INTO `insurance_type` (`id`, `title`) VALUES
(1, 'Business Interruption'),
(2, 'Contract Works'),
(3, 'Loss of Rent'),
(4, 'Material Damage & Interruption Cover'),
(5, 'Public Liability');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_type_agent`
--

DROP TABLE IF EXISTS `insurance_type_agent`;
CREATE TABLE IF NOT EXISTS `insurance_type_agent` (
  `insurance_type_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  KEY `insurance_type_id` (`insurance_type_id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_report_type`
--

DROP TABLE IF EXISTS `inventory_report_type`;
CREATE TABLE IF NOT EXISTS `inventory_report_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `inventory_report_type`
--

INSERT INTO `inventory_report_type` (`id`, `title`) VALUES
(1, 'Inventory and Check In Report'),
(2, 'Inspection Report'),
(3, 'Check Out Report'),
(4, 'Commercial Inventory Report');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_no` varchar(100) COLLATE utf8_bin NOT NULL,
  `manager_id` int(11) NOT NULL,
  `dated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `due_on` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `send` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'if not send, then it''s a draft invoices',
  `title` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'title for invoice',
  `comments` text COLLATE utf8_bin NOT NULL COMMENT 'comments that need to be shown in the invoice',
  `invoice_profile_id` int(11) NOT NULL DEFAULT '0' COMMENT 'if the invoice is not generated through an invoice profile, then its value will be always zero',
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manager_id` (`manager_id`),
  KEY `user_id` (`user_id`),
  KEY `created_by_id` (`created_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `ref_no`, `manager_id`, `dated_on`, `due_on`, `user_id`, `send`, `title`, `comments`, `invoice_profile_id`, `created_by_id`) VALUES
(4, '7897', 1, '2018-05-22 18:30:00', '2018-05-31', 65, 1, 'Service purchase', '', 0, 1),
(6, '7896', 1, '2018-05-24 11:37:28', '2018-05-31', 28, 1, 'Maintenance Invoice', 'Payment is due within 15 days\r\n\r\nTHANK YOU FOR YOUR BUSINESS!', 0, 1),
(7, 'T/50TR/003', 1, '2018-05-25 18:30:00', '2018-06-19', 19, 0, 'Rent for property 2 bed room flat', '', 0, 1),
(8, '7899', 1, '2018-05-31 18:30:00', '2018-09-15', 26, 0, 'Rent for 2 bed room flat for rent 01/03/2018 to 01/04/2018', 'Hello, I&#039;m Giuseppa. I sent an email yesterday to arrange a viewing for this flat. I received a call today, but unfornutately I couldn&#039;t answer because I was working. Could you send me and email back to let me know about it and to let me know if I can call you back after 6pm, please?', 0, 1),
(13, 'T/50TR/001', 1, '2019-01-01 18:30:00', '2019-01-07', 28, 1, 'Rent collection', '', 1, 1),
(14, '7901', 1, '2019-01-07 18:30:00', '2019-01-17', 15, 0, 'Rent Commission ', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

DROP TABLE IF EXISTS `invoice_items`;
CREATE TABLE IF NOT EXISTS `invoice_items` (
  `invoice_id` int(11) NOT NULL,
  `desc` text COLLATE utf8_bin NOT NULL,
  `tax` float NOT NULL DEFAULT '0' COMMENT 'in %',
  `qty` int(11) NOT NULL DEFAULT '1',
  `amount` double NOT NULL,
  KEY `invoice_id` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`invoice_id`, `desc`, `tax`, `qty`, `amount`) VALUES
(6, 'Maintenance ', 20, 1, 1200),
(6, 'Maintenance  Support', 0, 1, 100),
(13, 'Rent ', 0, 1, 1000),
(7, 'Rent for property 2 bed room flat', 20, 1, 100),
(14, 'Rent Commission  - 7% of (1000 x 12) ', 0, 1, 840),
(8, 'Rent for 2 bed room flat for rent 01/03/2018 to 01/04/2018', 20, 1, 200),
(4, 'Item 1', 20, 1, 100),
(4, 'item 3', 5, 10, 100);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_lettings`
--

DROP TABLE IF EXISTS `invoice_lettings`;
CREATE TABLE IF NOT EXISTS `invoice_lettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_letting_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_letting_id` (`property_letting_id`),
  KEY `invoice_id` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_profiles`
--

DROP TABLE IF EXISTS `invoice_profiles`;
CREATE TABLE IF NOT EXISTS `invoice_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_no` varchar(100) COLLATE utf8_bin NOT NULL,
  `manager_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'Client ID',
  `dated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `send` tinyint(1) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `comments` text COLLATE utf8_bin NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `frequency` int(11) NOT NULL,
  `frequency_term_id` int(11) NOT NULL,
  `due_day` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manager_id` (`manager_id`),
  KEY `user_id` (`user_id`),
  KEY `frequency_term_id` (`frequency_term_id`),
  KEY `created_by_id` (`created_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Invoice profile for recurring invoices';

--
-- Dumping data for table `invoice_profiles`
--

INSERT INTO `invoice_profiles` (`id`, `ref_no`, `manager_id`, `user_id`, `dated_on`, `send`, `title`, `comments`, `start_date`, `end_date`, `frequency`, `frequency_term_id`, `due_day`, `status`, `created_by_id`) VALUES
(1, '3744', 1, 28, '2019-01-02 14:52:50', 1, 'Rent collection', '', '2018-12-01', '2019-01-31', 1, 2, 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_profile_cron_log`
--

DROP TABLE IF EXISTS `invoice_profile_cron_log`;
CREATE TABLE IF NOT EXISTS `invoice_profile_cron_log` (
  `invoice_profile_id` int(11) NOT NULL,
  `log_on` date NOT NULL,
  KEY `invoice_profile_id` (`invoice_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `invoice_profile_cron_log`
--

INSERT INTO `invoice_profile_cron_log` (`invoice_profile_id`, `log_on`) VALUES
(1, '2019-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_profile_items`
--

DROP TABLE IF EXISTS `invoice_profile_items`;
CREATE TABLE IF NOT EXISTS `invoice_profile_items` (
  `invoice_profile_id` int(11) NOT NULL,
  `desc` text COLLATE utf8_bin NOT NULL,
  `tax` double NOT NULL DEFAULT '0',
  `qty` int(11) NOT NULL DEFAULT '1',
  `amount` double NOT NULL,
  KEY `invoice_profile_id` (`invoice_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `invoice_profile_items`
--

INSERT INTO `invoice_profile_items` (`invoice_profile_id`, `desc`, `tax`, `qty`, `amount`) VALUES
(1, 'Rent ', 0, 1, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_profile_lettings`
--

DROP TABLE IF EXISTS `invoice_profile_lettings`;
CREATE TABLE IF NOT EXISTS `invoice_profile_lettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_letting_id` int(11) NOT NULL,
  `invoice_profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_letting_id` (`property_letting_id`),
  KEY `invoice_profile_id` (`invoice_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_profile_property`
--

DROP TABLE IF EXISTS `invoice_profile_property`;
CREATE TABLE IF NOT EXISTS `invoice_profile_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `invoice_profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_id` (`property_id`),
  KEY `invoice_profile_id` (`invoice_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_property`
--

DROP TABLE IF EXISTS `invoice_property`;
CREATE TABLE IF NOT EXISTS `invoice_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `property_id` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_receipts`
--

DROP TABLE IF EXISTS `invoice_receipts`;
CREATE TABLE IF NOT EXISTS `invoice_receipts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `receipt_payment_type_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `dated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `received_on` date NOT NULL,
  `desc` text COLLATE utf8_bin NOT NULL COMMENT 'Desc/note about the payment',
  `user_id` int(11) NOT NULL,
  `receipt_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `user_id` (`user_id`),
  KEY `receipt_payment_type_id` (`receipt_payment_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `invoice_receipts`
--

INSERT INTO `invoice_receipts` (`id`, `invoice_id`, `receipt_payment_type_id`, `amount`, `dated_on`, `received_on`, `desc`, `user_id`, `receipt_no`) VALUES
(17, 4, 2, 20, '2018-11-26 16:40:30', '2018-11-22', '', 1, 1),
(18, 4, 2, 200, '2018-11-26 16:41:01', '2018-11-15', '', 1, 2),
(19, 4, 2, 100, '2018-11-27 10:00:21', '2018-11-13', '', 1, 3),
(20, 8, 2, 500, '2018-11-27 10:50:16', '2018-10-30', '', 1, 4),
(23, 6, 1, 20, '2018-12-28 10:01:37', '2018-12-13', '', 1, 7),
(24, 6, 1, 20, '2018-12-28 10:09:31', '2018-12-18', '', 1, 8),
(25, 6, 1, 20, '2018-12-28 10:11:07', '2018-12-11', '', 1, 9),
(26, 6, 2, 20, '2018-12-28 10:12:32', '2018-12-06', '', 1, 10),
(27, 7, 1, 25, '2018-12-28 11:52:47', '2018-12-28', '', 1, 11),
(28, 13, 1, 200, '2019-03-19 05:57:30', '2019-03-14', '', 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `key_status`
--

DROP TABLE IF EXISTS `key_status`;
CREATE TABLE IF NOT EXISTS `key_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'False - Out, True - In',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Status of the key';

--
-- Dumping data for table `key_status`
--

INSERT INTO `key_status` (`id`, `title`, `status`) VALUES
(1, 'With Agent', 1),
(2, 'With Landlord/Owner', 0),
(3, 'With Tenant', 0);

-- --------------------------------------------------------

--
-- Table structure for table `key_status_property_for`
--

DROP TABLE IF EXISTS `key_status_property_for`;
CREATE TABLE IF NOT EXISTS `key_status_property_for` (
  `key_status_id` int(11) NOT NULL,
  `property_for_id` int(11) NOT NULL,
  KEY `key_status_id` (`key_status_id`),
  KEY `property_for_id` (`property_for_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `key_status_property_for`
--

INSERT INTO `key_status_property_for` (`key_status_id`, `property_for_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `knowledge`
--

DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE IF NOT EXISTS `knowledge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowledge_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `desc` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `knowledge_category_id` (`knowledge_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_category`
--

DROP TABLE IF EXISTS `knowledge_category`;
CREATE TABLE IF NOT EXISTS `knowledge_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `desc` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
CREATE TABLE IF NOT EXISTS `leads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_id` int(11) NOT NULL,
  `posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `lname` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `h_no` varchar(100) COLLATE utf8_bin NOT NULL,
  `street` varchar(255) COLLATE utf8_bin NOT NULL,
  `city` varchar(255) COLLATE utf8_bin NOT NULL,
  `postcode` varchar(10) COLLATE utf8_bin NOT NULL,
  `phone` varchar(255) COLLATE utf8_bin NOT NULL,
  `message` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `manager_id`, `posted`, `company`, `name`, `lname`, `email`, `h_no`, `street`, `city`, `postcode`, `phone`, `message`) VALUES
(2, 1, '2018-12-21 10:28:59', 'HashWide Pvt Ltd', 'Ajay', 'kumar', '', '', '', '', '', '1234567890', 'Need a 3 bed room in enfield');

-- --------------------------------------------------------

--
-- Table structure for table `lead_acct_type`
--

DROP TABLE IF EXISTS `lead_acct_type`;
CREATE TABLE IF NOT EXISTS `lead_acct_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manager_id` (`manager_id`),
  KEY `user_type_id` (`user_type_id`),
  KEY `lead_id` (`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `lettings_agreement_templates`
--

DROP TABLE IF EXISTS `lettings_agreement_templates`;
CREATE TABLE IF NOT EXISTS `lettings_agreement_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `content` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lettings_agreement_templates`
--

INSERT INTO `lettings_agreement_templates` (`id`, `title`, `content`) VALUES
(1, 'Basic Residential Agreement', 0x3c703e3c7374726f6e673e5245534944454e5449414c204c454153452041475245454d454e543c2f7374726f6e673e3c2f703e0d0a3c703e546869732061677265656d656e742c206461746564207b637265617465645f646174657d2c206973206265747765656e207b6c616e646c6f72647d20616e64207b74656e616e747d2e3c2f703e0d0a3c703e3c7374726f6e673e312e2050726f7065727479204d616e616765723a3c2f7374726f6e673e3c6272202f3e5468652050726f7065727479204d616e6167657228732920616e642f6f72206167656e742873292069732f61726520616e642077696c6c20626520726566657272656420746f20696e2074686973204c656173652041677265656d656e74206173202250726f7065727479204d616e616765722e223c2f703e0d0a3c703e7b6c616e646c6f72647d3c6272202f3e284f776e6572293c2f703e0d0a3c703e3c7374726f6e673e322e2054454e414e543a3c2f7374726f6e673e3c6272202f3e5468652054656e616e742873292069732f6172653a3c6272202f3e7b74656e616e747d20616e642077696c6c20626520726566657272656420746f20696e2074686973204c656173652041677265656d656e74206173202254656e616e742e223c2f703e0d0a3c703e3c7374726f6e673e332e2052454e54414c2050524f50455254593a3c2f7374726f6e673e3c6272202f3e5468652050726f7065727479204d616e616765722061677265657320746f2072656e7420746f207468652054656e616e74207468652070726f7065727479206465736372696265642061732061286e29207b70726f70657274795f747970657d207b686f7573655f6e6f7d206c6f6361746564206174207b70726f70657274795f616464726573737d2077686963682077696c6c20626520726566657272656420746f20696e2074686973204c656173652061732074686520224c6561736564205072656d697365732e223c2f703e0d0a3c703e3c7374726f6e673e342e205445524d204f46204c454153452041475245454d454e543a3c2f7374726f6e673e3c6272202f3e546865204c656173652041677265656d656e742077696c6c20626567696e206f6e207b73746172745f646174657d20616e642077696c6c20656e64206f6e207b656e645f646174657d2e3c2f703e0d0a3c703e3c7374726f6e673e352e205553452026616d703b204f43435550414e4359204f462050524f50455254593a3c2f7374726f6e673e3c6272202f3e546865206f6e6c7920706572736f6e287329206c6976696e6720696e20746865204c6561736564205072656d697365732069732f6172653a207b74656e616e747d2e3c2f703e0d0a3c703e3c7374726f6e673e362e2052454e54204455453a3c2f7374726f6e673e3c6272202f3e3c7374726f6e673e412e3c2f7374726f6e673e2054686520616d6f756e74206f66207468652052656e74206973207b72656e747d20746f2062652070616964207b7363686564756c65317d2e3c6272202f3e3c7374726f6e673e422e3c2f7374726f6e673e205468652072656e742069732064756520696e20616476616e6365206f6e206f72206265666f726520746865207b6475656461797d20646179206f66207b7363686564756c655f7072656669787d207b7363686564756c65327d2e205468652072656e74206475652064617465206973207468652064617465207468652050726f7065727479204d616e61676572206d7573742072656365697665207468652054656e616e742773207061796d656e742e3c2f703e0d0a3c703e3c6272202f3e3c7374726f6e673e372e205345435552495459204445504f5349543a3c2f7374726f6e673e3c6272202f3e3c7374726f6e673e412e3c2f7374726f6e673e205468652054656e616e742873292068617665207061696420746f207468652050726f7065727479204d616e616765722061205365637572697479204465706f736974206f66207b6465706f7369747d2e3c6272202f3e3c7374726f6e673e422e3c2f7374726f6e673e20546865205365637572697479204465706f73697420697320696e74656e64656420746f207061792074686520636f7374206f662064616d616765732c20636c65616e696e672c20657863657373697665207765617220616e6420746561722c20616e6420756e72657475726e6564206b657973206f6e636520746865204c656173652041677265656d656e742068617320656e64656420616e642f6f7220666f7220616e7920756e7061696420636861726765732064756520627920726561736f6e206f662054656e616e7427732064656661756c74206f662074686973204c656173652041677265656d656e742e3c2f703e0d0a3c703e3c7374726f6e673e382e205554494c49544945532026616d703b2053455256494345533a3c2f7374726f6e673e3c6272202f3e3c7374726f6e673e412e3c2f7374726f6e673e2054656e616e7420697320726573706f6e7369626c6520666f722074686520666f6c6c6f77696e67207574696c697469657320616e642073657276696365733a3c6272202f3e7b74656e616e745f726573706f6e736962696c69746965737d3c6272202f3e616e6420697320726571756972656420746f20726567697374657220746865207574696c697469657320616e6420736572766963657320696e2054656e616e742773206e616d652e2054656e616e7420756e6465727374616e647320616e6420616772656573207468617420657373656e7469616c2073657276696365732061726520746f206265206d61696e7461696e656420616e64206f7065726174696f6e616c20617420616c6c2074696d65732e3c6272202f3e3c7374726f6e673e422e3c2f7374726f6e673e2050726f7065727479204d616e616765722077696c6c20626520726573706f6e7369626c6520666f722074686520666f6c6c6f77696e67207574696c697469657320616e642073657276696365733a203c6272202f3e7b6c616e646c6f72645f726573706f6e736962696c69746965737d3c2f703e0d0a3c703e3c7374726f6e673e392e204d41494e54454e414e434520414e4420524550414952533a3c2f7374726f6e673e3c6272202f3e5468652054656e616e7420697320726573706f6e7369626c6520666f7220616c6c2072657061697273206e656564656420696e206f722061626f757420746865204c6561736564205072656d697365732e3c2f703e0d0a3c703e3c7374726f6e673e31302e20434f4e444954494f4e204f462050524f50455254593a3c2f7374726f6e673e3c6272202f3e3c7374726f6e673e412e3c2f7374726f6e673e205468652054656e616e742061636b6e6f776c65646765732074686174207468652054656e616e742068617320696e7370656374656420746865204c6561736564205072656d6973657320616e642061742074686520636f6d6d656e63656d656e74206f662074686973204c656173652041677265656d656e742c2074686520696e746572696f7220616e64206578746572696f72206f6620746865204c6561736564205072656d697365732c2061732077656c6c20617320616c6c2065717569706d656e7420616e6420616e79206170706c69616e6365732061726520666f756e6420746f20626520696e20616e2061636365707461626c6520636f6e646974696f6e20616e6420696e20676f6f6420776f726b696e67206f726465722e3c6272202f3e3c7374726f6e673e422e3c2f7374726f6e673e205468652054656e616e74206167726565732074686174206e656974686572207468652050726f7065727479204d616e61676572206e6f7220686973206167656e742068617665206d6164652070726f6d6973657320726567617264696e672074686520636f6e646974696f6e206f6620746865204c65617365205072656d697365732e3c6272202f3e3c7374726f6e673e432e3c2f7374726f6e673e205468652054656e616e742061677265657320746f2072657475726e20746865204c6561736564205072656d6973657320746f2050726f7065727479204d616e6167657220617420656e64206f6620746865204c656173652041677265656d656e7420696e207468652073616d6520636f6e646974696f6e206974207761732074686520626567696e6e696e67206f6620746865204c656173652041677265656d656e742e3c2f703e0d0a3c703e3c7374726f6e673e31312e20454e44494e47204f522052454e4557494e4720544845204c454153452041475245454d454e543a3c2f7374726f6e673e3c6272202f3e412e2041742074686520656e64206f6620746865204c65617365207465726d2c206966207468652050726f7065727479204d616e61676572206f72207468652054656e616e7420646f6573206e6f74206769766520616e79207772697474656e206e6f7469636520746f20746865206f7468657220706172747920746f20656e642074686973204c656173652c2069742077696c6c206175746f6d61746963616c6c7920636f6e74696e7565206f6e2061206d6f6e746820746f206d6f6e74682062617369732e20546f207465726d696e6174652074686973204c656173652061742074686520656e64206f6620746865204c65617365207465726d206f7220616e792072656e6577616c2074686572656f662c207468652050726f7065727479204d616e61676572206f72207468652054656e616e74206d757374206769766520746f20746865206f74686572207061727479206174206c65617374207b6e6f746963655f706572696f647d207072696f72207772697474656e206e6f74696365206265666f726520746865206c61737420646179206f6620746865204c65617365207465726d206f7220616e792072656e6577616c2074686572656f662e3c2f703e0d0a3c703e3c7374726f6e673e31322e20474f5645524e494e47204c41573a3c2f7374726f6e673e3c6272202f3e546869732041677265656d656e74207368616c6c20626520676f7665726e65642c20636f6e73747275656420616e6420696e7465727072657465642062792c207468726f75676820616e6420756e64657220746865204c617773206f66207468652053746174652e3c2f703e0d0a3c703e3c7374726f6e673e31332e20454e544952452041475245454d454e543a3c2f7374726f6e673e3c6272202f3e3c7374726f6e673e4e4f544943453a3c2f7374726f6e673e205468697320697320616e20696d706f7274616e74204c4547414c20646f63756d656e742e3c6272202f3e596f75206d6179206861766520616e206174746f726e65792072657669657720746865204c656173652041677265656d656e74207072696f7220746f207369676e696e672069742e3c2f703e0d0a3c703e4279207369676e696e672074686973204c656173652041677265656d656e742c207468652054656e616e742063657274696669657320746861742068652f7368652068617320726561642c20756e64657273746f6f6420616e642061677265657320746f20636f6d706c79207769746820616c6c206f6620746865207465726d732c20636f6e646974696f6e732c2052756c657320616e6420526567756c6174696f6e73206f662074686973204c656173652e3c2f703e);

-- --------------------------------------------------------

--
-- Table structure for table `lettings_agreement_templates_manager`
--

DROP TABLE IF EXISTS `lettings_agreement_templates_manager`;
CREATE TABLE IF NOT EXISTS `lettings_agreement_templates_manager` (
  `template_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  KEY `template_id` (`template_id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `lettings_responsibilities`
--

DROP TABLE IF EXISTS `lettings_responsibilities`;
CREATE TABLE IF NOT EXISTS `lettings_responsibilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lettings_responsibilities`
--

INSERT INTO `lettings_responsibilities` (`id`, `title`) VALUES
(1, 'Cable & Communication Services'),
(2, 'Cable/Satellite'),
(3, 'City Services'),
(4, 'Electrical Services'),
(5, 'Garbage Service'),
(6, 'Gas Services'),
(7, 'Government'),
(8, 'Internet'),
(9, 'Landscaping'),
(10, 'Laundry Services'),
(11, 'Home Security'),
(12, 'Pest Control'),
(13, 'Phone'),
(14, 'Sewer'),
(15, 'Water');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subject` text COLLATE utf8_bin NOT NULL,
  `message` text COLLATE utf8_bin NOT NULL,
  `message_status_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `manager_id` (`manager_id`),
  KEY `message_status_id` (`message_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `manager_id`, `posted`, `subject`, `message`, `message_status_id`) VALUES
(8, 18, 1, '2018-05-30 10:01:49', '', 'General Enquiry', 1),
(9, 19, 1, '2018-05-30 10:03:25', '', 'Property enquiry for &#039;4 bed semi-detached bunfalow for sale&#039;', 1),
(10, 17, 1, '2018-05-30 10:04:40', '', 'Property view request for &#039;4 bed semi-detached bungalow for sale&#039;', 2),
(13, 1, 1, '2018-05-31 08:38:55', '', 'Property enquiry', 1),
(14, 38, 1, '2018-05-31 09:43:34', '', 'Property View Request', 2),
(15, 13, 1, '2018-05-31 09:44:03', '', 'Property View Request', 6),
(16, 10, 1, '2018-05-31 11:23:02', '', 'Property offer for 2 bedroom maisonette to rent', 1),
(17, 1, 1, '2018-06-04 13:30:20', '', 'General enquiry', 1),
(26, 6, 1, '2018-06-28 14:16:23', '', 'Looking to purchase this property', 1),
(31, 32, 1, '2018-06-28 15:51:41', '', 'test', 1),
(32, 1, 1, '2018-07-11 09:48:27', '', 'Please can i see the flat. Thanks', 1),
(33, 1, 1, '2018-07-11 09:49:37', '', 'can i see this?', 1),
(34, 33, 1, '2018-07-22 20:00:06', '', 'Hello, I would like to arrange a viewing for this flat. We are two friends looking for a flat to share together and we were interested to see this flat. Thank you. Giuseppa. ', 1),
(35, 34, 1, '2018-07-23 18:20:51', '', 'Hello, I&#039;m Giuseppa. I sent an email yesterday to arrange a viewing for this flat. I received a call today, but unfornutately I couldn&#039;t answer because I was working. Could you send me and email back to let me know about it and to let me know if I can call you back after 6pm, please?', 1),
(37, 28, 1, '2018-08-08 15:20:02', '', 'Testing', 1),
(38, 40, 1, '2018-08-15 14:13:37', '', 'Testing', 1),
(39, 44, 1, '2018-08-20 09:14:19', '', 'Looking for student accommodation for my son close to wembly stadium to move in mid September \r\n', 1),
(40, 1, 1, '2018-09-18 16:13:05', 'Reply to the property view request submitted on 23/07/2018..', 'Hello Giuseppa,\r\n\r\n', 2),
(41, 1, 1, '2018-09-18 16:15:05', 'Reply to the property valuation submitted on 08/08/2018..', 'Hello Ajay,\r\n\r\n', 2),
(42, 28, 1, '2018-10-18 09:13:12', '', 'Our local property experts love what they do and during your free house valuation they will use their local knowledge and expertise to give you an accurate sales or rental value.', 2),
(43, 1, 1, '2018-10-18 09:19:38', 'Reply to the enquiry submitted on 18/10/2018..', 'Hello Ajay,\n\n Dear Lettings of London.\nThank you for helping me and my family move home. The service you provided was prompt, courteous, friendly and professional. \n', 2),
(44, 1, 1, '2018-10-18 09:27:09', 'Reply to the enquiry submitted on 20/08/2018..', 'Hello Nicky ,\n\nBook a Valuation. Are you thinking of selling or letting your property? Our valuation tool provides an instant estimate of what your property is worth and the value it can achieve.', 2),
(47, 1, 1, '2018-11-13 09:17:03', 'Reply to the property enquiry submitted on 23/07/2018..', 'Hello Giuseppa ,\n\n', 2),
(52, 1, 1, '2018-11-13 09:18:41', 'Reply to the property enquiry submitted on 23/07/2018..', 'Hello Giuseppa ,\n\nHi Giuseppa\n\n', 2),
(53, 1, 1, '2018-11-13 09:20:06', 'Reply to the enquiry submitted on 18/10/2018..', 'Hello Ajay,\n\n', 2),
(54, 1, 1, '2018-11-13 09:29:07', 'Reply to the property enquiry submitted on 23/07/2018..', 'Hello Giuseppa ,\n\nHow are you?\n\n', 2),
(56, 1, 1, '2018-11-13 16:19:08', 'Reply to the property enquiry submitted on 28/06/2018..', 'Hello Bijo 2,\n\n', 2),
(57, 1, 1, '2018-12-04 17:04:06', 'Reply to the enquiry submitted on 18/10/2018..', 'Hello Ajay,\n\n', 2),
(71, 1, 1, '2018-12-18 16:14:42', 'Reply to the enquiry submitted on 15/08/2018..', 'Hello Bibin,\n\n', 2),
(72, 2, 1, '2018-12-20 16:06:41', '', 'Test message', 1),
(73, 1, 1, '2018-12-20 16:08:06', 'Reply to the enquiry submitted on 20/12/2018..', 'Hello AJ,\n\nsdsd\n					<br/>\n					<strong>Matching Properties</strong>\n					<br/><a href=\"http://192.168.1.38:81/lettingslondon/public/property-to-rent/ha0-2-bed-house-to-let-available-late-august-suit-a-family-or-sharers-ideal-for-tube-and-train-in-wembley/1-AUGUST WEMBLEY\" target=\"_blank\">Terraced House (Partly Furnished)</a><br/><a href=\"http://192.168.1.38:81/lettingslondon/public/property-to-rent/lettings-of-london-is-pleased-to-offer-this-large-ensuite-room-in-hatfield-al10-in-hatfield/1-hatfieldensuite\" target=\"_blank\">Terraced House</a><br/>', 2);

-- --------------------------------------------------------

--
-- Table structure for table `message_parent`
--

DROP TABLE IF EXISTS `message_parent`;
CREATE TABLE IF NOT EXISTS `message_parent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `message_id` (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `message_parent`
--

INSERT INTO `message_parent` (`id`, `message_id`, `parent_id`) VALUES
(1, 40, 34),
(2, 41, 37),
(3, 43, 42),
(4, 44, 39),
(5, 47, 35),
(8, 52, 35),
(9, 53, 42),
(10, 54, 35),
(11, 56, 26),
(12, 57, 42),
(19, 71, 38),
(20, 73, 72);

-- --------------------------------------------------------

--
-- Table structure for table `message_status`
--

DROP TABLE IF EXISTS `message_status`;
CREATE TABLE IF NOT EXISTS `message_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `message_status`
--

INSERT INTO `message_status` (`id`, `title`) VALUES
(1, 'New'),
(2, 'Awaiting Customer Response'),
(3, 'Task/Staff Assigned'),
(4, 'Not Interested'),
(5, 'No Answer'),
(6, 'On Hold'),
(7, 'Spam/Fake Enquiry'),
(8, 'Closed');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `desc` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `activity_id`, `desc`) VALUES
(11, 48, 'NOte for madhu'),
(12, 49, 'Note for landlord ajay'),
(13, 50, 'Note for ajay'),
(14, 51, 'test'),
(17, 56, '2 bed room property note'),
(18, 57, '2 bed flat '),
(20, 60, 'Testing note submission'),
(21, 64, 'Letting agreed on 14/05/2018'),
(22, 68, 'Invoice 1112 note'),
(23, 78, 'Testing note for enquiry - view request'),
(24, 79, 'Testing note for enquiry - view request'),
(25, 80, 'Enquiry notes for property - View Request '),
(27, 82, 'Property view request note1'),
(28, 83, 'Property view request note 2'),
(29, 84, 'Property view request note3'),
(32, 118, 'Testing notes'),
(37, 125, '&lt;i class=&quot;fa fa-trash&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-trash&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-trash&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt;\r\n\r\n&lt;i class=&quot;fa fa-trash&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt;'),
(39, 127, '&lt;i class=&quot;fa fa-trash&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt;\r\n\r\n&lt;i class=&quot;fa fa-trash&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt;'),
(42, 130, ' Font Awesome 4.7.0 &middot; Created by Font Awesome\r\nFont Awesome licensed under SIL OFL 1.1 &middot; Code licensed under MIT License &middot; Documentation licensed under CC BY 3.0\r\nThanks to  MaxCDN for providing the excellent BootstrapCDN for Font Awesome\r\nGitHub Project &middot; Issues &middot; Old 3.2.1 Docs'),
(43, 131, ' Font Awesome 4.7.0 &middot; Created by Font Awesome\r\nFont Awesome licensed under SIL OFL 1.1 &middot; Code licensed under MIT License &middot; Documentation licensed under CC BY 3.0\r\nThanks to  MaxCDN for providing the excellent BootstrapCDN for Font Awesome\r\nGitHub Project &middot; Issues &middot; Old 3.2.1 Docs'),
(45, 133, 'YOPA Online Estate Agents | Book A Free Property Valuation&lrm;\r\nAdwww.yopa.co.uk/Online/Estate-Agents&lrm;+44 330 102 9995\r\n Rating for yopa.co.uk: 4.9 - 2,031 reviews\r\nExpert Local Agents In Yorkshire. Get The Best Price For Your Home With YOPA. No Hidden Fees. First Class Service. Free Valuations. Local Agents In Your Area.\r\nNo Sale, No Fee\r\nNow Offering No Upfront Fees -\r\nPay When You Sell Your Property\r\nComplete Control\r\nGet your home seen by millions of\r\nbuyers. Sell fast and save big.\r\n'),
(48, 136, 'When does my password for the Sandbox Environment expire?\r\nAfter a successful registration on the SWS Portal the initial password is valid for 60 days. Through changing the initial password it becomes valid for 90 days.'),
(51, 139, 'What is the renewal process for certificates?\r\n\r\n60 days before expiration of the certificate a reminder is send out to the user. 30 days before expiry a second reminder is send out to the user. At that point a new certificate is created automatically and a separate email with instructions &ndash; on how to download the new certificate (new TAN) is sent out to the user. The old certificate will stay valid until its expiry date is reached. This basically gives the user a 30 day time period to swap out the old certificate with the new certificate on his end. During this period, the user can access the NMVS with both certificates.'),
(57, 148, 'Letting of London is pleased to offer this well presented 2 BEDROOM flat situated with short walking distance to Totteridge and Whetstone TUBE station, Shops, Restaurants, amenities, coffee shops and more.\n\nProperty boasts many modern features: \nDouble Glazing \nGas Central Heating \nFully fitted kitchen with gas hob, fridge freezer and washing machine \nWooden Floors \nBathroom with shower attachment \nNEWLY DECORATED in Neutral colours \nVery Clean Throughout. \n\nProperty will suit a single or a couple \n\nOffered Unfurnished or Furnished \n\nWhats required? \n1 months rent \n6 week deposit \n\nNO BILLS INCLUDED! \nNO PETS \nNO DSS \n\nAvailable TODAY \n\nIdeal for Train, Shops, Amenities, Barnet, Finchley, New Southgate, Totteridge, Mill hill, Arkley, Potters Bar, Hendon and more '),
(58, 149, 'Letting of London is pleased to offer this well presented 2 BEDROOM flat situated with short walking distance to Totteridge and Whetstone TUBE station, Shops, Restaurants, amenities, coffee shops and more.\n\nProperty boasts many modern features: \nDouble Glazing \nGas Central Heating \nFully fitted kitchen with gas hob, fridge freezer and washing machine \nWooden Floors \nBathroom with shower attachment \nNEWLY DECORATED in Neutral colours \nVery Clean Throughout. \n\nProperty will suit a single or a couple \n\nOffered Unfurnished or Furnished \n\nWhats required? \n1 months rent \n6 week deposit \n\nNO BILLS INCLUDED! \nNO PETS \nNO DSS \n\nAvailable TODAY \n\nIdeal for Train, Shops, Amenities, Barnet, Finchley, New Southgate, Totteridge, Mill hill, Arkley, Potters Bar, Hendon and more '),
(62, 154, 'The introduction of the new TE244 Series expands TSC Auto ID&#039;s growing line of affordable, high-performance desktop-class label printers.'),
(63, 155, 'The TE244 Series provides customers throughout the world with a competitive, durable, entry-level desktop printer that is both versatile and easy-to-use.'),
(64, 156, 'With its small, compact footprint and dual-motor design, the TSC TE 244 is perfect for a wide variety of label and tag printing applications - everything from shipping labels to compliance and general purpose product-identification labels &amp; tags.'),
(65, 157, 'James Lead'),
(66, 159, 'James Lead2'),
(68, 168, 'BOC Gas &amp; Gear Enfield');

-- --------------------------------------------------------

--
-- Table structure for table `problem_category`
--

DROP TABLE IF EXISTS `problem_category`;
CREATE TABLE IF NOT EXISTS `problem_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `desc` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `problem_category_parent`
--

DROP TABLE IF EXISTS `problem_category_parent`;
CREATE TABLE IF NOT EXISTS `problem_category_parent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_category_id` int(11) NOT NULL,
  `parent_category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `problem_category_id` (`problem_category_id`),
  KEY `parent_category_id` (`parent_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE IF NOT EXISTS `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_id` int(11) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `property_for_id` int(11) NOT NULL,
  `property_status_id` int(11) NOT NULL,
  `furnished_type_id` int(11) NOT NULL DEFAULT '1',
  `property_listing_type_id` int(11) NOT NULL,
  `title` varchar(225) COLLATE utf8_bin NOT NULL,
  `ref_no` varchar(100) COLLATE utf8_bin NOT NULL,
  `slug` varchar(225) COLLATE utf8_bin NOT NULL,
  `seo_title` text COLLATE utf8_bin NOT NULL,
  `seo_keywords` text COLLATE utf8_bin NOT NULL,
  `seo_desc` text COLLATE utf8_bin NOT NULL,
  `desc` text COLLATE utf8_bin NOT NULL,
  `key_features` text COLLATE utf8_bin NOT NULL COMMENT 'each feature per line',
  `summary` text COLLATE utf8_bin NOT NULL,
  `h_no` varchar(100) COLLATE utf8_bin NOT NULL,
  `street` varchar(100) COLLATE utf8_bin NOT NULL,
  `city` varchar(100) COLLATE utf8_bin NOT NULL,
  `postcode` varchar(10) COLLATE utf8_bin NOT NULL,
  `country_id` int(11) NOT NULL,
  `available_from` date NOT NULL,
  `latitude` varchar(255) COLLATE utf8_bin NOT NULL,
  `longitude` varchar(255) COLLATE utf8_bin NOT NULL,
  `price` int(11) NOT NULL,
  `posted` datetime NOT NULL,
  `views` int(11) NOT NULL,
  `listed_for` int(11) NOT NULL,
  `listed_for_term_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manager_id` (`manager_id`),
  KEY `property_type_id` (`property_type_id`),
  KEY `property_for_id` (`property_for_id`),
  KEY `property_status_id` (`property_status_id`),
  KEY `listed_for_term_id` (`listed_for_term_id`),
  KEY `furnished_type_id` (`furnished_type_id`),
  KEY `property_listing_type_id` (`property_listing_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `manager_id`, `property_type_id`, `property_for_id`, `property_status_id`, `furnished_type_id`, `property_listing_type_id`, `title`, `ref_no`, `slug`, `seo_title`, `seo_keywords`, `seo_desc`, `desc`, `key_features`, `summary`, `h_no`, `street`, `city`, `postcode`, `country_id`, `available_from`, `latitude`, `longitude`, `price`, `posted`, `views`, `listed_for`, `listed_for_term_id`) VALUES
(24, 1, 1, 2, 10, 3, 25, '2 bedroom apartment to rent', 'LOL01', '2-bedroom-apartment-to-rent', '', '', '', 'Tenure: Freehold\r\n\r\nLetting of London is pleased to offer this well presented 2 BEDROOM flat situated with short walking distance to Totteridge and Whetstone TUBE station, Shops, Restaurants, amenities, coffee shops and more.\r\n\r\nProperty boasts many modern features: \r\nDouble Glazing \r\nGas Central Heating \r\nFully fitted kitchen with gas hob, fridge freezer and washing machine \r\nWooden Floors \r\nBathroom with shower attachment \r\nNEWLY DECORATED in Neutral colours \r\nVery Clean Throughout. \r\n\r\nProperty will suit a single or a couple \r\n\r\nOffered Unfurnished or Furnished \r\n\r\nWhats required? \r\n1 months rent \r\n6 week deposit \r\n\r\nNO BILLS INCLUDED! \r\nNO PETS \r\nNO DSS \r\n\r\nAvailable TODAY \r\n\r\nIdeal for Train, Shops, Amenities, Barnet, Finchley, New Southgate, Totteridge, Mill hill, Arkley, Potters Bar, Hendon and more ', 'Close To Totteridge and Whetstone TUBE station \r\nIdeal for Supermarkets, Coffee shop, Restaurants and more \r\nWooden floors Double Glazing Electric HEATING Power Shower Neutral Decor \r\nNO BILLS INCLUDED \r\nNO DSS NO PETS \r\nAVAILABLE TODAY', '', '12', 'High Road', 'London', 'N20 9LN', 220, '2018-06-27', '51.6330466', '-0.1761065000000599', 1120, '2018-06-28 06:43:40', 3, 1, 5),
(25, 1, 1, 2, 5, 1, 45, '1 bedroom house of multiple occupation to rent', 'LOL02', '1-bedroom-house-of-multiple-occupation-to-rent', '', '', '', 'Tenure: Freehold\r\n\r\nLettings of London is pleased to offer this NEWLY REFURBISHED ENSUITE ROOM in the heart of HATFIELD within short walking distance to everything. \r\n\r\nProperty benefits from: \r\nNEW GAS CENTRAL HEATING \r\nDOUBLE GLAZING \r\nINSULATED FLOORS \r\nINSULATED LOFT \r\nWOODEN FLOORS \r\nNEUTRAL DECOR \r\n2 BRAND NEW BATHROOMS \r\nPATIO GAREN \r\n\r\nRoom would suit a STUDENT / PROFESSIONAL due to its CLOSE proximity to ASDA, BOOTS, AMENITIES, GYM, UNIVERSITY, HATFIELD TRAIN STATION, Business Park, the market place + more. \r\n\r\nIDEAL FOR SHOPS AND AMENITIES in \r\nIDEAL FOR TRAIN STATION, Coffee Shops, Supermarkets, Bars, Restaurants, Gyms, Parks, Banks, Boutiques and MORE. \r\n\r\nHouse shared by boys and girls \r\n\r\nProperty would suit a professional (COUPLES OK) \r\nNO PETS \r\nNO DSS \r\n\r\nAVAILABLE TODAY \r\n\r\nREGISTER YOUR INTEREST BY CALLING OR EMAILING THE OFFICE NOW \r\n\r\nFor more information or other properties please call, email or check our website \r\nwww. lettingsoflondon. com', 'ENSUITE ROOM within this NEWLY REFURBISHED HOUSE \r\nFULLY INSULATED THROUGHOUT \r\nNEW GAS CENTRAL HEATING SYSTEM \r\nWOODEN FLOORS \r\nCARPETS \r\n2 LUXURY bathrooms \r\nNEUTRAL DECORS \r\nAVAILABLE NOW \r\nIDEAL FOR STUDENT OR PROFESSIONAL \r\nCALL NOW to VIEW', '', '', 'Goldings Crescent', 'Hatfield', 'AL10 8UD', 220, '2018-06-27', '51.76253190000001', '-0.22220489999995152', 625, '2018-06-28 07:06:36', 1, 1, 5),
(26, 1, 1, 2, 5, 1, 1, '1 bedroom apartment to rent', 'LOL03', '1-bedroom-apartment-to-rent', '', '', '', 'Tenure: Freehold\r\n\r\nLettings of London is pleased to offer this GROUND floor, 1 Bedroom, situated moments from High Street, Train station, amenities, supermarkets, GYM, Eateries, restaurants, Nightlife and more. \r\n\r\nProperty benefits from: \r\nTALL CEILINGS \r\nNEW GAS CENTRAL HEATING \r\nNEW LARGE DOUBLE GLAZED WINDOWS \r\nNEWLY painted WHITE WALLS \r\nNEW WOODEN FLOORS \r\nFitted Wardrobes \r\nDouble BEDROOM \r\nNEW 3 piece SHOWER BATHROOM \r\nNEW OPEN PLAN KITCHEN with oven, hob, washing machine, fridge freezer \r\n\r\nUNFurnished \r\n\r\nSuit a professional single, couple or a small family. \r\n\r\nAvailable TODAY \r\n\r\nWhats required \r\n1 months rent \r\n1 months deposit \r\n\r\nEPC rating C \r\n\r\nNO HOUSING BENEFIT \r\nNO PETS \r\n\r\nFor more information or to book a viewing CALL now', 'AVAILABLE LATE MAY \r\nWOODEN FLOORS \r\nGAS CENTRAL HEATING \r\nDOUBLE GLAZING \r\nFULLY FITTED KITCHEN \r\nGround Floors \r\nUNFURNISHED  \r\nNO PETS, NO DSS \r\nSuit PROFESSIONAL single, Couple Person\r\n', '', '', 'Nevill Road', 'London', 'N16 8SR', 220, '2018-06-27', '51.5553414', '-0.07904680000001463', 1400, '2018-06-28 07:12:39', 1, 1, 5),
(27, 1, 1, 2, 10, 1, 11, '1 bedroom apartment to rent', 'LOL04', '1-bedroom-apartment-to-rent', '', '', '', 'Tenure: Freehold\r\n\r\nLettings of London is pleased to offer this WELL PRESENTED 1 BEDROOM flat in the heart of Stoke Newington. AVAILABLE NOW. Ideal for Single, Couple or small family. Perfect for all modes of Transport, amenities, nightlife, Dalston Kingsland, Shoreditch. Wooden Floors and neutral decor. CALL NOW', 'Bright and Airy throughout \r\nOPEN PLAN KITCHEN \r\nLOTS OF WINDOWS \r\nWOODEN FLOORS \r\nSHOWER BATHROOM \r\nUNFURNISHED \r\nGas Central Heating \r\nDOUBLE GLAZING \r\nLOW EPC \r\nAVAILABLE JUNE', '', '', 'Barbauld Road', 'London', 'N16 0SS', 220, '2018-06-27', '51.55776559999999', '-0.08068839999998545', 1250, '2018-06-28 07:19:24', 2, 1, 5),
(28, 1, 1, 2, 1, 1, 1, '2 bedroom flat to rent', 'LOL05', '2-bedroom-flat-to-rent', '', '', '', 'Tenure: Freehold\r\n\r\nLettings of London is pleased to offer this LARGER THAN AVERAGE, First Floor, 2 DOUBLE bedroom Flat, situated within VERY short walking distance of all tubes, buses, shops, amenities, Gyms, Schools and More. \r\n\r\nAvailable TODAY \r\n\r\nProperty boasts many features such as: \r\nFirst Floor \r\nFully fitted kitchen with gas hob, fridge freezer, washing machine \r\nWooden floors \r\nBath with shower \r\nDouble Glazed \r\nGas Central Heating \r\nSeparate W/C \r\nNeutral Decor \r\nLARGE WINDOWS \r\nExcellent condition throughout \r\n\r\nFirst floor \r\nCommunal Gardens \r\nOff street Parking \r\n\r\nEPC rating D \r\n\r\nProperty would suit a couple, sharers or a small family \r\n\r\nEARLY VIEWING IS a MUST. \r\n\r\nCALL or EMAIL NOW.. \r\n\r\nNearest stations \r\nEast Finchley (0.6 mi) \r\nFinchley Central (0.9 mi) \r\nWest Finchley (1.3 mi) ', 'AVAILABLE NOW \r\nMODERN DECOR \r\nBIGHT and AIRY \r\nCLEAN BALCONY', '', '', 'East End Road', 'London', 'N2 0RZ', 220, '2018-07-20', '51.5922186', '-0.1805574999999635', 1300, '2018-06-28 07:26:19', 2, 6, 3),
(29, 1, 1, 2, 1, 1, 1, '2 bedroom ground floor flat to rent HA3', 'LOL06', '2-bedroom-ground-floor-flat-to-rent-ha3', '', '', '', 'Tenure: Freehold\r\n\r\nLettings of London is pleased to offer this well presented 2 double bedroom GROUND FLOOR FLAT within walking distance to KENTON TUBE station, amenities, shops, supermarkets and more. Property boasts Wooden floors, GCH, D/G, Neutral Decor, UNFURNISHED, FULLY fitted kitchen. \r\n\r\nEPC rating D \r\n\r\nAVAIL NOW', 'NEW DEVELOPMENT \r\nAVAILABLE NOW \r\nCLOSE TO TUBE, SHOPS, AMENITIES, GYM,  \r\nWooden Floors \r\nGas Central Heating \r\nDouble Glazing \r\nNeutral Decor \r\nUNFURNISHED \r\nSUIT PROFESSIONALS ONLY \r\nAVAILABLE NOW', '', '', 'Westfield Lane', 'Harrow', 'HA3 9EA', 220, '2018-07-16', '51.5885774', '-0.30181849999996757', 1350, '2018-06-28 07:37:33', 3, 6, 3),
(30, 1, 1, 2, 1, 1, 1, 'Studio flat to rent', 'LOL07', 'studio-flat-to-rent', '', '', '', 'Tenure: Leasehold\r\n\r\nLettings of London is pleased to offer this well presented Studio in the heart of NEW BARNET, Ideally located to ALL amenities, TRAIN station, Sainsburys, Pure Gym, amenities and more. \r\n\r\n\r\nProperty benefits from: \r\nBright and Airy \r\nSpacious \r\nWooden Floors \r\nFully fitted kitchen \r\nEPC rating D \r\n\r\nFor more information call now \r\n\r\nIdeal for a single professional \r\n\r\nAVAILABLE MID JULY \r\n\r\nCall now\r\n\r\n', 'Wooden Floors \r\nNeutral Decor \r\nBright and Airy Clean \r\n3 piece bathroom', '', '', 'Clarence Close', 'Barnet', 'EN4 8AN', 220, '2018-07-29', '51.6480818', '-0.17148470000006455', 850, '2018-06-28 07:43:50', 6, 6, 3),
(31, 1, 1, 2, 1, 1, 1, '2 bedroom flat to rent', 'LOL08', '2-bedroom-flat-to-rent', '', '', '', 'Tenure: Leasehold\r\n\r\nLettings of London is pleased to offer this recently refurbished 2 DOUBLE bedroom flat, situated within short walking distance to Palmers Green&#039;s shops, amenities, transport links, parks, gyms, bars, coffee shops, restaurants and more. \r\n\r\nProperty boasts many features such as WOODEN floors and carpets, Double bedrooms, Neutral Decor throughout, Lovely 3 piece bathroom, fully fitted kitchen with GAS hob, Gas Central Heating (RECENTLY INSTALLED BOILER) and Double Glazing. \r\nOffered part furnished. \r\n\r\nPalmers Green B/R is walking distance, so are all the amenities and local supermarkets. \r\nThere are plenty of Buses that frequent the area. \r\n\r\nEasy access to A406, A10 and M25. \r\n\r\nProperty would suit family, sharers or a couple. CALL NOW to AVOID DISAPPOINTMENT.', 'CLOSE TO TRANSPORT \r\nCLOSE TO ALL SHOPS AND AMENITIES \r\nIDEAL FOR SHARERS OR FAMILY \r\nCARPETS  WOODEN FLOORS GAS \r\nCentral Heating \r\nDouble glazing\r\nPART FURNISHED', 'Lettings of London is pleased to offer this recently refurbished 2 DOUBLE bedroom flat, situated within short walking distance to Palmers Green&#039;s shops, amenities, transport links, parks, gyms, bars, coffee shops, restaurants and more.', '', 'Hedge Lane', 'London', 'N13 5SX', 220, '2018-07-26', '51.6219946', '-0.09732510000003458', 1300, '2019-08-14 18:41:10', 16, 6, 3),
(32, 1, 1, 2, 1, 1, 1, ' 1 bedroom ground floor flat to rent', 'LOL09', '1-bedroom-ground-floor-flat-to-rent', '', '', '', 'Tenure: Freehold\r\n\r\nLettings of London is pleased to offer this Well Presented GROUND Floor 1 bedroom GARDEN flat situated within short walking distance to FINCHLEY CENTRAL, Tube station, shopping facilities, amenities, Shops, coffee shops, restaurants, Boutiques and more. \r\n\r\nProperty has been Refurbished Very Recently, benefitting from a \r\nGood size lounge \r\nDOUBLE BEDROOM \r\nDouble Glazing \r\nGAS CENTRAL HEATING \r\nCARPETS and WOODEN FLOORS \r\nFully fitted kitchen with Gas Hob, Oven, Fridge Freezer and Washing Machine \r\nDinning area looking on to the PATIO GARDEN. \r\nConservatory \r\n\r\nThe property is located within short walking distance to \r\n\r\nNEAREST TUBE STATIONs are \r\nFinchley Central (0.3 mi) \r\nMill Hill East (0.8 mi) \r\nWest Finchley (0.9 mi) \r\n\r\nIdeal for Professional single or Couple \r\n\r\nNo DSS \r\nand \r\nNo Pets \r\n\r\nWhats required: \r\n1 months rent \r\n6 weeks deposit \r\n\r\nAVAILABLE IMMEDIATELY. \r\n\r\nCALL TODAY', 'EXCELLENT CONDITION THROUGHOUT \r\nAVAILABLE NOW \r\nCLOSE TO TUBE, SHOP, SUPERMARKETS, COFFEE HOUSES, RESTAURANTS, \r\nHIGH STREET, BANKS, PARK, BRENT CROSS, HENDON, GOLDERS GREEN \r\nWooden Floors \r\nGas CENTRAL HEATING, \r\nDouble Glazing, \r\nConservatory \r\nFully fitted kitchen  \r\nCarpets', '', '', 'Hendon Lane', 'London', 'N3 1TR', 220, '2018-07-14', '51.596031', '-0.2042238000000225', 1150, '2018-06-28 08:01:11', 2, 6, 3),
(33, 1, 1, 2, 1, 1, 1, '2 bedroom apartment to rent', 'LOL10', '2-bedroom-apartment-to-rent', '', '', '', 'Tenure: Leasehold\r\n\r\nLettings of London is pleased to offer this LARGER THAN AVERAGE, First Floor, 2 bedroom PB Flat, situated within short walking distance of all tubes, buses, shops, amenities, Gyms, Schools and More. \r\n\r\nAvailable TODAY \r\n\r\nProperty boasts many features such as: \r\n\r\nNeutral Decor \r\nFully fitted kitchen with gas hob, fridge freezer, washing machine \r\nCream Carpets \r\nBath with shower attachment \r\nDouble Glazed \r\nGas Central Heating \r\nNeutral Decor \r\nLARGE WINDOWS \r\nExcellent condition throughout \r\nStorage \r\n\r\nFirst floor \r\nCommunal Gardens \r\nOff street Parking \r\n\r\nEPC rating C \r\n\r\nProperty would suit a couple, sharers or a small family \r\n\r\nEARLY VIEWING IS a MUST. \r\n\r\nCALL or EMAIL NOW.. \r\n\r\nNearest stations \r\nNew Southgate (0.5 mi) \r\nArnos Grove (0.6 mi) \r\nSouthgate (1.0 mi)', 'AVAILABLE TODAY \r\nClose to all amenities and transport. \r\nCarpets throughout \r\nDouble Glazing \r\nNeutral decor \r\nFully fitted kitchen with all appliances \r\nBRIGHT and AIRY \r\nGas Central Heating \r\n3 piece bathroom with SHOWER attachment \r\nProfessional couple, sharers or family - NO PETS', 'Lettings of London is pleased to offer this LARGER THAN AVERAGE, First Floor, 2 bedroom PB Flat, situated within short walking distance of all tubes, buses, shops, amenities, Gyms, Schools and More.', '', 'Darwin Close', 'London', 'N11 1TA', 220, '2018-06-27', '51.6214459', '-0.14419599999996535', 1245, '2019-08-14 20:49:03', 4, 1, 5),
(34, 1, 1, 2, 1, 1, 1, '2 bedroom ground floor flat to rent', 'LOL11', '2-bedroom-ground-floor-flat-to-rent', '', '', '', 'Tenure: Freehold\r\n\r\nLETTINGS OF LONDON IS PLEASED TO OFFER THIS Refurbished 2 bedroom GROUND floor flat with garden. \r\nProperty is situated moments from ROMFORD Train station, amenities, supermarkets, GYM, LIDL, HIGH STREET and more. \r\n\r\nTALL CEILINGS \r\nGAS CENTRAL HEATING \r\nLARGE DOUBLE GLAZED WINDOWS \r\nWHITE WALLS \r\nWOODEN FLOORS \r\n2 BEDROOMS \r\nPATIO GARDEN \r\nSHOWER BATHROOM \r\nOPEN PLAN KITCHEN \r\n\r\nOffered with NEW FURNITURE \r\n\r\nSuit a family, sharers or a couple \r\n\r\nAvailable TODAY \r\n\r\nWhats required \r\n1 months rent \r\n6 week deposit \r\n\r\nNO HOUSING BENEFIT \r\nNO PETS \r\n\r\nFor more information or to book a viewing CALL now', 'REFURBISHED  \r\nDOUBLE GLAZING \r\nGAS CENTRAL HEATING \r\nTALL CEILINGS \r\nShower bathroom \r\nFURNISHED \r\nPATIO GARDEN \r\nIDEAL FOR PROFESSIONAL FAMILY, SHARERS or COUPLE \r\nWALKING DISTANCE OF ROMFORD STATION AND TOWN CENTRE \r\nAVAILABLE TODAY', '', '', 'George Street', 'Romford', 'RM1 2EB', 220, '2018-06-27', '51.5727273', '0.18925160000003416', 900, '2018-08-08 15:24:55', 98, 1, 5),
(35, 1, 1, 2, 1, 1, 1, '3 bedroom terraced house to rent', 'LOL12', '3-bedroom-terraced-house-to-rent', '', '', '', 'Tenure: Freehold\r\n\r\nLettings of London is pleased to offer this recently REFURBISHED 3 BEDROOM HOUSE in the heart of Edmonton N9. Ideal for LOCAL SCHOOLS, SHOPS, AMENITIES and TRANSPORT. Property has carpets, wooden floors, GCH and Double Glazing. \r\n\r\nAvailable Mid JUNE \r\n\r\nCALL OR EMAIL NOW', 'Wooden floors \r\nCarpets \r\nNeutral Decor \r\nTall ceilings \r\nFully Fitted Kitchen \r\n3 piece bathroom with Shower attachment \r\nIDEAL FOR SHARERS OR FAMILY \r\nCLOSE TO TRAIN &amp; SHOPPING CENTRE \r\nNO DSS - NO PETS - NO BILLS INCLUDED', '', '', 'Bounces Road', 'London', 'N9 8HY', 220, '2018-07-27', '51.6284046', '-0.054433399999993526', 1500, '2018-06-28 08:20:12', 4, 6, 3),
(36, 1, 1, 2, 1, 1, 1, '2 bed HA3', 'LOLROOKERYS', '2-bed-ha3', '', '', '', 'Lettings of London is pleased to offer this well presented, Spacious 2 Bed Flat moments from Kenton High Street.', 'Spacious\r\nWooden Floors\r\nGCH\r\nNeutral Condition\r\n', '', '', 'Westfield Lane', 'Harrow', 'HA3 9EA', 220, '2018-07-13', '51.5885774', '-0.30181849999996757', 1350, '2018-07-26 05:20:04', 2, 1, 3),
(37, 1, 1, 2, 1, 1, 1, 'Lettings of London is pleased to offer this LARGE ENSUITE ROOM in Hatfield AL10', 'hatfieldensuite', 'lettings-of-london-is-pleased-to-offer-this-large-ensuite-room-in-hatfield-al10', '', '', '', 'LETTINGS OF LONDON IS PLEASED TO OFFER this DOUBLE ensuite ROOM within this NEWLY REFURBISHED house in HATFIELD short walking distance Business Park, ASDA, Aldi and More. \r\n\r\nProperty benefits from: \r\nNEW GAS CENTRAL HEATING SYSTEM \r\nDOUBLE GLAZING \r\nINSULATED FLOORS \r\nINSULATED LOFT \r\nWOODEN FLOORS \r\nNEUTRAL DECOR \r\n3 PIECE BATHROOM \r\nPATIO GARDEN \r\nENSUITE BATHROOM\r\nFully fitted kitchen with NEW APPLIANCES \r\n\r\nRoom would suit a STUDENT / PROFESSIONAL due to its CLOSE proximity to ASDA, BOOTS, AMENITIES, GYM, UNIVERSITY, HATFIELD TRAIN STATION, Business Park, the market place, Coffee Shops, Supermarkets, Bars, Restaurants, Gyms, Parks, Banks, Boutiques and MORE. \r\n\r\nHatfield train station with links to Finsbury Park (15 mins fast train), Kings Cross (22 mins fast train) and Moorgate (37 mins fast train). \r\n\r\nHouse shared by boys and girls \r\n\r\nProperty would suit professionals or a students (SINGLES or COUPLES) \r\nNO PETS \r\nNO DSS \r\n\r\nAVAILABLE NOW \r\n\r\nCHEAP RUNNING COSTS \r\n\r\nCALL NOW', '', '', '', 'Goldings Crescent', 'Hatfield', 'AL10 8UD', 220, '2018-07-27', '51.76240720000001', '-0.2223848999999518', 650, '2018-07-20 18:57:10', 12, 1, 5),
(38, 1, 1, 2, 1, 1, 1, 'AVAILABLE NOW. AL10 AL4 AL9 closer to shops &amp; amenities. Ideal for Students or Professionals ', 'singlehatfieldroom', 'available-now-al10-al4-al9-closer-to-shops-amp-amenities-ideal-for-students-or-professionals', '', '', '', 'Lettings of London is pleased to offer this RECENTLY REFURBISHED ROOM in the heart of HATFIELD within short walking distance to everything. \r\n\r\nProperty benefits from: \r\nGAS CENTRAL HEATING \r\nDOUBLE GLAZING \r\nCarpets and tiles \r\nNEUTRAL DECOR \r\nShower BATHROOM \r\nSEPARATE W/C\r\nPATIO GARDEN \r\nBuilt in Wardrobe\r\n\r\nFURNISHED \r\n\r\nLOW EPC RATING \r\n\r\nRoom would suit a Single or Couple, STUDENT / PROFESSIONAL due to its CLOSE proximity to ASDA, BOOTS, AMENITIES, GYM, UNIVERSITY, HATFIELD TRAIN STATION, Business Park, the market place + more. \r\n\r\nIDEAL FOR SHOPS AND AMENITIES, TRAIN STATION, Coffee Shops, Supermarkets, Bars, Restaurants, Gyms, Parks, Banks, Boutiques and MORE. \r\n\r\nHouse shared by boys and girls \r\n\r\nProperty would suit a professional \r\nNO PETS \r\nNO DSS \r\n\r\nAVAILABLE NOW \r\n\r\nClose to Welwyn Garden City AL7, St Albans AL1 &amp; AL3 AL4, Potters Bar EN6, Brookmans Park AL9, Welham Green AL9\r\n\r\nREGISTER YOUR INTEREST BY CALLING OR EMAILING THE OFFICE NOW \r\n\r\nFor more information or other properties please call, email or check our website \r\nwww. lettingsoflondon. com ', 'GAS CENTRAL HEATING \r\nDOUBLE GLAZING \r\nCarpets and tiles \r\nNEUTRAL DECOR \r\nShower BATHROOM \r\nSEPARATE W/C\r\nPATIO GARDEN \r\nBuilt in Wardrobe', 'Room would suit a Single or Couple, STUDENT / PROFESSIONAL due to its CLOSE proximity to ASDA, BOOTS, AMENITIES, GYM, UNIVERSITY, HATFIELD TRAIN STATION, Business Park, the market place + more. ', '', 'Breaks Road', 'Hatfield', 'AL10 8TR', 220, '2018-08-12', '51.76178669999999', '-0.22178619999999682', 300, '2018-09-13 21:29:07', 0, 1, 3),
(39, 1, 1, 2, 1, 1, 1, '2 double Bedroom House. AVAILABLE LATE AUGUST. Call now HA0. Close to Tube and Train', 'wembleyhouse', '2-double-bedroom-house-available-late-august-call-now-ha0-close-to-tube-and-train', '', '', '', 'LETTINGS OF LONDON is pleased to offer this REFURBISHED 2 Double Maisonette, situated minutes walking distance to NORTH WEMBLEY and SOUTH KENTON TUBE and RAIL STATIONS, Buses, Tescos, WEMBLEY High Road, all amenities, Restaurants, coffee houses and more. 2 x W/Cs, Modern fittings and Decor throughout. \r\n\r\nREFURBISHED RECENTLY \r\nProperty boasts many features such as \r\nWooden floors \r\nCarpets on stairs \r\nNeutral Decor \r\nTall ceilings \r\n2 DOUBLE BEDROOMS \r\nLarge GARDEN \r\nGAS CENTRAL HEATING \r\nDOUBLE GLAZING \r\nSTORAGE CUPBOARD \r\nNEWLY PAINTED \r\n3 piece BATH with SHOWER attachment \r\nDownstairs Cloakroom (W/C) \r\nOffered UN/FURNISHED \r\n\r\nProperty would be suitable for a small family or sharers \r\nProfessionals only \r\nNo DSS \r\nNO PETS \r\n\r\nWhats required: \r\n1 Months Rent \r\n6 Week Deposit \r\n\r\nCLOSE TO NORTHWICK PARK HOSPITAL, PRESTON ROAD, HARROW, KENTON, SUDBURY, WEMBLEY STADIUM, HARROW-ON-THE-HILL, RAYNERS LANE \r\n\r\nAVAILABLE LATE AUGUST \r\n\r\nCALL to arrange a viewing NOW\r\n\r\n', 'AVAILABLE LATE AUGUST\r\nCLOSE TO TRAIN and TUBE\r\nIDEAL FOR PROFESSIONALS', '', '', 'Byron Road', 'Wembley', 'HA0 3PB', 220, '2018-08-26', '51.56604979999999', '-0.3072750000000042', 1400, '2018-07-26 03:29:29', 4, 3, 3),
(40, 1, 1, 2, 1, 3, 1, 'HA0. 2 Bed House To Let. Available Late August. Suit a family or Sharers. Ideal for Tube and Train', 'AUGUST WEMBLEY', 'ha0-2-bed-house-to-let-available-late-august-suit-a-family-or-sharers-ideal-for-tube-and-train', '', '', '', 'LETTINGS OF LONDON is pleased to offer this REFURBISHED 2 Double Maisonette, situated minutes walking distance to NORTH WEMBLEY and SOUTH KENTON TUBE and RAIL STATIONS, Buses, Tescos, WEMBLEY High Road, all amenities, Restaurants, coffee houses and more. 2 x W/Cs, Modern fittings and Decor throughout. \r\n\r\nREFURBISHED RECENTLY \r\nProperty boasts many features such as \r\nWooden floors \r\nCarpets on stairs \r\nNeutral Decor \r\nTall ceilings \r\n2 DOUBLE BEDROOMS \r\nLarge GARDEN \r\nGAS CENTRAL HEATING \r\nDOUBLE GLAZING \r\nSTORAGE CUPBOARD \r\nNEWLY PAINTED \r\n3 piece BATH with SHOWER attachment \r\nDownstairs Cloakroom (W/C) \r\nOffered UN/FURNISHED \r\n\r\nProperty would be suitable for a small family or sharers \r\nProfessionals only \r\nNo DSS \r\nNO PETS \r\n\r\nWhats required: \r\n1 Months Rent \r\n6 Week Deposit \r\n\r\nCLOSE TO NORTHWICK PARK HOSPITAL, PRESTON ROAD, HARROW, KENTON, SUDBURY, WEMBLEY STADIUM, HARROW-ON-THE-HILL, RAYNERS LANE \r\n\r\nAVAILABLE LATE AUGUST \r\n\r\nCALL to arrange a viewing NOW', 'Wooden Floors\r\nGas Central Heating\r\nDouble Glazing\r\nStorage\r\nGarden\r\n', '', '47', 'Byron Road', 'Wembley', 'HA0 3PB', 220, '2018-08-27', '51.56604979999999', '-0.3072750000000042', 1400, '2018-07-26 07:29:46', 8, 1, 5),
(41, 1, 1, 2, 1, 4, 19, 'LOVELY ROOM situated within short walking distance to ALL amenities, TRAIN, Buses, Gym, GALLERIA, Parks.', 'Singlebedhatfield', 'lovely-room-situated-within-short-walking-distance-to-all-amenities-train-buses-gym-galleria-parks', '', '', '', 'Lettings of London is pleased to offer this NEWLY REFURBISHED ROOM in HATFIELD short walking distance to everything.\r\n\r\nSHARED HOUSE WITH OTHER STUDENTS/PROFESSIONALS of different backgrounds\r\n\r\nNO BILLS  INCLUDED\r\n\r\nProperty benefits from:\r\nGAS CENTRAL HEATING\r\nDOUBLE GLAZING\r\nINSULATED\r\nWOODEN FLOORS\r\nNEUTRAL DECOR\r\n3 piece BATHROOM\r\nLOW EPC rating\r\n\r\nRoom would suit a STUDENT / PROFESSIONAL due to its CLOSE proximity to ASDA, BOOTS, AMENITIES, GYM, UNIVERSITY, HATFIELD TRAIN STATION, Business Park, the market place, Coffee Shops, Supermarkets, Bars, GALLERIA, Restaurants, Gyms, Parks, Banks, Boutiques and MORE.\r\n\r\nHouse shared by boys and girls of ALL backgrounds\r\n\r\nProperty would suit a professional\r\nNO PETS\r\nNO DSS\r\n\r\nAVAILABLE TODAY\r\n\r\nCALL NOW\r\n\r\nSHARED HOUSE WITH OTHER STUDENTS/PROFESSIONALS\r\nSTUDENTS MUST HAVE A UK BASED GUARANTOR WHO IS A PROPERTY OWNER', 'NEW GAS CENTRAL HEATING\r\nDOUBLE GLAZING\r\nWOODEN FLOORS\r\nNEUTRAL DECOR\r\nBRAND NEW BATHROOM\r\nLOW EPC rating\r\n', 'LOVELY ROOM situated within short walking distance to ALL amenities, TRAIN, Buses, Gym, GALLERIA, Parks.', '', 'Veritys', 'Hatfield', 'AL10 8HH', 220, '2018-12-07', '51.75841680000001', '-0.23268469999993613', 325, '2018-12-21 09:58:53', 3, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `property_api`
--

DROP TABLE IF EXISTS `property_api`;
CREATE TABLE IF NOT EXISTS `property_api` (
  `property_id` int(11) NOT NULL,
  `api_websites_id` int(11) NOT NULL,
  `api_status_id` int(11) NOT NULL,
  KEY `property_id` (`property_id`),
  KEY `api_websites_id` (`api_websites_id`),
  KEY `api_status_id` (`api_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Property''s status in API websites';

--
-- Dumping data for table `property_api`
--

INSERT INTO `property_api` (`property_id`, `api_websites_id`, `api_status_id`) VALUES
(27, 3, 1),
(25, 3, 1),
(24, 1, 1),
(24, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `property_api_rightmove`
--

DROP TABLE IF EXISTS `property_api_rightmove`;
CREATE TABLE IF NOT EXISTS `property_api_rightmove` (
  `property_id` int(11) NOT NULL,
  `rightmove_id` int(11) NOT NULL,
  `rightmove_url` text COLLATE utf8_bin NOT NULL,
  `rightmove_message` text COLLATE utf8_bin NOT NULL,
  KEY `property_id` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `property_api_zoopla`
--

DROP TABLE IF EXISTS `property_api_zoopla`;
CREATE TABLE IF NOT EXISTS `property_api_zoopla` (
  `property_id` int(11) NOT NULL,
  `zoopla_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `zoopla_url` text COLLATE utf8_bin NOT NULL,
  `zoopla_message` text COLLATE utf8_bin NOT NULL,
  KEY `property_id` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `property_areas`
--

DROP TABLE IF EXISTS `property_areas`;
CREATE TABLE IF NOT EXISTS `property_areas` (
  `property_id` int(11) NOT NULL,
  `area` varchar(255) COLLATE utf8_bin NOT NULL,
  `sqft` float NOT NULL,
  `cost` float NOT NULL,
  KEY `property_id` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_areas`
--

INSERT INTO `property_areas` (`property_id`, `area`, `sqft`, `cost`) VALUES
(37, 'hatfield ', 0, 0),
(34, 'Area', 100, 1),
(35, 'Area', 0, 0),
(40, 'WEMBLEY KENTON HARROW', 0, 0),
(36, 'harrow kenton', 1, 1),
(29, 'Area', 0, 0),
(39, 'Wembley, Alperton, Harrow', 0, 0),
(26, 'Area', 100, 1),
(28, 'Area', 0, 0),
(27, 'Area', 100, 1),
(32, 'Area', 100, 1),
(30, 'Area', 0, 0),
(25, 'Area', 100, 6.25),
(24, 'Area', 1000, 1),
(38, 'hatfield ', 0, 0),
(31, 'Area', 0, 0),
(41, 'Full property', 500, 5),
(33, 'Area', 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `property_certificates`
--

DROP TABLE IF EXISTS `property_certificates`;
CREATE TABLE IF NOT EXISTS `property_certificates` (
  `property_id` int(11) NOT NULL,
  `certificate_id` int(11) NOT NULL,
  `expiry` date NOT NULL,
  KEY `property_id` (`property_id`),
  KEY `certificate_id` (`certificate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_certificates`
--

INSERT INTO `property_certificates` (`property_id`, `certificate_id`, `expiry`) VALUES
(25, 1, '2018-09-15');

-- --------------------------------------------------------

--
-- Table structure for table `property_certificate_of_title`
--

DROP TABLE IF EXISTS `property_certificate_of_title`;
CREATE TABLE IF NOT EXISTS `property_certificate_of_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_ref_no` varchar(50) COLLATE utf8_bin NOT NULL,
  `lot` varchar(255) COLLATE utf8_bin NOT NULL,
  `land_area` double NOT NULL COMMENT 'in sq fts',
  `local_authority` varchar(255) COLLATE utf8_bin NOT NULL,
  `zoning` varchar(255) COLLATE utf8_bin NOT NULL,
  `title_notes` text COLLATE utf8_bin NOT NULL,
  `property_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_id` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='properties certificate of title ';

--
-- Dumping data for table `property_certificate_of_title`
--

INSERT INTO `property_certificate_of_title` (`id`, `title_ref_no`, `lot`, `land_area`, `local_authority`, `zoning`, `title_notes`, `property_id`) VALUES
(1, 'Law Society and Council of Mortgage Lenders Approv', '2000', 2000, 'Independent Bank, London', 'Enfield', '', 24);

-- --------------------------------------------------------

--
-- Table structure for table `property_docs`
--

DROP TABLE IF EXISTS `property_docs`;
CREATE TABLE IF NOT EXISTS `property_docs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_type_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `file` varchar(255) COLLATE utf8_bin NOT NULL,
  `ofile` varchar(255) COLLATE utf8_bin NOT NULL,
  `year` varchar(4) COLLATE utf8_bin NOT NULL,
  `month` varchar(2) COLLATE utf8_bin NOT NULL,
  `download` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `doc_type_id` (`doc_type_id`),
  KEY `property_id` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `property_enquiry`
--

DROP TABLE IF EXISTS `property_enquiry`;
CREATE TABLE IF NOT EXISTS `property_enquiry` (
  `message_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  KEY `message_id` (`message_id`),
  KEY `property_id` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_enquiry`
--

INSERT INTO `property_enquiry` (`message_id`, `property_id`) VALUES
(32, 33),
(26, 28),
(35, 24);

-- --------------------------------------------------------

--
-- Table structure for table `property_features`
--

DROP TABLE IF EXISTS `property_features`;
CREATE TABLE IF NOT EXISTS `property_features` (
  `property_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `value` varchar(100) COLLATE utf8_bin NOT NULL,
  KEY `property_id` (`property_id`),
  KEY `feature_id` (`feature_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_features`
--

INSERT INTO `property_features` (`property_id`, `feature_id`, `value`) VALUES
(37, 1, ''),
(37, 2, ''),
(37, 5, 'Garden'),
(34, 1, '2'),
(34, 2, '1'),
(34, 5, 'Garden'),
(35, 1, '3'),
(35, 2, '2'),
(40, 1, '2'),
(40, 2, '2'),
(40, 5, 'Garden'),
(36, 1, '2'),
(36, 2, '1'),
(36, 5, 'Garden'),
(29, 1, '2'),
(29, 2, '1'),
(39, 1, '2'),
(39, 2, '2'),
(39, 6, 'Pets Not Allowed'),
(39, 7, 'No DSS/LHA'),
(39, 5, 'Garden'),
(39, 5, 'Parking'),
(26, 1, '1'),
(26, 2, '1'),
(28, 1, '2'),
(28, 2, '1'),
(27, 1, '1'),
(27, 2, '1'),
(32, 1, '1'),
(32, 2, '1'),
(30, 1, '2'),
(30, 2, '2'),
(25, 1, '1'),
(25, 2, '1'),
(25, 6, 'Pets Not Allowed'),
(25, 7, 'YES'),
(24, 1, '2'),
(24, 2, '2'),
(24, 6, 'Pets Not Allowed'),
(24, 7, 'YES'),
(38, 1, '1'),
(38, 2, '2'),
(38, 6, 'Pets Allowed'),
(38, 7, 'YES'),
(38, 5, 'Garden'),
(31, 1, '2'),
(31, 2, '1'),
(31, 6, 'Pets Allowed'),
(31, 7, 'YES'),
(41, 1, '1'),
(41, 2, '1'),
(41, 6, 'Pets Not Allowed'),
(41, 7, 'No DSS/LHA'),
(41, 5, 'Garden'),
(41, 5, 'Parking'),
(33, 1, '2'),
(33, 2, '1'),
(33, 6, 'Pets Allowed'),
(33, 7, 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `property_for`
--

DROP TABLE IF EXISTS `property_for`;
CREATE TABLE IF NOT EXISTS `property_for` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_for`
--

INSERT INTO `property_for` (`id`, `title`) VALUES
(1, 'Sale'),
(2, 'Rent');

-- --------------------------------------------------------

--
-- Table structure for table `property_images`
--

DROP TABLE IF EXISTS `property_images`;
CREATE TABLE IF NOT EXISTS `property_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `floor_plan` tinyint(1) NOT NULL DEFAULT '0',
  `panoramic` tinyint(1) NOT NULL DEFAULT '0' COMMENT '360 view',
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `file` varchar(255) COLLATE utf8_bin NOT NULL,
  `ofile` varchar(255) COLLATE utf8_bin NOT NULL,
  `year` varchar(4) COLLATE utf8_bin NOT NULL,
  `month` varchar(2) COLLATE utf8_bin NOT NULL,
  `primary_image` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_id` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=414 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_images`
--

INSERT INTO `property_images` (`id`, `property_id`, `floor_plan`, `panoramic`, `name`, `file`, `ofile`, `year`, `month`, `primary_image`, `sort_order`) VALUES
(88, 26, 0, 0, '', '1.jpg', '201806281142263564894.jpg', '2018', '06', 0, 1),
(89, 26, 0, 0, '', '3.jpg', '201806281142269937662.jpg', '2018', '06', 0, 2),
(90, 26, 0, 0, '', '4.jpg', '201806281142262124321.jpg', '2018', '06', 0, 3),
(91, 26, 0, 0, '', '2.jpg', '201806281142261414288.jpg', '2018', '06', 0, 4),
(92, 26, 0, 0, '', '6.jpg', '201806281142274024443.jpg', '2018', '06', 0, 5),
(93, 26, 0, 0, '', '5.jpg', '201806281142273138498.jpg', '2018', '06', 0, 6),
(94, 26, 0, 0, '', '7.jpg', '201806281142287971819.jpg', '2018', '06', 0, 7),
(95, 26, 0, 0, '', '8.jpg', '201806281142283134161.jpg', '2018', '06', 0, 8),
(96, 26, 0, 0, '', '9.jpg', '201806281142298513559.jpg', '2018', '06', 0, 9),
(97, 26, 0, 0, '', '11.jpg', '201806281142307983872.jpg', '2018', '06', 0, 10),
(98, 26, 0, 0, '', '10.jpg', '201806281142308886844.jpg', '2018', '06', 0, 11),
(99, 27, 0, 0, '', '6.jpg', '201806281149018627667.jpg', '2018', '06', 0, 1),
(100, 27, 0, 0, '', '1.jpg', '201806281149013301086.jpg', '2018', '06', 0, 2),
(101, 27, 0, 0, '', '3.jpg', '201806281149021181313.jpg', '2018', '06', 0, 3),
(102, 27, 0, 0, '', '2.jpg', '201806281149026412138.jpg', '2018', '06', 0, 4),
(103, 27, 0, 0, '', '5.jpg', '201806281149022761171.jpg', '2018', '06', 0, 5),
(104, 27, 0, 0, '', '4.jpg', '201806281149035093624.jpg', '2018', '06', 0, 6),
(105, 27, 0, 0, '', '7.jpg', '201806281149055743385.jpg', '2018', '06', 0, 7),
(106, 27, 0, 0, '', '9.jpg', '201806281149055338595.jpg', '2018', '06', 0, 8),
(107, 27, 0, 0, '', '8.jpg', '201806281149073569368.jpg', '2018', '06', 0, 9),
(108, 27, 0, 0, '', '12.jpg', '201806281149086068437.jpg', '2018', '06', 0, 10),
(109, 27, 0, 0, '', '10.jpg', '201806281149081327561.jpg', '2018', '06', 0, 11),
(110, 27, 0, 0, '', '11.jpg', '201806281149094135968.jpg', '2018', '06', 0, 12),
(111, 28, 0, 0, '', '2.jpg', '201806281155135677755.jpg', '2018', '06', 0, 2),
(112, 28, 0, 0, '', '3.jpg', '201806281155147888837.jpg', '2018', '06', 0, 5),
(113, 28, 0, 0, '', '5.jpg', '201806281155158013495.jpg', '2018', '06', 0, 9),
(114, 28, 0, 0, '', '6.jpg', '201806281155155378931.jpg', '2018', '06', 0, 3),
(115, 28, 0, 0, '', '4.jpg', '201806281155152921791.jpg', '2018', '06', 0, 7),
(116, 28, 0, 0, '', '7.jpg', '201806281155165509987.jpg', '2018', '06', 0, 6),
(117, 28, 0, 0, '', '8.jpg', '201806281155163949088.jpg', '2018', '06', 0, 4),
(118, 28, 0, 0, '', '1.jpg', '201806281155163347257.jpg', '2018', '06', 0, 10),
(119, 28, 0, 0, '', '9.jpg', '201806281155184561659.jpg', '2018', '06', 0, 1),
(120, 28, 0, 0, '', '11.jpg', '201806281155191809103.jpg', '2018', '06', 0, 12),
(121, 28, 0, 0, '', '12.jpg', '201806281155194827287.jpg', '2018', '06', 0, 8),
(122, 28, 0, 0, '', '16.jpg', '201806281155229838223.jpg', '2018', '06', 0, 11),
(123, 28, 0, 0, '', '13.jpg', '201806281155226867646.jpg', '2018', '06', 0, 13),
(124, 28, 0, 0, '', '14.jpg', '201806281155221624367.jpg', '2018', '06', 0, 14),
(125, 28, 0, 0, '', '10.jpg', '201806281155236007480.jpg', '2018', '06', 0, 15),
(126, 28, 0, 0, '', '18.jpg', '201806281155233512988.jpg', '2018', '06', 0, 16),
(127, 28, 0, 0, '', '17.jpg', '201806281155247242783.jpg', '2018', '06', 0, 17),
(128, 28, 0, 0, '', '19.jpg', '201806281155241405812.jpg', '2018', '06', 0, 18),
(129, 28, 0, 0, '', '20.jpg', '201806281155258984139.jpg', '2018', '06', 0, 19),
(130, 28, 0, 0, 'sdsd', '15.jpg', '201806281155256555324.jpg', '2018', '06', 0, 21),
(131, 28, 0, 0, '', '22.jpg', '201806281155269276550.jpg', '2018', '06', 0, 22),
(132, 28, 0, 0, '', '21.jpg', '201806281155264951964.jpg', '2018', '06', 0, 20),
(133, 29, 0, 0, '', '1.jpg', '201806281207122077600.jpg', '2018', '06', 0, 2),
(134, 29, 0, 0, '', '3.jpg', '201806281207129751281.jpg', '2018', '06', 0, 1),
(135, 29, 0, 0, '', '4.jpg', '201806281207136332275.jpg', '2018', '06', 0, 3),
(136, 29, 0, 0, '', '5.jpg', '201806281207135221480.jpg', '2018', '06', 0, 4),
(137, 29, 0, 0, '', '6.jpg', '201806281207135698129.jpg', '2018', '06', 0, 5),
(138, 29, 0, 0, '', '2.jpg', '201806281207141034876.jpg', '2018', '06', 0, 6),
(139, 29, 0, 0, '', '9.jpg', '201806281207142015938.jpg', '2018', '06', 0, 7),
(140, 29, 0, 0, '', '8.jpg', '201806281207156097651.jpg', '2018', '06', 0, 8),
(141, 29, 0, 0, '', '7.jpg', '201806281207157515951.jpg', '2018', '06', 0, 9),
(142, 29, 0, 0, '', '11.jpg', '201806281207153343385.jpg', '2018', '06', 0, 10),
(143, 29, 0, 0, '', '14.jpg', '201806281207164647672.jpg', '2018', '06', 1, 11),
(144, 29, 0, 0, '', '13.jpg', '201806281207176853551.jpg', '2018', '06', 0, 12),
(145, 29, 0, 0, '', '12.jpg', '201806281207171476066.jpg', '2018', '06', 0, 13),
(146, 29, 0, 0, '', '15.jpg', '201806281207179008133.jpg', '2018', '06', 0, 14),
(147, 29, 0, 0, '', '10.jpg', '201806281207176033464.jpg', '2018', '06', 0, 15),
(148, 30, 0, 0, '', '1.jpg', '201806281213279344283.jpg', '2018', '06', 0, 9),
(149, 30, 0, 0, '', '3.jpg', '201806281213285513102.jpg', '2018', '06', 0, 10),
(150, 30, 0, 0, '', '2.jpg', '201806281213288196687.jpg', '2018', '06', 0, 8),
(151, 30, 0, 0, '', '5.jpg', '201806281213286141755.jpg', '2018', '06', 0, 11),
(152, 30, 0, 0, '', '4.jpg', '201806281213296306516.jpg', '2018', '06', 0, 12),
(153, 30, 0, 0, '', '6.jpg', '201806281213295555810.jpg', '2018', '06', 0, 14),
(154, 30, 0, 0, '', '7.jpg', '201806281213314257779.jpg', '2018', '06', 0, 13),
(155, 30, 0, 0, '', '9.jpg', '201806281213316906835.jpg', '2018', '06', 0, 7),
(156, 30, 0, 0, '', '11.jpg', '201806281213331124001.jpg', '2018', '06', 0, 4),
(157, 30, 0, 0, '', '8.jpg', '201806281213334366168.jpg', '2018', '06', 0, 6),
(158, 30, 0, 0, '', '10.jpg', '201806281213351678357.jpg', '2018', '06', 0, 5),
(159, 30, 0, 0, '', '12.jpg', '201806281213369804745.jpg', '2018', '06', 0, 1),
(160, 30, 0, 0, '', '13.jpg', '201806281213364808734.jpg', '2018', '06', 0, 2),
(161, 30, 0, 0, '', '14.jpg', '201806281213365516588.jpg', '2018', '06', 0, 3),
(162, 31, 0, 0, '', '3.jpg', '201806281223532717006.jpg', '2018', '06', 0, 3),
(163, 31, 0, 0, '', '6.jpg', '201806281223541488199.jpg', '2018', '06', 0, 6),
(164, 31, 0, 0, '', '4.jpg', '201806281223552123186.jpg', '2018', '06', 0, 9),
(165, 31, 0, 0, '', '2.jpg', '201806281223568582565.jpg', '2018', '06', 0, 10),
(166, 31, 0, 0, '', '1.jpg', '201806281223568953705.jpg', '2018', '06', 0, 4),
(167, 31, 0, 0, '', '5.jpg', '201806281223584924060.jpg', '2018', '06', 0, 12),
(168, 31, 0, 0, '', '7.jpg', '201806281223598388248.jpg', '2018', '06', 0, 7),
(169, 31, 0, 0, '', '8.jpg', '201806281223592119344.jpg', '2018', '06', 0, 5),
(170, 31, 0, 0, '', '10.jpg', '201806281224009473336.jpg', '2018', '06', 0, 2),
(171, 31, 0, 0, '', '11.jpg', '201806281224011966684.jpg', '2018', '06', 0, 8),
(172, 31, 0, 0, '', '12.jpg', '201806281224036475002.jpg', '2018', '06', 0, 1),
(173, 31, 0, 0, '', '9.jpg', '201806281224031747550.jpg', '2018', '06', 1, 11),
(174, 32, 0, 0, '', '6.jpg', '201806281230416469329.jpg', '2018', '06', 0, 1),
(175, 32, 0, 0, '', '2.jpg', '201806281230416607822.jpg', '2018', '06', 0, 2),
(176, 32, 0, 0, '', '1.jpg', '201806281230429769879.jpg', '2018', '06', 0, 3),
(177, 32, 0, 0, '', '5.jpg', '201806281230425114078.jpg', '2018', '06', 0, 4),
(178, 32, 0, 0, '', '3.jpg', '201806281230422542553.jpg', '2018', '06', 0, 5),
(179, 32, 0, 0, '', '4.jpg', '201806281230452438243.jpg', '2018', '06', 0, 6),
(180, 32, 0, 0, '', '7.jpg', '201806281230453114811.jpg', '2018', '06', 0, 7),
(181, 32, 0, 0, '', '8.jpg', '201806281230456326250.jpg', '2018', '06', 0, 8),
(182, 32, 0, 0, '', '10.jpg', '201806281230457017469.jpg', '2018', '06', 0, 9),
(183, 32, 0, 0, '', '9.jpg', '201806281230469735425.jpg', '2018', '06', 0, 10),
(184, 32, 0, 0, '', '12.jpg', '201806281230475865893.jpg', '2018', '06', 0, 11),
(185, 32, 0, 0, '', '11.jpg', '201806281230491746267.jpg', '2018', '06', 0, 12),
(186, 32, 0, 0, '', '17.jpg', '201806281230501291851.jpg', '2018', '06', 0, 13),
(187, 32, 0, 0, '', '14.jpg', '201806281230506657883.jpg', '2018', '06', 0, 14),
(188, 32, 0, 0, '', '19.jpg', '201806281230515044726.jpg', '2018', '06', 0, 15),
(189, 32, 0, 0, '', '13.jpg', '201806281230513927133.jpg', '2018', '06', 0, 16),
(190, 32, 0, 0, '', '15.jpg', '201806281230525861586.jpg', '2018', '06', 0, 17),
(191, 32, 0, 0, '', '16.jpg', '201806281230546593926.jpg', '2018', '06', 0, 18),
(192, 32, 0, 0, '', '21.jpg', '201806281230546887837.jpg', '2018', '06', 0, 19),
(193, 32, 0, 0, '', '22.jpg', '201806281230566374525.jpg', '2018', '06', 0, 20),
(194, 32, 0, 0, '', '18.jpg', '201806281230579452141.jpg', '2018', '06', 0, 21),
(195, 32, 0, 0, '', '24.jpg', '201806281230576387765.jpg', '2018', '06', 0, 22),
(196, 32, 0, 0, '', '20.jpg', '201806281230571119903.jpg', '2018', '06', 0, 23),
(197, 32, 0, 0, '', '23.jpg', '201806281230575705592.jpg', '2018', '06', 0, 24),
(198, 32, 0, 0, '', '25.jpg', '201806281230581573602.jpg', '2018', '06', 0, 25),
(199, 33, 0, 0, '', '4.jpg', '201806281236531511283.jpg', '2018', '06', 0, 17),
(200, 33, 0, 0, '', '3.jpg', '201806281236546091932.jpg', '2018', '06', 0, 7),
(201, 33, 0, 0, '', '6.jpg', '201806281236544455002.jpg', '2018', '06', 0, 8),
(202, 33, 0, 0, '', '2.jpg', '201806281236549023919.jpg', '2018', '06', 0, 9),
(203, 33, 0, 0, '', '5.jpg', '201806281236541543195.jpg', '2018', '06', 0, 1),
(204, 33, 0, 0, '', '1.jpg', '201806281236551018115.jpg', '2018', '06', 0, 3),
(205, 33, 0, 0, '', '9.jpg', '201806281236572312031.jpg', '2018', '06', 1, 2),
(206, 33, 0, 0, '', '10.jpg', '201806281236597089636.jpg', '2018', '06', 0, 4),
(207, 33, 0, 0, '', '7.jpg', '201806281237008288895.jpg', '2018', '06', 0, 10),
(208, 33, 0, 0, '', '11.jpg', '201806281237016155124.jpg', '2018', '06', 0, 11),
(209, 33, 0, 0, '', '13.jpg', '201806281237024062187.jpg', '2018', '06', 0, 12),
(210, 33, 0, 0, '', '12.jpg', '201806281237026766951.jpg', '2018', '06', 0, 13),
(211, 33, 0, 0, '222', '8.jpg', '201806281237039439881.jpg', '2018', '06', 0, 14),
(212, 33, 0, 0, '', '14.jpg', '201806281237047004850.jpg', '2018', '06', 0, 15),
(213, 33, 0, 0, '', '16.jpg', '201806281237066981289.jpg', '2018', '06', 0, 6),
(214, 33, 0, 0, '', '17.jpg', '201806281237085901305.jpg', '2018', '06', 0, 5),
(215, 33, 0, 0, '', '15.jpg', '201806281237097868245.jpg', '2018', '06', 0, 16),
(216, 34, 0, 0, '', '3.jpg', '201806281243173383620.jpg', '2018', '06', 0, 10),
(217, 34, 0, 0, '', '1.jpg', '201806281243178793203.jpg', '2018', '06', 0, 2),
(218, 34, 0, 0, '', '4.jpg', '201806281243175704814.jpg', '2018', '06', 0, 11),
(219, 34, 0, 0, '', '6.jpg', '201806281243185458604.jpg', '2018', '06', 0, 6),
(220, 34, 0, 0, '', '2.jpg', '201806281243188339044.jpg', '2018', '06', 0, 7),
(221, 34, 0, 0, '', '5.jpg', '201806281243188975149.jpg', '2018', '06', 0, 8),
(222, 34, 0, 0, '', '8.jpg', '201806281243192891864.jpg', '2018', '06', 0, 12),
(223, 34, 0, 0, '', '7.jpg', '201806281243201566698.jpg', '2018', '06', 0, 3),
(224, 34, 0, 0, '', '9.jpg', '201806281243218247034.jpg', '2018', '06', 0, 13),
(225, 34, 0, 0, '', '10.jpg', '201806281243231855013.jpg', '2018', '06', 0, 15),
(226, 34, 0, 0, '', '12.jpg', '201806281243233883737.jpg', '2018', '06', 0, 5),
(227, 34, 0, 0, '', '11.jpg', '201806281243241619959.jpg', '2018', '06', 0, 14),
(228, 34, 0, 0, '', '14.jpg', '201806281243264949508.jpg', '2018', '06', 0, 9),
(229, 34, 0, 0, '', '13.jpg', '201806281243266244106.jpg', '2018', '06', 0, 4),
(230, 35, 0, 0, '', '1.jpg', '201806281249392079416.jpg', '2018', '06', 0, 1),
(231, 35, 0, 0, '', '6.jpg', '201806281249404066896.jpg', '2018', '06', 0, 2),
(232, 35, 0, 0, '', '5.jpg', '201806281249413906430.jpg', '2018', '06', 0, 3),
(233, 35, 0, 0, '', '3.jpg', '201806281249419781285.jpg', '2018', '06', 1, 4),
(234, 35, 0, 0, '', '4.jpg', '201806281249418245652.jpg', '2018', '06', 0, 5),
(235, 35, 0, 0, '', '2.jpg', '201806281249423083138.jpg', '2018', '06', 0, 6),
(236, 35, 0, 0, '', '10.jpg', '201806281249439569041.jpg', '2018', '06', 0, 7),
(237, 35, 0, 0, '', '7.jpg', '201806281249446206392.jpg', '2018', '06', 0, 8),
(238, 35, 0, 0, '', '9.jpg', '201806281249446907322.jpg', '2018', '06', 0, 9),
(239, 35, 0, 0, '', '8.jpg', '201806281249449485786.jpg', '2018', '06', 0, 10),
(266, 36, 0, 0, '', 'Img_1055.jpg', '201806281842377555302.jpg', '2018', '06', 0, 3),
(267, 36, 0, 0, '', 'Img_1054.jpg', '201806281842395122454.jpg', '2018', '06', 0, 4),
(268, 36, 0, 0, '', 'Img_1057.jpg', '201806281842408562698.jpg', '2018', '06', 0, 5),
(269, 36, 0, 0, '', 'Img_1052.jpg', '201806281842415703114.jpg', '2018', '06', 0, 6),
(270, 36, 0, 0, '', 'Img_1053.jpg', '201806281842429007504.jpg', '2018', '06', 0, 7),
(271, 36, 0, 0, '', 'Img_1058.jpg', '201806281842448198348.jpg', '2018', '06', 0, 8),
(272, 36, 0, 0, '', 'Img_1059.jpg', '201806281842459236992.jpg', '2018', '06', 0, 9),
(273, 36, 0, 0, '', 'Img_1060.jpg', '201806281842465443814.jpg', '2018', '06', 0, 10),
(274, 36, 0, 0, '', 'Img_1062.jpg', '201806281842478309810.jpg', '2018', '06', 0, 11),
(275, 36, 0, 0, '', 'Img_1063.jpg', '201806281842474653547.jpg', '2018', '06', 0, 12),
(276, 36, 0, 0, '', 'Img_1064.jpg', '201806281842482796330.jpg', '2018', '06', 0, 13),
(277, 36, 0, 0, '', 'Img_1065.jpg', '201806281842496301551.jpg', '2018', '06', 0, 2),
(278, 36, 0, 0, '', 'Img_1066.jpg', '201806281842505594491.jpg', '2018', '06', 0, 1),
(279, 37, 0, 0, '', 'Img_3247.jpg', '201807202322087191887.jpg', '2018', '07', 0, 1),
(280, 37, 0, 0, '', 'Img_3244.jpg', '201807202322129864067.jpg', '2018', '07', 0, 2),
(281, 37, 0, 0, '', 'Img_3245.jpg', '201807202322132469791.jpg', '2018', '07', 0, 3),
(282, 37, 0, 0, '', 'Img_3248.jpg', '201807202322149483493.jpg', '2018', '07', 0, 4),
(283, 38, 0, 0, '', 'Br2.jpg', '201807220259132577475.jpg', '2018', '07', 0, 1),
(284, 38, 0, 0, '', 'Br1.jpg', '201807220259131021389.jpg', '2018', '07', 0, 2),
(285, 38, 0, 0, '', 'Br3.jpg', '201807220259229522624.jpg', '2018', '07', 0, 3),
(286, 38, 0, 0, '', 'Br5.jpg', '201807220259227051560.jpg', '2018', '07', 1, 4),
(287, 38, 0, 0, '', 'Br4.jpg', '201807220259223079225.jpg', '2018', '07', 0, 5),
(288, 38, 0, 0, '', 'Br6.jpg', '201807220259307377840.jpg', '2018', '07', 0, 6),
(289, 38, 0, 0, '', 'Br7.jpg', '201807220259318515276.jpg', '2018', '07', 0, 7),
(290, 38, 0, 0, '', 'Br9.jpg', '201807220259316421249.jpg', '2018', '07', 0, 8),
(291, 38, 0, 0, '', 'Br8.jpg', '201807220259319177209.jpg', '2018', '07', 0, 9),
(292, 38, 0, 0, '', 'Br10.jpg', '201807220259315963494.jpg', '2018', '07', 0, 10),
(293, 39, 0, 0, '', 'Img_0784.jpg', '201807260756552437482.jpg', '2018', '07', 0, 2),
(294, 39, 0, 0, '', 'Img_0795.jpg', '201807260756568621588.jpg', '2018', '07', 0, 3),
(295, 39, 0, 0, '', 'Img_0792.jpg', '201807260756569137476.jpg', '2018', '07', 0, 4),
(296, 39, 0, 0, '', 'Img_0787.jpg', '201807260756577885337.jpg', '2018', '07', 0, 5),
(297, 39, 0, 0, '', 'Img_0796.jpg', '201807260756587214170.jpg', '2018', '07', 0, 6),
(298, 39, 0, 0, '', 'Img_0797.jpg', '201807260756592282198.jpg', '2018', '07', 0, 7),
(299, 39, 0, 0, '', 'Img_0799.jpg', '201807260757007326119.jpg', '2018', '07', 0, 8),
(300, 39, 0, 0, '', 'Img_0800.jpg', '201807260757011507303.jpg', '2018', '07', 0, 1),
(301, 39, 0, 0, '', 'Img_0803.jpg', '201807260757023271779.jpg', '2018', '07', 0, 9),
(302, 39, 0, 0, '', 'Img_0804.jpg', '201807260757031186274.jpg', '2018', '07', 0, 10),
(303, 39, 0, 0, '', 'Img_0806.jpg', '201807260757056607657.jpg', '2018', '07', 0, 11),
(304, 39, 0, 0, '', 'Img_0810.jpg', '201807260757067696639.jpg', '2018', '07', 0, 12),
(305, 39, 0, 0, '', 'Img_0811.jpg', '201807260757079756422.jpg', '2018', '07', 0, 13),
(306, 39, 0, 0, '', 'Img_0813.jpg', '201807260757081262991.jpg', '2018', '07', 0, 14),
(307, 39, 0, 0, '', 'Img_0817.jpg', '201807260757128434327.jpg', '2018', '07', 0, 15),
(308, 39, 0, 0, '', 'Img_0818.jpg', '201807260757138836750.jpg', '2018', '07', 0, 16),
(309, 39, 0, 0, '', 'Img_0819.jpg', '201807260757141414018.jpg', '2018', '07', 0, 17),
(310, 39, 0, 0, '', 'Img_0820.jpg', '201807260757153352508.jpg', '2018', '07', 0, 18),
(311, 39, 0, 0, '', 'Img_0821.jpg', '201807260757163365103.jpg', '2018', '07', 0, 19),
(312, 40, 0, 0, '', 'Img_0784.jpg', '201807261019231578021.jpg', '2018', '07', 0, 4),
(313, 40, 0, 0, '', 'Img_0787.jpg', '201807261019233483537.jpg', '2018', '07', 0, 5),
(314, 40, 0, 0, '', 'Img_0797.jpg', '201807261019517482179.jpg', '2018', '07', 0, 6),
(315, 40, 0, 0, '', 'Img_0800.jpg', '201807261019521561216.jpg', '2018', '07', 0, 7),
(316, 40, 0, 0, '', 'Img_0795.jpg', '201807261019531019958.jpg', '2018', '07', 0, 8),
(317, 40, 0, 0, '', 'Img_0799.jpg', '201807261019548153242.jpg', '2018', '07', 0, 1),
(318, 40, 0, 0, '', 'Img_0796.jpg', '201807261019554317512.jpg', '2018', '07', 0, 2),
(319, 40, 0, 0, '', 'Img_0803.jpg', '201807261019568833298.jpg', '2018', '07', 0, 3),
(320, 40, 0, 0, '', 'Img_0792.jpg', '201807261019575507578.jpg', '2018', '07', 0, 9),
(321, 40, 0, 0, '', 'Img_0805.jpg', '201807261020105753470.jpg', '2018', '07', 0, 10),
(322, 40, 0, 0, '', 'Img_0804.jpg', '201807261020114548213.jpg', '2018', '07', 0, 11),
(323, 40, 0, 0, '', 'Img_0810.jpg', '201807261020209454149.jpg', '2018', '07', 0, 12),
(324, 40, 0, 0, '', 'Img_0814.jpg', '201807261020222287979.jpg', '2018', '07', 0, 13),
(325, 40, 0, 0, '', 'Img_0813.jpg', '201807261020236182877.jpg', '2018', '07', 1, 14),
(326, 40, 0, 0, '', 'Img_0820.jpg', '201807261021233345600.jpg', '2018', '07', 0, 15),
(327, 40, 0, 0, '', 'Img_0821.jpg', '201807261021245025291.jpg', '2018', '07', 0, 16),
(329, 25, 0, 0, '', 'Img_4837.jpg', '201807261805315491585.jpg', '2018', '07', 0, 4),
(330, 25, 0, 0, '', 'Img_3246.jpg', '201807261806273943030.jpg', '2018', '07', 0, 2),
(331, 25, 0, 0, '', 'Img_3248.jpg', '201807261806283021923.jpg', '2018', '07', 0, 3),
(332, 25, 0, 0, '', 'Img_3247.jpg', '201807261806295256465.jpg', '2018', '07', 0, 1),
(334, 34, 0, 0, '', 'E6cbd1d91cb1cab60adf7b93aae9572b921314e9.jpg', '201808081524523314789.jpg', '2018', '08', 0, 1),
(357, 24, 0, 0, 'asasaaa', 'Hydrangeas.jpg', '201808092007231212411.jpg', '2018', '08', 0, 2),
(364, 24, 0, 0, '', 'Lighthouse.jpg', '201811082059571336509.jpg', '2018', '11', 0, 1),
(402, 24, 0, 1, 'Entrance', 'R0010026.jpg', '201811092117042532941.jpg', '2018', '11', 0, 4),
(407, 24, 0, 1, 'Bed Room', 'R0010029.jpg', '201811092117545742942.jpg', '2018', '11', 0, 5),
(408, 25, 0, 1, '', 'R0010026.jpg', '201811121952058088316.jpg', '2018', '11', 0, 5),
(409, 25, 0, 1, '', 'R0010029.jpg', '201811121952157013497.jpg', '2018', '11', 0, 6),
(410, 25, 0, 1, '', 'R0010034.jpg', '201811121952259569862.jpg', '2018', '11', 0, 7),
(411, 24, 0, 1, '', 'Original_201901062340103521212.jpg', '201901151439333983513.jpg', '2019', '01', 0, 3),
(412, 34, 0, 1, '', 'Original_201901062340103521212.jpg', '201901151441423483920.jpg', '2019', '01', 0, 16);

-- --------------------------------------------------------

--
-- Table structure for table `property_insurance`
--

DROP TABLE IF EXISTS `property_insurance`;
CREATE TABLE IF NOT EXISTS `property_insurance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `policy_no` varchar(255) COLLATE utf8_bin NOT NULL,
  `provider` varchar(255) COLLATE utf8_bin NOT NULL,
  `insurance_type_id` int(11) NOT NULL,
  `broker` varchar(255) COLLATE utf8_bin NOT NULL,
  `premium_amount` float NOT NULL,
  `excess_amount` float NOT NULL,
  `cover_amount` float NOT NULL,
  `start_date` date NOT NULL,
  `renewal_date` date NOT NULL,
  `notes` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_id` (`property_id`),
  KEY `insourance_type_id` (`insurance_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_insurance`
--

INSERT INTO `property_insurance` (`id`, `property_id`, `policy_no`, `provider`, `insurance_type_id`, `broker`, `premium_amount`, `excess_amount`, `cover_amount`, `start_date`, `renewal_date`, `notes`) VALUES
(1, 25, '346374', 'Direct Line Home Insurance Plus', 1, 'James', 1000, 500, 560000, '2017-02-01', '2018-02-01', ''),
(18, 24, '346375', 'Direct Line Home Insurance Plus', 1, 'James', 1000, 500, 560000, '2018-11-01', '2019-11-11', ''),
(19, 24, '34534545', 'John Lewis Finance Premier', 3, 'James', 1000, 500, 560000, '2018-11-03', '2019-11-03', '');

-- --------------------------------------------------------

--
-- Table structure for table `property_inventory`
--

DROP TABLE IF EXISTS `property_inventory`;
CREATE TABLE IF NOT EXISTS `property_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `checked_on` date NOT NULL,
  `note` text COLLATE utf8_bin NOT NULL,
  `inventory_report_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_id` (`property_id`),
  KEY `inventory_category_id` (`title`),
  KEY `inventory_report_type_id` (`inventory_report_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_inventory`
--

INSERT INTO `property_inventory` (`id`, `property_id`, `title`, `created_on`, `checked_on`, `note`, `inventory_report_type_id`) VALUES
(1, 24, 'Inventory report', '2018-11-16 09:58:35', '2018-11-15', 'This property inspection report may include an inspection agreement (contract), addenda, and other information related to property conditions. If any item or comment is unclear, you should ask the inspector to clarify the findings. It is important that you carefully read ALL of this information. \r\n', 2);

-- --------------------------------------------------------

--
-- Table structure for table `property_inventory_images`
--

DROP TABLE IF EXISTS `property_inventory_images`;
CREATE TABLE IF NOT EXISTS `property_inventory_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_id` int(11) NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `file` varchar(255) COLLATE utf8_bin NOT NULL,
  `ofile` varchar(255) COLLATE utf8_bin NOT NULL,
  `year` varchar(4) COLLATE utf8_bin NOT NULL,
  `month` varchar(2) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_id` (`inventory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_inventory_images`
--

INSERT INTO `property_inventory_images` (`id`, `inventory_id`, `name`, `file`, `ofile`, `year`, `month`) VALUES
(1, 1, 'This property inspection report may include an inspection agreement (contract), addenda, and other information related to property conditions. If any item or comment is unclear, you should ask the inspector', 'Chrysanthemum.jpg', '201811161529179717705.jpg', '2018', '11'),
(2, 1, 'This property inspection report may include an inspection agreement (contract), addenda, and other information related to property conditions. If any item or comment is unclear, you should ask the inspector2', 'E6cbd1d91cb1cab60adf7b93aae9572b921314e9.jpg', '201811161529189713648.jpg', '2018', '11'),
(3, 1, '', 'Desert.jpg', '201811161529193861129.jpg', '2018', '11');

-- --------------------------------------------------------

--
-- Table structure for table `property_inventory_sections`
--

DROP TABLE IF EXISTS `property_inventory_sections`;
CREATE TABLE IF NOT EXISTS `property_inventory_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_id` int(11) NOT NULL,
  `room_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `room_section` varchar(255) COLLATE utf8_bin NOT NULL,
  `inspection_rating_id` int(11) NOT NULL,
  `section_comments` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_id` (`inventory_id`),
  KEY `inspection_rating_id` (`inspection_rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_inventory_sections`
--

INSERT INTO `property_inventory_sections` (`id`, `inventory_id`, `room_name`, `room_section`, `inspection_rating_id`, `section_comments`) VALUES
(83, 1, 'Bedroom', 'Doors &amp; Windows', 8, 'Get the current computed outer height (including padding, border, and optionally margin) for the first element in the set of matched elements or set the outer height of every matched element.'),
(84, 1, 'Toilet', 'Closet &amp; Washbasin', 5, 'Superb solution, will be bookmarking this one. Just quickly added it to jsfiddle.net/Rpdr9 for anyone who wants a live demo. Hope you don&#039;t mind'),
(85, 1, 'Toilet', 'Tile', 5, 'Superb solution, will be bookmarking this one. Just quickly added it to jsfiddle.net/Rpdr9 for anyone who wants a live demo. Hope you don&#039;t mind'),
(86, 1, 'Bedroom', 'Tile', 8, 'To get the value for each element individually, use a looping construct such as jQuery&#039;s .each() or .map() method. Using jQuery&#039;s .attr() method to get the value of an element&#039;s attribute has two main benefits: Convenience: It can be called directly on a jQuery object and chained to other jQuery methods.');

-- --------------------------------------------------------

--
-- Table structure for table `property_inventory_youtube`
--

DROP TABLE IF EXISTS `property_inventory_youtube`;
CREATE TABLE IF NOT EXISTS `property_inventory_youtube` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_id` int(11) NOT NULL,
  `url` text COLLATE utf8_bin NOT NULL,
  `vcode` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_id` (`inventory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `property_keys`
--

DROP TABLE IF EXISTS `property_keys`;
CREATE TABLE IF NOT EXISTS `property_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_no` varchar(30) COLLATE utf8_bin NOT NULL,
  `no_keys` int(11) NOT NULL COMMENT 'no of keys',
  `notes` text COLLATE utf8_bin NOT NULL,
  `key_status_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `key_status_id` (`key_status_id`),
  KEY `property_id` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_keys`
--

INSERT INTO `property_keys` (`id`, `ref_no`, `no_keys`, `notes`, `key_status_id`, `property_id`) VALUES
(47, '347896-1', 1, 'wew', 1, 24),
(48, '3478961-2', 2, 'wewew', 2, 24);

-- --------------------------------------------------------

--
-- Table structure for table `property_lettings`
--

DROP TABLE IF EXISTS `property_lettings`;
CREATE TABLE IF NOT EXISTS `property_lettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `agreement_status_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'tenant id',
  `ref_no` text COLLATE utf8_bin NOT NULL COMMENT 'reference',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `term` int(11) NOT NULL COMMENT 'Let for how many months/years in total',
  `term_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL COMMENT 'only update when status is expired or terminated',
  `rolling` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Automatic renew',
  `notice_period` int(11) NOT NULL,
  `notice_period_term_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notice_period_type_id` (`notice_period_term_id`),
  KEY `property_id` (`property_id`),
  KEY `letting_status_id` (`agreement_status_id`),
  KEY `tenant_id` (`user_id`),
  KEY `term_id` (`term_id`),
  KEY `notice_period_type_id_2` (`notice_period_term_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tenancies';

--
-- Dumping data for table `property_lettings`
--

INSERT INTO `property_lettings` (`id`, `property_id`, `agreement_status_id`, `user_id`, `ref_no`, `created_date`, `term`, `term_id`, `start_date`, `end_date`, `rolling`, `notice_period`, `notice_period_term_id`) VALUES
(4, 26, 2, 40, '2', '2019-01-18 05:14:08', 1, 5, '2019-01-01', '0000-00-00', 0, 3, 3),
(7, 25, 2, 45, '3', '2019-01-18 10:56:26', 3, 5, '2019-01-01', '0000-00-00', 0, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `property_letting_agreements`
--

DROP TABLE IF EXISTS `property_letting_agreements`;
CREATE TABLE IF NOT EXISTS `property_letting_agreements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_letting_id` int(11) NOT NULL,
  `content` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_letting_id` (`property_letting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_letting_agreements`
--

INSERT INTO `property_letting_agreements` (`id`, `property_letting_id`, `content`) VALUES
(186, 7, 0x3c703e3c7374726f6e673e5245534944454e5449414c204c454153452041475245454d454e543c2f7374726f6e673e3c2f703e0d0a3c703e546869732061677265656d656e742c2064617465642031382f30312f323031392c206973206265747765656e20486173687769646520507674204c746420616e64204b796c65204672616e6369732e3c2f703e0d0a3c703e3c7374726f6e673e312e2050726f7065727479204d616e616765723a3c2f7374726f6e673e3c6272202f3e5468652050726f7065727479204d616e6167657228732920616e642f6f72206167656e742873292069732f61726520616e642077696c6c20626520726566657272656420746f20696e2074686973204c656173652041677265656d656e74206173202250726f7065727479204d616e616765722e223c2f703e0d0a3c703e486173687769646520507674204c74643c6272202f3e284f776e6572293c2f703e0d0a3c703e3c7374726f6e673e322e2054454e414e543a3c2f7374726f6e673e3c6272202f3e5468652054656e616e742873292069732f6172653a3c6272202f3e4b796c65204672616e63697320616e642077696c6c20626520726566657272656420746f20696e2074686973204c656173652041677265656d656e74206173202254656e616e742e223c2f703e0d0a3c703e3c7374726f6e673e332e2052454e54414c2050524f50455254593a3c2f7374726f6e673e3c6272202f3e5468652050726f7065727479204d616e616765722061677265657320746f2072656e7420746f207468652054656e616e74207468652070726f7065727479206465736372696265642061732061286e2920486f757365205368617265206c6f636174656420617420476f6c64696e6773204372657363656e742c204861746669656c642c20414c3130203855442077686963682077696c6c20626520726566657272656420746f20696e2074686973204c656173652061732074686520224c6561736564205072656d697365732e223c2f703e0d0a3c703e3c7374726f6e673e342e205445524d204f46204c454153452041475245454d454e543a3c2f7374726f6e673e3c6272202f3e546865204c656173652041677265656d656e742077696c6c20626567696e206f6e2030312f30312f3230313920616e642077696c6c20656e64206f6e2030312f30312f323032322e3c2f703e0d0a3c703e3c7374726f6e673e352e205553452026616d703b204f43435550414e4359204f462050524f50455254593a3c2f7374726f6e673e3c6272202f3e546865206f6e6c7920706572736f6e287329206c6976696e6720696e20746865204c6561736564205072656d697365732069732f6172653a204b796c65204672616e6369732e3c2f703e0d0a3c703e3c7374726f6e673e362e2052454e54204455453a3c2f7374726f6e673e3c6272202f3e3c7374726f6e673e412e3c2f7374726f6e673e2054686520616d6f756e74206f66207468652052656e742069732026706f756e643b312c3530302e303020746f2062652070616964204d6f6e74686c792e3c6272202f3e3c7374726f6e673e422e3c2f7374726f6e673e205468652072656e742069732064756520696e20616476616e6365206f6e206f72206265666f7265207468652031737420646179206f662065616368206d6f6e74682e205468652072656e74206475652064617465206973207468652064617465207468652050726f7065727479204d616e61676572206d7573742072656365697665207468652054656e616e742773207061796d656e742e3c2f703e0d0a3c703e3c7374726f6e673e372e205345435552495459204445504f5349543a3c2f7374726f6e673e3c6272202f3e3c7374726f6e673e412e3c2f7374726f6e673e205468652054656e616e742873292068617665207061696420746f207468652050726f7065727479204d616e616765722061205365637572697479204465706f736974206f662026706f756e643b35302c3030302e30302e3c6272202f3e3c7374726f6e673e422e3c2f7374726f6e673e20546865205365637572697479204465706f73697420697320696e74656e64656420746f207061792074686520636f7374206f662064616d616765732c20636c65616e696e672c20657863657373697665207765617220616e6420746561722c20616e6420756e72657475726e6564206b657973206f6e636520746865204c656173652041677265656d656e742068617320656e64656420616e642f6f7220666f7220616e7920756e7061696420636861726765732064756520627920726561736f6e206f662054656e616e7427732064656661756c74206f662074686973204c656173652041677265656d656e742e3c2f703e0d0a3c703e3c7374726f6e673e382e205554494c49544945532026616d703b2053455256494345533a3c2f7374726f6e673e3c6272202f3e3c7374726f6e673e412e3c2f7374726f6e673e2054656e616e7420697320726573706f6e7369626c6520666f722074686520666f6c6c6f77696e67207574696c697469657320616e642073657276696365733a3c6272202f3e456c656374726963616c2053657276696365732c204761726261676520536572766963652c204761732053657276696365732c20496e7465726e65742c2053657765722c2057617465723c6272202f3e616e6420697320726571756972656420746f20726567697374657220746865207574696c697469657320616e6420736572766963657320696e2054656e616e742773206e616d652e2054656e616e7420756e6465727374616e647320616e6420616772656573207468617420657373656e7469616c2073657276696365732061726520746f206265206d61696e7461696e656420616e64206f7065726174696f6e616c20617420616c6c2074696d65732e3c6272202f3e3c7374726f6e673e422e3c2f7374726f6e673e2050726f7065727479204d616e616765722077696c6c20626520726573706f6e7369626c6520666f722074686520666f6c6c6f77696e67207574696c697469657320616e642073657276696365733a3c2f703e0d0a3c703e3c7374726f6e673e392e204d41494e54454e414e434520414e4420524550414952533a3c2f7374726f6e673e3c6272202f3e5468652054656e616e7420697320726573706f6e7369626c6520666f7220616c6c2072657061697273206e656564656420696e206f722061626f757420746865204c6561736564205072656d697365732e3c2f703e0d0a3c703e266e6273703b3c2f703e),
(187, 7, 0x3c703e3c7374726f6e673e31302e20434f4e444954494f4e204f462050524f50455254593a3c2f7374726f6e673e3c6272202f3e3c7374726f6e673e412e3c2f7374726f6e673e205468652054656e616e742061636b6e6f776c65646765732074686174207468652054656e616e742068617320696e7370656374656420746865204c6561736564205072656d6973657320616e642061742074686520636f6d6d656e63656d656e74206f662074686973204c656173652041677265656d656e742c2074686520696e746572696f7220616e64206578746572696f72206f6620746865204c6561736564205072656d697365732c2061732077656c6c20617320616c6c2065717569706d656e7420616e6420616e79206170706c69616e6365732061726520666f756e6420746f20626520696e20616e2061636365707461626c6520636f6e646974696f6e20616e6420696e20676f6f6420776f726b696e67206f726465722e3c6272202f3e3c7374726f6e673e422e3c2f7374726f6e673e205468652054656e616e74206167726565732074686174206e656974686572207468652050726f7065727479204d616e61676572206e6f7220686973206167656e742068617665206d6164652070726f6d6973657320726567617264696e672074686520636f6e646974696f6e206f6620746865204c65617365205072656d697365732e3c6272202f3e3c7374726f6e673e432e3c2f7374726f6e673e205468652054656e616e742061677265657320746f2072657475726e20746865204c6561736564205072656d6973657320746f2050726f7065727479204d616e6167657220617420656e64206f6620746865204c656173652041677265656d656e7420696e207468652073616d6520636f6e646974696f6e206974207761732074686520626567696e6e696e67206f6620746865204c656173652041677265656d656e742e3c2f703e0d0a3c703e3c7374726f6e673e31312e20454e44494e47204f522052454e4557494e4720544845204c454153452041475245454d454e543a3c2f7374726f6e673e3c6272202f3e412e2041742074686520656e64206f6620746865204c65617365207465726d2c206966207468652050726f7065727479204d616e61676572206f72207468652054656e616e7420646f6573206e6f74206769766520616e79207772697474656e206e6f7469636520746f20746865206f7468657220706172747920746f20656e642074686973204c656173652c2069742077696c6c206175746f6d61746963616c6c7920636f6e74696e7565206f6e2061206d6f6e746820746f206d6f6e74682062617369732e20546f207465726d696e6174652074686973204c656173652061742074686520656e64206f6620746865204c65617365207465726d206f7220616e792072656e6577616c2074686572656f662c207468652050726f7065727479204d616e61676572206f72207468652054656e616e74206d757374206769766520746f20746865206f74686572207061727479206174206c656173742033206d6f6e746873207072696f72207772697474656e206e6f74696365206265666f726520746865206c61737420646179206f6620746865204c65617365207465726d206f7220616e792072656e6577616c2074686572656f662e3c2f703e0d0a3c703e3c7374726f6e673e31322e20474f5645524e494e47204c41573a3c2f7374726f6e673e3c6272202f3e546869732041677265656d656e74207368616c6c20626520676f7665726e65642c20636f6e73747275656420616e6420696e7465727072657465642062792c207468726f75676820616e6420756e64657220746865204c617773206f66207468652053746174652e3c2f703e0d0a3c703e3c7374726f6e673e31332e20454e544952452041475245454d454e543a3c2f7374726f6e673e3c6272202f3e3c7374726f6e673e4e4f544943453a3c2f7374726f6e673e205468697320697320616e20696d706f7274616e74204c4547414c20646f63756d656e742e3c6272202f3e596f75206d6179206861766520616e206174746f726e65792072657669657720746865204c656173652041677265656d656e74207072696f7220746f207369676e696e672069742e3c2f703e0d0a3c703e4279207369676e696e672074686973204c656173652041677265656d656e742c207468652054656e616e742063657274696669657320746861742068652f7368652068617320726561642c20756e64657273746f6f6420616e642061677265657320746f20636f6d706c79207769746820616c6c206f6620746865207465726d732c20636f6e646974696f6e732c2052756c657320616e6420526567756c6174696f6e73206f662074686973204c656173652e3c2f703e),
(188, 4, 0x3c703e3c7374726f6e673e5245534944454e5449414c204c454153452041475245454d454e543c2f7374726f6e673e3c2f703e0d0a3c703e546869732061677265656d656e742c2064617465642031382f30312f323031392c206973206265747765656e2053616a75205374657068656e20616e6420426962696e2043686f75646172792c2044657369676e204469726563742e3c2f703e0d0a3c703e3c7374726f6e673e312e2050726f7065727479204d616e616765723a3c2f7374726f6e673e3c6272202f3e5468652050726f7065727479204d616e6167657228732920616e642f6f72206167656e742873292069732f61726520616e642077696c6c20626520726566657272656420746f20696e2074686973204c656173652041677265656d656e74206173202250726f7065727479204d616e616765722e223c2f703e0d0a3c703e53616a75205374657068656e3c6272202f3e284f776e6572293c2f703e0d0a3c703e3c7374726f6e673e322e2054454e414e543a3c2f7374726f6e673e3c6272202f3e5468652054656e616e742873292069732f6172653a3c6272202f3e426962696e2043686f75646172792c2044657369676e2044697265637420616e642077696c6c20626520726566657272656420746f20696e2074686973204c656173652041677265656d656e74206173202254656e616e742e223c2f703e0d0a3c703e3c7374726f6e673e332e2052454e54414c2050524f50455254593a3c2f7374726f6e673e3c6272202f3e5468652050726f7065727479204d616e616765722061677265657320746f2072656e7420746f207468652054656e616e74207468652070726f7065727479206465736372696265642061732061286e2920546572726163656420486f757365206c6f6361746564206174204e6576696c6c20526f61642c204c6f6e646f6e2c204e3136203853522077686963682077696c6c20626520726566657272656420746f20696e2074686973204c656173652061732074686520224c6561736564205072656d697365732e223c2f703e0d0a3c703e3c7374726f6e673e342e205445524d204f46204c454153452041475245454d454e543a3c2f7374726f6e673e3c6272202f3e546865204c656173652041677265656d656e742077696c6c20626567696e206f6e2030312f30312f3230313920616e642077696c6c20656e64206f6e2030312f30312f323032302e3c2f703e0d0a3c703e3c7374726f6e673e352e205553452026616d703b204f43435550414e4359204f462050524f50455254593a3c2f7374726f6e673e3c6272202f3e546865206f6e6c7920706572736f6e287329206c6976696e6720696e20746865204c6561736564205072656d697365732069732f61726520426962696e2043686f75646172792c2044657369676e204469726563742e3c2f703e0d0a3c703e3c7374726f6e673e362e2052454e54204455453a3c2f7374726f6e673e3c6272202f3e3c7374726f6e673e412e3c2f7374726f6e673e2054686520616d6f756e74206f662052656e742069732026706f756e643b3530302e303020746f2062652070616964204d6f6e74686c792e3c6272202f3e3c7374726f6e673e422e3c2f7374726f6e673e205468652072656e742069732064756520696e20616476616e6365206f6e206f72206265666f7265207468652031737420646179206f662065616368206d6f6e74682e205468652072656e74206475652064617465206973207468652064617465207468652050726f7065727479204d616e61676572206d7573742072656365697665207468652054656e616e742773207061796d656e742e3c2f703e0d0a3c703e3c6272202f3e3c7374726f6e673e372e205345435552495459204445504f5349543a3c2f7374726f6e673e3c6272202f3e3c7374726f6e673e412e3c2f7374726f6e673e205468652054656e616e742873292068617665207061696420746f207468652050726f7065727479204d616e616765722061205365637572697479204465706f736974206f662026706f756e643b312c3030302e30302e3c6272202f3e3c7374726f6e673e422e3c2f7374726f6e673e20546865205365637572697479204465706f73697420697320696e74656e64656420746f207061792074686520636f7374206f662064616d616765732c20636c65616e696e672c20657863657373697665207765617220616e6420746561722c20616e6420756e72657475726e6564206b657973206f6e636520746865204c656173652041677265656d656e742068617320656e64656420616e642f6f7220666f7220616e7920756e7061696420636861726765732064756520627920726561736f6e206f662054656e616e7427732064656661756c74206f662074686973204c656173652041677265656d656e742e3c2f703e0d0a3c703e3c7374726f6e673e382e205554494c49544945532026616d703b2053455256494345533a3c2f7374726f6e673e3c6272202f3e3c7374726f6e673e412e3c2f7374726f6e673e2054656e616e7420697320726573706f6e7369626c6520666f722074686520666f6c6c6f77696e67207574696c697469657320616e642073657276696365733a3c6272202f3e4361626c652026616d703b20436f6d6d756e69636174696f6e2053657276696365732c204761726261676520536572766963652c204c616e6473636170696e672c20486f6d652053656375726974792c2050686f6e652c2053657765722c2057617465723c6272202f3e616e6420697320726571756972656420746f20726567697374657220746865207574696c697469657320616e6420736572766963657320696e2054656e616e742773206e616d652e2054656e616e7420756e6465727374616e647320616e6420616772656573207468617420657373656e7469616c2073657276696365732061726520746f206265206d61696e7461696e656420616e64206f7065726174696f6e616c20617420616c6c2074696d65732e3c6272202f3e3c7374726f6e673e422e3c2f7374726f6e673e2050726f7065727479204d616e616765722077696c6c20626520726573706f6e7369626c6520666f722074686520666f6c6c6f77696e67207574696c697469657320616e642073657276696365733a3c2f703e0d0a3c703e3c7374726f6e673e392e204d41494e54454e414e434520414e4420524550414952533a3c2f7374726f6e673e3c6272202f3e5468652054656e616e7420697320726573706f6e7369626c6520666f7220616c6c2072657061697273206e656564656420696e206f722061626f757420746865204c6561736564205072656d697365732e3c2f703e0d0a3c703e3c7374726f6e673e31302e20434f4e444954494f4e204f462050524f50455254593a3c2f7374726f6e673e3c6272202f3e3c7374726f6e673e412e3c2f7374726f6e673e205468652054656e616e742061636b6e6f776c65646765732074686174207468652054656e616e742068617320696e7370656374656420746865204c6561736564205072656d6973657320616e642061742074686520636f6d6d656e63656d656e74206f662074686973204c656173652041677265656d656e742c2074686520696e746572696f7220616e64206578746572696f72206f6620746865204c6561736564205072656d697365732c2061732077656c6c20617320616c6c2065717569706d656e7420616e6420616e79206170706c69616e6365732061726520666f756e6420746f20626520696e20616e2061636365707461626c6520636f6e646974696f6e20616e6420696e20676f6f6420776f726b696e67206f726465722e3c6272202f3e3c7374726f6e673e422e3c2f7374726f6e673e205468652054656e616e74206167726565732074686174206e656974686572207468652050726f7065727479204d616e61676572206e6f7220686973206167656e7420686173206d6164652070726f6d6973657320726567617264696e672074686520636f6e646974696f6e206f6620746865204c6561736564205072656d697365732e3c6272202f3e3c7374726f6e673e432e3c2f7374726f6e673e205468652054656e616e742061677265657320746f2072657475726e20746865204c6561736564205072656d6973657320746f207468652050726f7065727479204d616e616765722061742074686520656e64206f6620746865204c656173652041677265656d656e7420696e207468652073616d6520636f6e646974696f6e206974207761732074686520626567696e6e696e67206f6620746865204c656173652041677265656d656e742e3c2f703e0d0a3c703e3c7374726f6e673e31312e20454e44494e47204f522052454e4557494e4720544845204c454153452041475245454d454e543a3c2f7374726f6e673e3c6272202f3e412e2041742074686520656e64206f6620746865206c65617365207465726d2c206966207468652050726f7065727479204d616e61676572206f72207468652054656e616e7420646f6573206e6f74206769766520616e79207772697474656e206e6f7469636520746f20746865206f7468657220706172747920746f20656e642074686973204c656173652c2069742077696c6c206175746f6d61746963616c6c7920636f6e74696e7565206f6e2061206d6f6e746820746f206d6f6e74682062617369732e20546f207465726d696e6174652074686973204c656173652061742074686520656e64206f6620746865204c65617365207465726d206f7220616e792072656e6577616c2074686572656f662c207468652050726f7065727479204d616e61676572206f72207468652054656e616e74206d757374206769766520746f20746865206f74686572207061727479206174206c656173742033206d6f6e746873207072696f72207772697474656e206e6f74696365206265666f726520746865206c61737420646179206f6620746865204c65617365207465726d206f7220616e792072656e6577616c2074686572656f662e3c2f703e0d0a3c703e3c7374726f6e673e31322e20474f5645524e494e47204c41573a3c2f7374726f6e673e3c6272202f3e546869732041677265656d656e74207368616c6c20626520676f7665726e65642c20636f6e73747275656420616e6420696e7465727072657465642062792c207468726f75676820616e6420756e64657220746865204c617773206f66207468652053746174652e3c2f703e0d0a3c703e3c7374726f6e673e31332e20454e544952452041475245454d454e543a3c2f7374726f6e673e3c6272202f3e3c7374726f6e673e4e4f544943453a3c2f7374726f6e673e205468697320697320616e20696d706f7274616e74204c4547414c20646f63756d656e742e3c6272202f3e596f75206d6179206861766520616e206174746f726e65792072657669657720746865204c656173652041677265656d656e74207072696f7220746f207369676e696e672069742e3c2f703e0d0a3c703e4279207369676e696e672074686973204c656173652041677265656d656e742c207468652054656e616e742063657274696669657320746861742068652f7368652068617320726561642c20756e64657273746f6f6420616e642061677265657320746f20636f6d706c79207769746820616c6c206f6620746865207465726d732c20636f6e646974696f6e732c2052756c657320616e6420526567756c6174696f6e73206f662074686973204c656173652e3c2f703e);

-- --------------------------------------------------------

--
-- Table structure for table `property_letting_documents`
--

DROP TABLE IF EXISTS `property_letting_documents`;
CREATE TABLE IF NOT EXISTS `property_letting_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_letting_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `file` varchar(255) COLLATE utf8_bin NOT NULL,
  `ofile` varchar(255) COLLATE utf8_bin NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_letting_id` (`property_letting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `property_letting_other_transactions`
--

DROP TABLE IF EXISTS `property_letting_other_transactions`;
CREATE TABLE IF NOT EXISTS `property_letting_other_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_letting_id` int(11) NOT NULL,
  `item` varchar(255) COLLATE utf8_bin NOT NULL,
  `deposit` tinyint(1) NOT NULL DEFAULT '0',
  `amount` double NOT NULL,
  `tax` float NOT NULL,
  `invoice_date` date NOT NULL,
  `due_day` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_letting_id` (`property_letting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='letting/tenancy no recurring transactions (Like deposit etc)';

--
-- Dumping data for table `property_letting_other_transactions`
--

INSERT INTO `property_letting_other_transactions` (`id`, `property_letting_id`, `item`, `deposit`, `amount`, `tax`, `invoice_date`, `due_day`) VALUES
(7, 4, 'Deposit', 1, 1000, 0, '2019-01-02', 1),
(10, 7, 'Deposit', 1, 50000, 0, '2019-01-16', 1),
(11, 7, 'Prorated rent', 0, 750, 0, '2019-01-17', 2);

-- --------------------------------------------------------

--
-- Table structure for table `property_letting_responsibilities`
--

DROP TABLE IF EXISTS `property_letting_responsibilities`;
CREATE TABLE IF NOT EXISTS `property_letting_responsibilities` (
  `property_letting_id` int(11) NOT NULL,
  `letting_responsibility_id` int(11) NOT NULL,
  `responsibility` enum('0','2','4') COLLATE utf8_bin NOT NULL DEFAULT '0',
  KEY `property_letting_id` (`property_letting_id`),
  KEY `letting_responsibility_id` (`letting_responsibility_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_letting_responsibilities`
--

INSERT INTO `property_letting_responsibilities` (`property_letting_id`, `letting_responsibility_id`, `responsibility`) VALUES
(7, 4, '4'),
(7, 5, '4'),
(7, 6, '4'),
(7, 8, '4'),
(7, 14, '4'),
(7, 15, '4'),
(4, 1, '4'),
(4, 5, '4'),
(4, 9, '4'),
(4, 11, '4'),
(4, 13, '4'),
(4, 14, '4'),
(4, 15, '4');

-- --------------------------------------------------------

--
-- Table structure for table `property_letting_signature`
--

DROP TABLE IF EXISTS `property_letting_signature`;
CREATE TABLE IF NOT EXISTS `property_letting_signature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_letting_id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_letting_id` (`property_letting_id`),
  KEY `user_type_id` (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_letting_signature`
--

INSERT INTO `property_letting_signature` (`id`, `property_letting_id`, `user_type_id`) VALUES
(1, 4, 4),
(2, 4, 2),
(3, 4, 4),
(4, 4, 2),
(5, 4, 4),
(6, 4, 4),
(7, 4, 2),
(8, 4, 4),
(9, 4, 4),
(10, 4, 4),
(11, 4, 4),
(12, 4, 2),
(13, 4, 4),
(14, 4, 2),
(15, 4, 4),
(16, 4, 4),
(17, 4, 2),
(18, 4, 4),
(19, 4, 2),
(20, 4, 2),
(21, 4, 4),
(22, 4, 2),
(23, 4, 2),
(24, 7, 4),
(25, 7, 2),
(26, 4, 4),
(27, 4, 4),
(28, 4, 4),
(29, 4, 4),
(30, 4, 4),
(31, 4, 2),
(32, 4, 2),
(33, 4, 2),
(34, 4, 4),
(35, 4, 4),
(36, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `property_letting_transactions`
--

DROP TABLE IF EXISTS `property_letting_transactions`;
CREATE TABLE IF NOT EXISTS `property_letting_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_letting_id` int(11) NOT NULL,
  `item` varchar(255) COLLATE utf8_bin NOT NULL,
  `rent` tinyint(1) NOT NULL DEFAULT '0',
  `amount` double NOT NULL,
  `tax` float NOT NULL,
  `schedule` int(2) NOT NULL,
  `schedule_term_id` int(11) NOT NULL,
  `due_day` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_letting_id` (`property_letting_id`),
  KEY `schedule_term_id` (`schedule_term_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='letting/tenancy recurring transactions (Like rent)';

--
-- Dumping data for table `property_letting_transactions`
--

INSERT INTO `property_letting_transactions` (`id`, `property_letting_id`, `item`, `rent`, `amount`, `tax`, `schedule`, `schedule_term_id`, `due_day`) VALUES
(8, 4, 'Rent', 1, 500, 0, 1, 3, 1),
(11, 7, 'Rent', 1, 1500, 0, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `property_listing_type`
--

DROP TABLE IF EXISTS `property_listing_type`;
CREATE TABLE IF NOT EXISTS `property_listing_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `property_listing_type_category_id` int(11) NOT NULL,
  `gumtree_api_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `rightmove_api_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `zoopla_api_id` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_listing_type_category_id` (`property_listing_type_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_listing_type`
--

INSERT INTO `property_listing_type` (`id`, `title`, `property_listing_type_category_id`, `gumtree_api_id`, `rightmove_api_id`, `zoopla_api_id`) VALUES
(1, 'Terraced House', 1, '1', '1', 'terraced'),
(2, 'End of Terrace House', 1, '2', '2', 'end_terrace'),
(3, 'Semi Detached House', 1, '3', '3', 'semi_detached'),
(4, 'Detached House', 1, '4', '4', 'detached'),
(5, 'Mews', 1, '5', '5', 'mews'),
(6, 'Cluster House', 1, '6', '6', 'country_house'),
(7, 'Link Detached House', 1, '21', '21', 'link_detached'),
(8, 'Town House', 1, '22', '22', 'town_housecottage'),
(9, 'Cottage', 1, '23', '23', 'cottage'),
(10, 'Chalet', 1, '24', '24', 'chalet'),
(11, 'Villa', 1, '27', '27', 'villa'),
(12, 'Finca', 1, '30', '30', 'finca'),
(13, 'Village House', 1, '95', '95', 'farmhouse'),
(14, 'Semi Detached Villa', 1, '128', '128', 'semi_detached'),
(15, 'Detached Villa', 1, '131', '131', 'villa'),
(16, 'Ground Flat', 2, '7', '7', 'flat'),
(17, 'Flat', 2, '8', '8', 'flat'),
(18, 'Studio', 2, '9', '9', 'studio'),
(19, 'Ground Maisonette', 2, '10', '10', 'maisonette'),
(20, 'Maisonette', 2, '11', '11', 'maisonette'),
(21, 'Apartment', 2, '28', '28', 'flat'),
(22, 'Penthouse', 2, '29', '29', 'flat'),
(23, 'Serviced Apartments', 2, '44', '44', 'flat'),
(24, 'Duplex Flat/Appartment', 2, '56', '56', 'flat'),
(25, 'Triplex Flat/Apartment', 2, '59', '59', 'flat'),
(26, 'Hotel Room', 2, '142', '142', 'hotel'),
(27, 'Block of Apartments', 2, '143', '143', 'block_of_flats'),
(28, 'Private Halls', 2, '144', '144', 'flat'),
(34, 'Bungalow', 3, '12', '12', 'bungalow'),
(35, 'Terraced Bungalow', 3, '13', '13', 'terraced_bungalow'),
(36, 'Semi Detached Bungalow', 3, '14', '14', 'semi_detached_bungalow'),
(37, 'Detached Bungalow', 3, '15', '15', 'detached_bungalow'),
(38, 'Mobile Home', 4, '22', '22', 'park_home'),
(39, 'Park Home', 4, '50', '50', 'park_home'),
(40, 'Caravan', 4, '117', '117', 'park_home'),
(41, 'Land', 5, '20', '20', 'land'),
(42, 'Farm Land', 5, '107', '107', 'farm'),
(43, 'Plot', 5, '110', '110', 'land'),
(44, 'Off Plan', 5, '125', '125', 'land'),
(45, 'House Share', 6, '48', '48', 'flat'),
(46, 'Flat Share', 6, '49', '49', 'flat'),
(50, 'Parking', 7, '45', '45', 'parking'),
(51, 'Garages', 7, '51', '51', 'parking'),
(52, 'Office', 8, '178', '178', 'office'),
(53, 'Business Park', 8, '181', '181', 'business_park'),
(54, 'Serviced Office', 8, '184', '184', 'office'),
(55, 'Post Office', 8, '208', '208', 'office'),
(56, 'Shop', 9, '137', '137', 'retail'),
(57, 'Retail Property (high street)', 9, '187', '187', 'retail'),
(58, 'Retail Property (Out of town)', 9, '190', '190', 'retail'),
(59, 'Convenience Store', 9, '193', '193', 'retail'),
(60, 'Petrol Station', 9, '205', '205', 'retail'),
(61, 'Workshop & Retail space', 9, '214', '214', 'retail'),
(62, 'Showroom', 9, '235', '235', 'retail'),
(63, 'Mill', 10, '86', '86', 'industrial'),
(64, 'Distribution Warehouse', 10, '217', '217', 'warehouse'),
(65, 'Factory', 10, '220', '220', 'industrial'),
(66, 'Heavy Industrial', 10, '223', '223', 'industrial'),
(67, 'Industrial Park', 10, '226', '226', 'business_park'),
(68, 'Light Industrial', 10, '229', '229', 'light_industrial'),
(69, 'Storage', 10, '232', '232', 'warehouse'),
(70, 'Warehouse', 10, '238', '238', 'warehouse'),
(71, 'Industrial Development', 10, '247', '247', 'industrial'),
(72, 'Restaurant', 11, '80', '80', 'restaurant'),
(73, 'Cafe', 11, '83', '83', 'restaurant'),
(74, 'Bar / Nightclub', 11, '134', '134', 'restaurant'),
(75, 'Hairdresser / Barber Shop ', 11, '199', '199', 'leisure'),
(76, 'Hotel', 11, '202', '202', 'hotel'),
(77, 'Healthcare Facility', 11, '262', '262', 'leisure'),
(78, 'Hospitality', 11, '280', '280', 'leisure'),
(79, 'Leisure Facility', 11, '283', '283', 'leisure'),
(80, 'Pub', 11, '211', '211', 'pub_bar'),
(92, 'Land', 12, '241', '241', 'land'),
(93, 'Garage', 13, '196', '196', 'light_industrial'),
(94, 'Commercial Development', 13, '244', '244', 'land'),
(95, 'Residential Development', 13, '250', '250', 'land'),
(96, 'Commercial Property', 13, '253', '253', 'industrial'),
(97, 'Data Centre', 13, '256', '256', 'industrial'),
(98, 'Marine Property', 13, '265', '265', 'industrial'),
(99, 'Mixed Use', 13, '268', '268', 'industrial'),
(100, 'Research & Development Facility', 13, '271', '271', 'industrial'),
(101, 'Science Park', 13, '274', '274', 'industrial'),
(102, 'Guest House', 11, '277', '277', 'leisure'),
(103, 'Takeaway', 9, '298', '298', 'retail'),
(104, 'Childcare Facility', 13, '301', '301', 'leisure'),
(105, 'Smallholding', 5, '304', '304', 'land'),
(106, 'Place of Worship', 11, '307', '307', 'land'),
(107, 'Trade Counter', 13, '310', '310', 'retail'),
(108, 'Coach House', 1, '511', '511', 'leisure'),
(109, 'House of Multiple Occupation', 1, '512', '512', 'leisure'),
(110, 'Sports facilities', 13, '535', '535', 'leisure'),
(111, 'Spa', 13, '535', '535', 'leisure'),
(112, 'Campsite & Holiday Village', 11, '541', '541', 'leisure');

-- --------------------------------------------------------

--
-- Table structure for table `property_listing_type_category`
--

DROP TABLE IF EXISTS `property_listing_type_category`;
CREATE TABLE IF NOT EXISTS `property_listing_type_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `property_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_type_id` (`property_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_listing_type_category`
--

INSERT INTO `property_listing_type_category` (`id`, `title`, `property_type_id`) VALUES
(1, 'House', 1),
(2, 'Flats / Apartments', 1),
(3, 'Bungalows', 1),
(4, 'Mobile / Park Homes', 1),
(5, 'Residential Land', 1),
(6, 'House / Flat Share', 1),
(7, 'Garage / Parking', 1),
(8, 'Offices', 2),
(9, 'Retail Premises', 2),
(10, 'Industrial', 2),
(11, 'Leisure/Hospitality', 2),
(12, 'Commercial Land', 2),
(13, 'Other Commercial', 2);

-- --------------------------------------------------------

--
-- Table structure for table `property_offer`
--

DROP TABLE IF EXISTS `property_offer`;
CREATE TABLE IF NOT EXISTS `property_offer` (
  `message_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `price` double NOT NULL,
  KEY `message_id` (`message_id`),
  KEY `property_id` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `property_owners`
--

DROP TABLE IF EXISTS `property_owners`;
CREATE TABLE IF NOT EXISTS `property_owners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_id` (`property_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_owners`
--

INSERT INTO `property_owners` (`id`, `property_id`, `user_id`) VALUES
(9, 26, 12),
(15, 25, 65),
(28, 24, 65),
(31, 38, 40),
(75, 31, 40),
(76, 41, 2),
(77, 33, 40);

-- --------------------------------------------------------

--
-- Table structure for table `property_rating_valuation`
--

DROP TABLE IF EXISTS `property_rating_valuation`;
CREATE TABLE IF NOT EXISTS `property_rating_valuation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `valuation_ref_no` varchar(50) COLLATE utf8_bin NOT NULL,
  `date_valuation` date NOT NULL,
  `land_value` double NOT NULL,
  `improvements_value` double NOT NULL,
  `capital_value` double NOT NULL,
  `valuation_notes` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_id` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_rating_valuation`
--

INSERT INTO `property_rating_valuation` (`id`, `property_id`, `valuation_ref_no`, `date_valuation`, `land_value`, `improvements_value`, `capital_value`, `valuation_notes`) VALUES
(11, 24, 'VAL 01', '2018-02-01', 90000, 5000, 90000, '');

-- --------------------------------------------------------

--
-- Table structure for table `property_rent`
--

DROP TABLE IF EXISTS `property_rent`;
CREATE TABLE IF NOT EXISTS `property_rent` (
  `property_id` int(11) NOT NULL,
  `rent_term_id` int(11) NOT NULL,
  KEY `property_id` (`property_id`),
  KEY `rent_type_id` (`rent_term_id`),
  KEY `property_id_2` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_rent`
--

INSERT INTO `property_rent` (`property_id`, `rent_term_id`) VALUES
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3);

-- --------------------------------------------------------

--
-- Table structure for table `property_status`
--

DROP TABLE IF EXISTS `property_status`;
CREATE TABLE IF NOT EXISTS `property_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `on_search` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'List these on property search by the client/user',
  `auto` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Automatic status (For Example Let or Sold, when a sales or letting added)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_status`
--

INSERT INTO `property_status` (`id`, `on_search`, `auto`) VALUES
(1, 1, 0),
(2, 0, 0),
(3, 1, 0),
(4, 1, 1),
(5, 0, 1),
(6, 1, 1),
(7, 0, 0),
(8, 0, 0),
(9, 0, 1),
(10, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `property_status_title`
--

DROP TABLE IF EXISTS `property_status_title`;
CREATE TABLE IF NOT EXISTS `property_status_title` (
  `property_for_id` int(11) NOT NULL,
  `property_status_id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  `gumtree_api_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `rightmove_api_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `zoopla_api_id` varchar(50) COLLATE utf8_bin NOT NULL,
  KEY `property_for_id` (`property_for_id`),
  KEY `property_status_id` (`property_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Status title for sales & rent';

--
-- Dumping data for table `property_status_title`
--

INSERT INTO `property_status_title` (`property_for_id`, `property_status_id`, `title`, `gumtree_api_id`, `rightmove_api_id`, `zoopla_api_id`) VALUES
(1, 1, 'For Sale', '0', '1', 'available'),
(2, 1, 'For Let', '0', '1', 'available'),
(1, 2, 'On Hold', '', '', ''),
(2, 2, 'On Hold', '', '', ''),
(1, 3, 'Under Offer', '3', '4', 'under_offer'),
(2, 3, 'Under Offer', '', '', 'under_offer'),
(1, 4, 'Sold STC', '1', '2', 'sold_subject_to_contract'),
(2, 4, 'Lets Agreed', '5', '6', 'let_agreed'),
(1, 5, 'Sold', '', '', 'sold'),
(2, 5, 'Let', '', '', 'let'),
(1, 7, 'Withdrawn/Cancelled', '', '', ''),
(2, 7, 'Withdrawn/Cancelled', '', '', ''),
(1, 8, 'Reserved', '4', '5', ''),
(2, 8, 'Reserved', '', '', ''),
(1, 9, 'Awaiting Approval', '', '', ''),
(2, 9, 'Awaiting Approval', '', '', ''),
(1, 10, 'In Active', '', '', ''),
(2, 10, 'In Active', '', '', ''),
(2, 6, 'Partially Occupied', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `property_tmp_docs`
--

DROP TABLE IF EXISTS `property_tmp_docs`;
CREATE TABLE IF NOT EXISTS `property_tmp_docs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `file` varchar(255) COLLATE utf8_bin NOT NULL,
  `ofile` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `doc_type_id` (`doc_type_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `property_type`
--

DROP TABLE IF EXISTS `property_type`;
CREATE TABLE IF NOT EXISTS `property_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_type`
--

INSERT INTO `property_type` (`id`, `title`) VALUES
(1, 'Residential'),
(2, 'Commercial');

-- --------------------------------------------------------

--
-- Table structure for table `property_valuation`
--

DROP TABLE IF EXISTS `property_valuation`;
CREATE TABLE IF NOT EXISTS `property_valuation` (
  `message_id` int(11) NOT NULL,
  `address` text COLLATE utf8_bin NOT NULL,
  KEY `message_id` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_valuation`
--

INSERT INTO `property_valuation` (`message_id`, `address`) VALUES
(37, 'Trinity Avenue');

-- --------------------------------------------------------

--
-- Table structure for table `property_viewing`
--

DROP TABLE IF EXISTS `property_viewing`;
CREATE TABLE IF NOT EXISTS `property_viewing` (
  `property_id` int(11) NOT NULL,
  `weekday` int(11) NOT NULL,
  `time_id` int(11) NOT NULL,
  KEY `property_id` (`property_id`),
  KEY `time_id` (`time_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_viewing`
--

INSERT INTO `property_viewing` (`property_id`, `weekday`, `time_id`) VALUES
(37, 1, 1),
(37, 1, 2),
(37, 1, 3),
(37, 2, 2),
(37, 2, 3),
(37, 3, 1),
(37, 3, 2),
(37, 3, 3),
(37, 4, 1),
(37, 4, 2),
(37, 4, 3),
(37, 5, 1),
(37, 5, 2),
(37, 5, 3),
(37, 6, 1),
(37, 6, 2),
(34, 1, 1),
(35, 1, 1),
(40, 0, 2),
(40, 1, 3),
(40, 2, 3),
(40, 4, 3),
(40, 5, 3),
(36, 1, 1),
(29, 1, 1),
(39, 1, 3),
(39, 2, 2),
(39, 3, 3),
(39, 4, 2),
(39, 4, 3),
(39, 6, 1),
(39, 6, 2),
(39, 6, 3),
(26, 1, 1),
(28, 1, 1),
(27, 1, 1),
(32, 1, 1),
(30, 1, 1),
(25, 0, 1),
(24, 1, 1),
(38, 0, 3),
(31, 1, 1),
(31, 2, 2),
(31, 3, 2),
(31, 5, 2),
(31, 6, 1),
(31, 6, 2),
(41, 1, 1),
(33, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `property_view_request`
--

DROP TABLE IF EXISTS `property_view_request`;
CREATE TABLE IF NOT EXISTS `property_view_request` (
  `message_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `view_date` date NOT NULL,
  `time_id` int(11) NOT NULL,
  KEY `message_id` (`message_id`),
  KEY `time_id` (`time_id`),
  KEY `property_id` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_view_request`
--

INSERT INTO `property_view_request` (`message_id`, `property_id`, `view_date`, `time_id`) VALUES
(33, 33, '2018-07-12', 3),
(34, 24, '2018-07-25', 2),
(31, 36, '2019-12-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `property_youtube`
--

DROP TABLE IF EXISTS `property_youtube`;
CREATE TABLE IF NOT EXISTS `property_youtube` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `url` text COLLATE utf8_bin NOT NULL,
  `vcode` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `vr` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `inventory_id` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `property_youtube`
--

INSERT INTO `property_youtube` (`id`, `property_id`, `url`, `vcode`, `name`, `vr`) VALUES
(11, 33, 'https://www.youtube.com/watch?v=Js12mzydjyg', 'Js12mzydjyg', 'Living Room', 0);

-- --------------------------------------------------------

--
-- Table structure for table `receipt_payment_type`
--

DROP TABLE IF EXISTS `receipt_payment_type`;
CREATE TABLE IF NOT EXISTS `receipt_payment_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `receipt_payment_type`
--

INSERT INTO `receipt_payment_type` (`id`, `title`) VALUES
(1, 'Cash'),
(2, 'Cheque'),
(3, 'Money Order'),
(4, 'Bank Transfer'),
(5, 'Online Payment'),
(6, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
CREATE TABLE IF NOT EXISTS `reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `desc` text COLLATE utf8_bin NOT NULL,
  `scheduled_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_id` (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `reminder_repeat`
--

DROP TABLE IF EXISTS `reminder_repeat`;
CREATE TABLE IF NOT EXISTS `reminder_repeat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `term` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reminder_id` (`activity_id`),
  KEY `term_id` (`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `staff_privilege`
--

DROP TABLE IF EXISTS `staff_privilege`;
CREATE TABLE IF NOT EXISTS `staff_privilege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `staff_privilege`
--

INSERT INTO `staff_privilege` (`id`, `title`) VALUES
(1, 'Property Management'),
(3, 'Enquires'),
(4, 'All Clients'),
(5, 'Staff Management'),
(7, 'Tasks'),
(8, 'Branches');

-- --------------------------------------------------------

--
-- Table structure for table `staff_privilege_options`
--

DROP TABLE IF EXISTS `staff_privilege_options`;
CREATE TABLE IF NOT EXISTS `staff_privilege_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) COLLATE utf8_bin NOT NULL,
  `staff_privilege_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_privilege_id` (`staff_privilege_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `staff_privilege_options`
--

INSERT INTO `staff_privilege_options` (`id`, `title`, `staff_privilege_id`) VALUES
(1, 'View Properties', 1),
(2, 'Manage Properties', 1),
(3, 'Manage Lettings/Tenancies', 1),
(4, 'Manage Enquiries', 3),
(5, 'Reply/Message History', 3),
(6, 'Manage All Clients', 4),
(9, 'Add/Edit/Manage Staffs', 5),
(10, 'View All Tasks', 7),
(11, 'Add/Edit/Delete All Tasks', 7),
(12, 'Assign Tasks', 7),
(13, 'Manage Branches', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `task_type_id` int(11) NOT NULL,
  `title` text COLLATE utf8_bin NOT NULL,
  `desc` text COLLATE utf8_bin NOT NULL,
  `scheduled_on` datetime NOT NULL,
  `duration` double NOT NULL,
  `invitation` tinyint(1) NOT NULL DEFAULT '0',
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `activity_id` (`activity_id`),
  KEY `task_type_id` (`task_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `activity_id`, `task_type_id`, `title`, `desc`, `scheduled_on`, `duration`, `invitation`, `completed`) VALUES
(2, 62, 3, 'Property view for 4 bed semi-detached bungalow for sale', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', '2018-06-01 20:15:00', 2, 0, 0),
(3, 66, 1, 'Call landlord', 'Call landlord to discuss regarding letting agreement', '2018-06-11 10:30:00', 1, 0, 0),
(4, 67, 4, 'Email landlord regarding letting agreement', 'Email landlord regarding letting agreement. The content is written below.\r\n\r\nContent:\r\nHi Vipin, \r\n\r\nar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at\r\n\r\nthe coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.\r\n\r\n', '2018-06-01 17:00:00', 1, 0, 0),
(5, 69, 1, 'Call this landlord', 'Call this landlord', '2018-05-31 09:00:00', 1, 0, 0),
(7, 71, 2, 'Meeting with Ajay', 'Meeting with Ajay', '2018-06-03 12:30:00', 1, 0, 0),
(8, 72, 3, 'Collect final rent from the tenant', 'ar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at\r\n\r\nthe coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', '2018-06-09 12:30:00', 1, 0, 0),
(9, 73, 10, 'Final Testing', 'Final Testing of the program', '2018-05-28 12:30:00', 1, 0, 0),
(10, 74, 3, 'Invoice Task', 'Invoice Task', '2018-05-28 10:45:00', 1, 0, 0),
(11, 75, 5, 'Property Inspection for 2 bedroom maisonette to rent', 'Property Inspection for the property 2 bedroom maisonette to rent. Requested by the client', '2018-06-01 16:15:00', 2, 0, 0),
(12, 76, 7, 'Property view for 2 bedroom maisonette to rent', 'Property view for 2 bedroom maisonette to rent, requested by the client', '2018-06-02 16:15:00', 2, 0, 0),
(13, 77, 1, 'Call the landlord', 'Call the landlord bijo @09:00 AM', '2018-06-08 09:30:00', 1, 0, 0),
(14, 92, 8, 'Folow up task for the enquiry', 'Folow up task for the enquiry', '2018-06-08 17:30:00', 1, 0, 0),
(15, 93, 7, 'Fixed a property viewing for the enquiry submitted by equity on 30/05/2018 03:34 pm', 'Fixed a property viewing for the enquiry submitted by equity on 30/05/2018 03:34 pm', '2018-06-09 18:45:00', 1, 0, 0),
(16, 94, 8, 'Follow up the enquiry submitted by gratious on 30/05/2018 03:33 pm', 'Follow up the enquiry submitted by gratious on 30/05/2018 03:33 pm', '2018-06-04 19:00:00', 1, 0, 0),
(17, 98, 7, 'Fixed a property viewing for the enquiry submitted by hari kirshnan on 31/05/2018 03:13 pm', 'Fixed a property viewing for the enquiry submitted by hari kirshnan on 31/05/2018 03:13 pm', '2018-06-13 15:15:00', 1, 0, 0),
(18, 100, 8, 'Follow up the enquiry submitted by rohan on 31/05/2018 04:53 pm', 'Follow up the enquiry submitted by rohan on 31/05/2018 04:53 pm', '2018-06-02 16:45:00', 1, 0, 0),
(19, 101, 7, 'Fixed a property viewing for the enquiry submitted by hari kirshnan on 31/05/2018 03:14 pm', 'Fixed a property viewing for the enquiry submitted by hari kirshnan on 31/05/2018 03:14 pm', '2018-06-05 20:45:00', 1, 0, 0),
(20, 104, 9, 'Make an appointment with the property landlord', 'Make an appointment with the property landlord', '2018-06-23 20:00:00', 1, 0, 0),
(21, 107, 7, 'Fixed a property viewing for the enquiry submitted by ajay2 design direct on 28/06/2018 03:18 pm', 'Fixed a property viewing for the enquiry submitted by ajay2 design direct on 28/06/2018 03:18 pm', '2018-06-30 18:15:00', 1, 0, 0),
(22, 109, 7, 'Fixed a property viewing for the enquiry submitted by giuseppa schifaudo on 22/07/2018 09:00 pm', 'Fixed a property viewing for the enquiry submitted by giuseppa schifaudo on 22/07/2018 09:00 pm', '2018-07-26 15:00:00', 1, 0, 0),
(24, 112, 7, 'Fix a property viewing for the enquiry submitted by giuseppa schifaudo on 23/07/2018 01:30 am', 'Fix a property viewing for the enquiry submitted by giuseppa schifaudo on 23/07/2018 01:30 am1', '2018-09-17 13:30:00', 2, 0, 0),
(25, 113, 7, 'Fix a property viewing for the enquiry submitted by sahil shaikh on 11/07/2018 03:19 pm', 'Fix a property viewing for the enquiry submitted by sahil shaikh on 11/07/2018 03:19 pm', '2018-09-17 16:00:00', 1, 0, 0),
(26, 114, 8, 'Follow up the enquiry submitted by giuseppa  schifaudo on 23/07/2018 11:50 pm', 'Follow up the enquiry submitted by giuseppa  schifaudo on 23/07/2018 11:50 pm', '2018-08-16 20:45:00', 1, 0, 0),
(27, 119, 8, 'Follow up the enquiry submitted by nicky  kinahan on 20/08/2018 02:44 pm', 'Follow up the enquiry submitted by nicky  kinahan on 20/08/2018 02:44 pm', '2018-08-23 20:45:00', 1, 0, 0),
(28, 120, 8, 'Follow up the enquiry submitted by nicky  kinahan on 20/08/2018 02:44 pm', 'Follow up the enquiry submitted by nicky  kinahan on 20/08/2018 02:44 pm', '2018-08-20 20:45:00', 1, 0, 0),
(29, 140, 9, 'An appointment with harry regarding rent', '', '2018-09-17 10:00:00', 1, 0, 0),
(30, 141, 1, 'Call ruther ford regarding the rent payment this month', '', '2018-09-17 11:00:00', 1, 0, 0),
(31, 142, 3, 'Collect rent from Denvar', '', '2018-09-17 12:00:00', 1, 0, 0),
(32, 152, 10, 'Meeting with Katrina', 'Meeting with Katrina', '2018-12-19 19:30:00', 1, 0, 0),
(39, 165, 2, 'Meeting Task', 'Meeting Task', '2019-11-30 10:00:00', 2, 0, 0),
(40, 166, 4, 'Email Task', '', '2018-12-21 12:00:00', 7, 0, 0),
(41, 169, 8, 'Renew Electricity', 'Renew Electricity', '2019-10-25 16:00:00', 1, 0, 0),
(42, 170, 7, 'Fix a property viewing for the enquiry submitted by ajay kumar on 28/06/2018 09:21 pm', 'Fix a property viewing for the enquiry submitted by ajay kumar on 28/06/2018 09:21 pm', '2019-12-02 18:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `task_assigned`
--

DROP TABLE IF EXISTS `task_assigned`;
CREATE TABLE IF NOT EXISTS `task_assigned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `lead` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `task_id` (`activity_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Staffs to which the task is assigned';

--
-- Dumping data for table `task_assigned`
--

INSERT INTO `task_assigned` (`id`, `activity_id`, `staff_id`, `lead`) VALUES
(23, 71, 1, 0),
(25, 73, 1, 0),
(60, 62, 4, 0),
(61, 62, 5, 0),
(62, 75, 4, 0),
(63, 75, 5, 0),
(75, 69, 1, 0),
(80, 74, 1, 0),
(81, 77, 4, 0),
(82, 92, 4, 0),
(83, 93, 4, 0),
(84, 94, 5, 0),
(86, 100, 4, 0),
(89, 76, 3, 0),
(90, 76, 4, 0),
(91, 76, 5, 0),
(92, 76, 7, 0),
(93, 101, 3, 0),
(94, 66, 1, 0),
(95, 66, 4, 0),
(96, 66, 5, 0),
(97, 66, 7, 0),
(98, 98, 3, 0),
(103, 104, 7, 0),
(104, 72, 1, 0),
(109, 67, 3, 0),
(110, 107, 3, 0),
(111, 109, 5, 0),
(115, 114, 1, 0),
(116, 119, 1, 0),
(117, 120, 1, 0),
(122, 140, 1, 0),
(124, 141, 1, 0),
(125, 112, 1, 0),
(126, 113, 1, 0),
(129, 142, 1, 0),
(160, 166, 3, 0),
(161, 152, 1, 0),
(162, 152, 4, 0),
(165, 169, 1, 0),
(166, 165, 3, 0),
(167, 165, 4, 0),
(173, 170, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `task_attendees`
--

DROP TABLE IF EXISTS `task_attendees`;
CREATE TABLE IF NOT EXISTS `task_attendees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_id` (`activity_id`),
  KEY `client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Clients who attend the task';

-- --------------------------------------------------------

--
-- Table structure for table `task_type`
--

DROP TABLE IF EXISTS `task_type`;
CREATE TABLE IF NOT EXISTS `task_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `task_type`
--

INSERT INTO `task_type` (`id`, `title`) VALUES
(1, 'Call'),
(2, 'Meeting'),
(3, 'Deadline'),
(4, 'Email'),
(5, 'Inspection'),
(6, 'Valuation'),
(7, 'Property View'),
(8, 'Follow Up'),
(9, 'Make An Appointment'),
(10, 'Other Tasks');

-- --------------------------------------------------------

--
-- Table structure for table `template_data_fields`
--

DROP TABLE IF EXISTS `template_data_fields`;
CREATE TABLE IF NOT EXISTS `template_data_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` int(11) NOT NULL,
  `field_label` varchar(255) CHARACTER SET latin1 NOT NULL,
  `field_type` int(11) NOT NULL,
  `replace_text` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `template_fields_type`
--

DROP TABLE IF EXISTS `template_fields_type`;
CREATE TABLE IF NOT EXISTS `template_fields_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `template_fields_type`
--

INSERT INTO `template_fields_type` (`id`, `title`) VALUES
(1, 'Text'),
(2, 'Date'),
(3, 'Signature');

-- --------------------------------------------------------

--
-- Table structure for table `template_user_types`
--

DROP TABLE IF EXISTS `template_user_types`;
CREATE TABLE IF NOT EXISTS `template_user_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `template_user_types`
--

INSERT INTO `template_user_types` (`id`, `user_type`) VALUES
(1, 'Tenants'),
(2, 'Inventory'),
(3, 'Maintanace');

-- --------------------------------------------------------

--
-- Table structure for table `tenant_move_type`
--

DROP TABLE IF EXISTS `tenant_move_type`;
CREATE TABLE IF NOT EXISTS `tenant_move_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tenant_move_type`
--

INSERT INTO `tenant_move_type` (`id`, `title`) VALUES
(1, 'ASAP'),
(2, '1 Week'),
(3, '2 weeks'),
(4, '1st week of the month'),
(5, 'Mid of the month'),
(6, 'Last week of the month'),
(7, 'By next month'),
(8, '3 Months'),
(9, '6 Months');

-- --------------------------------------------------------

--
-- Table structure for table `tenant_problems`
--

DROP TABLE IF EXISTS `tenant_problems`;
CREATE TABLE IF NOT EXISTS `tenant_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_category_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `property_letting_id` int(11) NOT NULL,
  `application` int(11) NOT NULL,
  `make` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  `h_no` int(11) NOT NULL,
  `street` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `postcode` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `problem_category_id` (`problem_category_id`),
  KEY `message_id` (`message_id`),
  KEY `property_letting_id` (`property_letting_id`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tenant_problem_images`
--

DROP TABLE IF EXISTS `tenant_problem_images`;
CREATE TABLE IF NOT EXISTS `tenant_problem_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant_problem_id` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8_bin NOT NULL,
  `ofile` varchar(255) COLLATE utf8_bin NOT NULL,
  `year` varchar(4) COLLATE utf8_bin NOT NULL,
  `month` varchar(2) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tenant_problem_id` (`tenant_problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tenant_type`
--

DROP TABLE IF EXISTS `tenant_type`;
CREATE TABLE IF NOT EXISTS `tenant_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tenant occupation';

--
-- Dumping data for table `tenant_type`
--

INSERT INTO `tenant_type` (`id`, `title`) VALUES
(1, 'Professionals'),
(2, 'DSS'),
(3, 'Students'),
(4, 'Retired'),
(5, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `tenant_verification_type`
--

DROP TABLE IF EXISTS `tenant_verification_type`;
CREATE TABLE IF NOT EXISTS `tenant_verification_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tenant_verification_type`
--

INSERT INTO `tenant_verification_type` (`id`, `title`) VALUES
(1, 'Not Verified'),
(2, 'Awaiting Tenant Confirmation'),
(3, 'Awaiting Employer Response'),
(4, 'Rejected by the Employer'),
(5, 'Verified');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

DROP TABLE IF EXISTS `terms`;
CREATE TABLE IF NOT EXISTS `terms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) COLLATE utf8_bin NOT NULL,
  `alt` varchar(10) COLLATE utf8_bin NOT NULL,
  `recurring_title` text COLLATE utf8_bin NOT NULL,
  `general_term` tinyint(1) NOT NULL DEFAULT '1',
  `for_rent` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'term available for rent or not',
  `gumtree_api_id` varchar(1) COLLATE utf8_bin NOT NULL,
  `rightmove_api_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `zoopla_api_id` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `title`, `alt`, `recurring_title`, `general_term`, `for_rent`, `gumtree_api_id`, `rightmove_api_id`, `zoopla_api_id`) VALUES
(1, 'DAY', 'DAY', 'Daily', 1, 0, '-', '365', '-'),
(2, 'WEEK', 'WEEK', 'Weekly', 1, 1, '0', '52', 'per_week'),
(3, 'MONTH', 'MONTH', 'Monthly', 1, 1, '1', '12', 'per_month'),
(4, 'QUARTER', 'QUARTER', 'Quarterly', 0, 1, '2', '4', 'per_quarter'),
(5, 'YEAR', 'ANNUM', 'Annually', 1, 1, '3', '1', 'per_year');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `position` varchar(50) COLLATE utf8_bin NOT NULL,
  `desc` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `manager_id`, `name`, `position`, `desc`) VALUES
(3, 1, 'Kyle ', 'Property Manager', ' Dear Lettings of London.  Thank you for helping me and my family move home. The service you provided was prompt, courteous, friendly and professional. '),
(4, 1, 'Caitlin Adams', 'Property Manager', 'Dear Lettings of London.  Thank you for helping me and my family move home. The service you provided was prompt, courteous, friendly and professional. 	');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_images`
--

DROP TABLE IF EXISTS `testimonial_images`;
CREATE TABLE IF NOT EXISTS `testimonial_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testimonial_id` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8_bin NOT NULL,
  `ofile` varchar(255) COLLATE utf8_bin NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `testimonial_id` (`testimonial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `testimonial_images`
--

INSERT INTO `testimonial_images` (`id`, `testimonial_id`, `file`, `ofile`, `year`, `month`) VALUES
(5, 3, 'Testimonial.png', '201810291810291907108.png', 2018, 10),
(7, 4, 'Chrysanthemum.jpg', '201910232134238974803.jpg', 2019, 10);

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

DROP TABLE IF EXISTS `time`;
CREATE TABLE IF NOT EXISTS `time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`id`, `title`) VALUES
(1, 'Morning'),
(2, 'Afternoon'),
(3, 'Evening');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_images`
--

DROP TABLE IF EXISTS `tmp_images`;
CREATE TABLE IF NOT EXISTS `tmp_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `floor_plan` tinyint(1) NOT NULL DEFAULT '0',
  `panoramic` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `file` varchar(255) COLLATE utf8_bin NOT NULL,
  `ofile` varchar(255) COLLATE utf8_bin NOT NULL,
  `primary_image` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `uk_cities`
--

DROP TABLE IF EXISTS `uk_cities`;
CREATE TABLE IF NOT EXISTS `uk_cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) COLLATE utf8_bin NOT NULL,
  `slug` varchar(255) COLLATE utf8_bin NOT NULL,
  `lat` varchar(255) COLLATE utf8_bin NOT NULL,
  `lng` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of cities in uk and their latitude and longitude';

--
-- Dumping data for table `uk_cities`
--

INSERT INTO `uk_cities` (`id`, `city`, `slug`, `lat`, `lng`) VALUES
(14, 'Cambridgeshire, UK', 'cambridgeshire', '52.2052973', '0.1218195'),
(15, 'London, UK', 'london', '51.5073509', '-0.1277583'),
(16, 'London Borough of Enfield, UK', 'enfield', '51.6622925', '-0.1180655'),
(17, 'Hammersmith, London, UK', 'hammersmith', '51.491187', '-0.223731'),
(18, 'Cheshire, UK', 'cheshire', '53.2326344', '-2.6103158'),
(19, 'North End Rd, London, UK', 'north-end-road', '51.487769', '-0.2037122'),
(20, 'Hatfield', 'hatfield', '51.763366', '-0.22309'),
(21, 'Wembley', 'wembley', '51.5560208', '-0.2795188'),
(22, 'Harrow', 'harrow', '51.580559', '-0.341995'),
(23, 'Leeds', 'leeds', '53.8007554', '-1.5490774'),
(24, 'Barnet', 'barnet', '51.6251502', '-0.152936'),
(25, 'Electric Works, Sheffield Digital Campus, Sheffield S1 2BJ, United Kingdom', 'account', '53.380071', '-1.462951');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `lname` varchar(255) COLLATE utf8_bin NOT NULL,
  `phone` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `lname`, `phone`) VALUES
(1, 'sahilsahil1@hotmail.com', 'Sahil', 'Shaikh', '07956522481'),
(2, 'ajaypulipra@gmail.com', 'Ajay PV', '', '9873484738'),
(3, 'ajaykumar_pv@hotmail.com', 'Ajay', 'Kumar', '98765432123'),
(4, 'vipindesigndirect@gmail.com', 'Vipin', 'Kumar M R', '9856741230'),
(5, 'madhu.designdirect@gmail.com', 'Madhu', '', '7845122356'),
(6, 'bijodesigndirectuk@gmail.com', 'Bijo', '', '9874561230'),
(7, 'bimal@gmail.com', 'Bimal', '', '9874561230'),
(8, 'ajaykumar_pv@gmail.com', 'Ajay Kumar PV', '', '9874561000'),
(9, 'mytenant@gmail.com', 'My Tenant', '', '9874556120'),
(10, 'rohandesigndirect@gmail.com', 'Rohan', '', '9874561000'),
(11, 'client@gmail.com', 'New Client', '', '98745612012'),
(12, 'sajudesigndirect@gmail.com', 'Saju S', '', '9856234512'),
(13, 'haridesigndirect@gmail.com', 'Hari Kirshnan', '', '9865741223'),
(14, 'paragongymuk@gmail.com', 'Paragon GYM', '', '8774561230'),
(15, 'info@hashwide.com', 'Hashwide Pvt Ltd', '', '8745123696'),
(16, 'danielst@gmail.com', 'Daniel', '', '8745125623'),
(17, 'info@quity.co.uk', 'Quity', '', '020 7845129632'),
(18, 'info@equity.co.uk', 'Equity', '', '020 4578123696'),
(19, 'gratiousdesigndirect@gmail.com', 'Gratious', '', '+914567891230'),
(20, 'royskalarikkan@yahoo.co.uk', 'Roys', 'kalarikkan', '1234567890'),
(21, 'info@paragonpvtltd.com', 'Paragon', 'Pvt Ltd', '8523697410'),
(22, 'emmanueljoydesigndirect@gmail.com', 'Emmanuel', 'Joy', '4567891231'),
(23, 'sanoopdesigndirect@gmail.com', 'Sanoop', '', '7845120985'),
(24, 'rishikadesigndirect@gmail.com', 'Rishika ', 'Kishore', '9874511236'),
(25, 'littydesigndirect@gmail.com', 'Litty', 'Thomas', '020 7894561230'),
(26, 'fijudesigndirect@gmail.com', 'Fiju', '', '020 9874561230'),
(27, 'ginuabraham@gmail.com', 'Ginu', 'Abraham', '9856741230'),
(28, 'ajay.designdirect@gmail.com', 'Ajay kumar', '', '1234567890'),
(29, 'asas@', 'Aasas', 'as', 's23232'),
(30, 'bijodesigndirectuk2@gmail.com', 'Bijo 2', 'Design Direct', '07896541234'),
(31, 'ajay1@gmail.com', 'Ajay kumar1', '', '1234567890'),
(32, 'ajaykpv@gmail.com', 'Ajay', 'Kumar', '9874561230'),
(33, 'Giusyschifaudo2324@gmail.com', 'Giuseppa', 'Schifaudo', '07490321561'),
(34, 'giusyschifaudo2324@gmail.com', 'Giuseppa ', 'Schifaudo', '07490321561'),
(35, 'sahilsahilsahilsahil', 'sahil', 'sahil', '0000000000000'),
(36, 'jamesmathew@gmail.com', 'James', 'Mathew', '9856741230'),
(37, 'shinekdas@hotmail.com', 'Shine', 'K Das', '9874561230'),
(38, 'reebamathew@gmail.com', 'Reeba ', 'Mathew', '9874561230'),
(39, 'rajujanardanan@gmail.com', 'Raju', 'Janardanan', '7894561230'),
(40, 'bibinchoudary@gmail.com', 'Bibin', 'Choudary', '1234567890'),
(41, 'dsd@fjdfh.com', 'sdsd', 'sds', '1234567890'),
(42, 'dsdw@fjdfh.com', 'sdsd', 'sdsd', '1234567890'),
(43, 'dsdd@fjdfh.com', 'sdsd', 'sds', '1234567890'),
(44, 'nicky.kinahan@hotmail.com', 'Nicky ', 'Kinahan', '07891796173'),
(45, 'kylefrancis@gmail.com', 'Kyle ', 'Francis', '7845123961'),
(46, 'info@james-allen.com', 'James', 'Allen', '07787415489'),
(47, 'jamesallen485@gmail.com', 'James', 'Allen', '07787415489'),
(48, 'jamesallen-56@gmail.com', 'James', 'Allen', '07787415489'),
(49, 'jamesallen@gmail.com', 'James', 'Allen', '07787415489'),
(50, 'jemmaburch@avc-energy.com', 'Jemma', 'Burch', '07787415489'),
(51, 'georgeallen@gmail.com', 'George', 'Allen', '1234567890'),
(52, 'jleuren@georgelauren.com', 'George', 'Lauren', '1234567890'),
(53, 'me@tblair.com', 'Tony', 'Blair', '1234567890'),
(54, 'fayis@yahoo.com', 'Fayis', 'Hemmed', '1234567890'),
(55, 'tonyblair@yahoo.co.uk', 'Tony', 'Blair', '1234567890'),
(56, 's.sheikh@yahoo.co.uk', 'Salman', 'Sheikh', '1234567890'),
(57, 'ahmed.riyaz@yhaoo.co.uk', 'Ahmed ', 'Riyaz', '1234567890'),
(58, 'landlordtest@themitselfs.com', 'Landord', 'Test', '1234567890'),
(59, 'landlordtest2@yahoo.co.uk', 'Landlord ', 'Test2', '1234567890'),
(60, 'jamesdesigndirect@gmail.com', 'James', '', '1234567890'),
(61, 'raj_staff@gmail.com', 'Raj', 'Staff', '6543212312'),
(62, 'aravinddesigndirect@gmail.com', 'Aravind', '', '1234569870'),
(63, 'aravind@gmail.com', 'Aravind', '', '1234567890'),
(64, 'calorgas@gmail.com', '', '', '8745123699'),
(65, 'akhilj@gmail.com', 'Akhil', 'Jacob', '9875461207'),
(66, 'jixonjacson@gmail.com', '', '', '8745123698');

-- --------------------------------------------------------

--
-- Table structure for table `user_acct_type`
--

DROP TABLE IF EXISTS `user_acct_type`;
CREATE TABLE IF NOT EXISTS `user_acct_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `user_type_id` (`user_type_id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_acct_type`
--

INSERT INTO `user_acct_type` (`id`, `user_id`, `user_type_id`, `manager_id`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 2, 2, 1),
(4, 1, 3, 1),
(5, 3, 1, 1),
(6, 4, 1, 1),
(7, 5, 1, 1),
(10, 6, 2, 1),
(11, 7, 1, 1),
(12, 7, 2, 1),
(16, 10, 4, 1),
(17, 11, 6, 1),
(18, 1, 6, 1),
(19, 12, 2, 1),
(20, 13, 6, 1),
(21, 14, 5, 1),
(22, 15, 5, 1),
(23, 16, 5, 1),
(24, 17, 5, 1),
(25, 18, 5, 1),
(26, 19, 5, 1),
(27, 1, 5, 1),
(28, 13, 5, 1),
(29, 10, 5, 1),
(30, 20, 1, 1),
(31, 21, 3, 1),
(32, 22, 6, 1),
(33, 19, 6, 1),
(34, 7, 6, 1),
(35, 23, 3, 1),
(36, 24, 1, 1),
(37, 25, 2, 1),
(38, 26, 6, 1),
(40, 28, 5, 1),
(41, 29, 5, 1),
(42, 6, 5, 1),
(43, 30, 5, 1),
(44, 31, 5, 1),
(45, 32, 5, 1),
(46, 33, 5, 1),
(47, 34, 5, 1),
(48, 35, 5, 1),
(49, 36, 4, 1),
(50, 38, 4, 1),
(51, 6, 4, 1),
(52, 38, 5, 1),
(53, 38, 6, 1),
(54, 39, 4, 1),
(55, 40, 5, 1),
(56, 40, 2, 1),
(57, 44, 5, 1),
(58, 44, 4, 1),
(59, 45, 4, 1),
(60, 40, 4, 1),
(67, 51, 4, 1),
(69, 52, 2, 1),
(70, 53, 4, 1),
(71, 54, 4, 1),
(72, 55, 6, 1),
(73, 56, 6, 1),
(74, 57, 6, 1),
(75, 58, 2, 1),
(76, 59, 2, 1),
(77, 6, 6, 1),
(79, 28, 6, 1),
(80, 12, 6, 1),
(81, 59, 6, 1),
(82, 60, 5, 1),
(83, 61, 1, 1),
(85, 62, 1, 1),
(86, 2, 6, 1),
(87, 29, 6, 1),
(88, 28, 7, 1),
(89, 63, 6, 1),
(90, 64, 2, 1),
(91, 65, 3, 1),
(92, 65, 2, 1),
(93, 65, 6, 1),
(94, 2, 5, 1),
(95, 15, 6, 1),
(96, 66, 6, 1),
(97, 28, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_clients`
--

DROP TABLE IF EXISTS `user_clients`;
CREATE TABLE IF NOT EXISTS `user_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `lname` varchar(255) COLLATE utf8_bin NOT NULL,
  `phone` varchar(255) COLLATE utf8_bin NOT NULL,
  `h_no` varchar(100) COLLATE utf8_bin NOT NULL,
  `street` varchar(255) COLLATE utf8_bin NOT NULL,
  `city` varchar(255) COLLATE utf8_bin NOT NULL,
  `postcode` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`user_id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_clients`
--

INSERT INTO `user_clients` (`id`, `user_id`, `manager_id`, `company`, `name`, `lname`, `phone`, `h_no`, `street`, `city`, `postcode`) VALUES
(2, 1, 1, '', 'Sahil', 'Shaikh', '07956522481', '', '', '', ''),
(3, 2, 1, 'Design Direct', '', '', '9874561230', '', '', '', ''),
(4, 3, 1, '', 'Ajay', 'Kumar', '98765432123', '', '', '', ''),
(5, 4, 1, '', 'Vipin', 'Kumar M R', '9856741230', '', '', '', ''),
(6, 5, 1, '', 'Madhu', '', '7845122356', '85', 'Trinity Avenue', 'Enfield', 'EN11HT'),
(9, 6, 1, '', 'Bijo 2', 'Design Direct', '07896541234', '85 Trinity Avenue ', 'Bush Hill Park', 'Enfield', 'EN1 1HT'),
(10, 7, 1, '', 'Bimal', 'B', '9876542132', '2-4', 'Fairfield Road', 'Beckenham ', 'BR3 3LD'),
(13, 10, 1, '', 'Rohan', 'C Thomas', '1234567890', '85', 'Trinity Avenue', 'Enfield', 'EN11HT'),
(14, 11, 1, '', 'My Client', '', '7845128956', '', '', '', ''),
(15, 12, 1, '', 'Saju', 'Stephen', '9856234512', '', '', '', ''),
(16, 13, 1, '', 'Hari', 'Kirshnan', '01234567890', '', '', '', ''),
(17, 14, 1, '', 'Paragon GYM', '', '8774561230', '', '', '', ''),
(18, 15, 1, '', 'Hashwide Pvt Ltd', '', '+44 8956231474', '', '', '', ''),
(19, 16, 1, '', 'Daniel', '', '8745125623', '', '', '', ''),
(20, 17, 1, '', 'Equity', '', '020 7845123696', '', '', '', ''),
(21, 18, 1, 'Equity Pvt Ltd', '', '', '020 4578123696', '', '', '', ''),
(22, 19, 1, '', 'Gratious', 'John', '+914567891230', '', '', '', ''),
(23, 20, 1, '', 'Roys', 'kalarikkan', '1234567890', '', '', '', ''),
(24, 21, 1, 'Paragon Pvt Ltd', '', '', '8523697410', '', '', '', ''),
(25, 22, 1, '', 'Emmanuel', 'Joy', '4567891231', '', '', '', ''),
(26, 23, 1, '', 'Sanoop', '', '7845120985', ' 103', 'Hammersmith Grove', 'London', 'W6 0NQ'),
(27, 24, 1, '', 'Rishika ', 'Kishore', '9874511236', '242', 'Streatfield Road', 'Harrow ', 'HA3 9BX'),
(28, 25, 1, '', 'Litty', 'Thomas', '020 7894561230', '2-4', 'Fairfield Road', 'Beckenham ', 'BR3 3LD'),
(29, 26, 1, '', 'Fiju', 'Francis', '1234567890', '', 'Street', 'Enfield', 'EN1 1HT'),
(31, 28, 1, '', 'Ajay', 'kumar', '01234567890', '', 'Darwin Close', 'London', 'N11 1TA'),
(32, 29, 1, '', 'Aasas', 'as', 's23232', '', '', '', ''),
(33, 30, 1, '', 'Bijo 2', 'Design Direct', '07896541234', '85 Trinity Avenue ', 'Bush Hill Park', 'Enfield', 'EN1 1HT'),
(34, 31, 1, '', 'Ajay kumar1', '', '1234567890', '', '', '', ''),
(35, 32, 1, '', 'Ajay', 'Kumar', '9874561230', '', '', '', ''),
(36, 33, 1, '', 'Giuseppa', 'Schifaudo', '07490321561', '', '', '', ''),
(37, 34, 1, '', 'Giuseppa', 'Schifaudo', '07490321561', '', '', '', ''),
(38, 35, 1, '', 'sahil', 'sahil', '0000000000000', '', '', '', ''),
(39, 36, 1, '', 'James', 'Mathew', '9856741230', '89', 'Trinity Avenue', 'Enfield', 'EN11HT'),
(40, 38, 1, '', 'Reeba ', 'Mathew', '01234567890', '85', 'Trinity Avenue', 'Enfield', 'EN11HT'),
(41, 39, 1, '', 'Raju', 'Janardanan', '1234567890', '34', 'Trinity Avenue', 'Enfield', 'En11HT'),
(42, 40, 1, 'Design Direct', 'Bibin', 'Choudary', '1234567890', '', '', '', ''),
(43, 44, 1, '', 'Nicky ', 'Kinahan', '07891796173', '', '', '', ''),
(44, 45, 1, '', 'Kyle ', 'Francis', '7845123961', '', '', '', ''),
(51, 51, 1, '', 'George', 'Allen', '1234567890', '', 'Street', 'Enfield', 'EN1 1HT'),
(53, 52, 1, '', 'George', 'Lauren', '1234567890', '', 'Nevill Road', 'London', 'N16 8SR'),
(54, 53, 1, '', 'Tony', 'Blair', '1234567890', '', 'Street', 'Enfield', 'EN1 1HT'),
(55, 54, 1, '', 'Fayis', 'Hemmed', '1234567890', '', 'Queensferry Road', 'Dunfermline', 'KY11 8PP'),
(56, 55, 1, '', 'Tony', 'Blair', '1234567890', '', 'Street', 'Enfield', 'EN1 1HT'),
(57, 56, 1, '', 'Salman', 'Sheikh', '1234567890', '', 'Street', 'Enfield', 'EN1 1HT'),
(58, 57, 1, '', 'Ahmed ', 'Riyaz', '1234567890', '', 'Street', 'Enfield', 'EN1 1HT'),
(59, 58, 1, '', 'Landord', 'Test', '1234567890', '', 'Goldings Crescent', 'Hatfield', 'AL10 8UD'),
(60, 59, 1, '', 'Landlord ', 'Test2', '1234567890', '', 'Goldings Crescent', 'Hatfield', 'AL10 8UD'),
(61, 60, 1, '', 'James', '', '9874561230', '', '', '', ''),
(62, 61, 1, '', 'Raj', 'Staff', '6543212312', '', '', '', ''),
(63, 62, 1, '', 'Aravind', '', '1234569870', '', '', '', ''),
(64, 63, 1, 'Aravind Mills Pvt Ltd', 'Aravind', '', '1234567890', '', 'Street', 'Enfield', 'EN1 1HT'),
(65, 64, 1, 'Calor Gas Pvt Ltd', '', '', '8527419632', '', '', '', ''),
(66, 65, 1, 'Hashwide Pvt Ltd', '', '', '+44 8956231474', '', '', '', ''),
(67, 66, 1, 'Jixon Jacson Pvt ltd', '', '', '8745123698', '', 'Trinity Avenue', 'Enfield', 'EN1 1HT');

-- --------------------------------------------------------

--
-- Table structure for table `user_password`
--

DROP TABLE IF EXISTS `user_password`;
CREATE TABLE IF NOT EXISTS `user_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `forgot_password_code` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_password`
--

INSERT INTO `user_password` (`id`, `user_id`, `password`, `forgot_password_code`) VALUES
(1, 1, '7ee86ea7ca89728ef5f08aa0aef7a120', ''),
(2, 3, '7ee86ea7ca89728ef5f08aa0aef7a120', ''),
(3, 4, '7ee86ea7ca89728ef5f08aa0aef7a120', ''),
(4, 5, '7ee86ea7ca89728ef5f08aa0aef7a120', ''),
(5, 7, '7ee86ea7ca89728ef5f08aa0aef7a120', ''),
(6, 20, '', '1gHl4a2afbT7iFNd'),
(7, 24, '7ee86ea7ca89728ef5f08aa0aef7a120', ''),
(8, 61, '', 'D2DA2hv39e6tlkv7'),
(9, 62, '', '5yIJ03ZK0DGGrPSK');

-- --------------------------------------------------------

--
-- Table structure for table `user_privilege`
--

DROP TABLE IF EXISTS `user_privilege`;
CREATE TABLE IF NOT EXISTS `user_privilege` (
  `staff_id` int(11) NOT NULL,
  `staff_privilege_options_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  KEY `staff_id` (`staff_id`),
  KEY `staff_privilege_id` (`staff_privilege_options_id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_privilege`
--

INSERT INTO `user_privilege` (`staff_id`, `staff_privilege_options_id`, `manager_id`) VALUES
(7, 1, 1),
(7, 2, 1),
(7, 3, 1),
(7, 4, 1),
(7, 10, 1),
(7, 11, 1),
(4, 1, 1),
(4, 10, 1),
(4, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_staff`
--

DROP TABLE IF EXISTS `user_staff`;
CREATE TABLE IF NOT EXISTS `user_staff` (
  `staff_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  KEY `staff_id` (`staff_id`),
  KEY `admin_id` (`manager_id`),
  KEY `branch_id` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_staff`
--

INSERT INTO `user_staff` (`staff_id`, `manager_id`, `branch_id`) VALUES
(5, 1, 2),
(24, 1, 2),
(4, 1, 2),
(62, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_tenants`
--

DROP TABLE IF EXISTS `user_tenants`;
CREATE TABLE IF NOT EXISTS `user_tenants` (
  `user_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tenant_type_id` int(11) NOT NULL,
  `tenant_verification_type_id` int(11) NOT NULL DEFAULT '1',
  `tenant_move_type_id` int(11) NOT NULL,
  `property_listing_type_category_id` int(11) NOT NULL,
  `people` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `budget` double NOT NULL,
  `moving_date` date NOT NULL,
  `notes` text COLLATE utf8_bin NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `manager_id` (`manager_id`),
  KEY `tenant_type_id` (`tenant_type_id`),
  KEY `tenant_verification_type_id` (`tenant_verification_type_id`),
  KEY `tenant_move_type_id` (`tenant_move_type_id`),
  KEY `property_listing_type_id` (`property_listing_type_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_tenants`
--

INSERT INTO `user_tenants` (`user_id`, `manager_id`, `created`, `tenant_type_id`, `tenant_verification_type_id`, `tenant_move_type_id`, `property_listing_type_category_id`, `people`, `bedrooms`, `budget`, `moving_date`, `notes`) VALUES
(38, 1, '2018-08-03 10:28:03', 1, 3, 4, 1, 2, 2, 1000, '2018-08-08', 'Added from the enquiry'),
(6, 1, '2018-08-03 12:27:49', 1, 1, 1, 1, 2, 1, 1000, '0000-00-00', ''),
(39, 1, '2018-08-08 13:04:05', 1, 4, 1, 1, 1, 1, 1000, '2018-08-31', ''),
(41, 1, '2018-08-15 14:42:32', 1, 1, 1, 1, 0, 0, 0, '2018-08-15', 'dsd@fjdfh.com'),
(42, 1, '2018-08-15 14:43:15', 2, 1, 1, 1, 0, 0, 0, '2018-08-28', ''),
(43, 1, '2018-08-15 14:43:38', 2, 1, 1, 1, 0, 0, 0, '2018-08-15', 'dsd@fjdfh.com'),
(44, 1, '2018-08-20 09:14:45', 1, 1, 1, 6, 3, 3, 1000, '0000-00-00', ''),
(45, 1, '2018-08-20 14:57:33', 1, 2, 4, 10, 3, 2, 1000, '0000-00-00', ''),
(40, 1, '2018-08-20 15:09:29', 1, 1, 1, 1, 3, 3, 300, '0000-00-00', ''),
(50, 1, '2018-10-25 09:29:41', 1, 1, 1, 2, 2, 1, 1000, '0000-00-00', ''),
(51, 1, '2018-10-25 09:31:17', 3, 4, 1, 2, 1, 1, 1000, '0000-00-00', ''),
(53, 1, '2018-10-25 09:41:27', 1, 1, 1, 2, 2, 1, 1000, '0000-00-00', ''),
(54, 1, '2018-10-25 09:42:54', 1, 1, 1, 2, 2, 2, 1000, '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
CREATE TABLE IF NOT EXISTS `user_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='user type';

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `name`) VALUES
(1, 'Agent'),
(2, 'Landlord'),
(3, 'Seller'),
(4, 'Tenant'),
(5, 'Applicant'),
(6, 'Client'),
(7, 'Supplier'),
(8, 'Contractor');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `activity_ibfk_1` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `activity_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `activity_invoices`
--
ALTER TABLE `activity_invoices`
  ADD CONSTRAINT `activity_invoices_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `activity_invoices_ibfk_2` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `activity_lead`
--
ALTER TABLE `activity_lead`
  ADD CONSTRAINT `activity_lead_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `activity_lead_ibfk_2` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `activity_messages`
--
ALTER TABLE `activity_messages`
  ADD CONSTRAINT `activity_messages_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `activity_messages_ibfk_2` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `activity_property`
--
ALTER TABLE `activity_property`
  ADD CONSTRAINT `activity_property_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `activity_property_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `activity_user`
--
ALTER TABLE `activity_user`
  ADD CONSTRAINT `activity_user_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `activity_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `activity_user_ibfk_3` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `agent_settings`
--
ALTER TABLE `agent_settings`
  ADD CONSTRAINT `agent_settings_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `certificates_agent`
--
ALTER TABLE `certificates_agent`
  ADD CONSTRAINT `certificates_agent_ibfk_1` FOREIGN KEY (`certificate_id`) REFERENCES `certificates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `certificates_agent_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `expenses_ibfk_2` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD CONSTRAINT `expense_categories_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD CONSTRAINT `expense_category_ibfk_1` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expense_property`
--
ALTER TABLE `expense_property`
  ADD CONSTRAINT `expense_property_ibfk_1` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expense_vendor`
--
ALTER TABLE `expense_vendor`
  ADD CONSTRAINT `expense_vendor_ibfk_1` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `features`
--
ALTER TABLE `features`
  ADD CONSTRAINT `features_ibfk_1` FOREIGN KEY (`property_type_id`) REFERENCES `property_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `features_agent`
--
ALTER TABLE `features_agent`
  ADD CONSTRAINT `features_agent_ibfk_1` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `features_agent_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feature_values`
--
ALTER TABLE `feature_values`
  ADD CONSTRAINT `feature_values_ibfk_1` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gumtree_log`
--
ALTER TABLE `gumtree_log`
  ADD CONSTRAINT `gumtree_log_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `insurance_type_agent`
--
ALTER TABLE `insurance_type_agent`
  ADD CONSTRAINT `insurance_type_agent_ibfk_1` FOREIGN KEY (`insurance_type_id`) REFERENCES `insurance_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `insurance_type_agent_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_ibfk_3` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice_lettings`
--
ALTER TABLE `invoice_lettings`
  ADD CONSTRAINT `invoice_lettings_ibfk_1` FOREIGN KEY (`property_letting_id`) REFERENCES `property_lettings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_lettings_ibfk_2` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice_profiles`
--
ALTER TABLE `invoice_profiles`
  ADD CONSTRAINT `invoice_profiles_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_profiles_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_profiles_ibfk_3` FOREIGN KEY (`frequency_term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_profiles_ibfk_4` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice_profile_cron_log`
--
ALTER TABLE `invoice_profile_cron_log`
  ADD CONSTRAINT `invoice_profile_cron_log_ibfk_1` FOREIGN KEY (`invoice_profile_id`) REFERENCES `invoice_profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice_profile_items`
--
ALTER TABLE `invoice_profile_items`
  ADD CONSTRAINT `invoice_profile_items_ibfk_1` FOREIGN KEY (`invoice_profile_id`) REFERENCES `invoice_profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice_profile_lettings`
--
ALTER TABLE `invoice_profile_lettings`
  ADD CONSTRAINT `invoice_profile_lettings_ibfk_1` FOREIGN KEY (`invoice_profile_id`) REFERENCES `invoice_profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_profile_lettings_ibfk_2` FOREIGN KEY (`property_letting_id`) REFERENCES `property_lettings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice_profile_property`
--
ALTER TABLE `invoice_profile_property`
  ADD CONSTRAINT `invoice_profile_property_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_profile_property_ibfk_2` FOREIGN KEY (`invoice_profile_id`) REFERENCES `invoice_profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice_property`
--
ALTER TABLE `invoice_property`
  ADD CONSTRAINT `invoice_property_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_property_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice_receipts`
--
ALTER TABLE `invoice_receipts`
  ADD CONSTRAINT `invoice_receipts_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_receipts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_receipts_ibfk_3` FOREIGN KEY (`receipt_payment_type_id`) REFERENCES `receipt_payment_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `key_status_property_for`
--
ALTER TABLE `key_status_property_for`
  ADD CONSTRAINT `key_status_property_for_ibfk_1` FOREIGN KEY (`key_status_id`) REFERENCES `key_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `key_status_property_for_ibfk_2` FOREIGN KEY (`property_for_id`) REFERENCES `property_for` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `knowledge`
--
ALTER TABLE `knowledge`
  ADD CONSTRAINT `knowledge_ibfk_1` FOREIGN KEY (`knowledge_category_id`) REFERENCES `knowledge_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `leads`
--
ALTER TABLE `leads`
  ADD CONSTRAINT `leads_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lead_acct_type`
--
ALTER TABLE `lead_acct_type`
  ADD CONSTRAINT `lead_acct_type_ibfk_1` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lead_acct_type_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lead_acct_type_ibfk_3` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lettings_agreement_templates_manager`
--
ALTER TABLE `lettings_agreement_templates_manager`
  ADD CONSTRAINT `lettings_agreement_templates_manager_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lettings_agreement_templates_manager_ibfk_2` FOREIGN KEY (`template_id`) REFERENCES `lettings_agreement_templates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`message_status_id`) REFERENCES `message_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message_parent`
--
ALTER TABLE `message_parent`
  ADD CONSTRAINT `message_parent_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `message_parent_ibfk_2` FOREIGN KEY (`parent_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `problem_category_parent`
--
ALTER TABLE `problem_category_parent`
  ADD CONSTRAINT `problem_category_parent_ibfk_1` FOREIGN KEY (`problem_category_id`) REFERENCES `problem_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `problem_category_parent_ibfk_2` FOREIGN KEY (`parent_category_id`) REFERENCES `problem_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_ibfk_2` FOREIGN KEY (`property_type_id`) REFERENCES `property_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_ibfk_3` FOREIGN KEY (`property_for_id`) REFERENCES `property_for` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_ibfk_4` FOREIGN KEY (`property_status_id`) REFERENCES `property_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_ibfk_5` FOREIGN KEY (`listed_for_term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_ibfk_6` FOREIGN KEY (`furnished_type_id`) REFERENCES `furnished_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_ibfk_7` FOREIGN KEY (`property_listing_type_id`) REFERENCES `property_listing_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_api`
--
ALTER TABLE `property_api`
  ADD CONSTRAINT `property_api_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_api_ibfk_2` FOREIGN KEY (`api_websites_id`) REFERENCES `api_websites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_api_ibfk_3` FOREIGN KEY (`api_status_id`) REFERENCES `api_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_api_rightmove`
--
ALTER TABLE `property_api_rightmove`
  ADD CONSTRAINT `property_api_rightmove_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_api_zoopla`
--
ALTER TABLE `property_api_zoopla`
  ADD CONSTRAINT `property_api_zoopla_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_areas`
--
ALTER TABLE `property_areas`
  ADD CONSTRAINT `property_areas_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_certificates`
--
ALTER TABLE `property_certificates`
  ADD CONSTRAINT `property_certificates_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_certificates_ibfk_2` FOREIGN KEY (`certificate_id`) REFERENCES `certificates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_certificate_of_title`
--
ALTER TABLE `property_certificate_of_title`
  ADD CONSTRAINT `property_certificate_of_title_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_docs`
--
ALTER TABLE `property_docs`
  ADD CONSTRAINT `property_docs_ibfk_1` FOREIGN KEY (`doc_type_id`) REFERENCES `doc_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_docs_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_enquiry`
--
ALTER TABLE `property_enquiry`
  ADD CONSTRAINT `property_enquiry_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_enquiry_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_features`
--
ALTER TABLE `property_features`
  ADD CONSTRAINT `property_features_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_features_ibfk_2` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_images`
--
ALTER TABLE `property_images`
  ADD CONSTRAINT `property_images_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_insurance`
--
ALTER TABLE `property_insurance`
  ADD CONSTRAINT `property_insurance_ibfk_1` FOREIGN KEY (`insurance_type_id`) REFERENCES `insurance_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_insurance_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_inventory`
--
ALTER TABLE `property_inventory`
  ADD CONSTRAINT `property_inventory_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_inventory_ibfk_2` FOREIGN KEY (`inventory_report_type_id`) REFERENCES `inventory_report_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_inventory_images`
--
ALTER TABLE `property_inventory_images`
  ADD CONSTRAINT `property_inventory_images_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `property_inventory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_inventory_sections`
--
ALTER TABLE `property_inventory_sections`
  ADD CONSTRAINT `property_inventory_sections_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `property_inventory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_inventory_sections_ibfk_2` FOREIGN KEY (`inspection_rating_id`) REFERENCES `inspection_rating` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_inventory_youtube`
--
ALTER TABLE `property_inventory_youtube`
  ADD CONSTRAINT `property_inventory_youtube_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `property_inventory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_keys`
--
ALTER TABLE `property_keys`
  ADD CONSTRAINT `property_keys_ibfk_1` FOREIGN KEY (`key_status_id`) REFERENCES `key_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_keys_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_lettings`
--
ALTER TABLE `property_lettings`
  ADD CONSTRAINT `property_lettings_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_lettings_ibfk_2` FOREIGN KEY (`agreement_status_id`) REFERENCES `agreement_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_lettings_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_lettings_ibfk_4` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_lettings_ibfk_7` FOREIGN KEY (`notice_period_term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_letting_agreements`
--
ALTER TABLE `property_letting_agreements`
  ADD CONSTRAINT `property_letting_agreements_ibfk_1` FOREIGN KEY (`property_letting_id`) REFERENCES `property_lettings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_letting_documents`
--
ALTER TABLE `property_letting_documents`
  ADD CONSTRAINT `property_letting_documents_ibfk_1` FOREIGN KEY (`property_letting_id`) REFERENCES `property_lettings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_letting_other_transactions`
--
ALTER TABLE `property_letting_other_transactions`
  ADD CONSTRAINT `property_letting_other_transactions_ibfk_1` FOREIGN KEY (`property_letting_id`) REFERENCES `property_lettings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_letting_responsibilities`
--
ALTER TABLE `property_letting_responsibilities`
  ADD CONSTRAINT `property_letting_responsibilities_ibfk_1` FOREIGN KEY (`property_letting_id`) REFERENCES `property_lettings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_letting_responsibilities_ibfk_2` FOREIGN KEY (`letting_responsibility_id`) REFERENCES `lettings_responsibilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_letting_signature`
--
ALTER TABLE `property_letting_signature`
  ADD CONSTRAINT `property_letting_signature_ibfk_1` FOREIGN KEY (`property_letting_id`) REFERENCES `property_lettings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_letting_signature_ibfk_2` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_letting_transactions`
--
ALTER TABLE `property_letting_transactions`
  ADD CONSTRAINT `property_letting_transactions_ibfk_1` FOREIGN KEY (`property_letting_id`) REFERENCES `property_lettings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_letting_transactions_ibfk_2` FOREIGN KEY (`schedule_term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_listing_type`
--
ALTER TABLE `property_listing_type`
  ADD CONSTRAINT `property_listing_type_ibfk_1` FOREIGN KEY (`property_listing_type_category_id`) REFERENCES `property_listing_type_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_listing_type_category`
--
ALTER TABLE `property_listing_type_category`
  ADD CONSTRAINT `property_listing_type_category_ibfk_1` FOREIGN KEY (`property_type_id`) REFERENCES `property_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_offer`
--
ALTER TABLE `property_offer`
  ADD CONSTRAINT `property_offer_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_offer_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_owners`
--
ALTER TABLE `property_owners`
  ADD CONSTRAINT `property_owners_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_owners_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_rating_valuation`
--
ALTER TABLE `property_rating_valuation`
  ADD CONSTRAINT `property_rating_valuation_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_rent`
--
ALTER TABLE `property_rent`
  ADD CONSTRAINT `property_rent_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_rent_ibfk_2` FOREIGN KEY (`rent_term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_status_title`
--
ALTER TABLE `property_status_title`
  ADD CONSTRAINT `property_status_title_ibfk_1` FOREIGN KEY (`property_for_id`) REFERENCES `property_for` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_status_title_ibfk_2` FOREIGN KEY (`property_status_id`) REFERENCES `property_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_tmp_docs`
--
ALTER TABLE `property_tmp_docs`
  ADD CONSTRAINT `property_tmp_docs_ibfk_1` FOREIGN KEY (`doc_type_id`) REFERENCES `doc_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_tmp_docs_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_valuation`
--
ALTER TABLE `property_valuation`
  ADD CONSTRAINT `property_valuation_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_viewing`
--
ALTER TABLE `property_viewing`
  ADD CONSTRAINT `property_viewing_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_viewing_ibfk_2` FOREIGN KEY (`time_id`) REFERENCES `time` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_view_request`
--
ALTER TABLE `property_view_request`
  ADD CONSTRAINT `property_view_request_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_view_request_ibfk_2` FOREIGN KEY (`time_id`) REFERENCES `time` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `property_view_request_ibfk_3` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_youtube`
--
ALTER TABLE `property_youtube`
  ADD CONSTRAINT `property_youtube_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reminder_repeat`
--
ALTER TABLE `reminder_repeat`
  ADD CONSTRAINT `reminder_repeat_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reminder_repeat_ibfk_2` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_privilege_options`
--
ALTER TABLE `staff_privilege_options`
  ADD CONSTRAINT `staff_privilege_options_ibfk_1` FOREIGN KEY (`staff_privilege_id`) REFERENCES `staff_privilege` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`task_type_id`) REFERENCES `task_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `task_assigned`
--
ALTER TABLE `task_assigned`
  ADD CONSTRAINT `task_assigned_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `task_assigned_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `task_attendees`
--
ALTER TABLE `task_attendees`
  ADD CONSTRAINT `task_attendees_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `task_attendees_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tenant_problems`
--
ALTER TABLE `tenant_problems`
  ADD CONSTRAINT `tenant_problems_ibfk_1` FOREIGN KEY (`problem_category_id`) REFERENCES `problem_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tenant_problems_ibfk_2` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tenant_problems_ibfk_3` FOREIGN KEY (`property_letting_id`) REFERENCES `property_lettings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tenant_problems_ibfk_4` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tenant_problem_images`
--
ALTER TABLE `tenant_problem_images`
  ADD CONSTRAINT `tenant_problem_images_ibfk_1` FOREIGN KEY (`tenant_problem_id`) REFERENCES `tenant_problems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `testimonial_images`
--
ALTER TABLE `testimonial_images`
  ADD CONSTRAINT `testimonial_images_ibfk_1` FOREIGN KEY (`testimonial_id`) REFERENCES `testimonials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tmp_images`
--
ALTER TABLE `tmp_images`
  ADD CONSTRAINT `tmp_images_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_acct_type`
--
ALTER TABLE `user_acct_type`
  ADD CONSTRAINT `user_acct_type_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_acct_type_ibfk_2` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_acct_type_ibfk_3` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_clients`
--
ALTER TABLE `user_clients`
  ADD CONSTRAINT `user_clients_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_clients_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_password`
--
ALTER TABLE `user_password`
  ADD CONSTRAINT `user_password_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_privilege`
--
ALTER TABLE `user_privilege`
  ADD CONSTRAINT `user_privilege_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_privilege_ibfk_2` FOREIGN KEY (`staff_privilege_options_id`) REFERENCES `staff_privilege_options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_privilege_ibfk_3` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_staff`
--
ALTER TABLE `user_staff`
  ADD CONSTRAINT `user_staff_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_staff_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_staff_ibfk_3` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_tenants`
--
ALTER TABLE `user_tenants`
  ADD CONSTRAINT `user_tenants_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_tenants_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_tenants_ibfk_3` FOREIGN KEY (`tenant_type_id`) REFERENCES `tenant_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_tenants_ibfk_4` FOREIGN KEY (`tenant_verification_type_id`) REFERENCES `tenant_verification_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_tenants_ibfk_5` FOREIGN KEY (`tenant_move_type_id`) REFERENCES `tenant_move_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_tenants_ibfk_6` FOREIGN KEY (`property_listing_type_category_id`) REFERENCES `property_listing_type_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
