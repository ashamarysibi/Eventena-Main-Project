-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2020 at 05:20 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bank_id` int(10) NOT NULL,
  `cardno` bigint(17) NOT NULL,
  `cvv` smallint(3) NOT NULL,
  `expiry` varchar(10) NOT NULL,
  `cardholder` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `otp` int(10) NOT NULL,
  `balance` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_id`, `cardno`, `cvv`, `expiry`, `cardholder`, `mail`, `otp`, `balance`, `status`) VALUES
(1, 4048341137215350, 114, '12/2022', 'ADMIN', 'eventena2020@gmail.com', 0, 1773981200, 1),
(2, 5596010020333652, 113, '11/2022', 'ASHA MARY SIBI', 'ashamarysibi120@gmail.com', 0, 4940000, 1),
(3, 4148341138215352, 112, '11/2022', 'CAROLIN', 'ashamarysibi120@gmail.com', 0, 1000000, 1),
(4, 5597011020334651, 115, '12/2022', 'DESEENA', 'ashamarysibi120@gmail.com', 0, 5000, 1),
(5, 5587012020334653, 116, '12/2023', 'PRINU', 'ashamarysibi120@gmail.com', 0, 8000, 1),
(6, 5507012120334653, 117, '11/2023', 'BELLA', 'ashamarysibi120@gmail.com', 0, 3000, 1),
(7, 4148331138315352, 118, '11/2022', 'THOMAS', 'ashamarysibi120@gmail.com', 0, 2300, 1),
(8, 4148342138315352, 119, '11/2023', 'SANDRA', 'ashamarysibi120@gmail.com', 0, 500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `dist_id` int(10) NOT NULL,
  `dist_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`dist_id`, `dist_name`) VALUES
(1, 'Trivandram'),
(2, 'Kollam'),
(3, 'Alappuzha'),
(4, 'pathanamthitta'),
(5, 'Kottayam'),
(6, 'Idukki'),
(7, 'Ernakulam'),
(8, 'Thrissur'),
(9, 'Palakkad'),
(10, 'Malapuram'),
(11, 'Kozhikode'),
(12, 'Wayanad'),
(13, 'Kannur'),
(14, 'Kasargod');

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE `event_type` (
  `eventtype_id` int(5) NOT NULL,
  `eventtype_name` varchar(30) NOT NULL,
  `eventtype_desc` varchar(50) NOT NULL,
  `eventtype_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`eventtype_id`, `eventtype_name`, `eventtype_desc`, `eventtype_status`) VALUES
(1, 'Birthday', 'Birthday Functions', 1),
(3, 'Anniversary', 'Anniversary Functions', 1),
(4, 'Baptism ', 'Baptism functions', 1),
(6, 'Marraige', 'qwertuy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `evt_beauty`
--

CREATE TABLE `evt_beauty` (
  `evt_beauty_id` int(10) NOT NULL,
  `log_id` int(10) NOT NULL,
  `cmp_name` varchar(30) NOT NULL,
  `cmp_owner` varchar(30) NOT NULL,
  `cmp_category` varchar(30) NOT NULL,
  `cmp_web` varchar(30) NOT NULL,
  `cmp_addr` varchar(30) NOT NULL,
  `cmp_contact` bigint(10) NOT NULL,
  `exp_mnt` int(10) NOT NULL,
  `cmp_licnc` int(16) NOT NULL,
  `lic_doc` varchar(200) NOT NULL,
  `cmp_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evt_beauty`
--

INSERT INTO `evt_beauty` (`evt_beauty_id`, `log_id`, `cmp_name`, `cmp_owner`, `cmp_category`, `cmp_web`, `cmp_addr`, `cmp_contact`, `exp_mnt`, `cmp_licnc`, `lic_doc`, `cmp_status`) VALUES
(1, 10, 'Flora', 'Gayathri suresh', 'Beautician', 'https://flora.com', 'Kottayam', 7412589654, 14, 2147483647, 'seminar front.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `evt_cate`
--

CREATE TABLE `evt_cate` (
  `evp_id` int(5) NOT NULL,
  `log_id` int(10) NOT NULL,
  `cmp_name` varchar(30) NOT NULL,
  `cmp_owner` varchar(30) NOT NULL,
  `cmp_category` varchar(30) NOT NULL,
  `cmp_addr` varchar(40) NOT NULL,
  `cmp_web` varchar(30) NOT NULL,
  `cmp_contact` bigint(10) NOT NULL,
  `exp_mnt` int(5) NOT NULL,
  `cmp_licnc` bigint(30) NOT NULL,
  `lic_doc` varchar(100) NOT NULL,
  `cmp_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evt_cate`
--

INSERT INTO `evt_cate` (`evp_id`, `log_id`, `cmp_name`, `cmp_owner`, `cmp_category`, `cmp_addr`, `cmp_web`, `cmp_contact`, `exp_mnt`, `cmp_licnc`, `lic_doc`, `cmp_status`) VALUES
(1, 2, 'Marias Catering', 'Thomas joseph', 'Catering Service', 'kottayam', 'https://marias.in', 8459687458, 15, 14789654789654, 'seminar front.pdf', 1),
(2, 13, 'Malabar catering', 'Aromal jose', 'Catering Service', 'Idukki', 'https://malabar.in', 7025896874, 15, 15874589658745, 'asha.pdf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `evt_decor`
--

CREATE TABLE `evt_decor` (
  `evt_dec_id` int(10) NOT NULL,
  `log_id` int(10) NOT NULL,
  `cmp_name` varchar(30) NOT NULL,
  `cmp_owner` varchar(30) NOT NULL,
  `cmp_category` varchar(30) NOT NULL,
  `cmp_addr` varchar(30) NOT NULL,
  `cmp_web` varchar(30) NOT NULL,
  `cmp_contact` bigint(10) NOT NULL,
  `exp_mnt` int(11) NOT NULL,
  `cmp_licnc` int(16) NOT NULL,
  `lic_doc` varchar(200) NOT NULL,
  `cmp_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evt_decor`
--

INSERT INTO `evt_decor` (`evt_dec_id`, `log_id`, `cmp_name`, `cmp_owner`, `cmp_category`, `cmp_addr`, `cmp_web`, `cmp_contact`, `exp_mnt`, `cmp_licnc`, `lic_doc`, `cmp_status`) VALUES
(1, 3, 'Deca decors', 'Thomas', 'Decorations', 'Kollam', 'https://deca.in', 8541236987, 16, 2147483647, 'seminar contents.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `evt_photo`
--

CREATE TABLE `evt_photo` (
  `evt_photo_id` int(10) NOT NULL,
  `log_id` int(10) NOT NULL,
  `cmp_name` varchar(30) NOT NULL,
  `cmp_owner` varchar(30) NOT NULL,
  `cmp_category` varchar(30) NOT NULL,
  `cmp_web` varchar(30) NOT NULL,
  `cmp_addr` varchar(30) NOT NULL,
  `cmp_contact` bigint(10) NOT NULL,
  `exp_mnt` int(10) NOT NULL,
  `cmp_licnc` int(16) NOT NULL,
  `lic_doc` varchar(200) NOT NULL,
  `cmp_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evt_photo`
--

INSERT INTO `evt_photo` (`evt_photo_id`, `log_id`, `cmp_name`, `cmp_owner`, `cmp_category`, `cmp_web`, `cmp_addr`, `cmp_contact`, `exp_mnt`, `cmp_licnc`, `lic_doc`, `cmp_status`) VALUES
(1, 5, 'Dc studio', 'Allen', 'Photography', 'https://dc.in', 'Kottayam', 7854123698, 15, 2147483647, 'seminar front.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `evt_trans`
--

CREATE TABLE `evt_trans` (
  `evt_trans_id` int(10) NOT NULL,
  `log_id` int(10) NOT NULL,
  `cmp_name` varchar(30) NOT NULL,
  `cmp_owner` varchar(30) NOT NULL,
  `cmp_category` varchar(30) NOT NULL,
  `cmp_addr` varchar(30) NOT NULL,
  `cmp_website` varchar(30) NOT NULL,
  `cmp_contact` bigint(10) NOT NULL,
  `exp_mnt` int(10) NOT NULL,
  `cmp_licnc` int(16) NOT NULL,
  `lic_doc` varchar(200) NOT NULL,
  `cmp_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evt_trans`
--

INSERT INTO `evt_trans` (`evt_trans_id`, `log_id`, `cmp_name`, `cmp_owner`, `cmp_category`, `cmp_addr`, `cmp_website`, `cmp_contact`, `exp_mnt`, `cmp_licnc`, `lic_doc`, `cmp_status`) VALUES
(1, 9, 'V car', 'Thomas', 'Transportation', 'kottayam', 'https://vcar.in', 7896541236, 18, 2147483647, 'CRYPTOCURRENCY AND BITCOINS.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` int(10) NOT NULL,
  `pid` int(10) DEFAULT NULL,
  `cash` int(10) NOT NULL,
  `sender` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `pid`, `cash`, `sender`, `status`) VALUES
(1, NULL, 19, 'ASHA MARY SIBI', 1),
(2, NULL, 15, 'ASHA MARY SIBI', 1),
(3, NULL, 15, 'ASHA MARY SIBI', 1),
(4, NULL, 177500, 'ADMIN', 1),
(5, NULL, 1000000, 'ADMIN', 1),
(6, NULL, 5000, 'ADMIN', 1),
(7, NULL, 8000, 'ADMIN', 1),
(8, NULL, 3000, 'ADMIN', 1),
(9, NULL, 2300, 'ADMIN', 1),
(10, NULL, 500, 'ADMIN', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_allot`
--

CREATE TABLE `tbl_allot` (
  `allot_id` int(10) NOT NULL,
  `sec_name1` varchar(30) NOT NULL,
  `sec_name2` varchar(30) NOT NULL,
  `sec_name3` varchar(30) NOT NULL,
  `book_id` int(11) NOT NULL,
  `allot_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_allot`
--

INSERT INTO `tbl_allot` (`allot_id`, `sec_name1`, `sec_name2`, `sec_name3`, `book_id`, `allot_status`) VALUES
(6, 'ashamarysibi120@gmail.com', '', '', 1, 1),
(8, 'ashamarysibi120@gmail.com', '', '', 2, 1),
(9, 'ashamarysibi120@gmail.com', 'eventena2020@gmail.com', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_beauty`
--

CREATE TABLE `tbl_beauty` (
  `beauty_id` int(10) NOT NULL,
  `evt_beauty_id` int(10) NOT NULL,
  `beauty_name` varchar(30) NOT NULL,
  `beauty_desc` varchar(100) NOT NULL,
  `beauty_purpose` varchar(30) NOT NULL,
  `beauty_price` int(10) NOT NULL,
  `beauty_image` varchar(200) NOT NULL,
  `beauty_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_beauty`
--

INSERT INTO `tbl_beauty` (`beauty_id`, `evt_beauty_id`, `beauty_name`, `beauty_desc`, `beauty_purpose`, `beauty_price`, `beauty_image`, `beauty_status`) VALUES
(1, 1, 'Royal package', '  Waxing\r\nspa\r\nfacial\r\npedicure\r\nmanicure\r\n  ', 'wedding', 3000, 'images.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book`
--

CREATE TABLE `tbl_book` (
  `book_id` int(10) NOT NULL,
  `log_id` int(10) NOT NULL,
  `eventtype_name` varchar(30) NOT NULL,
  `evt_date` varchar(40) NOT NULL,
  `evt_time` varchar(20) NOT NULL,
  `max_gst` int(10) NOT NULL,
  `v_name` varchar(20) NOT NULL,
  `decor_id` int(10) NOT NULL,
  `cake_id` int(10) NOT NULL,
  `trans_id` int(10) NOT NULL,
  `photo_id` int(10) NOT NULL,
  `security_no` int(10) NOT NULL,
  `beauty_id` int(10) NOT NULL,
  `total` bigint(10) NOT NULL,
  `allott_status` tinyint(1) NOT NULL,
  `book_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_book`
--

INSERT INTO `tbl_book` (`book_id`, `log_id`, `eventtype_name`, `evt_date`, `evt_time`, `max_gst`, `v_name`, `decor_id`, `cake_id`, `trans_id`, `photo_id`, `security_no`, `beauty_id`, `total`, `allott_status`, `book_status`) VALUES
(1, 11, 'Anniversary', '2020-03-12', '12:20', 5000, 'st Marys Auditorium', 1, 9, 3, 1, 1, 1, 0, 1, 1),
(2, 12, 'Anniversary', '2020-03-14', '10:00', 500, 'dfghj', 1, 10, 1, 1, 2, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cake`
--

CREATE TABLE `tbl_cake` (
  `cake_id` int(10) NOT NULL,
  `evp_id` int(10) NOT NULL,
  `pck_name` varchar(30) NOT NULL,
  `food_name` varchar(100) NOT NULL,
  `f_price` int(10) NOT NULL,
  `f_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cake`
--

INSERT INTO `tbl_cake` (`cake_id`, `evp_id`, `pck_name`, `food_name`, `f_price`, `f_status`) VALUES
(5, 2, 'package 5', 'Chicken biriyani,\r\ncola,\r\nchocolate cake\r\n', 250, 1),
(9, 1, 'combo package', 'beef biriyani,dessert', 200, 1),
(10, 1, 'Quarter package', 'chicken biriyani\r\nmineral water\r\npineapple dessert', 150, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_decor`
--

CREATE TABLE `tbl_decor` (
  `decor_id` int(10) NOT NULL,
  `evt_dec_id` int(10) NOT NULL,
  `decor_category` varchar(30) NOT NULL,
  `pack_name` varchar(100) NOT NULL,
  `decor_item` varchar(300) NOT NULL,
  `decor_desc` varchar(100) NOT NULL,
  `decor_price` int(10) NOT NULL,
  `decor_image` varchar(2000) NOT NULL,
  `decor_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_decor`
--

INSERT INTO `tbl_decor` (`decor_id`, `evt_dec_id`, `decor_category`, `pack_name`, `decor_item`, `decor_desc`, `decor_price`, `decor_image`, `decor_status`) VALUES
(1, 1, 'Birthday', 'pack 2', 'seating\r\nlight and sound', 'ribbon tie chairs', 5000, 'How to check a valid date time in PHP.mp4', 1),
(2, 1, 'Anniversary', 'decor pack 2', 'light and sound\r\npanthal\r\nflowers', 'chairs with ribbon', 5400, 'How to check a valid date time in PHP.mp4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `log_id` int(10) NOT NULL,
  `usertype_id` tinyint(1) NOT NULL,
  `username` varchar(25) NOT NULL,
  `log_pswd` varchar(15) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`log_id`, `usertype_id`, `username`, `log_pswd`, `status`) VALUES
(1, 1, 'Admin@gmail.com', 'Admin@12', 1),
(2, 3, 'marias@gmail.com', 'Marias@1234', 1),
(3, 4, 'deca@gmail.com', 'Decadec@12', 1),
(5, 6, 'dcstudio@gmail.com', 'Dcstudio@12', 1),
(9, 7, 'vcar@gmail.com', 'Vcar@123', 1),
(10, 8, 'flora@gmail.com', 'Flora@12', 1),
(11, 2, 'ashamary@gmail.com', 'Ashamary@123', 1),
(12, 2, 'ashamarysibi120@gmail.com', 'Annu@123', 1),
(13, 3, 'malabar@gmail.com', 'Malabar@12', 0),
(17, 5, 'ashamarysibi@mca.ajce.in', 'Ashamary@23', 1),
(18, 5, 'ashamarysibi121@gmail.com', 'Ashamary@12', 1),
(19, 5, 'eventena2020@gmail.com', '2075159007', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `photo_id` int(10) NOT NULL,
  `evt_photo_id` int(10) NOT NULL,
  `photo_name` varchar(20) NOT NULL,
  `photo_desc` varchar(200) NOT NULL,
  `photo_purpose` varchar(30) NOT NULL,
  `photo_price` int(10) NOT NULL,
  `photo_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`photo_id`, `evt_photo_id`, `photo_name`, `photo_desc`, `photo_purpose`, `photo_price`, `photo_status`) VALUES
(1, 1, 'photo pack 1', 'still photo-100pcs\r\nFree Album\r\nFree Editings', 'Birthday', 8000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_security`
--

CREATE TABLE `tbl_security` (
  `sec_id` int(10) NOT NULL,
  `log_id` int(10) NOT NULL,
  `sec_name` varchar(30) NOT NULL,
  `sec_mail` varchar(30) NOT NULL,
  `sec_addr` varchar(40) NOT NULL,
  `sec_contact` bigint(10) NOT NULL,
  `sec_price` int(10) NOT NULL,
  `sec_status` tinyint(1) NOT NULL,
  `sec_avail` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_security`
--

INSERT INTO `tbl_security` (`sec_id`, `log_id`, `sec_name`, `sec_mail`, `sec_addr`, `sec_contact`, `sec_price`, `sec_status`, `sec_avail`) VALUES
(1, 14, 'Thomas', 'ashamarysibi120@gmail.com', 'cfvghj', 7485968745, 500, 1, 1),
(3, 17, 'John', 'sruthiskumar@mca.ajce.in', 'valummeli\r\n', 8965874583, 500, 1, 1),
(5, 19, 'Anjitha', 'eventena2020@gmail.com', 'jhgf', 8125896574, 200, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `status_id` int(10) NOT NULL,
  `book_id` int(10) NOT NULL,
  `cate_status` tinyint(1) NOT NULL,
  `decor_status` tinyint(1) NOT NULL,
  `trans_status` tinyint(1) NOT NULL,
  `photo_status` tinyint(1) NOT NULL,
  `sec_status` tinyint(1) NOT NULL,
  `beauty_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`status_id`, `book_id`, `cate_status`, `decor_status`, `trans_status`, `photo_status`, `sec_status`, `beauty_status`) VALUES
(1, 1, 1, 1, 1, 1, 0, 1),
(2, 2, 1, 1, 1, 1, 0, 1),
(3, 8, 1, 0, 1, 0, 1, 0),
(4, 9, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transport`
--

CREATE TABLE `tbl_transport` (
  `trans_id` int(10) NOT NULL,
  `evt_trans_id` int(10) NOT NULL,
  `trans_name` varchar(30) NOT NULL,
  `trans_color` varchar(20) NOT NULL,
  `trans_seat` int(10) NOT NULL,
  `trans_ac` varchar(30) NOT NULL,
  `trans_drvr` varchar(20) NOT NULL,
  `trans_price` int(10) NOT NULL,
  `trans_image` varchar(200) NOT NULL,
  `trans_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transport`
--

INSERT INTO `tbl_transport` (`trans_id`, `evt_trans_id`, `trans_name`, `trans_color`, `trans_seat`, `trans_ac`, `trans_drvr`, `trans_price`, `trans_image`, `trans_status`) VALUES
(1, 1, 'Innova', 'white', 7, ' Non Ac', 'Driver service', 2300, 'pro10.jpg', 1),
(3, 1, 'swift Desire', 'black', 5, 'Ac', 'self Drive', 500, 'images (9).jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userreg`
--

CREATE TABLE `tbl_userreg` (
  `cust_id` int(10) NOT NULL,
  `log_id` int(10) NOT NULL,
  `cust_name` varchar(30) NOT NULL,
  `cust_addr` varchar(50) NOT NULL,
  `cust_street` varchar(20) NOT NULL,
  `cust_city` varchar(20) NOT NULL,
  `cust_pincode` varchar(20) NOT NULL,
  `cust_district` varchar(20) NOT NULL,
  `cust_mob` bigint(10) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_userreg`
--

INSERT INTO `tbl_userreg` (`cust_id`, `log_id`, `cust_name`, `cust_addr`, `cust_street`, `cust_city`, `cust_pincode`, `cust_district`, `cust_mob`, `status`) VALUES
(2, 7, 'Annu maria shaji', 'valummel', 'vazhavra', 'kattappana', '685515', 'Idukki', 7034521587, 1),
(3, 16, 'cdvfgh', 'fvgbh', 'szdfvgb', 'sdcfvgbh', '685515', 'Idukki', 8452135896, 1),
(4, 11, 'Asha Mary Sibi', 'Ramapurathu', 'Vazhavra', 'Kattappana', '685515', 'Idukki', 7035478968, 1),
(5, 12, 'Annu Jacob', 'pazhoor', 'vazhavara', 'kattappana', '685515', 'Idukki', 7024589687, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`dist_id`);

--
-- Indexes for table `event_type`
--
ALTER TABLE `event_type`
  ADD PRIMARY KEY (`eventtype_id`),
  ADD UNIQUE KEY `eventtype_name` (`eventtype_name`);

--
-- Indexes for table `evt_beauty`
--
ALTER TABLE `evt_beauty`
  ADD PRIMARY KEY (`evt_beauty_id`),
  ADD KEY `log_id` (`log_id`);

--
-- Indexes for table `evt_cate`
--
ALTER TABLE `evt_cate`
  ADD PRIMARY KEY (`evp_id`),
  ADD UNIQUE KEY `log_id` (`log_id`);

--
-- Indexes for table `evt_decor`
--
ALTER TABLE `evt_decor`
  ADD PRIMARY KEY (`evt_dec_id`),
  ADD KEY `log_id` (`log_id`);

--
-- Indexes for table `evt_photo`
--
ALTER TABLE `evt_photo`
  ADD PRIMARY KEY (`evt_photo_id`),
  ADD KEY `log_id` (`log_id`);

--
-- Indexes for table `evt_trans`
--
ALTER TABLE `evt_trans`
  ADD PRIMARY KEY (`evt_trans_id`),
  ADD KEY `foreign` (`log_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `tbl_allot`
--
ALTER TABLE `tbl_allot`
  ADD PRIMARY KEY (`allot_id`),
  ADD KEY `booking` (`book_id`);

--
-- Indexes for table `tbl_beauty`
--
ALTER TABLE `tbl_beauty`
  ADD PRIMARY KEY (`beauty_id`),
  ADD KEY `evt_beauty_id` (`evt_beauty_id`);

--
-- Indexes for table `tbl_book`
--
ALTER TABLE `tbl_book`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `log_id` (`log_id`),
  ADD KEY `transpport` (`trans_id`),
  ADD KEY `decorr` (`decor_id`),
  ADD KEY `catee` (`cake_id`),
  ADD KEY `photo` (`photo_id`),
  ADD KEY `bbeauty` (`beauty_id`);

--
-- Indexes for table `tbl_cake`
--
ALTER TABLE `tbl_cake`
  ADD PRIMARY KEY (`cake_id`),
  ADD UNIQUE KEY `cake_name` (`pck_name`),
  ADD KEY `evp_id` (`evp_id`);

--
-- Indexes for table `tbl_decor`
--
ALTER TABLE `tbl_decor`
  ADD PRIMARY KEY (`decor_id`),
  ADD UNIQUE KEY `pack_name` (`pack_name`),
  ADD KEY `evp_id` (`evt_dec_id`),
  ADD KEY `evt_dec_id` (`evt_dec_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `evp_id` (`evt_photo_id`);

--
-- Indexes for table `tbl_security`
--
ALTER TABLE `tbl_security`
  ADD PRIMARY KEY (`sec_id`),
  ADD KEY `sec` (`log_id`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `booking_id` (`book_id`);

--
-- Indexes for table `tbl_transport`
--
ALTER TABLE `tbl_transport`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `evt_trans_id` (`evt_trans_id`);

--
-- Indexes for table `tbl_userreg`
--
ALTER TABLE `tbl_userreg`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `foreign key` (`log_id`),
  ADD KEY `log_id` (`log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bank_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `dist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `event_type`
--
ALTER TABLE `event_type`
  MODIFY `eventtype_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `evt_beauty`
--
ALTER TABLE `evt_beauty`
  MODIFY `evt_beauty_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `evt_cate`
--
ALTER TABLE `evt_cate`
  MODIFY `evp_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `evt_decor`
--
ALTER TABLE `evt_decor`
  MODIFY `evt_dec_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `evt_photo`
--
ALTER TABLE `evt_photo`
  MODIFY `evt_photo_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `evt_trans`
--
ALTER TABLE `evt_trans`
  MODIFY `evt_trans_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pay_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_allot`
--
ALTER TABLE `tbl_allot`
  MODIFY `allot_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_beauty`
--
ALTER TABLE `tbl_beauty`
  MODIFY `beauty_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_book`
--
ALTER TABLE `tbl_book`
  MODIFY `book_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_cake`
--
ALTER TABLE `tbl_cake`
  MODIFY `cake_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_decor`
--
ALTER TABLE `tbl_decor`
  MODIFY `decor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `log_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `photo_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_security`
--
ALTER TABLE `tbl_security`
  MODIFY `sec_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `status_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_transport`
--
ALTER TABLE `tbl_transport`
  MODIFY `trans_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_userreg`
--
ALTER TABLE `tbl_userreg`
  MODIFY `cust_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `evt_beauty`
--
ALTER TABLE `evt_beauty`
  ADD CONSTRAINT `logname` FOREIGN KEY (`log_id`) REFERENCES `tbl_login` (`log_id`);

--
-- Constraints for table `evt_cate`
--
ALTER TABLE `evt_cate`
  ADD CONSTRAINT `login_id` FOREIGN KEY (`log_id`) REFERENCES `tbl_login` (`log_id`);

--
-- Constraints for table `evt_decor`
--
ALTER TABLE `evt_decor`
  ADD CONSTRAINT `log_id` FOREIGN KEY (`log_id`) REFERENCES `tbl_login` (`log_id`);

--
-- Constraints for table `evt_photo`
--
ALTER TABLE `evt_photo`
  ADD CONSTRAINT `login` FOREIGN KEY (`log_id`) REFERENCES `tbl_login` (`log_id`);

--
-- Constraints for table `evt_trans`
--
ALTER TABLE `evt_trans`
  ADD CONSTRAINT `log` FOREIGN KEY (`log_id`) REFERENCES `tbl_login` (`log_id`);

--
-- Constraints for table `tbl_allot`
--
ALTER TABLE `tbl_allot`
  ADD CONSTRAINT `booking` FOREIGN KEY (`book_id`) REFERENCES `tbl_book` (`book_id`);

--
-- Constraints for table `tbl_beauty`
--
ALTER TABLE `tbl_beauty`
  ADD CONSTRAINT `beauty` FOREIGN KEY (`evt_beauty_id`) REFERENCES `tbl_beauty` (`beauty_id`);

--
-- Constraints for table `tbl_book`
--
ALTER TABLE `tbl_book`
  ADD CONSTRAINT `bbeauty` FOREIGN KEY (`beauty_id`) REFERENCES `tbl_beauty` (`beauty_id`),
  ADD CONSTRAINT `catee` FOREIGN KEY (`cake_id`) REFERENCES `tbl_cake` (`cake_id`),
  ADD CONSTRAINT `decorr` FOREIGN KEY (`decor_id`) REFERENCES `tbl_decor` (`decor_id`),
  ADD CONSTRAINT `logging` FOREIGN KEY (`log_id`) REFERENCES `tbl_login` (`log_id`),
  ADD CONSTRAINT `photo` FOREIGN KEY (`photo_id`) REFERENCES `tbl_photo` (`photo_id`),
  ADD CONSTRAINT `transpport` FOREIGN KEY (`trans_id`) REFERENCES `tbl_transport` (`trans_id`);

--
-- Constraints for table `tbl_cake`
--
ALTER TABLE `tbl_cake`
  ADD CONSTRAINT `tbl_cake_ibfk_1` FOREIGN KEY (`evp_id`) REFERENCES `evt_cate` (`evp_id`);

--
-- Constraints for table `tbl_decor`
--
ALTER TABLE `tbl_decor`
  ADD CONSTRAINT `evt_dec_id` FOREIGN KEY (`evt_dec_id`) REFERENCES `evt_decor` (`evt_dec_id`);

--
-- Constraints for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD CONSTRAINT `evp_id` FOREIGN KEY (`evt_photo_id`) REFERENCES `evt_photo` (`evt_photo_id`);

--
-- Constraints for table `tbl_security`
--
ALTER TABLE `tbl_security`
  ADD CONSTRAINT `sec` FOREIGN KEY (`log_id`) REFERENCES `tbl_login` (`log_id`);

--
-- Constraints for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD CONSTRAINT `booking_id` FOREIGN KEY (`book_id`) REFERENCES `tbl_book` (`book_id`);

--
-- Constraints for table `tbl_transport`
--
ALTER TABLE `tbl_transport`
  ADD CONSTRAINT `trans_id` FOREIGN KEY (`evt_trans_id`) REFERENCES `evt_trans` (`evt_trans_id`);

--
-- Constraints for table `tbl_userreg`
--
ALTER TABLE `tbl_userreg`
  ADD CONSTRAINT `tbl_userreg_ibfk_1` FOREIGN KEY (`log_id`) REFERENCES `tbl_login` (`log_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
