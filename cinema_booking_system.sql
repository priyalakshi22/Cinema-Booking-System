-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2026 at 04:53 PM
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
-- Database: `cinema_booking_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `cinemaservice`
--

CREATE TABLE `cinemaservice` (
  `service_id` int(15) DEFAULT NULL,
  `show_time` int(11) DEFAULT NULL,
  `movies` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cinemaservice`
--

INSERT INTO `cinemaservice` (`service_id`, `show_time`, `movies`) VALUES
(1, 16, 'Frozen 2 Avengers'),
(2, 18, 'Trolll 2'),
(3, 14, 'The Lion King Avatar');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `password` int(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `booking_id`, `customer_name`, `password`, `email`, `phone`) VALUES
(15, 301, 'Sri Milan', 0, 'milan12@gmail.com', '+94712382723'),
(16, 302, 'Medhani Niwoda', 0, 'medhani@gmail.com', '+94708327456'),
(17, 303, 'Pulindu Bandara', 0, 'pulindu@gmail.com', '+94789654435'),
(18, 304, 'Kamal Perera', 0, 'kamal@gmail.com', '+94719654455'),
(19, 305, 'Sanduni Priyalakshi', 0, 'sanduni@gmail.com', '+94769659001');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(10) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `price` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `title`, `duration`, `price`) VALUES
(101, 'The Lion King', '02:00:00', 800.00),
(102, 'Avatar 2', '03:00:30', 1500.00),
(103, 'Avengers', '02:30:00', 1000.00),
(104, 'Frozen 2', '01:45:00', 1000.00),
(105, 'Troll 2', '02:30:00', 800.00);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(12) NOT NULL,
  `person_name` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `person_name`, `email`) VALUES
(200002, 'Pulindu Ba', 'pulindu@gmail.com'),
(200102, 'Sri Milan', 'milan12@gmail.com'),
(200203, 'Kamal Pere', 'Kamal01@gmail.com'),
(200401, 'Medhani Ni', 'medhani7@gmail.com'),
(200505, 'Sanduni Pr', 'sanduni@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `showtime`
--

CREATE TABLE `showtime` (
  `showtime_id` int(12) NOT NULL,
  `movie_id` int(10) DEFAULT NULL,
  `hall` varchar(10) DEFAULT NULL,
  `show_time` time DEFAULT NULL,
  `available_seat` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `showtime`
--

INSERT INTO `showtime` (`showtime_id`, `movie_id`, `hall`, `show_time`, `available_seat`) VALUES
(1, 101, 'Hall A', '14:00:00', 50),
(2, 102, 'Hall B', '14:00:00', 45),
(3, 103, 'Hall C', '16:00:00', 35),
(4, 104, 'Hall C', '16:00:00', 30),
(5, 105, 'Hall B', '18:30:00', 48);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `showtime`
--
ALTER TABLE `showtime`
  ADD PRIMARY KEY (`showtime_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
