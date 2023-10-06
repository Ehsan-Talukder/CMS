-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2023 at 01:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `branch_phone` varchar(110) NOT NULL,
  `branch_address` varchar(255) NOT NULL,
  `branch_manager_name` varchar(255) NOT NULL,
  `branch_manager_phone` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branch_name`, `branch_phone`, `branch_address`, `branch_manager_name`, `branch_manager_phone`) VALUES
(1, 'Dhaka', '0111111111', 'Dhaka', 'AMRAA', '01211111111'),
(2, 'Chittagong', '0111111111', 'Chittagong', 'AMi', '3242342');

-- --------------------------------------------------------

--
-- Table structure for table `courier_package`
--

CREATE TABLE `courier_package` (
  `id` int(11) NOT NULL,
  `c_number` varchar(100) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `pickup_type` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `s_phone` varchar(110) NOT NULL,
  `s_address` varchar(255) NOT NULL,
  `r_name` varchar(255) NOT NULL,
  `r_phone` varchar(110) NOT NULL,
  `r_address` varchar(255) NOT NULL,
  `c_charge` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `due_amount` int(11) NOT NULL,
  `shipping_status` int(11) NOT NULL,
  `thana` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL,
  `sender_branch` varchar(120) NOT NULL,
  `driver_name` varchar(255) NOT NULL,
  `vehicle_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courier_package`
--

INSERT INTO `courier_package` (`id`, `c_number`, `category_name`, `branch_name`, `pickup_type`, `date`, `status`, `sender_name`, `s_phone`, `s_address`, `r_name`, `r_phone`, `r_address`, `c_charge`, `paid_amount`, `due_amount`, `shipping_status`, `thana`, `district`, `division`, `sender_branch`, `driver_name`, `vehicle_number`) VALUES
(6, '230803001', 'SOMETHING', 'Chittagong', 'branch delivery', 'Thursday 3rd of August 2023', 'Normal', 'Shifat E Rasul', '342342', 'adsfadf', 'Noone', '3345345', '', 123, 123, 0, 2, '', '', '', 'Dhaka', 'dfweu', 'fajrq423293'),
(7, '230803007', 'Fast Food', 'Chittagong', 'branch delivery', 'Thursday 3rd of August 2023', 'Normal', 'afadfa', '342434', 'asfadfa', 'adfasdfasd', '34234', '', 23, 23, 0, 2, '', '', '', 'Dhaka', '', 'Dhaka Metro - la 45-0196'),
(8, '230803008', 'Fast Food', 'Dhaka', 'branch delivery', 'Thursday 3rd of August 2023', 'Normal', 'dfadfa', '34324', 'wwerwer', 'werewrew', '45345435', '', 123, 123, 0, 3, '', '', '', 'Chittagong', '', 'Dhaka Metro - la 45-0196'),
(9, '230803009', 'fast food', 'Dhaka', 'branch delivery', 'Thursday 3rd of August 2023', 'Conditional', 'Foody', '234234', 'asfda', 'Noone', '3243', '', 123, 123, 0, 3, '', '', '', 'Chittagong', '', 'Dhaka Metro - la 45-0196'),
(10, '2308030010', 'Fast Food', 'Dhaka', 'branch delivery', 'Thursday 3rd of August 2023', 'Normal', 'adfasdfa', '32432', 'adfadsf', 'adfad', '3423423', '', 123, 123, 0, 3, '', '', '', 'Chittagong', '', 'Dhaka Metro - la 45-0196'),
(11, '2308030011', 'fast food', 'Dhaka', 'branch delivery', 'Thursday 3rd of August 2023', 'Normal', 'adfad', '324234', 'adfadf', '23dafadf', '3342334', '', 34, 34, 0, 3, '', '', '', 'Chittagong', '', 'Dhaka Metro - la 45-0196'),
(12, '2308030012', 'Fast Food', 'Chittagong', 'branch delivery', 'Thursday 3rd of August 2023', 'Due Available', 'Shifat E Rasul', '324234', 'fadfaf', 'adsfadsfa', '32432', '', 32, 23, 9, 1, '', '', '', 'All', 'afdaen34', 'sfaifjre334'),
(13, '2308060013', 'Fast Food', 'Dhaka', 'branch delivery', 'Sunday 6th of August 2023', 'Normal', 'Someone', '011', 'Somewhere', 'Noone', '022', '', 120, 120, 0, 2, '', '', '', 'All', 'Admin', 'Dhaka Metro LA-36-4391'),
(14, '2308060014', 'wrer', 'Dhaka', 'branch delivery', 'Sunday 6th of August 2023', 'Normal', 'werewrwe', '3423423', 'sfdgsfg', 'eretr', '534534', '', 123, 123, 0, 3, '', '', '', 'All', 'Admin', 'Dhaka Metro LA-36-439'),
(15, '2308060015', 'fast food', '', 'home', 'Sunday 6th of August 2023', 'Normal', 'dfgsdfg', '34545', 'sfgdgf', 'sfgdf', '345435', '', 123, 123, 0, 3, '', '', '', 'All', 'Ehsan Talukder', 'Dhaka Metro - la 45-0196');

-- --------------------------------------------------------

--
-- Table structure for table `earning`
--

CREATE TABLE `earning` (
  `id` int(11) NOT NULL,
  `c_num` varchar(100) NOT NULL,
  `froms` varchar(234) NOT NULL,
  `tos` varchar(233) NOT NULL,
  `status` varchar(12) NOT NULL,
  `reason` varchar(122) NOT NULL,
  `branch` varchar(123) NOT NULL,
  `ammount` int(11) NOT NULL,
  `dates` varchar(122) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `earning`
--

INSERT INTO `earning` (`id`, `c_num`, `froms`, `tos`, `status`, `reason`, `branch`, `ammount`, `dates`, `month`, `year`) VALUES
(1, '230803009', 'asfda', 'Dhaka', 'earning', 'Currrier Booking', 'asfda', 123, '', 0, 0),
(2, '2308030010', 'adfadsf', 'Dhaka', 'earning', 'Currrier Booking', 'adfadsf', 123, 'Thursday 3rd of August 2023', 8, 0),
(3, '2308030011', 'adfadf', 'Dhaka', 'earning', 'Currrier Booking', 'adfadf', 34, 'Thursday 3rd of August 2023', 8, 0),
(4, '2308030012', 'fadfaf', 'Chittagong', 'earning', 'Currrier Booking', 'fadfaf', 32, 'Thursday 3rd of August 2023', 8, 23),
(5, '2308060013', 'Somewhere', 'Dhaka', 'earning', 'Currrier Booking', 'Somewhere', 120, 'Sunday 6th of August 2023', 8, 23),
(6, '2308060014', 'sfdgsfg', 'Dhaka', 'earning', 'Currrier Booking', 'sfdgsfg', 123, 'Sunday 6th of August 2023', 8, 23),
(7, '2308060015', 'sfgdgf', 'Dhaka', 'earning', 'Currrier Booking', 'sfgdgf', 123, 'Sunday 6th of August 2023', 8, 23),
(8, '2308080016', 'adfadsfad', 'Dhaka', 'earning', 'Currrier Booking', 'adfadsfad', 3323, 'Tuesday 8th of August 2023', 8, 23);

-- --------------------------------------------------------

--
-- Table structure for table `employee_list`
--

CREATE TABLE `employee_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nid` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `vehicle_number` varchar(110) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_list`
--

INSERT INTO `employee_list` (`id`, `name`, `username`, `nid`, `designation`, `salary`, `vehicle_number`, `branch`, `image`, `password`) VALUES
(3, 'Ehsan Talukder', '014', 2147483647, 'Driver', 3000, '', 'Dhaka', '213743260_328726605585368_7842991975151222907_n.jpg', '111'),
(4, 'Ehsan Talukder', '098', 2147483647, 'Driver', 3000, '3543453', 'Dhaka', '213743260_328726605585368_7842991975151222907_n.jpg', '111'),
(5, 'Ehsan Talukder', '111', 2147483647, 'Admin', 3000, '', 'Chittagong', '86rNtIurWJQcUDXViiykwSBbNcW.webp', '111');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_details`
--

CREATE TABLE `shipping_details` (
  `id` int(11) NOT NULL,
  `delivaryman_name` varchar(255) NOT NULL,
  `delivaryman_phone` varchar(255) NOT NULL,
  `vehicle_number` varchar(255) NOT NULL,
  `courier_code` int(11) NOT NULL,
  `shipping_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_assign`
--

CREATE TABLE `vehicle_assign` (
  `id` int(11) NOT NULL,
  `vehicle_number` varchar(110) NOT NULL,
  `driver_name` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` timestamp NULL DEFAULT current_timestamp(),
  `driver_number` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_assign`
--

INSERT INTO `vehicle_assign` (`id`, `vehicle_number`, `driver_name`, `date`, `time`, `driver_number`) VALUES
(1, 'Dhaka Metro - la 45-0196', 'Ehsan Talukder-0111111112', '2023-08-03', '2023-08-03 06:51:24', ''),
(2, 'Dhaka Metro LA-36-4391', '0111111112', '2023-08-06', '2023-08-06 10:22:35', ''),
(3, 'Dhaka Metro LA-36-4391', '0111111112', '2023-08-06', '2023-08-06 10:23:43', ''),
(4, 'Dhaka Metro LA-36-4391', '0111111112', '2023-08-06', '2023-08-06 10:24:13', ''),
(5, 'Dhaka Metro LA-36-4391', '0111111112', '2023-08-06', '2023-08-06 10:24:29', ''),
(6, 'Dhaka Metro LA-36-4391', '', '2023-08-06', '2023-08-06 10:24:58', ''),
(7, 'Dhaka Metro LA-36-4391', '', '2023-08-06', '2023-08-06 10:26:10', ''),
(8, '45tgqearfsg', '', '2023-08-08', '2023-08-08 07:08:07', '');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_list`
--

CREATE TABLE `vehicle_list` (
  `id` int(11) NOT NULL,
  `vehicle_number` varchar(255) NOT NULL,
  `driver_name` varchar(255) DEFAULT NULL,
  `driver_number` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_list`
--

INSERT INTO `vehicle_list` (`id`, `vehicle_number`, `driver_name`, `driver_number`) VALUES
(1, 'Dhaka Metro LA-36-4391', 'Ehsan Talukder', '098'),
(2, 'Dhaka Metro - la 45-0196', 'Ehsan Talukder-0111111112', ''),
(3, '45tgqearfsg', 'Ehsan Talukder', '014');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courier_package`
--
ALTER TABLE `courier_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earning`
--
ALTER TABLE `earning`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_list`
--
ALTER TABLE `employee_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_details`
--
ALTER TABLE `shipping_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_assign`
--
ALTER TABLE `vehicle_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_list`
--
ALTER TABLE `vehicle_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courier_package`
--
ALTER TABLE `courier_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `earning`
--
ALTER TABLE `earning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee_list`
--
ALTER TABLE `employee_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shipping_details`
--
ALTER TABLE `shipping_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_assign`
--
ALTER TABLE `vehicle_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicle_list`
--
ALTER TABLE `vehicle_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
