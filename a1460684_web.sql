
-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 05, 2014 at 12:02 PM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a1460684_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `Tspeed(avg km/h)` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` VALUES(1, 'Beijing', '30');
INSERT INTO `city` VALUES(2, 'Shanghai', '35');
INSERT INTO `city` VALUES(3, 'Suzhou', '35');
INSERT INTO `city` VALUES(4, 'Qingdao', '40');
INSERT INTO `city` VALUES(5, 'Lhasa', '40');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `spot` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `city` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `rate` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `content` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `spot_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `fk_review_spot1_idx` (`spot_id`),
  KEY `fk_review_user1_idx` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` VALUES(1, 'Forbiden City', NULL, '4', 'old Chinese palace', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `spot`
--

CREATE TABLE `spot` (
  `spot_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `rate` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `time` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `description` varchar(500) COLLATE latin1_general_ci DEFAULT NULL,
  `pictures` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`spot_id`),
  KEY `fk_spot_city1_idx` (`city_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `spot`
--

INSERT INTO `spot` VALUES(1, 'Forbiden City', '4.5', '3', 'With over 9,000 rooms and over 250 acres, this large palace building was built between 1406 and 1420', NULL, 1);
INSERT INTO `spot` VALUES(2, 'Tianmen Squre', '4', '1.5', 'This was the place when in 1949, from a rostrum on Tiananmen (the Gate of Heavenly Tiananmen Square Peace), Chairman Mao announced the establishment of the People''s Republic of China.', NULL, 1);
INSERT INTO `spot` VALUES(3, 'Great Wall at Badaling', '4', '2', 'For the Great Wall hiking, get ready for strong footwear. ', NULL, 1);
INSERT INTO `spot` VALUES(4, 'Summer Place', '4', '2.5', 'Regarded as the largest imperial garden in China, Beijing''s Summer Palace is in fact a park-styled royal retreat extending out over 10 square miles in northwest suburban Beijing . ', NULL, 1);
INSERT INTO `spot` VALUES(5, 'Temple of Heaven', '3.5', '1', 'It worked as sacrificial compound buildings for the Ming and Qing emperors.', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `trip_id` int(11) NOT NULL,
  `startTime` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `endTime` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`trip_id`),
  KEY `fk_trip_user_idx` (`user_id`),
  KEY `fk_trip_city1_idx` (`city_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `trip`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `sex` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `password` int(6) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` VALUES(1, 'John', 'male', 'johnhp@gmail.com', 123456);
INSERT INTO `user` VALUES(2, 'Emily', 'female', 'emilysh@gmail.com', 234567);
