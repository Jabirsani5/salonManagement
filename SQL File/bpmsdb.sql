-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2023 at 05:23 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7898799798, 'tester1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2022-05-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblbook`
--

CREATE TABLE `tblbook` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `AptNumber` int(10) DEFAULT NULL,
  `AptDate` date DEFAULT NULL,
  `AptTime` time DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbook`
--

INSERT INTO `tblbook` (`ID`, `UserID`, `AptNumber`, `AptDate`, `AptTime`, `Message`, `BookingDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(14, 14, 627633219, '2023-08-16', '14:05:00', 'kitso', '2023-08-16 12:05:24', 'thanks', 'Selected', '2023-08-16 12:07:03'),
(15, 15, 677689988, '2023-08-18', '17:49:00', 'thanks you', '2023-08-16 12:44:22', 'ok', 'Selected', '2023-08-16 12:46:28'),
(16, 16, 355673779, '2023-08-30', '08:00:00', 'kunshi', '2023-08-16 15:02:13', 'thanks you', 'Selected', '2023-08-17 09:28:41'),
(17, 17, 756869392, '2023-08-20', '14:00:00', 'body care', '2023-08-16 23:19:51', 'accepted', 'Selected', '2023-08-17 09:29:57'),
(18, 18, 312482127, '2023-08-23', '17:30:00', 'markup', '2023-08-16 23:24:46', 'okey', 'Selected', '2023-08-17 09:31:07'),
(19, 18, 805231964, '2023-08-26', '10:12:00', 'kitso', '2023-08-17 09:12:47', 'sorry', 'Rejected', '2023-08-17 09:31:50'),
(20, 19, 540697297, '2023-08-27', '11:00:00', 'salon', '2023-08-17 09:15:07', 'you are highly well come\r\n', 'Selected', '2023-08-17 09:33:24'),
(21, 21, 588605071, '2023-09-10', '13:30:00', 'kushi,kitso,markup', '2023-08-17 09:18:55', 'thanks for chosing us', 'Selected', '2023-08-17 09:34:38'),
(22, 20, 675453899, '2023-08-30', '15:00:00', 'kushi', '2023-08-17 09:21:16', 'thanks', 'Selected', '2023-08-17 09:35:03'),
(23, 22, 417593646, '2023-09-01', '16:00:00', 'markup', '2023-08-17 09:59:31', 'thanks you ', 'Selected', '2023-08-17 13:11:46'),
(24, 25, 288018270, '2023-09-20', '07:00:00', 'kunshi', '2023-08-17 10:01:21', 'accepted', 'Selected', '2023-08-17 13:12:35'),
(25, 23, 140372714, '2023-08-17', '00:00:00', 'heena', '2023-08-17 10:03:00', 'you are well come', 'Selected', '2023-08-17 13:13:30'),
(26, 24, 494072359, '2023-09-05', '16:00:00', 'body care', '2023-08-17 10:06:25', 'okay', 'Selected', '2023-08-17 13:14:17'),
(27, 27, 291705627, '2023-08-18', '14:30:00', 'henna', '2023-08-18 12:30:20', 'thanks', 'Selected', '2023-08-18 12:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `FirstName`, `LastName`, `Phone`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(8, 'salma', 'yau', 908999098, 'salma@gmail.com', 'qwertyuiop[]', '2023-08-16 11:57:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(27, 12, 1, 222064433, '2023-06-17 18:10:23'),
(28, 12, 2, 222064433, '2023-06-17 18:10:23'),
(29, 12, 4, 222064433, '2023-06-17 18:10:23'),
(30, 12, 5, 222064433, '2023-06-17 18:10:23'),
(31, 12, 9, 222064433, '2023-06-17 18:10:23'),
(32, 13, 12, 151021316, '2023-06-22 10:41:21'),
(33, 13, 18, 151021316, '2023-06-22 10:41:21'),
(34, 13, 18, 556922596, '2023-08-16 11:59:27'),
(35, 13, 20, 556922596, '2023-08-16 11:59:27'),
(36, 13, 24, 556922596, '2023-08-16 11:59:28'),
(37, 14, 18, 255670312, '2023-08-16 12:08:01'),
(38, 14, 19, 255670312, '2023-08-16 12:08:01'),
(39, 14, 21, 255670312, '2023-08-16 12:08:01'),
(40, 14, 22, 255670312, '2023-08-16 12:08:01'),
(41, 14, 24, 255670312, '2023-08-16 12:08:01'),
(42, 14, 25, 255670312, '2023-08-16 12:08:01'),
(43, 15, 19, 787556885, '2023-08-16 12:47:47'),
(44, 15, 24, 787556885, '2023-08-16 12:47:48'),
(45, 15, 25, 787556885, '2023-08-16 12:47:48'),
(46, 16, 19, 790080883, '2023-08-17 09:38:28'),
(47, 16, 22, 790080883, '2023-08-17 09:38:28'),
(48, 16, 27, 790080883, '2023-08-17 09:38:28'),
(49, 17, 21, 939295206, '2023-08-17 09:39:29'),
(50, 17, 24, 939295206, '2023-08-17 09:39:29'),
(51, 18, 26, 448423614, '2023-08-17 09:40:10'),
(52, 18, 27, 448423614, '2023-08-17 09:40:10'),
(53, 19, 20, 399086406, '2023-08-17 09:41:42'),
(54, 19, 28, 399086406, '2023-08-17 09:41:42'),
(55, 20, 19, 243017857, '2023-08-17 09:42:40'),
(56, 20, 23, 243017857, '2023-08-17 09:42:40'),
(57, 20, 24, 243017857, '2023-08-17 09:42:41'),
(58, 20, 26, 243017857, '2023-08-17 09:42:41'),
(59, 21, 27, 915550424, '2023-08-17 09:43:13'),
(60, 27, 18, 691656122, '2023-08-18 12:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '        Our main focus is on quality and hygiene. Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials &amp; fashion hair colourings.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'no 12 Hassan mohammed Plaza kano State\r\n', 'info@gmail.com', 70896541236, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServiceDescription` mediumtext DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `ServiceDescription`, `Cost`, `Image`, `CreationDate`) VALUES
(18, 'kitso', 'kitso', 3000, '56e1a383df58001ce902efabb161badc1690807069jpeg', '2023-06-22 10:28:51'),
(19, 'Kunshi', 'Henner', 3000, '5e97eae9408c2d682c12a9d54a9abc8c1692185256.jpg', '2023-08-16 11:27:36'),
(20, 'Kunshi', 'Hand henner', 2500, 'bbbcde50cb8a95b228b5f67a2daee0271692185324.jpg', '2023-08-16 11:28:44'),
(21, 'Kunshi', 'one Hand', 2500, 'e110c736e39302bbbe17cb17635526141692185358.jpg', '2023-08-16 11:29:18'),
(22, 'Kunshi', 'Red Henner', 3000, '67f7a4e8e54c0c53aa1c0e0f3963f3ac1692185399.jpg', '2023-08-16 11:29:59'),
(23, 'mackup', 'Heavy makup', 10, '1fbfc79b9134cca7c95c6f83d84dc47c1692185466jpeg', '2023-08-16 11:31:06'),
(24, 'Body Care', 'Body Care', 7000, '032b2cc936860b03048302d991c3498f1692186211.jpg', '2023-08-16 11:43:31'),
(25, 'kitso', 'KItso', 1000, '15825cbac9e70459a8acfeee229041f81692186296jpeg', '2023-08-16 11:44:56'),
(26, 'salon', 'hair salon', 7000, 'cb96125fd6bb8c80ed5237a66344a0bc1692264254.jpg', '2023-08-17 09:24:14'),
(27, 'markup', 'bridal', 10, '340d95eb851d0543f6d26c79bd48f3ce1692264358jpeg', '2023-08-17 09:25:58'),
(28, 'kitso', 'hair design', 500, '381ce38cab7b2ce0c8f1b999ac36a1ac1692264443jpeg', '2023-08-17 09:27:23'),
(29, 'salon', 'hair salon', 6000, 'c4897c4eda7b0cddd503f6dfbfdffb761692277545jpeg', '2023-08-17 13:05:45'),
(30, 'kitso', 'hair style', 350, 'ca8c15bc1cab1a95175382aa20053ddc1692277790jpeg', '2023-08-17 13:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(120) DEFAULT NULL,
  `LastName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(13, 'salma ', 'ibrahim', 7080073000, 'salma@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-06-22 10:35:39'),
(14, 'aisha', 'ibrahim', 906667419, 'aisha@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-08-16 12:02:56'),
(15, 'khadija', 'sunusi', 9012021867, 'khadija@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-08-16 12:39:17'),
(16, 'anisa', 'ahmad', 8034218990, 'anisa@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-08-16 14:58:54'),
(17, 'asiya', 'hamza', 9034332111, 'asiya@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-08-16 23:04:14'),
(18, 'zainab', 'ibrahim', 8010245680, 'zainab@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-08-16 23:07:11'),
(19, 'maryam', 'nasir', 8177111202, 'maryam@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-08-16 23:11:21'),
(20, 'fadila', 'lawal', 8022224566, 'fadila@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-08-16 23:15:17'),
(21, 'bilkisu', 'salisu', 7034245629, 'bilkisu@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-08-16 23:17:03'),
(22, 'fatima', 'mansur', 9056332346, 'fatima@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-08-17 09:47:27'),
(23, 'maimuna', 'gambo', 8166473422, 'maimuna@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-08-17 09:50:00'),
(24, 'hassana', 'sani', 8034341999, 'hassana@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-08-17 09:51:03'),
(25, 'zuwaira', 'ibrahim', 8024318990, 'zuwaira@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-08-17 09:55:57'),
(26, 'amina', 'lawan ahmad', 8100237756, 'amina@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-08-17 09:57:33'),
(27, 'jidda', 'ibrahim', 9066564433, 'jidda@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-08-18 12:28:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbook`
--
ALTER TABLE `tblbook`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbook`
--
ALTER TABLE `tblbook`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
