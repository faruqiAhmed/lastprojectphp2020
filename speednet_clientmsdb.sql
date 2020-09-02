-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 02, 2020 at 09:57 AM
-- Server version: 10.3.23-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `speednet_clientmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 1779644948, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2019-10-21 07:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin2`
--

CREATE TABLE `tbladmin2` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin2`
--

INSERT INTO `tbladmin2` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin2', 'admin2', 287624654, 'admin2@gmail.com', 'c81e728d9d4c2f636f067f89cc14862c', '2020-07-26 11:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin3`
--

CREATE TABLE `tbladmin3` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin3`
--

INSERT INTO `tbladmin3` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin3', 'admin3', 28762020, 'admin3@gmail.com', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2020-07-26 11:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblclient`
--

CREATE TABLE `tblclient` (
  `UserID` int(10) NOT NULL,
  `AccountID` int(10) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Ip` varchar(120) DEFAULT NULL,
  `Package` varchar(120) DEFAULT NULL,
  `ContactNumber` text DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `AccountType` varchar(20) NOT NULL,
  `LastActiveDate` date DEFAULT NULL,
  `LastAddBillDate` date DEFAULT NULL,
  `Due` int(11) NOT NULL DEFAULT 0,
  `Subscription` int(11) NOT NULL DEFAULT 0,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclient`
--

INSERT INTO `tblclient` (`UserID`, `AccountID`, `Name`, `Address`, `Ip`, `Package`, `ContactNumber`, `CreationDate`, `AccountType`, `LastActiveDate`, `LastAddBillDate`, `Due`, `Subscription`, `Password`) VALUES
(1, 900370752, '												Sanjay Malhotra', 'ABC Private LimitedB-150,Okhla New ', 'New Delhi', '3mbps', '88888694', '2019-10-22 04:40:11', 'Inactive', '0000-00-00', '2020-08-11', 7500, 1, '62608e08adc29a8d6dbc9754e659f125'),
(2, 884010538, 'Sidharth Sukla', 'Infosys Pvt Ltd\r\nC-123, Sector 15 Noida ', 'Noida not', '4mbps', '4454545454', '2019-10-22 05:24:39', 'Inactive', '0000-00-00', '2020-08-05', 2100, 1, ''),
(6, 426546224, 'Anuj Kumar', 'New Delhi', '10.10.10.10.2', '2 mbps', '9354778033', '2019-11-27 16:00:24', 'Active', '2020-08-21', '2020-08-05', 2800, 2, ''),
(8, 612002420, 'GREGORY J LUTON', '3144  DOCTORS DRIVE', '10.1464.2646.', '1mbps', '1791979210', '2020-06-29 05:28:46', 'Inactive', '0000-00-00', '2020-08-05', 1250, 5, ''),
(9, 844887551, 'GREGORY J LUTON', '3144  DOCTORS DRIVE', '10.1464.2646.', '1mbps', '0179197921', '2020-06-29 13:50:18', 'Inactive', '0000-00-00', '2020-07-29', 250, 1, ''),
(10, 239761062, 'Raymond B Cooks', '3144  DOCTORS DRIVE', '10.1464.2646.', '3mbps', '0179197921', '2020-06-29 13:53:11', 'Inactive', NULL, NULL, 0, 0, ''),
(11, 414689033, 'GREGORY J LUTON', '3144  DOCTORS DRIVE', '10.1464.2646.', '2mbps', '0179197921', '2020-06-29 13:55:03', 'Inactive', '0000-00-00', '2020-08-02', 500, 1, ''),
(16, 527306658, 'Rafi Khan', '4755  Kerry Way', '1234.5564', '2mbps', '0156465489', '2020-07-04 10:27:19', 'Inactive', NULL, NULL, 0, 0, ''),
(17, 785038098, 'Junaid Khan', 'Chittagong', '1234.5564', '2mbps', '0184656', '2020-07-11 19:52:20', 'Inactive', NULL, NULL, 0, 0, '81dc9bdb52d04dc20036dbd8313ed055'),
(19, 827206557, 'Rafi Khan', '				goplgonj								', '15.154.592', '3mbps', '0141446635', '2020-07-18 01:17:13', 'Inactive', '0000-00-00', '2020-07-18', 16000, 4, '81dc9bdb52d04dc20036dbd8313ed055'),
(22, 926904763, 'Ripon', '				Belgium								', '192.162', '4mbps', '3498', '2020-07-19 17:58:44', 'Active', '2020-08-20', NULL, 0, 0, '81dc9bdb52d04dc20036dbd8313ed055'),
(23, 348760525, 'selim', '				Belgium								', '192.162', '4mbps', '46546', '2020-07-19 18:05:02', 'Inactive', NULL, NULL, 0, 0, '81dc9bdb52d04dc20036dbd8313ed055'),
(24, 460824366, '												asd', '												sad', '172.16.2', '5 Mbps', '123', '2020-07-29 13:05:08', 'Active', '2020-08-20', NULL, 0, 0, '81dc9bdb52d04dc20036dbd8313ed055'),
(25, 843043098, 'Demo Client', 'Home', '15789658887465', '3mbps', '12345678911', '2020-07-29 18:33:26', 'Inactive', '0000-00-00', NULL, 0, 0, '21232f297a57a5a743894a0e4a801fc3'),
(26, 803858203, 'Demo001', '			kawlar									', '172.16.2.12', '5 Mbps', '123456789', '2020-08-17 20:37:50', 'Active', '2020-08-29', NULL, 0, 0, '81dc9bdb52d04dc20036dbd8313ed055'),
(27, 943361563, 'Alif', '		mollabari 									', '172.16.2.11', '1.5 mbps', '01744677768', '2020-08-17 21:39:02', 'Active', '2020-08-18', NULL, 0, 0, '81dc9bdb52d04dc20036dbd8313ed055'),
(28, 557888389, 'Zia vai', 'Mollabari												', '172.16.2.51', '2 mbps', '01711711714', '2020-08-17 21:52:59', 'Inactive', NULL, NULL, 0, 0, '81dc9bdb52d04dc20036dbd8313ed055'),
(29, 528634559, '																		Sojol', 'Kawlar, jamtola,7/A											', '172.16.12.12', '2 mbps', '01677474482', '2020-08-21 05:54:05', 'Active', '2020-08-21', NULL, 0, 0, '81dc9bdb52d04dc20036dbd8313ed055'),
(30, 294484437, 'asdf', '			srdgyh5j									', '172.16.15.23', '2 mbps', '01677474482', '2020-08-22 12:15:09', 'Inactive', NULL, NULL, 0, 0, '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplain`
--

CREATE TABLE `tblcomplain` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Issue` text NOT NULL,
  `ComplainDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Submission` text DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcomplain`
--

INSERT INTO `tblcomplain` (`ID`, `UserID`, `Issue`, `ComplainDate`, `Submission`) VALUES
(1, 1, 'Net Slow', '2020-07-11 18:55:19', 'Solved'),
(2, 1, 'no Internet', '2020-07-11 19:39:59', 'Solved'),
(3, 1, 'not working', '2020-07-19 08:53:57', 'Solved'),
(4, 1, 'net slow', '2020-07-19 08:54:43', 'Solved'),
(5, 26, 'net onek slow. food panda kaj kore na.', '2020-08-21 06:01:45', 'Solved');

-- --------------------------------------------------------

--
-- Table structure for table `tblconfirmclient`
--

CREATE TABLE `tblconfirmclient` (
  `ID` int(11) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `ContactNumber` text DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Package` varchar(120) DEFAULT NULL,
  `Ip` varchar(120) DEFAULT NULL,
  `Password` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblconfirmclient`
--

INSERT INTO `tblconfirmclient` (`ID`, `Name`, `ContactNumber`, `Address`, `Package`, `Ip`, `Password`) VALUES
(3, 'ataur', '88888496', '4755  Kerry Way', '2mbps', '4755  Kerry Way', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE `tblemployee` (
  `EmployeeId` int(11) NOT NULL,
  `EmployeeName` varchar(30) NOT NULL,
  `EmployeeNumber` text NOT NULL,
  `EmployeeAddress` text NOT NULL,
  `Salary` int(11) NOT NULL,
  `JoinDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`EmployeeId`, `EmployeeName`, `EmployeeNumber`, `EmployeeAddress`, `Salary`, `JoinDate`) VALUES
(1, 'Imran Khan Pk', '01791979210', '1/D,Mirbhag,Rampura,Dhaka', 0, '2020-07-18 19:26:42'),
(2, 'Modi', '01799268987', 'Dinajpur', 0, '2020-07-18 19:26:42'),
(3, 'Sheik Hasina', '01799268457', 'Golpalgonj', 0, '2020-07-18 19:26:42'),
(4, 'sujon', '017878956', 'Feni												', 0, '2020-07-18 19:26:42'),
(5, 'sujon', '018656', '				dinajpur								', 5645, '2020-07-26 12:08:17'),
(6, 'Demo 1', '000111222', 'Home', 3000, '2020-07-29 18:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblexpense`
--

CREATE TABLE `tblexpense` (
  `ID` int(11) NOT NULL,
  `Purpose` text NOT NULL,
  `Bill` int(11) NOT NULL,
  `EmployeeName` varchar(60) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblexpense`
--

INSERT INTO `tblexpense` (`ID`, `Purpose`, `Bill`, `EmployeeName`, `Date`) VALUES
(7, 'cable', 100, 'sujon', '2020-08-10 20:03:39'),
(8, 'Cable', 500, 'Imran Khan Pk', '2020-08-10 20:04:05'),
(9, 'Bill payment', 2000, 'Demo 1', '2020-08-21 05:39:34'),
(10, 'Transport', 200, 'Imran Khan Pk', '2020-08-21 05:57:41'),
(11, 'Gotel Bill Payment', 5000, 'Sheik Hasina', '2020-08-24 09:39:56'),
(12, 'Splicer', 1000, 'Sheik Hasina', '2020-09-01 13:31:45'),
(13, 'tyu', 230, 'Imran Khan Pk', '2020-09-02 07:50:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', 'bghjgjhg', NULL, NULL, '2019-10-24 07:54:52'),
(2, 'contactus', 'Contact Us', 'D-204, Hole Town South West,Delhi-110096,India', 'info@gmail.com', 8529631237, '2019-10-24 07:56:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblpaid`
--

CREATE TABLE `tblpaid` (
  `id` int(10) NOT NULL,
  `UserID` int(11) NOT NULL,
  `PaidBill` varchar(120) DEFAULT NULL,
  `CollectedBy` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpaid`
--

INSERT INTO `tblpaid` (`id`, `UserID`, `PaidBill`, `CollectedBy`, `CreationDate`) VALUES
(20, 2, '120', 'Imran Khan', '2020-07-03 17:15:51'),
(21, 1, '300', 'Imran Khan', '2020-07-04 02:47:23'),
(22, 2, '200', 'Modi', '2020-07-04 02:47:53'),
(23, 1, '400', 'Imran Khan', '2020-07-04 13:44:19'),
(24, 2, '100', 'Imran Khan', '2020-07-04 14:28:55'),
(25, 1, '10', 'Imran Khan', '2020-07-08 16:01:43'),
(26, 6, '100', 'Imran Khan Pk', '2020-07-18 03:34:37'),
(27, 6, '500', 'Sheik Hasina', '2020-07-29 18:39:25'),
(28, 6, '500', 'Sheik Hasina', '2020-07-29 18:47:49'),
(29, 1, '2000', 'Modi', '2020-07-30 05:59:35'),
(30, 25, '40000', 'Demo 1', '2020-07-31 06:26:39'),
(31, 1, '500', '', '2020-08-10 14:27:12'),
(32, 6, '500', 'sujon', '2020-08-12 12:12:30'),
(33, 25, '1000', 'Demo 1', '2020-08-21 05:42:05'),
(34, 6, '500', 'Demo 1', '2020-08-21 05:49:45'),
(35, 29, '100', 'Imran Khan Pk', '2020-08-21 05:55:30'),
(36, 29, '500', 'sujon', '2020-08-21 06:00:28'),
(37, 6, '100', 'Sheik Hasina', '2020-08-21 06:12:35'),
(38, 6, '600', 'Imran Khan Pk', '2020-08-30 13:55:47'),
(39, 6, '600', 'Imran Khan Pk', '2020-08-30 13:57:19'),
(40, 6, '600', 'Imran Khan Pk', '2020-09-01 07:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblsalary`
--

CREATE TABLE `tblsalary` (
  `SalaryID` int(11) NOT NULL,
  `EmployeeName` text NOT NULL,
  `SalaryAmount` int(11) NOT NULL,
  `SalaryDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsalary`
--

INSERT INTO `tblsalary` (`SalaryID`, `EmployeeName`, `SalaryAmount`, `SalaryDate`) VALUES
(2, 'Modi', 5000, '2020-07-28 17:24:06'),
(3, 'sujon', 200, '2020-07-29 18:42:22'),
(4, 'Imran Khan Pk', 1000, '2020-08-17 20:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServicePrice` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `ServicePrice`, `CreationDate`) VALUES
(15, '1.5 mbps', '500', '2020-08-17 19:47:44'),
(16, '2 mbps', '600', '2020-08-17 19:48:03'),
(18, '3 mbps', '700', '2020-08-17 19:48:34'),
(19, '4 mbps', '800', '2020-08-17 19:48:43'),
(20, '5 Mbps', '1000', '2020-08-17 19:49:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclient`
--
ALTER TABLE `tblclient`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `tblcomplain`
--
ALTER TABLE `tblcomplain`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblconfirmclient`
--
ALTER TABLE `tblconfirmclient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD PRIMARY KEY (`EmployeeId`);

--
-- Indexes for table `tblexpense`
--
ALTER TABLE `tblexpense`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpaid`
--
ALTER TABLE `tblpaid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsalary`
--
ALTER TABLE `tblsalary`
  ADD PRIMARY KEY (`SalaryID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblclient`
--
ALTER TABLE `tblclient`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblcomplain`
--
ALTER TABLE `tblcomplain`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblconfirmclient`
--
ALTER TABLE `tblconfirmclient`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblemployee`
--
ALTER TABLE `tblemployee`
  MODIFY `EmployeeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblexpense`
--
ALTER TABLE `tblexpense`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpaid`
--
ALTER TABLE `tblpaid`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblsalary`
--
ALTER TABLE `tblsalary`
  MODIFY `SalaryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
