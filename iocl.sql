-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 31, 2024 at 08:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iocl`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `USER_ID` int(10) NOT NULL,
  `USERNAME` varchar(30) NOT NULL,
  `EMAIL_ID` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`USER_ID`, `USERNAME`, `EMAIL_ID`, `PASSWORD`) VALUES
(1, 'admin', 'ektaverma241204@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `COMPLAINT_ID` int(11) NOT NULL,
  `USER_ID` int(10) NOT NULL,
  `USER` varchar(30) NOT NULL,
  `SUBJECT` varchar(50) NOT NULL,
  `COMPLAINTS` varchar(200) NOT NULL,
  `DATE` date NOT NULL DEFAULT current_timestamp(),
  `TIME` time NOT NULL DEFAULT current_timestamp(),
  `ACTION` varchar(30) NOT NULL DEFAULT 'PENDING',
  `STATUS` varchar(30) NOT NULL DEFAULT 'PENDING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`COMPLAINT_ID`, `USER_ID`, `USER`, `SUBJECT`, `COMPLAINTS`, `DATE`, `TIME`, `ACTION`, `STATUS`) VALUES
(1, 2, 'B', 'printer not turning on', 'do fix it', '2024-07-07', '00:11:03', 'CONFIRMED', 'PENDING'),
(2, 2, 'B', 'working issue', 'printer not printing nicely\r\n', '2024-07-07', '00:26:02', 'CONFIRMED', 'RESOLVED'),
(3, 1, 'A', 'abab', 'dgwxjgecxkehc', '2024-07-08', '12:46:22', 'pending', 'PENDING'),
(4, 2, 'A', 'fev', 'wfcwev', '2024-07-22', '17:00:14', 'CONFIRMED', 'PENDING'),
(5, 2, 'A', '.l non', '9ubiub', '2024-07-26', '20:51:50', 'PENDING', 'PENDING'),
(6, 2, 'A', 'xsacve', 'krish pgl h\\r\\n', '2024-07-26', '21:56:56', 'PENDING', 'PENDING'),
(7, 2, 'A', 'heloo', 'helllooooo', '2024-07-27', '17:29:12', 'PENDING', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `current_stock`
--

CREATE TABLE `current_stock` (
  `SERIEL_NO` int(30) NOT NULL,
  `OEM` varchar(30) NOT NULL,
  `MODEL` varchar(30) NOT NULL,
  `CARTRIDGE` varchar(30) NOT NULL,
  `QUANTITY` int(20) NOT NULL,
  `alert_sent` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `current_stock`
--

INSERT INTO `current_stock` (`SERIEL_NO`, `OEM`, `MODEL`, `CARTRIDGE`, `QUANTITY`, `alert_sent`) VALUES
(1, 'LEXMARK', 'M1', 'BLACK', 240, 0),
(2, 'LEXMARK', 'M2', 'BLACK', 28, 0),
(3, 'LEXMARK', 'M3', 'BLACK', 15, 0),
(4, 'HP', 'M1', 'CYAN', 23, 0),
(5, 'HP', 'M1', 'MAGENTA', 19, 0),
(6, 'HP', 'M1', 'YELLOW', 24, 0),
(7, 'HP', 'M1', 'BLACK', 18, 0),
(8, 'EPSON', 'M1', 'BLACK', 49, 0),
(9, 'EPSON', 'M1', 'BLACK', 49, 0),
(10, 'FH', 'HF', 'CB', 5, 0),
(11, 'FH', 'HF', 'CB', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `REQUEST_NO` int(10) NOT NULL,
  `USER_ID` int(10) NOT NULL,
  `USER` varchar(30) NOT NULL,
  `OEM` varchar(30) NOT NULL,
  `MODEL` varchar(30) NOT NULL,
  `CARTRIDGE` varchar(20) NOT NULL DEFAULT 'BLACK',
  `DATE` date NOT NULL DEFAULT current_timestamp(),
  `TIME` time NOT NULL DEFAULT current_timestamp(),
  `ACTION` varchar(20) NOT NULL DEFAULT 'PENDING',
  `CONFIRMATION` varchar(20) NOT NULL DEFAULT 'PENDING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`REQUEST_NO`, `USER_ID`, `USER`, `OEM`, `MODEL`, `CARTRIDGE`, `DATE`, `TIME`, `ACTION`, `CONFIRMATION`) VALUES
(1, 1, 'A', 'HP', 'M1', 'CYAN', '2024-07-06', '23:22:34', 'CONFIRMED', 'PENDING'),
(2, 2, 'B', 'LEXMARK', 'M1', 'BLACK', '2024-07-06', '23:30:19', 'CONFIRMED', 'CONFIRMED'),
(3, 2, 'B', 'LEXMARK', 'M1', 'BLACK', '2024-07-06', '23:40:27', 'CONFIRMED', 'PENDING'),
(4, 1, 'A', 'HP', 'M1', 'CYAN', '2024-07-07', '16:51:04', 'CONFIRMED', 'PENDING'),
(5, 1, 'A', 'HP', 'M1', 'CYAN', '2024-07-07', '18:01:57', 'CONFIRMED', 'PENDING'),
(6, 1, 'A', 'HP', 'M1', 'MAGENTA', '2024-07-07', '21:44:26', 'CONFIRMED', 'PENDING'),
(7, 1, 'A', 'HP', 'M1', 'CYAN', '2024-07-08', '09:59:48', 'CONFIRMED', 'CONFIRMED'),
(8, 3, 'C', 'LEXMARK', 'M2', 'BLACK', '2024-07-08', '12:32:06', 'CONFIRMED', 'PENDING'),
(9, 1, 'A', 'HP', 'M1', 'BLACK', '2024-07-08', '12:44:54', 'CONFIRMED', 'PENDING'),
(10, 2, 'B', 'LEXMARK', 'M1', 'BLACK', '2024-07-08', '15:32:52', 'CONFIRMED', 'PENDING'),
(11, 2, 'B', 'LEXMARK', 'M1', 'BLACK', '2024-07-08', '15:33:10', 'CONFIRMED', 'PENDING'),
(12, 3, 'C', 'LEXMARK', 'M2', 'BLACK', '2024-07-10', '12:28:28', 'CONFIRMED', 'PENDING'),
(20, 3, 'C', 'LEXMARK', 'M2', 'YELLOW', '2024-07-10', '15:46:31', 'PENDING', 'CONFIRMED'),
(21, 2, 'B', 'LEXMARK', 'M1', 'BLACK', '2024-07-10', '15:51:49', 'CONFIRMED', 'PENDING'),
(23, 3, 'C', 'LEXMARK', 'M2', 'BLACK', '2024-07-10', '16:43:05', 'CONFIRMED', 'CONFIRMED'),
(25, 3, 'C', 'LEXMARK', 'M2', 'CYAN', '2024-07-10', '22:27:44', 'CONFIRMED', 'CONFIRMED'),
(33, 1, 'A', 'HP', 'M1', 'BLACK', '2024-07-15', '14:42:50', 'CONFIRMED', 'CONFIRMED'),
(34, 1, 'A', 'HP', 'M1', 'BLACK', '2024-07-15', '14:46:50', 'CONFIRMED', 'CONFIRMED'),
(35, 2, 'B', 'LEXMARK', 'M1', 'MAGENTA', '2024-07-16', '10:39:14', 'CONFIRMED', 'CONFIRMED'),
(36, 1, 'A', 'HP', 'M1', 'BLACK', '2024-07-16', '11:15:36', 'CONFIRMED', 'PENDING'),
(37, 2, 'B', 'LEXMARK', 'M1', 'BLACK', '2024-07-16', '11:16:03', 'CONFIRMED', 'CONFIRMED'),
(38, 3, 'C', 'LEXMARK', 'M2', 'YELLOW', '2024-07-16', '11:22:41', 'CONFIRMED', 'PENDING'),
(39, 1, 'A', 'HP', 'M1', 'CYAN', '2024-07-16', '15:30:50', 'CONFIRMED', 'PENDING'),
(40, 2, 'B', 'LEXMARK', 'M1', 'BLACK', '2024-07-16', '15:31:09', 'CONFIRMED', 'CONFIRMED'),
(41, 2, 'B', 'LEXMARK', 'M1', 'BLACK', '2024-07-17', '10:24:16', 'PENDING', 'PENDING'),
(42, 1, 'A', 'HP', 'M1', 'BLACK', '2024-07-17', '12:10:28', 'CONFIRMED', 'PENDING'),
(43, 1, 'A', 'HP', 'M1', 'BLACK', '2024-07-22', '10:58:40', 'CONFIRMED', 'PENDING'),
(44, 1, 'A', 'HP', 'M1', 'BLACK', '2024-07-22', '11:00:44', 'CONFIRMED', 'PENDING'),
(45, 1, 'A', 'HP', 'M1', 'CYAN', '2024-07-22', '16:50:02', 'CONFIRMED', 'CONFIRMED'),
(46, 2, 'B', 'LEXMARK', 'M1', 'BLACK', '2024-07-25', '10:10:04', 'CONFIRMED', 'PENDING'),
(47, 2, 'B', 'LEXMARK', 'M1', 'BLACK', '2024-07-25', '10:10:31', 'CONFIRMED', 'PENDING'),
(48, 1, 'A', 'HP', 'M1', 'BLACK', '2024-07-25', '16:44:18', 'CONFIRMED', 'PENDING'),
(49, 1, 'A', 'HP', 'M1', 'BLACK', '2024-07-25', '16:47:23', 'CONFIRMED', 'CONFIRMED'),
(50, 2, 'A', 'EPSON', 'M1', 'BLACK', '2024-07-26', '16:00:50', 'PENDING', 'PENDING'),
(51, 2, 'A', 'EPSON', 'M1', 'BLACK', '2024-07-26', '16:14:38', 'CONFIRMED', 'PENDING'),
(52, 2, 'A', 'EPSON', 'M1', 'BLACK', '2024-07-26', '21:42:37', 'PENDING', 'PENDING'),
(53, 2, 'A', 'EPSON', 'M1', 'BLACK', '2024-07-26', '21:54:32', 'CONFIRMED', 'CONFIRMED');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `USER_ID` int(11) NOT NULL,
  `USER` varchar(30) NOT NULL,
  `EMAIL_ID` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `USER_TYPE` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`USER_ID`, `USER`, `EMAIL_ID`, `PASSWORD`, `USER_TYPE`) VALUES
(1, 'engineer', 'ektaverma241204@gmail.com', '123', 'engineer'),
(2, 'A', 'ekta24v@gmail.com', '123', 'officer'),
(3, 'B', 'ektaverma@outlook.com', '123', 'user'),
(4, 'C', 'ekta24v@outlook.com', '123', 'user'),
(5, 'officer', 'ekta24v@outlook.com', '123', 'officer');

-- --------------------------------------------------------

--
-- Table structure for table `user_printer_data`
--

CREATE TABLE `user_printer_data` (
  `USER_ID` int(11) NOT NULL,
  `USER` varchar(30) NOT NULL,
  `OEM` varchar(30) NOT NULL,
  `MODEL` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_printer_data`
--

INSERT INTO `user_printer_data` (`USER_ID`, `USER`, `OEM`, `MODEL`) VALUES
(2, 'A', 'LEXMARK', 'M1'),
(3, 'B', 'LEXMARK', 'M1'),
(4, 'C', 'EPSON', 'M1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`COMPLAINT_ID`);

--
-- Indexes for table `current_stock`
--
ALTER TABLE `current_stock`
  ADD PRIMARY KEY (`SERIEL_NO`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`REQUEST_NO`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `user_printer_data`
--
ALTER TABLE `user_printer_data`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `USER_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `COMPLAINT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `current_stock`
--
ALTER TABLE `current_stock`
  MODIFY `SERIEL_NO` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `REQUEST_NO` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_printer_data`
--
ALTER TABLE `user_printer_data`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
