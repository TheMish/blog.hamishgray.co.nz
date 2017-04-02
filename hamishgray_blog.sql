-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 02, 2017 at 05:27 PM
-- Server version: 5.6.33
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hamishgray_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `Blog`
--

CREATE TABLE `Blog` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Blog`
--

INSERT INTO `Blog` (`ID`, `PostsPerPage`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlogCategory`
--

CREATE TABLE `BlogCategory` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('BlogCategory') DEFAULT 'BlogCategory',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry`
--

CREATE TABLE `BlogEntry` (
  `ID` int(11) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext,
  `Tags` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry_Live`
--

CREATE TABLE `BlogEntry_Live` (
  `ID` int(11) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext,
  `Tags` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry_versions`
--

CREATE TABLE `BlogEntry_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext,
  `Tags` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder`
--

CREATE TABLE `BlogHolder` (
  `ID` int(11) NOT NULL,
  `AllowCustomAuthors` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder_Live`
--

CREATE TABLE `BlogHolder_Live` (
  `ID` int(11) NOT NULL,
  `AllowCustomAuthors` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder_versions`
--

CREATE TABLE `BlogHolder_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `AllowCustomAuthors` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost`
--

CREATE TABLE `BlogPost` (
  `ID` int(11) NOT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) DEFAULT NULL,
  `Summary` mediumtext,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `DoubleHeight` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ThumbnailImageID` int(11) NOT NULL DEFAULT '0',
  `Introduction` mediumtext,
  `Country` mediumtext,
  `City` mediumtext,
  `DateVisited` date DEFAULT NULL,
  `CountryID` int(11) NOT NULL DEFAULT '0',
  `CountryIDID` int(11) NOT NULL DEFAULT '0',
  `ProvideComments` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ModerationRequired` enum('None','Required','NonMembersOnly') DEFAULT 'None',
  `CommentsRequireLogin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost`
--

INSERT INTO `BlogPost` (`ID`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`, `DoubleHeight`, `ThumbnailImageID`, `Introduction`, `Country`, `City`, `DateVisited`, `CountryID`, `CountryIDID`, `ProvideComments`, `ModerationRequired`, `CommentsRequireLogin`) VALUES
(6, '2016-02-20 11:03:00', NULL, NULL, 3, 0, 30, 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.', '1', 'Napier', '2016-02-20', 10, 0, 0, 'None', 0),
(11, '2016-02-18 02:35:00', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 10, 0, 1, 'None', 0),
(12, '2016-03-04 04:03:00', NULL, NULL, 0, 1, 195, NULL, NULL, 'Bangkok', '2016-03-02', 1, 0, 1, 'None', 0),
(13, '2016-03-07 23:52:00', NULL, NULL, 0, 0, 220, NULL, NULL, 'Bangkok', '2016-03-03', 1, 0, 1, 'None', 0),
(14, '2016-03-08 00:34:00', NULL, NULL, 0, 1, 219, NULL, NULL, 'Bangkok', '2016-03-04', 1, 0, 1, 'None', 0),
(15, '2016-03-08 15:53:00', NULL, NULL, 0, 1, 221, NULL, NULL, 'Chiang Mai', '2016-03-05', 1, 0, 1, 'None', 0),
(16, '2016-03-11 09:41:00', NULL, NULL, 0, 1, 245, NULL, NULL, 'Chiang Mai', '2016-03-06', 1, 0, 1, 'None', 0),
(17, '2016-03-13 08:13:00', NULL, NULL, 0, 1, 265, NULL, NULL, 'Chiang Mai', '2016-03-06', 1, 0, 1, 'None', 0),
(18, '2016-03-13 08:40:00', NULL, NULL, 0, 1, 288, NULL, NULL, 'Chiang Mai', '2016-03-07', 1, 0, 1, 'None', 0),
(19, '2016-03-13 08:58:00', NULL, NULL, 0, 1, 304, NULL, NULL, 'Chiang Rai', '2016-03-08', 1, 0, 1, 'None', 0),
(20, '2016-03-17 15:03:00', NULL, NULL, 0, 1, 325, NULL, NULL, NULL, '2016-03-09', 2, 0, 1, 'None', 0),
(21, '2016-03-20 15:11:26', NULL, NULL, 0, 1, 360, NULL, NULL, 'Luang Prabang', '2016-03-10', 2, 0, 1, 'None', 0),
(23, '2016-03-28 14:00:00', NULL, NULL, 0, 1, 386, NULL, NULL, 'Luang Prabang', '2016-03-12', 2, 0, 1, 'None', 0),
(24, '2016-03-28 15:03:00', NULL, NULL, 0, 0, 0, NULL, NULL, 'Vientiane', '2016-03-17', 2, 0, 1, 'None', 0),
(25, '2016-03-28 15:10:00', NULL, NULL, 0, 1, 423, NULL, NULL, 'Hanoi', '2016-03-18', 3, 0, 1, 'None', 0),
(26, '2016-04-19 10:09:00', NULL, NULL, 0, 1, 461, NULL, NULL, 'Halong Bay', '2016-04-22', 3, 0, 1, 'None', 0),
(27, '2016-04-19 11:38:00', NULL, NULL, 0, 1, 480, NULL, NULL, 'Hoi An', '2016-04-25', 3, 0, 1, 'None', 0),
(28, '2016-04-21 20:38:21', NULL, NULL, 0, 1, 500, NULL, NULL, 'Phu Quoc', '2016-04-28', 3, 0, 1, 'None', 0),
(29, '2016-04-21 21:36:09', NULL, NULL, 0, 1, 514, NULL, NULL, 'Singapore', '2016-04-03', 4, 0, 1, 'None', 0),
(30, '2016-10-16 10:16:00', NULL, NULL, 0, 1, 566, NULL, NULL, NULL, NULL, 11, 0, 1, 'None', 0),
(31, '2016-10-16 10:30:00', NULL, NULL, 0, 1, 565, NULL, NULL, 'Copenhagen', '2016-05-08', 12, 0, 1, 'None', 0),
(32, '2016-10-16 10:55:00', NULL, NULL, 0, 1, 607, NULL, NULL, 'London', NULL, 11, 0, 1, 'None', 0),
(33, '2016-10-16 11:03:00', NULL, NULL, 0, 1, 620, NULL, NULL, 'Brighton', NULL, 11, 0, 1, 'None', 0),
(34, '2016-10-16 13:11:00', NULL, NULL, 0, 1, 657, NULL, NULL, 'Bath', NULL, 11, 0, 1, 'None', 0),
(35, '2016-10-16 15:48:00', NULL, NULL, 0, 1, 684, NULL, NULL, 'Paris', NULL, 6, 0, 1, 'None', 0),
(36, '2016-10-28 19:05:00', NULL, NULL, 0, 1, 741, NULL, NULL, 'Prague', NULL, 13, 0, 1, 'None', 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Authors`
--

CREATE TABLE `BlogPost_Authors` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost_Authors`
--

INSERT INTO `BlogPost_Authors` (`ID`, `BlogPostID`, `MemberID`) VALUES
(1, 6, 1),
(2, 7, 1),
(3, 8, 1),
(4, 9, 1),
(5, 10, 1),
(6, 11, 1),
(7, 12, 1),
(8, 13, 1),
(9, 14, 1),
(10, 15, 1),
(11, 16, 1),
(12, 17, 1),
(13, 18, 1),
(14, 19, 1),
(15, 20, 1),
(16, 21, 1),
(17, 23, 1),
(18, 24, 1),
(19, 25, 1),
(20, 26, 1),
(21, 27, 1),
(22, 28, 1),
(23, 29, 1),
(24, 30, 1),
(25, 31, 1),
(26, 32, 1),
(27, 33, 1),
(28, 34, 1),
(29, 35, 1),
(30, 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Categories`
--

CREATE TABLE `BlogPost_Categories` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `BlogCategoryID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Live`
--

CREATE TABLE `BlogPost_Live` (
  `ID` int(11) NOT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) DEFAULT NULL,
  `Summary` mediumtext,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `DoubleHeight` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ThumbnailImageID` int(11) NOT NULL DEFAULT '0',
  `Introduction` mediumtext,
  `Country` mediumtext,
  `City` mediumtext,
  `DateVisited` date DEFAULT NULL,
  `CountryID` int(11) NOT NULL DEFAULT '0',
  `CountryIDID` int(11) NOT NULL DEFAULT '0',
  `ProvideComments` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ModerationRequired` enum('None','Required','NonMembersOnly') DEFAULT 'None',
  `CommentsRequireLogin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost_Live`
--

INSERT INTO `BlogPost_Live` (`ID`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`, `DoubleHeight`, `ThumbnailImageID`, `Introduction`, `Country`, `City`, `DateVisited`, `CountryID`, `CountryIDID`, `ProvideComments`, `ModerationRequired`, `CommentsRequireLogin`) VALUES
(6, '2016-02-20 11:03:00', NULL, NULL, 3, 0, 30, 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.', '1', 'Napier', '2016-02-20', 10, 0, 0, 'None', 0),
(11, '2016-02-18 02:35:00', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 10, 0, 1, 'None', 0),
(12, '2016-03-04 04:03:00', NULL, NULL, 0, 1, 195, NULL, NULL, 'Bangkok', '2016-03-02', 1, 0, 1, 'None', 0),
(13, '2016-03-07 23:52:00', NULL, NULL, 0, 0, 220, NULL, NULL, 'Bangkok', '2016-03-03', 1, 0, 1, 'None', 0),
(14, '2016-03-08 00:34:00', NULL, NULL, 0, 1, 219, NULL, NULL, 'Bangkok', '2016-03-04', 1, 0, 1, 'None', 0),
(15, '2016-03-08 15:53:00', NULL, NULL, 0, 1, 221, NULL, NULL, 'Chiang Mai', '2016-03-05', 1, 0, 1, 'None', 0),
(16, '2016-03-11 09:41:00', NULL, NULL, 0, 1, 245, NULL, NULL, 'Chiang Mai', '2016-03-06', 1, 0, 1, 'None', 0),
(17, '2016-03-13 08:13:00', NULL, NULL, 0, 1, 265, NULL, NULL, 'Chiang Mai', '2016-03-06', 1, 0, 1, 'None', 0),
(18, '2016-03-13 08:40:00', NULL, NULL, 0, 1, 288, NULL, NULL, 'Chiang Mai', '2016-03-07', 1, 0, 1, 'None', 0),
(19, '2016-03-13 08:58:00', NULL, NULL, 0, 1, 304, NULL, NULL, 'Chiang Rai', '2016-03-08', 1, 0, 1, 'None', 0),
(20, '2016-03-17 15:03:00', NULL, NULL, 0, 1, 325, NULL, NULL, NULL, '2016-03-09', 2, 0, 1, 'None', 0),
(21, '2016-03-20 15:11:26', NULL, NULL, 0, 1, 360, NULL, NULL, 'Luang Prabang', '2016-03-10', 2, 0, 1, 'None', 0),
(23, '2016-03-28 14:00:00', NULL, NULL, 0, 1, 386, NULL, NULL, 'Luang Prabang', '2016-03-12', 2, 0, 1, 'None', 0),
(24, '2016-03-28 15:03:00', NULL, NULL, 0, 0, 0, NULL, NULL, 'Vientiane', '2016-03-17', 2, 0, 1, 'None', 0),
(25, '2016-03-28 15:10:00', NULL, NULL, 0, 1, 423, NULL, NULL, 'Hanoi', '2016-03-18', 3, 0, 1, 'None', 0),
(26, '2016-04-19 10:09:00', NULL, NULL, 0, 1, 461, NULL, NULL, 'Halong Bay', '2016-04-22', 3, 0, 1, 'None', 0),
(27, '2016-04-19 11:38:00', NULL, NULL, 0, 1, 480, NULL, NULL, 'Hoi An', '2016-04-25', 3, 0, 1, 'None', 0),
(28, '2016-04-21 20:38:21', NULL, NULL, 0, 1, 500, NULL, NULL, 'Phu Quoc', '2016-04-28', 3, 0, 1, 'None', 0),
(29, '2016-04-21 21:36:09', NULL, NULL, 0, 1, 514, NULL, NULL, 'Singapore', '2016-04-03', 4, 0, 1, 'None', 0),
(30, '2016-10-16 10:16:00', NULL, NULL, 0, 1, 566, NULL, NULL, NULL, NULL, 11, 0, 1, 'None', 0),
(31, '2016-10-16 10:30:00', NULL, NULL, 0, 1, 565, NULL, NULL, 'Copenhagen', '2016-05-08', 12, 0, 1, 'None', 0),
(32, '2016-10-16 10:55:00', NULL, NULL, 0, 1, 607, NULL, NULL, 'London', NULL, 11, 0, 1, 'None', 0),
(33, '2016-10-16 11:03:00', NULL, NULL, 0, 1, 620, NULL, NULL, 'Brighton', NULL, 11, 0, 1, 'None', 0),
(34, '2016-10-16 13:11:00', NULL, NULL, 0, 1, 657, NULL, NULL, 'Bath', NULL, 11, 0, 1, 'None', 0),
(35, '2016-10-16 15:48:00', NULL, NULL, 0, 1, 684, NULL, NULL, 'Paris', NULL, 6, 0, 1, 'None', 0),
(36, '2016-10-28 19:05:00', NULL, NULL, 0, 1, 741, NULL, NULL, 'Prague', NULL, 13, 0, 1, 'None', 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Tags`
--

CREATE TABLE `BlogPost_Tags` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `BlogTagID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_versions`
--

CREATE TABLE `BlogPost_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) DEFAULT NULL,
  `Summary` mediumtext,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `DoubleHeight` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ThumbnailImageID` int(11) NOT NULL DEFAULT '0',
  `Introduction` mediumtext,
  `Country` mediumtext,
  `City` mediumtext,
  `DateVisited` date DEFAULT NULL,
  `CountryID` int(11) NOT NULL DEFAULT '0',
  `CountryIDID` int(11) NOT NULL DEFAULT '0',
  `ProvideComments` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ModerationRequired` enum('None','Required','NonMembersOnly') DEFAULT 'None',
  `CommentsRequireLogin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost_versions`
--

INSERT INTO `BlogPost_versions` (`ID`, `RecordID`, `Version`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`, `DoubleHeight`, `ThumbnailImageID`, `Introduction`, `Country`, `City`, `DateVisited`, `CountryID`, `CountryIDID`, `ProvideComments`, `ModerationRequired`, `CommentsRequireLogin`) VALUES
(1, 6, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(2, 6, 2, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(3, 6, 3, '2016-02-11 11:03:00', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(4, 6, 4, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(5, 7, 1, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(6, 8, 1, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(7, 8, 2, '2016-02-11 11:03:00', NULL, NULL, 3, 1, 4, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(8, 9, 1, '2016-02-11 11:03:00', NULL, NULL, 3, 1, 4, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(9, 10, 1, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(10, 11, 1, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(11, 11, 2, '2016-02-11 11:03:00', NULL, NULL, 3, 1, 4, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(12, 12, 1, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(13, 9, 2, '2016-02-11 11:03:00', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(14, 7, 2, '2016-02-11 11:03:00', NULL, NULL, 0, 0, 6, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(15, 6, 5, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(16, 6, 6, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.', NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(17, 6, 7, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(18, 6, 8, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(19, 6, 9, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(20, 6, 10, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, 'Thailand', 'Bangkok', '2016-03-01', 0, 0, 0, 'None', 0),
(21, 6, 11, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, '1', 'Bangkok', '2016-03-01', 0, 0, 0, 'None', 0),
(22, 6, 12, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, 'Bangkok', '2016-03-01', 0, 0, 0, 'None', 0),
(23, 6, 13, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, 'Bangkok', '2016-03-01', 4, 0, 0, 'None', 0),
(24, 6, 14, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, 'Bangkok', '2016-03-01', 1, 0, 0, 'None', 0),
(25, 6, 15, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, 'Bangkok', '2016-03-01', 1, 0, 0, 'None', 0),
(26, 7, 3, '2016-02-11 11:03:00', NULL, NULL, 0, 0, 6, NULL, NULL, 'Vientiane', NULL, 2, 0, 0, 'None', 0),
(27, 7, 4, '2016-02-11 11:03:00', NULL, NULL, 0, 0, 6, NULL, NULL, 'Vientiane', '2016-02-18', 2, 0, 0, 'None', 0),
(28, 8, 3, '2016-02-11 11:03:00', NULL, NULL, 3, 1, 4, NULL, NULL, 'Hanoi', NULL, 3, 0, 0, 'None', 0),
(29, 9, 3, '2016-02-11 11:03:00', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 4, 0, 0, 'None', 0),
(30, 8, 4, '2016-02-11 11:03:00', NULL, NULL, 3, 1, 4, NULL, NULL, 'Hanoi', NULL, 3, 0, 0, 'None', 0),
(31, 8, 5, '2016-02-11 11:03:00', NULL, NULL, 3, 1, 4, NULL, NULL, 'Hanoi', NULL, 3, 0, 0, 'None', 0),
(32, 10, 2, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 9, 0, 0, 'None', 0),
(33, 10, 3, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, 'Bali', NULL, 9, 0, 0, 'None', 0),
(34, 6, 16, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, 'Bangkok', '2016-03-01', 1, 0, 0, 'None', 0),
(35, 6, 17, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 30, NULL, NULL, 'Bangkok', '2016-03-01', 1, 0, 0, 'None', 0),
(36, 6, 18, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 30, NULL, NULL, 'Napier', '2016-02-20', 10, 0, 0, 'None', 0),
(37, 6, 19, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 30, NULL, NULL, 'Napier', '2016-02-20', 10, 0, 0, 'None', 0),
(38, 6, 20, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 30, NULL, NULL, 'Napier', '2016-02-20', 10, 0, 0, 'None', 0),
(39, 6, 21, '2016-02-20 11:03:00', NULL, NULL, 3, 0, 30, NULL, NULL, 'Napier', '2016-02-20', 10, 0, 0, 'None', 0),
(40, 7, 5, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 'None', 0),
(41, 7, 6, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'None', 0),
(42, 7, 7, '2016-02-26 23:37:27', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'None', 0),
(43, 8, 6, '2016-02-20 11:03:00', NULL, NULL, 3, 0, 30, NULL, NULL, 'Napier', '2016-02-20', 10, 0, 0, 'None', 0),
(44, 9, 4, '2016-02-20 11:03:00', NULL, NULL, 3, 0, 30, NULL, NULL, 'Napier', '2016-02-20', 10, 0, 0, 'None', 0),
(45, 10, 4, '2016-02-20 11:03:00', NULL, NULL, 3, 0, 30, NULL, NULL, 'Napier', '2016-02-20', 10, 0, 0, 'None', 0),
(46, 7, 8, '2016-02-26 23:37:27', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'None', 0),
(47, 7, 9, '2016-02-26 23:37:00', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'None', 0),
(48, 11, 3, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(49, 11, 4, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(50, 11, 5, '2016-02-27 02:35:06', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(51, 11, 6, '2016-02-27 02:35:00', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(52, 11, 7, '2016-02-27 02:35:00', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(53, 11, 8, '2016-02-27 02:35:00', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 10, 0, 1, 'None', 0),
(54, 11, 9, '2016-02-27 02:35:00', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 10, 0, 1, 'None', 0),
(55, 11, 10, '2016-02-18 02:35:00', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 10, 0, 1, 'None', 0),
(56, 12, 2, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(57, 12, 3, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(58, 12, 4, NULL, NULL, NULL, 0, 1, 88, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(59, 12, 5, NULL, NULL, NULL, 0, 1, 88, NULL, NULL, 'Bangkok', '2016-03-02', 1, 0, 1, 'None', 0),
(60, 12, 6, NULL, NULL, NULL, 0, 1, 88, NULL, NULL, 'Bangkok', '2016-03-02', 1, 0, 1, 'None', 0),
(61, 12, 7, '2016-03-04 04:03:44', NULL, NULL, 0, 1, 88, NULL, NULL, 'Bangkok', '2016-03-02', 1, 0, 1, 'None', 0),
(62, 6, 22, '2016-02-20 11:03:00', NULL, NULL, 3, 1, 30, NULL, NULL, 'Napier', '2016-02-20', 10, 0, 0, 'None', 0),
(63, 12, 8, '2016-03-04 04:03:00', NULL, NULL, 0, 1, 88, NULL, NULL, 'Bangkok', '2016-03-02', 1, 0, 1, 'None', 0),
(64, 12, 9, '2016-03-04 04:03:00', NULL, NULL, 0, 1, 88, NULL, NULL, 'Bangkok', '2016-03-02', 1, 0, 1, 'None', 0),
(65, 12, 10, '2016-03-04 04:03:00', NULL, NULL, 0, 1, 195, NULL, NULL, 'Bangkok', '2016-03-02', 1, 0, 1, 'None', 0),
(66, 13, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(67, 13, 2, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(68, 13, 3, '2016-03-07 23:52:29', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(69, 13, 4, '2016-03-07 23:52:00', NULL, NULL, 0, 1, 0, NULL, NULL, 'Bangkok', '2016-03-03', 1, 0, 1, 'None', 0),
(70, 14, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(71, 14, 2, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(72, 14, 3, '2016-03-08 00:34:25', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(73, 14, 4, '2016-03-08 00:34:00', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(74, 14, 5, '2016-03-08 00:34:00', NULL, NULL, 0, 0, 0, NULL, NULL, 'Bangkok', '2016-03-04', 1, 0, 1, 'None', 0),
(75, 14, 6, '2016-03-08 00:34:00', NULL, NULL, 0, 1, 0, NULL, NULL, 'Bangkok', '2016-03-04', 1, 0, 1, 'None', 0),
(76, 14, 7, '2016-03-08 00:34:00', NULL, NULL, 0, 1, 219, NULL, NULL, 'Bangkok', '2016-03-04', 1, 0, 1, 'None', 0),
(77, 13, 5, '2016-03-07 23:52:00', NULL, NULL, 0, 1, 220, NULL, NULL, 'Bangkok', '2016-03-03', 1, 0, 1, 'None', 0),
(78, 14, 8, '2016-03-08 00:34:00', NULL, NULL, 0, 1, 219, NULL, NULL, 'Bangkok', '2016-03-04', 1, 0, 1, 'None', 0),
(79, 15, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(80, 15, 2, NULL, NULL, NULL, 0, 1, 221, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(81, 15, 3, '2016-03-08 15:53:09', NULL, NULL, 0, 1, 221, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(82, 15, 4, '2016-03-08 15:53:00', NULL, NULL, 0, 1, 221, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(83, 15, 5, '2016-03-08 15:53:00', NULL, NULL, 0, 1, 221, NULL, NULL, 'Chiang Mai', '2016-03-05', 1, 0, 1, 'None', 0),
(84, 15, 6, '2016-03-08 15:53:00', NULL, NULL, 0, 1, 221, NULL, NULL, 'Chiang Mai', '2016-03-05', 1, 0, 1, 'None', 0),
(85, 15, 7, '2016-03-08 15:53:00', NULL, NULL, 0, 1, 221, NULL, NULL, 'Chiang Mai', '2016-03-05', 1, 0, 1, 'None', 0),
(86, 15, 8, '2016-03-08 15:53:00', NULL, NULL, 0, 1, 221, NULL, NULL, 'Chiang Mai', '2016-03-05', 1, 0, 1, 'None', 0),
(87, 16, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(88, 16, 2, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(89, 16, 3, NULL, NULL, NULL, 0, 1, 245, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(90, 16, 4, '2016-03-11 09:41:38', NULL, NULL, 0, 1, 245, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(91, 16, 5, '2016-03-11 09:41:00', NULL, NULL, 0, 1, 245, NULL, NULL, 'Chiang Mai', '2016-03-06', 1, 0, 1, 'None', 0),
(92, 16, 6, '2016-03-11 09:41:00', NULL, NULL, 0, 1, 245, NULL, NULL, 'Chiang Mai', '2016-03-06', 1, 0, 1, 'None', 0),
(93, 15, 9, '2016-03-08 15:53:00', NULL, NULL, 0, 1, 221, NULL, NULL, 'Chiang Mai', '2016-03-05', 1, 0, 1, 'None', 0),
(94, 15, 10, '2016-03-08 15:53:00', NULL, NULL, 0, 1, 221, NULL, NULL, 'Chiang Mai', '2016-03-05', 1, 0, 1, 'None', 0),
(95, 17, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(96, 17, 2, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(97, 17, 3, NULL, NULL, NULL, 0, 1, 264, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(98, 17, 4, '2016-03-13 08:13:24', NULL, NULL, 0, 1, 264, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(99, 17, 5, '2016-03-13 08:13:00', NULL, NULL, 0, 1, 265, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(100, 17, 6, '2016-03-13 08:13:00', NULL, NULL, 0, 1, 265, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(101, 17, 7, '2016-03-13 08:13:00', NULL, NULL, 0, 1, 265, NULL, NULL, 'Chiang Mai', '2016-03-06', 1, 0, 1, 'None', 0),
(102, 17, 8, '2016-03-13 08:13:00', NULL, NULL, 0, 1, 265, NULL, NULL, 'Chiang Mai', '2016-03-06', 1, 0, 1, 'None', 0),
(103, 18, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(104, 18, 2, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(105, 18, 3, NULL, NULL, NULL, 0, 1, 288, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(106, 18, 4, '2016-03-13 08:40:26', NULL, NULL, 0, 1, 288, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(107, 18, 5, '2016-03-13 08:40:00', NULL, NULL, 0, 1, 288, NULL, NULL, 'Chiang Mai', '2016-03-07', 1, 0, 1, 'None', 0),
(108, 19, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(109, 19, 2, NULL, NULL, NULL, 0, 1, 304, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(110, 19, 3, '2016-03-13 08:58:22', NULL, NULL, 0, 1, 304, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(111, 19, 4, '2016-03-13 08:58:00', NULL, NULL, 0, 1, 304, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(112, 19, 5, '2016-03-13 08:58:00', NULL, NULL, 0, 1, 304, NULL, NULL, 'Chiang Rai', '2016-03-08', 1, 0, 1, 'None', 0),
(113, 19, 6, '2016-03-13 08:58:00', NULL, NULL, 0, 1, 304, NULL, NULL, 'Chiang Rai', '2016-03-08', 1, 0, 1, 'None', 0),
(114, 19, 7, '2016-03-13 08:58:00', NULL, NULL, 0, 1, 304, NULL, NULL, 'Chiang Rai', '2016-03-08', 1, 0, 1, 'None', 0),
(115, 18, 6, '2016-03-13 08:40:00', NULL, NULL, 0, 0, 288, NULL, NULL, 'Chiang Mai', '2016-03-07', 1, 0, 1, 'None', 0),
(116, 13, 6, '2016-03-07 23:52:00', NULL, NULL, 0, 0, 220, NULL, NULL, 'Bangkok', '2016-03-03', 1, 0, 1, 'None', 0),
(117, 6, 23, '2016-02-20 11:03:00', NULL, NULL, 3, 0, 30, NULL, NULL, 'Napier', '2016-02-20', 10, 0, 0, 'None', 0),
(118, 11, 11, '2016-02-18 02:35:00', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 10, 0, 1, 'None', 0),
(119, 18, 7, '2016-03-13 08:40:00', NULL, NULL, 0, 1, 288, NULL, NULL, 'Chiang Mai', '2016-03-07', 1, 0, 1, 'None', 0),
(120, 20, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(121, 20, 2, NULL, NULL, NULL, 0, 1, 325, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(122, 20, 3, '2016-03-17 15:03:19', NULL, NULL, 0, 1, 325, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(123, 20, 4, '2016-03-17 15:03:00', NULL, NULL, 0, 1, 325, NULL, NULL, NULL, '2016-03-09', 2, 0, 1, 'None', 0),
(124, 15, 11, '2016-03-08 15:53:00', NULL, NULL, 0, 1, 221, NULL, NULL, 'Chiang Mai', '2016-03-05', 1, 0, 1, 'None', 0),
(125, 21, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(126, 21, 2, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 'Luang Prabang', '2016-03-10', 2, 0, 1, 'None', 0),
(127, 21, 3, NULL, NULL, NULL, 0, 1, 360, NULL, NULL, 'Luang Prabang', '2016-03-10', 2, 0, 1, 'None', 0),
(128, 21, 4, '2016-03-20 15:11:26', NULL, NULL, 0, 1, 360, NULL, NULL, 'Luang Prabang', '2016-03-10', 2, 0, 1, 'None', 0),
(129, 23, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(130, 23, 2, NULL, NULL, NULL, 0, 1, 386, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(131, 23, 3, '2016-03-20 15:14:38', NULL, NULL, 0, 1, 386, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(132, 23, 4, '2016-03-20 15:14:38', NULL, NULL, 0, 1, 386, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(133, 23, 5, NULL, NULL, NULL, 0, 1, 386, NULL, NULL, 'Luang Prabang', '2016-03-15', 2, 0, 1, 'None', 0),
(134, 23, 6, '2016-03-28 14:00:25', NULL, NULL, 0, 1, 386, NULL, NULL, 'Luang Prabang', '2016-03-15', 2, 0, 1, 'None', 0),
(135, 23, 7, '2016-03-28 14:00:00', NULL, NULL, 0, 1, 386, NULL, NULL, 'Luang Prabang', '2016-03-12', 2, 0, 1, 'None', 0),
(136, 24, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(137, 24, 2, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(138, 24, 3, '2016-03-28 15:03:51', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(139, 24, 4, '2016-03-28 15:03:00', NULL, NULL, 0, 0, 0, NULL, NULL, 'Vientiane', '2016-03-17', 2, 0, 1, 'None', 0),
(140, 24, 5, '2016-03-28 15:03:00', NULL, NULL, 0, 0, 0, NULL, NULL, 'Vientiane', '2016-03-17', 2, 0, 1, 'None', 0),
(141, 25, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(142, 25, 2, NULL, NULL, NULL, 0, 1, 423, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(143, 25, 3, '2016-03-28 15:10:10', NULL, NULL, 0, 1, 423, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(144, 25, 4, '2016-03-28 15:10:00', NULL, NULL, 0, 1, 423, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(145, 25, 5, '2016-03-28 15:10:00', NULL, NULL, 0, 1, 423, NULL, NULL, 'Hanoi', '2016-03-18', 3, 0, 1, 'None', 0),
(146, 26, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(147, 26, 2, NULL, NULL, NULL, 0, 1, 461, NULL, NULL, 'Halong Bay', '2016-04-22', 3, 0, 1, 'None', 0),
(148, 26, 3, '2016-04-19 10:09:23', NULL, NULL, 0, 1, 461, NULL, NULL, 'Halong Bay', '2016-04-22', 3, 0, 1, 'None', 0),
(149, 26, 4, '2016-04-19 10:09:00', NULL, NULL, 0, 1, 461, NULL, NULL, 'Halong Bay', '2016-04-22', 3, 0, 1, 'None', 0),
(150, 27, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(151, 27, 2, NULL, NULL, NULL, 0, 1, 480, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(152, 27, 3, '2016-04-19 11:38:16', NULL, NULL, 0, 1, 480, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(153, 27, 4, '2016-04-19 11:38:00', NULL, NULL, 0, 1, 480, NULL, NULL, 'Hoi An', '2016-04-25', 3, 0, 1, 'None', 0),
(154, 28, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(155, 28, 2, NULL, NULL, NULL, 0, 1, 500, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(156, 28, 3, NULL, NULL, NULL, 0, 1, 500, NULL, NULL, 'Phu Quoc', '2016-04-28', 3, 0, 1, 'None', 0),
(157, 28, 4, '2016-04-21 20:38:21', NULL, NULL, 0, 1, 500, NULL, NULL, 'Phu Quoc', '2016-04-28', 3, 0, 1, 'None', 0),
(158, 29, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(159, 29, 2, NULL, NULL, NULL, 0, 1, 514, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(160, 29, 3, NULL, NULL, NULL, 0, 1, 514, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(161, 29, 4, NULL, NULL, NULL, 0, 1, 514, NULL, NULL, 'Singapore', '2016-04-03', 4, 0, 1, 'None', 0),
(162, 29, 5, '2016-04-21 21:36:09', NULL, NULL, 0, 1, 514, NULL, NULL, 'Singapore', '2016-04-03', 4, 0, 1, 'None', 0),
(163, 30, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(164, 30, 2, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(165, 30, 3, '2016-10-16 10:16:13', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(166, 30, 4, '2016-10-16 10:16:00', NULL, NULL, 0, 1, 533, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(167, 30, 5, '2016-10-16 10:16:00', NULL, NULL, 0, 1, 533, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(168, 30, 6, '2016-10-16 10:16:00', NULL, NULL, 0, 1, 533, NULL, NULL, NULL, NULL, 11, 0, 1, 'None', 0),
(169, 31, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(170, 31, 2, NULL, NULL, NULL, 0, 1, 565, NULL, NULL, 'Copenhagen', '2016-05-08', 12, 0, 1, 'None', 0),
(171, 31, 3, '2016-10-16 10:30:51', NULL, NULL, 0, 1, 565, NULL, NULL, 'Copenhagen', '2016-05-08', 12, 0, 1, 'None', 0),
(172, 30, 7, '2016-10-16 10:16:00', NULL, NULL, 0, 1, 566, NULL, NULL, NULL, NULL, 11, 0, 1, 'None', 0),
(173, 31, 4, '2016-10-16 10:30:00', NULL, NULL, 0, 1, 565, NULL, NULL, 'Copenhagen', '2016-05-08', 12, 0, 1, 'None', 0),
(174, 32, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(175, 32, 2, NULL, NULL, NULL, 0, 1, 607, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(176, 32, 3, '2016-10-16 10:55:26', NULL, NULL, 0, 1, 607, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(177, 32, 4, '2016-10-16 10:55:00', NULL, NULL, 0, 1, 607, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(178, 32, 5, '2016-10-16 10:55:00', NULL, NULL, 0, 1, 607, NULL, NULL, 'London', NULL, 11, 0, 1, 'None', 0),
(179, 33, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(180, 33, 2, NULL, NULL, NULL, 0, 1, 620, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(181, 33, 3, '2016-10-16 11:03:53', NULL, NULL, 0, 1, 620, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(182, 33, 4, '2016-10-16 11:03:00', NULL, NULL, 0, 1, 620, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(183, 33, 5, '2016-10-16 11:03:00', NULL, NULL, 0, 1, 620, NULL, NULL, 'Brighton', NULL, 11, 0, 1, 'None', 0),
(184, 34, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(185, 34, 2, NULL, NULL, NULL, 0, 1, 657, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(186, 34, 3, '2016-10-16 13:11:42', NULL, NULL, 0, 1, 657, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(187, 34, 4, '2016-10-16 13:11:00', NULL, NULL, 0, 1, 657, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(188, 34, 5, '2016-10-16 13:11:00', NULL, NULL, 0, 1, 657, NULL, NULL, 'Bath', NULL, 5, 0, 1, 'None', 0),
(189, 34, 6, '2016-10-16 13:11:00', NULL, NULL, 0, 1, 657, NULL, NULL, 'Bath', NULL, 11, 0, 1, 'None', 0),
(190, 35, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(191, 35, 2, NULL, NULL, NULL, 0, 1, 684, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(192, 35, 3, '2016-10-16 15:48:37', NULL, NULL, 0, 1, 684, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(193, 35, 4, '2016-10-16 15:48:00', NULL, NULL, 0, 1, 684, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(194, 35, 5, '2016-10-16 15:48:00', NULL, NULL, 0, 1, 684, NULL, NULL, NULL, NULL, 11, 0, 1, 'None', 0),
(195, 35, 6, '2016-10-16 15:48:00', NULL, NULL, 0, 1, 684, NULL, NULL, 'Paris', NULL, 6, 0, 1, 'None', 0),
(196, 36, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'None', 0),
(197, 36, 2, NULL, NULL, NULL, 0, 1, 741, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(198, 36, 3, '2016-10-28 19:05:40', NULL, NULL, 0, 1, 741, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(199, 36, 4, '2016-10-28 19:05:00', NULL, NULL, 0, 1, 741, NULL, NULL, NULL, NULL, 1, 0, 1, 'None', 0),
(200, 36, 5, '2016-10-28 19:05:00', NULL, NULL, 0, 1, 741, NULL, NULL, 'Prague', NULL, 13, 0, 1, 'None', 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlogSection`
--

CREATE TABLE `BlogSection` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('BlogSection') DEFAULT 'BlogSection',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` mediumtext,
  `Content` mediumtext,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `MainImageID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ImageLayout` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogSection`
--

INSERT INTO `BlogSection` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Content`, `Sort`, `MainImageID`, `ParentID`, `ImageLayout`) VALUES
(7, 'BlogSection', '2016-02-26 23:38:53', '2016-02-17 11:12:58', NULL, '<p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Donec ullamcorper nulla non metus auctor fringilla. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras mattis consectetur purus sit amet fermentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam quis risus eget urna mollis ornare vel eu leo.</p>', 1, 25, 8, 'FixedWidth'),
(8, 'BlogSection', '2016-02-27 03:13:52', '2016-02-24 01:55:36', NULL, NULL, 2, 0, 6, 'FixedWidth'),
(9, 'BlogSection', '2016-02-27 03:13:52', '2016-02-24 02:00:46', NULL, NULL, 3, 50, 6, 'FullWidth'),
(10, 'BlogSection', '2016-02-27 03:13:52', '2016-02-24 05:04:05', NULL, NULL, 4, 0, 6, 'FixedWidth'),
(11, 'BlogSection', '2016-02-27 03:13:52', '2016-02-24 05:04:59', NULL, NULL, 5, 86, 6, 'FullWidth'),
(12, 'BlogSection', '2016-02-27 02:56:55', '2016-02-27 02:35:35', NULL, '<p class="lead"><span>Hi, I\'m Hamish, </span>I\'m a designer, developer and budding travel photographer from Timaru, New Zealand.</p>\n<p>I\'m about to embark on a grand adventure around Southeast Asia and Europe, and I\'ve built this blog to share my journey. I\'ll be posting photos of the places I go, people I see, and things I do around the world, and writing about the experiences.</p>\n<p>I\'ve never blogged before so this will be quite a challenge, but I\'m determined to document the trip - even if it\'s just through photos!</p>\n<hr><h4>My itinerary is as follows:</h4>\n<ul><li>March 1 - Bangkok, Thailand</li>\n<li>March 4 - Chiang Mai, Thailand</li>\n<li>March 8 - Houay Xai, Laos</li>\n<li>March 9 - Ban Pak Nguey, Laos</li>\n<li>March 10 - Luang Prabang, Laos</li>\n<li>March 15 - Vang Vieng, Laos</li>\n<li>March 16 - Vientiane, Laos</li>\n<li>March 18 - Hanoi, Vietnam</li>\n<li>March 21 - Halong Bay, Vietnam</li>\n<li>March 24 - Hoi An, Vietnam</li>\n<li>March 28 - Phu Quoc, Vietnam</li>\n<li>April 1 - Ho Chi Minh City, Vietnam</li>\n<li>April 3 - Singapore</li>\n<li>April 7 - London, UK</li>\n<li>April 16 - Venice, Italy</li>\n<li>April 19 - Florence, Italy</li>\n<li>April 21 - Rome, Italy</li>\n<li>April 24 - Pisa, Italy</li>\n<li>April 25 - Cinque Terre, Italy</li>\n<li>April 28 - Nice, France</li>\n<li>April 29 - Marseille, France</li>\n<li>May 2 - Barcelona, Spain</li>\n</ul>', 1, 0, 11, 'FixedWidth'),
(13, 'BlogSection', '2016-02-27 03:20:44', '2016-02-27 03:13:42', 'Introduction', '<p class="lead">World famous in New Zealand, Napier holds the title for Art Deco capital. </p>\n<p>This amazing little city suffered a devastating<span> 7.9 magnitude</span> earthquake in 1931 which levelled much of the city, and killed 256 people. A further 525 aftershocks were recorded in the following two weeks.</p>\n<h4>Two years later, a new Napier rose out of the devastation. </h4>\n<p>A by-product of the horrible event was the flat land on which Marine Parade\'s gardens, memorials and soundshell were built. Napier\'s art deco and modernist architecture, already in vogue in the United States, was seen as an affordable way of rebuilding.</p>\n<p>Now, 85 years on, every year Napier puts on the Art Deco festival where people from all around the country come together in Napier in their best \'30s style clothing to celebrate the city, and enjoy the festivities!</p>', 1, 0, 6, 'FixedWidth'),
(14, 'BlogSection', '2016-03-04 04:17:21', '2016-03-04 04:03:35', NULL, NULL, 1, 0, 12, 'FixedWidth'),
(15, 'BlogSection', '2016-03-07 23:54:31', '2016-03-07 23:54:30', NULL, NULL, 1, 0, 13, 'FixedWidth'),
(16, 'BlogSection', '2016-03-08 00:09:52', '2016-03-08 00:09:50', NULL, NULL, 2, 199, 13, 'FullWidth'),
(17, 'BlogSection', '2016-03-08 00:12:44', '2016-03-08 00:12:42', NULL, NULL, 3, 0, 13, 'FixedWidth'),
(18, 'BlogSection', '2016-03-08 00:25:50', '2016-03-08 00:25:46', NULL, NULL, 4, 206, 13, 'FixedWidth'),
(19, 'BlogSection', '2016-03-08 00:37:27', '2016-03-08 00:37:15', NULL, NULL, 1, 0, 14, 'FixedWidth'),
(20, 'BlogSection', '2016-03-08 15:21:20', '2016-03-08 00:38:57', NULL, '<p class="lead" style="text-align: center;">Look out Chiang Mai!</p>', 2, 218, 14, 'FullWidth'),
(21, 'BlogSection', '2016-03-08 16:04:02', '2016-03-08 16:03:59', NULL, NULL, 1, 0, 15, 'FixedWidth'),
(22, 'BlogSection', '2016-03-08 16:08:46', '2016-03-08 16:05:56', NULL, NULL, 2, 228, 15, 'FixedWidth'),
(23, 'BlogSection', '2016-03-08 16:09:56', '2016-03-08 16:09:55', NULL, NULL, 3, 237, 15, 'FixedWidth'),
(24, 'BlogSection', '2016-03-11 09:46:47', '2016-03-11 09:46:45', NULL, NULL, 1, 0, 16, 'FixedWidth'),
(25, 'BlogSection', '2016-03-11 09:49:38', '2016-03-11 09:49:37', NULL, NULL, 2, 252, 16, 'FixedWidth'),
(26, 'BlogSection', '2016-03-11 09:54:46', '2016-03-11 09:51:01', NULL, NULL, 3, 259, 16, 'FullWidth'),
(27, 'BlogSection', '2016-03-11 09:52:43', '2016-03-11 09:52:40', NULL, NULL, 4, 0, 16, 'FixedWidth'),
(28, 'BlogSection', '2016-03-11 09:58:30', '2016-03-11 09:58:28', NULL, NULL, 5, 262, 16, 'FixedWidth'),
(29, 'BlogSection', '2016-03-17 15:31:23', '2016-03-13 08:20:23', NULL, '<p class="lead" style="text-align: center;">The music is blasting, the lights are pulsing, the crowd is pumping... Let the cabaret begin!</p>', 1, 0, 17, 'FixedWidth'),
(30, 'BlogSection', '2016-03-13 08:25:36', '2016-03-13 08:21:55', NULL, NULL, 2, 271, 17, 'FixedWidth'),
(31, 'BlogSection', '2016-03-13 08:24:51', '2016-03-13 08:23:26', NULL, NULL, 3, 280, 17, 'FixedWidth'),
(32, 'BlogSection', '2016-03-13 08:46:54', '2016-03-13 08:46:52', NULL, NULL, 1, 0, 18, 'FixedWidth'),
(33, 'BlogSection', '2016-03-13 08:49:51', '2016-03-13 08:49:50', NULL, NULL, 2, 294, 18, 'FixedWidth'),
(34, 'BlogSection', '2016-03-13 08:50:16', '2016-03-13 08:50:14', NULL, NULL, 3, 299, 18, 'FullWidth'),
(35, 'BlogSection', '2016-03-13 08:50:54', '2016-03-13 08:50:53', NULL, NULL, 4, 0, 18, 'FixedWidth'),
(36, 'BlogSection', '2016-03-13 09:13:13', '2016-03-13 09:00:08', NULL, NULL, 2, 0, 19, 'FixedWidth'),
(37, 'BlogSection', '2016-03-13 09:13:13', '2016-03-13 09:01:03', NULL, NULL, 4, 310, 19, 'FixedWidth'),
(38, 'BlogSection', '2016-03-13 09:13:13', '2016-03-13 09:02:30', NULL, NULL, 5, 317, 19, 'FixedWidth'),
(39, 'BlogSection', '2016-03-13 09:13:13', '2016-03-13 09:05:12', NULL, '<p>Our time at the white temple ends with a visit to the rightfully labelled "most beautiful toilet in Thailand". Surrounded by pristine white, and silver mirrored buildings and sculptures, the toilet block stands out like the grand palace in gold standing on the edge of the complex. </p>\n<p>Unfortunately I\'d already paid a visit to the significantly lower class toilets at the food hall over the road... but I couldn\'t say no to a little peek before hitting the road once more!</p>', 6, 0, 19, 'FixedWidth'),
(40, 'BlogSection', '2016-03-13 09:19:06', '2016-03-13 09:12:24', NULL, '<p>The idea behind the ornate sculptures and designs of the temple is that in order to reach enlightenment - and heaven (or nirvana if you\'re of the Buddhist persuasion) - you need to strip yourself of our materialistic and commercial obsessions. </p>\n<h4>The journey begins in hell. </h4>\n<p>You start on the other side of the moat, with hands, faces and creatures coming out of the sides of the bridge trying to trap and distract you. Walking past this is representative of you realising they are just holding you back, and by leaving them behind you move to a higher place. </p>\n<p>The journey then continues over the bridge which slowly leads you to the doors of the main temple. All is white and pure, with Buddha images, and sculptures of buddhist gods and beings. You are now on the doorstep of Heaven. </p>\n<p>The main hall of the temple itself is highly protected, you aren\'t allowed to take photos inside so as to retain some mystery as to what\'s on the other side. </p>', 3, 0, 19, 'FixedWidth'),
(41, 'BlogSection', '2016-08-06 07:57:59', '2016-03-13 09:12:44', NULL, '<p>The famous temple, Wat Rong Khun of Chiang Mai, better known simply as the White Temple is a sight to behold. After an over abundance of gold and red temples in Bangkok and Chiang Mai, the pristine white and mirror mosaic temple is a welcome change! </p>\n<p>The temple was, and is, being financed by one of Thailand\'s richest businessmen. It\'s said that he\'s spent upwards of 60 million NZD so far (1.5 billion Baht if you\'re wondering!). </p>', 1, 0, 19, 'FixedWidth'),
(42, 'BlogSection', '2016-03-17 15:06:25', '2016-03-17 15:06:23', NULL, NULL, 1, 0, 20, 'FixedWidth'),
(43, 'BlogSection', '2016-03-17 15:07:51', '2016-03-17 15:07:49', NULL, NULL, 2, 331, 20, 'FullWidth'),
(44, 'BlogSection', '2016-03-17 15:08:51', '2016-03-17 15:08:49', NULL, NULL, 3, 343, 20, 'FixedWidth'),
(45, 'BlogSection', '2016-03-17 15:13:10', '2016-03-17 15:12:50', NULL, NULL, 4, 359, 20, 'FixedWidth'),
(46, 'BlogSection', '2016-03-19 02:36:17', '2016-03-19 02:36:15', NULL, NULL, 1, 0, 21, 'FixedWidth'),
(47, 'BlogSection', '2016-03-20 15:06:42', '2016-03-19 02:37:25', NULL, NULL, 2, 368, 21, 'FullWidth'),
(48, 'BlogSection', '2016-03-19 17:11:03', '2016-03-19 17:04:22', NULL, NULL, 3, 376, 21, 'FullWidth'),
(49, 'BlogSection', '2016-03-19 17:09:40', '2016-03-19 17:09:38', NULL, NULL, 4, 0, 21, 'FixedWidth'),
(50, 'BlogSection', '2016-03-28 14:02:21', '2016-03-28 14:02:19', NULL, NULL, 1, 0, 23, 'FixedWidth'),
(51, 'BlogSection', '2016-03-28 14:04:53', '2016-03-28 14:04:50', NULL, NULL, 2, 394, 23, 'FullWidth'),
(52, 'BlogSection', '2016-03-28 15:04:50', '2016-03-28 15:04:47', NULL, NULL, 1, 0, 24, 'FixedWidth'),
(53, 'BlogSection', '2016-03-28 15:06:01', '2016-03-28 15:05:59', NULL, NULL, 2, 408, 24, 'FixedWidth'),
(54, 'BlogSection', '2016-03-28 15:06:47', '2016-03-28 15:06:44', NULL, NULL, 3, 417, 24, 'FixedWidth'),
(55, 'BlogSection', '2016-03-28 15:07:18', '2016-03-28 15:07:16', NULL, NULL, 4, 422, 24, 'FixedWidth'),
(56, 'BlogSection', '2016-03-28 15:22:28', '2016-03-28 15:12:51', NULL, NULL, 1, 0, 25, 'FixedWidth'),
(57, 'BlogSection', '2016-03-28 15:16:28', '2016-03-28 15:14:22', NULL, NULL, 2, 431, 25, 'FullWidth'),
(58, 'BlogSection', '2016-03-28 15:16:17', '2016-03-28 15:16:06', NULL, NULL, 3, 443, 25, 'FullWidth'),
(59, 'BlogSection', '2016-03-28 15:19:58', '2016-03-28 15:19:55', NULL, NULL, 4, 458, 25, 'FixedWidth'),
(60, 'BlogSection', '2016-03-28 15:21:24', '2016-03-28 15:21:20', NULL, NULL, 5, 459, 25, 'FullWidth'),
(61, 'BlogSection', '2016-04-19 10:11:07', '2016-04-19 10:11:06', NULL, NULL, 1, 0, 26, 'FixedWidth'),
(62, 'BlogSection', '2016-04-19 10:13:16', '2016-04-19 10:13:15', NULL, NULL, 2, 469, 26, 'FixedWidth'),
(63, 'BlogSection', '2016-04-19 10:15:04', '2016-04-19 10:15:03', NULL, NULL, 3, 474, 26, 'FixedWidth'),
(64, 'BlogSection', '2016-04-19 11:41:40', '2016-04-19 11:41:39', NULL, NULL, 1, 0, 27, 'FixedWidth'),
(65, 'BlogSection', '2016-04-19 11:42:30', '2016-04-19 11:42:29', NULL, NULL, 2, 486, 27, 'FixedWidth'),
(66, 'BlogSection', '2016-04-19 11:45:51', '2016-04-19 11:45:49', NULL, NULL, 3, 493, 27, 'FixedWidth'),
(67, 'BlogSection', '2016-04-21 20:36:19', '2016-04-21 20:36:18', NULL, NULL, 1, 0, 28, 'FixedWidth'),
(68, 'BlogSection', '2016-04-21 20:37:30', '2016-04-21 20:37:29', NULL, NULL, 2, 506, 28, 'FixedWidth'),
(69, 'BlogSection', '2016-04-21 20:38:02', '2016-04-21 20:38:00', NULL, NULL, 3, 513, 28, 'FixedWidth'),
(70, 'BlogSection', '2016-04-21 21:31:21', '2016-04-21 21:31:20', NULL, NULL, 1, 0, 29, 'FixedWidth'),
(71, 'BlogSection', '2016-04-21 21:32:45', '2016-04-21 21:32:43', NULL, NULL, 2, 522, 29, 'FixedWidth'),
(72, 'BlogSection', '2016-04-21 21:33:29', '2016-04-21 21:33:28', NULL, NULL, 3, 525, 29, 'FixedWidth'),
(73, 'BlogSection', '2016-04-21 21:36:02', '2016-04-21 21:36:01', NULL, NULL, 4, 528, 29, 'FixedWidth'),
(74, 'BlogSection', '2016-10-16 10:28:52', '2016-10-16 10:23:29', NULL, NULL, 1, 0, 30, 'FixedWidth'),
(76, 'BlogSection', '2016-10-16 10:25:25', '2016-10-16 10:25:24', NULL, NULL, 3, 542, 30, 'FixedWidth'),
(77, 'BlogSection', '2016-10-16 10:28:25', '2016-10-16 10:26:59', NULL, NULL, 4, 0, 30, 'FixedWidth'),
(78, 'BlogSection', '2016-10-16 10:27:38', '2016-10-16 10:27:37', NULL, NULL, 5, 560, 30, 'FixedWidth'),
(79, 'BlogSection', '2016-10-16 10:34:04', '2016-10-16 10:34:03', NULL, NULL, 1, 0, 31, 'FixedWidth'),
(80, 'BlogSection', '2016-10-16 10:36:36', '2016-10-16 10:36:36', NULL, NULL, 2, 573, 31, 'FixedWidth'),
(81, 'BlogSection', '2016-10-16 10:39:42', '2016-10-16 10:39:41', NULL, NULL, 3, 585, 31, 'FixedWidth'),
(82, 'BlogSection', '2016-10-16 10:41:17', '2016-10-16 10:41:16', NULL, NULL, 4, 596, 31, 'FixedWidth'),
(83, 'BlogSection', '2016-10-16 10:56:09', '2016-10-16 10:56:08', NULL, NULL, 1, 0, 32, 'FixedWidth'),
(84, 'BlogSection', '2016-10-16 10:56:31', '2016-10-16 10:56:30', NULL, NULL, 2, 615, 32, 'FixedWidth'),
(85, 'BlogSection', '2016-10-16 11:05:02', '2016-10-16 11:05:01', NULL, NULL, 1, 0, 33, 'FixedWidth'),
(86, 'BlogSection', '2016-10-16 11:05:56', '2016-10-16 11:05:55', NULL, NULL, 2, 624, 33, 'FixedWidth'),
(87, 'BlogSection', '2016-10-16 11:07:10', '2016-10-16 11:07:08', NULL, NULL, 3, 629, 33, 'FixedWidth'),
(88, 'BlogSection', '2016-10-16 11:21:00', '2016-10-16 11:20:59', NULL, NULL, 3, 638, 32, 'FixedWidth'),
(89, 'BlogSection', '2016-10-16 11:21:58', '2016-10-16 11:21:57', NULL, NULL, 4, 648, 32, 'FixedWidth'),
(90, 'BlogSection', '2016-10-16 13:15:15', '2016-10-16 13:13:37', NULL, NULL, 1, 666, 34, 'FixedWidth'),
(91, 'BlogSection', '2016-10-16 13:16:41', '2016-10-16 13:16:40', NULL, NULL, 2, 668, 34, 'FixedWidth'),
(92, 'BlogSection', '2016-10-16 13:17:49', '2016-10-16 13:17:47', NULL, NULL, 3, 675, 34, 'FixedWidth'),
(93, 'BlogSection', '2016-10-16 13:18:47', '2016-10-16 13:18:46', NULL, NULL, 4, 679, 34, 'FixedWidth'),
(94, 'BlogSection', '2016-10-16 16:01:20', '2016-10-16 16:01:19', NULL, NULL, 1, 0, 35, 'FixedWidth'),
(95, 'BlogSection', '2016-10-16 16:07:05', '2016-10-16 16:04:03', NULL, NULL, 2, 716, 35, 'FixedWidth'),
(96, 'BlogSection', '2016-10-16 16:06:02', '2016-10-16 16:06:01', NULL, NULL, 3, 703, 35, 'FixedWidth'),
(97, 'BlogSection', '2016-10-16 16:08:03', '2016-10-16 16:08:02', NULL, NULL, 4, 717, 35, 'FixedWidth'),
(98, 'BlogSection', '2016-10-16 16:09:55', '2016-10-16 16:09:53', NULL, NULL, 5, 725, 35, 'FixedWidth'),
(99, 'BlogSection', '2016-10-16 16:11:08', '2016-10-16 16:11:07', NULL, NULL, 6, 730, 35, 'FixedWidth'),
(100, 'BlogSection', '2016-10-28 19:23:41', '2016-10-28 19:11:50', NULL, NULL, 1, 0, 36, 'FixedWidth'),
(101, 'BlogSection', '2016-10-28 19:23:41', '2016-10-28 19:14:40', NULL, NULL, 2, 748, 36, 'FixedWidth'),
(102, 'BlogSection', '2016-10-28 19:23:41', '2016-10-28 19:16:47', NULL, NULL, 3, 753, 36, 'FixedWidth'),
(104, 'BlogSection', '2016-10-28 19:23:41', '2016-10-28 19:19:28', NULL, NULL, 4, 762, 36, 'FixedWidth'),
(105, 'BlogSection', '2016-10-28 19:23:41', '2016-10-28 19:21:34', NULL, NULL, 5, 769, 36, 'FixedWidth'),
(106, 'BlogSection', '2016-10-28 19:23:41', '2016-10-28 19:22:17', NULL, NULL, 7, 772, 36, 'FixedWidth'),
(107, 'BlogSection', '2016-10-28 19:23:41', '2016-10-28 19:23:26', NULL, NULL, 6, 775, 36, 'FixedWidth');

-- --------------------------------------------------------

--
-- Table structure for table `BlogSection_SectionImages`
--

CREATE TABLE `BlogSection_SectionImages` (
  `ID` int(11) NOT NULL,
  `BlogSectionID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogSection_SectionImages`
--

INSERT INTO `BlogSection_SectionImages` (`ID`, `BlogSectionID`, `ImageID`, `SortOrder`) VALUES
(1, 6, 12, 1),
(2, 6, 15, 2),
(3, 6, 16, 3),
(4, 6, 14, 4),
(5, 7, 26, 1),
(6, 7, 27, 2),
(7, 7, 28, 3),
(8, 7, 29, 4),
(9, 8, 35, 1),
(10, 8, 38, 2),
(11, 8, 36, 3),
(12, 8, 40, 4),
(13, 8, 34, 5),
(14, 8, 44, 6),
(15, 8, 42, 7),
(16, 8, 49, 8),
(17, 10, 57, 1),
(20, 10, 63, 4),
(21, 10, 64, 5),
(22, 10, 65, 6),
(23, 10, 70, 7),
(24, 10, 78, 8),
(162, 14, 124, 1),
(163, 14, 123, 2),
(164, 14, 129, 3),
(165, 14, 126, 4),
(166, 14, 127, 5),
(167, 14, 125, 6),
(168, 14, 130, 7),
(169, 14, 132, 8),
(170, 14, 128, 9),
(171, 14, 131, 10),
(172, 14, 133, 11),
(173, 14, 134, 12),
(174, 14, 135, 13),
(175, 14, 136, 14),
(176, 14, 137, 15),
(177, 14, 138, 16),
(178, 14, 139, 17),
(179, 14, 140, 18),
(180, 14, 141, 19),
(181, 14, 142, 20),
(182, 14, 143, 21),
(183, 14, 144, 22),
(184, 14, 145, 23),
(185, 14, 146, 24),
(186, 14, 147, 25),
(187, 14, 148, 26),
(188, 14, 149, 27),
(189, 14, 150, 28),
(190, 14, 151, 29),
(191, 14, 152, 30),
(192, 14, 153, 31),
(193, 14, 154, 32),
(194, 14, 155, 33),
(195, 14, 156, 34),
(196, 14, 157, 35),
(197, 14, 158, 36),
(198, 14, 159, 37),
(199, 14, 160, 38),
(200, 14, 161, 39),
(201, 14, 162, 40),
(202, 14, 163, 41),
(203, 14, 164, 42),
(204, 14, 165, 43),
(205, 14, 166, 44),
(206, 14, 167, 45),
(207, 14, 168, 46),
(208, 14, 169, 47),
(209, 14, 170, 48),
(210, 14, 171, 49),
(211, 14, 172, 50),
(212, 14, 173, 51),
(213, 14, 174, 52),
(214, 14, 175, 53),
(215, 14, 176, 54),
(216, 14, 177, 55),
(217, 14, 178, 56),
(218, 14, 179, 57),
(219, 14, 180, 58),
(220, 14, 181, 59),
(221, 14, 182, 60),
(222, 14, 183, 61),
(223, 14, 184, 62),
(224, 14, 187, 63),
(225, 14, 188, 64),
(226, 14, 191, 65),
(227, 14, 190, 66),
(228, 15, 197, 1),
(229, 15, 198, 2),
(230, 17, 200, 1),
(231, 17, 201, 2),
(232, 17, 203, 4),
(233, 17, 204, 3),
(234, 17, 202, 5),
(235, 17, 205, 6),
(236, 18, 208, 2),
(237, 18, 209, 3),
(238, 18, 210, 4),
(239, 18, 207, 1),
(240, 19, 212, 1),
(241, 19, 213, 2),
(242, 19, 216, 6),
(243, 19, 217, 5),
(244, 19, 214, 3),
(245, 19, 215, 4),
(246, 21, 226, 1),
(247, 21, 223, 3),
(248, 21, 225, 4),
(249, 21, 222, 2),
(250, 22, 229, 1),
(251, 22, 230, 2),
(252, 22, 231, 3),
(253, 22, 232, 4),
(254, 22, 233, 5),
(255, 22, 234, 6),
(256, 22, 235, 7),
(257, 22, 236, 8),
(258, 23, 242, 1),
(259, 23, 243, 2),
(260, 23, 241, 3),
(261, 23, 240, 4),
(262, 23, 238, 5),
(263, 23, 239, 6),
(264, 24, 247, 1),
(265, 24, 246, 2),
(266, 25, 251, 1),
(267, 25, 253, 2),
(268, 25, 248, 3),
(269, 25, 249, 4),
(270, 27, 257, 1),
(271, 27, 255, 2),
(272, 27, 258, 3),
(273, 27, 256, 4),
(274, 28, 261, 1),
(275, 28, 260, 2),
(276, 29, 267, 1),
(277, 29, 268, 2),
(278, 29, 269, 3),
(279, 29, 270, 4),
(280, 30, 272, 1),
(283, 30, 275, 4),
(284, 30, 277, 5),
(285, 30, 276, 6),
(292, 30, 285, 7),
(293, 30, 286, 8),
(294, 32, 293, 1),
(295, 32, 291, 2),
(296, 32, 290, 3),
(297, 32, 292, 4),
(298, 33, 298, 4),
(299, 33, 296, 1),
(300, 33, 295, 2),
(301, 33, 297, 3),
(302, 35, 301, 2),
(303, 35, 300, 3),
(304, 35, 302, 4),
(305, 35, 303, 1),
(306, 36, 308, 1),
(307, 36, 307, 2),
(308, 36, 309, 3),
(309, 36, 306, 4),
(310, 37, 312, 1),
(311, 37, 314, 2),
(312, 37, 316, 3),
(313, 37, 315, 4),
(314, 37, 311, 5),
(315, 37, 313, 6),
(316, 38, 319, 1),
(317, 38, 321, 3),
(318, 38, 320, 4),
(319, 38, 322, 2),
(320, 39, 323, 1),
(321, 39, 324, 2),
(322, 42, 330, 1),
(323, 42, 328, 2),
(324, 42, 327, 3),
(325, 42, 329, 4),
(326, 43, 333, 1),
(327, 43, 332, 2),
(328, 43, 336, 3),
(329, 43, 337, 4),
(330, 43, 335, 5),
(331, 43, 339, 6),
(332, 43, 341, 7),
(333, 43, 342, 8),
(334, 43, 340, 9),
(335, 44, 346, 1),
(336, 44, 349, 2),
(337, 44, 344, 3),
(338, 44, 345, 4),
(339, 45, 352, 2),
(340, 45, 356, 3),
(341, 45, 351, 4),
(342, 45, 353, 5),
(343, 45, 357, 6),
(344, 45, 355, 1),
(345, 46, 366, 2),
(346, 46, 367, 3),
(347, 46, 364, 4),
(348, 46, 362, 5),
(349, 46, 363, 6),
(350, 46, 365, 1),
(359, 48, 375, 1),
(360, 48, 374, 2),
(361, 48, 377, 3),
(362, 48, 373, 4),
(365, 47, 372, 3),
(366, 47, 370, 4),
(367, 47, 371, 4),
(368, 47, 378, 1),
(369, 49, 381, 1),
(370, 49, 379, 2),
(371, 49, 385, 4),
(372, 49, 382, 3),
(373, 49, 383, 5),
(374, 49, 384, 6),
(375, 50, 389, 1),
(376, 50, 391, 2),
(377, 50, 392, 3),
(378, 50, 393, 4),
(379, 51, 395, 1),
(380, 51, 400, 2),
(381, 51, 396, 3),
(382, 51, 397, 4),
(383, 52, 405, 1),
(384, 52, 404, 2),
(385, 52, 403, 3),
(386, 52, 402, 4),
(387, 53, 410, 2),
(388, 53, 409, 1),
(389, 54, 421, 4),
(390, 54, 418, 1),
(391, 54, 420, 2),
(392, 54, 419, 3),
(399, 57, 432, 1),
(400, 57, 435, 4),
(401, 57, 434, 3),
(402, 57, 433, 2),
(403, 58, 445, 4),
(404, 58, 440, 1),
(405, 58, 439, 2),
(406, 58, 444, 3),
(407, 59, 448, 3),
(408, 59, 450, 4),
(409, 59, 451, 5),
(410, 59, 453, 6),
(411, 59, 454, 7),
(412, 59, 455, 8),
(413, 59, 456, 9),
(414, 59, 457, 10),
(415, 59, 447, 2),
(416, 59, 446, 1),
(419, 56, 425, 3),
(420, 56, 426, 4),
(421, 56, 428, 5),
(422, 56, 430, 6),
(423, 56, 429, 7),
(424, 56, 460, 2),
(425, 61, 465, 1),
(426, 61, 463, 2),
(427, 61, 464, 3),
(428, 61, 466, 5),
(429, 61, 467, 6),
(430, 61, 468, 4),
(431, 62, 470, 1),
(432, 62, 471, 2),
(433, 62, 472, 3),
(434, 62, 473, 4),
(435, 63, 475, 1),
(436, 63, 476, 2),
(437, 63, 479, 4),
(438, 63, 477, 3),
(439, 64, 482, 1),
(440, 64, 483, 2),
(441, 64, 484, 3),
(442, 64, 485, 4),
(443, 65, 487, 1),
(444, 65, 488, 2),
(445, 65, 489, 3),
(446, 65, 490, 4),
(447, 65, 491, 5),
(448, 65, 492, 6),
(449, 66, 494, 1),
(450, 66, 495, 2),
(451, 66, 496, 3),
(452, 66, 497, 4),
(453, 66, 498, 5),
(454, 66, 499, 6),
(455, 67, 502, 1),
(456, 67, 503, 2),
(457, 67, 504, 3),
(458, 67, 505, 4),
(459, 68, 507, 1),
(460, 68, 509, 2),
(461, 68, 508, 3),
(462, 68, 510, 4),
(463, 69, 512, 1),
(464, 69, 511, 2),
(465, 70, 521, 6),
(466, 70, 520, 5),
(467, 70, 516, 1),
(468, 70, 518, 2),
(469, 70, 517, 3),
(470, 70, 519, 4),
(471, 71, 523, 1),
(472, 71, 524, 2),
(473, 72, 527, 1),
(474, 72, 526, 2),
(475, 73, 529, 1),
(476, 73, 530, 2),
(477, 73, 531, 3),
(478, 73, 532, 4),
(479, 74, 538, 1),
(480, 74, 539, 2),
(481, 75, 541, 1),
(482, 75, 540, 2),
(483, 76, 543, 1),
(484, 76, 544, 2),
(485, 77, 548, 1),
(486, 77, 550, 2),
(487, 77, 549, 3),
(488, 77, 546, 4),
(490, 77, 545, 6),
(491, 77, 551, 7),
(492, 77, 552, 8),
(493, 77, 554, 10),
(494, 77, 556, 11),
(495, 77, 553, 12),
(496, 77, 559, 13),
(497, 77, 557, 14),
(498, 77, 555, 15),
(499, 77, 558, 9),
(500, 78, 561, 1),
(501, 78, 562, 2),
(502, 74, 563, 3),
(503, 74, 564, 4),
(504, 79, 567, 1),
(505, 79, 572, 2),
(506, 79, 568, 3),
(507, 79, 569, 4),
(508, 80, 574, 1),
(509, 80, 575, 2),
(510, 80, 576, 3),
(511, 80, 577, 4),
(512, 80, 578, 5),
(513, 80, 580, 6),
(514, 80, 582, 7),
(515, 80, 581, 8),
(516, 80, 583, 9),
(517, 80, 579, 10),
(518, 81, 589, 1),
(519, 81, 586, 2),
(520, 81, 588, 3),
(521, 81, 587, 4),
(522, 81, 591, 6),
(523, 81, 593, 7),
(524, 81, 592, 8),
(525, 81, 594, 9),
(526, 81, 595, 10),
(527, 81, 590, 5),
(528, 82, 598, 1),
(529, 82, 597, 2),
(530, 82, 600, 3),
(531, 82, 599, 4),
(532, 82, 601, 5),
(533, 82, 602, 6),
(534, 82, 603, 7),
(535, 82, 604, 8),
(536, 82, 606, 9),
(537, 82, 605, 10),
(538, 83, 614, 1),
(539, 83, 611, 2),
(540, 83, 609, 3),
(541, 83, 610, 4),
(542, 83, 612, 5),
(543, 83, 613, 6),
(544, 84, 616, 1),
(545, 84, 619, 2),
(546, 84, 617, 3),
(547, 84, 618, 4),
(548, 85, 622, 1),
(549, 85, 623, 2),
(550, 86, 627, 2),
(551, 86, 625, 1),
(552, 87, 637, 4),
(553, 87, 633, 1),
(554, 87, 630, 2),
(555, 87, 631, 3),
(556, 87, 632, 5),
(557, 87, 634, 6),
(558, 87, 636, 7),
(559, 87, 635, 8),
(560, 88, 639, 1),
(561, 88, 640, 2),
(562, 88, 645, 3),
(563, 88, 642, 4),
(564, 88, 641, 5),
(565, 88, 643, 6),
(566, 88, 646, 7),
(567, 88, 644, 8),
(568, 89, 652, 1),
(569, 89, 651, 2),
(570, 89, 650, 3),
(571, 89, 655, 4),
(572, 89, 653, 5),
(573, 89, 656, 6),
(588, 90, 667, 1),
(590, 90, 659, 6),
(591, 90, 664, 3),
(592, 90, 662, 4),
(593, 90, 660, 5),
(594, 90, 661, 7),
(595, 91, 669, 1),
(596, 91, 671, 3),
(597, 91, 670, 4),
(598, 91, 672, 2),
(599, 91, 673, 5),
(600, 91, 674, 6),
(601, 92, 676, 2),
(602, 92, 678, 1),
(603, 93, 682, 3),
(604, 93, 683, 4),
(605, 93, 680, 1),
(606, 93, 681, 2),
(607, 94, 690, 1),
(608, 94, 689, 2),
(609, 94, 692, 4),
(610, 94, 691, 5),
(611, 94, 688, 6),
(612, 94, 695, 7),
(613, 94, 694, 8),
(614, 94, 693, 3),
(616, 95, 700, 3),
(617, 95, 701, 4),
(619, 95, 702, 6),
(620, 95, 697, 1),
(621, 96, 706, 2),
(622, 96, 707, 3),
(623, 96, 708, 4),
(624, 96, 709, 5),
(625, 96, 705, 6),
(626, 96, 704, 1),
(627, 96, 715, 7),
(628, 96, 712, 8),
(629, 96, 710, 9),
(630, 96, 714, 10),
(631, 96, 713, 11),
(632, 96, 711, 12),
(633, 97, 722, 1),
(634, 97, 721, 2),
(635, 97, 718, 3),
(636, 97, 720, 4),
(637, 97, 723, 5),
(638, 97, 724, 6),
(639, 98, 727, 1),
(640, 98, 729, 2),
(641, 99, 731, 1),
(642, 99, 732, 2),
(643, 99, 733, 3),
(644, 99, 735, 4),
(645, 99, 738, 5),
(646, 99, 736, 6),
(647, 99, 739, 7),
(648, 99, 740, 8),
(649, 100, 744, 1),
(650, 100, 746, 3),
(651, 100, 747, 4),
(652, 100, 745, 2),
(653, 101, 749, 1),
(654, 101, 750, 3),
(655, 101, 751, 4),
(656, 101, 752, 2),
(657, 102, 758, 5),
(658, 102, 756, 4),
(659, 102, 757, 3),
(660, 102, 754, 1),
(661, 102, 755, 2),
(662, 102, 759, 6),
(663, 102, 760, 7),
(664, 102, 761, 8),
(665, 103, 763, 1),
(666, 103, 764, 2),
(667, 103, 766, 3),
(668, 103, 765, 4),
(669, 103, 767, 5),
(670, 103, 768, 6),
(671, 104, 763, 1),
(672, 104, 764, 2),
(673, 104, 766, 3),
(674, 104, 765, 4),
(675, 104, 767, 5),
(676, 104, 768, 6),
(677, 105, 770, 1),
(678, 105, 771, 2),
(679, 106, 773, 1),
(680, 106, 774, 2),
(681, 107, 778, 3),
(682, 107, 779, 4),
(683, 107, 777, 1),
(684, 107, 776, 2);

-- --------------------------------------------------------

--
-- Table structure for table `BlogTag`
--

CREATE TABLE `BlogTag` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('BlogTag') DEFAULT 'BlogTag',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogTree`
--

CREATE TABLE `BlogTree` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `LandingPageFreshness` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogTree_Live`
--

CREATE TABLE `BlogTree_Live` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `LandingPageFreshness` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogTree_versions`
--

CREATE TABLE `BlogTree_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(255) DEFAULT NULL,
  `LandingPageFreshness` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Contributors`
--

CREATE TABLE `Blog_Contributors` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Editors`
--

CREATE TABLE `Blog_Editors` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Live`
--

CREATE TABLE `Blog_Live` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Blog_Live`
--

INSERT INTO `Blog_Live` (`ID`, `PostsPerPage`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Blog_versions`
--

CREATE TABLE `Blog_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Blog_versions`
--

INSERT INTO `Blog_versions` (`ID`, `RecordID`, `Version`, `PostsPerPage`) VALUES
(1, 1, 3, 0),
(2, 1, 4, 0),
(3, 1, 5, 0),
(4, 1, 6, 0),
(5, 1, 7, 0),
(6, 1, 8, 0),
(7, 1, 9, 0),
(8, 1, 10, 0),
(9, 1, 11, 0),
(10, 1, 12, 0),
(11, 1, 13, 0),
(12, 1, 14, 0),
(13, 1, 15, 0),
(14, 22, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Writers`
--

CREATE TABLE `Blog_Writers` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Comment`
--

CREATE TABLE `Comment` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Comment') CHARACTER SET utf8 DEFAULT 'Comment',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Comment` mediumtext CHARACTER SET utf8,
  `Email` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `URL` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `BaseClass` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Moderated` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `IsSpam` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `AllowHtml` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `SecretToken` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Depth` int(11) NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `ParentCommentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Comment`
--

INSERT INTO `Comment` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Comment`, `Email`, `URL`, `BaseClass`, `Moderated`, `IsSpam`, `ParentID`, `AllowHtml`, `SecretToken`, `Depth`, `AuthorID`, `ParentCommentID`) VALUES
(1, 'Comment', '2016-03-09 08:24:46', '2016-03-09 08:24:46', 'karen', 'enjoying pics guys, looks amazin,keep them comin xx', 'kenandkaren@xtra.co.nz', NULL, 'BlogPost', 1, 0, 13, 0, NULL, 1, 0, 0),
(2, 'Comment', '2016-03-13 09:08:51', '2016-03-13 09:08:51', 'Yvonne ', 'Enjoying seeing your amazing journey! :) ', 'ym.gray@hotmail.com', NULL, 'BlogPost', 1, 0, 18, 0, NULL, 1, 0, 0),
(3, 'Comment', '2016-03-13 09:31:12', '2016-03-13 09:31:12', 'Stu', 'I have been waiting to see pictures of this place ,it looks absolutely amazing ,i can only imagine how cool it would be in person . ', 'graystuart@hotmail.com', NULL, 'BlogPost', 1, 0, 19, 0, NULL, 1, 0, 0),
(4, 'Comment', '2016-03-19 04:26:04', '2016-03-19 04:26:04', 'Nana', 'Looks like having amazing time. love nana xx', 'eleanortutty@slingshot.co.nz', NULL, 'BlogPost', 1, 0, 18, 0, NULL, 1, 0, 0),
(5, 'Comment', '2016-04-21 21:57:09', '2016-04-21 21:57:09', 'Yvonne ', 'Singapore looks amazing! Great photos! ', 'ym.gray@hotmail.com', NULL, 'BlogPost', 1, 0, 29, 0, NULL, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ContactRequest`
--

CREATE TABLE `ContactRequest` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('ContactRequest') DEFAULT 'ContactRequest',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` mediumtext,
  `Email` mediumtext,
  `Message` mediumtext,
  `Sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Country`
--

CREATE TABLE `Country` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Country') DEFAULT 'Country',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` mediumtext,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `PatternID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Country`
--

INSERT INTO `Country` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Sort`, `PatternID`) VALUES
(1, 'Country', '2016-02-17 11:02:27', '2016-02-16 08:56:41', 'Thailand', 0, 22),
(2, 'Country', '2016-02-17 10:57:20', '2016-02-16 08:56:51', 'Laos', 0, 18),
(3, 'Country', '2016-02-17 10:58:56', '2016-02-16 08:56:59', 'Vietnam', 0, 19),
(4, 'Country', '2016-02-17 11:01:36', '2016-02-16 08:57:09', 'Singapore', 0, 21),
(6, 'Country', '2016-10-16 15:59:55', '2016-02-16 08:57:44', 'France', 0, 687),
(7, 'Country', '2016-02-16 08:57:52', '2016-02-16 08:57:52', 'Italy', 0, 0),
(8, 'Country', '2016-02-16 08:57:59', '2016-02-16 08:57:59', 'Spain', 0, 0),
(9, 'Country', '2016-02-17 11:08:11', '2016-02-17 11:03:19', 'Indonesia', 0, 24),
(10, 'Country', '2016-02-23 22:16:06', '2016-02-23 21:31:50', 'New Zealand', 0, 33),
(11, 'Country', '2016-10-16 10:22:24', '2016-10-16 10:20:21', 'United Kingdom', 0, 537),
(12, 'Country', '2016-10-16 10:22:14', '2016-10-16 10:20:31', 'Denmark', 0, 536),
(13, 'Country', '2016-10-28 19:09:35', '2016-10-28 19:09:35', 'Czech Republic', 0, 743);

-- --------------------------------------------------------

--
-- Table structure for table `Country_BlogPosts`
--

CREATE TABLE `Country_BlogPosts` (
  `ID` int(11) NOT NULL,
  `CountryID` int(11) NOT NULL DEFAULT '0',
  `BlogPostID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage`
--

CREATE TABLE `ErrorPage` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ErrorPage`
--

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_Live`
--

CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ErrorPage_Live`
--

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_versions`
--

CREATE TABLE `ErrorPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `File`
--

CREATE TABLE `File` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('File','Folder','Image','Image_Cached') DEFAULT 'File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Filename` mediumtext,
  `Content` mediumtext,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `File`
--

INSERT INTO `File` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(1, 'Folder', '2016-02-11 22:41:25', '2016-02-11 22:41:25', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 1, 0, 0),
(2, 'Image', '2016-02-11 22:41:25', '2016-02-11 22:41:25', 'SilverStripeLogo.png', 'SilverStripeLogo.png', 'assets/Uploads/SilverStripeLogo.png', NULL, 1, 1, 0),
(3, 'Image', '2016-02-11 11:33:34', '2016-02-11 11:33:34', 'wallhaven-193742.jpg', 'wallhaven 193742', 'assets/Uploads/wallhaven-193742.jpg', NULL, 1, 1, 1),
(4, 'Image', '2016-02-11 11:33:40', '2016-02-11 11:33:40', 'wallhaven-193743.jpg', 'wallhaven 193743', 'assets/Uploads/wallhaven-193743.jpg', NULL, 1, 1, 1),
(5, 'Image', '2016-02-13 00:04:11', '2016-02-13 00:04:11', 'logo.png', 'logo', 'assets/Uploads/logo.png', NULL, 1, 1, 1),
(6, 'Image', '2016-02-13 00:13:14', '2016-02-13 00:13:14', 'wallhaven-15170.jpg', 'wallhaven 15170', 'assets/Uploads/wallhaven-15170.jpg', NULL, 1, 1, 1),
(7, 'Image', '2016-02-13 11:06:30', '2016-02-13 11:06:30', 'banner-bg.jpg', 'banner bg', 'assets/Uploads/banner-bg.jpg', NULL, 1, 1, 1),
(8, 'Image', '2016-02-13 11:30:45', '2016-02-13 11:30:45', 'wallhaven-193744.jpg', 'wallhaven 193744', 'assets/Uploads/wallhaven-193744.jpg', NULL, 1, 1, 1),
(9, 'Image', '2016-02-13 11:31:02', '2016-02-13 11:31:02', 'banner-bg2.jpg', 'banner bg2', 'assets/Uploads/banner-bg2.jpg', NULL, 1, 1, 1),
(10, 'Image', '2016-02-13 11:31:40', '2016-02-13 11:31:40', 'wallhaven-193745.jpg', 'wallhaven 193745', 'assets/Uploads/wallhaven-193745.jpg', NULL, 1, 1, 1),
(11, 'Image', '2016-02-14 03:58:06', '2016-02-14 03:58:06', 'Mums-camera-25.06.2011-235.jpg', 'Mums camera 25.06.2011 235', 'assets/Uploads/Mums-camera-25.06.2011-235.jpg', NULL, 1, 1, 1),
(12, 'Image', '2016-02-14 04:05:49', '2016-02-14 04:05:49', 'Mums-camera-25.06.2011-230.jpg', 'Mums camera 25.06.2011 230', 'assets/Uploads/Mums-camera-25.06.2011-230.jpg', NULL, 1, 1, 1),
(13, 'Image', '2016-02-14 04:05:51', '2016-02-14 04:05:51', 'Mums-camera-25.06.2011-237.jpg', 'Mums camera 25.06.2011 237', 'assets/Uploads/Mums-camera-25.06.2011-237.jpg', NULL, 1, 1, 1),
(14, 'Image', '2016-02-14 04:05:59', '2016-02-14 04:05:59', 'Mums-camera-25.06.2011-240.jpg', 'Mums camera 25.06.2011 240', 'assets/Uploads/Mums-camera-25.06.2011-240.jpg', NULL, 1, 1, 1),
(15, 'Image', '2016-02-14 04:06:00', '2016-02-14 04:06:00', 'Mums-camera-25.06.2011-238.jpg', 'Mums camera 25.06.2011 238', 'assets/Uploads/Mums-camera-25.06.2011-238.jpg', NULL, 1, 1, 1),
(16, 'Image', '2016-02-14 04:06:02', '2016-02-14 04:06:02', 'Mums-camera-25.06.2011-239.jpg', 'Mums camera 25.06.2011 239', 'assets/Uploads/Mums-camera-25.06.2011-239.jpg', NULL, 1, 1, 1),
(17, 'Image', '2016-02-17 10:37:10', '2016-02-17 10:37:10', 'thailand-pattern.jpg', 'thailand pattern', 'assets/Uploads/thailand-pattern.jpg', NULL, 1, 1, 1),
(18, 'Image', '2016-02-17 10:57:18', '2016-02-17 10:57:18', 'laos-pattern.jpg', 'laos pattern', 'assets/Uploads/laos-pattern.jpg', NULL, 1, 1, 1),
(19, 'Image', '2016-02-17 10:58:53', '2016-02-17 10:58:53', 'vietnam-pattern.jpg', 'vietnam pattern', 'assets/Uploads/vietnam-pattern.jpg', NULL, 1, 1, 1),
(20, 'Image', '2016-02-17 11:00:17', '2016-02-17 11:00:17', 'vietnam.jpg', 'vietnam', 'assets/Uploads/vietnam.jpg', NULL, 1, 1, 1),
(21, 'Image', '2016-02-17 11:01:34', '2016-02-17 11:01:34', 'singapore-pattern.jpg', 'singapore pattern', 'assets/Uploads/singapore-pattern.jpg', NULL, 1, 1, 1),
(22, 'Image', '2016-02-17 11:02:25', '2016-02-17 11:02:25', 'thailand-pattern2.jpg', 'thailand pattern2', 'assets/Uploads/thailand-pattern2.jpg', NULL, 1, 1, 1),
(23, 'Image', '2016-02-17 11:07:55', '2016-02-17 11:05:08', 'indonesia-pattern.jpg', 'indonesia pattern', 'assets/Uploads/indonesia-pattern.jpg', NULL, 1, 1, 1),
(24, 'Image', '2016-02-17 11:08:06', '2016-02-17 11:08:06', 'Indonesia-pattern2.jpg', 'Indonesia pattern2', 'assets/Uploads/Indonesia-pattern2.jpg', NULL, 1, 1, 1),
(25, 'Image', '2016-02-17 11:13:31', '2016-02-17 11:13:31', 'Mums-camera-26.06.2011-238.jpg', 'Mums camera 26.06.2011 238', 'assets/Uploads/Mums-camera-26.06.2011-238.jpg', NULL, 1, 1, 1),
(26, 'Image', '2016-02-17 11:14:25', '2016-02-17 11:14:25', 'Mums-camera-25.06.2011-233.jpg', 'Mums camera 25.06.2011 233', 'assets/Uploads/Mums-camera-25.06.2011-233.jpg', NULL, 1, 1, 1),
(27, 'Image', '2016-02-17 11:14:27', '2016-02-17 11:14:27', 'Mums-camera-25.06.2011-234.jpg', 'Mums camera 25.06.2011 234', 'assets/Uploads/Mums-camera-25.06.2011-234.jpg', NULL, 1, 1, 1),
(28, 'Image', '2016-02-17 11:14:30', '2016-02-17 11:14:30', 'Mums-camera-26.06.2011-235.jpg', 'Mums camera 26.06.2011 235', 'assets/Uploads/Mums-camera-26.06.2011-235.jpg', NULL, 1, 1, 1),
(29, 'Image', '2016-02-17 11:14:32', '2016-02-17 11:14:32', 'Mums-camera-25.06.2011-236.jpg', 'Mums camera 25.06.2011 236', 'assets/Uploads/Mums-camera-25.06.2011-236.jpg', NULL, 1, 1, 1),
(30, 'Image', '2016-02-23 21:31:17', '2016-02-23 21:31:17', 'napier-banner.jpg', 'napier banner', 'assets/Uploads/napier-banner.jpg', NULL, 1, 1, 1),
(31, 'Image', '2016-02-23 21:42:49', '2016-02-23 21:42:49', 'napier-banner2.jpg', 'napier banner2', 'assets/Uploads/napier-banner2.jpg', NULL, 1, 1, 1),
(32, 'Image', '2016-02-23 22:15:04', '2016-02-23 22:15:04', '23215OL04-w.jpg', '23215OL04 w', 'assets/Uploads/23215OL04-w.jpg', NULL, 1, 1, 1),
(33, 'Image', '2016-02-23 22:16:04', '2016-02-23 22:16:04', '25566.jpg', '25566', 'assets/Uploads/25566.jpg', NULL, 1, 1, 1),
(34, 'Image', '2016-02-24 01:53:59', '2016-02-24 01:53:59', 'DSC02295.JPG', 'DSC02295', 'assets/Uploads/DSC02295.JPG', NULL, 1, 1, 1),
(35, 'Image', '2016-02-24 01:54:08', '2016-02-24 01:54:08', 'DSC02278.JPG', 'DSC02278', 'assets/Uploads/DSC02278.JPG', NULL, 1, 1, 1),
(36, 'Image', '2016-02-24 01:54:16', '2016-02-24 01:54:16', 'DSC02289.JPG', 'DSC02289', 'assets/Uploads/DSC02289.JPG', NULL, 1, 1, 1),
(37, 'Image', '2016-02-24 01:54:17', '2016-02-24 01:54:17', 'DSC02291.JPG', 'DSC02291', 'assets/Uploads/DSC02291.JPG', NULL, 1, 1, 1),
(38, 'Image', '2016-02-24 01:54:18', '2016-02-24 01:54:18', 'DSC02286.JPG', 'DSC02286', 'assets/Uploads/DSC02286.JPG', NULL, 1, 1, 1),
(39, 'Image', '2016-02-24 01:54:20', '2016-02-24 01:54:20', 'DSC02296.JPG', 'DSC02296', 'assets/Uploads/DSC02296.JPG', NULL, 1, 1, 1),
(40, 'Image', '2016-02-24 01:54:22', '2016-02-24 01:54:22', 'DSC02293.JPG', 'DSC02293', 'assets/Uploads/DSC02293.JPG', NULL, 1, 1, 1),
(41, 'Image', '2016-02-24 01:54:23', '2016-02-24 01:54:23', 'DSC02297.JPG', 'DSC02297', 'assets/Uploads/DSC02297.JPG', NULL, 1, 1, 1),
(42, 'Image', '2016-02-24 01:54:24', '2016-02-24 01:54:24', 'DSC02299.JPG', 'DSC02299', 'assets/Uploads/DSC02299.JPG', NULL, 1, 1, 1),
(43, 'Image', '2016-02-24 01:54:25', '2016-02-24 01:54:25', 'DSC02300.JPG', 'DSC02300', 'assets/Uploads/DSC02300.JPG', NULL, 1, 1, 1),
(44, 'Image', '2016-02-24 01:54:26', '2016-02-24 01:54:26', 'DSC02298.JPG', 'DSC02298', 'assets/Uploads/DSC02298.JPG', NULL, 1, 1, 1),
(45, 'Image', '2016-02-24 01:54:27', '2016-02-24 01:54:27', 'DSC02301.JPG', 'DSC02301', 'assets/Uploads/DSC02301.JPG', NULL, 1, 1, 1),
(46, 'Image', '2016-02-24 01:54:28', '2016-02-24 01:54:28', 'DSC02302.JPG', 'DSC02302', 'assets/Uploads/DSC02302.JPG', NULL, 1, 1, 1),
(47, 'Image', '2016-02-24 01:54:29', '2016-02-24 01:54:29', 'DSC02303.JPG', 'DSC02303', 'assets/Uploads/DSC02303.JPG', NULL, 1, 1, 1),
(48, 'Image', '2016-02-24 01:54:29', '2016-02-24 01:54:29', 'DSC02304.JPG', 'DSC02304', 'assets/Uploads/DSC02304.JPG', NULL, 1, 1, 1),
(49, 'Image', '2016-02-24 01:54:30', '2016-02-24 01:54:30', 'DSC02305.JPG', 'DSC02305', 'assets/Uploads/DSC02305.JPG', NULL, 1, 1, 1),
(50, 'Image', '2016-02-24 02:00:36', '2016-02-24 02:00:36', 'DSC02364.JPG', 'DSC02364', 'assets/Uploads/DSC02364.JPG', NULL, 1, 1, 1),
(51, 'Image', '2016-02-24 02:12:04', '2016-02-24 02:12:04', 'logo-grey.png', 'logo grey', 'assets/Uploads/logo-grey.png', NULL, 1, 1, 1),
(52, 'Image', '2016-02-24 02:29:24', '2016-02-24 02:29:24', 'hg-logo-gold.png', 'hg logo gold', 'assets/Uploads/hg-logo-gold.png', NULL, 1, 1, 1),
(53, 'Image', '2016-02-24 02:29:29', '2016-02-24 02:29:29', 'hg-logo.png', 'hg logo', 'assets/Uploads/hg-logo.png', NULL, 1, 1, 1),
(54, 'Image', '2016-02-24 02:32:05', '2016-02-24 02:32:05', 'hg-logo-gold2.png', 'hg logo gold2', 'assets/Uploads/hg-logo-gold2.png', NULL, 1, 1, 1),
(55, 'Image', '2016-02-24 02:32:56', '2016-02-24 02:32:56', 'hg-logo2.png', 'hg logo2', 'assets/Uploads/hg-logo2.png', NULL, 1, 1, 1),
(56, 'Image', '2016-02-24 05:00:00', '2016-02-24 05:00:00', 'DSC02345.JPG', 'DSC02345', 'assets/Uploads/DSC02345.JPG', NULL, 1, 1, 1),
(57, 'Image', '2016-02-24 05:00:09', '2016-02-24 05:00:09', 'DSC02346.JPG', 'DSC02346', 'assets/Uploads/DSC02346.JPG', NULL, 1, 1, 1),
(58, 'Image', '2016-02-24 05:00:11', '2016-02-24 05:00:11', 'DSC02347.JPG', 'DSC02347', 'assets/Uploads/DSC02347.JPG', NULL, 1, 1, 1),
(59, 'Image', '2016-02-24 05:00:12', '2016-02-24 05:00:12', 'DSC02349.JPG', 'DSC02349', 'assets/Uploads/DSC02349.JPG', NULL, 1, 1, 1),
(60, 'Image', '2016-02-24 05:00:13', '2016-02-24 05:00:13', 'DSC02351.JPG', 'DSC02351', 'assets/Uploads/DSC02351.JPG', NULL, 1, 1, 1),
(61, 'Image', '2016-02-24 05:00:14', '2016-02-24 05:00:14', 'DSC02344.JPG', 'DSC02344', 'assets/Uploads/DSC02344.JPG', NULL, 1, 1, 1),
(62, 'Image', '2016-02-24 05:00:16', '2016-02-24 05:00:16', 'DSC02343.JPG', 'DSC02343', 'assets/Uploads/DSC02343.JPG', NULL, 1, 1, 1),
(63, 'Image', '2016-02-24 05:00:17', '2016-02-24 05:00:17', 'DSC02352.JPG', 'DSC02352', 'assets/Uploads/DSC02352.JPG', NULL, 1, 1, 1),
(64, 'Image', '2016-02-24 05:00:18', '2016-02-24 05:00:18', 'DSC02354.JPG', 'DSC02354', 'assets/Uploads/DSC02354.JPG', NULL, 1, 1, 1),
(65, 'Image', '2016-02-24 05:00:19', '2016-02-24 05:00:19', 'DSC02355.JPG', 'DSC02355', 'assets/Uploads/DSC02355.JPG', NULL, 1, 1, 1),
(66, 'Image', '2016-02-24 05:00:25', '2016-02-24 05:00:25', 'DSC02356.JPG', 'DSC02356', 'assets/Uploads/DSC02356.JPG', NULL, 1, 1, 1),
(67, 'Image', '2016-02-24 05:00:26', '2016-02-24 05:00:26', 'DSC02359.JPG', 'DSC02359', 'assets/Uploads/DSC02359.JPG', NULL, 1, 1, 1),
(68, 'Image', '2016-02-24 05:00:27', '2016-02-24 05:00:27', 'DSC02360.JPG', 'DSC02360', 'assets/Uploads/DSC02360.JPG', NULL, 1, 1, 1),
(69, 'Image', '2016-02-24 05:00:28', '2016-02-24 05:00:28', 'DSC2365.JPG', 'DSC2365', 'assets/Uploads/DSC2365.JPG', NULL, 1, 1, 1),
(70, 'Image', '2016-02-24 05:00:29', '2016-02-24 05:00:29', 'DSC02366.JPG', 'DSC02366', 'assets/Uploads/DSC02366.JPG', NULL, 1, 1, 1),
(71, 'Image', '2016-02-24 05:00:30', '2016-02-24 05:00:30', 'DSC02361.JPG', 'DSC02361', 'assets/Uploads/DSC02361.JPG', NULL, 1, 1, 1),
(72, 'Image', '2016-02-24 05:00:31', '2016-02-24 05:00:31', 'DSC02367.JPG', 'DSC02367', 'assets/Uploads/DSC02367.JPG', NULL, 1, 1, 1),
(73, 'Image', '2016-02-24 05:00:36', '2016-02-24 05:00:36', 'DSC02368.JPG', 'DSC02368', 'assets/Uploads/DSC02368.JPG', NULL, 1, 1, 1),
(74, 'Image', '2016-02-24 05:00:37', '2016-02-24 05:00:37', 'DSC02370.JPG', 'DSC02370', 'assets/Uploads/DSC02370.JPG', NULL, 1, 1, 1),
(75, 'Image', '2016-02-24 05:00:41', '2016-02-24 05:00:41', 'DSC02369.JPG', 'DSC02369', 'assets/Uploads/DSC02369.JPG', NULL, 1, 1, 1),
(76, 'Image', '2016-02-24 05:00:42', '2016-02-24 05:00:42', 'DSC02371.JPG', 'DSC02371', 'assets/Uploads/DSC02371.JPG', NULL, 1, 1, 1),
(77, 'Image', '2016-02-24 05:00:43', '2016-02-24 05:00:43', 'DSC02374.JPG', 'DSC02374', 'assets/Uploads/DSC02374.JPG', NULL, 1, 1, 1),
(78, 'Image', '2016-02-24 05:00:45', '2016-02-24 05:00:45', 'DSC02372.JPG', 'DSC02372', 'assets/Uploads/DSC02372.JPG', NULL, 1, 1, 1),
(79, 'Image', '2016-02-24 05:00:46', '2016-02-24 05:00:46', 'DSC02375.JPG', 'DSC02375', 'assets/Uploads/DSC02375.JPG', NULL, 1, 1, 1),
(80, 'Image', '2016-02-24 05:00:50', '2016-02-24 05:00:50', 'DSC02376.JPG', 'DSC02376', 'assets/Uploads/DSC02376.JPG', NULL, 1, 1, 1),
(81, 'Image', '2016-02-24 05:00:51', '2016-02-24 05:00:51', 'DSC02384.JPG', 'DSC02384', 'assets/Uploads/DSC02384.JPG', NULL, 1, 1, 1),
(82, 'Image', '2016-02-24 05:00:52', '2016-02-24 05:00:52', 'DSC02392.JPG', 'DSC02392', 'assets/Uploads/DSC02392.JPG', NULL, 1, 1, 1),
(83, 'Image', '2016-02-24 05:00:53', '2016-02-24 05:00:53', 'DSC02386.JPG', 'DSC02386', 'assets/Uploads/DSC02386.JPG', NULL, 1, 1, 1),
(84, 'Image', '2016-02-24 05:00:54', '2016-02-24 05:00:54', 'DSC02390.JPG', 'DSC02390', 'assets/Uploads/DSC02390.JPG', NULL, 1, 1, 1),
(85, 'Image', '2016-02-24 05:00:55', '2016-02-24 05:00:55', 'DSC02387.JPG', 'DSC02387', 'assets/Uploads/DSC02387.JPG', NULL, 1, 1, 1),
(86, 'Image', '2016-02-24 05:04:55', '2016-02-24 05:04:55', 'DSC2362.JPG', 'DSC2362', 'assets/Uploads/DSC2362.JPG', NULL, 1, 1, 1),
(87, 'Image', '2016-02-27 02:39:04', '2016-02-27 02:39:04', 'banner-bg3.jpg', 'banner bg3', 'assets/Uploads/banner-bg3.jpg', NULL, 1, 1, 1),
(88, 'Image', '2016-03-04 03:51:32', '2016-03-04 03:51:32', 'DSC02637.jpg', 'DSC02637', 'assets/Uploads/DSC02637.jpg', NULL, 1, 1, 1),
(89, 'Image', '2016-03-04 03:55:16', '2016-03-04 03:55:16', 'DSC02451.jpg', 'DSC02451', 'assets/Uploads/DSC02451.jpg', NULL, 1, 1, 1),
(90, 'Image', '2016-03-04 03:55:17', '2016-03-04 03:55:17', 'DSC02444.jpg', 'DSC02444', 'assets/Uploads/DSC02444.jpg', NULL, 1, 1, 1),
(91, 'Image', '2016-03-04 03:55:18', '2016-03-04 03:55:18', 'DSC02459.jpg', 'DSC02459', 'assets/Uploads/DSC02459.jpg', NULL, 1, 1, 1),
(92, 'Image', '2016-03-04 03:55:22', '2016-03-04 03:55:22', 'DSC02440.jpg', 'DSC02440', 'assets/Uploads/DSC02440.jpg', NULL, 1, 1, 1),
(93, 'Image', '2016-03-04 03:55:25', '2016-03-04 03:55:25', 'DSC02494.jpg', 'DSC02494', 'assets/Uploads/DSC02494.jpg', NULL, 1, 1, 1),
(94, 'Image', '2016-03-04 03:55:43', '2016-03-04 03:55:43', 'DSC02538.jpg', 'DSC02538', 'assets/Uploads/DSC02538.jpg', NULL, 1, 1, 1),
(95, 'Image', '2016-03-04 03:55:45', '2016-03-04 03:55:45', 'DSC02517.jpg', 'DSC02517', 'assets/Uploads/DSC02517.jpg', NULL, 1, 1, 1),
(96, 'Image', '2016-03-04 03:55:45', '2016-03-04 03:55:45', 'DSC02480.jpg', 'DSC02480', 'assets/Uploads/DSC02480.jpg', NULL, 1, 1, 1),
(97, 'Image', '2016-03-04 03:55:47', '2016-03-04 03:55:47', 'DSC02502.jpg', 'DSC02502', 'assets/Uploads/DSC02502.jpg', NULL, 1, 1, 1),
(98, 'Image', '2016-03-04 03:55:48', '2016-03-04 03:55:48', 'DSC02535.jpg', 'DSC02535', 'assets/Uploads/DSC02535.jpg', NULL, 1, 1, 1),
(99, 'Image', '2016-03-04 03:55:49', '2016-03-04 03:55:49', 'DSC02510.jpg', 'DSC02510', 'assets/Uploads/DSC02510.jpg', NULL, 1, 1, 1),
(100, 'Image', '2016-03-04 03:56:00', '2016-03-04 03:56:00', 'DSC02540.jpg', 'DSC02540', 'assets/Uploads/DSC02540.jpg', NULL, 1, 1, 1),
(101, 'Image', '2016-03-04 03:56:20', '2016-03-04 03:56:20', 'DSC02548.jpg', 'DSC02548', 'assets/Uploads/DSC02548.jpg', NULL, 1, 1, 1),
(102, 'Image', '2016-03-04 03:57:00', '2016-03-04 03:57:00', 'DSC02557.jpg', 'DSC02557', 'assets/Uploads/DSC02557.jpg', NULL, 1, 1, 1),
(103, 'Image', '2016-03-04 03:57:21', '2016-03-04 03:57:21', 'DSC02565.jpg', 'DSC02565', 'assets/Uploads/DSC02565.jpg', NULL, 1, 1, 1),
(104, 'Image', '2016-03-04 03:57:58', '2016-03-04 03:57:58', 'DSC02570.jpg', 'DSC02570', 'assets/Uploads/DSC02570.jpg', NULL, 1, 1, 1),
(105, 'Image', '2016-03-04 03:58:19', '2016-03-04 03:58:19', 'DSC02573.jpg', 'DSC02573', 'assets/Uploads/DSC02573.jpg', NULL, 1, 1, 1),
(106, 'Image', '2016-03-04 03:59:33', '2016-03-04 03:59:33', 'DSC02553.jpg', 'DSC02553', 'assets/Uploads/DSC02553.jpg', NULL, 1, 1, 1),
(107, 'Image', '2016-03-04 03:59:34', '2016-03-04 03:59:34', 'DSC02569.jpg', 'DSC02569', 'assets/Uploads/DSC02569.jpg', NULL, 1, 1, 1),
(108, 'Image', '2016-03-04 03:59:48', '2016-03-04 03:59:48', 'DSC02559.jpg', 'DSC02559', 'assets/Uploads/DSC02559.jpg', NULL, 1, 1, 1),
(109, 'Image', '2016-03-04 04:00:04', '2016-03-04 04:00:04', 'DSC02566.jpg', 'DSC02566', 'assets/Uploads/DSC02566.jpg', NULL, 1, 1, 1),
(110, 'Image', '2016-03-04 04:00:06', '2016-03-04 04:00:06', 'DSC02585.jpg', 'DSC02585', 'assets/Uploads/DSC02585.jpg', NULL, 1, 1, 1),
(111, 'Image', '2016-03-04 04:00:08', '2016-03-04 04:00:08', 'DSC02587.jpg', 'DSC02587', 'assets/Uploads/DSC02587.jpg', NULL, 1, 1, 1),
(112, 'Image', '2016-03-04 04:00:20', '2016-03-04 04:00:20', 'DSC02593.jpg', 'DSC02593', 'assets/Uploads/DSC02593.jpg', NULL, 1, 1, 1),
(113, 'Image', '2016-03-04 04:00:56', '2016-03-04 04:00:56', 'DSC02596.jpg', 'DSC02596', 'assets/Uploads/DSC02596.jpg', NULL, 1, 1, 1),
(114, 'Image', '2016-03-04 04:01:22', '2016-03-04 04:01:22', 'DSC02584.jpg', 'DSC02584', 'assets/Uploads/DSC02584.jpg', NULL, 1, 1, 1),
(115, 'Image', '2016-03-04 04:01:23', '2016-03-04 04:01:23', 'DSC02606.jpg', 'DSC02606', 'assets/Uploads/DSC02606.jpg', NULL, 1, 1, 1),
(116, 'Image', '2016-03-04 04:01:25', '2016-03-04 04:01:25', 'DSC02597.jpg', 'DSC02597', 'assets/Uploads/DSC02597.jpg', NULL, 1, 1, 1),
(117, 'Image', '2016-03-04 04:01:26', '2016-03-04 04:01:26', 'DSC02598.jpg', 'DSC02598', 'assets/Uploads/DSC02598.jpg', NULL, 1, 1, 1),
(118, 'Image', '2016-03-04 04:01:27', '2016-03-04 04:01:27', 'DSC02603.jpg', 'DSC02603', 'assets/Uploads/DSC02603.jpg', NULL, 1, 1, 1),
(119, 'Image', '2016-03-04 04:01:33', '2016-03-04 04:01:33', 'DSC02623.jpg', 'DSC02623', 'assets/Uploads/DSC02623.jpg', NULL, 1, 1, 1),
(120, 'Image', '2016-03-04 04:01:34', '2016-03-04 04:01:34', 'DSC02628.jpg', 'DSC02628', 'assets/Uploads/DSC02628.jpg', NULL, 1, 1, 1),
(121, 'Image', '2016-03-04 04:01:38', '2016-03-04 04:01:38', 'DSC02620.jpg', 'DSC02620', 'assets/Uploads/DSC02620.jpg', NULL, 1, 1, 1),
(122, 'Image', '2016-03-04 04:01:43', '2016-03-04 04:01:43', 'DSC2638.jpg', 'DSC2638', 'assets/Uploads/DSC2638.jpg', NULL, 1, 1, 1),
(123, 'Image', '2016-03-04 04:02:22', '2016-03-04 04:02:22', 'DSC2460.jpg', 'DSC2460', 'assets/Uploads/DSC2460.jpg', NULL, 1, 1, 1),
(124, 'Image', '2016-03-04 04:02:29', '2016-03-04 04:02:29', 'DSC2452.jpg', 'DSC2452', 'assets/Uploads/DSC2452.jpg', NULL, 1, 1, 1),
(125, 'Image', '2016-03-04 04:02:30', '2016-03-04 04:02:30', 'DSC2511.jpg', 'DSC2511', 'assets/Uploads/DSC2511.jpg', NULL, 1, 1, 1),
(126, 'Image', '2016-03-04 04:02:35', '2016-03-04 04:02:35', 'DSC2495.jpg', 'DSC2495', 'assets/Uploads/DSC2495.jpg', NULL, 1, 1, 1),
(127, 'Image', '2016-03-04 04:02:40', '2016-03-04 04:02:40', 'DSC2503.jpg', 'DSC2503', 'assets/Uploads/DSC2503.jpg', NULL, 1, 1, 1),
(128, 'Image', '2016-03-04 04:02:50', '2016-03-04 04:02:50', 'DSC2539.jpg', 'DSC2539', 'assets/Uploads/DSC2539.jpg', NULL, 1, 1, 1),
(129, 'Image', '2016-03-04 04:03:07', '2016-03-04 04:03:07', 'DSC2481.jpg', 'DSC2481', 'assets/Uploads/DSC2481.jpg', NULL, 1, 1, 1),
(130, 'Image', '2016-03-04 04:03:09', '2016-03-04 04:03:09', 'DSC2518.jpg', 'DSC2518', 'assets/Uploads/DSC2518.jpg', NULL, 1, 1, 1),
(131, 'Image', '2016-03-04 04:03:21', '2016-03-04 04:03:21', 'DSC2541.jpg', 'DSC2541', 'assets/Uploads/DSC2541.jpg', NULL, 1, 1, 1),
(132, 'Image', '2016-03-04 04:03:22', '2016-03-04 04:03:22', 'DSC2536.jpg', 'DSC2536', 'assets/Uploads/DSC2536.jpg', NULL, 1, 1, 1),
(133, 'Image', '2016-03-04 04:03:23', '2016-03-04 04:03:23', 'DSC2549.jpg', 'DSC2549', 'assets/Uploads/DSC2549.jpg', NULL, 1, 1, 1),
(134, 'Image', '2016-03-04 04:03:31', '2016-03-04 04:03:31', 'DSC02552.jpg', 'DSC02552', 'assets/Uploads/DSC02552.jpg', NULL, 1, 1, 1),
(135, 'Image', '2016-03-04 04:04:40', '2016-03-04 04:04:40', 'DSC2566.jpg', 'DSC2566', 'assets/Uploads/DSC2566.jpg', NULL, 1, 1, 1),
(136, 'Image', '2016-03-04 04:04:44', '2016-03-04 04:04:44', 'DSC2558.jpg', 'DSC2558', 'assets/Uploads/DSC2558.jpg', NULL, 1, 1, 1),
(137, 'Image', '2016-03-04 04:04:48', '2016-03-04 04:04:48', 'DSC2571.jpg', 'DSC2571', 'assets/Uploads/DSC2571.jpg', NULL, 1, 1, 1),
(138, 'Image', '2016-03-04 04:04:55', '2016-03-04 04:04:55', 'DSC2560.jpg', 'DSC2560', 'assets/Uploads/DSC2560.jpg', NULL, 1, 1, 1),
(139, 'Image', '2016-03-04 04:04:57', '2016-03-04 04:04:57', 'DSC2554.jpg', 'DSC2554', 'assets/Uploads/DSC2554.jpg', NULL, 1, 1, 1),
(140, 'Image', '2016-03-04 04:05:00', '2016-03-04 04:05:00', 'DSC02575.jpg', 'DSC02575', 'assets/Uploads/DSC02575.jpg', NULL, 1, 1, 1),
(141, 'Image', '2016-03-04 04:05:06', '2016-03-04 04:05:06', 'DSC2570.jpg', 'DSC2570', 'assets/Uploads/DSC2570.jpg', NULL, 1, 1, 1),
(142, 'Image', '2016-03-04 04:05:08', '2016-03-04 04:05:08', 'DSC2567.jpg', 'DSC2567', 'assets/Uploads/DSC2567.jpg', NULL, 1, 1, 1),
(143, 'Image', '2016-03-04 04:05:09', '2016-03-04 04:05:09', 'DSC2574.jpg', 'DSC2574', 'assets/Uploads/DSC2574.jpg', NULL, 1, 1, 1),
(144, 'Image', '2016-03-04 04:05:10', '2016-03-04 04:05:10', 'DSC2586.jpg', 'DSC2586', 'assets/Uploads/DSC2586.jpg', NULL, 1, 1, 1),
(145, 'Image', '2016-03-04 04:05:19', '2016-03-04 04:05:19', 'DSC2588.jpg', 'DSC2588', 'assets/Uploads/DSC2588.jpg', NULL, 1, 1, 1),
(146, 'Image', '2016-03-04 04:05:44', '2016-03-04 04:05:44', 'DSC2585.jpg', 'DSC2585', 'assets/Uploads/DSC2585.jpg', NULL, 1, 1, 1),
(147, 'Image', '2016-03-04 04:06:45', '2016-03-04 04:06:45', 'DSC2598.jpg', 'DSC2598', 'assets/Uploads/DSC2598.jpg', NULL, 1, 1, 1),
(148, 'Image', '2016-03-04 04:06:46', '2016-03-04 04:06:46', 'DSC2599.jpg', 'DSC2599', 'assets/Uploads/DSC2599.jpg', NULL, 1, 1, 1),
(149, 'Image', '2016-03-04 04:06:49', '2016-03-04 04:06:49', 'DSC2607.jpg', 'DSC2607', 'assets/Uploads/DSC2607.jpg', NULL, 1, 1, 1),
(150, 'Image', '2016-03-04 04:06:52', '2016-03-04 04:06:52', 'DSC02605.jpg', 'DSC02605', 'assets/Uploads/DSC02605.jpg', NULL, 1, 1, 1),
(151, 'Image', '2016-03-04 04:06:54', '2016-03-04 04:06:54', 'DSC2594.jpg', 'DSC2594', 'assets/Uploads/DSC2594.jpg', NULL, 1, 1, 1),
(152, 'Image', '2016-03-04 04:06:55', '2016-03-04 04:06:55', 'DSC2604.jpg', 'DSC2604', 'assets/Uploads/DSC2604.jpg', NULL, 1, 1, 1),
(153, 'Image', '2016-03-04 04:06:57', '2016-03-04 04:06:57', 'DSC2597.jpg', 'DSC2597', 'assets/Uploads/DSC2597.jpg', NULL, 1, 1, 1),
(154, 'Image', '2016-03-04 04:07:00', '2016-03-04 04:07:00', 'DSC2621.jpg', 'DSC2621', 'assets/Uploads/DSC2621.jpg', NULL, 1, 1, 1),
(155, 'Image', '2016-03-04 04:07:05', '2016-03-04 04:07:05', 'DSC2629.jpg', 'DSC2629', 'assets/Uploads/DSC2629.jpg', NULL, 1, 1, 1),
(156, 'Image', '2016-03-04 04:07:06', '2016-03-04 04:07:06', 'DSC02608.jpg', 'DSC02608', 'assets/Uploads/DSC02608.jpg', NULL, 1, 1, 1),
(157, 'Image', '2016-03-04 04:07:08', '2016-03-04 04:07:08', 'DSC2624.jpg', 'DSC2624', 'assets/Uploads/DSC2624.jpg', NULL, 1, 1, 1),
(158, 'Image', '2016-03-04 04:07:09', '2016-03-04 04:07:09', 'DSC02614.jpg', 'DSC02614', 'assets/Uploads/DSC02614.jpg', NULL, 1, 1, 1),
(159, 'Image', '2016-03-04 04:07:24', '2016-03-04 04:07:24', 'DSC02632.jpg', 'DSC02632', 'assets/Uploads/DSC02632.jpg', NULL, 1, 1, 1),
(160, 'Image', '2016-03-04 04:08:25', '2016-03-04 04:08:25', 'DSC02650.jpg', 'DSC02650', 'assets/Uploads/DSC02650.jpg', NULL, 1, 1, 1),
(161, 'Image', '2016-03-04 04:08:26', '2016-03-04 04:08:26', 'DSC02646.jpg', 'DSC02646', 'assets/Uploads/DSC02646.jpg', NULL, 1, 1, 1),
(162, 'Image', '2016-03-04 04:08:28', '2016-03-04 04:08:28', 'DSC2639.jpg', 'DSC2639', 'assets/Uploads/DSC2639.jpg', NULL, 1, 1, 1),
(163, 'Image', '2016-03-04 04:08:29', '2016-03-04 04:08:29', 'DSC02655.jpg', 'DSC02655', 'assets/Uploads/DSC02655.jpg', NULL, 1, 1, 1),
(164, 'Image', '2016-03-04 04:08:37', '2016-03-04 04:08:37', 'DSC02647.jpg', 'DSC02647', 'assets/Uploads/DSC02647.jpg', NULL, 1, 1, 1),
(165, 'Image', '2016-03-04 04:08:39', '2016-03-04 04:08:39', 'DSC02642.jpg', 'DSC02642', 'assets/Uploads/DSC02642.jpg', NULL, 1, 1, 1),
(166, 'Image', '2016-03-04 04:08:40', '2016-03-04 04:08:40', 'DSC02672.jpg', 'DSC02672', 'assets/Uploads/DSC02672.jpg', NULL, 1, 1, 1),
(167, 'Image', '2016-03-04 04:08:41', '2016-03-04 04:08:41', 'DSC02673.jpg', 'DSC02673', 'assets/Uploads/DSC02673.jpg', NULL, 1, 1, 1),
(168, 'Image', '2016-03-04 04:08:47', '2016-03-04 04:08:47', 'DSC02677.jpg', 'DSC02677', 'assets/Uploads/DSC02677.jpg', NULL, 1, 1, 1),
(169, 'Image', '2016-03-04 04:08:52', '2016-03-04 04:08:52', 'DSC02690.jpg', 'DSC02690', 'assets/Uploads/DSC02690.jpg', NULL, 1, 1, 1),
(170, 'Image', '2016-03-04 04:09:02', '2016-03-04 04:09:02', 'DSC02692.jpg', 'DSC02692', 'assets/Uploads/DSC02692.jpg', NULL, 1, 1, 1),
(171, 'Image', '2016-03-04 04:09:07', '2016-03-04 04:09:07', 'DSC02668.jpg', 'DSC02668', 'assets/Uploads/DSC02668.jpg', NULL, 1, 1, 1),
(172, 'Image', '2016-03-04 04:09:21', '2016-03-04 04:09:21', 'DSC02675.jpg', 'DSC02675', 'assets/Uploads/DSC02675.jpg', NULL, 1, 1, 1),
(173, 'Image', '2016-03-04 04:09:47', '2016-03-04 04:09:47', 'DSC02699.jpg', 'DSC02699', 'assets/Uploads/DSC02699.jpg', NULL, 1, 1, 1),
(174, 'Image', '2016-03-04 04:09:49', '2016-03-04 04:09:49', 'DSC02694.jpg', 'DSC02694', 'assets/Uploads/DSC02694.jpg', NULL, 1, 1, 1),
(175, 'Image', '2016-03-04 04:10:05', '2016-03-04 04:10:05', 'DSC02718.jpg', 'DSC02718', 'assets/Uploads/DSC02718.jpg', NULL, 1, 1, 1),
(176, 'Image', '2016-03-04 04:10:15', '2016-03-04 04:10:15', 'DSC02697.jpg', 'DSC02697', 'assets/Uploads/DSC02697.jpg', NULL, 1, 1, 1),
(177, 'Image', '2016-03-04 04:10:29', '2016-03-04 04:10:29', 'DSC02735.jpg', 'DSC02735', 'assets/Uploads/DSC02735.jpg', NULL, 1, 1, 1),
(178, 'Image', '2016-03-04 04:10:38', '2016-03-04 04:10:38', 'DSC02703.jpg', 'DSC02703', 'assets/Uploads/DSC02703.jpg', NULL, 1, 1, 1),
(179, 'Image', '2016-03-04 04:10:39', '2016-03-04 04:10:39', 'DSC02707.jpg', 'DSC02707', 'assets/Uploads/DSC02707.jpg', NULL, 1, 1, 1),
(180, 'Image', '2016-03-04 04:10:44', '2016-03-04 04:10:44', 'DSC02724.jpg', 'DSC02724', 'assets/Uploads/DSC02724.jpg', NULL, 1, 1, 1),
(181, 'Image', '2016-03-04 04:10:47', '2016-03-04 04:10:47', 'DSC02748.jpg', 'DSC02748', 'assets/Uploads/DSC02748.jpg', NULL, 1, 1, 1),
(182, 'Image', '2016-03-04 04:10:55', '2016-03-04 04:10:55', 'DSC02751.jpg', 'DSC02751', 'assets/Uploads/DSC02751.jpg', NULL, 1, 1, 1),
(183, 'Image', '2016-03-04 04:11:10', '2016-03-04 04:11:10', 'DSC02752.jpg', 'DSC02752', 'assets/Uploads/DSC02752.jpg', NULL, 1, 1, 1),
(184, 'Image', '2016-03-04 04:11:12', '2016-03-04 04:11:12', 'DSC02739.jpg', 'DSC02739', 'assets/Uploads/DSC02739.jpg', NULL, 1, 1, 1),
(185, 'Image', '2016-03-04 04:11:21', '2016-03-04 04:11:21', 'DSC02709.jpg', 'DSC02709', 'assets/Uploads/DSC02709.jpg', NULL, 1, 1, 1),
(186, 'Image', '2016-03-04 04:11:27', '2016-03-04 04:11:27', 'DSC02755.jpg', 'DSC02755', 'assets/Uploads/DSC02755.jpg', NULL, 1, 1, 1),
(187, 'Image', '2016-03-04 04:12:15', '2016-03-04 04:12:15', 'DSC02760.jpg', 'DSC02760', 'assets/Uploads/DSC02760.jpg', NULL, 1, 1, 1),
(188, 'Image', '2016-03-04 04:12:17', '2016-03-04 04:12:17', 'DSC02757.jpg', 'DSC02757', 'assets/Uploads/DSC02757.jpg', NULL, 1, 1, 1),
(189, 'Image', '2016-03-04 04:12:20', '2016-03-04 04:12:20', 'DSC02783.jpg', 'DSC02783', 'assets/Uploads/DSC02783.jpg', NULL, 1, 1, 1),
(190, 'Image', '2016-03-04 04:12:24', '2016-03-04 04:12:24', 'DSC02779.jpg', 'DSC02779', 'assets/Uploads/DSC02779.jpg', NULL, 1, 1, 1),
(191, 'Image', '2016-03-04 04:12:26', '2016-03-04 04:12:26', 'DSC02782.jpg', 'DSC02782', 'assets/Uploads/DSC02782.jpg', NULL, 1, 1, 1),
(192, 'Image', '2016-03-04 04:12:30', '2016-03-04 04:12:30', 'DSC02785.jpg', 'DSC02785', 'assets/Uploads/DSC02785.jpg', NULL, 1, 1, 1),
(193, 'Image', '2016-03-04 04:12:44', '2016-03-04 04:12:44', 'DSC02784.jpg', 'DSC02784', 'assets/Uploads/DSC02784.jpg', NULL, 1, 1, 1),
(194, 'Image', '2016-03-05 08:54:19', '2016-03-05 08:54:19', 'day1-bangkok-banner.jpg', 'day1 bangkok banner', 'assets/Uploads/day1-bangkok-banner.jpg', NULL, 1, 1, 1),
(195, 'Image', '2016-03-05 08:55:27', '2016-03-05 08:55:27', 'day1-bangkok-banner2.jpg', 'day1 bangkok banner2', 'assets/Uploads/day1-bangkok-banner2.jpg', NULL, 1, 1, 1),
(196, 'Image', '2016-03-07 23:52:04', '2016-03-07 23:52:04', 'DSC02896.jpg', 'DSC02896', 'assets/Uploads/DSC02896.jpg', NULL, 1, 1, 1),
(197, 'Image', '2016-03-07 23:53:53', '2016-03-07 23:53:53', 'DSC02819.jpg', 'DSC02819', 'assets/Uploads/DSC02819.jpg', NULL, 1, 1, 1),
(198, 'Image', '2016-03-07 23:54:25', '2016-03-07 23:54:25', 'DSC02826.jpg', 'DSC02826', 'assets/Uploads/DSC02826.jpg', NULL, 1, 1, 1),
(199, 'Image', '2016-03-08 00:09:47', '2016-03-08 00:09:47', 'DSC2834.jpg', 'DSC2834', 'assets/Uploads/DSC2834.jpg', NULL, 1, 1, 1),
(200, 'Image', '2016-03-08 00:10:46', '2016-03-08 00:10:46', 'DSC02863.jpg', 'DSC02863', 'assets/Uploads/DSC02863.jpg', NULL, 1, 1, 1),
(201, 'Image', '2016-03-08 00:11:08', '2016-03-08 00:11:08', 'DSC02876.jpg', 'DSC02876', 'assets/Uploads/DSC02876.jpg', NULL, 1, 1, 1),
(202, 'Image', '2016-03-08 00:11:52', '2016-03-08 00:11:52', 'DSC02916.jpg', 'DSC02916', 'assets/Uploads/DSC02916.jpg', NULL, 1, 1, 1),
(203, 'Image', '2016-03-08 00:11:53', '2016-03-08 00:11:53', 'DSC02880.jpg', 'DSC02880', 'assets/Uploads/DSC02880.jpg', NULL, 1, 1, 1),
(204, 'Image', '2016-03-08 00:11:54', '2016-03-08 00:11:54', 'DSC02884.jpg', 'DSC02884', 'assets/Uploads/DSC02884.jpg', NULL, 1, 1, 1),
(205, 'Image', '2016-03-08 00:13:15', '2016-03-08 00:13:15', 'DSC02870.jpg', 'DSC02870', 'assets/Uploads/DSC02870.jpg', NULL, 1, 1, 1),
(206, 'Image', '2016-03-08 00:24:26', '2016-03-08 00:24:26', 'DSC02910.jpg', 'DSC02910', 'assets/Uploads/DSC02910.jpg', NULL, 1, 1, 1),
(207, 'Image', '2016-03-08 00:24:39', '2016-03-08 00:24:39', 'DSC02929.jpg', 'DSC02929', 'assets/Uploads/DSC02929.jpg', NULL, 1, 1, 1),
(208, 'Image', '2016-03-08 00:25:01', '2016-03-08 00:25:01', 'DSC02885.jpg', 'DSC02885', 'assets/Uploads/DSC02885.jpg', NULL, 1, 1, 1),
(209, 'Image', '2016-03-08 00:25:40', '2016-03-08 00:25:40', 'DSC02886.jpg', 'DSC02886', 'assets/Uploads/DSC02886.jpg', NULL, 1, 1, 1),
(210, 'Image', '2016-03-08 00:25:42', '2016-03-08 00:25:42', 'DSC02898.jpg', 'DSC02898', 'assets/Uploads/DSC02898.jpg', NULL, 1, 1, 1),
(211, 'Image', '2016-03-08 00:34:20', '2016-03-08 00:34:20', 'DSC02969.jpg', 'DSC02969', 'assets/Uploads/DSC02969.jpg', NULL, 1, 1, 1),
(212, 'Image', '2016-03-08 00:35:36', '2016-03-08 00:35:36', 'DSC02954.jpg', 'DSC02954', 'assets/Uploads/DSC02954.jpg', NULL, 1, 1, 1),
(213, 'Image', '2016-03-08 00:35:58', '2016-03-08 00:35:58', 'DSC02960.jpg', 'DSC02960', 'assets/Uploads/DSC02960.jpg', NULL, 1, 1, 1),
(214, 'Image', '2016-03-08 00:36:36', '2016-03-08 00:36:36', 'DSC02973.jpg', 'DSC02973', 'assets/Uploads/DSC02973.jpg', NULL, 1, 1, 1),
(215, 'Image', '2016-03-08 00:36:43', '2016-03-08 00:36:43', 'DSC02975.jpg', 'DSC02975', 'assets/Uploads/DSC02975.jpg', NULL, 1, 1, 1),
(216, 'Image', '2016-03-08 00:36:47', '2016-03-08 00:36:47', 'DSC02963.jpg', 'DSC02963', 'assets/Uploads/DSC02963.jpg', NULL, 1, 1, 1),
(217, 'Image', '2016-03-08 00:37:04', '2016-03-08 00:37:04', 'DSC02971.jpg', 'DSC02971', 'assets/Uploads/DSC02971.jpg', NULL, 1, 1, 1),
(218, 'Image', '2016-03-08 00:38:52', '2016-03-08 00:38:52', 'IMAG0614.jpg', 'IMAG0614', 'assets/Uploads/IMAG0614.jpg', NULL, 1, 1, 1),
(219, 'Image', '2016-03-08 00:39:47', '2016-03-08 00:39:47', 'DSC2974.jpg', 'DSC2974', 'assets/Uploads/DSC2974.jpg', NULL, 1, 1, 1),
(220, 'Image', '2016-03-08 15:17:53', '2016-03-08 15:17:53', 'DSC2881.jpg', 'DSC2881', 'assets/Uploads/DSC2881.jpg', NULL, 1, 1, 1),
(221, 'Image', '2016-03-08 15:53:04', '2016-03-08 15:53:04', 'DSC02982.jpg', 'DSC02982', 'assets/Uploads/DSC02982.jpg', NULL, 1, 1, 1),
(222, 'Image', '2016-03-08 16:02:51', '2016-03-08 16:02:51', 'DSC2983.jpg', 'DSC2983', 'assets/Uploads/DSC2983.jpg', NULL, 1, 1, 1),
(223, 'Image', '2016-03-08 16:03:00', '2016-03-08 16:03:00', 'DSC02996.jpg', 'DSC02996', 'assets/Uploads/DSC02996.jpg', NULL, 1, 1, 1),
(224, 'Image', '2016-03-08 16:03:04', '2016-03-08 16:03:04', 'DSC03012.jpg', 'DSC03012', 'assets/Uploads/DSC03012.jpg', NULL, 1, 1, 1),
(225, 'Image', '2016-03-08 16:03:31', '2016-03-08 16:03:31', 'DSC03007.jpg', 'DSC03007', 'assets/Uploads/DSC03007.jpg', NULL, 1, 1, 1),
(226, 'Image', '2016-03-08 16:03:46', '2016-03-08 16:03:46', 'DSC02985.jpg', 'DSC02985', 'assets/Uploads/DSC02985.jpg', NULL, 1, 1, 1),
(228, 'Image', '2016-03-08 16:07:26', '2016-03-08 16:07:26', 'DSC03027.jpg', 'DSC03027', 'assets/Uploads/DSC03027.jpg', NULL, 1, 1, 1),
(229, 'Image', '2016-03-08 16:07:37', '2016-03-08 16:07:37', 'DSC03023.jpg', 'DSC03023', 'assets/Uploads/DSC03023.jpg', NULL, 1, 1, 1),
(230, 'Image', '2016-03-08 16:07:39', '2016-03-08 16:07:39', 'DSC03030.jpg', 'DSC03030', 'assets/Uploads/DSC03030.jpg', NULL, 1, 1, 1),
(231, 'Image', '2016-03-08 16:08:01', '2016-03-08 16:08:01', 'DSC03034.jpg', 'DSC03034', 'assets/Uploads/DSC03034.jpg', NULL, 1, 1, 1),
(232, 'Image', '2016-03-08 16:08:02', '2016-03-08 16:08:02', 'DSC03037.jpg', 'DSC03037', 'assets/Uploads/DSC03037.jpg', NULL, 1, 1, 1),
(233, 'Image', '2016-03-08 16:08:10', '2016-03-08 16:08:10', 'DSC03040.jpg', 'DSC03040', 'assets/Uploads/DSC03040.jpg', NULL, 1, 1, 1),
(234, 'Image', '2016-03-08 16:08:14', '2016-03-08 16:08:14', 'DSC03042.jpg', 'DSC03042', 'assets/Uploads/DSC03042.jpg', NULL, 1, 1, 1),
(235, 'Image', '2016-03-08 16:08:28', '2016-03-08 16:08:28', 'DSC03046.jpg', 'DSC03046', 'assets/Uploads/DSC03046.jpg', NULL, 1, 1, 1),
(236, 'Image', '2016-03-08 16:08:42', '2016-03-08 16:08:42', 'DSC03050.jpg', 'DSC03050', 'assets/Uploads/DSC03050.jpg', NULL, 1, 1, 1),
(237, 'Image', '2016-03-08 16:09:27', '2016-03-08 16:09:27', 'DSC03072.jpg', 'DSC03072', 'assets/Uploads/DSC03072.jpg', NULL, 1, 1, 1),
(238, 'Image', '2016-03-08 16:09:37', '2016-03-08 16:09:37', 'DSC03091.jpg', 'DSC03091', 'assets/Uploads/DSC03091.jpg', NULL, 1, 1, 1),
(239, 'Image', '2016-03-08 16:09:38', '2016-03-08 16:09:38', 'DSC03094.jpg', 'DSC03094', 'assets/Uploads/DSC03094.jpg', NULL, 1, 1, 1),
(240, 'Image', '2016-03-08 16:09:40', '2016-03-08 16:09:40', 'DSC03087.jpg', 'DSC03087', 'assets/Uploads/DSC03087.jpg', NULL, 1, 1, 1),
(241, 'Image', '2016-03-08 16:09:44', '2016-03-08 16:09:44', 'DSC03083.jpg', 'DSC03083', 'assets/Uploads/DSC03083.jpg', NULL, 1, 1, 1),
(242, 'Image', '2016-03-08 16:09:46', '2016-03-08 16:09:46', 'DSC03077.jpg', 'DSC03077', 'assets/Uploads/DSC03077.jpg', NULL, 1, 1, 1),
(243, 'Image', '2016-03-08 16:09:49', '2016-03-08 16:09:49', 'DSC03080.jpg', 'DSC03080', 'assets/Uploads/DSC03080.jpg', NULL, 1, 1, 1),
(244, 'Image', '2016-03-08 16:10:59', '2016-03-08 16:10:59', 'DSC3095.jpg', 'DSC3095', 'assets/Uploads/DSC3095.jpg', NULL, 1, 1, 1),
(245, 'Image', '2016-03-10 14:51:54', '2016-03-10 14:51:54', 'DSC03207.jpg', 'DSC03207', 'assets/Uploads/DSC03207.jpg', NULL, 1, 1, 1),
(246, 'Image', '2016-03-11 09:43:33', '2016-03-11 09:43:33', 'DSC03123.jpg', 'DSC03123', 'assets/Uploads/DSC03123.jpg', NULL, 1, 1, 1),
(247, 'Image', '2016-03-11 09:46:23', '2016-03-11 09:46:23', 'DSC03119.jpg', 'DSC03119', 'assets/Uploads/DSC03119.jpg', NULL, 1, 1, 1),
(248, 'Image', '2016-03-11 09:48:09', '2016-03-11 09:48:09', 'DSC03161.jpg', 'DSC03161', 'assets/Uploads/DSC03161.jpg', NULL, 1, 1, 1),
(249, 'Image', '2016-03-11 09:48:28', '2016-03-11 09:48:28', 'DSC03166.jpg', 'DSC03166', 'assets/Uploads/DSC03166.jpg', NULL, 1, 1, 1),
(250, 'Image', '2016-03-11 09:48:43', '2016-03-11 09:48:43', 'DSC03167.jpg', 'DSC03167', 'assets/Uploads/DSC03167.jpg', NULL, 1, 1, 1),
(251, 'Image', '2016-03-11 09:49:13', '2016-03-11 09:49:13', 'DSC03154.jpg', 'DSC03154', 'assets/Uploads/DSC03154.jpg', NULL, 1, 1, 1),
(252, 'Image', '2016-03-11 09:49:23', '2016-03-11 09:49:23', 'DSC03151.jpg', 'DSC03151', 'assets/Uploads/DSC03151.jpg', NULL, 1, 1, 1),
(253, 'Image', '2016-03-11 09:49:32', '2016-03-11 09:49:32', 'DSC03160.jpg', 'DSC03160', 'assets/Uploads/DSC03160.jpg', NULL, 1, 1, 1),
(254, 'Image', '2016-03-11 09:50:54', '2016-03-11 09:50:54', 'DSC03176.jpg', 'DSC03176', 'assets/Uploads/DSC03176.jpg', NULL, 1, 1, 1),
(255, 'Image', '2016-03-11 09:52:18', '2016-03-11 09:52:18', 'DSC03185.jpg', 'DSC03185', 'assets/Uploads/DSC03185.jpg', NULL, 1, 1, 1),
(256, 'Image', '2016-03-11 09:52:31', '2016-03-11 09:52:31', 'DSC03200.jpg', 'DSC03200', 'assets/Uploads/DSC03200.jpg', NULL, 1, 1, 1),
(257, 'Image', '2016-03-11 09:52:33', '2016-03-11 09:52:33', 'DSC03180.jpg', 'DSC03180', 'assets/Uploads/DSC03180.jpg', NULL, 1, 1, 1),
(258, 'Image', '2016-03-11 09:52:35', '2016-03-11 09:52:35', 'DSC03188.jpg', 'DSC03188', 'assets/Uploads/DSC03188.jpg', NULL, 1, 1, 1),
(259, 'Image', '2016-03-11 09:54:34', '2016-03-11 09:54:34', 'DSC03201.jpg', 'DSC03201', 'assets/Uploads/DSC03201.jpg', NULL, 1, 1, 1),
(260, 'Image', '2016-03-11 09:56:57', '2016-03-11 09:56:57', 'DSC03218.jpg', 'DSC03218', 'assets/Uploads/DSC03218.jpg', NULL, 1, 1, 1),
(261, 'Image', '2016-03-11 09:57:24', '2016-03-11 09:57:24', 'DSC03217.jpg', 'DSC03217', 'assets/Uploads/DSC03217.jpg', NULL, 1, 1, 1),
(262, 'Image', '2016-03-11 09:58:22', '2016-03-11 09:58:22', 'DSC03208.jpg', 'DSC03208', 'assets/Uploads/DSC03208.jpg', NULL, 1, 1, 1),
(263, 'Image', '2016-03-11 10:01:55', '2016-03-11 10:01:55', 'DSC3208.jpg', 'DSC3208', 'assets/Uploads/DSC3208.jpg', NULL, 1, 1, 1),
(264, 'Image', '2016-03-13 08:13:09', '2016-03-13 08:13:09', 'DSC03237.jpg', 'DSC03237', 'assets/Uploads/DSC03237.jpg', NULL, 1, 1, 1),
(265, 'Image', '2016-03-13 08:16:58', '2016-03-13 08:16:58', 'cabaret-thumb.jpg', 'cabaret thumb', 'assets/Uploads/cabaret-thumb.jpg', NULL, 1, 1, 1),
(266, 'Image', '2016-03-13 08:18:15', '2016-03-13 08:18:15', 'DSC03273.jpg', 'DSC03273', 'assets/Uploads/DSC03273.jpg', NULL, 1, 1, 1),
(267, 'Image', '2016-03-13 08:20:10', '2016-03-13 08:20:10', 'DSC03236.jpg', 'DSC03236', 'assets/Uploads/DSC03236.jpg', NULL, 1, 1, 1),
(268, 'Image', '2016-03-13 08:20:14', '2016-03-13 08:20:14', 'DSC03239.jpg', 'DSC03239', 'assets/Uploads/DSC03239.jpg', NULL, 1, 1, 1),
(269, 'Image', '2016-03-13 08:20:15', '2016-03-13 08:20:15', 'DSC03240.jpg', 'DSC03240', 'assets/Uploads/DSC03240.jpg', NULL, 1, 1, 1),
(270, 'Image', '2016-03-13 08:20:16', '2016-03-13 08:20:16', 'DSC03243.jpg', 'DSC03243', 'assets/Uploads/DSC03243.jpg', NULL, 1, 1, 1),
(271, 'Image', '2016-03-13 08:20:44', '2016-03-13 08:20:44', 'DSC03244.jpg', 'DSC03244', 'assets/Uploads/DSC03244.jpg', NULL, 1, 1, 1),
(272, 'Image', '2016-03-13 08:21:00', '2016-03-13 08:21:00', 'DSC03245.jpg', 'DSC03245', 'assets/Uploads/DSC03245.jpg', NULL, 1, 1, 1),
(273, 'Image', '2016-03-13 08:21:08', '2016-03-13 08:21:08', 'DSC03249.jpg', 'DSC03249', 'assets/Uploads/DSC03249.jpg', NULL, 1, 1, 1),
(274, 'Image', '2016-03-13 08:21:16', '2016-03-13 08:21:16', 'DSC03252.jpg', 'DSC03252', 'assets/Uploads/DSC03252.jpg', NULL, 1, 1, 1),
(275, 'Image', '2016-03-13 08:21:23', '2016-03-13 08:21:23', 'DSC03254.jpg', 'DSC03254', 'assets/Uploads/DSC03254.jpg', NULL, 1, 1, 1),
(276, 'Image', '2016-03-13 08:21:39', '2016-03-13 08:21:39', 'DSC03261.jpg', 'DSC03261', 'assets/Uploads/DSC03261.jpg', NULL, 1, 1, 1),
(277, 'Image', '2016-03-13 08:21:42', '2016-03-13 08:21:42', 'DSC03256.jpg', 'DSC03256', 'assets/Uploads/DSC03256.jpg', NULL, 1, 1, 1),
(278, 'Image', '2016-03-13 08:22:14', '2016-03-13 08:22:14', 'DSC03272.jpg', 'DSC03272', 'assets/Uploads/DSC03272.jpg', NULL, 1, 1, 1),
(279, 'Image', '2016-03-13 08:22:16', '2016-03-13 08:22:16', 'DSC03262.jpg', 'DSC03262', 'assets/Uploads/DSC03262.jpg', NULL, 1, 1, 1),
(280, 'Image', '2016-03-13 08:22:41', '2016-03-13 08:22:41', 'DSC3274.jpg', 'DSC3274', 'assets/Uploads/DSC3274.jpg', NULL, 1, 1, 1),
(281, 'Image', '2016-03-13 08:22:55', '2016-03-13 08:22:55', 'DSC3273.jpg', 'DSC3273', 'assets/Uploads/DSC3273.jpg', NULL, 1, 1, 1),
(282, 'Image', '2016-03-13 08:22:58', '2016-03-13 08:22:58', 'DSC3263.jpg', 'DSC3263', 'assets/Uploads/DSC3263.jpg', NULL, 1, 1, 1),
(283, 'Image', '2016-03-13 08:23:21', '2016-03-13 08:23:21', 'DSC3262.jpg', 'DSC3262', 'assets/Uploads/DSC3262.jpg', NULL, 1, 1, 1),
(284, 'Image', '2016-03-13 08:23:22', '2016-03-13 08:23:22', 'DSC3257.jpg', 'DSC3257', 'assets/Uploads/DSC3257.jpg', NULL, 1, 1, 1),
(285, 'Image', '2016-03-13 08:25:18', '2016-03-13 08:25:18', 'DSC3275.jpg', 'DSC3275', 'assets/Uploads/DSC3275.jpg', NULL, 1, 1, 1),
(286, 'Image', '2016-03-13 08:25:32', '2016-03-13 08:25:32', 'DSC3264.jpg', 'DSC3264', 'assets/Uploads/DSC3264.jpg', NULL, 1, 1, 1),
(287, 'Image', '2016-03-13 08:25:56', '2016-03-13 08:25:56', 'DSC3240.jpg', 'DSC3240', 'assets/Uploads/DSC3240.jpg', NULL, 1, 1, 1),
(288, 'Image', '2016-03-13 08:40:16', '2016-03-13 08:40:16', 'DSC03323.jpg', 'DSC03323', 'assets/Uploads/DSC03323.jpg', NULL, 1, 1, 1),
(289, 'Image', '2016-03-13 08:43:41', '2016-03-13 08:43:41', 'DSC03280.JPG', 'DSC03280', 'assets/Uploads/DSC03280.JPG', NULL, 1, 1, 1),
(290, 'Image', '2016-03-13 08:46:39', '2016-03-13 08:46:39', 'DSC03287.jpg', 'DSC03287', 'assets/Uploads/DSC03287.jpg', NULL, 1, 1, 1),
(291, 'Image', '2016-03-13 08:46:40', '2016-03-13 08:46:40', 'DSC03284.jpg', 'DSC03284', 'assets/Uploads/DSC03284.jpg', NULL, 1, 1, 1),
(292, 'Image', '2016-03-13 08:46:42', '2016-03-13 08:46:42', 'DSC03296.jpg', 'DSC03296', 'assets/Uploads/DSC03296.jpg', NULL, 1, 1, 1),
(293, 'Image', '2016-03-13 08:46:43', '2016-03-13 08:46:43', 'DSC03283.jpg', 'DSC03283', 'assets/Uploads/DSC03283.jpg', NULL, 1, 1, 1),
(294, 'Image', '2016-03-13 08:49:09', '2016-03-13 08:49:09', 'DSC03295.jpg', 'DSC03295', 'assets/Uploads/DSC03295.jpg', NULL, 1, 1, 1),
(295, 'Image', '2016-03-13 08:49:25', '2016-03-13 08:49:25', 'DSC03313.jpg', 'DSC03313', 'assets/Uploads/DSC03313.jpg', NULL, 1, 1, 1),
(296, 'Image', '2016-03-13 08:49:27', '2016-03-13 08:49:27', 'DSC03304.jpg', 'DSC03304', 'assets/Uploads/DSC03304.jpg', NULL, 1, 1, 1),
(297, 'Image', '2016-03-13 08:49:30', '2016-03-13 08:49:30', 'DSC03317.jpg', 'DSC03317', 'assets/Uploads/DSC03317.jpg', NULL, 1, 1, 1),
(298, 'Image', '2016-03-13 08:49:41', '2016-03-13 08:49:41', 'DSC03301.jpg', 'DSC03301', 'assets/Uploads/DSC03301.jpg', NULL, 1, 1, 1),
(299, 'Image', '2016-03-13 08:50:11', '2016-03-13 08:50:11', 'DSC03318.jpg', 'DSC03318', 'assets/Uploads/DSC03318.jpg', NULL, 1, 1, 1),
(300, 'Image', '2016-03-13 08:50:45', '2016-03-13 08:50:45', 'DSC03328.jpg', 'DSC03328', 'assets/Uploads/DSC03328.jpg', NULL, 1, 1, 1),
(301, 'Image', '2016-03-13 08:50:48', '2016-03-13 08:50:48', 'DSC03325.jpg', 'DSC03325', 'assets/Uploads/DSC03325.jpg', NULL, 1, 1, 1),
(302, 'Image', '2016-03-13 08:50:49', '2016-03-13 08:50:49', 'DSC03336.jpg', 'DSC03336', 'assets/Uploads/DSC03336.jpg', NULL, 1, 1, 1),
(303, 'Image', '2016-03-13 08:50:49', '2016-03-13 08:50:49', 'DSC3324.jpg', 'DSC3324', 'assets/Uploads/DSC3324.jpg', NULL, 1, 1, 1),
(304, 'Image', '2016-03-13 08:58:19', '2016-03-13 08:58:19', 'DSC03369.jpg', 'DSC03369', 'assets/Uploads/DSC03369.jpg', NULL, 1, 1, 1),
(305, 'Image', '2016-03-13 08:58:47', '2016-03-13 08:58:47', 'DSC3370.jpg', 'DSC3370', 'assets/Uploads/DSC3370.jpg', NULL, 1, 1, 1),
(306, 'Image', '2016-03-13 08:59:58', '2016-03-13 08:59:58', 'DSC03354.jpg', 'DSC03354', 'assets/Uploads/DSC03354.jpg', NULL, 1, 1, 1),
(307, 'Image', '2016-03-13 09:00:00', '2016-03-13 09:00:00', 'DSC03348.jpg', 'DSC03348', 'assets/Uploads/DSC03348.jpg', NULL, 1, 1, 1),
(308, 'Image', '2016-03-13 09:00:01', '2016-03-13 09:00:01', 'DSC03347.jpg', 'DSC03347', 'assets/Uploads/DSC03347.jpg', NULL, 1, 1, 1),
(309, 'Image', '2016-03-13 09:00:02', '2016-03-13 09:00:02', 'DSC03353.jpg', 'DSC03353', 'assets/Uploads/DSC03353.jpg', NULL, 1, 1, 1),
(310, 'Image', '2016-03-13 09:00:30', '2016-03-13 09:00:30', 'DSC03356.jpg', 'DSC03356', 'assets/Uploads/DSC03356.jpg', NULL, 1, 1, 1),
(311, 'Image', '2016-03-13 09:00:42', '2016-03-13 09:00:42', 'DSC03365.jpg', 'DSC03365', 'assets/Uploads/DSC03365.jpg', NULL, 1, 1, 1),
(312, 'Image', '2016-03-13 09:00:48', '2016-03-13 09:00:48', 'DSC03358.jpg', 'DSC03358', 'assets/Uploads/DSC03358.jpg', NULL, 1, 1, 1),
(313, 'Image', '2016-03-13 09:00:56', '2016-03-13 09:00:56', 'DSC03366.jpg', 'DSC03366', 'assets/Uploads/DSC03366.jpg', NULL, 1, 1, 1),
(314, 'Image', '2016-03-13 09:00:57', '2016-03-13 09:00:57', 'DSC03362.jpg', 'DSC03362', 'assets/Uploads/DSC03362.jpg', NULL, 1, 1, 1),
(315, 'Image', '2016-03-13 09:00:58', '2016-03-13 09:00:58', 'DSC03364.jpg', 'DSC03364', 'assets/Uploads/DSC03364.jpg', NULL, 1, 1, 1),
(316, 'Image', '2016-03-13 09:00:59', '2016-03-13 09:00:59', 'DSC03363.jpg', 'DSC03363', 'assets/Uploads/DSC03363.jpg', NULL, 1, 1, 1),
(317, 'Image', '2016-03-13 09:01:59', '2016-03-13 09:01:59', 'DSC3371.jpg', 'DSC3371', 'assets/Uploads/DSC3371.jpg', NULL, 1, 1, 1),
(318, 'Image', '2016-03-13 09:02:07', '2016-03-13 09:02:07', 'DSC03385.jpg', 'DSC03385', 'assets/Uploads/DSC03385.jpg', NULL, 1, 1, 1),
(319, 'Image', '2016-03-13 09:02:10', '2016-03-13 09:02:10', 'DSC03374.jpg', 'DSC03374', 'assets/Uploads/DSC03374.jpg', NULL, 1, 1, 1),
(320, 'Image', '2016-03-13 09:02:17', '2016-03-13 09:02:17', 'DSC03382.jpg', 'DSC03382', 'assets/Uploads/DSC03382.jpg', NULL, 1, 1, 1),
(321, 'Image', '2016-03-13 09:02:18', '2016-03-13 09:02:18', 'DSC03380.jpg', 'DSC03380', 'assets/Uploads/DSC03380.jpg', NULL, 1, 1, 1),
(322, 'Image', '2016-03-13 09:02:19', '2016-03-13 09:02:19', 'DSC03390.jpg', 'DSC03390', 'assets/Uploads/DSC03390.jpg', NULL, 1, 1, 1),
(323, 'Image', '2016-03-13 09:02:54', '2016-03-13 09:02:54', 'DSC03386.jpg', 'DSC03386', 'assets/Uploads/DSC03386.jpg', NULL, 1, 1, 1),
(324, 'Image', '2016-03-13 09:02:58', '2016-03-13 09:02:58', 'DSC03387.jpg', 'DSC03387', 'assets/Uploads/DSC03387.jpg', NULL, 1, 1, 1),
(325, 'Image', '2016-03-17 15:03:04', '2016-03-17 15:03:04', 'DSC03412.jpg', 'DSC03412', 'assets/Uploads/DSC03412.jpg', NULL, 1, 1, 1),
(326, 'Image', '2016-03-17 15:04:20', '2016-03-17 15:04:20', 'DSC3413.jpg', 'DSC3413', 'assets/Uploads/DSC3413.jpg', NULL, 1, 1, 1),
(327, 'Image', '2016-03-17 15:06:10', '2016-03-17 15:06:10', 'DSC03428.jpg', 'DSC03428', 'assets/Uploads/DSC03428.jpg', NULL, 1, 1, 1),
(328, 'Image', '2016-03-17 15:06:12', '2016-03-17 15:06:12', 'DSC03424.jpg', 'DSC03424', 'assets/Uploads/DSC03424.jpg', NULL, 1, 1, 1),
(329, 'Image', '2016-03-17 15:06:13', '2016-03-17 15:06:13', 'DSC03441.jpg', 'DSC03441', 'assets/Uploads/DSC03441.jpg', NULL, 1, 1, 1),
(330, 'Image', '2016-03-17 15:06:15', '2016-03-17 15:06:15', 'DSC03415.jpg', 'DSC03415', 'assets/Uploads/DSC03415.jpg', NULL, 1, 1, 1),
(331, 'Image', '2016-03-17 15:07:05', '2016-03-17 15:07:05', 'DSC03458.jpg', 'DSC03458', 'assets/Uploads/DSC03458.jpg', NULL, 1, 1, 1),
(332, 'Image', '2016-03-17 15:07:19', '2016-03-17 15:07:19', 'DSC03461.jpg', 'DSC03461', 'assets/Uploads/DSC03461.jpg', NULL, 1, 1, 1),
(333, 'Image', '2016-03-17 15:07:21', '2016-03-17 15:07:21', 'DSC03459.jpg', 'DSC03459', 'assets/Uploads/DSC03459.jpg', NULL, 1, 1, 1),
(334, 'Image', '2016-03-17 15:07:28', '2016-03-17 15:07:28', 'DSC03467.jpg', 'DSC03467', 'assets/Uploads/DSC03467.jpg', NULL, 1, 1, 1),
(335, 'Image', '2016-03-17 15:07:29', '2016-03-17 15:07:29', 'DSC03470.jpg', 'DSC03470', 'assets/Uploads/DSC03470.jpg', NULL, 1, 1, 1),
(336, 'Image', '2016-03-17 15:07:31', '2016-03-17 15:07:31', 'DSC03462.jpg', 'DSC03462', 'assets/Uploads/DSC03462.jpg', NULL, 1, 1, 1),
(337, 'Image', '2016-03-17 15:07:32', '2016-03-17 15:07:32', 'DSC03468.jpg', 'DSC03468', 'assets/Uploads/DSC03468.jpg', NULL, 1, 1, 1),
(338, 'Image', '2016-03-17 15:07:34', '2016-03-17 15:07:34', 'DSC03523.jpg', 'DSC03523', 'assets/Uploads/DSC03523.jpg', NULL, 1, 1, 1),
(339, 'Image', '2016-03-17 15:07:39', '2016-03-17 15:07:39', 'DSC03483.jpg', 'DSC03483', 'assets/Uploads/DSC03483.jpg', NULL, 1, 1, 1),
(340, 'Image', '2016-03-17 15:07:43', '2016-03-17 15:07:43', 'DSC03498.jpg', 'DSC03498', 'assets/Uploads/DSC03498.jpg', NULL, 1, 1, 1),
(341, 'Image', '2016-03-17 15:07:44', '2016-03-17 15:07:44', 'DSC03485.jpg', 'DSC03485', 'assets/Uploads/DSC03485.jpg', NULL, 1, 1, 1),
(342, 'Image', '2016-03-17 15:07:45', '2016-03-17 15:07:45', 'DSC03487.jpg', 'DSC03487', 'assets/Uploads/DSC03487.jpg', NULL, 1, 1, 1),
(343, 'Image', '2016-03-17 15:08:22', '2016-03-17 15:08:22', 'DSC03528.jpg', 'DSC03528', 'assets/Uploads/DSC03528.jpg', NULL, 1, 1, 1),
(344, 'Image', '2016-03-17 15:08:33', '2016-03-17 15:08:33', 'DSC03540.jpg', 'DSC03540', 'assets/Uploads/DSC03540.jpg', NULL, 1, 1, 1),
(345, 'Image', '2016-03-17 15:08:38', '2016-03-17 15:08:38', 'DSC03551.jpg', 'DSC03551', 'assets/Uploads/DSC03551.jpg', NULL, 1, 1, 1),
(346, 'Image', '2016-03-17 15:08:40', '2016-03-17 15:08:40', 'DSC03530.jpg', 'DSC03530', 'assets/Uploads/DSC03530.jpg', NULL, 1, 1, 1),
(347, 'Image', '2016-03-17 15:08:42', '2016-03-17 15:08:42', 'DSC03555.jpg', 'DSC03555', 'assets/Uploads/DSC03555.jpg', NULL, 1, 1, 1),
(348, 'Image', '2016-03-17 15:08:43', '2016-03-17 15:08:43', 'DSC03559.jpg', 'DSC03559', 'assets/Uploads/DSC03559.jpg', NULL, 1, 1, 1),
(349, 'Image', '2016-03-17 15:08:45', '2016-03-17 15:08:45', 'DSC03536.jpg', 'DSC03536', 'assets/Uploads/DSC03536.jpg', NULL, 1, 1, 1),
(350, 'Image', '2016-03-17 15:08:46', '2016-03-17 15:08:46', 'DSC03585.jpg', 'DSC03585', 'assets/Uploads/DSC03585.jpg', NULL, 1, 1, 1),
(351, 'Image', '2016-03-17 15:09:15', '2016-03-17 15:09:15', 'DSC03569.jpg', 'DSC03569', 'assets/Uploads/DSC03569.jpg', NULL, 1, 1, 1),
(352, 'Image', '2016-03-17 15:09:17', '2016-03-17 15:09:17', 'DSC03560.jpg', 'DSC03560', 'assets/Uploads/DSC03560.jpg', NULL, 1, 1, 1),
(353, 'Image', '2016-03-17 15:09:18', '2016-03-17 15:09:18', 'DSC03572.jpg', 'DSC03572', 'assets/Uploads/DSC03572.jpg', NULL, 1, 1, 1),
(354, 'Image', '2016-03-17 15:09:19', '2016-03-17 15:09:19', 'DSC3556.jpg', 'DSC3556', 'assets/Uploads/DSC3556.jpg', NULL, 1, 1, 1),
(355, 'Image', '2016-03-17 15:09:21', '2016-03-17 15:09:21', 'DSC3560.jpg', 'DSC3560', 'assets/Uploads/DSC3560.jpg', NULL, 1, 1, 1),
(356, 'Image', '2016-03-17 15:09:22', '2016-03-17 15:09:22', 'DSC03564.jpg', 'DSC03564', 'assets/Uploads/DSC03564.jpg', NULL, 1, 1, 1),
(357, 'Image', '2016-03-17 15:09:23', '2016-03-17 15:09:23', 'DSC03578.jpg', 'DSC03578', 'assets/Uploads/DSC03578.jpg', NULL, 1, 1, 1),
(358, 'Image', '2016-03-17 15:09:45', '2016-03-17 15:09:45', 'DSC3557.jpg', 'DSC3557', 'assets/Uploads/DSC3557.jpg', NULL, 1, 1, 1),
(359, 'Image', '2016-03-17 15:13:05', '2016-03-17 15:13:05', 'DSC3558.jpg', 'DSC3558', 'assets/Uploads/DSC3558.jpg', NULL, 1, 1, 1),
(360, 'Image', '2016-03-19 02:34:56', '2016-03-19 02:34:56', 'DSC03815.jpg', 'DSC03815', 'assets/Uploads/DSC03815.jpg', NULL, 1, 1, 1),
(361, 'Image', '2016-03-19 02:35:12', '2016-03-19 02:35:12', 'DSC03748.jpg', 'DSC03748', 'assets/Uploads/DSC03748.jpg', NULL, 1, 1, 1),
(362, 'Image', '2016-03-19 02:35:47', '2016-03-19 02:35:47', 'DSC03762.jpg', 'DSC03762', 'assets/Uploads/DSC03762.jpg', NULL, 1, 1, 1),
(363, 'Image', '2016-03-19 02:35:48', '2016-03-19 02:35:48', 'DSC03768.jpg', 'DSC03768', 'assets/Uploads/DSC03768.jpg', NULL, 1, 1, 1),
(364, 'Image', '2016-03-19 02:35:55', '2016-03-19 02:35:55', 'DSC03759.jpg', 'DSC03759', 'assets/Uploads/DSC03759.jpg', NULL, 1, 1, 1),
(365, 'Image', '2016-03-19 02:35:56', '2016-03-19 02:35:56', 'DSC3749.jpg', 'DSC3749', 'assets/Uploads/DSC3749.jpg', NULL, 1, 1, 1),
(366, 'Image', '2016-03-19 02:36:03', '2016-03-19 02:36:03', 'DSC03717.jpg', 'DSC03717', 'assets/Uploads/DSC03717.jpg', NULL, 1, 1, 1),
(367, 'Image', '2016-03-19 02:36:04', '2016-03-19 02:36:04', 'DSC03736.jpg', 'DSC03736', 'assets/Uploads/DSC03736.jpg', NULL, 1, 1, 1);
INSERT INTO `File` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(368, 'Image', '2016-03-19 02:36:56', '2016-03-19 02:36:56', 'DSC3816.jpg', 'DSC3816', 'assets/Uploads/DSC3816.jpg', NULL, 1, 1, 1),
(369, 'Image', '2016-03-19 02:37:07', '2016-03-19 02:37:07', 'DSC03814.jpg', 'DSC03814', 'assets/Uploads/DSC03814.jpg', NULL, 1, 1, 1),
(370, 'Image', '2016-03-19 02:37:21', '2016-03-19 02:37:21', 'DSC03820.jpg', 'DSC03820', 'assets/Uploads/DSC03820.jpg', NULL, 1, 1, 1),
(371, 'Image', '2016-03-19 02:37:22', '2016-03-19 02:37:22', 'DSC03822.jpg', 'DSC03822', 'assets/Uploads/DSC03822.jpg', NULL, 1, 1, 1),
(372, 'Image', '2016-03-19 02:37:46', '2016-03-19 02:37:46', 'DSC03816.jpg', 'DSC03816', 'assets/Uploads/DSC03816.jpg', NULL, 1, 1, 1),
(373, 'Image', '2016-03-19 17:03:28', '2016-03-19 17:03:28', 'DSC04001.jpg', 'DSC04001', 'assets/Uploads/DSC04001.jpg', NULL, 1, 1, 1),
(374, 'Image', '2016-03-19 17:03:34', '2016-03-19 17:03:34', 'DSC03883.jpg', 'DSC03883', 'assets/Uploads/DSC03883.jpg', NULL, 1, 1, 1),
(375, 'Image', '2016-03-19 17:03:53', '2016-03-19 17:03:53', 'DSC03868.jpg', 'DSC03868', 'assets/Uploads/DSC03868.jpg', NULL, 1, 1, 1),
(376, 'Image', '2016-03-19 17:04:09', '2016-03-19 17:04:09', 'DSC03897.jpg', 'DSC03897', 'assets/Uploads/DSC03897.jpg', NULL, 1, 1, 1),
(377, 'Image', '2016-03-19 17:04:15', '2016-03-19 17:04:15', 'DSC03966.jpg', 'DSC03966', 'assets/Uploads/DSC03966.jpg', NULL, 1, 1, 1),
(378, 'Image', '2016-03-19 17:05:31', '2016-03-19 17:05:31', 'DSC03862.jpg', 'DSC03862', 'assets/Uploads/DSC03862.jpg', NULL, 1, 1, 1),
(379, 'Image', '2016-03-19 17:06:29', '2016-03-19 17:06:29', 'DSC04035.jpg', 'DSC04035', 'assets/Uploads/DSC04035.jpg', NULL, 1, 1, 1),
(380, 'Image', '2016-03-19 17:06:34', '2016-03-19 17:06:34', 'DSC04031.jpg', 'DSC04031', 'assets/Uploads/DSC04031.jpg', NULL, 1, 1, 1),
(381, 'Image', '2016-03-19 17:06:41', '2016-03-19 17:06:41', 'DSC04011.jpg', 'DSC04011', 'assets/Uploads/DSC04011.jpg', NULL, 1, 1, 1),
(382, 'Image', '2016-03-19 17:07:58', '2016-03-19 17:07:58', 'DSC04107.jpg', 'DSC04107', 'assets/Uploads/DSC04107.jpg', NULL, 1, 1, 1),
(383, 'Image', '2016-03-19 17:09:00', '2016-03-19 17:09:00', 'DSC04171.jpg', 'DSC04171', 'assets/Uploads/DSC04171.jpg', NULL, 1, 1, 1),
(384, 'Image', '2016-03-19 17:09:06', '2016-03-19 17:09:06', 'DSC04173.jpg', 'DSC04173', 'assets/Uploads/DSC04173.jpg', NULL, 1, 1, 1),
(385, 'Image', '2016-03-19 17:09:33', '2016-03-19 17:09:33', 'DSC04058.jpg', 'DSC04058', 'assets/Uploads/DSC04058.jpg', NULL, 1, 1, 1),
(386, 'Image', '2016-03-20 15:14:26', '2016-03-20 15:14:26', 'DSC03607.jpg', 'DSC03607', 'assets/Uploads/DSC03607.jpg', NULL, 1, 1, 1),
(387, 'Image', '2016-03-28 13:59:57', '2016-03-28 13:59:57', 'DSC03603.jpg', 'DSC03603', 'assets/Uploads/DSC03603.jpg', NULL, 1, 1, 1),
(388, 'Image', '2016-03-28 14:01:32', '2016-03-28 14:01:32', 'DSC03597.jpg', 'DSC03597', 'assets/Uploads/DSC03597.jpg', NULL, 1, 1, 1),
(389, 'Image', '2016-03-28 14:01:33', '2016-03-28 14:01:33', 'DSC03595.jpg', 'DSC03595', 'assets/Uploads/DSC03595.jpg', NULL, 1, 1, 1),
(390, 'Image', '2016-03-28 14:01:34', '2016-03-28 14:01:34', 'DSC3604.jpg', 'DSC3604', 'assets/Uploads/DSC3604.jpg', NULL, 1, 1, 1),
(391, 'Image', '2016-03-28 14:01:40', '2016-03-28 14:01:40', 'DSC03608.jpg', 'DSC03608', 'assets/Uploads/DSC03608.jpg', NULL, 1, 1, 1),
(392, 'Image', '2016-03-28 14:02:01', '2016-03-28 14:02:01', 'DSC03616.jpg', 'DSC03616', 'assets/Uploads/DSC03616.jpg', NULL, 1, 1, 1),
(393, 'Image', '2016-03-28 14:02:15', '2016-03-28 14:02:15', 'DSC03617.jpg', 'DSC03617', 'assets/Uploads/DSC03617.jpg', NULL, 1, 1, 1),
(394, 'Image', '2016-03-28 14:03:05', '2016-03-28 14:03:05', 'DSC03621.jpg', 'DSC03621', 'assets/Uploads/DSC03621.jpg', NULL, 1, 1, 1),
(395, 'Image', '2016-03-28 14:03:11', '2016-03-28 14:03:11', 'DSC03626.jpg', 'DSC03626', 'assets/Uploads/DSC03626.jpg', NULL, 1, 1, 1),
(396, 'Image', '2016-03-28 14:03:19', '2016-03-28 14:03:19', 'DSC03642.jpg', 'DSC03642', 'assets/Uploads/DSC03642.jpg', NULL, 1, 1, 1),
(397, 'Image', '2016-03-28 14:03:28', '2016-03-28 14:03:28', 'DSC03677.jpg', 'DSC03677', 'assets/Uploads/DSC03677.jpg', NULL, 1, 1, 1),
(398, 'Image', '2016-03-28 14:03:29', '2016-03-28 14:03:29', 'DSC03676.jpg', 'DSC03676', 'assets/Uploads/DSC03676.jpg', NULL, 1, 1, 1),
(399, 'Image', '2016-03-28 14:03:30', '2016-03-28 14:03:30', 'DSC03690.jpg', 'DSC03690', 'assets/Uploads/DSC03690.jpg', NULL, 1, 1, 1),
(400, 'Image', '2016-03-28 14:04:11', '2016-03-28 14:04:11', 'DSC03638.jpg', 'DSC03638', 'assets/Uploads/DSC03638.jpg', NULL, 1, 1, 1),
(401, 'Image', '2016-03-28 15:03:47', '2016-03-28 15:03:47', 'DSC04388.jpg', 'DSC04388', 'assets/Uploads/DSC04388.jpg', NULL, 1, 1, 1),
(402, 'Image', '2016-03-28 15:04:38', '2016-03-28 15:04:38', 'DSC04380.jpg', 'DSC04380', 'assets/Uploads/DSC04380.jpg', NULL, 1, 1, 1),
(403, 'Image', '2016-03-28 15:04:39', '2016-03-28 15:04:39', 'DSC04376.jpg', 'DSC04376', 'assets/Uploads/DSC04376.jpg', NULL, 1, 1, 1),
(404, 'Image', '2016-03-28 15:04:41', '2016-03-28 15:04:41', 'DSC04375.jpg', 'DSC04375', 'assets/Uploads/DSC04375.jpg', NULL, 1, 1, 1),
(405, 'Image', '2016-03-28 15:04:42', '2016-03-28 15:04:42', 'DSC04373.jpg', 'DSC04373', 'assets/Uploads/DSC04373.jpg', NULL, 1, 1, 1),
(406, 'Image', '2016-03-28 15:04:43', '2016-03-28 15:04:43', 'DSC04385.jpg', 'DSC04385', 'assets/Uploads/DSC04385.jpg', NULL, 1, 1, 1),
(407, 'Image', '2016-03-28 15:04:45', '2016-03-28 15:04:45', 'DSC4389.jpg', 'DSC4389', 'assets/Uploads/DSC4389.jpg', NULL, 1, 1, 1),
(408, 'Image', '2016-03-28 15:05:29', '2016-03-28 15:05:29', 'DSC4386.jpg', 'DSC4386', 'assets/Uploads/DSC4386.jpg', NULL, 1, 1, 1),
(409, 'Image', '2016-03-28 15:05:33', '2016-03-28 15:05:33', 'DSC4390.jpg', 'DSC4390', 'assets/Uploads/DSC4390.jpg', NULL, 1, 1, 1),
(410, 'Image', '2016-03-28 15:05:35', '2016-03-28 15:05:35', 'DSC04403.jpg', 'DSC04403', 'assets/Uploads/DSC04403.jpg', NULL, 1, 1, 1),
(411, 'Image', '2016-03-28 15:05:44', '2016-03-28 15:05:44', 'DSC04418.jpg', 'DSC04418', 'assets/Uploads/DSC04418.jpg', NULL, 1, 1, 1),
(412, 'Image', '2016-03-28 15:05:50', '2016-03-28 15:05:50', 'DSC04448.jpg', 'DSC04448', 'assets/Uploads/DSC04448.jpg', NULL, 1, 1, 1),
(413, 'Image', '2016-03-28 15:05:52', '2016-03-28 15:05:52', 'DSC04472.jpg', 'DSC04472', 'assets/Uploads/DSC04472.jpg', NULL, 1, 1, 1),
(414, 'Image', '2016-03-28 15:05:53', '2016-03-28 15:05:53', 'DSC04459.jpg', 'DSC04459', 'assets/Uploads/DSC04459.jpg', NULL, 1, 1, 1),
(415, 'Image', '2016-03-28 15:05:54', '2016-03-28 15:05:54', 'DSC04431.jpg', 'DSC04431', 'assets/Uploads/DSC04431.jpg', NULL, 1, 1, 1),
(416, 'Image', '2016-03-28 15:05:56', '2016-03-28 15:05:56', 'DSC04461.jpg', 'DSC04461', 'assets/Uploads/DSC04461.jpg', NULL, 1, 1, 1),
(417, 'Image', '2016-03-28 15:06:27', '2016-03-28 15:06:27', 'DSC4432.jpg', 'DSC4432', 'assets/Uploads/DSC4432.jpg', NULL, 1, 1, 1),
(418, 'Image', '2016-03-28 15:06:34', '2016-03-28 15:06:34', 'DSC4449.jpg', 'DSC4449', 'assets/Uploads/DSC4449.jpg', NULL, 1, 1, 1),
(419, 'Image', '2016-03-28 15:06:35', '2016-03-28 15:06:35', 'DSC4462.jpg', 'DSC4462', 'assets/Uploads/DSC4462.jpg', NULL, 1, 1, 1),
(420, 'Image', '2016-03-28 15:06:36', '2016-03-28 15:06:36', 'DSC4460.jpg', 'DSC4460', 'assets/Uploads/DSC4460.jpg', NULL, 1, 1, 1),
(421, 'Image', '2016-03-28 15:06:41', '2016-03-28 15:06:41', 'DSC4419.jpg', 'DSC4419', 'assets/Uploads/DSC4419.jpg', NULL, 1, 1, 1),
(422, 'Image', '2016-03-28 15:07:14', '2016-03-28 15:07:14', 'DSC4473.jpg', 'DSC4473', 'assets/Uploads/DSC4473.jpg', NULL, 1, 1, 1),
(423, 'Image', '2016-03-28 15:10:05', '2016-03-28 15:10:05', 'DSC04730.jpg', 'DSC04730', 'assets/Uploads/DSC04730.jpg', NULL, 1, 1, 1),
(424, 'Image', '2016-03-28 15:10:40', '2016-03-28 15:10:40', 'DSC04637.jpg', 'DSC04637', 'assets/Uploads/DSC04637.jpg', NULL, 1, 1, 1),
(425, 'Image', '2016-03-28 15:11:47', '2016-03-28 15:11:47', 'DSC04613.jpg', 'DSC04613', 'assets/Uploads/DSC04613.jpg', NULL, 1, 1, 1),
(426, 'Image', '2016-03-28 15:11:54', '2016-03-28 15:11:54', 'DSC04620.jpg', 'DSC04620', 'assets/Uploads/DSC04620.jpg', NULL, 1, 1, 1),
(427, 'Image', '2016-03-28 15:12:11', '2016-03-28 15:12:11', 'DSC04597.jpg', 'DSC04597', 'assets/Uploads/DSC04597.jpg', NULL, 1, 1, 1),
(428, 'Image', '2016-03-28 15:12:35', '2016-03-28 15:12:35', 'DSC04688.jpg', 'DSC04688', 'assets/Uploads/DSC04688.jpg', NULL, 1, 1, 1),
(429, 'Image', '2016-03-28 15:12:45', '2016-03-28 15:12:45', 'DSC4638.jpg', 'DSC4638', 'assets/Uploads/DSC4638.jpg', NULL, 1, 1, 1),
(430, 'Image', '2016-03-28 15:12:46', '2016-03-28 15:12:46', 'DSC04626.jpg', 'DSC04626', 'assets/Uploads/DSC04626.jpg', NULL, 1, 1, 1),
(431, 'Image', '2016-03-28 15:13:20', '2016-03-28 15:13:20', 'DSC04653.jpg', 'DSC04653', 'assets/Uploads/DSC04653.jpg', NULL, 1, 1, 1),
(432, 'Image', '2016-03-28 15:13:30', '2016-03-28 15:13:30', 'DSC04707.jpg', 'DSC04707', 'assets/Uploads/DSC04707.jpg', NULL, 1, 1, 1),
(433, 'Image', '2016-03-28 15:13:47', '2016-03-28 15:13:47', 'DSC04860.jpg', 'DSC04860', 'assets/Uploads/DSC04860.jpg', NULL, 1, 1, 1),
(434, 'Image', '2016-03-28 15:13:53', '2016-03-28 15:13:53', 'DSC04813.jpg', 'DSC04813', 'assets/Uploads/DSC04813.jpg', NULL, 1, 1, 1),
(435, 'Image', '2016-03-28 15:14:20', '2016-03-28 15:14:20', 'DSC04738.jpg', 'DSC04738', 'assets/Uploads/DSC04738.jpg', NULL, 1, 1, 1),
(436, 'Image', '2016-03-28 15:15:09', '2016-03-28 15:15:09', 'DSC04978.jpg', 'DSC04978', 'assets/Uploads/DSC04978.jpg', NULL, 1, 1, 1),
(437, 'Image', '2016-03-28 15:15:12', '2016-03-28 15:15:12', 'DSC04953.jpg', 'DSC04953', 'assets/Uploads/DSC04953.jpg', NULL, 1, 1, 1),
(438, 'Image', '2016-03-28 15:15:14', '2016-03-28 15:15:14', 'DSC04971.jpg', 'DSC04971', 'assets/Uploads/DSC04971.jpg', NULL, 1, 1, 1),
(439, 'Image', '2016-03-28 15:15:15', '2016-03-28 15:15:15', 'DSC04989.jpg', 'DSC04989', 'assets/Uploads/DSC04989.jpg', NULL, 1, 1, 1),
(440, 'Image', '2016-03-28 15:15:17', '2016-03-28 15:15:17', 'DSC04973.jpg', 'DSC04973', 'assets/Uploads/DSC04973.jpg', NULL, 1, 1, 1),
(441, 'Image', '2016-03-28 15:15:18', '2016-03-28 15:15:18', 'DSC04990.jpg', 'DSC04990', 'assets/Uploads/DSC04990.jpg', NULL, 1, 1, 1),
(442, 'Image', '2016-03-28 15:15:19', '2016-03-28 15:15:19', 'DSC04976.jpg', 'DSC04976', 'assets/Uploads/DSC04976.jpg', NULL, 1, 1, 1),
(443, 'Image', '2016-03-28 15:15:45', '2016-03-28 15:15:45', 'DSC4977.jpg', 'DSC4977', 'assets/Uploads/DSC4977.jpg', NULL, 1, 1, 1),
(444, 'Image', '2016-03-28 15:16:01', '2016-03-28 15:16:01', 'DSC4731.jpg', 'DSC4731', 'assets/Uploads/DSC4731.jpg', NULL, 1, 1, 1),
(445, 'Image', '2016-03-28 15:16:02', '2016-03-28 15:16:02', 'DSC04733-2.jpg', 'DSC04733 2', 'assets/Uploads/DSC04733-2.jpg', NULL, 1, 1, 1),
(446, 'Image', '2016-03-28 15:17:27', '2016-03-28 15:17:27', 'DSC05097.jpg', 'DSC05097', 'assets/Uploads/DSC05097.jpg', NULL, 1, 1, 1),
(447, 'Image', '2016-03-28 15:17:30', '2016-03-28 15:17:30', 'DSC05083.jpg', 'DSC05083', 'assets/Uploads/DSC05083.jpg', NULL, 1, 1, 1),
(448, 'Image', '2016-03-28 15:17:37', '2016-03-28 15:17:37', 'DSC04521.jpg', 'DSC04521', 'assets/Uploads/DSC04521.jpg', NULL, 1, 1, 1),
(449, 'Image', '2016-03-28 15:17:43', '2016-03-28 15:17:43', 'DSC04557.jpg', 'DSC04557', 'assets/Uploads/DSC04557.jpg', NULL, 1, 1, 1),
(450, 'Image', '2016-03-28 15:17:46', '2016-03-28 15:17:46', 'DSC04556.jpg', 'DSC04556', 'assets/Uploads/DSC04556.jpg', NULL, 1, 1, 1),
(451, 'Image', '2016-03-28 15:17:52', '2016-03-28 15:17:52', 'DSC04560.jpg', 'DSC04560', 'assets/Uploads/DSC04560.jpg', NULL, 1, 1, 1),
(452, 'Image', '2016-03-28 15:18:01', '2016-03-28 15:18:01', 'DSC04543.jpg', 'DSC04543', 'assets/Uploads/DSC04543.jpg', NULL, 1, 1, 1),
(453, 'Image', '2016-03-28 15:18:28', '2016-03-28 15:18:28', 'DSC04907.jpg', 'DSC04907', 'assets/Uploads/DSC04907.jpg', NULL, 1, 1, 1),
(454, 'Image', '2016-03-28 15:18:30', '2016-03-28 15:18:30', 'DSC04908.jpg', 'DSC04908', 'assets/Uploads/DSC04908.jpg', NULL, 1, 1, 1),
(455, 'Image', '2016-03-28 15:18:47', '2016-03-28 15:18:47', 'DSC04923.jpg', 'DSC04923', 'assets/Uploads/DSC04923.jpg', NULL, 1, 1, 1),
(456, 'Image', '2016-03-28 15:18:48', '2016-03-28 15:18:48', 'DSC04930.jpg', 'DSC04930', 'assets/Uploads/DSC04930.jpg', NULL, 1, 1, 1),
(457, 'Image', '2016-03-28 15:18:56', '2016-03-28 15:18:56', 'DSC04932.jpg', 'DSC04932', 'assets/Uploads/DSC04932.jpg', NULL, 1, 1, 1),
(458, 'Image', '2016-03-28 15:19:38', '2016-03-28 15:19:38', 'DSC04918.jpg', 'DSC04918', 'assets/Uploads/DSC04918.jpg', NULL, 1, 1, 1),
(459, 'Image', '2016-03-28 15:21:18', '2016-03-28 15:21:18', 'DSC04572-2.jpg', 'DSC04572 2', 'assets/Uploads/DSC04572-2.jpg', NULL, 1, 1, 1),
(460, 'Image', '2016-03-28 15:22:22', '2016-03-28 15:22:22', 'DSC4954.jpg', 'DSC4954', 'assets/Uploads/DSC4954.jpg', NULL, 1, 1, 1),
(461, 'Image', '2016-04-19 10:08:26', '2016-04-19 10:08:26', 'DSC05124.jpg', 'DSC05124', 'assets/Uploads/DSC05124.jpg', NULL, 1, 1, 1),
(462, 'Image', '2016-04-19 10:09:19', '2016-04-19 10:09:19', 'DSC05384.jpg', 'DSC05384', 'assets/Uploads/DSC05384.jpg', NULL, 1, 1, 1),
(463, 'Image', '2016-04-19 10:10:54', '2016-04-19 10:10:54', 'DSC05110.jpg', 'DSC05110', 'assets/Uploads/DSC05110.jpg', NULL, 1, 1, 1),
(464, 'Image', '2016-04-19 10:10:55', '2016-04-19 10:10:55', 'DSC05113.jpg', 'DSC05113', 'assets/Uploads/DSC05113.jpg', NULL, 1, 1, 1),
(465, 'Image', '2016-04-19 10:10:57', '2016-04-19 10:10:57', 'DSC05109.jpg', 'DSC05109', 'assets/Uploads/DSC05109.jpg', NULL, 1, 1, 1),
(466, 'Image', '2016-04-19 10:10:59', '2016-04-19 10:10:59', 'DSC05131.jpg', 'DSC05131', 'assets/Uploads/DSC05131.jpg', NULL, 1, 1, 1),
(467, 'Image', '2016-04-19 10:11:01', '2016-04-19 10:11:01', 'DSC05144.jpg', 'DSC05144', 'assets/Uploads/DSC05144.jpg', NULL, 1, 1, 1),
(468, 'Image', '2016-04-19 10:11:02', '2016-04-19 10:11:02', 'DSC5125.jpg', 'DSC5125', 'assets/Uploads/DSC5125.jpg', NULL, 1, 1, 1),
(469, 'Image', '2016-04-19 10:11:25', '2016-04-19 10:11:25', 'DSC05167.jpg', 'DSC05167', 'assets/Uploads/DSC05167.jpg', NULL, 1, 1, 1),
(470, 'Image', '2016-04-19 10:11:32', '2016-04-19 10:11:32', 'DSC05159.jpg', 'DSC05159', 'assets/Uploads/DSC05159.jpg', NULL, 1, 1, 1),
(471, 'Image', '2016-04-19 10:11:40', '2016-04-19 10:11:40', 'DSC05169.jpg', 'DSC05169', 'assets/Uploads/DSC05169.jpg', NULL, 1, 1, 1),
(472, 'Image', '2016-04-19 10:11:48', '2016-04-19 10:11:48', 'DSC05173.jpg', 'DSC05173', 'assets/Uploads/DSC05173.jpg', NULL, 1, 1, 1),
(473, 'Image', '2016-04-19 10:11:53', '2016-04-19 10:11:53', 'DSC05208.jpg', 'DSC05208', 'assets/Uploads/DSC05208.jpg', NULL, 1, 1, 1),
(474, 'Image', '2016-04-19 10:13:39', '2016-04-19 10:13:39', 'DSC05323.jpg', 'DSC05323', 'assets/Uploads/DSC05323.jpg', NULL, 1, 1, 1),
(475, 'Image', '2016-04-19 10:13:44', '2016-04-19 10:13:44', 'DSC05316.jpg', 'DSC05316', 'assets/Uploads/DSC05316.jpg', NULL, 1, 1, 1),
(476, 'Image', '2016-04-19 10:13:48', '2016-04-19 10:13:48', 'DSC05332.jpg', 'DSC05332', 'assets/Uploads/DSC05332.jpg', NULL, 1, 1, 1),
(477, 'Image', '2016-04-19 10:13:51', '2016-04-19 10:13:51', 'DSC5385.jpg', 'DSC5385', 'assets/Uploads/DSC5385.jpg', NULL, 1, 1, 1),
(478, 'Image', '2016-04-19 10:14:04', '2016-04-19 10:14:04', 'DSC05392.jpg', 'DSC05392', 'assets/Uploads/DSC05392.jpg', NULL, 1, 1, 1),
(479, 'Image', '2016-04-19 10:14:06', '2016-04-19 10:14:06', 'DSC05394.jpg', 'DSC05394', 'assets/Uploads/DSC05394.jpg', NULL, 1, 1, 1),
(480, 'Image', '2016-04-19 11:37:57', '2016-04-19 11:37:57', 'DSC05565.jpg', 'DSC05565', 'assets/Uploads/DSC05565.jpg', NULL, 1, 1, 1),
(481, 'Image', '2016-04-19 11:38:08', '2016-04-19 11:38:08', 'DSC05562.jpg', 'DSC05562', 'assets/Uploads/DSC05562.jpg', NULL, 1, 1, 1),
(482, 'Image', '2016-04-19 11:39:51', '2016-04-19 11:39:51', 'DSC05426.jpg', 'DSC05426', 'assets/Uploads/DSC05426.jpg', NULL, 1, 1, 1),
(483, 'Image', '2016-04-19 11:39:55', '2016-04-19 11:39:55', 'DSC05443.jpg', 'DSC05443', 'assets/Uploads/DSC05443.jpg', NULL, 1, 1, 1),
(484, 'Image', '2016-04-19 11:39:56', '2016-04-19 11:39:56', 'DSC05459.jpg', 'DSC05459', 'assets/Uploads/DSC05459.jpg', NULL, 1, 1, 1),
(485, 'Image', '2016-04-19 11:39:59', '2016-04-19 11:39:59', 'DSC05469.jpg', 'DSC05469', 'assets/Uploads/DSC05469.jpg', NULL, 1, 1, 1),
(486, 'Image', '2016-04-19 11:41:59', '2016-04-19 11:41:59', 'DSC05503.jpg', 'DSC05503', 'assets/Uploads/DSC05503.jpg', NULL, 1, 1, 1),
(487, 'Image', '2016-04-19 11:42:05', '2016-04-19 11:42:05', 'DSC05489.jpg', 'DSC05489', 'assets/Uploads/DSC05489.jpg', NULL, 1, 1, 1),
(488, 'Image', '2016-04-19 11:42:15', '2016-04-19 11:42:15', 'DSC05514.jpg', 'DSC05514', 'assets/Uploads/DSC05514.jpg', NULL, 1, 1, 1),
(489, 'Image', '2016-04-19 11:42:17', '2016-04-19 11:42:17', 'DSC05540.jpg', 'DSC05540', 'assets/Uploads/DSC05540.jpg', NULL, 1, 1, 1),
(490, 'Image', '2016-04-19 11:42:20', '2016-04-19 11:42:20', 'DSC05561.jpg', 'DSC05561', 'assets/Uploads/DSC05561.jpg', NULL, 1, 1, 1),
(491, 'Image', '2016-04-19 11:42:21', '2016-04-19 11:42:21', 'DSC05575.jpg', 'DSC05575', 'assets/Uploads/DSC05575.jpg', NULL, 1, 1, 1),
(492, 'Image', '2016-04-19 11:42:25', '2016-04-19 11:42:25', 'DSC05580.jpg', 'DSC05580', 'assets/Uploads/DSC05580.jpg', NULL, 1, 1, 1),
(493, 'Image', '2016-04-19 11:42:52', '2016-04-19 11:42:52', 'DSC05615.jpg', 'DSC05615', 'assets/Uploads/DSC05615.jpg', NULL, 1, 1, 1),
(494, 'Image', '2016-04-19 11:43:00', '2016-04-19 11:43:00', 'DSC05620.jpg', 'DSC05620', 'assets/Uploads/DSC05620.jpg', NULL, 1, 1, 1),
(495, 'Image', '2016-04-19 11:43:17', '2016-04-19 11:43:17', 'DSC05626.jpg', 'DSC05626', 'assets/Uploads/DSC05626.jpg', NULL, 1, 1, 1),
(496, 'Image', '2016-04-19 11:43:18', '2016-04-19 11:43:18', 'DSC05630.jpg', 'DSC05630', 'assets/Uploads/DSC05630.jpg', NULL, 1, 1, 1),
(497, 'Image', '2016-04-19 11:43:20', '2016-04-19 11:43:20', 'DSC05640.jpg', 'DSC05640', 'assets/Uploads/DSC05640.jpg', NULL, 1, 1, 1),
(498, 'Image', '2016-04-19 11:43:26', '2016-04-19 11:43:26', 'DSC05665.jpg', 'DSC05665', 'assets/Uploads/DSC05665.jpg', NULL, 1, 1, 1),
(499, 'Image', '2016-04-19 11:43:33', '2016-04-19 11:43:33', 'DSC05673.jpg', 'DSC05673', 'assets/Uploads/DSC05673.jpg', NULL, 1, 1, 1),
(500, 'Image', '2016-04-21 20:34:55', '2016-04-21 20:34:55', 'DSC06106.jpg', 'DSC06106', 'assets/Uploads/DSC06106.jpg', NULL, 1, 1, 1),
(501, 'Image', '2016-04-21 20:35:06', '2016-04-21 20:35:06', 'DSC06108.jpg', 'DSC06108', 'assets/Uploads/DSC06108.jpg', NULL, 1, 1, 1),
(502, 'Image', '2016-04-21 20:36:10', '2016-04-21 20:36:10', 'DSC05955.jpg', 'DSC05955', 'assets/Uploads/DSC05955.jpg', NULL, 1, 1, 1),
(503, 'Image', '2016-04-21 20:36:11', '2016-04-21 20:36:11', 'DSC05958.jpg', 'DSC05958', 'assets/Uploads/DSC05958.jpg', NULL, 1, 1, 1),
(504, 'Image', '2016-04-21 20:36:14', '2016-04-21 20:36:14', 'DSC05959.jpg', 'DSC05959', 'assets/Uploads/DSC05959.jpg', NULL, 1, 1, 1),
(505, 'Image', '2016-04-21 20:36:15', '2016-04-21 20:36:15', 'DSC05961.jpg', 'DSC05961', 'assets/Uploads/DSC05961.jpg', NULL, 1, 1, 1),
(506, 'Image', '2016-04-21 20:36:56', '2016-04-21 20:36:56', 'DSC05999.jpg', 'DSC05999', 'assets/Uploads/DSC05999.jpg', NULL, 1, 1, 1),
(507, 'Image', '2016-04-21 20:37:18', '2016-04-21 20:37:18', 'DSC06035.jpg', 'DSC06035', 'assets/Uploads/DSC06035.jpg', NULL, 1, 1, 1),
(508, 'Image', '2016-04-21 20:37:21', '2016-04-21 20:37:21', 'DSC06059.jpg', 'DSC06059', 'assets/Uploads/DSC06059.jpg', NULL, 1, 1, 1),
(509, 'Image', '2016-04-21 20:37:22', '2016-04-21 20:37:22', 'DSC06042.jpg', 'DSC06042', 'assets/Uploads/DSC06042.jpg', NULL, 1, 1, 1),
(510, 'Image', '2016-04-21 20:37:23', '2016-04-21 20:37:23', 'DSC06085.jpg', 'DSC06085', 'assets/Uploads/DSC06085.jpg', NULL, 1, 1, 1),
(511, 'Image', '2016-04-21 20:37:54', '2016-04-21 20:37:54', 'DSC06114.jpg', 'DSC06114', 'assets/Uploads/DSC06114.jpg', NULL, 1, 1, 1),
(512, 'Image', '2016-04-21 20:37:57', '2016-04-21 20:37:57', 'DSC06111.jpg', 'DSC06111', 'assets/Uploads/DSC06111.jpg', NULL, 1, 1, 1),
(513, 'Image', '2016-04-21 20:37:58', '2016-04-21 20:37:58', 'DSC6109.jpg', 'DSC6109', 'assets/Uploads/DSC6109.jpg', NULL, 1, 1, 1),
(514, 'Image', '2016-04-21 21:29:11', '2016-04-21 21:29:11', 'DSC06288.jpg', 'DSC06288', 'assets/Uploads/DSC06288.jpg', NULL, 1, 1, 1),
(515, 'Image', '2016-04-21 21:29:25', '2016-04-21 21:29:25', 'DSC6289.jpg', 'DSC6289', 'assets/Uploads/DSC6289.jpg', NULL, 1, 1, 1),
(516, 'Image', '2016-04-21 21:30:40', '2016-04-21 21:30:40', 'DSC06226.jpg', 'DSC06226', 'assets/Uploads/DSC06226.jpg', NULL, 1, 1, 1),
(517, 'Image', '2016-04-21 21:30:43', '2016-04-21 21:30:43', 'DSC06275.jpg', 'DSC06275', 'assets/Uploads/DSC06275.jpg', NULL, 1, 1, 1),
(518, 'Image', '2016-04-21 21:30:48', '2016-04-21 21:30:48', 'DSC06270.jpg', 'DSC06270', 'assets/Uploads/DSC06270.jpg', NULL, 1, 1, 1),
(519, 'Image', '2016-04-21 21:30:55', '2016-04-21 21:30:55', 'DSC06287.jpg', 'DSC06287', 'assets/Uploads/DSC06287.jpg', NULL, 1, 1, 1),
(520, 'Image', '2016-04-21 21:31:10', '2016-04-21 21:31:10', 'DSC06223.jpg', 'DSC06223', 'assets/Uploads/DSC06223.jpg', NULL, 1, 1, 1),
(521, 'Image', '2016-04-21 21:31:16', '2016-04-21 21:31:16', 'DSC06217.jpg', 'DSC06217', 'assets/Uploads/DSC06217.jpg', NULL, 1, 1, 1),
(522, 'Image', '2016-04-21 21:32:13', '2016-04-21 21:32:13', 'DSC06320.jpg', 'DSC06320', 'assets/Uploads/DSC06320.jpg', NULL, 1, 1, 1),
(523, 'Image', '2016-04-21 21:32:18', '2016-04-21 21:32:18', 'DSC06373.jpg', 'DSC06373', 'assets/Uploads/DSC06373.jpg', NULL, 1, 1, 1),
(524, 'Image', '2016-04-21 21:32:24', '2016-04-21 21:32:24', 'DSC06376.jpg', 'DSC06376', 'assets/Uploads/DSC06376.jpg', NULL, 1, 1, 1),
(525, 'Image', '2016-04-21 21:33:04', '2016-04-21 21:33:04', 'DSC06403.jpg', 'DSC06403', 'assets/Uploads/DSC06403.jpg', NULL, 1, 1, 1),
(526, 'Image', '2016-04-21 21:33:23', '2016-04-21 21:33:23', 'DSC06450.jpg', 'DSC06450', 'assets/Uploads/DSC06450.jpg', NULL, 1, 1, 1),
(527, 'Image', '2016-04-21 21:33:25', '2016-04-21 21:33:25', 'DSC06441.jpg', 'DSC06441', 'assets/Uploads/DSC06441.jpg', NULL, 1, 1, 1),
(528, 'Image', '2016-04-21 21:34:48', '2016-04-21 21:34:48', 'DSC06500.jpg', 'DSC06500', 'assets/Uploads/DSC06500.jpg', NULL, 1, 1, 1),
(529, 'Image', '2016-04-21 21:35:00', '2016-04-21 21:35:00', 'DSC06483.jpg', 'DSC06483', 'assets/Uploads/DSC06483.jpg', NULL, 1, 1, 1),
(530, 'Image', '2016-04-21 21:35:05', '2016-04-21 21:35:05', 'DSC06514.jpg', 'DSC06514', 'assets/Uploads/DSC06514.jpg', NULL, 1, 1, 1),
(531, 'Image', '2016-04-21 21:35:12', '2016-04-21 21:35:12', 'DSC06549.jpg', 'DSC06549', 'assets/Uploads/DSC06549.jpg', NULL, 1, 1, 1),
(532, 'Image', '2016-04-21 21:35:16', '2016-04-21 21:35:16', 'DSC06576.jpg', 'DSC06576', 'assets/Uploads/DSC06576.jpg', NULL, 1, 1, 1),
(533, 'Image', '2016-10-16 10:17:31', '2016-10-16 10:17:31', 'DSC06646.jpg', 'DSC06646', 'assets/Uploads/DSC06646.jpg', NULL, 1, 1, 1),
(534, 'Image', '2016-10-16 10:18:18', '2016-10-16 10:18:18', 'DSC06883.jpg', 'DSC06883', 'assets/Uploads/DSC06883.jpg', NULL, 1, 1, 1),
(535, 'Image', '2016-10-16 10:20:19', '2016-10-16 10:20:19', 'british-pattern.png', 'british pattern', 'assets/Uploads/british-pattern.png', NULL, 1, 1, 1),
(536, 'Image', '2016-10-16 10:22:13', '2016-10-16 10:22:13', 'denmark-pattern.jpg', 'denmark pattern', 'assets/Uploads/denmark-pattern.jpg', NULL, 1, 1, 1),
(537, 'Image', '2016-10-16 10:22:23', '2016-10-16 10:22:23', 'british-pattern2.png', 'british pattern2', 'assets/Uploads/british-pattern2.png', NULL, 1, 1, 1),
(538, 'Image', '2016-10-16 10:23:27', '2016-10-16 10:23:27', 'DSC06613.jpg', 'DSC06613', 'assets/Uploads/DSC06613.jpg', NULL, 1, 1, 1),
(539, 'Image', '2016-10-16 10:23:27', '2016-10-16 10:23:27', 'DSC06631.jpg', 'DSC06631', 'assets/Uploads/DSC06631.jpg', NULL, 1, 1, 1),
(540, 'Image', '2016-10-16 10:24:05', '2016-10-16 10:24:05', 'DSC06680.jpg', 'DSC06680', 'assets/Uploads/DSC06680.jpg', NULL, 1, 1, 1),
(541, 'Image', '2016-10-16 10:24:06', '2016-10-16 10:24:06', 'DSC06676.jpg', 'DSC06676', 'assets/Uploads/DSC06676.jpg', NULL, 1, 1, 1),
(542, 'Image', '2016-10-16 10:25:10', '2016-10-16 10:25:10', 'DSC06706.jpg', 'DSC06706', 'assets/Uploads/DSC06706.jpg', NULL, 1, 1, 1),
(543, 'Image', '2016-10-16 10:25:17', '2016-10-16 10:25:17', 'DSC06690.jpg', 'DSC06690', 'assets/Uploads/DSC06690.jpg', NULL, 1, 1, 1),
(544, 'Image', '2016-10-16 10:25:22', '2016-10-16 10:25:22', 'DSC06699.jpg', 'DSC06699', 'assets/Uploads/DSC06699.jpg', NULL, 1, 1, 1),
(545, 'Image', '2016-10-16 10:26:21', '2016-10-16 10:26:21', 'DSC06845.jpg', 'DSC06845', 'assets/Uploads/DSC06845.jpg', NULL, 1, 1, 1),
(546, 'Image', '2016-10-16 10:26:34', '2016-10-16 10:26:34', 'DSC06806.jpg', 'DSC06806', 'assets/Uploads/DSC06806.jpg', NULL, 1, 1, 1),
(547, 'Image', '2016-10-16 10:26:35', '2016-10-16 10:26:35', 'DSC06831.jpg', 'DSC06831', 'assets/Uploads/DSC06831.jpg', NULL, 1, 1, 1),
(548, 'Image', '2016-10-16 10:26:36', '2016-10-16 10:26:36', 'DSC06740.jpg', 'DSC06740', 'assets/Uploads/DSC06740.jpg', NULL, 1, 1, 1),
(549, 'Image', '2016-10-16 10:26:36', '2016-10-16 10:26:36', 'DSC06746.jpg', 'DSC06746', 'assets/Uploads/DSC06746.jpg', NULL, 1, 1, 1),
(550, 'Image', '2016-10-16 10:26:37', '2016-10-16 10:26:37', 'DSC06743.jpg', 'DSC06743', 'assets/Uploads/DSC06743.jpg', NULL, 1, 1, 1),
(551, 'Image', '2016-10-16 10:26:39', '2016-10-16 10:26:39', 'DSC06849.jpg', 'DSC06849', 'assets/Uploads/DSC06849.jpg', NULL, 1, 1, 1),
(552, 'Image', '2016-10-16 10:26:39', '2016-10-16 10:26:39', 'DSC06852.jpg', 'DSC06852', 'assets/Uploads/DSC06852.jpg', NULL, 1, 1, 1),
(553, 'Image', '2016-10-16 10:26:41', '2016-10-16 10:26:41', 'DSC06925.jpg', 'DSC06925', 'assets/Uploads/DSC06925.jpg', NULL, 1, 1, 1),
(554, 'Image', '2016-10-16 10:26:45', '2016-10-16 10:26:45', 'DSC06892.jpg', 'DSC06892', 'assets/Uploads/DSC06892.jpg', NULL, 1, 1, 1),
(555, 'Image', '2016-10-16 10:26:50', '2016-10-16 10:26:50', 'DSC07002.jpg', 'DSC07002', 'assets/Uploads/DSC07002.jpg', NULL, 1, 1, 1),
(556, 'Image', '2016-10-16 10:26:53', '2016-10-16 10:26:53', 'DSC06907.jpg', 'DSC06907', 'assets/Uploads/DSC06907.jpg', NULL, 1, 1, 1),
(557, 'Image', '2016-10-16 10:26:54', '2016-10-16 10:26:54', 'DSC06969.jpg', 'DSC06969', 'assets/Uploads/DSC06969.jpg', NULL, 1, 1, 1),
(558, 'Image', '2016-10-16 10:26:55', '2016-10-16 10:26:55', 'DSC6884.jpg', 'DSC6884', 'assets/Uploads/DSC6884.jpg', NULL, 1, 1, 1),
(559, 'Image', '2016-10-16 10:26:55', '2016-10-16 10:26:55', 'DSC06964.jpg', 'DSC06964', 'assets/Uploads/DSC06964.jpg', NULL, 1, 1, 1),
(560, 'Image', '2016-10-16 10:27:27', '2016-10-16 10:27:27', 'DSC07167.jpg', 'DSC07167', 'assets/Uploads/DSC07167.jpg', NULL, 1, 1, 1),
(561, 'Image', '2016-10-16 10:27:34', '2016-10-16 10:27:34', 'DSC07190.jpg', 'DSC07190', 'assets/Uploads/DSC07190.jpg', NULL, 1, 1, 1),
(562, 'Image', '2016-10-16 10:27:35', '2016-10-16 10:27:35', 'DSC07194.jpg', 'DSC07194', 'assets/Uploads/DSC07194.jpg', NULL, 1, 1, 1),
(563, 'Image', '2016-10-16 10:28:49', '2016-10-16 10:28:49', 'DSC6681.jpg', 'DSC6681', 'assets/Uploads/DSC6681.jpg', NULL, 1, 1, 1),
(564, 'Image', '2016-10-16 10:28:50', '2016-10-16 10:28:50', 'DSC6677.jpg', 'DSC6677', 'assets/Uploads/DSC6677.jpg', NULL, 1, 1, 1),
(565, 'Image', '2016-10-16 10:30:18', '2016-10-16 10:30:18', 'DSC07706.jpg', 'DSC07706', 'assets/Uploads/DSC07706.jpg', NULL, 1, 1, 1),
(566, 'Image', '2016-10-16 10:31:58', '2016-10-16 10:31:58', 'DSC6908.jpg', 'DSC6908', 'assets/Uploads/DSC6908.jpg', NULL, 1, 1, 1),
(567, 'Image', '2016-10-16 10:32:54', '2016-10-16 10:32:54', 'DSC07217.jpg', 'DSC07217', 'assets/Uploads/DSC07217.jpg', NULL, 1, 1, 1),
(568, 'Image', '2016-10-16 10:32:59', '2016-10-16 10:32:59', 'DSC07291.jpg', 'DSC07291', 'assets/Uploads/DSC07291.jpg', NULL, 1, 1, 1),
(569, 'Image', '2016-10-16 10:33:03', '2016-10-16 10:33:03', 'DSC07306.jpg', 'DSC07306', 'assets/Uploads/DSC07306.jpg', NULL, 1, 1, 1),
(570, 'Image', '2016-10-16 10:33:04', '2016-10-16 10:33:04', 'DSC07300.jpg', 'DSC07300', 'assets/Uploads/DSC07300.jpg', NULL, 1, 1, 1),
(571, 'Image', '2016-10-16 10:33:04', '2016-10-16 10:33:04', 'DSC07304.jpg', 'DSC07304', 'assets/Uploads/DSC07304.jpg', NULL, 1, 1, 1),
(572, 'Image', '2016-10-16 10:33:05', '2016-10-16 10:33:05', 'DSC07243.jpg', 'DSC07243', 'assets/Uploads/DSC07243.jpg', NULL, 1, 1, 1),
(573, 'Image', '2016-10-16 10:34:32', '2016-10-16 10:34:32', 'DSC07460.jpg', 'DSC07460', 'assets/Uploads/DSC07460.jpg', NULL, 1, 1, 1),
(574, 'Image', '2016-10-16 10:35:47', '2016-10-16 10:35:47', 'DSC07385.jpg', 'DSC07385', 'assets/Uploads/DSC07385.jpg', NULL, 1, 1, 1),
(575, 'Image', '2016-10-16 10:35:47', '2016-10-16 10:35:47', 'DSC07402.jpg', 'DSC07402', 'assets/Uploads/DSC07402.jpg', NULL, 1, 1, 1),
(576, 'Image', '2016-10-16 10:36:11', '2016-10-16 10:36:11', 'DSC07424.jpg', 'DSC07424', 'assets/Uploads/DSC07424.jpg', NULL, 1, 1, 1),
(577, 'Image', '2016-10-16 10:36:18', '2016-10-16 10:36:18', 'DSC07446.jpg', 'DSC07446', 'assets/Uploads/DSC07446.jpg', NULL, 1, 1, 1),
(578, 'Image', '2016-10-16 10:36:18', '2016-10-16 10:36:18', 'DSC07468.jpg', 'DSC07468', 'assets/Uploads/DSC07468.jpg', NULL, 1, 1, 1),
(579, 'Image', '2016-10-16 10:36:22', '2016-10-16 10:36:22', 'DSC07511.jpg', 'DSC07511', 'assets/Uploads/DSC07511.jpg', NULL, 1, 1, 1),
(580, 'Image', '2016-10-16 10:36:23', '2016-10-16 10:36:23', 'DSC07473.jpg', 'DSC07473', 'assets/Uploads/DSC07473.jpg', NULL, 1, 1, 1),
(581, 'Image', '2016-10-16 10:36:26', '2016-10-16 10:36:26', 'DSC07486.jpg', 'DSC07486', 'assets/Uploads/DSC07486.jpg', NULL, 1, 1, 1),
(582, 'Image', '2016-10-16 10:36:28', '2016-10-16 10:36:28', 'DSC07480.jpg', 'DSC07480', 'assets/Uploads/DSC07480.jpg', NULL, 1, 1, 1),
(583, 'Image', '2016-10-16 10:36:32', '2016-10-16 10:36:32', 'DSC07499.jpg', 'DSC07499', 'assets/Uploads/DSC07499.jpg', NULL, 1, 1, 1),
(584, 'Image', '2016-10-16 10:37:47', '2016-10-16 10:37:47', 'DSC7707.jpg', 'DSC7707', 'assets/Uploads/DSC7707.jpg', NULL, 1, 1, 1),
(585, 'Image', '2016-10-16 10:38:43', '2016-10-16 10:38:43', 'DSC07577.jpg', 'DSC07577', 'assets/Uploads/DSC07577.jpg', NULL, 1, 1, 1),
(586, 'Image', '2016-10-16 10:38:56', '2016-10-16 10:38:56', 'DSC07628.jpg', 'DSC07628', 'assets/Uploads/DSC07628.jpg', NULL, 1, 1, 1),
(587, 'Image', '2016-10-16 10:39:02', '2016-10-16 10:39:02', 'DSC07631.jpg', 'DSC07631', 'assets/Uploads/DSC07631.jpg', NULL, 1, 1, 1),
(588, 'Image', '2016-10-16 10:39:03', '2016-10-16 10:39:03', 'DSC07630.jpg', 'DSC07630', 'assets/Uploads/DSC07630.jpg', NULL, 1, 1, 1),
(589, 'Image', '2016-10-16 10:39:04', '2016-10-16 10:39:04', 'DSC07615.jpg', 'DSC07615', 'assets/Uploads/DSC07615.jpg', NULL, 1, 1, 1),
(590, 'Image', '2016-10-16 10:39:11', '2016-10-16 10:39:11', 'DSC7708.jpg', 'DSC7708', 'assets/Uploads/DSC7708.jpg', NULL, 1, 1, 1),
(591, 'Image', '2016-10-16 10:39:15', '2016-10-16 10:39:15', 'DSC07727.jpg', 'DSC07727', 'assets/Uploads/DSC07727.jpg', NULL, 1, 1, 1),
(592, 'Image', '2016-10-16 10:39:23', '2016-10-16 10:39:23', 'DSC07764.jpg', 'DSC07764', 'assets/Uploads/DSC07764.jpg', NULL, 1, 1, 1),
(593, 'Image', '2016-10-16 10:39:23', '2016-10-16 10:39:23', 'DSC07732.jpg', 'DSC07732', 'assets/Uploads/DSC07732.jpg', NULL, 1, 1, 1),
(594, 'Image', '2016-10-16 10:39:33', '2016-10-16 10:39:33', 'DSC07801.jpg', 'DSC07801', 'assets/Uploads/DSC07801.jpg', NULL, 1, 1, 1),
(595, 'Image', '2016-10-16 10:39:33', '2016-10-16 10:39:33', 'DSC07821.jpg', 'DSC07821', 'assets/Uploads/DSC07821.jpg', NULL, 1, 1, 1),
(596, 'Image', '2016-10-16 10:39:55', '2016-10-16 10:39:55', 'DSC07831.jpg', 'DSC07831', 'assets/Uploads/DSC07831.jpg', NULL, 1, 1, 1),
(597, 'Image', '2016-10-16 10:40:10', '2016-10-16 10:40:10', 'DSC07925.jpg', 'DSC07925', 'assets/Uploads/DSC07925.jpg', NULL, 1, 1, 1),
(598, 'Image', '2016-10-16 10:40:15', '2016-10-16 10:40:15', 'DSC07882.jpg', 'DSC07882', 'assets/Uploads/DSC07882.jpg', NULL, 1, 1, 1),
(599, 'Image', '2016-10-16 10:40:27', '2016-10-16 10:40:27', 'DSC07969.jpg', 'DSC07969', 'assets/Uploads/DSC07969.jpg', NULL, 1, 1, 1),
(600, 'Image', '2016-10-16 10:40:28', '2016-10-16 10:40:28', 'DSC07948.jpg', 'DSC07948', 'assets/Uploads/DSC07948.jpg', NULL, 1, 1, 1),
(601, 'Image', '2016-10-16 10:40:30', '2016-10-16 10:40:30', 'DSC07986.jpg', 'DSC07986', 'assets/Uploads/DSC07986.jpg', NULL, 1, 1, 1),
(602, 'Image', '2016-10-16 10:40:46', '2016-10-16 10:40:46', 'DSC08028.jpg', 'DSC08028', 'assets/Uploads/DSC08028.jpg', NULL, 1, 1, 1),
(603, 'Image', '2016-10-16 10:40:58', '2016-10-16 10:40:58', 'DSC08075.jpg', 'DSC08075', 'assets/Uploads/DSC08075.jpg', NULL, 1, 1, 1),
(604, 'Image', '2016-10-16 10:40:59', '2016-10-16 10:40:59', 'DSC08091.jpg', 'DSC08091', 'assets/Uploads/DSC08091.jpg', NULL, 1, 1, 1),
(605, 'Image', '2016-10-16 10:41:14', '2016-10-16 10:41:14', 'DSC08128.jpg', 'DSC08128', 'assets/Uploads/DSC08128.jpg', NULL, 1, 1, 1),
(606, 'Image', '2016-10-16 10:41:15', '2016-10-16 10:41:15', 'DSC08120.jpg', 'DSC08120', 'assets/Uploads/DSC08120.jpg', NULL, 1, 1, 1),
(607, 'Image', '2016-10-16 10:55:15', '2016-10-16 10:55:15', 'DSC08362.jpg', 'DSC08362', 'assets/Uploads/DSC08362.jpg', NULL, 1, 1, 1),
(608, 'Image', '2016-10-16 10:55:23', '2016-10-16 10:55:23', 'DSC8363.jpg', 'DSC8363', 'assets/Uploads/DSC8363.jpg', NULL, 1, 1, 1),
(609, 'Image', '2016-10-16 10:56:01', '2016-10-16 10:56:01', 'DSC08215.jpg', 'DSC08215', 'assets/Uploads/DSC08215.jpg', NULL, 1, 1, 1),
(610, 'Image', '2016-10-16 10:56:01', '2016-10-16 10:56:01', 'DSC08223.jpg', 'DSC08223', 'assets/Uploads/DSC08223.jpg', NULL, 1, 1, 1),
(611, 'Image', '2016-10-16 10:56:02', '2016-10-16 10:56:02', 'DSC08170.jpg', 'DSC08170', 'assets/Uploads/DSC08170.jpg', NULL, 1, 1, 1),
(612, 'Image', '2016-10-16 10:56:03', '2016-10-16 10:56:03', 'DSC08245.jpg', 'DSC08245', 'assets/Uploads/DSC08245.jpg', NULL, 1, 1, 1),
(613, 'Image', '2016-10-16 10:56:05', '2016-10-16 10:56:05', 'DSC08247.jpg', 'DSC08247', 'assets/Uploads/DSC08247.jpg', NULL, 1, 1, 1),
(614, 'Image', '2016-10-16 10:56:05', '2016-10-16 10:56:05', 'DSC08165.jpg', 'DSC08165', 'assets/Uploads/DSC08165.jpg', NULL, 1, 1, 1),
(615, 'Image', '2016-10-16 10:56:20', '2016-10-16 10:56:20', 'DSC08254.jpg', 'DSC08254', 'assets/Uploads/DSC08254.jpg', NULL, 1, 1, 1),
(616, 'Image', '2016-10-16 10:56:25', '2016-10-16 10:56:25', 'DSC08285.jpg', 'DSC08285', 'assets/Uploads/DSC08285.jpg', NULL, 1, 1, 1),
(617, 'Image', '2016-10-16 10:56:27', '2016-10-16 10:56:27', 'DSC08343.jpg', 'DSC08343', 'assets/Uploads/DSC08343.jpg', NULL, 1, 1, 1),
(618, 'Image', '2016-10-16 10:56:27', '2016-10-16 10:56:27', 'DSC8364.jpg', 'DSC8364', 'assets/Uploads/DSC8364.jpg', NULL, 1, 1, 1),
(619, 'Image', '2016-10-16 10:56:28', '2016-10-16 10:56:28', 'DSC08333.jpg', 'DSC08333', 'assets/Uploads/DSC08333.jpg', NULL, 1, 1, 1),
(620, 'Image', '2016-10-16 11:03:51', '2016-10-16 11:03:51', 'DSC08473.jpg', 'DSC08473', 'assets/Uploads/DSC08473.jpg', NULL, 1, 1, 1),
(621, 'Image', '2016-10-16 11:04:15', '2016-10-16 11:04:15', 'DSC8474.jpg', 'DSC8474', 'assets/Uploads/DSC8474.jpg', NULL, 1, 1, 1),
(622, 'Image', '2016-10-16 11:04:58', '2016-10-16 11:04:58', 'DSC08438.jpg', 'DSC08438', 'assets/Uploads/DSC08438.jpg', NULL, 1, 1, 1),
(623, 'Image', '2016-10-16 11:04:59', '2016-10-16 11:04:59', 'DSC08454.jpg', 'DSC08454', 'assets/Uploads/DSC08454.jpg', NULL, 1, 1, 1),
(624, 'Image', '2016-10-16 11:05:15', '2016-10-16 11:05:15', 'DSC08423.jpg', 'DSC08423', 'assets/Uploads/DSC08423.jpg', NULL, 1, 1, 1),
(625, 'Image', '2016-10-16 11:05:26', '2016-10-16 11:05:26', 'DSC08437.jpg', 'DSC08437', 'assets/Uploads/DSC08437.jpg', NULL, 1, 1, 1),
(626, 'Image', '2016-10-16 11:05:33', '2016-10-16 11:05:33', 'DSC8475.jpg', 'DSC8475', 'assets/Uploads/DSC8475.jpg', NULL, 1, 1, 1),
(627, 'Image', '2016-10-16 11:05:39', '2016-10-16 11:05:39', 'DSC08420.jpg', 'DSC08420', 'assets/Uploads/DSC08420.jpg', NULL, 1, 1, 1),
(628, 'Image', '2016-10-16 11:05:50', '2016-10-16 11:05:50', 'DSC08495.jpg', 'DSC08495', 'assets/Uploads/DSC08495.jpg', NULL, 1, 1, 1),
(629, 'Image', '2016-10-16 11:06:23', '2016-10-16 11:06:23', 'DSC8496.jpg', 'DSC8496', 'assets/Uploads/DSC8496.jpg', NULL, 1, 1, 1),
(630, 'Image', '2016-10-16 11:06:39', '2016-10-16 11:06:39', 'DSC08516.jpg', 'DSC08516', 'assets/Uploads/DSC08516.jpg', NULL, 1, 1, 1),
(631, 'Image', '2016-10-16 11:06:43', '2016-10-16 11:06:43', 'DSC08540.jpg', 'DSC08540', 'assets/Uploads/DSC08540.jpg', NULL, 1, 1, 1),
(632, 'Image', '2016-10-16 11:06:44', '2016-10-16 11:06:44', 'DSC08546.jpg', 'DSC08546', 'assets/Uploads/DSC08546.jpg', NULL, 1, 1, 1),
(633, 'Image', '2016-10-16 11:06:45', '2016-10-16 11:06:45', 'DSC08515.jpg', 'DSC08515', 'assets/Uploads/DSC08515.jpg', NULL, 1, 1, 1),
(634, 'Image', '2016-10-16 11:06:45', '2016-10-16 11:06:45', 'DSC08547.jpg', 'DSC08547', 'assets/Uploads/DSC08547.jpg', NULL, 1, 1, 1),
(635, 'Image', '2016-10-16 11:06:46', '2016-10-16 11:06:46', 'DSC08553.jpg', 'DSC08553', 'assets/Uploads/DSC08553.jpg', NULL, 1, 1, 1),
(636, 'Image', '2016-10-16 11:06:46', '2016-10-16 11:06:46', 'DSC08549.jpg', 'DSC08549', 'assets/Uploads/DSC08549.jpg', NULL, 1, 1, 1),
(637, 'Image', '2016-10-16 11:07:02', '2016-10-16 11:07:02', 'DSC08483.jpg', 'DSC08483', 'assets/Uploads/DSC08483.jpg', NULL, 1, 1, 1),
(638, 'Image', '2016-10-16 11:20:02', '2016-10-16 11:20:02', 'DSC08623.jpg', 'DSC08623', 'assets/Uploads/DSC08623.jpg', NULL, 1, 1, 1),
(639, 'Image', '2016-10-16 11:20:06', '2016-10-16 11:20:06', 'DSC08611.jpg', 'DSC08611', 'assets/Uploads/DSC08611.jpg', NULL, 1, 1, 1),
(640, 'Image', '2016-10-16 11:20:22', '2016-10-16 11:20:22', 'DSC08631.jpg', 'DSC08631', 'assets/Uploads/DSC08631.jpg', NULL, 1, 1, 1),
(641, 'Image', '2016-10-16 11:20:47', '2016-10-16 11:20:47', 'DSC08670.jpg', 'DSC08670', 'assets/Uploads/DSC08670.jpg', NULL, 1, 1, 1),
(642, 'Image', '2016-10-16 11:20:50', '2016-10-16 11:20:50', 'DSC08656.jpg', 'DSC08656', 'assets/Uploads/DSC08656.jpg', NULL, 1, 1, 1),
(643, 'Image', '2016-10-16 11:20:54', '2016-10-16 11:20:54', 'DSC08674.jpg', 'DSC08674', 'assets/Uploads/DSC08674.jpg', NULL, 1, 1, 1),
(644, 'Image', '2016-10-16 11:20:55', '2016-10-16 11:20:55', 'DSC08685.jpg', 'DSC08685', 'assets/Uploads/DSC08685.jpg', NULL, 1, 1, 1),
(645, 'Image', '2016-10-16 11:20:55', '2016-10-16 11:20:55', 'DSC08641.jpg', 'DSC08641', 'assets/Uploads/DSC08641.jpg', NULL, 1, 1, 1),
(646, 'Image', '2016-10-16 11:20:56', '2016-10-16 11:20:56', 'DSC08681.jpg', 'DSC08681', 'assets/Uploads/DSC08681.jpg', NULL, 1, 1, 1),
(647, 'Image', '2016-10-16 11:20:56', '2016-10-16 11:20:56', 'DSC08687.jpg', 'DSC08687', 'assets/Uploads/DSC08687.jpg', NULL, 1, 1, 1),
(648, 'Image', '2016-10-16 11:21:15', '2016-10-16 11:21:15', 'DSC08722.jpg', 'DSC08722', 'assets/Uploads/DSC08722.jpg', NULL, 1, 1, 1),
(649, 'Image', '2016-10-16 11:21:29', '2016-10-16 11:21:29', 'DSC08793.jpg', 'DSC08793', 'assets/Uploads/DSC08793.jpg', NULL, 1, 1, 1),
(650, 'Image', '2016-10-16 11:21:32', '2016-10-16 11:21:32', 'DSC08774.jpg', 'DSC08774', 'assets/Uploads/DSC08774.jpg', NULL, 1, 1, 1),
(651, 'Image', '2016-10-16 11:21:36', '2016-10-16 11:21:36', 'DSC08772.jpg', 'DSC08772', 'assets/Uploads/DSC08772.jpg', NULL, 1, 1, 1),
(652, 'Image', '2016-10-16 11:21:36', '2016-10-16 11:21:36', 'DSC08753.jpg', 'DSC08753', 'assets/Uploads/DSC08753.jpg', NULL, 1, 1, 1),
(653, 'Image', '2016-10-16 11:21:37', '2016-10-16 11:21:37', 'DSC08820.jpg', 'DSC08820', 'assets/Uploads/DSC08820.jpg', NULL, 1, 1, 1),
(654, 'Image', '2016-10-16 11:21:37', '2016-10-16 11:21:37', 'DSC08749.jpg', 'DSC08749', 'assets/Uploads/DSC08749.jpg', NULL, 1, 1, 1),
(655, 'Image', '2016-10-16 11:21:38', '2016-10-16 11:21:38', 'DSC08778.jpg', 'DSC08778', 'assets/Uploads/DSC08778.jpg', NULL, 1, 1, 1),
(656, 'Image', '2016-10-16 11:21:54', '2016-10-16 11:21:54', 'DSC8794.jpg', 'DSC8794', 'assets/Uploads/DSC8794.jpg', NULL, 1, 1, 1),
(657, 'Image', '2016-10-16 13:11:24', '2016-10-16 13:11:24', 'DSC09081.jpg', 'DSC09081', 'assets/Uploads/DSC09081.jpg', NULL, 1, 1, 1),
(658, 'Image', '2016-10-16 13:11:38', '2016-10-16 13:11:38', 'DSC09126.jpg', 'DSC09126', 'assets/Uploads/DSC09126.jpg', NULL, 1, 1, 1),
(659, 'Image', '2016-10-16 13:13:30', '2016-10-16 13:13:30', 'DSC08837.jpg', 'DSC08837', 'assets/Uploads/DSC08837.jpg', NULL, 1, 1, 1),
(660, 'Image', '2016-10-16 13:13:31', '2016-10-16 13:13:31', 'DSC08886.jpg', 'DSC08886', 'assets/Uploads/DSC08886.jpg', NULL, 1, 1, 1),
(661, 'Image', '2016-10-16 13:13:32', '2016-10-16 13:13:32', 'DSC08937.jpg', 'DSC08937', 'assets/Uploads/DSC08937.jpg', NULL, 1, 1, 1),
(662, 'Image', '2016-10-16 13:13:33', '2016-10-16 13:13:33', 'DSC08885.jpg', 'DSC08885', 'assets/Uploads/DSC08885.jpg', NULL, 1, 1, 1),
(663, 'Image', '2016-10-16 13:13:33', '2016-10-16 13:13:33', 'DSC08831.jpg', 'DSC08831', 'assets/Uploads/DSC08831.jpg', NULL, 1, 1, 1),
(664, 'Image', '2016-10-16 13:13:34', '2016-10-16 13:13:34', 'DSC08883.jpg', 'DSC08883', 'assets/Uploads/DSC08883.jpg', NULL, 1, 1, 1),
(665, 'Image', '2016-10-16 13:13:34', '2016-10-16 13:13:34', 'DSC08830.jpg', 'DSC08830', 'assets/Uploads/DSC08830.jpg', NULL, 1, 1, 1),
(666, 'Image', '2016-10-16 13:15:01', '2016-10-16 13:15:01', 'DSC8832.jpg', 'DSC8832', 'assets/Uploads/DSC8832.jpg', NULL, 1, 1, 1),
(667, 'Image', '2016-10-16 13:15:07', '2016-10-16 13:15:07', 'DSC8831.jpg', 'DSC8831', 'assets/Uploads/DSC8831.jpg', NULL, 1, 1, 1),
(668, 'Image', '2016-10-16 13:15:55', '2016-10-16 13:15:55', 'DSC08957.jpg', 'DSC08957', 'assets/Uploads/DSC08957.jpg', NULL, 1, 1, 1),
(669, 'Image', '2016-10-16 13:16:03', '2016-10-16 13:16:03', 'DSC08952.jpg', 'DSC08952', 'assets/Uploads/DSC08952.jpg', NULL, 1, 1, 1),
(670, 'Image', '2016-10-16 13:16:13', '2016-10-16 13:16:13', 'DSC09049.jpg', 'DSC09049', 'assets/Uploads/DSC09049.jpg', NULL, 1, 1, 1),
(671, 'Image', '2016-10-16 13:16:15', '2016-10-16 13:16:15', 'DSC09045.jpg', 'DSC09045', 'assets/Uploads/DSC09045.jpg', NULL, 1, 1, 1),
(672, 'Image', '2016-10-16 13:16:16', '2016-10-16 13:16:16', 'DSC09051.jpg', 'DSC09051', 'assets/Uploads/DSC09051.jpg', NULL, 1, 1, 1),
(673, 'Image', '2016-10-16 13:16:30', '2016-10-16 13:16:30', 'DSC09097.jpg', 'DSC09097', 'assets/Uploads/DSC09097.jpg', NULL, 1, 1, 1),
(674, 'Image', '2016-10-16 13:16:31', '2016-10-16 13:16:31', 'DSC09098.jpg', 'DSC09098', 'assets/Uploads/DSC09098.jpg', NULL, 1, 1, 1),
(675, 'Image', '2016-10-16 13:16:56', '2016-10-16 13:16:56', 'DSC09026.jpg', 'DSC09026', 'assets/Uploads/DSC09026.jpg', NULL, 1, 1, 1),
(676, 'Image', '2016-10-16 13:17:10', '2016-10-16 13:17:10', 'DSC09029.jpg', 'DSC09029', 'assets/Uploads/DSC09029.jpg', NULL, 1, 1, 1),
(677, 'Image', '2016-10-16 13:17:10', '2016-10-16 13:17:10', 'DSC09036.jpg', 'DSC09036', 'assets/Uploads/DSC09036.jpg', NULL, 1, 1, 1),
(678, 'Image', '2016-10-16 13:17:16', '2016-10-16 13:17:16', 'DSC09062.jpg', 'DSC09062', 'assets/Uploads/DSC09062.jpg', NULL, 1, 1, 1),
(679, 'Image', '2016-10-16 13:18:14', '2016-10-16 13:18:14', 'DSC09082.jpg', 'DSC09082', 'assets/Uploads/DSC09082.jpg', NULL, 1, 1, 1),
(680, 'Image', '2016-10-16 13:18:17', '2016-10-16 13:18:17', 'DSC9082.jpg', 'DSC9082', 'assets/Uploads/DSC9082.jpg', NULL, 1, 1, 1),
(681, 'Image', '2016-10-16 13:18:34', '2016-10-16 13:18:34', 'DSC9099.jpg', 'DSC9099', 'assets/Uploads/DSC9099.jpg', NULL, 1, 1, 1),
(682, 'Image', '2016-10-16 13:18:34', '2016-10-16 13:18:34', 'DSC09099.jpg', 'DSC09099', 'assets/Uploads/DSC09099.jpg', NULL, 1, 1, 1),
(683, 'Image', '2016-10-16 13:18:44', '2016-10-16 13:18:44', 'DSC09153.jpg', 'DSC09153', 'assets/Uploads/DSC09153.jpg', NULL, 1, 1, 1),
(684, 'Image', '2016-10-16 15:48:17', '2016-10-16 15:48:17', 'DSC09292.jpg', 'DSC09292', 'assets/Uploads/DSC09292.jpg', NULL, 1, 1, 1),
(685, 'Image', '2016-10-16 15:48:35', '2016-10-16 15:48:35', 'DSC9293.jpg', 'DSC9293', 'assets/Uploads/DSC9293.jpg', NULL, 1, 1, 1),
(686, 'Image', '2016-10-16 15:57:41', '2016-10-16 15:57:41', 'france-pattern.jpg', 'france pattern', 'assets/Uploads/france-pattern.jpg', NULL, 1, 1, 1),
(687, 'Image', '2016-10-16 15:59:54', '2016-10-16 15:59:54', 'france-pattern2.jpg', 'france pattern2', 'assets/Uploads/france-pattern2.jpg', NULL, 1, 1, 1),
(688, 'Image', '2016-10-16 16:00:44', '2016-10-16 16:00:44', 'DSC09333.jpg', 'DSC09333', 'assets/Uploads/DSC09333.jpg', NULL, 1, 1, 1),
(689, 'Image', '2016-10-16 16:00:44', '2016-10-16 16:00:44', 'DSC09265.jpg', 'DSC09265', 'assets/Uploads/DSC09265.jpg', NULL, 1, 1, 1),
(690, 'Image', '2016-10-16 16:00:45', '2016-10-16 16:00:45', 'DSC09248.jpg', 'DSC09248', 'assets/Uploads/DSC09248.jpg', NULL, 1, 1, 1),
(691, 'Image', '2016-10-16 16:00:45', '2016-10-16 16:00:45', 'DSC09325.jpg', 'DSC09325', 'assets/Uploads/DSC09325.jpg', NULL, 1, 1, 1),
(692, 'Image', '2016-10-16 16:00:46', '2016-10-16 16:00:46', 'DSC09316.jpg', 'DSC09316', 'assets/Uploads/DSC09316.jpg', NULL, 1, 1, 1),
(693, 'Image', '2016-10-16 16:00:46', '2016-10-16 16:00:46', 'DSC9294.jpg', 'DSC9294', 'assets/Uploads/DSC9294.jpg', NULL, 1, 1, 1),
(694, 'Image', '2016-10-16 16:01:17', '2016-10-16 16:01:17', 'DSC09370.jpg', 'DSC09370', 'assets/Uploads/DSC09370.jpg', NULL, 1, 1, 1),
(695, 'Image', '2016-10-16 16:01:17', '2016-10-16 16:01:17', 'DSC09364.jpg', 'DSC09364', 'assets/Uploads/DSC09364.jpg', NULL, 1, 1, 1),
(696, 'Image', '2016-10-16 16:03:18', '2016-10-16 16:03:18', 'DSC09404.jpg', 'DSC09404', 'assets/Uploads/DSC09404.jpg', NULL, 1, 1, 1),
(697, 'Image', '2016-10-16 16:03:35', '2016-10-16 16:03:35', 'DSC9405.jpg', 'DSC9405', 'assets/Uploads/DSC9405.jpg', NULL, 1, 1, 1),
(698, 'Image', '2016-10-16 16:03:35', '2016-10-16 16:03:35', 'DSC09464.jpg', 'DSC09464', 'assets/Uploads/DSC09464.jpg', NULL, 1, 1, 1),
(699, 'Image', '2016-10-16 16:03:36', '2016-10-16 16:03:36', 'DSC09412.jpg', 'DSC09412', 'assets/Uploads/DSC09412.jpg', NULL, 1, 1, 1),
(700, 'Image', '2016-10-16 16:03:37', '2016-10-16 16:03:37', 'DSC09417.jpg', 'DSC09417', 'assets/Uploads/DSC09417.jpg', NULL, 1, 1, 1),
(701, 'Image', '2016-10-16 16:03:37', '2016-10-16 16:03:37', 'DSC09454.jpg', 'DSC09454', 'assets/Uploads/DSC09454.jpg', NULL, 1, 1, 1),
(702, 'Image', '2016-10-16 16:04:01', '2016-10-16 16:04:01', 'DSC09483.jpg', 'DSC09483', 'assets/Uploads/DSC09483.jpg', NULL, 1, 1, 1),
(703, 'Image', '2016-10-16 16:04:55', '2016-10-16 16:04:55', 'DSC09653.jpg', 'DSC09653', 'assets/Uploads/DSC09653.jpg', NULL, 1, 1, 1),
(704, 'Image', '2016-10-16 16:05:15', '2016-10-16 16:05:15', 'DSC09599.jpg', 'DSC09599', 'assets/Uploads/DSC09599.jpg', NULL, 1, 1, 1),
(705, 'Image', '2016-10-16 16:05:28', '2016-10-16 16:05:28', 'DSC09560.jpg', 'DSC09560', 'assets/Uploads/DSC09560.jpg', NULL, 1, 1, 1),
(706, 'Image', '2016-10-16 16:05:28', '2016-10-16 16:05:28', 'DSC09525.jpg', 'DSC09525', 'assets/Uploads/DSC09525.jpg', NULL, 1, 1, 1),
(707, 'Image', '2016-10-16 16:05:29', '2016-10-16 16:05:29', 'DSC09530.jpg', 'DSC09530', 'assets/Uploads/DSC09530.jpg', NULL, 1, 1, 1),
(708, 'Image', '2016-10-16 16:05:29', '2016-10-16 16:05:29', 'DSC09532.jpg', 'DSC09532', 'assets/Uploads/DSC09532.jpg', NULL, 1, 1, 1),
(709, 'Image', '2016-10-16 16:05:30', '2016-10-16 16:05:30', 'DSC09540.jpg', 'DSC09540', 'assets/Uploads/DSC09540.jpg', NULL, 1, 1, 1),
(710, 'Image', '2016-10-16 16:05:47', '2016-10-16 16:05:47', 'DSC09685.jpg', 'DSC09685', 'assets/Uploads/DSC09685.jpg', NULL, 1, 1, 1),
(711, 'Image', '2016-10-16 16:05:51', '2016-10-16 16:05:51', 'DSC09711.jpg', 'DSC09711', 'assets/Uploads/DSC09711.jpg', NULL, 1, 1, 1),
(712, 'Image', '2016-10-16 16:05:55', '2016-10-16 16:05:55', 'DSC09673.jpg', 'DSC09673', 'assets/Uploads/DSC09673.jpg', NULL, 1, 1, 1),
(713, 'Image', '2016-10-16 16:05:55', '2016-10-16 16:05:55', 'DSC09705.jpg', 'DSC09705', 'assets/Uploads/DSC09705.jpg', NULL, 1, 1, 1),
(714, 'Image', '2016-10-16 16:05:56', '2016-10-16 16:05:56', 'DSC09694.jpg', 'DSC09694', 'assets/Uploads/DSC09694.jpg', NULL, 1, 1, 1),
(715, 'Image', '2016-10-16 16:05:57', '2016-10-16 16:05:57', 'DSC09661.jpg', 'DSC09661', 'assets/Uploads/DSC09661.jpg', NULL, 1, 1, 1),
(716, 'Image', '2016-10-16 16:07:00', '2016-10-16 16:07:00', 'DSC9413.jpg', 'DSC9413', 'assets/Uploads/DSC9413.jpg', NULL, 1, 1, 1),
(717, 'Image', '2016-10-16 16:07:22', '2016-10-16 16:07:22', 'DSC09730.jpg', 'DSC09730', 'assets/Uploads/DSC09730.jpg', NULL, 1, 1, 1),
(718, 'Image', '2016-10-16 16:07:52', '2016-10-16 16:07:52', 'DSC09766.jpg', 'DSC09766', 'assets/Uploads/DSC09766.jpg', NULL, 1, 1, 1),
(719, 'Image', '2016-10-16 16:07:52', '2016-10-16 16:07:52', 'DSC09769.jpg', 'DSC09769', 'assets/Uploads/DSC09769.jpg', NULL, 1, 1, 1),
(720, 'Image', '2016-10-16 16:07:53', '2016-10-16 16:07:53', 'DSC09790.jpg', 'DSC09790', 'assets/Uploads/DSC09790.jpg', NULL, 1, 1, 1),
(721, 'Image', '2016-10-16 16:07:55', '2016-10-16 16:07:55', 'DSC09743.jpg', 'DSC09743', 'assets/Uploads/DSC09743.jpg', NULL, 1, 1, 1),
(722, 'Image', '2016-10-16 16:07:56', '2016-10-16 16:07:56', 'DSC09739.jpg', 'DSC09739', 'assets/Uploads/DSC09739.jpg', NULL, 1, 1, 1),
(723, 'Image', '2016-10-16 16:07:56', '2016-10-16 16:07:56', 'DSC09800.jpg', 'DSC09800', 'assets/Uploads/DSC09800.jpg', NULL, 1, 1, 1),
(724, 'Image', '2016-10-16 16:07:57', '2016-10-16 16:07:57', 'DSC09815.jpg', 'DSC09815', 'assets/Uploads/DSC09815.jpg', NULL, 1, 1, 1),
(725, 'Image', '2016-10-16 16:09:23', '2016-10-16 16:09:23', 'DSC09856.jpg', 'DSC09856', 'assets/Uploads/DSC09856.jpg', NULL, 1, 1, 1),
(726, 'Image', '2016-10-16 16:09:33', '2016-10-16 16:09:33', 'DSC09938.jpg', 'DSC09938', 'assets/Uploads/DSC09938.jpg', NULL, 1, 1, 1),
(727, 'Image', '2016-10-16 16:09:34', '2016-10-16 16:09:34', 'DSC09863.jpg', 'DSC09863', 'assets/Uploads/DSC09863.jpg', NULL, 1, 1, 1),
(728, 'Image', '2016-10-16 16:09:34', '2016-10-16 16:09:34', 'DSC09944.jpg', 'DSC09944', 'assets/Uploads/DSC09944.jpg', NULL, 1, 1, 1),
(729, 'Image', '2016-10-16 16:09:35', '2016-10-16 16:09:35', 'DSC09960.jpg', 'DSC09960', 'assets/Uploads/DSC09960.jpg', NULL, 1, 1, 1),
(730, 'Image', '2016-10-16 16:10:15', '2016-10-16 16:10:15', 'DSC00060.jpg', 'DSC00060', 'assets/Uploads/DSC00060.jpg', NULL, 1, 1, 1),
(731, 'Image', '2016-10-16 16:10:20', '2016-10-16 16:10:20', 'DSC00035.jpg', 'DSC00035', 'assets/Uploads/DSC00035.jpg', NULL, 1, 1, 1),
(732, 'Image', '2016-10-16 16:10:20', '2016-10-16 16:10:20', 'DSC00049.jpg', 'DSC00049', 'assets/Uploads/DSC00049.jpg', NULL, 1, 1, 1),
(733, 'Image', '2016-10-16 16:10:35', '2016-10-16 16:10:35', 'DSC00073.jpg', 'DSC00073', 'assets/Uploads/DSC00073.jpg', NULL, 1, 1, 1),
(734, 'Image', '2016-10-16 16:10:36', '2016-10-16 16:10:36', 'DSC00117.jpg', 'DSC00117', 'assets/Uploads/DSC00117.jpg', NULL, 1, 1, 1),
(735, 'Image', '2016-10-16 16:10:36', '2016-10-16 16:10:36', 'DSC00075.jpg', 'DSC00075', 'assets/Uploads/DSC00075.jpg', NULL, 1, 1, 1),
(736, 'Image', '2016-10-16 16:10:47', '2016-10-16 16:10:47', 'DSC00103.jpg', 'DSC00103', 'assets/Uploads/DSC00103.jpg', NULL, 1, 1, 1),
(737, 'Image', '2016-10-16 16:10:47', '2016-10-16 16:10:47', 'DSC00077.jpg', 'DSC00077', 'assets/Uploads/DSC00077.jpg', NULL, 1, 1, 1),
(738, 'Image', '2016-10-16 16:10:48', '2016-10-16 16:10:48', 'DSC00084.jpg', 'DSC00084', 'assets/Uploads/DSC00084.jpg', NULL, 1, 1, 1),
(739, 'Image', '2016-10-16 16:10:49', '2016-10-16 16:10:49', 'DSC00119.jpg', 'DSC00119', 'assets/Uploads/DSC00119.jpg', NULL, 1, 1, 1);
INSERT INTO `File` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(740, 'Image', '2016-10-16 16:10:49', '2016-10-16 16:10:49', 'DSC00122.jpg', 'DSC00122', 'assets/Uploads/DSC00122.jpg', NULL, 1, 1, 1),
(741, 'Image', '2016-10-28 19:04:49', '2016-10-28 19:04:49', 'DSC00232.jpg', 'DSC00232', 'assets/Uploads/DSC00232.jpg', NULL, 1, 1, 1),
(742, 'Image', '2016-10-28 19:05:36', '2016-10-28 19:05:36', 'DSC00428.jpg', 'DSC00428', 'assets/Uploads/DSC00428.jpg', NULL, 1, 1, 1),
(743, 'Image', '2016-10-28 19:09:33', '2016-10-28 19:09:33', 'czech-pattern.jpg', 'czech pattern', 'assets/Uploads/czech-pattern.jpg', NULL, 1, 1, 1),
(744, 'Image', '2016-10-28 19:11:11', '2016-10-28 19:11:11', 'DSC00238.jpg', 'DSC00238', 'assets/Uploads/DSC00238.jpg', NULL, 1, 1, 1),
(745, 'Image', '2016-10-28 19:11:22', '2016-10-28 19:11:22', 'DSC00329.jpg', 'DSC00329', 'assets/Uploads/DSC00329.jpg', NULL, 1, 1, 1),
(746, 'Image', '2016-10-28 19:11:27', '2016-10-28 19:11:27', 'DSC00291.jpg', 'DSC00291', 'assets/Uploads/DSC00291.jpg', NULL, 1, 1, 1),
(747, 'Image', '2016-10-28 19:11:31', '2016-10-28 19:11:31', 'DSC00302.jpg', 'DSC00302', 'assets/Uploads/DSC00302.jpg', NULL, 1, 1, 1),
(748, 'Image', '2016-10-28 19:12:09', '2016-10-28 19:12:09', 'DSC00279.jpg', 'DSC00279', 'assets/Uploads/DSC00279.jpg', NULL, 1, 1, 1),
(749, 'Image', '2016-10-28 19:12:15', '2016-10-28 19:12:15', 'DSC00271.jpg', 'DSC00271', 'assets/Uploads/DSC00271.jpg', NULL, 1, 1, 1),
(750, 'Image', '2016-10-28 19:12:36', '2016-10-28 19:12:36', 'DSC00611.jpg', 'DSC00611', 'assets/Uploads/DSC00611.jpg', NULL, 1, 1, 1),
(751, 'Image', '2016-10-28 19:12:50', '2016-10-28 19:12:50', 'DSC00932.jpg', 'DSC00932', 'assets/Uploads/DSC00932.jpg', NULL, 1, 1, 1),
(752, 'Image', '2016-10-28 19:13:04', '2016-10-28 19:13:04', 'DSC00954.jpg', 'DSC00954', 'assets/Uploads/DSC00954.jpg', NULL, 1, 1, 1),
(753, 'Image', '2016-10-28 19:14:58', '2016-10-28 19:14:58', 'DSC00251.jpg', 'DSC00251', 'assets/Uploads/DSC00251.jpg', NULL, 1, 1, 1),
(754, 'Image', '2016-10-28 19:15:26', '2016-10-28 19:15:26', 'DSC00806.jpg', 'DSC00806', 'assets/Uploads/DSC00806.jpg', NULL, 1, 1, 1),
(755, 'Image', '2016-10-28 19:15:27', '2016-10-28 19:15:27', 'DSC00827.jpg', 'DSC00827', 'assets/Uploads/DSC00827.jpg', NULL, 1, 1, 1),
(756, 'Image', '2016-10-28 19:16:01', '2016-10-28 19:16:01', 'DSC00601.jpg', 'DSC00601', 'assets/Uploads/DSC00601.jpg', NULL, 1, 1, 1),
(757, 'Image', '2016-10-28 19:16:35', '2016-10-28 19:16:35', 'DSC00761.jpg', 'DSC00761', 'assets/Uploads/DSC00761.jpg', NULL, 1, 1, 1),
(758, 'Image', '2016-10-28 19:16:45', '2016-10-28 19:16:45', 'DSC00498.jpg', 'DSC00498', 'assets/Uploads/DSC00498.jpg', NULL, 1, 1, 1),
(759, 'Image', '2016-10-28 19:17:03', '2016-10-28 19:17:03', 'DSC00619.jpg', 'DSC00619', 'assets/Uploads/DSC00619.jpg', NULL, 1, 1, 1),
(760, 'Image', '2016-10-28 19:17:21', '2016-10-28 19:17:21', 'DSC00718.jpg', 'DSC00718', 'assets/Uploads/DSC00718.jpg', NULL, 1, 1, 1),
(761, 'Image', '2016-10-28 19:17:40', '2016-10-28 19:17:40', 'DSC00710.jpg', 'DSC00710', 'assets/Uploads/DSC00710.jpg', NULL, 1, 1, 1),
(762, 'Image', '2016-10-28 19:18:19', '2016-10-28 19:18:19', 'DSC00691.jpg', 'DSC00691', 'assets/Uploads/DSC00691.jpg', NULL, 1, 1, 1),
(763, 'Image', '2016-10-28 19:18:30', '2016-10-28 19:18:30', 'DSC00650.jpg', 'DSC00650', 'assets/Uploads/DSC00650.jpg', NULL, 1, 1, 1),
(764, 'Image', '2016-10-28 19:18:35', '2016-10-28 19:18:35', 'DSC00663.jpg', 'DSC00663', 'assets/Uploads/DSC00663.jpg', NULL, 1, 1, 1),
(765, 'Image', '2016-10-28 19:18:46', '2016-10-28 19:18:46', 'DSC00695.jpg', 'DSC00695', 'assets/Uploads/DSC00695.jpg', NULL, 1, 1, 1),
(766, 'Image', '2016-10-28 19:18:47', '2016-10-28 19:18:47', 'DSC00670.jpg', 'DSC00670', 'assets/Uploads/DSC00670.jpg', NULL, 1, 1, 1),
(767, 'Image', '2016-10-28 19:18:55', '2016-10-28 19:18:55', 'DSC00697.jpg', 'DSC00697', 'assets/Uploads/DSC00697.jpg', NULL, 1, 1, 1),
(768, 'Image', '2016-10-28 19:19:09', '2016-10-28 19:19:09', 'DSC00701.jpg', 'DSC00701', 'assets/Uploads/DSC00701.jpg', NULL, 1, 1, 1),
(769, 'Image', '2016-10-28 19:20:22', '2016-10-28 19:20:22', 'DSC00582.jpg', 'DSC00582', 'assets/Uploads/DSC00582.jpg', NULL, 1, 1, 1),
(770, 'Image', '2016-10-28 19:21:08', '2016-10-28 19:21:08', 'DSC00475.jpg', 'DSC00475', 'assets/Uploads/DSC00475.jpg', NULL, 1, 1, 1),
(771, 'Image', '2016-10-28 19:21:23', '2016-10-28 19:21:23', 'DSC00913.jpg', 'DSC00913', 'assets/Uploads/DSC00913.jpg', NULL, 1, 1, 1),
(772, 'Image', '2016-10-28 19:21:47', '2016-10-28 19:21:47', 'DSC01056.jpg', 'DSC01056', 'assets/Uploads/DSC01056.jpg', NULL, 1, 1, 1),
(773, 'Image', '2016-10-28 19:22:00', '2016-10-28 19:22:00', 'DSC01009.jpg', 'DSC01009', 'assets/Uploads/DSC01009.jpg', NULL, 1, 1, 1),
(774, 'Image', '2016-10-28 19:22:05', '2016-10-28 19:22:05', 'DSC01055.jpg', 'DSC01055', 'assets/Uploads/DSC01055.jpg', NULL, 1, 1, 1),
(775, 'Image', '2016-10-28 19:22:41', '2016-10-28 19:22:41', 'DSC00884.jpg', 'DSC00884', 'assets/Uploads/DSC00884.jpg', NULL, 1, 1, 1),
(776, 'Image', '2016-10-28 19:22:56', '2016-10-28 19:22:56', 'DSC00895.jpg', 'DSC00895', 'assets/Uploads/DSC00895.jpg', NULL, 1, 1, 1),
(777, 'Image', '2016-10-28 19:22:56', '2016-10-28 19:22:56', 'DSC00893.jpg', 'DSC00893', 'assets/Uploads/DSC00893.jpg', NULL, 1, 1, 1),
(778, 'Image', '2016-10-28 19:23:06', '2016-10-28 19:23:06', 'DSC00652.jpg', 'DSC00652', 'assets/Uploads/DSC00652.jpg', NULL, 1, 1, 1),
(779, 'Image', '2016-10-28 19:23:23', '2016-10-28 19:23:23', 'DSC00708.jpg', 'DSC00708', 'assets/Uploads/DSC00708.jpg', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Group`
--

CREATE TABLE `Group` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Group') DEFAULT 'Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Code` varchar(255) DEFAULT NULL,
  `Locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Group`
--

INSERT INTO `Group` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'Group', '2016-02-11 10:41:23', '2016-02-11 10:41:23', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'Group', '2016-02-11 10:41:23', '2016-02-11 10:41:23', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0),
(3, 'Group', '2016-02-11 11:02:34', '2016-02-11 11:02:34', 'Blog users', NULL, 'blog-users', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Members`
--

CREATE TABLE `Group_Members` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Group_Members`
--

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Roles`
--

CREATE TABLE `Group_Roles` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LoginAttempt`
--

CREATE TABLE `LoginAttempt` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('LoginAttempt') DEFAULT 'LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Status` enum('Success','Failure') DEFAULT 'Success',
  `IP` varchar(255) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE `Member` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Member') DEFAULT 'Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `TempIDHash` varchar(160) DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `RememberLoginToken` varchar(160) DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) DEFAULT NULL,
  `TimeFormat` varchar(30) DEFAULT NULL,
  `URLSegment` varchar(50) DEFAULT NULL,
  `BlogProfileSummary` mediumtext,
  `BlogProfileImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`ID`, `ClassName`, `LastEdited`, `Created`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`, `URLSegment`, `BlogProfileSummary`, `BlogProfileImageID`) VALUES
(1, 'Member', '2016-10-16 10:09:59', '2016-02-11 10:41:24', 'Default Admin', NULL, 'admin', '467483dfc133f30177971a7280145a196c1dbca3', '2016-10-19 10:09:59', '$2y$10$490a78c670bf68a30b43aO5e2GQ4EV2ZwbZ9wv3MRSw9FbrXIeLMu', NULL, 30, '2016-10-28 16:01:07', NULL, NULL, 'blowfish', '10$490a78c670bf68a30b43ab', NULL, NULL, 'en_US', 0, NULL, NULL, 'default-admin', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `MemberPassword`
--

CREATE TABLE `MemberPassword` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('MemberPassword') DEFAULT 'MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MemberPassword`
--

INSERT INTO `MemberPassword` (`ID`, `ClassName`, `LastEdited`, `Created`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'MemberPassword', '2016-02-11 10:41:25', '2016-02-11 10:41:25', '$2y$10$490a78c670bf68a30b43aO5e2GQ4EV2ZwbZ9wv3MRSw9FbrXIeLMu', '10$490a78c670bf68a30b43ab', 'blowfish', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Page`
--

CREATE TABLE `Page` (
  `ID` int(11) NOT NULL,
  `PageColor` varchar(6) DEFAULT NULL,
  `LightTheme` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `NoBannerImage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerImageID` int(11) NOT NULL DEFAULT '0',
  `LightText` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerFullscreen` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerLightText` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Page`
--

INSERT INTO `Page` (`ID`, `PageColor`, `LightTheme`, `NoBannerImage`, `BannerImageID`, `LightText`, `BannerFullscreen`, `BannerLightText`) VALUES
(1, NULL, 0, 0, 87, 0, 0, 0),
(6, NULL, 0, 0, 31, 1, 1, 1),
(11, NULL, 0, 0, 0, 0, 0, 0),
(12, NULL, 0, 0, 194, 0, 1, 1),
(13, NULL, 0, 0, 196, 0, 1, 1),
(14, NULL, 0, 0, 211, 0, 1, 1),
(15, NULL, 0, 0, 244, 0, 1, 1),
(16, NULL, 0, 0, 263, 0, 1, 1),
(17, NULL, 0, 0, 287, 0, 1, 1),
(18, NULL, 0, 0, 289, 0, 1, 1),
(19, NULL, 0, 0, 305, 0, 1, 1),
(20, NULL, 0, 0, 326, 0, 1, 1),
(21, NULL, 0, 0, 361, 0, 1, 1),
(23, NULL, 0, 0, 387, 0, 1, 1),
(24, NULL, 0, 0, 401, 0, 1, 1),
(25, NULL, 0, 0, 424, 0, 1, 1),
(26, NULL, 0, 0, 462, 0, 1, 1),
(27, NULL, 0, 0, 481, 0, 1, 1),
(28, NULL, 0, 0, 501, 0, 1, 1),
(29, NULL, 0, 0, 515, 0, 1, 1),
(30, NULL, 0, 0, 534, 0, 1, 1),
(31, NULL, 0, 0, 584, 0, 1, 1),
(32, NULL, 0, 0, 608, 0, 1, 1),
(33, NULL, 0, 0, 621, 0, 1, 1),
(34, NULL, 0, 0, 658, 0, 1, 1),
(35, NULL, 0, 0, 685, 0, 1, 1),
(36, NULL, 0, 0, 742, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Page_Live`
--

CREATE TABLE `Page_Live` (
  `ID` int(11) NOT NULL,
  `PageColor` varchar(6) DEFAULT NULL,
  `LightTheme` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `NoBannerImage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerImageID` int(11) NOT NULL DEFAULT '0',
  `LightText` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerFullscreen` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerLightText` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Page_Live`
--

INSERT INTO `Page_Live` (`ID`, `PageColor`, `LightTheme`, `NoBannerImage`, `BannerImageID`, `LightText`, `BannerFullscreen`, `BannerLightText`) VALUES
(1, NULL, 0, 0, 87, 0, 0, 0),
(6, NULL, 0, 0, 31, 1, 1, 1),
(11, NULL, 0, 0, 0, 0, 0, 0),
(12, NULL, 0, 0, 194, 0, 1, 1),
(13, NULL, 0, 0, 196, 0, 1, 1),
(14, NULL, 0, 0, 211, 0, 1, 1),
(15, NULL, 0, 0, 244, 0, 1, 1),
(16, NULL, 0, 0, 263, 0, 1, 1),
(17, NULL, 0, 0, 287, 0, 1, 1),
(18, NULL, 0, 0, 289, 0, 1, 1),
(19, NULL, 0, 0, 305, 0, 1, 1),
(20, NULL, 0, 0, 326, 0, 1, 1),
(21, NULL, 0, 0, 361, 0, 1, 1),
(23, NULL, 0, 0, 387, 0, 1, 1),
(24, NULL, 0, 0, 401, 0, 1, 1),
(25, NULL, 0, 0, 424, 0, 1, 1),
(26, NULL, 0, 0, 462, 0, 1, 1),
(27, NULL, 0, 0, 481, 0, 1, 1),
(28, NULL, 0, 0, 501, 0, 1, 1),
(29, NULL, 0, 0, 515, 0, 1, 1),
(30, NULL, 0, 0, 534, 0, 1, 1),
(31, NULL, 0, 0, 584, 0, 1, 1),
(32, NULL, 0, 0, 608, 0, 1, 1),
(33, NULL, 0, 0, 621, 0, 1, 1),
(34, NULL, 0, 0, 658, 0, 1, 1),
(35, NULL, 0, 0, 685, 0, 1, 1),
(36, NULL, 0, 0, 742, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Page_versions`
--

CREATE TABLE `Page_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PageColor` varchar(6) DEFAULT NULL,
  `LightTheme` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `NoBannerImage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerImageID` int(11) NOT NULL DEFAULT '0',
  `LightText` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerFullscreen` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerLightText` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Page_versions`
--

INSERT INTO `Page_versions` (`ID`, `RecordID`, `Version`, `PageColor`, `LightTheme`, `NoBannerImage`, `BannerImageID`, `LightText`, `BannerFullscreen`, `BannerLightText`) VALUES
(1, 1, 2, NULL, 0, 0, 0, 0, 0, 0),
(2, 1, 3, NULL, 0, 0, 0, 0, 0, 0),
(3, 6, 1, NULL, 0, 0, 0, 0, 0, 0),
(4, 6, 2, NULL, 0, 0, 0, 0, 0, 0),
(5, 6, 3, NULL, 0, 0, 0, 0, 0, 0),
(6, 6, 4, NULL, 0, 0, 0, 0, 0, 0),
(7, 7, 1, NULL, 0, 0, 0, 0, 0, 0),
(8, 8, 1, NULL, 0, 0, 0, 0, 0, 0),
(9, 8, 2, NULL, 0, 0, 0, 0, 0, 0),
(10, 9, 1, NULL, 0, 0, 0, 0, 0, 0),
(11, 10, 1, NULL, 0, 0, 0, 0, 0, 0),
(12, 11, 1, NULL, 0, 0, 0, 0, 0, 0),
(13, 11, 2, NULL, 0, 0, 0, 0, 0, 0),
(14, 12, 1, NULL, 0, 0, 0, 0, 0, 0),
(15, 1, 4, NULL, 0, 0, 0, 0, 0, 0),
(16, 9, 2, NULL, 0, 0, 0, 0, 0, 0),
(17, 1, 5, NULL, 0, 0, 0, 0, 0, 0),
(18, 7, 2, NULL, 0, 0, 0, 0, 0, 0),
(19, 1, 6, NULL, 0, 0, 7, 0, 0, 0),
(20, 1, 7, NULL, 0, 0, 8, 1, 0, 0),
(21, 1, 8, NULL, 0, 0, 9, 0, 0, 0),
(22, 6, 5, NULL, 0, 0, 10, 1, 0, 0),
(23, 6, 6, NULL, 0, 0, 10, 1, 0, 0),
(24, 6, 7, NULL, 0, 0, 10, 1, 0, 0),
(25, 6, 8, NULL, 0, 0, 10, 1, 0, 0),
(26, 6, 9, NULL, 0, 0, 10, 0, 1, 1),
(27, 6, 10, NULL, 0, 0, 10, 0, 1, 1),
(28, 6, 11, NULL, 0, 0, 10, 0, 1, 1),
(29, 6, 12, NULL, 0, 0, 10, 0, 1, 1),
(30, 6, 13, NULL, 0, 0, 10, 0, 1, 1),
(31, 1, 9, NULL, 0, 0, 9, 0, 0, 0),
(32, 2, 2, NULL, 0, 0, 0, 0, 0, 0),
(33, 3, 2, NULL, 0, 0, 0, 0, 0, 0),
(34, 6, 14, NULL, 0, 0, 10, 0, 1, 1),
(35, 6, 15, NULL, 0, 0, 10, 0, 1, 1),
(36, 7, 3, NULL, 0, 0, 0, 0, 0, 0),
(37, 7, 4, NULL, 0, 0, 0, 0, 0, 0),
(38, 8, 3, NULL, 0, 0, 0, 0, 0, 0),
(39, 9, 3, NULL, 0, 0, 0, 0, 0, 0),
(40, 8, 4, NULL, 0, 0, 0, 0, 0, 0),
(41, 8, 5, NULL, 0, 0, 20, 0, 1, 1),
(42, 10, 2, NULL, 0, 0, 0, 0, 0, 0),
(43, 10, 3, NULL, 0, 0, 0, 0, 0, 0),
(44, 1, 10, NULL, 0, 0, 9, 0, 0, 0),
(45, 1, 11, NULL, 0, 0, 9, 0, 0, 0),
(46, 6, 16, NULL, 0, 0, 10, 0, 1, 1),
(47, 6, 17, NULL, 0, 0, 10, 0, 1, 1),
(48, 6, 18, NULL, 0, 0, 10, 0, 1, 1),
(49, 6, 19, NULL, 0, 0, 31, 0, 1, 1),
(50, 6, 20, NULL, 0, 0, 31, 0, 1, 1),
(51, 1, 12, NULL, 0, 0, 9, 0, 0, 0),
(52, 6, 21, NULL, 0, 0, 31, 0, 1, 1),
(53, 1, 13, NULL, 0, 0, 9, 0, 0, 0),
(54, 7, 5, NULL, 0, 0, 0, 0, 0, 0),
(55, 7, 6, NULL, 0, 0, 0, 0, 0, 0),
(56, 7, 7, NULL, 0, 0, 0, 0, 0, 0),
(57, 8, 6, NULL, 0, 0, 31, 0, 1, 1),
(58, 9, 4, NULL, 0, 0, 31, 0, 1, 1),
(59, 10, 4, NULL, 0, 0, 31, 0, 1, 1),
(60, 7, 8, NULL, 0, 0, 0, 0, 0, 0),
(61, 7, 9, NULL, 0, 0, 0, 0, 0, 0),
(62, 11, 3, NULL, 0, 0, 0, 0, 0, 0),
(63, 11, 4, NULL, 0, 0, 0, 0, 0, 0),
(64, 11, 5, NULL, 0, 0, 0, 0, 0, 0),
(65, 11, 6, NULL, 0, 0, 0, 0, 0, 0),
(66, 11, 7, NULL, 0, 0, 0, 0, 0, 0),
(67, 1, 14, NULL, 0, 0, 87, 0, 0, 0),
(68, 11, 8, NULL, 0, 0, 0, 0, 0, 0),
(69, 11, 9, NULL, 0, 0, 0, 0, 0, 0),
(70, 11, 10, NULL, 0, 0, 0, 0, 0, 0),
(71, 12, 2, NULL, 0, 0, 0, 0, 0, 0),
(72, 12, 3, NULL, 0, 0, 0, 0, 0, 0),
(73, 12, 4, NULL, 0, 0, 0, 0, 0, 0),
(74, 12, 5, NULL, 0, 0, 88, 0, 1, 0),
(75, 12, 6, NULL, 0, 0, 88, 0, 1, 1),
(76, 12, 7, NULL, 0, 0, 88, 0, 1, 1),
(77, 1, 15, NULL, 0, 0, 87, 0, 0, 0),
(78, 6, 22, NULL, 0, 0, 31, 0, 1, 1),
(79, 12, 8, NULL, 0, 0, 88, 0, 1, 1),
(80, 12, 9, NULL, 0, 0, 194, 0, 1, 1),
(81, 12, 10, NULL, 0, 0, 194, 0, 1, 1),
(82, 13, 1, NULL, 0, 0, 0, 0, 0, 0),
(83, 13, 2, NULL, 0, 0, 196, 0, 1, 0),
(84, 13, 3, NULL, 0, 0, 196, 0, 1, 0),
(85, 13, 4, NULL, 0, 0, 196, 0, 1, 1),
(86, 14, 1, NULL, 0, 0, 0, 0, 0, 0),
(87, 14, 2, NULL, 0, 0, 211, 0, 1, 0),
(88, 14, 3, NULL, 0, 0, 211, 0, 1, 0),
(89, 14, 4, NULL, 0, 0, 211, 0, 1, 1),
(90, 14, 5, NULL, 0, 0, 211, 0, 1, 1),
(91, 14, 6, NULL, 0, 0, 211, 0, 1, 1),
(92, 14, 7, NULL, 0, 0, 211, 0, 1, 1),
(93, 13, 5, NULL, 0, 0, 196, 0, 1, 1),
(94, 14, 8, NULL, 0, 0, 211, 0, 1, 1),
(95, 15, 1, NULL, 0, 0, 0, 0, 0, 0),
(96, 15, 2, NULL, 0, 0, 0, 0, 0, 0),
(97, 15, 3, NULL, 0, 0, 0, 0, 0, 0),
(98, 15, 4, NULL, 0, 0, 0, 0, 0, 0),
(99, 15, 5, NULL, 0, 0, 0, 0, 0, 0),
(100, 15, 6, NULL, 0, 0, 244, 0, 0, 0),
(101, 15, 7, NULL, 0, 0, 244, 0, 1, 1),
(102, 15, 8, NULL, 0, 0, 244, 0, 1, 1),
(103, 16, 1, NULL, 0, 0, 0, 0, 0, 0),
(104, 16, 2, NULL, 0, 0, 0, 0, 0, 0),
(105, 16, 3, NULL, 0, 0, 0, 0, 0, 0),
(106, 16, 4, NULL, 0, 0, 0, 0, 0, 0),
(107, 16, 5, NULL, 0, 0, 0, 0, 0, 0),
(108, 16, 6, NULL, 0, 0, 263, 0, 1, 1),
(109, 15, 9, NULL, 0, 0, 244, 0, 1, 1),
(110, 15, 10, NULL, 0, 0, 244, 0, 1, 1),
(111, 17, 1, NULL, 0, 0, 0, 0, 0, 0),
(112, 17, 2, NULL, 0, 0, 0, 0, 0, 0),
(113, 17, 3, NULL, 0, 0, 0, 0, 0, 0),
(114, 17, 4, NULL, 0, 0, 0, 0, 0, 0),
(115, 17, 5, NULL, 0, 0, 0, 0, 0, 0),
(116, 17, 6, NULL, 0, 0, 266, 0, 1, 1),
(117, 17, 7, NULL, 0, 0, 266, 0, 1, 1),
(118, 17, 8, NULL, 0, 0, 287, 0, 1, 1),
(119, 18, 1, NULL, 0, 0, 0, 0, 0, 0),
(120, 18, 2, NULL, 0, 0, 0, 0, 0, 0),
(121, 18, 3, NULL, 0, 0, 0, 0, 0, 0),
(122, 18, 4, NULL, 0, 0, 0, 0, 0, 0),
(123, 18, 5, NULL, 0, 0, 289, 0, 1, 1),
(124, 19, 1, NULL, 0, 0, 0, 0, 0, 0),
(125, 19, 2, NULL, 0, 0, 0, 0, 0, 0),
(126, 19, 3, NULL, 0, 0, 0, 0, 0, 0),
(127, 19, 4, NULL, 0, 0, 305, 0, 1, 1),
(128, 19, 5, NULL, 0, 0, 305, 0, 1, 1),
(129, 19, 6, NULL, 0, 0, 305, 0, 1, 1),
(130, 19, 7, NULL, 0, 0, 305, 0, 1, 1),
(131, 18, 6, NULL, 0, 0, 289, 0, 1, 1),
(132, 13, 6, NULL, 0, 0, 196, 0, 1, 1),
(133, 6, 23, NULL, 0, 0, 31, 0, 1, 1),
(134, 11, 11, NULL, 0, 0, 0, 0, 0, 0),
(135, 18, 7, NULL, 0, 0, 289, 0, 1, 1),
(136, 20, 1, NULL, 0, 0, 0, 0, 0, 0),
(137, 20, 2, NULL, 0, 0, 0, 0, 0, 0),
(138, 20, 3, NULL, 0, 0, 0, 0, 0, 0),
(139, 20, 4, NULL, 0, 0, 326, 0, 1, 1),
(140, 15, 11, NULL, 0, 0, 244, 0, 1, 1),
(141, 21, 1, NULL, 0, 0, 0, 0, 0, 0),
(142, 21, 2, NULL, 0, 0, 0, 0, 0, 0),
(143, 21, 3, NULL, 0, 0, 361, 0, 1, 1),
(144, 21, 4, NULL, 0, 0, 361, 0, 1, 1),
(145, 22, 1, NULL, 0, 0, 87, 0, 0, 0),
(146, 23, 1, NULL, 0, 0, 0, 0, 0, 0),
(147, 23, 2, NULL, 0, 0, 0, 0, 0, 0),
(148, 23, 3, NULL, 0, 0, 0, 0, 0, 0),
(149, 23, 4, NULL, 0, 0, 0, 0, 0, 0),
(150, 23, 5, NULL, 0, 0, 387, 0, 1, 1),
(151, 23, 6, NULL, 0, 0, 387, 0, 1, 1),
(152, 23, 7, NULL, 0, 0, 387, 0, 1, 1),
(153, 24, 1, NULL, 0, 0, 0, 0, 0, 0),
(154, 24, 2, NULL, 0, 0, 401, 0, 1, 0),
(155, 24, 3, NULL, 0, 0, 401, 0, 1, 0),
(156, 24, 4, NULL, 0, 0, 401, 0, 1, 1),
(157, 24, 5, NULL, 0, 0, 401, 0, 1, 1),
(158, 25, 1, NULL, 0, 0, 0, 0, 0, 0),
(159, 25, 2, NULL, 0, 0, 0, 0, 0, 0),
(160, 25, 3, NULL, 0, 0, 0, 0, 0, 0),
(161, 25, 4, NULL, 0, 0, 424, 0, 1, 1),
(162, 25, 5, NULL, 0, 0, 424, 0, 1, 1),
(163, 26, 1, NULL, 0, 0, 0, 0, 0, 0),
(164, 26, 2, NULL, 0, 0, 462, 0, 1, 0),
(165, 26, 3, NULL, 0, 0, 462, 0, 1, 0),
(166, 26, 4, NULL, 0, 0, 462, 0, 1, 1),
(167, 27, 1, NULL, 0, 0, 0, 0, 0, 0),
(168, 27, 2, NULL, 0, 0, 481, 0, 1, 0),
(169, 27, 3, NULL, 0, 0, 481, 0, 1, 0),
(170, 27, 4, NULL, 0, 0, 481, 0, 1, 1),
(171, 28, 1, NULL, 0, 0, 0, 0, 0, 0),
(172, 28, 2, NULL, 0, 0, 501, 0, 1, 0),
(173, 28, 3, NULL, 0, 0, 501, 0, 1, 1),
(174, 28, 4, NULL, 0, 0, 501, 0, 1, 1),
(175, 29, 1, NULL, 0, 0, 0, 0, 0, 0),
(176, 29, 2, NULL, 0, 0, 515, 0, 1, 0),
(177, 29, 3, NULL, 0, 0, 515, 0, 1, 1),
(178, 29, 4, NULL, 0, 0, 515, 0, 1, 1),
(179, 29, 5, NULL, 0, 0, 515, 0, 1, 1),
(180, 30, 1, NULL, 0, 0, 0, 0, 0, 0),
(181, 30, 2, NULL, 0, 0, 0, 0, 0, 0),
(182, 30, 3, NULL, 0, 0, 0, 0, 0, 0),
(183, 30, 4, NULL, 0, 0, 0, 0, 0, 0),
(184, 30, 5, NULL, 0, 0, 534, 0, 1, 1),
(185, 30, 6, NULL, 0, 0, 534, 0, 1, 1),
(186, 31, 1, NULL, 0, 0, 0, 0, 0, 0),
(187, 31, 2, NULL, 0, 0, 0, 0, 0, 0),
(188, 31, 3, NULL, 0, 0, 0, 0, 0, 0),
(189, 30, 7, NULL, 0, 0, 534, 0, 1, 1),
(190, 31, 4, NULL, 0, 0, 584, 0, 1, 1),
(191, 32, 1, NULL, 0, 0, 0, 0, 0, 0),
(192, 32, 2, NULL, 0, 0, 608, 0, 1, 0),
(193, 32, 3, NULL, 0, 0, 608, 0, 1, 0),
(194, 32, 4, NULL, 0, 0, 608, 0, 1, 1),
(195, 32, 5, NULL, 0, 0, 608, 0, 1, 1),
(196, 33, 1, NULL, 0, 0, 0, 0, 0, 0),
(197, 33, 2, NULL, 0, 0, 0, 0, 0, 0),
(198, 33, 3, NULL, 0, 0, 0, 0, 0, 0),
(199, 33, 4, NULL, 0, 0, 621, 0, 1, 1),
(200, 33, 5, NULL, 0, 0, 621, 0, 1, 1),
(201, 34, 1, NULL, 0, 0, 0, 0, 0, 0),
(202, 34, 2, NULL, 0, 0, 658, 0, 1, 0),
(203, 34, 3, NULL, 0, 0, 658, 0, 1, 0),
(204, 34, 4, NULL, 0, 0, 658, 0, 1, 1),
(205, 34, 5, NULL, 0, 0, 658, 0, 1, 1),
(206, 34, 6, NULL, 0, 0, 658, 0, 1, 1),
(207, 35, 1, NULL, 0, 0, 0, 0, 0, 0),
(208, 35, 2, NULL, 0, 0, 685, 0, 0, 0),
(209, 35, 3, NULL, 0, 0, 685, 0, 0, 0),
(210, 35, 4, NULL, 0, 0, 685, 0, 1, 1),
(211, 35, 5, NULL, 0, 0, 685, 0, 1, 1),
(212, 35, 6, NULL, 0, 0, 685, 0, 1, 1),
(213, 36, 1, NULL, 0, 0, 0, 0, 0, 0),
(214, 36, 2, NULL, 0, 0, 742, 0, 1, 0),
(215, 36, 3, NULL, 0, 0, 742, 0, 1, 0),
(216, 36, 4, NULL, 0, 0, 742, 0, 1, 1),
(217, 36, 5, NULL, 0, 0, 742, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Permission`
--

CREATE TABLE `Permission` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Permission') DEFAULT 'Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Permission`
--

INSERT INTO `Permission` (`ID`, `ClassName`, `LastEdited`, `Created`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2016-02-11 10:41:23', '2016-02-11 10:41:23', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2016-02-11 10:41:23', '2016-02-11 10:41:23', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2016-02-11 10:41:23', '2016-02-11 10:41:23', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'Permission', '2016-02-11 10:41:23', '2016-02-11 10:41:23', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'Permission', '2016-02-11 10:41:23', '2016-02-11 10:41:23', 'ADMIN', 0, 1, 2),
(6, 'Permission', '2016-02-11 11:02:34', '2016-02-11 11:02:34', 'CMS_ACCESS_CMSMain', 0, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRole`
--

CREATE TABLE `PermissionRole` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRole') DEFAULT 'PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRoleCode`
--

CREATE TABLE `PermissionRoleCode` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRoleCode') DEFAULT 'PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage`
--

CREATE TABLE `RedirectorPage` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_Live`
--

CREATE TABLE `RedirectorPage_Live` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_versions`
--

CREATE TABLE `RedirectorPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig`
--

CREATE TABLE `SiteConfig` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteConfig') DEFAULT 'SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Tagline` varchar(255) DEFAULT NULL,
  `Theme` varchar(255) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `SiteDescription` mediumtext,
  `Mailto` varchar(100) DEFAULT NULL,
  `SubmitText` mediumtext,
  `Address` varchar(250) DEFAULT NULL,
  `PhoneNumber` varchar(250) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `LogoID` int(11) NOT NULL DEFAULT '0',
  `LogoReverseID` int(11) NOT NULL DEFAULT '0',
  `BrandColor` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteConfig`
--

INSERT INTO `SiteConfig` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `SiteDescription`, `Mailto`, `SubmitText`, `Address`, `PhoneNumber`, `Email`, `LogoID`, `LogoReverseID`, `BrandColor`) VALUES
(1, 'SiteConfig', '2016-02-27 03:05:02', '2016-02-11 10:41:24', 'HG Wandering', NULL, 'main', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', NULL, NULL, NULL, NULL, NULL, 'hamishjgray@gmail.com', 54, 55, 'C2A959');

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

CREATE TABLE `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_EditorGroups`
--

CREATE TABLE `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

CREATE TABLE `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree`
--

CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','Blog','BlogPost','BlogEntry','ErrorPage','RedirectorPage','VirtualPage','BlogTree','BlogHolder') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'Blog', '2016-03-05 08:40:30', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Follow the adventures of a small Kiwi travelling the world!</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 15, 0),
(4, 'ErrorPage', '2016-02-11 10:41:25', '2016-02-11 10:41:24', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2016-02-11 10:41:25', '2016-02-11 10:41:24', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'BlogPost', '2016-03-13 15:28:00', '2016-02-11 11:02:46', 'art-deco-capital', 'Art Deco Capital', NULL, '<p class="lead">The tens of thousands of people revelling in the 1930s atmosphere created in the heart of the city gives the sensation that you have travelled back in time to an era of glitz and glamour!</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 23, 1),
(11, 'BlogPost', '2016-03-13 15:28:18', '2016-02-27 02:34:45', 'welcome-to-my-blog', 'Welcome to my blog', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 11, 1),
(12, 'BlogPost', '2016-03-05 08:55:30', '2016-03-04 00:46:29', 'day-one', 'Bangkok', NULL, '<h2>Day one</h2>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 10, 1),
(13, 'BlogPost', '2016-03-13 15:27:21', '2016-03-07 23:50:41', 'floating-markets', 'Floating Markets', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 6, 1),
(14, 'BlogPost', '2016-03-08 15:20:24', '2016-03-08 00:27:40', 'bangkok-finale', 'Bangkok Finale', NULL, '<h2>Ekamai &amp; such</h2>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 8, 1),
(15, 'BlogPost', '2016-03-17 15:32:49', '2016-03-08 15:23:47', 'sawadee-chiang-mai', 'Sawadee, Chiang Mai', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 11, 1),
(16, 'BlogPost', '2016-03-11 10:03:05', '2016-03-10 14:48:05', 'wat-doi-suthep', 'Wat Doi Suthep', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 6, 1),
(17, 'BlogPost', '2016-03-13 08:25:59', '2016-03-13 07:57:04', 'is-that-a-lady-or-a-ladyboy', 'Is that a lady... or a ladyboy?!', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 8, 1),
(18, 'BlogPost', '2016-03-13 15:29:06', '2016-03-13 08:37:04', 'nimmanahaemenda-road-the-place-to-be', 'Nimmana haemenda Road... The place to be!', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 7, 1),
(19, 'BlogPost', '2016-03-13 09:20:25', '2016-03-13 08:56:46', 'white-temple-chiang-rai', 'The White Temple', NULL, '<p class="lead">Wat Rong Khun, Chiang Mai</p>', NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 7, 1),
(20, 'BlogPost', '2016-03-17 15:04:40', '2016-03-17 15:02:12', 'slow-boat-down-the-mekong', 'Slow boat down the Mekong', NULL, NULL, NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 4, 1),
(21, 'BlogPost', '2016-03-20 15:11:26', '2016-03-19 02:33:42', 'luang-prabang', 'Luang Prabang', NULL, NULL, NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 4, 1),
(23, 'BlogPost', '2016-03-28 14:00:55', '2016-03-20 15:12:32', 'rice-farmer-for-a-day', 'Rice Farmer for a Day', NULL, NULL, NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 7, 1),
(24, 'BlogPost', '2016-03-28 15:05:04', '2016-03-28 15:01:28', 'vientiane-for-a-day', 'Vientiane for a Day', NULL, NULL, NULL, NULL, 0, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 5, 1),
(25, 'BlogPost', '2016-03-28 15:11:00', '2016-03-28 15:07:59', 'good-morning-vietnam', 'Good Morning Vietnam!', NULL, NULL, NULL, NULL, 0, 1, 15, 0, 0, NULL, 'Inherit', 'Inherit', 5, 1),
(26, 'BlogPost', '2016-04-19 10:09:38', '2016-04-19 10:07:27', 'halong-bay', 'Halong Bay', NULL, NULL, NULL, NULL, 0, 1, 16, 0, 0, NULL, 'Inherit', 'Inherit', 4, 1),
(27, 'BlogPost', '2016-04-19 11:38:52', '2016-04-19 11:37:13', 'hoi-an', 'Hoi An', NULL, NULL, NULL, NULL, 0, 1, 17, 0, 0, NULL, 'Inherit', 'Inherit', 4, 1),
(28, 'BlogPost', '2016-04-21 20:38:21', '2016-04-21 20:34:18', 'phu-quoc', 'Phu Quoc', NULL, NULL, NULL, NULL, 0, 1, 18, 0, 0, NULL, 'Inherit', 'Inherit', 4, 1),
(29, 'BlogPost', '2016-04-21 21:36:09', '2016-04-21 21:28:29', 'singapore', 'Singapore', NULL, NULL, NULL, NULL, 0, 1, 19, 0, 0, NULL, 'Inherit', 'Inherit', 5, 1),
(30, 'BlogPost', '2016-10-16 10:32:04', '2016-10-16 10:15:36', 'london', 'London', NULL, NULL, NULL, NULL, 0, 1, 20, 0, 0, NULL, 'Inherit', 'Inherit', 7, 1),
(31, 'BlogPost', '2016-10-16 10:37:50', '2016-10-16 10:29:33', 'copenhagen', 'Copenhagen', NULL, NULL, NULL, NULL, 0, 1, 21, 0, 0, NULL, 'Inherit', 'Inherit', 4, 1),
(32, 'BlogPost', '2016-10-16 10:55:41', '2016-10-16 10:50:20', 'london-again', 'London Again!', NULL, NULL, NULL, NULL, 0, 1, 22, 0, 0, NULL, 'Inherit', 'Inherit', 5, 1),
(33, 'BlogPost', '2016-10-16 11:04:28', '2016-10-16 11:03:01', 'brighton', 'Brighton', NULL, NULL, NULL, NULL, 0, 1, 23, 0, 0, NULL, 'Inherit', 'Inherit', 5, 1),
(34, 'BlogPost', '2016-10-16 13:14:20', '2016-10-16 13:10:46', 'bath', 'Bath', NULL, NULL, NULL, NULL, 0, 1, 24, 0, 0, NULL, 'Inherit', 'Inherit', 6, 1),
(35, 'BlogPost', '2016-10-16 15:58:19', '2016-10-16 15:46:34', 'paris', 'Paris', NULL, NULL, NULL, NULL, 0, 1, 25, 0, 0, NULL, 'Inherit', 'Inherit', 6, 1),
(36, 'BlogPost', '2016-10-28 19:09:57', '2016-10-28 19:03:21', 'prague', 'Prague', NULL, NULL, NULL, NULL, 0, 1, 26, 0, 0, NULL, 'Inherit', 'Inherit', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_EditorGroups`
--

CREATE TABLE `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ImageTracking`
--

CREATE TABLE `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_LinkTracking`
--

CREATE TABLE `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_Live`
--

CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','Blog','BlogPost','BlogEntry','ErrorPage','RedirectorPage','VirtualPage','BlogTree','BlogHolder') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'Blog', '2016-03-05 08:40:30', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Follow the adventures of a small Kiwi travelling the world!</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 15, 0),
(4, 'ErrorPage', '2016-02-11 10:41:33', '2016-02-11 10:41:24', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2016-02-11 10:41:24', '2016-02-11 10:41:24', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'BlogPost', '2016-03-13 15:28:00', '2016-02-11 11:02:46', 'art-deco-capital', 'Art Deco Capital', NULL, '<p class="lead">The tens of thousands of people revelling in the 1930s atmosphere created in the heart of the city gives the sensation that you have travelled back in time to an era of glitz and glamour!</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 23, 1),
(11, 'BlogPost', '2016-03-13 15:28:19', '2016-02-27 02:34:45', 'welcome-to-my-blog', 'Welcome to my blog', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 11, 1),
(12, 'BlogPost', '2016-03-05 08:55:30', '2016-03-04 00:46:29', 'day-one', 'Bangkok', NULL, '<h2>Day one</h2>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 10, 1),
(13, 'BlogPost', '2016-03-13 15:27:21', '2016-03-07 23:50:41', 'floating-markets', 'Floating Markets', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 6, 1),
(14, 'BlogPost', '2016-03-08 15:20:24', '2016-03-08 00:27:40', 'bangkok-finale', 'Bangkok Finale', NULL, '<h2>Ekamai &amp; such</h2>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 8, 1),
(15, 'BlogPost', '2016-03-17 15:32:49', '2016-03-08 15:23:47', 'sawadee-chiang-mai', 'Sawadee, Chiang Mai', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 11, 1),
(16, 'BlogPost', '2016-03-11 10:03:05', '2016-03-10 14:48:05', 'wat-doi-suthep', 'Wat Doi Suthep', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 6, 1),
(17, 'BlogPost', '2016-03-13 08:25:59', '2016-03-13 07:57:04', 'is-that-a-lady-or-a-ladyboy', 'Is that a lady... or a ladyboy?!', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 8, 1),
(18, 'BlogPost', '2016-03-13 15:29:06', '2016-03-13 08:37:04', 'nimmanahaemenda-road-the-place-to-be', 'Nimmana haemenda Road... The place to be!', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 7, 1),
(19, 'BlogPost', '2016-03-13 09:20:25', '2016-03-13 08:56:46', 'white-temple-chiang-rai', 'The White Temple', NULL, '<p class="lead">Wat Rong Khun, Chiang Mai</p>', NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 7, 1),
(20, 'BlogPost', '2016-03-17 15:04:40', '2016-03-17 15:02:12', 'slow-boat-down-the-mekong', 'Slow boat down the Mekong', NULL, NULL, NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 4, 1),
(21, 'BlogPost', '2016-03-20 15:11:26', '2016-03-19 02:33:42', 'luang-prabang', 'Luang Prabang', NULL, NULL, NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 4, 1),
(23, 'BlogPost', '2016-03-28 14:00:56', '2016-03-20 15:12:32', 'rice-farmer-for-a-day', 'Rice Farmer for a Day', NULL, NULL, NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 7, 1),
(24, 'BlogPost', '2016-03-28 15:05:05', '2016-03-28 15:01:28', 'vientiane-for-a-day', 'Vientiane for a Day', NULL, NULL, NULL, NULL, 0, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 5, 1),
(25, 'BlogPost', '2016-03-28 15:11:00', '2016-03-28 15:07:59', 'good-morning-vietnam', 'Good Morning Vietnam!', NULL, NULL, NULL, NULL, 0, 1, 15, 0, 0, NULL, 'Inherit', 'Inherit', 5, 1),
(26, 'BlogPost', '2016-04-19 10:09:38', '2016-04-19 10:07:27', 'halong-bay', 'Halong Bay', NULL, NULL, NULL, NULL, 0, 1, 16, 0, 0, NULL, 'Inherit', 'Inherit', 4, 1),
(27, 'BlogPost', '2016-04-19 11:38:52', '2016-04-19 11:37:13', 'hoi-an', 'Hoi An', NULL, NULL, NULL, NULL, 0, 1, 17, 0, 0, NULL, 'Inherit', 'Inherit', 4, 1),
(28, 'BlogPost', '2016-04-21 20:38:21', '2016-04-21 20:34:18', 'phu-quoc', 'Phu Quoc', NULL, NULL, NULL, NULL, 0, 1, 18, 0, 0, NULL, 'Inherit', 'Inherit', 4, 1),
(29, 'BlogPost', '2016-04-21 21:36:09', '2016-04-21 21:28:29', 'singapore', 'Singapore', NULL, NULL, NULL, NULL, 0, 1, 19, 0, 0, NULL, 'Inherit', 'Inherit', 5, 1),
(30, 'BlogPost', '2016-10-16 10:32:04', '2016-10-16 10:15:36', 'london', 'London', NULL, NULL, NULL, NULL, 0, 1, 20, 0, 0, NULL, 'Inherit', 'Inherit', 7, 1),
(31, 'BlogPost', '2016-10-16 10:37:50', '2016-10-16 10:29:33', 'copenhagen', 'Copenhagen', NULL, NULL, NULL, NULL, 0, 1, 21, 0, 0, NULL, 'Inherit', 'Inherit', 4, 1),
(32, 'BlogPost', '2016-10-16 10:55:41', '2016-10-16 10:50:20', 'london-again', 'London Again!', NULL, NULL, NULL, NULL, 0, 1, 22, 0, 0, NULL, 'Inherit', 'Inherit', 5, 1),
(33, 'BlogPost', '2016-10-16 11:04:28', '2016-10-16 11:03:01', 'brighton', 'Brighton', NULL, NULL, NULL, NULL, 0, 1, 23, 0, 0, NULL, 'Inherit', 'Inherit', 5, 1),
(34, 'BlogPost', '2016-10-16 13:14:20', '2016-10-16 13:10:46', 'bath', 'Bath', NULL, NULL, NULL, NULL, 0, 1, 24, 0, 0, NULL, 'Inherit', 'Inherit', 6, 1),
(35, 'BlogPost', '2016-10-16 15:58:20', '2016-10-16 15:46:34', 'paris', 'Paris', NULL, NULL, NULL, NULL, 0, 1, 25, 0, 0, NULL, 'Inherit', 'Inherit', 6, 1),
(36, 'BlogPost', '2016-10-28 19:09:57', '2016-10-28 19:03:21', 'prague', 'Prague', NULL, NULL, NULL, NULL, 0, 1, 26, 0, 0, NULL, 'Inherit', 'Inherit', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_versions`
--

CREATE TABLE `SiteTree_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','Blog','BlogPost','BlogEntry','ErrorPage','RedirectorPage','VirtualPage','BlogTree','BlogHolder') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteTree_versions`
--

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2016-02-11 10:41:23', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2, 2, 1, 1, 0, 0, 'Page', '2016-02-11 10:41:24', '2016-02-11 10:41:24', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(3, 3, 1, 1, 0, 0, 'Page', '2016-02-11 10:41:24', '2016-02-11 10:41:24', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(4, 4, 1, 1, 0, 0, 'ErrorPage', '2016-02-11 10:41:24', '2016-02-11 10:41:24', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(5, 5, 1, 1, 0, 0, 'ErrorPage', '2016-02-11 10:41:24', '2016-02-11 10:41:24', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(6, 1, 2, 1, 1, 1, '', '2016-02-11 11:02:17', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(7, 1, 3, 1, 1, 1, 'Blog', '2016-02-11 11:02:34', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(8, 6, 1, 0, 1, 0, 'BlogPost', '2016-02-11 11:02:46', '2016-02-11 11:02:46', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(9, 6, 2, 0, 1, 0, 'BlogPost', '2016-02-11 11:03:00', '2016-02-11 11:02:46', 'new-blog-post', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(10, 6, 3, 1, 1, 1, 'BlogPost', '2016-02-11 11:03:00', '2016-02-11 11:02:46', 'new-blog-post', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(11, 6, 4, 1, 1, 1, 'BlogPost', '2016-02-11 11:33:44', '2016-02-11 11:02:46', 'new-blog-post', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(12, 7, 1, 1, 1, 1, 'BlogPost', '2016-02-11 11:39:55', '2016-02-11 11:02:46', 'new-blog-post-2', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(13, 8, 1, 1, 1, 1, 'BlogPost', '2016-02-11 11:40:32', '2016-02-11 11:02:46', 'new-blog-post-3', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(14, 8, 2, 1, 1, 1, 'BlogPost', '2016-02-11 11:40:43', '2016-02-11 11:02:46', 'new-blog-post-3', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(15, 9, 1, 1, 1, 1, 'BlogPost', '2016-02-11 11:41:58', '2016-02-11 11:02:46', 'new-blog-post-4', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(16, 10, 1, 1, 1, 1, 'BlogPost', '2016-02-11 11:42:06', '2016-02-11 11:02:46', 'new-blog-post-5', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(17, 11, 1, 0, 1, 0, 'BlogPost', '2016-02-11 11:42:55', '2016-02-11 11:02:46', 'new-blog-post-6', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(18, 11, 2, 1, 1, 1, 'BlogPost', '2016-02-11 11:43:00', '2016-02-11 11:02:46', 'new-blog-post-6', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(19, 12, 1, 1, 1, 1, 'BlogPost', '2016-02-11 11:43:05', '2016-02-11 11:02:46', 'new-blog-post-7', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(20, 1, 4, 1, 1, 1, 'Blog', '2016-02-12 23:49:13', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p>Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(21, 9, 2, 1, 1, 1, 'BlogPost', '2016-02-12 23:51:20', '2016-02-11 11:02:46', 'new-blog-post-4', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(22, 1, 5, 1, 1, 1, 'Blog', '2016-02-13 00:05:43', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(23, 7, 2, 1, 1, 1, 'BlogPost', '2016-02-13 00:13:16', '2016-02-11 11:02:46', 'new-blog-post-2', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(24, 1, 6, 1, 1, 1, 'Blog', '2016-02-13 11:06:32', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(25, 1, 7, 1, 1, 1, 'Blog', '2016-02-13 11:30:48', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(26, 1, 8, 1, 1, 1, 'Blog', '2016-02-13 11:31:06', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(27, 6, 5, 1, 1, 1, 'BlogPost', '2016-02-13 11:31:43', '2016-02-11 11:02:46', 'new-blog-post', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(28, 6, 6, 1, 1, 1, 'BlogPost', '2016-02-13 11:33:21', '2016-02-11 11:02:46', 'new-blog-post', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(29, 6, 7, 1, 1, 1, 'BlogPost', '2016-02-13 11:58:17', '2016-02-11 11:02:46', 'new-blog-post', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(30, 6, 8, 1, 1, 1, 'BlogPost', '2016-02-14 03:44:27', '2016-02-11 11:02:46', 'test-blog-post', 'Test Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(31, 6, 9, 1, 1, 1, 'BlogPost', '2016-02-14 11:08:20', '2016-02-11 11:02:46', 'test-blog-post', 'Test Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(32, 6, 10, 1, 1, 1, 'BlogPost', '2016-02-14 11:27:38', '2016-02-11 11:02:46', 'test-blog-post', 'Test Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(33, 6, 11, 1, 1, 1, 'BlogPost', '2016-02-16 09:03:49', '2016-02-11 11:02:46', 'test-blog-post', 'Test Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(34, 6, 12, 1, 1, 1, 'BlogPost', '2016-02-16 20:13:15', '2016-02-11 11:02:46', 'test-blog-post', 'Test Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(35, 6, 13, 1, 1, 1, 'BlogPost', '2016-02-17 08:48:29', '2016-02-11 11:02:46', 'test-blog-post', 'Test Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(36, 1, 9, 1, 1, 1, 'Blog', '2016-02-17 10:13:59', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(37, 2, 2, 1, 1, 1, 'Page', '2016-02-17 10:25:33', '2016-02-11 10:41:24', 'about-us', 'About Us', NULL, '<p class="lead">Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>\n<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam quis risus eget urna mollis ornare vel eu leo.</p>\n<p>Cras mattis consectetur purus sit amet fermentum.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(38, 3, 2, 1, 1, 1, 'Page', '2016-02-17 10:25:45', '2016-02-11 10:41:24', 'contact-us', 'Contact Us', NULL, '<p class="lead">Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>\n<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam quis risus eget urna mollis ornare vel eu leo.</p>\n<p>Cras mattis consectetur purus sit amet fermentum.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(39, 6, 14, 1, 1, 1, 'BlogPost', '2016-02-17 10:41:51', '2016-02-11 11:02:46', 'test-blog-post', 'Test Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(40, 6, 15, 1, 1, 1, 'BlogPost', '2016-02-17 10:55:01', '2016-02-11 11:02:46', 'test-blog-post', 'Thailand Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(41, 7, 3, 1, 1, 1, 'BlogPost', '2016-02-17 10:55:25', '2016-02-11 11:02:46', 'new-blog-post-2', 'Laos Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(42, 7, 4, 1, 1, 1, 'BlogPost', '2016-02-17 10:55:31', '2016-02-11 11:02:46', 'new-blog-post-2', 'Laos Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(43, 8, 3, 1, 1, 1, 'BlogPost', '2016-02-17 10:55:46', '2016-02-11 11:02:46', 'new-blog-post-3', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(44, 9, 3, 1, 1, 1, 'BlogPost', '2016-02-17 10:56:10', '2016-02-11 11:02:46', 'singapore-post', 'Singapore Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(45, 8, 4, 1, 1, 1, 'BlogPost', '2016-02-17 10:56:43', '2016-02-11 11:02:46', 'vietnam-post', 'Vietnam Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(46, 8, 5, 1, 1, 1, 'BlogPost', '2016-02-17 11:00:20', '2016-02-11 11:02:46', 'vietnam-post', 'Vietnam Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(47, 10, 2, 1, 1, 1, 'BlogPost', '2016-02-17 11:05:52', '2016-02-11 11:02:46', 'new-blog-post-5', 'Indonesia Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(48, 10, 3, 1, 1, 1, 'BlogPost', '2016-02-17 11:06:01', '2016-02-11 11:02:46', 'new-blog-post-5', 'Indonesia Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(49, 1, 10, 1, 1, 1, 'Blog', '2016-02-22 10:11:18', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">They say as the world gets more connected the smaller it feels, but I find the more I learn about different people, places and cultures the bigger it becomes! </p>\n<p>These are the writings of a small kiwi discovering this massively awesome world!</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(50, 1, 11, 1, 1, 1, 'Blog', '2016-02-22 10:11:33', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">They say as the world gets more connected the smaller it feels, but I find the more I learn about different people, places and cultures the bigger it becomes! </p>\n<p class="lead">These are the writings of a small kiwi discovering this massively awesome world!</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(51, 6, 16, 1, 1, 1, 'BlogPost', '2016-02-23 21:29:09', '2016-02-11 11:02:46', 'art-deco-capital', 'Art Deco Capital', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(52, 6, 17, 1, 1, 1, 'BlogPost', '2016-02-23 21:31:20', '2016-02-11 11:02:46', 'art-deco-capital', 'Art Deco Capital', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(53, 6, 18, 1, 1, 1, 'BlogPost', '2016-02-23 21:34:46', '2016-02-11 11:02:46', 'art-deco-capital', 'Art Deco Capital', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(54, 6, 19, 1, 1, 1, 'BlogPost', '2016-02-23 21:42:52', '2016-02-11 11:02:46', 'art-deco-capital', 'Art Deco Capital', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(55, 6, 20, 1, 1, 1, 'BlogPost', '2016-02-23 22:21:02', '2016-02-11 11:02:46', 'art-deco-capital', 'Art Deco Capital', NULL, '<p class="lead">The tens of thousands of people revelling in the 1930s atmosphere created in the heart of the city gives the sensation that you have travelled back in time to an era of glitz and glamour!</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(56, 1, 12, 1, 1, 1, 'Blog', '2016-02-24 03:40:44', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">They say as the world gets more connected the smaller it feels, but I find the more I learn about different people, places and cultures the bigger it becomes! </p>\n<p class="lead">These are the writings of a small kiwi discovering the big wide world!</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(57, 6, 21, 1, 1, 1, 'BlogPost', '2016-02-26 21:12:29', '2016-02-11 11:02:46', 'art-deco-capital', 'Art Deco Capital', NULL, '<p class="lead">The tens of thousands of people revelling in the 1930s atmosphere created in the heart of the city gives the sensation that you have travelled back in time to an era of glitz and glamour!</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(58, 1, 13, 1, 1, 1, 'Blog', '2016-02-26 21:26:38', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">They say as the world gets more connected the smaller it feels... but the more I learn about different people, places and cultures the bigger it becomes! <span>These are the discoveries of a small kiwi exploring the big wide world. </span></p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(59, 7, 5, 0, 1, 0, 'BlogPost', '2016-02-26 23:37:11', '2016-02-26 23:37:11', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(60, 7, 6, 0, 1, 0, 'BlogPost', '2016-02-26 23:37:27', '2016-02-26 23:37:11', 'new-blog-post', 'New Blog Post', NULL, '<p>Maecenas sed diam eget risus varius blandit sit amet non magna. Nulla vitae elit libero, a pharetra augue. Nullam quis risus eget urna mollis ornare vel eu leo. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(61, 7, 7, 1, 1, 1, 'BlogPost', '2016-02-26 23:37:27', '2016-02-26 23:37:11', 'new-blog-post', 'New Blog Post', NULL, '<p>Maecenas sed diam eget risus varius blandit sit amet non magna. Nulla vitae elit libero, a pharetra augue. Nullam quis risus eget urna mollis ornare vel eu leo. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(62, 8, 6, 1, 1, 1, 'BlogPost', '2016-02-26 23:38:51', '2016-02-11 11:02:46', 'art-deco-capital-2', 'Art Deco Capital', NULL, '<p class="lead">The tens of thousands of people revelling in the 1930s atmosphere created in the heart of the city gives the sensation that you have travelled back in time to an era of glitz and glamour!</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(63, 9, 4, 1, 1, 1, 'BlogPost', '2016-02-26 23:39:56', '2016-02-11 11:02:46', 'art-deco-capital-3', 'Art Deco Capital', NULL, '<p class="lead">The tens of thousands of people revelling in the 1930s atmosphere created in the heart of the city gives the sensation that you have travelled back in time to an era of glitz and glamour!</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(64, 10, 4, 1, 1, 1, 'BlogPost', '2016-02-26 23:40:07', '2016-02-11 11:02:46', 'art-deco-capital-4', 'Art Deco Capital', NULL, '<p class="lead">The tens of thousands of people revelling in the 1930s atmosphere created in the heart of the city gives the sensation that you have travelled back in time to an era of glitz and glamour!</p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(65, 7, 8, 0, 1, 0, 'BlogPost', '2016-02-26 23:40:34', '2016-02-26 23:37:11', 'new-blog-post', 'New Blog Post', NULL, '<p>Maecenas sed diam eget risus varius blandit sit amet non magna. Nulla vitae elit libero, a pharetra augue. Nullam quis risus eget urna mollis ornare vel eu leo. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(66, 7, 9, 1, 1, 1, 'BlogPost', '2016-02-26 23:40:39', '2016-02-26 23:37:11', 'new-blog-post', 'New Blog Post', NULL, '<p>Maecenas sed diam eget risus varius blandit sit amet non magna. Nulla vitae elit libero, a pharetra augue. Nullam quis risus eget urna mollis ornare vel eu leo. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(67, 11, 3, 0, 1, 0, 'BlogPost', '2016-02-27 02:34:45', '2016-02-27 02:34:45', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(68, 11, 4, 0, 1, 0, 'BlogPost', '2016-02-27 02:35:06', '2016-02-27 02:34:45', 'welcome-to-my-blog', 'Welcome to my blog', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(69, 11, 5, 1, 1, 1, 'BlogPost', '2016-02-27 02:35:06', '2016-02-27 02:34:45', 'welcome-to-my-blog', 'Welcome to my blog', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(70, 11, 6, 1, 1, 1, 'BlogPost', '2016-02-27 02:35:49', '2016-02-27 02:34:45', 'welcome-to-my-blog', 'Welcome to my blog', NULL, '<p class="lead">Hi, I\'m Hamish... and this is my blog.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(71, 11, 7, 1, 1, 1, 'BlogPost', '2016-02-27 02:37:07', '2016-02-27 02:34:45', 'welcome-to-my-blog', 'Welcome to my blog', NULL, '<p class="lead">Hi, I\'m Hamish... and this is my blog.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(72, 1, 14, 1, 1, 1, 'Blog', '2016-02-27 02:39:07', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">They say as the world gets more connected the smaller it feels... but the more I learn about different people, places and cultures the bigger it becomes! <span>These are the discoveries of a small kiwi exploring the big wide world. </span></p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(73, 11, 8, 1, 1, 1, 'BlogPost', '2016-02-27 02:41:22', '2016-02-27 02:34:45', 'welcome-to-my-blog', 'Welcome to my blog', NULL, '<p class="lead">Hi, I\'m Hamish... and this is my blog.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(74, 11, 9, 1, 1, 1, 'BlogPost', '2016-02-27 02:56:35', '2016-02-27 02:34:45', 'welcome-to-my-blog', 'Welcome to my blog', NULL, '<p class="lead">Hi, I\'m Hamish... and this is my blog.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(75, 11, 10, 1, 1, 1, 'BlogPost', '2016-02-27 02:57:13', '2016-02-27 02:34:45', 'welcome-to-my-blog', 'Welcome to my blog', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(76, 12, 2, 0, 1, 0, 'BlogPost', '2016-03-04 00:46:29', '2016-03-04 00:46:29', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(77, 12, 3, 0, 1, 0, 'BlogPost', '2016-03-04 03:47:03', '2016-03-04 00:46:29', 'day-one', 'Day One', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(78, 12, 4, 0, 1, 0, 'BlogPost', '2016-03-04 03:51:36', '2016-03-04 00:46:29', 'day-one', 'Day One', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(79, 12, 5, 0, 1, 0, 'BlogPost', '2016-03-04 03:53:54', '2016-03-04 00:46:29', 'day-one', 'Day One', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(80, 12, 6, 0, 1, 0, 'BlogPost', '2016-03-04 04:03:44', '2016-03-04 00:46:29', 'day-one', 'Day One', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(81, 12, 7, 1, 1, 1, 'BlogPost', '2016-03-04 04:03:44', '2016-03-04 00:46:29', 'day-one', 'Day One', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(82, 1, 15, 1, 1, 1, 'Blog', '2016-03-05 08:40:30', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Follow the adventures of a small Kiwi travelling the world!</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(83, 6, 22, 1, 1, 1, 'BlogPost', '2016-03-05 08:41:37', '2016-02-11 11:02:46', 'art-deco-capital', 'Art Deco Capital', NULL, '<p class="lead">The tens of thousands of people revelling in the 1930s atmosphere created in the heart of the city gives the sensation that you have travelled back in time to an era of glitz and glamour!</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(84, 12, 8, 1, 1, 1, 'BlogPost', '2016-03-05 08:51:23', '2016-03-04 00:46:29', 'day-one', 'Bangkok', NULL, '<h2>Day one</h2>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(85, 12, 9, 1, 1, 1, 'BlogPost', '2016-03-05 08:54:23', '2016-03-04 00:46:29', 'day-one', 'Bangkok', NULL, '<h2>Day one</h2>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(86, 12, 10, 1, 1, 1, 'BlogPost', '2016-03-05 08:55:30', '2016-03-04 00:46:29', 'day-one', 'Bangkok', NULL, '<h2>Day one</h2>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(87, 13, 1, 0, 1, 0, 'BlogPost', '2016-03-07 23:50:41', '2016-03-07 23:50:41', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(88, 13, 2, 0, 1, 0, 'BlogPost', '2016-03-07 23:52:29', '2016-03-07 23:50:41', 'floating-markets', 'Floating Markets', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(89, 13, 3, 1, 1, 1, 'BlogPost', '2016-03-07 23:52:29', '2016-03-07 23:50:41', 'floating-markets', 'Floating Markets', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(90, 13, 4, 1, 1, 1, 'BlogPost', '2016-03-07 23:52:58', '2016-03-07 23:50:41', 'floating-markets', 'Floating Markets', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(91, 14, 1, 0, 1, 0, 'BlogPost', '2016-03-08 00:27:40', '2016-03-08 00:27:40', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(92, 14, 2, 0, 1, 0, 'BlogPost', '2016-03-08 00:34:25', '2016-03-08 00:27:40', 'bangkok-finale', 'Bangkok Finale', NULL, '<h2>Ekamai</h2>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1);
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(93, 14, 3, 1, 1, 1, 'BlogPost', '2016-03-08 00:34:25', '2016-03-08 00:27:40', 'bangkok-finale', 'Bangkok Finale', NULL, '<h2>Ekamai</h2>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(94, 14, 4, 1, 1, 1, 'BlogPost', '2016-03-08 00:34:38', '2016-03-08 00:27:40', 'bangkok-finale', 'Bangkok Finale', NULL, '<h2>Ekamai</h2>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(95, 14, 5, 1, 1, 1, 'BlogPost', '2016-03-08 00:34:59', '2016-03-08 00:27:40', 'bangkok-finale', 'Bangkok Finale', NULL, '<h2>Ekamai</h2>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(96, 14, 6, 1, 1, 1, 'BlogPost', '2016-03-08 00:39:09', '2016-03-08 00:27:40', 'bangkok-finale', 'Bangkok Finale', NULL, '<h2>Ekamai</h2>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(97, 14, 7, 1, 1, 1, 'BlogPost', '2016-03-08 00:39:51', '2016-03-08 00:27:40', 'bangkok-finale', 'Bangkok Finale', NULL, '<h2>Ekamai</h2>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(98, 13, 5, 1, 1, 1, 'BlogPost', '2016-03-08 15:17:56', '2016-03-07 23:50:41', 'floating-markets', 'Floating Markets', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(99, 14, 8, 1, 1, 1, 'BlogPost', '2016-03-08 15:20:24', '2016-03-08 00:27:40', 'bangkok-finale', 'Bangkok Finale', NULL, '<h2>Ekamai &amp; such</h2>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(100, 15, 1, 0, 1, 0, 'BlogPost', '2016-03-08 15:23:47', '2016-03-08 15:23:47', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(101, 15, 2, 0, 1, 0, 'BlogPost', '2016-03-08 15:53:08', '2016-03-08 15:23:47', 'sa-wat-dee-chiang-mai', 'Sa wat dee Chiang Mai', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(102, 15, 3, 1, 1, 1, 'BlogPost', '2016-03-08 15:53:09', '2016-03-08 15:23:47', 'sa-wat-dee-chiang-mai', 'Sa wat dee Chiang Mai', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(103, 15, 4, 1, 1, 1, 'BlogPost', '2016-03-08 15:54:00', '2016-03-08 15:23:47', 'sa-wat-dee', 'Sa Wat Dee', NULL, '<p class="lead">Hello, Chiang Mai</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(104, 15, 5, 1, 1, 1, 'BlogPost', '2016-03-08 16:10:39', '2016-03-08 15:23:47', 'sa-wat-dee', 'Sa Wat Dee', NULL, '<p class="lead">Hello, Chiang Mai</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(105, 15, 6, 1, 1, 1, 'BlogPost', '2016-03-08 16:11:02', '2016-03-08 15:23:47', 'sa-wat-dee', 'Sa Wat Dee', NULL, '<p class="lead">Hello, Chiang Mai</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(106, 15, 7, 1, 1, 1, 'BlogPost', '2016-03-08 16:11:58', '2016-03-08 15:23:47', 'sa-wat-dee', 'Sa Wat Dee', NULL, '<p class="lead">Hello, Chiang Mai</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(107, 15, 8, 1, 1, 1, 'BlogPost', '2016-03-08 23:36:32', '2016-03-08 15:23:47', 'sa-wat-dee', 'Sa Wat Dee', NULL, '<p class="lead">Morning, Chiang Mai </p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(108, 16, 1, 0, 1, 0, 'BlogPost', '2016-03-10 14:48:05', '2016-03-10 14:48:05', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(109, 16, 2, 0, 1, 0, 'BlogPost', '2016-03-10 14:49:22', '2016-03-10 14:48:05', 'wat-doi-suthep', 'Wat Doi Suthep', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(110, 16, 3, 0, 1, 0, 'BlogPost', '2016-03-10 14:55:25', '2016-03-10 14:48:05', 'wat-doi-suthep', 'Wat Doi Suthep', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(111, 16, 4, 1, 1, 1, 'BlogPost', '2016-03-11 09:41:38', '2016-03-10 14:48:05', 'wat-doi-suthep', 'Wat Doi Suthep', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(112, 16, 5, 1, 1, 1, 'BlogPost', '2016-03-11 09:42:33', '2016-03-10 14:48:05', 'wat-doi-suthep', 'Wat Doi Suthep', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(113, 16, 6, 1, 1, 1, 'BlogPost', '2016-03-11 10:03:05', '2016-03-10 14:48:05', 'wat-doi-suthep', 'Wat Doi Suthep', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(114, 15, 9, 1, 1, 1, 'BlogPost', '2016-03-13 07:56:45', '2016-03-08 15:23:47', 'sa-wat-dee-chiang-mai', 'Sa wat dee, Chiang Mai', NULL, '<p class="lead">Morning, Chiang Mai </p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(115, 15, 10, 1, 1, 1, 'BlogPost', '2016-03-13 07:56:53', '2016-03-08 15:23:47', 'sa-wat-dee-chiang-mai', 'Sa wat dee, Chiang Mai', NULL, '<p class="lead">Morning, Chiang Mai </p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(116, 17, 1, 0, 1, 0, 'BlogPost', '2016-03-13 07:57:04', '2016-03-13 07:57:04', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(117, 17, 2, 0, 1, 0, 'BlogPost', '2016-03-13 07:59:14', '2016-03-13 07:57:04', 'is-that-a-lady-or-a-ladyboy', 'Is that a lady... or a ladyboy?!', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(118, 17, 3, 0, 1, 0, 'BlogPost', '2016-03-13 08:13:24', '2016-03-13 07:57:04', 'is-that-a-lady-or-a-ladyboy', 'Is that a lady... or a ladyboy?!', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(119, 17, 4, 1, 1, 1, 'BlogPost', '2016-03-13 08:13:24', '2016-03-13 07:57:04', 'is-that-a-lady-or-a-ladyboy', 'Is that a lady... or a ladyboy?!', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(120, 17, 5, 1, 1, 1, 'BlogPost', '2016-03-13 08:17:06', '2016-03-13 07:57:04', 'is-that-a-lady-or-a-ladyboy', 'Is that a lady... or a ladyboy?!', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(121, 17, 6, 1, 1, 1, 'BlogPost', '2016-03-13 08:18:20', '2016-03-13 07:57:04', 'is-that-a-lady-or-a-ladyboy', 'Is that a lady... or a ladyboy?!', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(122, 17, 7, 1, 1, 1, 'BlogPost', '2016-03-13 08:18:51', '2016-03-13 07:57:04', 'is-that-a-lady-or-a-ladyboy', 'Is that a lady... or a ladyboy?!', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(123, 17, 8, 1, 1, 1, 'BlogPost', '2016-03-13 08:25:59', '2016-03-13 07:57:04', 'is-that-a-lady-or-a-ladyboy', 'Is that a lady... or a ladyboy?!', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(124, 18, 1, 0, 1, 0, 'BlogPost', '2016-03-13 08:37:04', '2016-03-13 08:37:04', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(125, 18, 2, 0, 1, 0, 'BlogPost', '2016-03-13 08:39:12', '2016-03-13 08:37:04', 'nimmanahaemenda-road-the-place-to-be', 'Nimmanahaemenda Road... The place to be!', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(126, 18, 3, 0, 1, 0, 'BlogPost', '2016-03-13 08:40:25', '2016-03-13 08:37:04', 'nimmanahaemenda-road-the-place-to-be', 'Nimmana haemenda Road... The place to be!', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(127, 18, 4, 1, 1, 1, 'BlogPost', '2016-03-13 08:40:26', '2016-03-13 08:37:04', 'nimmanahaemenda-road-the-place-to-be', 'Nimmana haemenda Road... The place to be!', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(128, 18, 5, 1, 1, 1, 'BlogPost', '2016-03-13 08:44:56', '2016-03-13 08:37:04', 'nimmanahaemenda-road-the-place-to-be', 'Nimmana haemenda Road... The place to be!', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(129, 19, 1, 0, 1, 0, 'BlogPost', '2016-03-13 08:56:46', '2016-03-13 08:56:46', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(130, 19, 2, 0, 1, 0, 'BlogPost', '2016-03-13 08:58:22', '2016-03-13 08:56:46', 'white-temple-chiang-rai', 'White Temple, Chiang Rai', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(131, 19, 3, 1, 1, 1, 'BlogPost', '2016-03-13 08:58:22', '2016-03-13 08:56:46', 'white-temple-chiang-rai', 'White Temple, Chiang Rai', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(132, 19, 4, 1, 1, 1, 'BlogPost', '2016-03-13 08:58:50', '2016-03-13 08:56:46', 'white-temple-chiang-rai', 'White Temple, Chiang Rai', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(133, 19, 5, 1, 1, 1, 'BlogPost', '2016-03-13 08:59:03', '2016-03-13 08:56:46', 'white-temple-chiang-rai', 'White Temple, Chiang Rai', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(134, 19, 6, 1, 1, 1, 'BlogPost', '2016-03-13 09:20:04', '2016-03-13 08:56:46', 'white-temple-chiang-rai', 'White Temple, Chiang Rai', NULL, '<p class="lead">Wat Rong Khun</p>', NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(135, 19, 7, 1, 1, 1, 'BlogPost', '2016-03-13 09:20:25', '2016-03-13 08:56:46', 'white-temple-chiang-rai', 'The White Temple', NULL, '<p class="lead">Wat Rong Khun, Chiang Mai</p>', NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(136, 18, 6, 1, 1, 1, 'BlogPost', '2016-03-13 15:24:53', '2016-03-13 08:37:04', 'nimmanahaemenda-road-the-place-to-be', 'Nimmana haemenda Road... The place to be!', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(137, 13, 6, 1, 1, 1, 'BlogPost', '2016-03-13 15:27:21', '2016-03-07 23:50:41', 'floating-markets', 'Floating Markets', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(138, 6, 23, 1, 1, 1, 'BlogPost', '2016-03-13 15:28:00', '2016-02-11 11:02:46', 'art-deco-capital', 'Art Deco Capital', NULL, '<p class="lead">The tens of thousands of people revelling in the 1930s atmosphere created in the heart of the city gives the sensation that you have travelled back in time to an era of glitz and glamour!</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(139, 11, 11, 1, 1, 1, 'BlogPost', '2016-03-13 15:28:18', '2016-02-27 02:34:45', 'welcome-to-my-blog', 'Welcome to my blog', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(140, 18, 7, 1, 1, 1, 'BlogPost', '2016-03-13 15:29:06', '2016-03-13 08:37:04', 'nimmanahaemenda-road-the-place-to-be', 'Nimmana haemenda Road... The place to be!', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(141, 20, 1, 0, 1, 0, 'BlogPost', '2016-03-17 15:02:12', '2016-03-17 15:02:12', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(142, 20, 2, 0, 1, 0, 'BlogPost', '2016-03-17 15:03:18', '2016-03-17 15:02:12', 'slow-boat-down-the-mekong', 'Slow boat down the Mekong', NULL, NULL, NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(143, 20, 3, 1, 1, 1, 'BlogPost', '2016-03-17 15:03:19', '2016-03-17 15:02:12', 'slow-boat-down-the-mekong', 'Slow boat down the Mekong', NULL, NULL, NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(144, 20, 4, 1, 1, 1, 'BlogPost', '2016-03-17 15:04:40', '2016-03-17 15:02:12', 'slow-boat-down-the-mekong', 'Slow boat down the Mekong', NULL, NULL, NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(145, 15, 11, 1, 1, 1, 'BlogPost', '2016-03-17 15:32:49', '2016-03-08 15:23:47', 'sawadee-chiang-mai', 'Sawadee, Chiang Mai', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(146, 21, 1, 0, 1, 0, 'BlogPost', '2016-03-19 02:33:42', '2016-03-19 02:33:42', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(147, 21, 2, 0, 1, 0, 'BlogPost', '2016-03-19 02:34:17', '2016-03-19 02:33:42', 'luang-prabang', 'Luang Prabang', NULL, NULL, NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(148, 21, 3, 0, 1, 0, 'BlogPost', '2016-03-19 02:35:14', '2016-03-19 02:33:42', 'luang-prabang', 'Luang Prabang', NULL, NULL, NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(149, 21, 4, 1, 1, 1, 'BlogPost', '2016-03-20 15:11:26', '2016-03-19 02:33:42', 'luang-prabang', 'Luang Prabang', NULL, NULL, NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(150, 22, 1, 0, 1, 0, 'Blog', '2016-03-20 15:11:36', '2016-02-11 10:41:23', 'home-2', 'Home', NULL, '<p class="lead">Follow the adventures of a small Kiwi travelling the world!</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(151, 23, 1, 0, 1, 0, 'BlogPost', '2016-03-20 15:12:32', '2016-03-20 15:12:32', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(152, 23, 2, 0, 1, 0, 'BlogPost', '2016-03-20 15:14:38', '2016-03-20 15:12:32', 'tending-the-fields', 'Tending the fields...', NULL, NULL, NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(153, 23, 3, 1, 1, 1, 'BlogPost', '2016-03-20 15:14:38', '2016-03-20 15:12:32', 'tending-the-fields', 'Tending the fields...', NULL, NULL, NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(154, 23, 4, 0, 1, 0, 'BlogPost', '2016-03-20 15:16:14', '2016-03-20 15:12:32', 'tending-the-fields', 'Tending the fields...', NULL, NULL, NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(155, 23, 5, 0, 1, 0, 'BlogPost', '2016-03-28 14:00:25', '2016-03-20 15:12:32', 'rice-farmer-for-a-day', 'Rice Farmer for a Day', NULL, NULL, NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(156, 23, 6, 1, 1, 1, 'BlogPost', '2016-03-28 14:00:25', '2016-03-20 15:12:32', 'rice-farmer-for-a-day', 'Rice Farmer for a Day', NULL, NULL, NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(157, 23, 7, 1, 1, 1, 'BlogPost', '2016-03-28 14:00:55', '2016-03-20 15:12:32', 'rice-farmer-for-a-day', 'Rice Farmer for a Day', NULL, NULL, NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(158, 24, 1, 0, 1, 0, 'BlogPost', '2016-03-28 15:01:28', '2016-03-28 15:01:28', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(159, 24, 2, 0, 1, 0, 'BlogPost', '2016-03-28 15:03:51', '2016-03-28 15:01:28', 'vientiane-for-one-day', 'Vientiane for One Day', NULL, NULL, NULL, NULL, 0, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(160, 24, 3, 1, 1, 1, 'BlogPost', '2016-03-28 15:03:51', '2016-03-28 15:01:28', 'vientiane-for-one-day', 'Vientiane for One Day', NULL, NULL, NULL, NULL, 0, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(161, 24, 4, 1, 1, 1, 'BlogPost', '2016-03-28 15:04:08', '2016-03-28 15:01:28', 'vientiane-for-one-day', 'Vientiane for One Day', NULL, NULL, NULL, NULL, 0, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(162, 24, 5, 1, 1, 1, 'BlogPost', '2016-03-28 15:05:04', '2016-03-28 15:01:28', 'vientiane-for-a-day', 'Vientiane for a Day', NULL, NULL, NULL, NULL, 0, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(163, 25, 1, 0, 1, 0, 'BlogPost', '2016-03-28 15:07:59', '2016-03-28 15:07:59', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 15, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(164, 25, 2, 0, 1, 0, 'BlogPost', '2016-03-28 15:10:09', '2016-03-28 15:07:59', 'good-morning-vietnam', 'Good Morning Vietnam!', NULL, NULL, NULL, NULL, 0, 1, 15, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(165, 25, 3, 1, 1, 1, 'BlogPost', '2016-03-28 15:10:10', '2016-03-28 15:07:59', 'good-morning-vietnam', 'Good Morning Vietnam!', NULL, NULL, NULL, NULL, 0, 1, 15, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(166, 25, 4, 1, 1, 1, 'BlogPost', '2016-03-28 15:10:45', '2016-03-28 15:07:59', 'good-morning-vietnam', 'Good Morning Vietnam!', NULL, NULL, NULL, NULL, 0, 1, 15, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(167, 25, 5, 1, 1, 1, 'BlogPost', '2016-03-28 15:11:00', '2016-03-28 15:07:59', 'good-morning-vietnam', 'Good Morning Vietnam!', NULL, NULL, NULL, NULL, 0, 1, 15, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(168, 26, 1, 0, 1, 0, 'BlogPost', '2016-04-19 10:07:27', '2016-04-19 10:07:27', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 16, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(169, 26, 2, 0, 1, 0, 'BlogPost', '2016-04-19 10:09:23', '2016-04-19 10:07:27', 'halong-bay', 'Halong Bay', NULL, NULL, NULL, NULL, 0, 1, 16, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(170, 26, 3, 1, 1, 1, 'BlogPost', '2016-04-19 10:09:23', '2016-04-19 10:07:27', 'halong-bay', 'Halong Bay', NULL, NULL, NULL, NULL, 0, 1, 16, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(171, 26, 4, 1, 1, 1, 'BlogPost', '2016-04-19 10:09:38', '2016-04-19 10:07:27', 'halong-bay', 'Halong Bay', NULL, NULL, NULL, NULL, 0, 1, 16, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(172, 27, 1, 0, 1, 0, 'BlogPost', '2016-04-19 11:37:13', '2016-04-19 11:37:13', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 17, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(173, 27, 2, 0, 1, 0, 'BlogPost', '2016-04-19 11:38:16', '2016-04-19 11:37:13', 'hoi-an', 'Hoi An', NULL, NULL, NULL, NULL, 0, 1, 17, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(174, 27, 3, 1, 1, 1, 'BlogPost', '2016-04-19 11:38:16', '2016-04-19 11:37:13', 'hoi-an', 'Hoi An', NULL, NULL, NULL, NULL, 0, 1, 17, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(175, 27, 4, 1, 1, 1, 'BlogPost', '2016-04-19 11:38:52', '2016-04-19 11:37:13', 'hoi-an', 'Hoi An', NULL, NULL, NULL, NULL, 0, 1, 17, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(176, 28, 1, 0, 1, 0, 'BlogPost', '2016-04-21 20:34:18', '2016-04-21 20:34:18', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 18, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(177, 28, 2, 0, 1, 0, 'BlogPost', '2016-04-21 20:35:10', '2016-04-21 20:34:18', 'phu-quoc', 'Phu Quoc', NULL, NULL, NULL, NULL, 0, 1, 18, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(178, 28, 3, 0, 1, 0, 'BlogPost', '2016-04-21 20:35:36', '2016-04-21 20:34:18', 'phu-quoc', 'Phu Quoc', NULL, NULL, NULL, NULL, 0, 1, 18, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(179, 28, 4, 1, 1, 1, 'BlogPost', '2016-04-21 20:38:21', '2016-04-21 20:34:18', 'phu-quoc', 'Phu Quoc', NULL, NULL, NULL, NULL, 0, 1, 18, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(180, 29, 1, 0, 1, 0, 'BlogPost', '2016-04-21 21:28:29', '2016-04-21 21:28:29', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 19, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(181, 29, 2, 0, 1, 0, 'BlogPost', '2016-04-21 21:29:29', '2016-04-21 21:28:29', 'singapore', 'Singapore', NULL, NULL, NULL, NULL, 0, 1, 19, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(182, 29, 3, 0, 1, 0, 'BlogPost', '2016-04-21 21:29:37', '2016-04-21 21:28:29', 'singapore', 'Singapore', NULL, NULL, NULL, NULL, 0, 1, 19, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(183, 29, 4, 0, 1, 0, 'BlogPost', '2016-04-21 21:29:58', '2016-04-21 21:28:29', 'singapore', 'Singapore', NULL, NULL, NULL, NULL, 0, 1, 19, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(184, 29, 5, 1, 1, 1, 'BlogPost', '2016-04-21 21:36:09', '2016-04-21 21:28:29', 'singapore', 'Singapore', NULL, NULL, NULL, NULL, 0, 1, 19, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(185, 30, 1, 0, 1, 0, 'BlogPost', '2016-10-16 10:15:36', '2016-10-16 10:15:36', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 20, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(186, 30, 2, 0, 1, 0, 'BlogPost', '2016-10-16 10:16:13', '2016-10-16 10:15:36', 'where-were-we', 'Where were we...', NULL, NULL, NULL, NULL, 0, 1, 20, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(187, 30, 3, 1, 1, 1, 'BlogPost', '2016-10-16 10:16:13', '2016-10-16 10:15:36', 'where-were-we', 'Where were we...', NULL, NULL, NULL, NULL, 0, 1, 20, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(188, 30, 4, 1, 1, 1, 'BlogPost', '2016-10-16 10:17:33', '2016-10-16 10:15:36', 'where-were-we', 'Where were we...', NULL, NULL, NULL, NULL, 0, 1, 20, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(189, 30, 5, 1, 1, 1, 'BlogPost', '2016-10-16 10:18:20', '2016-10-16 10:15:36', 'where-were-we', 'Where were we...', NULL, NULL, NULL, NULL, 0, 1, 20, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(190, 30, 6, 1, 1, 1, 'BlogPost', '2016-10-16 10:22:35', '2016-10-16 10:15:36', 'where-were-we', 'Where were we...', NULL, NULL, NULL, NULL, 0, 1, 20, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(191, 31, 1, 0, 1, 0, 'BlogPost', '2016-10-16 10:29:33', '2016-10-16 10:29:33', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 21, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(192, 31, 2, 0, 1, 0, 'BlogPost', '2016-10-16 10:30:51', '2016-10-16 10:29:33', 'copenhagen', 'Copenhagen', NULL, NULL, NULL, NULL, 0, 1, 21, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(193, 31, 3, 1, 1, 1, 'BlogPost', '2016-10-16 10:30:51', '2016-10-16 10:29:33', 'copenhagen', 'Copenhagen', NULL, NULL, NULL, NULL, 0, 1, 21, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(194, 30, 7, 1, 1, 1, 'BlogPost', '2016-10-16 10:32:04', '2016-10-16 10:15:36', 'london', 'London', NULL, NULL, NULL, NULL, 0, 1, 20, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(195, 31, 4, 1, 1, 1, 'BlogPost', '2016-10-16 10:37:50', '2016-10-16 10:29:33', 'copenhagen', 'Copenhagen', NULL, NULL, NULL, NULL, 0, 1, 21, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(196, 32, 1, 0, 1, 0, 'BlogPost', '2016-10-16 10:50:20', '2016-10-16 10:50:20', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 22, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(197, 32, 2, 0, 1, 0, 'BlogPost', '2016-10-16 10:55:26', '2016-10-16 10:50:20', 'london-again', 'London Again!', NULL, NULL, NULL, NULL, 0, 1, 22, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(198, 32, 3, 1, 1, 1, 'BlogPost', '2016-10-16 10:55:26', '2016-10-16 10:50:20', 'london-again', 'London Again!', NULL, NULL, NULL, NULL, 0, 1, 22, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(199, 32, 4, 1, 1, 1, 'BlogPost', '2016-10-16 10:55:31', '2016-10-16 10:50:20', 'london-again', 'London Again!', NULL, NULL, NULL, NULL, 0, 1, 22, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(200, 32, 5, 1, 1, 1, 'BlogPost', '2016-10-16 10:55:41', '2016-10-16 10:50:20', 'london-again', 'London Again!', NULL, NULL, NULL, NULL, 0, 1, 22, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(201, 33, 1, 0, 1, 0, 'BlogPost', '2016-10-16 11:03:01', '2016-10-16 11:03:01', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 23, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(202, 33, 2, 0, 1, 0, 'BlogPost', '2016-10-16 11:03:53', '2016-10-16 11:03:01', 'brighton', 'Brighton', NULL, NULL, NULL, NULL, 0, 1, 23, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(203, 33, 3, 1, 1, 1, 'BlogPost', '2016-10-16 11:03:53', '2016-10-16 11:03:01', 'brighton', 'Brighton', NULL, NULL, NULL, NULL, 0, 1, 23, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(204, 33, 4, 1, 1, 1, 'BlogPost', '2016-10-16 11:04:17', '2016-10-16 11:03:01', 'brighton', 'Brighton', NULL, NULL, NULL, NULL, 0, 1, 23, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(205, 33, 5, 1, 1, 1, 'BlogPost', '2016-10-16 11:04:28', '2016-10-16 11:03:01', 'brighton', 'Brighton', NULL, NULL, NULL, NULL, 0, 1, 23, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(206, 34, 1, 0, 1, 0, 'BlogPost', '2016-10-16 13:10:46', '2016-10-16 13:10:46', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 24, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(207, 34, 2, 0, 1, 0, 'BlogPost', '2016-10-16 13:11:41', '2016-10-16 13:10:46', 'bath', 'Bath', NULL, NULL, NULL, NULL, 0, 1, 24, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(208, 34, 3, 1, 1, 1, 'BlogPost', '2016-10-16 13:11:42', '2016-10-16 13:10:46', 'bath', 'Bath', NULL, NULL, NULL, NULL, 0, 1, 24, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(209, 34, 4, 1, 1, 1, 'BlogPost', '2016-10-16 13:11:46', '2016-10-16 13:10:46', 'bath', 'Bath', NULL, NULL, NULL, NULL, 0, 1, 24, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(210, 34, 5, 1, 1, 1, 'BlogPost', '2016-10-16 13:11:54', '2016-10-16 13:10:46', 'bath', 'Bath', NULL, NULL, NULL, NULL, 0, 1, 24, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(211, 34, 6, 1, 1, 1, 'BlogPost', '2016-10-16 13:14:20', '2016-10-16 13:10:46', 'bath', 'Bath', NULL, NULL, NULL, NULL, 0, 1, 24, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(212, 35, 1, 0, 1, 0, 'BlogPost', '2016-10-16 15:46:34', '2016-10-16 15:46:34', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 25, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(213, 35, 2, 0, 1, 0, 'BlogPost', '2016-10-16 15:48:37', '2016-10-16 15:46:34', 'paris', 'Paris', NULL, NULL, NULL, NULL, 0, 1, 25, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(214, 35, 3, 1, 1, 1, 'BlogPost', '2016-10-16 15:48:37', '2016-10-16 15:46:34', 'paris', 'Paris', NULL, NULL, NULL, NULL, 0, 1, 25, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(215, 35, 4, 1, 1, 1, 'BlogPost', '2016-10-16 15:48:44', '2016-10-16 15:46:34', 'paris', 'Paris', NULL, NULL, NULL, NULL, 0, 1, 25, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(216, 35, 5, 1, 1, 1, 'BlogPost', '2016-10-16 15:48:57', '2016-10-16 15:46:34', 'paris', 'Paris', NULL, NULL, NULL, NULL, 0, 1, 25, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(217, 35, 6, 1, 1, 1, 'BlogPost', '2016-10-16 15:58:19', '2016-10-16 15:46:34', 'paris', 'Paris', NULL, NULL, NULL, NULL, 0, 1, 25, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(218, 36, 1, 0, 1, 0, 'BlogPost', '2016-10-28 19:03:21', '2016-10-28 19:03:21', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 26, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(219, 36, 2, 0, 1, 0, 'BlogPost', '2016-10-28 19:05:40', '2016-10-28 19:03:21', 'prague', 'Prague', NULL, NULL, NULL, NULL, 0, 1, 26, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(220, 36, 3, 1, 1, 1, 'BlogPost', '2016-10-28 19:05:40', '2016-10-28 19:03:21', 'prague', 'Prague', NULL, NULL, NULL, NULL, 0, 1, 26, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(221, 36, 4, 1, 1, 1, 'BlogPost', '2016-10-28 19:05:47', '2016-10-28 19:03:21', 'prague', 'Prague', NULL, NULL, NULL, NULL, 0, 1, 26, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(222, 36, 5, 1, 1, 1, 'BlogPost', '2016-10-28 19:09:57', '2016-10-28 19:03:21', 'prague', 'Prague', NULL, NULL, NULL, NULL, 0, 1, 26, 0, 0, NULL, 'Inherit', 'Inherit', 1);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ViewerGroups`
--

CREATE TABLE `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage`
--

CREATE TABLE `VirtualPage` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_Live`
--

CREATE TABLE `VirtualPage_Live` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_versions`
--

CREATE TABLE `VirtualPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Blog`
--
ALTER TABLE `Blog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogCategory`
--
ALTER TABLE `BlogCategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `BlogEntry`
--
ALTER TABLE `BlogEntry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogEntry_Live`
--
ALTER TABLE `BlogEntry_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogEntry_versions`
--
ALTER TABLE `BlogEntry_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `BlogHolder`
--
ALTER TABLE `BlogHolder`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `BlogHolder_Live`
--
ALTER TABLE `BlogHolder_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `BlogHolder_versions`
--
ALTER TABLE `BlogHolder_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `BlogPost`
--
ALTER TABLE `BlogPost`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`),
  ADD KEY `ThumbnailImageID` (`ThumbnailImageID`),
  ADD KEY `CountryID` (`CountryID`),
  ADD KEY `CountryIDID` (`CountryIDID`);

--
-- Indexes for table `BlogPost_Authors`
--
ALTER TABLE `BlogPost_Authors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `BlogPost_Categories`
--
ALTER TABLE `BlogPost_Categories`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `BlogCategoryID` (`BlogCategoryID`);

--
-- Indexes for table `BlogPost_Live`
--
ALTER TABLE `BlogPost_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`),
  ADD KEY `ThumbnailImageID` (`ThumbnailImageID`),
  ADD KEY `CountryID` (`CountryID`),
  ADD KEY `CountryIDID` (`CountryIDID`);

--
-- Indexes for table `BlogPost_Tags`
--
ALTER TABLE `BlogPost_Tags`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `BlogTagID` (`BlogTagID`);

--
-- Indexes for table `BlogPost_versions`
--
ALTER TABLE `BlogPost_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`),
  ADD KEY `ThumbnailImageID` (`ThumbnailImageID`),
  ADD KEY `CountryID` (`CountryID`),
  ADD KEY `CountryIDID` (`CountryIDID`);

--
-- Indexes for table `BlogSection`
--
ALTER TABLE `BlogSection`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MainImageID` (`MainImageID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`);

--
-- Indexes for table `BlogSection_SectionImages`
--
ALTER TABLE `BlogSection_SectionImages`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogSectionID` (`BlogSectionID`),
  ADD KEY `ImageID` (`ImageID`);

--
-- Indexes for table `BlogTag`
--
ALTER TABLE `BlogTag`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `BlogTree`
--
ALTER TABLE `BlogTree`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogTree_Live`
--
ALTER TABLE `BlogTree_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogTree_versions`
--
ALTER TABLE `BlogTree_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `Blog_Contributors`
--
ALTER TABLE `Blog_Contributors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Blog_Editors`
--
ALTER TABLE `Blog_Editors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Blog_Live`
--
ALTER TABLE `Blog_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Blog_versions`
--
ALTER TABLE `Blog_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `Blog_Writers`
--
ALTER TABLE `Blog_Writers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `ParentCommentID` (`ParentCommentID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `ContactRequest`
--
ALTER TABLE `ContactRequest`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Country`
--
ALTER TABLE `Country`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PatternID` (`PatternID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Country_BlogPosts`
--
ALTER TABLE `Country_BlogPosts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CountryID` (`CountryID`),
  ADD KEY `BlogPostID` (`BlogPostID`);

--
-- Indexes for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `File`
--
ALTER TABLE `File`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Group`
--
ALTER TABLE `Group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Group_Members`
--
ALTER TABLE `Group_Members`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `PermissionRoleID` (`PermissionRoleID`);

--
-- Indexes for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Member`
--
ALTER TABLE `Member`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Email` (`Email`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `BlogProfileImageID` (`BlogProfileImageID`);

--
-- Indexes for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Page`
--
ALTER TABLE `Page`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BannerImageID` (`BannerImageID`);

--
-- Indexes for table `Page_Live`
--
ALTER TABLE `Page_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BannerImageID` (`BannerImageID`);

--
-- Indexes for table `Page_versions`
--
ALTER TABLE `Page_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `BannerImageID` (`BannerImageID`);

--
-- Indexes for table `Permission`
--
ALTER TABLE `Permission`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `Code` (`Code`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RoleID` (`RoleID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `LogoID` (`LogoID`),
  ADD KEY `LogoReverseID` (`LogoReverseID`);

--
-- Indexes for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree`
--
ALTER TABLE `SiteTree`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `ChildID` (`ChildID`);

--
-- Indexes for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Blog`
--
ALTER TABLE `Blog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `BlogCategory`
--
ALTER TABLE `BlogCategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogEntry`
--
ALTER TABLE `BlogEntry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogEntry_Live`
--
ALTER TABLE `BlogEntry_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogEntry_versions`
--
ALTER TABLE `BlogEntry_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogHolder`
--
ALTER TABLE `BlogHolder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogHolder_Live`
--
ALTER TABLE `BlogHolder_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogHolder_versions`
--
ALTER TABLE `BlogHolder_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogPost`
--
ALTER TABLE `BlogPost`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `BlogPost_Authors`
--
ALTER TABLE `BlogPost_Authors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `BlogPost_Categories`
--
ALTER TABLE `BlogPost_Categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogPost_Live`
--
ALTER TABLE `BlogPost_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `BlogPost_Tags`
--
ALTER TABLE `BlogPost_Tags`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogPost_versions`
--
ALTER TABLE `BlogPost_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `BlogSection`
--
ALTER TABLE `BlogSection`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `BlogSection_SectionImages`
--
ALTER TABLE `BlogSection_SectionImages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=685;
--
-- AUTO_INCREMENT for table `BlogTag`
--
ALTER TABLE `BlogTag`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogTree`
--
ALTER TABLE `BlogTree`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogTree_Live`
--
ALTER TABLE `BlogTree_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogTree_versions`
--
ALTER TABLE `BlogTree_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Blog_Contributors`
--
ALTER TABLE `Blog_Contributors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Blog_Editors`
--
ALTER TABLE `Blog_Editors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Blog_Live`
--
ALTER TABLE `Blog_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Blog_versions`
--
ALTER TABLE `Blog_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `Blog_Writers`
--
ALTER TABLE `Blog_Writers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Comment`
--
ALTER TABLE `Comment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ContactRequest`
--
ALTER TABLE `ContactRequest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Country`
--
ALTER TABLE `Country`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `Country_BlogPosts`
--
ALTER TABLE `Country_BlogPosts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `File`
--
ALTER TABLE `File`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=780;
--
-- AUTO_INCREMENT for table `Group`
--
ALTER TABLE `Group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Group_Members`
--
ALTER TABLE `Group_Members`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Member`
--
ALTER TABLE `Member`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Page`
--
ALTER TABLE `Page`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `Page_Live`
--
ALTER TABLE `Page_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `Page_versions`
--
ALTER TABLE `Page_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;
--
-- AUTO_INCREMENT for table `Permission`
--
ALTER TABLE `Permission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree`
--
ALTER TABLE `SiteTree`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;
--
-- AUTO_INCREMENT for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
