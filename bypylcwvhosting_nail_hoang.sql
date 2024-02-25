-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2024 at 02:50 PM
-- Server version: 10.5.22-MariaDB-cll-lve-log
-- PHP Version: 8.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bypylcwvhosting_nail_hoang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about_us`
--

CREATE TABLE `tbl_about_us` (
  `id_about_us` int(11) NOT NULL,
  `about_content` text NOT NULL,
  `about_title` text NOT NULL,
  `url_image` text NOT NULL,
  `detail_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_about_us`
--

INSERT INTO `tbl_about_us` (`id_about_us`, `about_content`, `about_title`, `url_image`, `detail_about`) VALUES
(2, 'Let’s visit, have a relaxing time, and become prettier after enjoying high-end services at one of the best Nail Salons in Salt Lake City: Nellie\'s Hair & Nail Specialists Conveniently located in Salt Lake City, UT 84129, our nail salon is proud to deliver the highest quality treatments to our customers.Our nail salon is dedicated to bringing top of the line products mixed with expert technique to the nail salon industry. Offering services such as Hair and Nails allows us to be a one-stop destination for those looking for a complete rejuvenating experience. The friendly staff creates an atmosphere of urban relaxation. We are always trying to be innovative with design and trend, always up-to-date with what the industry has to offer.We understand the importance of maintaining a healthy, safe environment for all of our valued guests. That is why we clean, disinfect and sanitize all of our instruments and equipment for all services and treatments. We pledge to adhere to the highest industry standards.Visit us today and experience the combination of luxury and elegance. Our nail salon looks forward to seeing you!', 'NELLIE\'S HAIR & NAIL SPECIALISTS', 'about_us_2.jpg\r\n', 'Our nail salon is dedicated to bringing top of the line products mixed with expert te chnique to the nail salon industry. Offering services such as Hair and Nails allows us to be a one-stop destination for those looking for a complete rejuvenating experience. The friendly staff creates an atmosphere of urban relaxation. We are always trying to be innovative with design and trend, always up-to-date with what the industry has to offer.We understand the importance of maintaining a healthy, safe environment for all of our valued guests. That is why we clean, disinfect and sanitize all of our instruments and equipment for all services and treatments. We pledge to adhere to the highest industry standards.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id_contact` int(11) NOT NULL,
  `name_contact` int(11) NOT NULL,
  `email_contact` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupons`
--

CREATE TABLE `tbl_coupons` (
  `id_coupons` int(11) NOT NULL,
  `title_coupons` text NOT NULL,
  `image_coupons` text NOT NULL,
  `name_couponts` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_coupons`
--

INSERT INTO `tbl_coupons` (`id_coupons`, `title_coupons`, `image_coupons`, `name_couponts`) VALUES
(1, 'Max giam gai', 'coupons.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_image`
--

CREATE TABLE `tbl_detail_image` (
  `id_image` int(11) NOT NULL,
  `image_url` text NOT NULL,
  `image_title` text NOT NULL,
  `id_detail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_detail_image`
--

INSERT INTO `tbl_detail_image` (`id_image`, `image_url`, `image_title`, `id_detail`) VALUES
(1, 'service_13.jpg', 'MANICURE CLASSIC', 1),
(2, 'service_14.jpg', 'SHELLAC MANICURE', 2),
(5, 'service_15.jpg', 'MILK AND HONEY MANICURE', 3),
(6, 'service_6.jpg', 'CUCUMBER MANICURE', 4),
(7, 'service_7.jpg', 'NU SKIN MANICURE', 5),
(8, 'service_home_1.jpg', 'LAVENDER MANICURE', 6),
(9, 'service_9.jpg', 'FULL SET COLOR', 7),
(10, 'service_12.jpg', 'FULL SET PEARL / WHITE TIP', 8),
(11, 'service_11.jpg', 'SHELLAC FULL SET', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_service`
--

CREATE TABLE `tbl_detail_service` (
  `id_detail` int(11) NOT NULL,
  `name_detail` text NOT NULL,
  `id_service` int(11) NOT NULL,
  `price_detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_detail_service`
--

INSERT INTO `tbl_detail_service` (`id_detail`, `name_detail`, `id_service`, `price_detail`) VALUES
(1, 'BASIC MANI W/CUTICLE CARE', 1, '25 '),
(2, 'EXFOLIATING MANI\r\n', 1, '30'),
(3, 'DELUXE EUROPEAN MANI', 1, '35'),
(4, 'ULTIMATE SPA MANI', 1, '45'),
(5, 'GEL MANICURE', 1, '35'),
(6, 'SPORTS MANI FOR MEN', 1, '30'),
(7, 'Express Pedi\r\n', 4, '25'),
(8, 'Special Care Pedi', 4, '50'),
(9, 'Basic Pedi with Ingrow', 4, '35'),
(10, 'Basic Pedi', 4, '35'),
(11, 'Deluxe Pedi', 4, '40'),
(12, 'Ultimate Spa Pedi', 4, '55'),
(13, '10 MINUTES', 5, '18'),
(14, 'GEL X FULL SET', 2, '55'),
(15, 'REGULAR ACRYLIC', 4, '50'),
(16, 'REGULAR WHITE TIP', 2, '50'),
(17, 'FULL SET W GEL', 2, '50'),
(18, 'SOLAR WHITE TIPS', 2, '50'),
(19, 'FULL NAIL GLITTER SET', 2, '50'),
(20, 'PINK & WHITE NEW SET', 2, '50'),
(21, 'GLITTER TIPS', 2, '55'),
(22, 'FILL W/SHELLAC\r\n', 2, '40'),
(23, 'DIPPING\r\n', 2, '40'),
(24, 'OMBRE FULL SET', 2, '5'),
(25, 'Sports Pedi For Men', 4, '40'),
(26, 'Remove Gel', 4, '5'),
(27, 'Add Gel to Pedis', 4, '15'),
(28, 'Add Paraffin Wax Dip', 4, '8'),
(29, 'Remove Extra Calluses\r\n', 4, '8'),
(30, '15 MINUTES', 5, '25'),
(31, '20 MINUTES', 5, '33'),
(32, '30 MINUTES', 5, '40'),
(33, 'MANICURE', 6, '10'),
(34, 'PEDICURE', 6, '25'),
(35, 'MANICURE', 6, '15'),
(36, 'PEDICURE', 6, '25'),
(37, 'POLISH CHANGE', 6, '15'),
(38, '2 FINGER DESIGNS', 6, '5'),
(39, 'FRENCH DESIGN', 7, '10'),
(40, 'COLOR CHANGE', 7, '15'),
(41, 'FRENCH COLOR CHANGE', 7, '15'),
(42, '2 FINGERS DESIGN', 7, '5'),
(43, '10 FINGERS DESIGNS\r\n', 7, '15'),
(44, 'ACRYLIC REMOVAL', 7, '15'),
(45, 'ACRYLIC REMOVAL W/MANI', 7, '35'),
(46, 'ACRYLIC REMOVAL W/NEW SET\r\n', 7, '10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_evaluate`
--

CREATE TABLE `tbl_evaluate` (
  `id_evaluate` int(11) NOT NULL,
  `name_evaluate` text NOT NULL,
  `position` text NOT NULL,
  `url_image` text NOT NULL,
  `content_evaluate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_evaluate`
--

INSERT INTO `tbl_evaluate` (`id_evaluate`, `name_evaluate`, `position`, `url_image`, `content_evaluate`) VALUES
(1, 'John Larson', 'Entrepreneur', 'user_2.jpg\r\n', 'My toes were absolutely awful after quarantine. I came in and saw Vanessa, and she was nothing short of amazing! She was very detailed and took her time with my pedicure'),
(2, 'Saul Goodman', 'Ceo &amp; Founder', 'user_1.jpg', 'Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.\r\n'),
(3, 'Sara Wilsson', 'Designer', 'user_3.jpg', 'Love the quality of service here. Nice atmosphere as far as cleanliness and the decor. Love my tech there named Kim. Great promos throughout the year. Highly suggest the hot stone pedicure treat yourself don’t cheat yourself! Great prices as well'),
(4, 'Jena Karlis', 'Store Owner', 'user_4.jpg', 'All pedicure procedures are performed with a protective liner. And best of all, staff are trained to follow proper cleaning procedures, putting customer hygiene first. I\'m very satisfied'),
(5, 'Matt Brandon', 'Freelancer', 'user_5.jpg', 'The staff here are very cheerful and sociable, enthusiastically advising customers. Please come here and experience it. Thank you for your dedicated service');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id_gallary` int(11) NOT NULL,
  `title_gallery` text NOT NULL,
  `image_gallery` text NOT NULL,
  `name_gallery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id_gallary`, `title_gallery`, `image_gallery`, `name_gallery`) VALUES
(1, 'anh 1', 'lary_1.png', ''),
(2, '', 'lary_2.png', ''),
(3, '', 'lary_3.png', ''),
(4, '', 'lary_4.png', ''),
(5, '', 'lary_5.png', ''),
(6, '', 'lary_6.png', ''),
(7, '', 'lary_7.png', ''),
(8, '', 'lery_8.png', ''),
(9, '', 'lary_9.png', ''),
(10, '', 'lary_10.png', ''),
(11, '', 'lary_11.png', ''),
(12, '', 'lary_12.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home_bout`
--

CREATE TABLE `tbl_home_bout` (
  `id_home` int(11) NOT NULL,
  `content_about` text NOT NULL,
  `detail_about` text NOT NULL,
  `title_about` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_home_bout`
--

INSERT INTO `tbl_home_bout` (`id_home`, `content_about`, `detail_about`, `title_about`) VALUES
(1, 'Let’s visit, have a relaxing time, and become prettier after enjoying high-end services at one of the best Nail Salons in Salt Lake City: Nellie\'s Hair & Nail Specialists', 'Our nail salon is dedicated to bringing top of the line products mixed with expert technique to the nail salon industry. Offering services such as Hair and Nails allows us to be a one-stop destination for those looking for a complete rejuvenating experience. The friendly staff creates an atmosphere of urban relaxation. We are always trying to be innovative with design and trend, always up-to-date with what the industry has to offer.\r\n', 'NELLIE\'S HAIR & NAIL SPECIALISTS'),
(2, 'Visit us today and experience the combination of luxury and elegance. Our nail salon looks forward to seeing you!', '', ''),
(3, 'We are always trying to be innovative with design and trend, always up-to-date with what the industry has to offer.', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image_about`
--

CREATE TABLE `tbl_image_about` (
  `id_images` int(11) NOT NULL,
  `tittle_image` text NOT NULL,
  `url_image` text NOT NULL,
  `id_about` int(11) NOT NULL,
  `quanty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image_post`
--

CREATE TABLE `tbl_image_post` (
  `id_images` int(11) NOT NULL,
  `tittle_image` text NOT NULL,
  `url_image` text NOT NULL,
  `id_posts` int(11) NOT NULL,
  `quanty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image_service`
--

CREATE TABLE `tbl_image_service` (
  `id_image` int(11) NOT NULL,
  `title_image` text NOT NULL,
  `url_image` text NOT NULL,
  `id_service` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_image_service`
--

INSERT INTO `tbl_image_service` (`id_image`, `title_image`, `url_image`, `id_service`) VALUES
(1, 'service 1', 'detail_1.png', 1),
(2, 'service 2', 'detail_2.jpg\r\n', 2),
(3, 'service 3', 'detail_3.png', 4),
(4, 'service 4', 'detail_4.png', 5),
(5, 'service 5', 'detail_5.png', 6),
(6, 'service 6', 'detail_6.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info`
--

CREATE TABLE `tbl_info` (
  `id_info` int(11) NOT NULL,
  `title_info` text NOT NULL,
  `url_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_our_service`
--

CREATE TABLE `tbl_our_service` (
  `id_our` int(11) NOT NULL,
  `our_title` text NOT NULL,
  `our_content` text NOT NULL,
  `url_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_our_service`
--

INSERT INTO `tbl_our_service` (`id_our`, `our_title`, `our_content`, `url_image`) VALUES
(1, 'Experience the service', 'Our nail salon is dedicated to bringing top of the line products mixed with expert technique to the nail salon industry', 'sevice_home_6.jpg'),
(2, 'Trend', 'We are always trying to be innovative with design and trend, always up-to-date with what the industry has to offer.', 'service_15.jpg'),
(3, 'Experience now', 'Visit us today and experience the combination of luxury and elegance. Our nail salon looks forward to seeing you!', 'service_11.jpg'),
(4, 'Service', 'Let’s visit, have a relaxing time, and become prettier after enjoying high-end services at one of the best Nail Salons in Salt Lake City: Nellie\'s Hair & Nail Specialists', 'service_16.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` text DEFAULT NULL,
  `post_content` text DEFAULT NULL,
  `image_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_content`, `image_url`) VALUES
(4, 'WELCOME TO NELLIE\'S HAIR & NAIL SPECIALISTS', 'Let’s visit, have a relaxing time, and become prettier after enjoying high-end services at one of the best Nail Salons in Salt Lake City: Nellie\'s Hair & Nail Specialists.', 'service_home_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id_service` int(11) NOT NULL,
  `service_name` text NOT NULL,
  `quanty` int(11) NOT NULL,
  `id_detail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id_service`, `service_name`, `quanty`, `id_detail`) VALUES
(1, 'MANICURES', 0, 0),
(2, 'NAIL ENHANCEMENTS', 0, 0),
(4, 'PEDICURES', 0, 0),
(5, 'ADD EXTRA MASSAGE TO ANY MANIS/PEDIS', 0, 0),
(6, 'CHILDREN UNDER 10', 0, 0),
(7, 'EXTRA SERVICES', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`) VALUES
(1, 'thanhphong.vn', '0801d2ccfa948b84a4a5641259a40a2e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about_us`
--
ALTER TABLE `tbl_about_us`
  ADD PRIMARY KEY (`id_about_us`);

--
-- Indexes for table `tbl_coupons`
--
ALTER TABLE `tbl_coupons`
  ADD PRIMARY KEY (`id_coupons`);

--
-- Indexes for table `tbl_detail_image`
--
ALTER TABLE `tbl_detail_image`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `id_detail` (`id_detail`);

--
-- Indexes for table `tbl_detail_service`
--
ALTER TABLE `tbl_detail_service`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_service` (`id_service`);

--
-- Indexes for table `tbl_evaluate`
--
ALTER TABLE `tbl_evaluate`
  ADD PRIMARY KEY (`id_evaluate`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id_gallary`);

--
-- Indexes for table `tbl_home_bout`
--
ALTER TABLE `tbl_home_bout`
  ADD PRIMARY KEY (`id_home`);

--
-- Indexes for table `tbl_image_about`
--
ALTER TABLE `tbl_image_about`
  ADD PRIMARY KEY (`id_images`),
  ADD KEY `id_about` (`id_about`);

--
-- Indexes for table `tbl_image_service`
--
ALTER TABLE `tbl_image_service`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `service_id` (`id_service`);

--
-- Indexes for table `tbl_info`
--
ALTER TABLE `tbl_info`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `tbl_our_service`
--
ALTER TABLE `tbl_our_service`
  ADD PRIMARY KEY (`id_our`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id_service`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about_us`
--
ALTER TABLE `tbl_about_us`
  MODIFY `id_about_us` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_coupons`
--
ALTER TABLE `tbl_coupons`
  MODIFY `id_coupons` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_detail_image`
--
ALTER TABLE `tbl_detail_image`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_detail_service`
--
ALTER TABLE `tbl_detail_service`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_evaluate`
--
ALTER TABLE `tbl_evaluate`
  MODIFY `id_evaluate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id_gallary` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_home_bout`
--
ALTER TABLE `tbl_home_bout`
  MODIFY `id_home` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_image_about`
--
ALTER TABLE `tbl_image_about`
  MODIFY `id_images` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_image_service`
--
ALTER TABLE `tbl_image_service`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_info`
--
ALTER TABLE `tbl_info`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_our_service`
--
ALTER TABLE `tbl_our_service`
  MODIFY `id_our` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_detail_image`
--
ALTER TABLE `tbl_detail_image`
  ADD CONSTRAINT `tbl_detail_image_ibfk_1` FOREIGN KEY (`id_detail`) REFERENCES `tbl_detail_service` (`id_detail`);

--
-- Constraints for table `tbl_detail_service`
--
ALTER TABLE `tbl_detail_service`
  ADD CONSTRAINT `tbl_detail_service_ibfk_1` FOREIGN KEY (`id_service`) REFERENCES `tbl_service` (`id_service`);

--
-- Constraints for table `tbl_image_about`
--
ALTER TABLE `tbl_image_about`
  ADD CONSTRAINT `tbl_image_about_ibfk_1` FOREIGN KEY (`id_about`) REFERENCES `tbl_about_us` (`id_about_us`);

--
-- Constraints for table `tbl_image_service`
--
ALTER TABLE `tbl_image_service`
  ADD CONSTRAINT `tbl_image_service_ibfk_1` FOREIGN KEY (`id_service`) REFERENCES `tbl_service` (`id_service`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
