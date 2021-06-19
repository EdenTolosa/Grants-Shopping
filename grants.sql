-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2019 at 07:05 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grants`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `icon` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `icon`) VALUES
(1, 'Ciggies', 'ciggg'),
(2, 'Sexual Wellnes', 'we'),
(3, 'Feminine Hygiene', 'fem'),
(4, 'Accessories', 'ac');

-- --------------------------------------------------------

--
-- Table structure for table `command`
--

CREATE TABLE `command` (
  `id` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `dat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `statut` varchar(1000) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `command`
--

INSERT INTO `command` (`id`, `id_produit`, `quantity`, `dat`, `statut`, `id_user`) VALUES
(126, 14, 1, '2019-10-10 12:43:04', 'paid', 12),
(127, 26, 1, '2019-10-15 17:37:17', 'paid', 18),
(128, 26, 1, '2019-10-15 17:38:47', 'paid', 18),
(129, 26, 1, '2019-10-15 17:39:35', 'paid', 18),
(130, 26, 1, '2019-10-15 17:40:47', 'paid', 18),
(131, 26, 1, '2019-10-15 18:23:31', 'paid', 18),
(132, 26, 1, '2019-10-15 18:23:31', 'paid', 18),
(133, 26, 1, '2019-10-15 18:24:05', 'paid', 18),
(134, 26, 1, '2019-10-15 18:27:15', 'paid', 18),
(135, 26, 1, '2019-10-16 11:29:16', 'paid', 18),
(136, 26, 1, '2019-10-16 11:30:27', 'paid', 18),
(137, 26, 1, '2019-10-16 11:33:14', 'paid', 18),
(138, 26, 1, '2019-10-16 11:35:29', 'paid', 18),
(139, 26, 1, '2019-10-16 11:36:31', 'paid', 18),
(140, 26, 1, '2019-10-16 11:38:33', 'paid', 18),
(142, 33, 1, '2019-10-16 12:14:37', 'paid', 18),
(143, 22, 1, '2019-10-16 12:14:37', 'paid', 18),
(144, 26, 1, '2019-10-18 05:34:53', 'paid', 18),
(147, 22, 1, '2019-10-18 18:35:40', 'paid', 18),
(151, 26, 3, '2019-10-18 19:13:47', 'paid', 18),
(152, 26, 2, '2019-10-18 19:13:47', 'paid', 18),
(153, 22, 2, '2019-10-18 19:17:37', 'paid', 18),
(157, 33, 1, '2019-10-20 16:48:15', 'paid', 18),
(158, 26, 1, '2019-10-20 16:49:15', 'ordered', 18),
(159, 26, 3, '2019-10-20 17:01:31', 'ordered', 18);

-- --------------------------------------------------------

--
-- Table structure for table `details_command`
--

CREATE TABLE `details_command` (
  `id` int(11) NOT NULL,
  `product` varchar(1000) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `id_command` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `user` varchar(1000) NOT NULL,
  `roomnumber` varchar(1000) NOT NULL,
  `residence` varchar(1000) NOT NULL,
  `floor` varchar(1000) NOT NULL,
  `statut` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `picture` varchar(1000) NOT NULL,
  `id_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `picture`, `id_produit`) VALUES
(46, 'Images_End term exam-10.jpg', 18),
(47, 'Images_End term exam-13.jpg', 18),
(48, 'Images_End term exam-09 (2).jpg', 18),
(49, 'ciga.jpeg', 19),
(50, 'mal.jpeg', 19),
(51, 'mall.jpeg', 19),
(52, 'mall.jpeg', 19),
(53, 'mal.jpeg', 19),
(54, 'ciga.jpeg', 19),
(55, 'mall.jpeg', 21),
(56, 'mal.jpeg', 21),
(57, 'ciga.jpeg', 21),
(58, 'Webp.net-resizeimage (7).jpg', 22),
(59, 'Webp.net-resizeimage (8).jpg', 22),
(60, '', 22),
(61, 'Webp.net-resizeimage (11).jpg', 23),
(62, 'Webp.net-resizeimage (10).jpg', 23),
(63, 'Webp.net-resizeimage (9).jpg', 23),
(64, 'Webp.net-resizeimage (10).jpg', 23),
(65, 'Webp.net-resizeimage (11).jpg', 23),
(66, 'Webp.net-resizeimage (9).jpg', 23),
(67, 'Webp.net-resizeimage (10).jpg', 25),
(68, 'Webp.net-resizeimage (11).jpg', 25),
(69, 'Webp.net-resizeimage (9).jpg', 25),
(70, 'Webp.net-resizeimage (12).jpg', 26),
(71, 'Webp.net-resizeimage (5).jpg', 26),
(72, '', 26),
(73, 'Webp.net-resizeimage (13).jpg', 27),
(74, 'Webp.net-resizeimage (14).jpg', 27),
(75, '', 27),
(76, 'Webp.net-resizeimage (16).jpg', 28),
(77, '', 28),
(78, '', 28),
(79, 'Webp.net-resizeimage (17).jpg', 29),
(80, 'Webp.net-resizeimage (18).jpg', 29),
(81, '', 29),
(82, 'kjh.jpg', 30),
(83, 'Webp.net-resizeimage (19).jpg', 30),
(84, '', 30),
(85, 'Webp.net-resizeimage (23).jpg', 31),
(86, 'Webp.net-resizeimage (22).jpg', 31),
(87, '', 31),
(88, '', 32),
(89, '', 32),
(90, '', 32),
(91, 'Webp.net-resizeimage (24).jpg', 33),
(92, '', 33),
(93, '', 33),
(94, 'Webp.net-resizeimage (27).jpg', 34),
(95, '', 34),
(96, '', 34),
(97, 'Webp.net-resizeimage (28).jpg', 35),
(98, '', 35),
(99, '', 35),
(100, 'Webp.net-resizeimage (30).jpg', 36),
(101, 'Webp.net-resizeimage (29).jpg', 36),
(102, '', 36),
(103, 'Webp.net-resizeimage (32).jpg', 37),
(104, 'Webp.net-resizeimage (31).jpg', 37),
(105, '', 37);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` int(11) NOT NULL,
  `id_picture` int(11) NOT NULL,
  `thumbnail` varchar(1000) NOT NULL,
  `promo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_category`, `name`, `description`, `price`, `id_picture`, `thumbnail`, `promo`) VALUES
(21, 1, 'Marlboro', '\"Mild As May\", \"Come to where the flavor is. Come to Marlboro country\", \"You get a lot to like with a Marlboro\"', 30, 21, 'mal.jpeg', ''),
(22, 1, 'Black', 'Black is a filtered kretek cigarette known for its spicy, bold taste and aroma.  ', 30, 22, 'Webp.net-resizeimage (7).jpg', ''),
(25, 1, 'Classic', '\"Hygienic Cigarette\" ', 40, 25, 'Webp.net-resizeimage (9).jpg', ''),
(26, 1, 'Camel Cigarette ', '\"Let\'s cross the desert together!\"', 112, 26, 'Webp.net-resizeimage (12).jpg', ''),
(27, 4, 'Lighter', 'Made from high quality stainless steel.', 160, 27, 'Webp.net-resizeimage (15).jpg', ''),
(29, 4, 'Rolling paper', '', 5, 29, 'Webp.net-resizeimage (17).jpg', ''),
(30, 4, 'Ashtray', '', 300, 30, 'Webp.net-resizeimage (19).jpg', ''),
(31, 4, 'Cigarette case ', 'Good material for longer life which hold Holds 10 regular cigarettes', 350, 31, 'Webp.net-resizeimage (22).jpg', ''),
(32, 2, 'Condom', '\"Make same protected love.\"', 64, 32, 'Webp.net-resizeimage.jpg', ''),
(33, 2, 'I pill', 'Easy to use ovulation home LH Testing Kit test helps tracking ovulation surge with sufficient tests and minimize the chances missing the LH Surge', 140, 33, 'Webp.net-resizeimage (24).jpg', ''),
(35, 3, 'Lily Sanitary pad', 'Hygiene with care', 250, 35, 'Webp.net-resizeimage (26).jpg', ''),
(36, 3, 'Tampon ', 'Quality registered and approved by fda', 200, 36, 'Webp.net-resizeimage (29).jpg', ''),
(37, 3, 'Menstrual Cup', 'Reusable for as long as 10 years and provides 12-hour leak proof-protection against menstrual fluid.', 400, 37, 'Webp.net-resizeimage (31).jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(1000) NOT NULL,
  `lastname` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `roomnumber` varchar(1000) NOT NULL,
  `floor` varchar(1000) NOT NULL,
  `residence` varchar(1000) NOT NULL,
  `role` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `firstname`, `lastname`, `password`, `roomnumber`, `floor`, `residence`, `role`) VALUES
(12, 'edenaskyonatan@gmail.com', 'Eden', 'Tolosa', '962012d09b8170d912f0669f6d7d9d07', 'Addis Ababa', 'Addis Ababa', 'SH2', 'client'),
(13, 'eden@gmail.com', 'eden', 'tolosa', '9632dd8573150fd9e1054c285842ef55', '633', '6', 'SH1', 'admin'),
(18, 'eden.tolosa_ug21@ashoka.edu.in', 'Eden', 'Tolosa', '912ec803b2ce49e4a541068d495ab570', '633', '6', 'SH2', 'client');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `command`
--
ALTER TABLE `command`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details_command`
--
ALTER TABLE `details_command`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `command`
--
ALTER TABLE `command`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `details_command`
--
ALTER TABLE `details_command`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
