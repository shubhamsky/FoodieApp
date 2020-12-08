-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 11:35 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `custorder`
--

CREATE TABLE `custorder` (
  `Cust_Ordid` int(11) NOT NULL,
  `Cust_No` int(11) DEFAULT NULL,
  `Orderdt` datetime DEFAULT NULL,
  `Rst_No` int(11) DEFAULT NULL,
  `R_MnNo` int(11) DEFAULT NULL,
  `Food_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lg`
--

CREATE TABLE `lg` (
  `clgindt` date NOT NULL,
  `clginloc` varchar(100) NOT NULL,
  `clgintime` time NOT NULL,
  `islgin` varchar(10) NOT NULL,
  `clgid` int(11) NOT NULL,
  `cno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Cust_lgid` int(11) NOT NULL,
  `Cust_No` int(11) DEFAULT NULL,
  `Is_login` char(1) NOT NULL,
  `Custlogintime` time DEFAULT NULL,
  `Custloginloc` varchar(30) DEFAULT NULL,
  `Custlogindate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Cust_lgid`, `Cust_No`, `Is_login`, `Custlogintime`, `Custloginloc`, `Custlogindate`) VALUES
(1, 10, 'Y', '21:21:13', NULL, '2020-10-25'),
(2, 10, 'Y', '21:34:01', NULL, '2020-10-25'),
(3, 10, 'Y', '21:37:45', NULL, '2020-10-25'),
(4, 10, 'Y', '21:41:44', NULL, '2020-10-25'),
(5, 10, 'Y', '19:08:23', NULL, '2020-11-01'),
(7, 10, 'Y', '19:12:02', NULL, '2020-11-01'),
(8, 10, 'Y', '19:19:16', NULL, '2020-11-01'),
(9, 10, 'Y', '19:20:52', NULL, '2020-11-01'),
(10, 12, 'Y', '19:29:49', NULL, '2020-11-01'),
(11, 12, 'Y', '19:36:14', NULL, '2020-11-01'),
(12, 12, 'Y', '19:36:32', NULL, '2020-11-01'),
(13, 12, 'Y', '19:38:56', NULL, '2020-11-01'),
(14, 12, 'Y', '22:23:37', NULL, '2020-11-01'),
(15, 12, 'Y', '21:37:12', NULL, '2020-11-04'),
(16, 10, 'Y', '06:56:09', NULL, '2020-11-08'),
(17, 10, 'Y', '21:54:18', NULL, '2020-11-11'),
(18, 10, 'Y', '19:45:12', NULL, '2020-11-19'),
(19, 10, 'Y', '22:51:22', NULL, '2020-11-19'),
(20, 10, 'Y', '21:10:35', NULL, '2020-11-21'),
(21, 10, 'Y', '20:15:11', NULL, '2020-11-22'),
(22, 10, 'Y', '22:16:04', NULL, '2020-11-22'),
(23, 12, 'Y', '23:04:08', NULL, '2020-11-23'),
(24, 10, 'Y', '23:09:59', NULL, '2020-11-23'),
(25, 10, 'Y', '23:11:56', NULL, '2020-11-23'),
(26, 10, 'Y', '19:30:09', NULL, '2020-11-24'),
(27, 10, 'Y', '10:20:09', NULL, '2020-11-29'),
(28, 10, 'Y', '22:56:44', NULL, '2020-11-29'),
(29, 12, 'Y', '16:34:35', NULL, '2020-12-01'),
(30, 12, 'Y', '17:52:36', NULL, '2020-12-01'),
(31, 12, 'Y', '17:52:41', NULL, '2020-12-01'),
(32, 12, 'Y', '20:57:39', NULL, '2020-12-01'),
(33, 12, 'Y', '21:16:39', NULL, '2020-12-01'),
(34, 12, 'Y', '21:36:36', NULL, '2020-12-01'),
(35, 12, 'Y', '21:50:03', NULL, '2020-12-01'),
(36, 12, 'Y', '21:51:09', NULL, '2020-12-01'),
(37, 12, 'Y', '21:51:37', NULL, '2020-12-01'),
(38, 12, 'Y', '22:11:05', NULL, '2020-12-01'),
(39, 12, 'Y', '22:12:42', NULL, '2020-12-01'),
(40, 12, 'Y', '22:01:57', NULL, '2020-12-02'),
(41, 12, 'Y', '10:48:38', NULL, '2020-12-03'),
(42, 12, 'Y', '10:49:39', NULL, '2020-12-03'),
(43, 12, 'Y', '11:31:19', NULL, '2020-12-03'),
(44, 12, 'Y', '16:29:04', NULL, '2020-12-03'),
(45, 12, 'Y', '16:47:55', NULL, '2020-12-03'),
(46, 12, 'Y', '16:47:58', NULL, '2020-12-03'),
(47, 12, 'Y', '16:48:19', NULL, '2020-12-03'),
(48, 12, 'Y', '17:08:15', NULL, '2020-12-03'),
(49, 12, 'Y', '17:08:19', NULL, '2020-12-03'),
(50, 12, 'Y', '19:32:52', NULL, '2020-12-03'),
(51, 12, 'Y', '19:33:06', NULL, '2020-12-03'),
(52, 12, 'Y', '19:58:12', NULL, '2020-12-03'),
(53, 12, 'Y', '20:23:30', NULL, '2020-12-03'),
(54, 19, 'Y', '21:17:06', NULL, '2020-12-03'),
(55, 19, 'Y', '22:53:53', NULL, '2020-12-03'),
(56, 19, 'Y', '22:58:20', NULL, '2020-12-03'),
(57, 12, 'Y', '22:59:15', NULL, '2020-12-03'),
(58, 19, 'Y', '01:17:25', NULL, '2020-12-04'),
(59, 12, 'Y', '02:13:02', NULL, '2020-12-04');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `R_Mnid` int(11) NOT NULL,
  `Rst_No` int(11) DEFAULT NULL,
  `Mn_Info` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`R_Mnid`, `Rst_No`, `Mn_Info`) VALUES
(1, 1, 'Mayur Eateries'),
(2, 2, 'Ramdev Veg Hotel'),
(3, 3, 'Heritage Bar & Restaurant'),
(4, 5, 'Red Mirchi'),
(5, 6, 'RedNx Continental'),
(6, 7, 'Prasad Veg Hotel'),
(7, 8, 'Green Spice Restaurant'),
(8, 9, 'Hotel Navratna'),
(9, 10, 'Small Box'),
(10, 11, 'Biryani House'),
(11, 12, 'HK Chinese Hotel'),
(12, 12, 'HK Chinese Hotel'),
(13, 13, 'Shridevi Restaurant'),
(14, 14, 'Chirag'),
(15, 15, 'Bawarchi Koliwada'),
(16, 16, 'Kaka Da Dhaba'),
(17, 17, 'Delight Hotel'),
(18, 20, 'Great Punjab Dhaba'),
(19, 21, 'Biryani Social'),
(20, 22, 'SonuSandwich Corner'),
(21, 23, 'Wings & Chips'),
(22, 24, 'Dawat'),
(23, 25, 'Hotel Mayur'),
(24, 28, 'Dosa Corner'),
(25, 29, 'Snacks Adda'),
(26, 30, 'Bhojnalay'),
(27, 31, 'Prasad Divine');

-- --------------------------------------------------------

--
-- Table structure for table `menuimg`
--

CREATE TABLE `menuimg` (
  `mnuimg_id` int(11) NOT NULL,
  `mnu_no` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `imgdata` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menuitem`
--

CREATE TABLE `menuitem` (
  `R_Foodid` int(11) NOT NULL,
  `R_MnNo` int(11) DEFAULT NULL,
  `Foodtype` varchar(10) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `SubCategory` varchar(50) NOT NULL,
  `ItemName` varchar(30) DEFAULT NULL,
  `Mrp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menuitem`
--

INSERT INTO `menuitem` (`R_Foodid`, `R_MnNo`, `Foodtype`, `Category`, `SubCategory`, `ItemName`, `Mrp`) VALUES
(1, 1, 'Veg', 'Starter', 'Paneer', 'paneer crispy', 95),
(2, 1, 'Veg', 'Starter', 'Paneer', 'paneer tandoori', 110),
(3, 1, 'Veg', 'Starter', 'Mushroom', 'mushroom creamy', 125),
(4, 1, 'Veg', 'Starter', 'Chinese', 'veg roll', 75),
(5, 1, 'Veg', 'Starter', 'Cheese', 'cheese pakoda', 100),
(6, 1, 'Veg', 'Starter', 'Pulses', 'moong tikki', 80),
(7, 1, 'Non-Veg', 'Starter', 'Meat', 'keema samosa', 110),
(8, 1, 'Non-Veg', 'Starter', 'Fish', 'bagari shrimp', 125),
(9, 1, 'Non-Veg', 'Starter', 'Fish', 'taj calamari', 130),
(10, 1, 'Non-Veg', 'Starter', 'Fish', 'tawa fish', 120),
(11, 1, 'Non-Veg', 'Starter', 'Chicken', 'chicken kebab', 135),
(12, 1, 'Veg', 'Snacks', 'Vada', 'vada-Pav', 15),
(13, 1, 'Veg', 'Snacks', 'Samosa', 'samosa-Pav', 15),
(14, 1, 'Veg', 'Snacks', 'Sandwich', 'jain Sandwich', 35),
(15, 1, 'Veg', 'Snacks', 'Sandwich', 'cheese Sandwich', 50),
(16, 1, 'Veg', 'Snacks', 'Sandwich', 'sandwich', 40),
(17, 1, 'Veg', 'Snacks', 'Tikki', 'aloo tikki', 25),
(18, 1, 'Veg', 'Snacks', 'Bhel', 'sukha bhel', 20),
(19, 1, 'Veg', 'Snacks', 'Bhel', 'chatni bhel', 25),
(20, 1, 'Veg', 'Snacks', 'Bhajji', 'kanda bhaji', 20),
(21, 1, 'Veg', 'Snacks', 'Bhajji', 'aloo bhaji', 15),
(22, 1, 'Veg', 'Snacks', 'Dosa', 'sada dosa', 25),
(23, 1, 'Veg', 'Snacks', 'Dosa', 'mysore dosa', 40),
(24, 1, 'Veg', 'Snacks', 'Dosa', 'masala dosa', 35),
(25, 1, 'Veg', 'Snacks', 'Utappa', 'onion utappa', 30),
(26, 1, 'Veg', 'Snacks', 'Kachori', 'kachori', 18),
(27, 1, 'Veg', 'Snacks', 'Dahipuri', 'dahi puri', 20),
(28, 1, 'Veg', 'Snacks', 'Chai', 'chai', 10),
(29, 1, 'Veg', 'Snacks', 'Chai', 'spl chai', 15),
(30, 1, 'Veg', 'Snacks', 'Chai', 'coffee', 12),
(31, 1, 'Non-Veg', 'Snacks', 'Egg', 'egg roll', 25),
(32, 1, 'Non-Veg', 'Snacks', 'Egg', 'egg sandwich', 25),
(33, 1, 'Non-Veg', 'Snacks', 'Egg', 'egg pav', 20),
(34, 1, 'Non-Veg', 'Snacks', 'Egg', 'egg toast', 30),
(35, 1, 'Veg', 'Main Course', 'Rice', 'steam rice', 25),
(36, 1, 'Veg', 'Main Course', 'Rice', 'jeera rice', 30),
(37, 1, 'Veg', 'Main Course', 'Rice', 'biryani rice', 55),
(38, 1, 'Veg', 'Main Course', 'Rice', 'ukhda rice', 30),
(39, 1, 'Veg', 'Main Course', 'Dal', 'dal fry', 45),
(40, 1, 'Veg', 'Main Course', 'Dal', 'dal tadka', 55),
(41, 1, 'Veg', 'Main Course', 'Dal', 'dal makhni', 60),
(42, 1, 'Veg', 'Main Course', 'Dal', 'sada dal', 25),
(43, 1, 'Veg', 'Main Course', 'Sabji', 'paneer handi', 80),
(44, 1, 'Veg', 'Main Course', 'Sabji', 'mix vegetable', 70),
(45, 1, 'Veg', 'Main Course', 'Sabji', 'aloo baigan', 65),
(46, 1, 'Veg', 'Main Course', 'Sabji', 'bhendi achari', 60),
(47, 1, 'Veg', 'Main Course', 'Sabji', 'aloo fry', 60),
(48, 1, 'Veg', 'Main Course', 'Sabji', 'mutter paneer', 120),
(49, 1, 'Veg', 'Main Course', 'Sabji', 'palak choley', 80),
(50, 1, 'Veg', 'Main Course', 'Pulav', 'kashmiri pulav', 70),
(51, 1, 'Veg', 'Main Course', 'Pulav', 'shahi pulav', 70),
(52, 1, 'Veg', 'Main Course', 'Pulav', 'tava pulav', 70),
(53, 1, 'Veg', 'Main Course', 'Biryani', 'mushroom biryani', 110),
(54, 1, 'Veg', 'Main Course', 'Biryani', 'paneer biryani', 115),
(55, 1, 'Veg', 'Main Course', 'Biryani', 'dum biryani', 105),
(56, 1, 'Veg', 'Main Course', 'Biryani', 'hyderabadi biryani', 120),
(57, 1, 'Veg', 'Main Course', 'Roti', 'chapati', 5),
(58, 1, 'Veg', 'Main Course', 'Roti', 'tandoori roti', 10),
(59, 1, 'Veg', 'Main Course', 'Roti', 'butter roti', 12),
(60, 1, 'Veg', 'Main Course', 'Roti', 'naan', 15),
(61, 1, 'Veg', 'Main Course', 'Roti', 'kulcha', 18),
(62, 1, 'Veg', 'Main Course', 'Roti', 'bhaakri', 8),
(63, 1, 'Non-Veg', 'Main Course', 'Fish', 'bombay fish', 110),
(64, 1, 'Non-Veg', 'Main Course', 'Fish', 'fish chilli', 130),
(65, 1, 'Non-Veg', 'Main Course', 'Fish', 'sukha fish', 115),
(66, 1, 'Non-Veg', 'Main Course', 'Fish', 'fish fry', 120),
(67, 1, 'Non-Veg', 'Main Course', 'Fish', 'surmai fish', 160),
(68, 1, 'Non-Veg', 'Main Course', 'Chicken', 'boneless butter chicken', 210),
(69, 1, 'Non-Veg', 'Main Course', 'Chicken', 'boneless chicken handi', 220),
(70, 1, 'Non-Veg', 'Main Course', 'Chicken', 'chicken tikka masala', 180),
(71, 1, 'Non-Veg', 'Main Course', 'Chicken', 'chicken kadai', 195),
(72, 1, 'Non-Veg', 'Main Course', 'Mutton', 'mutton kepsa', 180),
(73, 1, 'Non-Veg', 'Main Course', 'Mutton', 'mutton tiranga', 220),
(74, 1, 'Non-Veg', 'Main Course', 'Mutton', 'mutton nawabi', 240),
(75, 1, 'Non-Veg', 'Main Course', 'Egg', 'egg fried rice', 120),
(76, 1, 'Non-Veg', 'Main Course', 'Egg', 'egg bhurji', 80),
(77, 1, 'Veg', 'Appetizer', 'Soda', 'lime Soda', 20),
(78, 1, 'Veg', 'Appetizer', 'Soda', 'Jeera Soda', 25),
(79, 1, 'Veg', 'Appetizer', 'Jaljeera', 'jaljeera lime water', 15),
(80, 1, 'Veg', 'Appetizer', 'Buttermilk', 'butter milk', 25),
(81, 1, 'Veg', 'Desert', 'Cocktail', 'cocktail kaccha aam', 65),
(82, 1, 'Veg', 'Desert', 'Cocktail', 'cocktail kiwi', 85),
(83, 1, 'Veg', 'Desert', 'Cocktail', 'cocktail chocolate', 70),
(84, 1, 'Veg', 'Desert', 'Icecream', 'chocolate scoop', 65),
(85, 1, 'Veg', 'Desert', 'Shake', 'fruit & nuts scoop', 95),
(86, 1, 'Veg', 'Desert', 'Shake', 'mava scoop', 100),
(87, 1, 'Veg', 'Desert', 'Shake', 'chocolate shake', 105),
(88, 1, 'Veg', 'Desert', 'Shake', 'blueberry shake', 90),
(89, 1, 'Veg', 'Desert', 'Shake', 'kiwi shake', 130),
(90, 1, 'Veg', 'Desert', 'Sweet', 'gulab jamun', 20),
(91, 1, 'Veg', 'Desert', 'Sweet', 'ras malai', 30),
(92, 2, 'Veg', 'Starter', 'Paneer', 'paneer tikka', 110),
(93, 2, 'Veg', 'Starter', 'Paneer', 'paneer crispy', 115),
(94, 2, 'Veg', 'Starter', 'Paneer', 'paneer tandoori', 125),
(95, 2, 'Veg', 'Starter', 'Mushroom', 'mushroom tadka', 135),
(96, 2, 'Veg', 'Starter', 'Chinese', 'veggie roll', 90),
(97, 2, 'Veg', 'Starter', 'Cheese', 'chinese pakoda', 85),
(98, 2, 'Veg', 'Starter', 'Pulses', 'moong tikki', 85),
(99, 2, 'Non-Veg', 'Starter', 'Meat', 'keema samosa', 145),
(100, 2, 'Non-Veg', 'Starter', 'Fish', 'bagari shrimp', 155),
(101, 2, 'Non-Veg', 'Starter', 'Fish', 'taj calamari', 165),
(102, 2, 'Non-Veg', 'Starter', 'Fish', 'tawa fish', 165),
(103, 2, 'Non-Veg', 'Starter', 'Chicken', 'chicken kebab', 180),
(104, 2, 'Veg', 'Snacks', 'Vada', 'vada-Pav', 20),
(105, 2, 'Veg', 'Snacks', 'Samosa', 'samosa-Pav', 20),
(106, 2, 'Veg', 'Snacks', 'Sandwich', 'jain Sandwich', 45),
(107, 2, 'Veg', 'Snacks', 'Sandwich', 'cheese Sandwich', 60),
(108, 2, 'Veg', 'Snacks', 'Sandwich', 'sandwich', 50),
(109, 2, 'Veg', 'Snacks', 'Tikki', 'aloo tikki', 35),
(110, 2, 'Veg', 'Snacks', 'Bhel', 'sukha bhel', 20),
(111, 2, 'Veg', 'Snacks', 'Bhel', 'chatni bhel', 30),
(112, 2, 'Veg', 'Snacks', 'Bhajji', 'kanda bhaji', 25),
(113, 2, 'Veg', 'Snacks', 'Bhajji', 'aloo bhaji', 20),
(114, 2, 'Veg', 'Snacks', 'Dosa', 'sada dosa', 30),
(115, 2, 'Veg', 'Snacks', 'Dosa', 'mysore dosa', 50),
(116, 2, 'Veg', 'Snacks', 'Dosa', 'masala dosa', 40),
(117, 2, 'Veg', 'Snacks', 'Utappa', 'onion utappa', 35),
(118, 2, 'Veg', 'Snacks', 'Kachori', 'kachori', 20),
(119, 2, 'Veg', 'Snacks', 'Dahipuri', 'dahi puri', 20),
(120, 2, 'Veg', 'Snacks', 'Chai', 'chai', 15),
(121, 2, 'Veg', 'Snacks', 'Chai', 'spl chai', 20),
(122, 2, 'Veg', 'Snacks', 'Chai', 'coffee', 15),
(123, 2, 'Non-Veg', 'Snacks', 'Egg', 'egg roll', 35),
(124, 2, 'Non-Veg', 'Snacks', 'Egg', 'egg sandwich', 25),
(125, 2, 'Non-Veg', 'Snacks', 'Egg', 'egg pav', 25),
(126, 2, 'Non-Veg', 'Snacks', 'Egg', 'egg toast', 40),
(127, 2, 'Veg', 'Main Course', 'Rice', 'steam rice', 30),
(128, 2, 'Veg', 'Main Course', 'Rice', 'jeera rice', 35),
(129, 2, 'Veg', 'Main Course', 'Rice', 'biryani rice', 60),
(130, 2, 'Veg', 'Main Course', 'Rice', 'spl rice', 40),
(131, 2, 'Veg', 'Main Course', 'Dal', 'dal fry', 50),
(132, 2, 'Veg', 'Main Course', 'Dal', 'dal tadka', 55),
(133, 2, 'Veg', 'Main Course', 'Dal', 'dal makhni', 70),
(134, 2, 'Veg', 'Main Course', 'Dal', 'sada dal', 30),
(135, 2, 'Veg', 'Main Course', 'Sabji', 'paneer handi', 90),
(136, 2, 'Veg', 'Main Course', 'Sabji', 'mix vegetable', 85),
(137, 2, 'Veg', 'Main Course', 'Sabji', 'aloo baigan', 75),
(138, 2, 'Veg', 'Main Course', 'Sabji', 'bhendi achari', 70),
(139, 2, 'Veg', 'Main Course', 'Sabji', 'aloo fry', 70),
(140, 2, 'Veg', 'Main Course', 'Sabji', 'mutter paneer', 130),
(141, 2, 'Veg', 'Main Course', 'Sabji', 'palak paneer', 95),
(142, 2, 'Veg', 'Main Course', 'Pulav', 'kashmiri pulav', 85),
(143, 2, 'Veg', 'Main Course', 'Pulav', 'shahi pulav', 85),
(144, 2, 'Veg', 'Main Course', 'Pulav', 'tava pulav', 85),
(145, 2, 'Veg', 'Main Course', 'Biryani', 'mushroom biryani', 120),
(146, 2, 'Veg', 'Main Course', 'Biryani', 'paneer biryani', 135),
(147, 2, 'Veg', 'Main Course', 'Biryani', 'dum biryani', 115),
(148, 2, 'Veg', 'Main Course', 'Biryani', 'hyderabadi biryani', 130),
(149, 2, 'Veg', 'Main Course', 'Roti', 'chapati', 5),
(150, 2, 'Veg', 'Main Course', 'Roti', 'tandoori roti', 15),
(151, 2, 'Veg', 'Main Course', 'Roti', 'butter roti', 20),
(152, 2, 'Veg', 'Main Course', 'Roti', 'naan', 25),
(153, 2, 'Veg', 'Main Course', 'Roti', 'kulcha', 30),
(154, 2, 'Veg', 'Main Course', 'Roti', 'bhaakri', 6),
(155, 2, 'Non-Veg', 'Main Course', 'Fish', 'bombay fish', 130),
(156, 2, 'Non-Veg', 'Main Course', 'Fish', 'fish chilli', 140),
(157, 2, 'Non-Veg', 'Main Course', 'Fish', 'sukha fish', 135),
(158, 2, 'Non-Veg', 'Main Course', 'Fish', 'fish fry', 130),
(159, 2, 'Non-Veg', 'Main Course', 'Fish', 'surmai fish', 170),
(160, 2, 'Non-Veg', 'Main Course', 'Chicken', 'boneless butter chicken', 220),
(161, 2, 'Non-Veg', 'Main Course', 'Chicken', 'boneless chicken handi', 230),
(162, 2, 'Non-Veg', 'Main Course', 'Chicken', 'chicken tikka masala', 190),
(163, 2, 'Non-Veg', 'Main Course', 'Chicken', 'chicken kadai', 220),
(164, 2, 'Non-Veg', 'Main Course', 'Mutton', 'mutton kepsa', 190),
(165, 2, 'Non-Veg', 'Main Course', 'Mutton', 'mutton tiranga', 230),
(166, 2, 'Non-Veg', 'Main Course', 'Mutton', 'mutton nawabi', 250),
(167, 2, 'Non-Veg', 'Main Course', 'Egg', 'egg fried rice', 130),
(168, 2, 'Non-Veg', 'Main Course', 'Egg', 'egg bhurji', 90),
(169, 2, 'Veg', 'Appetizer', 'Soda', 'lime Soda', 25),
(170, 2, 'Veg', 'Appetizer', 'Soda', 'Jeera Soda', 30),
(171, 2, 'Veg', 'Appetizer', 'Jaljeera', 'jaljeera lime water', 20),
(172, 2, 'Veg', 'Appetizer', 'Buttermilk', 'butter milk', 30),
(173, 2, 'Veg', 'Appetizer', 'Cocktail', 'cocktail kaccha aam', 75),
(174, 2, 'Veg', 'Appetizer', 'Cocktail', 'cocktail kiwi', 90),
(175, 2, 'Veg', 'Appetizer', 'Cocktail', 'cocktail chocolate', 80),
(176, 2, 'Veg', 'Desert', 'Icecream', 'chocolate scoop', 75),
(177, 2, 'Veg', 'Desert', 'Shake', 'fruit & nuts scoop', 95),
(178, 2, 'Veg', 'Desert', 'Shake', 'mava scoop', 120),
(179, 2, 'Veg', 'Desert', 'Shake', 'chocolate shake', 105),
(180, 2, 'Veg', 'Desert', 'Shake', 'blueberry shake', 90),
(181, 2, 'Veg', 'Desert', 'Shake', 'kiwi shake', 130),
(182, 2, 'Veg', 'Desert', 'Sweet', 'gulab jamun', 20),
(183, 2, 'Veg', 'Desert', 'Sweet', 'ras malai', 30);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `Ordetails_id` int(11) NOT NULL,
  `R_MnNo` int(11) DEFAULT NULL,
  `R_FoodNo` int(11) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL,
  `R_FoodName` varchar(200) NOT NULL,
  `R_TotalFoodPrice` float NOT NULL,
  `Cust_Id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`Ordetails_id`, `R_MnNo`, `R_FoodNo`, `Qty`, `R_FoodName`, `R_TotalFoodPrice`, `Cust_Id`) VALUES
(10, 2, 93, 1, 'Paneer Crispy', 115, 19),
(11, 2, 94, 3, 'Paneer Tandoori', 375, 19),
(12, 2, 96, 3, 'Veggie Roll', 270, 19),
(13, 2, 169, 9, 'Lime Soda', 225, 12),
(16, 2, 169, 1, 'Lime Soda', 25, 12),
(17, 2, 170, 1, 'Jeera Soda', 30, 12);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `Cust_Prid` int(11) NOT NULL,
  `Cust_No` int(11) DEFAULT NULL,
  `CustName` varchar(20) DEFAULT NULL,
  `OldPass` varchar(20) DEFAULT NULL,
  `Address1` varchar(100) DEFAULT NULL,
  `City1` varchar(20) DEFAULT NULL,
  `State1` varchar(20) DEFAULT NULL,
  `Pincode1` int(11) DEFAULT NULL,
  `Address2` varchar(100) DEFAULT NULL,
  `City2` varchar(20) DEFAULT NULL,
  `State2` varchar(20) DEFAULT NULL,
  `Pincode2` int(11) DEFAULT NULL,
  `Address3` varchar(100) DEFAULT NULL,
  `City3` varchar(20) DEFAULT NULL,
  `State3` varchar(20) DEFAULT NULL,
  `Pincode3` int(11) DEFAULT NULL,
  `Address4` varchar(100) DEFAULT NULL,
  `City4` varchar(20) DEFAULT NULL,
  `State4` varchar(20) DEFAULT NULL,
  `Pincode4` int(11) DEFAULT NULL,
  `Address5` varchar(100) DEFAULT NULL,
  `City5` varchar(20) DEFAULT NULL,
  `State5` varchar(20) DEFAULT NULL,
  `Pincode5` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`Cust_Prid`, `Cust_No`, `CustName`, `OldPass`, `Address1`, `City1`, `State1`, `Pincode1`, `Address2`, `City2`, `State2`, `Pincode2`, `Address3`, `City3`, `State3`, `Pincode3`, `Address4`, `City4`, `State4`, `Pincode4`, `Address5`, `City5`, `State5`, `Pincode5`) VALUES
(2, 19, 'shaktimaan', NULL, 'None', 'Thane', 'MH', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rlogin`
--

CREATE TABLE `rlogin` (
  `Cust_lgid` int(11) NOT NULL,
  `Rst_No` int(11) DEFAULT NULL,
  `Is_login` char(1) NOT NULL,
  `Rlogintime` time DEFAULT NULL,
  `Rloginloc` varchar(30) DEFAULT NULL,
  `Rlogindate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rprofile`
--

CREATE TABLE `rprofile` (
  `R_Pid` int(11) NOT NULL,
  `Rst_No` int(11) DEFAULT NULL,
  `RstName` varchar(20) DEFAULT NULL,
  `RstAddress` varchar(100) DEFAULT NULL,
  `RstCity` varchar(30) DEFAULT NULL,
  `RstState` varchar(20) DEFAULT NULL,
  `RstPincode` int(11) DEFAULT NULL,
  `Gstno` varchar(30) DEFAULT NULL,
  `ContPrsn` varchar(30) DEFAULT NULL,
  `Cont_No` int(11) DEFAULT NULL,
  `WebPage` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rprofile`
--

INSERT INTO `rprofile` (`R_Pid`, `Rst_No`, `RstName`, `RstAddress`, `RstCity`, `RstState`, `RstPincode`, `Gstno`, `ContPrsn`, `Cont_No`, `WebPage`) VALUES
(1, 1, 'Mayur\'s Eateries', 'Kolsewadi Kalyan (e)', 'Kalyan', 'Maharashtra', 421301, '27A123B320C1X', 'Vicky', 828634, 'a.html'),
(2, 2, 'Ramdev Veg Hotel', 'Kalyan(w)', 'Kalyan', 'Maharashtra', 421301, '27A123B320X1C', 'Ram', 889824, 'b.html'),
(3, 3, 'Heritage Bar & Resta', 'Thane (w)', 'Thane', 'Maharashtra', 400612, '27A123B320X32', 'Kuppu', 707056, 'c.html'),
(4, 4, 'Sapna Family Restaur', 'dombivali (w)', 'Dombivali', 'Maharashtra', 421203, '27A321B320X32', 'Lavina', 727200, 'd.html'),
(5, 5, 'Red Mirchi', 'Kalyan €', 'Kalyan', 'Maharashtra', 421103, '27A321B320Y23', 'Pritam', 898922, 'e.html'),
(6, 6, 'RedNx Continental', 'Dombivali €', 'Dombivali', 'Maharashtra', 421201, '27A132B420Y23', 'Vishal', 998866, 'f.html'),
(7, 7, 'Prasad Veg Hotel', 'Ambernath (w)', 'Ambernath', 'Maharashtra', 421005, '27A132B420Y2Z', 'Yogesh', 989821, 'g.html'),
(8, 8, 'Green Spice Restaura', 'Ambernath (w)', 'Ambernath', 'Maharashtra', 421005, '27A132B250YZ1', 'Bapu', 778866, 'h.html'),
(9, 9, 'Hotel Navratna', 'Ambernath (w)', 'Ambernath', 'Maharashtra', 421502, '27A1000CBB484', 'Abhishek', 878799, 'i.html'),
(10, 10, 'SmallBox', 'Kalyan (w)', 'Kalyan', 'Maharashtra', 421300, '27A132E340Y16', 'Sukesh', 858475, 'j.html'),
(11, 11, 'BiryaniHouse', 'Ambernath (w)', 'Ambernath', 'Maharashtra', 421502, '27A132C260DZ5', 'Rajesh', 997878, 'k.html'),
(12, 12, 'HK Chinese Hotel', 'dombivali (w)', 'Dombivali', 'Maharashtra', 421201, '27A1000CVB762', 'Ajay', 999988, 'l.html'),
(13, 13, 'Shridevi Restaurant', 'Kalyan (w)', 'Kalyan', 'Maharashtra', 421301, '27A132E340Y11', 'Manoj', 998877, 'm.html'),
(14, 14, 'Chirag', 'Ambernath (w)', 'Ambernath', 'Maharashtra', 421506, '27A423B320X1E', 'Shiva', 898989, 'n.html'),
(15, 15, 'Bawarchi Koliwada', 'dombivali (w)', 'Dombivali', 'Maharashtra', 421203, '27A4126CVB899', 'Christy', 797987, 'o.html'),
(16, 16, 'Kaka Da Dhaba', 'Thane (w)', 'Thane', 'Maharashtra', 400612, '27A132C260DZ4', 'Prasad', 889899, 'p.html'),
(17, 17, 'Delight Hotel', 'Thane (w)', 'Thane', 'Maharashtra', 401107, '27A423B320X2E', 'Vivek', 997788, 'q.html'),
(18, 20, 'Great Punjab Dhaba', 'Thane (w)', 'Thane', 'Maharashtra', 401107, '27A132E340X21', 'Rishi', 747277, 'r.html'),
(19, 21, 'BiryaniSocial', 'Thane (w)', 'Thane', 'Maharashtra', 401107, '27A4126CVB762', 'Shweta', 898989, 's.html'),
(20, 22, 'SonuSandwich Corner', 'Mulund €', 'Mulund', 'Maharashtra', 400081, '27A4126CVB911', 'Jinesh', 858481, 't.html'),
(21, 23, 'Wings & Chips', 'Mulund €', 'Mulund', 'Maharashtra', 400081, '27A132C280DZ9', 'Venkatesh', 919191, 'u.html'),
(22, 24, 'Dawat', 'Mulund €', 'Mulund', 'Maharashtra', 400081, '27A423B620X2Z', 'Ashraf', 929796, 'v.html'),
(23, 25, 'Hotel Mayur', 'Mulund (w)', 'Mulund', 'Maharashtra', 400081, '27A132C250YZ4', 'Birendra', 838383, 'w.html'),
(24, 28, 'Dosa Corner', 'Kalyan(w)', 'Kalyan', 'Maharashtra', 421301, '27A132C250DZ1', 'Pintu', 999666, 'x.html'),
(25, 29, 'Snacks Adda', 'Dombivali€', 'Dombivali', 'Maharashtra', 421201, '27A212C250DZ1', 'Rashid', 888777, 'y.html'),
(26, 30, 'Bhojnalay', 'Kalyan(w)', 'Kalyan', 'Maharashtra', 421301, '27A132E340Y22', 'Dipika', 767676, 'z.html'),
(27, 31, 'Prasad Divine', 'Kalyan(w)', 'Kalyan', 'Maharashtra', 421301, '27A132E350K21', 'Rakesh', 727266, 'aa.html');

-- --------------------------------------------------------

--
-- Table structure for table `rsignup`
--

CREATE TABLE `rsignup` (
  `Rst_Id` int(11) NOT NULL,
  `Rst_Mobile` bigint(20) NOT NULL,
  `Rst_EmailId` varchar(30) NOT NULL,
  `Rst_Passwrd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rsignup`
--

INSERT INTO `rsignup` (`Rst_Id`, `Rst_Mobile`, `Rst_EmailId`, `Rst_Passwrd`) VALUES
(1, 828634, 'acct@mayur.co.in', '1234@m'),
(2, 889824, 'acct@ramdev.co.in', '1234@r'),
(3, 707056, 'acct@heritage.co.in', '1234@h'),
(4, 727200, 'acct@sapna.co.in', '1234@s'),
(5, 898922, 'acct@redmirchi.co.in', '1234@rm'),
(6, 998866, 'acct@rednx.co.in', '1234@rx'),
(7, 989821, 'acct@prasadhotel.co.in', '1234@p'),
(8, 778866, 'acct@greenspice.co.in', '1234@gs'),
(9, 878799, 'acct@hotelnavratna.co.in', '1234@hn'),
(10, 858475, 'acct@smallbox.co.in', '1234@sb'),
(11, 997878, 'acct@biryanihouse.co.in', '1234@bh'),
(12, 999988, 'acct@hkchinese.co.in', '1234@hk'),
(13, 998877, 'acct@shridevirestaurant.co.in', '1234@sd'),
(14, 898989, 'acct@chirag.co.in', '1234@c'),
(15, 797987, 'acct@bawarchi.co.in', '1234@b'),
(16, 889899, 'acct@kakadadhaaba.co.in', '1234@kd'),
(17, 997788, 'acct@delighthotel.co.in', '1234@dh'),
(20, 747277, 'acct@greatpunjab.co.in', '1234@gp'),
(21, 898989, 'acct@biryanisocial.co.in', '1234@bs'),
(22, 858481, 'acct@sonusandwichcorner.co.in', '1234@ss'),
(23, 919191, 'acct@wingsandchips.co.in', '1234@wc'),
(24, 929796, 'acct@dawat.co.in', '1234@d'),
(25, 838383, 'acct@hotelmayur.co.in', '1234@hm'),
(28, 999666, 'acct@dosacorner.co.in', '1234@d'),
(29, 888777, 'acct@snackadda.co.in', '1234@sd'),
(30, 767676, 'acct@bhojnalay.co.in', '1234@b'),
(31, 727266, 'acct@prsaddivine.co.in', '1234@p');

-- --------------------------------------------------------

--
-- Table structure for table `rstimg`
--

CREATE TABLE `rstimg` (
  `img_id` int(11) NOT NULL,
  `rst_no` int(11) NOT NULL,
  `imgdata` varchar(100) NOT NULL,
  `imgname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rstimg`
--

INSERT INTO `rstimg` (`img_id`, `rst_no`, `imgdata`, `imgname`) VALUES
(1, 1, 'images/hotels/img1.jpg', 'img1'),
(2, 2, 'images/hotels/img2.jpg', 'img2'),
(3, 3, 'images/hotels/img3.jpg', 'img3'),
(4, 4, 'images/hotels/img4.jpg', 'img4'),
(5, 5, 'images/hotels/img5.jpg', 'img5'),
(6, 6, 'images/hotels/img6.jpg', 'img6'),
(7, 7, 'images/hotels/img7.jpg', 'img7'),
(8, 8, 'images/hotels/img8.jpg', 'img8'),
(9, 9, 'images/hotels/img9.jpg', 'img9'),
(10, 10, 'images/hotels/img10.jpg', 'img10'),
(11, 11, 'images/hotels/img11.jpg', 'img11'),
(12, 12, 'images/hotels/img12.jpg', 'img12'),
(13, 13, 'images/hotels/img13.jpg', 'img13'),
(14, 14, 'images/hotels/img14.jpg', 'img14'),
(15, 15, 'images/hotels/img15.jpg', 'img15'),
(16, 16, 'images/hotels/img16.jpg', 'img16'),
(17, 17, 'images/hotels/img17.jpg', 'img17'),
(18, 20, 'images/hotels/img20.jpg', 'img20'),
(19, 21, 'images/hotels/img21.jpg', 'img21'),
(20, 22, 'images/hotels/img22.jpg', 'img22'),
(21, 23, 'images/hotels/img23.jpg', 'img23'),
(22, 24, 'images/hotels/img24.jpg', 'img24'),
(23, 25, 'images/hotels/img25.jpg', 'img25'),
(24, 28, 'images/hotels/img28.jpg', 'img28'),
(25, 29, 'images/hotels/img29.jpg', 'img29'),
(26, 30, 'images/hotels/img30.jpg', 'img30'),
(27, 31, 'images/hotels/img31.jpg', 'img31');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `Cust_Id` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `MobileNo` bigint(20) NOT NULL,
  `EmailId` varchar(30) NOT NULL,
  `Passwrd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`Cust_Id`, `UserName`, `MobileNo`, `EmailId`, `Passwrd`) VALUES
(10, 'ravinjay', 8286347073, 'ravinjay29@gmail.com', '1234r'),
(11, 'vishal', 7507302893, 'vishal20@gmail.com', '1234s'),
(12, 'shubham', 8655466380, 'shubham@gmail.com', '1234'),
(19, 'shaktimaan', 1234567890, 'tt@tt.tt123', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `custorder`
--
ALTER TABLE `custorder`
  ADD PRIMARY KEY (`Cust_Ordid`),
  ADD KEY `Cust_No` (`Cust_No`),
  ADD KEY `R_MnNo` (`R_MnNo`),
  ADD KEY `Rst_No` (`Rst_No`);

--
-- Indexes for table `lg`
--
ALTER TABLE `lg`
  ADD PRIMARY KEY (`clgid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Cust_lgid`),
  ADD KEY `Cust_No` (`Cust_No`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`R_Mnid`),
  ADD KEY `Rst_No` (`Rst_No`);

--
-- Indexes for table `menuimg`
--
ALTER TABLE `menuimg`
  ADD PRIMARY KEY (`mnuimg_id`),
  ADD KEY `mnu_no` (`mnu_no`);

--
-- Indexes for table `menuitem`
--
ALTER TABLE `menuitem`
  ADD PRIMARY KEY (`R_Foodid`),
  ADD KEY `R_MnNo` (`R_MnNo`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`Ordetails_id`),
  ADD KEY `R_MnNo` (`R_MnNo`),
  ADD KEY `R_FoodNo` (`R_FoodNo`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`Cust_Prid`),
  ADD KEY `Cust_No` (`Cust_No`);

--
-- Indexes for table `rlogin`
--
ALTER TABLE `rlogin`
  ADD PRIMARY KEY (`Cust_lgid`),
  ADD KEY `Rst_No` (`Rst_No`);

--
-- Indexes for table `rprofile`
--
ALTER TABLE `rprofile`
  ADD PRIMARY KEY (`R_Pid`),
  ADD KEY `Rst_No` (`Rst_No`);

--
-- Indexes for table `rsignup`
--
ALTER TABLE `rsignup`
  ADD PRIMARY KEY (`Rst_Id`),
  ADD UNIQUE KEY `Rst_EmailId` (`Rst_EmailId`);

--
-- Indexes for table `rstimg`
--
ALTER TABLE `rstimg`
  ADD PRIMARY KEY (`img_id`),
  ADD KEY `rst_no` (`rst_no`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`Cust_Id`),
  ADD UNIQUE KEY `EmailId` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `custorder`
--
ALTER TABLE `custorder`
  MODIFY `Cust_Ordid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `Cust_lgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `R_Mnid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `menuitem`
--
ALTER TABLE `menuitem`
  MODIFY `R_Foodid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `Ordetails_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `Cust_Prid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rlogin`
--
ALTER TABLE `rlogin`
  MODIFY `Cust_lgid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rprofile`
--
ALTER TABLE `rprofile`
  MODIFY `R_Pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `rsignup`
--
ALTER TABLE `rsignup`
  MODIFY `Rst_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `rstimg`
--
ALTER TABLE `rstimg`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `Cust_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `custorder`
--
ALTER TABLE `custorder`
  ADD CONSTRAINT `custorder_ibfk_1` FOREIGN KEY (`Cust_No`) REFERENCES `signup` (`Cust_Id`),
  ADD CONSTRAINT `custorder_ibfk_2` FOREIGN KEY (`R_MnNo`) REFERENCES `menu` (`R_Mnid`),
  ADD CONSTRAINT `custorder_ibfk_3` FOREIGN KEY (`Rst_No`) REFERENCES `rsignup` (`Rst_Id`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`Cust_No`) REFERENCES `signup` (`Cust_Id`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`Rst_No`) REFERENCES `rsignup` (`Rst_Id`);

--
-- Constraints for table `menuimg`
--
ALTER TABLE `menuimg`
  ADD CONSTRAINT `menuimg_ibfk_1` FOREIGN KEY (`mnu_no`) REFERENCES `menu` (`R_Mnid`);

--
-- Constraints for table `menuitem`
--
ALTER TABLE `menuitem`
  ADD CONSTRAINT `menuitem_ibfk_1` FOREIGN KEY (`R_MnNo`) REFERENCES `menu` (`R_Mnid`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`R_MnNo`) REFERENCES `menu` (`R_Mnid`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`R_FoodNo`) REFERENCES `menuitem` (`R_Foodid`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`Cust_No`) REFERENCES `signup` (`Cust_Id`);

--
-- Constraints for table `rlogin`
--
ALTER TABLE `rlogin`
  ADD CONSTRAINT `rlogin_ibfk_1` FOREIGN KEY (`Rst_No`) REFERENCES `rsignup` (`Rst_Id`);

--
-- Constraints for table `rprofile`
--
ALTER TABLE `rprofile`
  ADD CONSTRAINT `rprofile_ibfk_1` FOREIGN KEY (`Rst_No`) REFERENCES `rsignup` (`Rst_Id`);

--
-- Constraints for table `rstimg`
--
ALTER TABLE `rstimg`
  ADD CONSTRAINT `rstimg_ibfk_1` FOREIGN KEY (`rst_no`) REFERENCES `rsignup` (`Rst_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
