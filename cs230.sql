-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2020 at 05:29 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE `objects` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `uname` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `picpath` varchar(50) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'uploads/anon.png',
  `bio` mediumtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`uname`, `picpath`, `bio`) VALUES
('test', 'uploads/anon.png', NULL),
('z', '../uploads/5f7671a699a4a3.66715342.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rev_id` int(11) NOT NULL COMMENT 'review id',
  `item_id` int(11) NOT NULL COMMENT 'item id to be reviewed',
  `uname` varchar(80) NOT NULL COMMENT 'user who will review it',
  `title` varchar(0) NOT NULL,
  `review_text` text NOT NULL,
  `rev_date` datetime NOT NULL,
  `rating_num` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT 'Is there at least 1 review'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `lname`, `fname`, `email`, `uname`, `password`) VALUES
(1, 'Arian', 'Samus', 'metroid@cs230.com', 'samus', '$2y$12$23GAddqSDCwgbH/Bpaps5eRqx6ZJejsR9Rbxx28azN9PsPB6TYfW6'),
(2, 'ddf', 'ssd', 'jb@cs230.com', 'jbooz', '$2y$10$wtGR1lnTYqPWhqO7K3qG/OL6M5qp1qPn7TB5kWkcUzpF38ItWofGe'),
(3, 'dkhdfh', 'fjldfh', 'test@h.com', 'test', '$2y$10$9I2ZmqW6R.WIejC8uLGyAuKdjgjKYGSws1IR2wqP.80p0Eo4B6w0m'),
(4, 'u', 't', 'x@wv', 'x', '$2y$10$z0CkhcPiI4RJ9rjLhRkNMeSHV1nvItB7AIiN628Psboe.MjV6nOM2'),
(5, 'test2', 'test1', 't@t.com', 'test1', '$2y$10$VaxxgyA9l6JmXIKSyA8MAeryOTLeHlcOo5cS94OCcussgNUr82Lwa'),
(6, 'tt', 't', 't2@t.com', 't2', '$2y$10$bLND//GFQ7oaeYy36z2wxOMqyLrJ4U1qN94UqpXnn5Gi61Wtkwy0W'),
(7, 't', 'y', 'y@y.com', 'y', '$2y$10$TNZokSJ0dABDMFC/wMM9d.uoanIic0PWAEwMM/DDOu6V0y8N5A6hi'),
(8, 'v', 't', 'z@z.com', 'z', '$2y$10$iGjgwF5mxMzdyaUqlyLhwu5JZYzep2NNEjx1u1xPzsm0T14GAbLAq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rev_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `objects`
--
ALTER TABLE `objects`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'review id';

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
