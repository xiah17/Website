-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 10:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_tokyo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` int(11) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(1, 48, 'Deluxe Room', 1800, 1800, 25, 'Jalen', '0105626542', 'Sta Cruz'),
(2, 46, 'Standard Room', 1000, 1000, 25, 'Jalen', '09999776665', 'Sta cruz\r\n'),
(3, 50, 'Luxury Room', 2800, 2800, 24, 'Jalen', '08956645646556', 'Sta Cruz'),
(4, 47, 'Supreme Deluxe room', 3800, 3800, 30, 'jalen', '09867877656', 'Sta Cruz\r\n'),
(5, 49, 'Luxury Room', 2800, 2800, 20, 'Jalen', '09754535345', 'Sta Cruz');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
  `order_id` varchar(150) NOT NULL,
  `trans_id` int(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'pending',
  `trans_msg` varchar(200) DEFAULT NULL,
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_msg`, `rate_review`, `datentime`) VALUES
(46, 6, 11, '2023-05-26', '2023-05-30', 0, 0, 'cancelled', '651098769', 6, 6000, 'TNX_SUCCESS', 'Your Transaction has been confirmed', 0, '2023-05-26 11:33:34'),
(47, 8, 11, '2023-09-12', '2023-09-13', 0, 0, 'cancelled', '865039399', 8, 1500, 'TNX_SUCCESS', 'Your Transaction has been confirmed', 0, '2023-09-12 10:55:38'),
(48, 8, 13, '2023-09-12', '2023-09-13', 0, NULL, 'booked', '890601148', 8, 2500, 'TNX_SUCCESS', 'Your Transaction has been confirmed', 1, '2023-09-12 11:01:30'),
(49, 6, 13, '2023-09-13', '2023-09-20', 1, NULL, 'booked', '612037753', 6, 17500, 'TNX_SUCCESS', 'Your Transaction has been confirmed', 0, '2023-09-12 11:22:13'),
(50, 8, 12, '2023-09-13', '2023-09-14', 0, NULL, 'booked', '825841826', 8, 2000, 'TNX_SUCCESS', 'Your Transaction has been confirmed', 0, '2023-09-12 11:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(18, 'IMG_55482.webp'),
(19, 'IMG_69079.jpg'),
(23, 'IMG_58801.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'San Pablo City, Laguna', 'https://maps.app.goo.gl/bCzMEKLaQiQeqFuNA', 63777888992, 63777888992, 'ask.webdev@gmail.com', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://x.com/?lang=en', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d247703.43897821975!2d121.335282!3d14.055538!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd5c96860a894b%3A0xfa9e0f05004f4aca!2sSan%20Pablo%20City%2C%20Laguna!5e0!3m2!1sen!2sph!4v1715682012535!5m2!1sen!2sph');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(13, 'IMG_94418.svg', 'Wifi', 'Our network solutions are custom-engineered for the unique needs of hotels, resorts, casinos, and other commercial venues, ensuring stable, secure, high-speed internet connection at all times.'),
(15, 'IMG_30538.svg', 'Room Heater', 'We offer complimentary room heaters during winter. Room heaters can also be provided on request during unseasonal temperature drops.'),
(16, 'IMG_25034.svg', 'Air Conditioner', 'Air conditioners don’t just regulate indoor temperature, they also keep the indoor space quiet, making it a conducive space for guests to relax, have quiet meals, and talk to their companions.'),
(17, 'IMG_87627.svg', 'Spa', 'A hotel spa is a wellness center located inside a hotel, that offers a variety of health and wellness treatments, such as massages, facial treatments, and even nail and hairdressing services.'),
(20, 'IMG_94007.svg', 'Television', 'Our Interactive Hotel TV solution utilizes IP Television (IPTV) to securely deliver content from multiple sources to a supported set-top box, media player or Smart TV in-room or across the property on your local network.'),
(22, 'IMG_19014.svg', 'Coffee Machine', 'Discover the ultimate coffee experience with this stylish and reliable machine. Enjoy powerful espresso, perfect cappuccino and delicious coffee. An all-rounder for the ultimate taste experience.');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(35, 'balcony'),
(36, 'Kitchen'),
(37, 'bedroom'),
(39, 'desk');

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating_review`
--

INSERT INTO `rating_review` (`sr_no`, `booking_id`, `room_id`, `user_id`, `rating`, `review`, `seen`, `datentime`) VALUES
(1, 48, 24, 6, 10, 'Nice', 0, '2024-06-19 15:56:10'),
(2, 46, 11, 6, 8, 'Good', 0, '2024-06-19 16:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(1, 'Standard Room', 398, 1000, 4, 2, 2, 'Bright and airy, these rooms are bathed in natural sunlight during the day, while subtle lighting creates a relaxing retreat in the evening. The rooms also feature updated technology touch points, such as new high-definition smart TVs and bedside table multi-chargers.', 1, 0),
(2, 'Deluxe Room', 441, 1800, 8, 5, 3, 'Deluxe Room offers an incredible retreat enhanced with comfort and elegant furnishings, perfect for your holidays or business trip.', 1, 0),
(3, 'Luxury Room', 947, 2800, 11, 7, 4, 'The subtle elegance of the décor reflects a vibrant tropical style, complemented by locally sourced wood surfaces that add warmth and depth. The finest linens and softest pillows on generous king configurations make this room option an oasis of calm and tranquility.', 1, 0),
(4, 'Supreme Deluxe Room', 1496, 3800, 15, 10, 5, 'Fancy an elevated hotel experience? Our Supreme Deluxe Room features elegant traditional Filipino interiors that creates a sensation of timeless comfort. Enjoy a great night’s sleep and snuggle in our king-sized bed and in-house amenities.', 1, 0),
(5, 'sogo', 51, 1, 5, 3, 3, 'galing', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(186, 1, 13),
(187, 1, 15),
(188, 1, 16),
(189, 1, 20),
(190, 2, 15),
(191, 2, 16),
(192, 2, 17),
(193, 2, 20),
(194, 3, 13),
(195, 3, 15),
(196, 3, 16),
(197, 3, 17),
(198, 3, 20),
(199, 4, 15),
(200, 4, 16),
(201, 4, 17),
(202, 4, 20);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(121, 1, 36),
(122, 1, 37),
(123, 1, 39),
(124, 2, 35),
(125, 2, 36),
(126, 2, 37),
(127, 2, 39),
(128, 3, 35),
(129, 3, 36),
(130, 3, 37),
(131, 3, 39),
(132, 4, 35),
(133, 4, 36),
(134, 4, 37),
(135, 4, 39);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(11, 1, 'IMG_78788.jpg', 1),
(18, 4, 'IMG_11720.jpg', 1),
(20, 2, 'IMG_88863.jpg', 1),
(21, 3, 'IMG_80760.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'Tokyo Hotel', 'Ours is a story driven by an enduring passion for customer service. From pioneering the concept of Asian hospitality, we have radically changed the face of Asia\'s urban landscape and influenced the way people connect and engage with each other.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(1, '', 'jalen.1720@gmail.com', 'Sta Cruz', '988335653', 4000, '2024-05-07', 'IMG_62880.jpeg', '$2y$10$C6whSQFZQiECQVk4GrXlnOmy1y06NtBTd.fCaGLzSS7fJmL8Bw4bO', 1, '1feeafaa8185b45e9e1ad814ac7391d5', '2024-06-08', 1, '2024-06-07 19:52:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `date`, `seen`) VALUES
(0, 'Jalen', 'ask.webdev@gmail.com', 'Sasazxxxefwffwef', 'grdsfggf', '2024-06-19', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room id` (`room_id`),
  ADD KEY `facilities id` (`facilities_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `rm id` (`room_id`),
  ADD KEY `features id` (`features_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
