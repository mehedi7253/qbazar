-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2022 at 10:54 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qbazarcom_webbb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `icon`, `image`, `banner`, `parent_id`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 'food', '<i class=\"icofont-food-basket\"></i>', '162211069760af71e9a0a6c.png', '1644313028620239c4b27da.jpg', NULL, 1, '2021-05-24 01:50:15', '2022-02-08 07:37:08'),
(6, 'beauty-health', '<i class=\"icofont-muscle-weight\"></i>', '162211077360af72357aa52.png', NULL, NULL, 1, '2021-05-25 06:38:12', '2021-07-15 04:24:21'),
(7, 'baby-care', '<i class=\"icofont-baby-food\"></i>', '162211081060af725a7788c.png', NULL, NULL, 1, '2021-05-25 06:57:59', '2021-07-15 04:23:28'),
(8, 'hygiene', '<i class=\"icofont-laboratory\"></i>', '162211084560af727d1fde5.png', NULL, NULL, 1, '2021-05-26 06:17:04', '2021-07-15 04:22:58'),
(9, 'home-cleaning', '<i class=\"icofont-water-bottle\"></i>', '162211088360af72a36252e.png', NULL, NULL, 1, '2021-05-26 06:29:41', '2021-07-15 04:21:23'),
(11, 'medicine', '<i class=\"icofont-medicine\"></i>', '162211092260af72cab9a9e.png', NULL, NULL, 1, '2021-05-26 08:04:29', '2021-07-15 04:13:52'),
(12, 'breakfast', '', 'default-cat.png', '16443116136202343da491c.webp', 4, 1, '2021-05-27 01:05:24', '2022-02-08 07:13:34'),
(13, 'health-care', '', 'default-cat.png', NULL, 6, 1, '2021-05-27 01:05:54', '2021-05-27 01:05:54'),
(14, 'office-products', '<i class=\"icofont-ui-office\"></i>', '162211111160af73870b8bd.png', NULL, NULL, 1, '2021-05-27 02:25:11', '2021-07-15 04:13:25'),
(15, 'kitchen-appliances', '<i class=\"icofont-spoon-and-fork\"></i>', '16279067076107e29307a93.png', NULL, NULL, 1, '2021-05-27 02:27:09', '2021-07-15 04:13:06'),
(27, 'snacks', '', 'default-cat.png', NULL, 4, 1, '2022-01-16 07:28:33', '2022-01-16 07:28:33'),
(30, 'fruits-vegetabels', '', '164241312361e53c43e4559.jpg', NULL, 4, 1, '2022-01-17 07:52:04', '2022-01-17 07:52:04'),
(31, 'fresh-fruits', '', '164241327361e53cd9cf6a3.jpg', NULL, 30, 1, '2022-01-17 07:54:34', '2022-01-17 07:54:34'),
(32, 'vegitables', '', '164241332661e53d0e1717f.jpg', NULL, 30, 1, '2022-01-17 07:55:26', '2022-01-17 07:55:26'),
(33, 'noodles', '', '164241339161e53d4f82034.jpg', NULL, 27, 1, '2022-01-17 07:56:31', '2022-01-17 07:56:31'),
(34, 'soups', '', '164241345461e53d8e04c22.jpg', NULL, 27, 1, '2022-01-17 07:57:34', '2022-01-17 07:57:34'),
(35, 'pasta', '', '164241350661e53dc2207df.jpg', NULL, 27, 1, '2022-01-17 07:58:26', '2022-01-17 07:58:26'),
(36, 'candy', '', '164241358461e53e104aa98.webp', NULL, 27, 1, '2022-01-17 07:59:44', '2022-01-17 07:59:44'),
(37, 'chips-pretzels', '', '164241378061e53ed48e125.jpeg', NULL, 27, 1, '2022-01-17 08:03:00', '2022-01-17 08:03:00'),
(38, 'popcorn-nuts', '', '164241383361e53f092efe4.jpg', NULL, 27, 1, '2022-01-17 08:03:53', '2022-01-17 08:03:53'),
(39, 'biscuits', '', '164241389161e53f432547d.jpg', NULL, 27, 1, '2022-01-17 08:04:51', '2022-01-17 08:04:51'),
(40, 'dairy', '', '164241393161e53f6b8afd9.jpg', NULL, 4, 1, '2022-01-17 08:05:31', '2022-01-17 08:05:31'),
(41, 'liquid-uht-milk', '', '164241398661e53fa23ffc5.jpg', NULL, 40, 1, '2022-01-17 08:06:26', '2022-01-17 08:06:26'),
(43, 'powder-milk-cream', '', '164241410461e54018b7891.jpg', NULL, 40, 1, '2022-01-17 08:08:24', '2022-01-17 08:08:24'),
(44, 'yogurt-sweet', '', '164241416361e54053ce938.jpg', '164371561061f91c1a7e936.PNG', 40, 1, '2022-01-17 08:09:23', '2022-02-01 09:40:10'),
(45, 'frozen-canned', '', '164241420661e5407e0daa9.webp', NULL, 4, 1, '2022-01-17 08:10:06', '2022-01-17 08:10:06'),
(46, 'ice-cream', '', '164241427461e540c2bb2de.jpg', NULL, 45, 0, '2022-01-17 08:11:14', '2022-02-01 09:43:57'),
(47, 'frozen-snacks', '', '164241448861e54198bc18c.jpg', NULL, 45, 1, '2022-01-17 08:14:48', '2022-01-17 08:14:48'),
(48, 'canned-food', '', '164241452561e541bdaf264.jpg', NULL, 45, 1, '2022-01-17 08:15:25', '2022-01-17 08:15:25'),
(49, 'bread-bakery', '', '164241468761e5425f00be1.png', NULL, 4, 1, '2022-01-17 08:18:07', '2022-01-17 08:18:07'),
(50, 'cookies', '', '164241478161e542bda26ed.jpg', NULL, 49, 1, '2022-01-17 08:19:41', '2022-01-17 08:19:41'),
(51, 'bakery-snacks', '', '164241485761e5430939098.jpg', NULL, 49, 1, '2022-01-17 08:20:57', '2022-01-17 08:20:57'),
(52, 'breads', '', '164241489361e5432d1e9ab.jpg', NULL, 49, 1, '2022-01-17 08:21:33', '2022-01-17 08:21:33'),
(53, 'honey', '', '164241493861e5435a6f4d3.jpg', NULL, 49, 1, '2022-01-17 08:22:18', '2022-01-17 08:22:18'),
(54, 'cakes', '', '164241499361e54391498d5.jpg', NULL, 49, 1, '2022-01-17 08:23:13', '2022-01-17 08:23:13'),
(55, 'cooking', '', '164241504361e543c34e74e.jpg', '164328444461f287dc9b54d.jpg', 4, 1, '2022-01-17 08:24:03', '2022-01-27 09:54:04'),
(56, 'rice', '', '164241511661e5440cba1b1.jpg', NULL, 55, 1, '2022-01-17 08:25:16', '2022-01-17 08:25:16'),
(57, 'spices', '', '164241516361e5443b26ac1.webp', NULL, 55, 1, '2022-01-17 08:26:03', '2022-01-17 08:26:03'),
(58, 'oil', '', '164241520061e54460bc9ff.jpg', NULL, 55, 1, '2022-01-17 08:26:41', '2022-01-17 08:26:41'),
(59, 'ghee', '', '164241668261e54a2af237f.jpg', NULL, 55, 1, '2022-01-17 08:51:23', '2022-01-17 08:51:23'),
(60, 'salt-mix', '', '164241674861e54a6c4d374.webp', NULL, 55, 1, '2022-01-17 08:52:28', '2022-01-17 08:52:28'),
(61, 'salt-sugar', '', '164241679361e54a99219c9.jpg', NULL, 55, 1, '2022-01-17 08:53:13', '2022-01-17 08:53:13'),
(62, 'dal', '', '164241683761e54ac5f010d.jpg', NULL, 55, 1, '2022-01-17 08:53:58', '2022-01-17 08:53:58'),
(63, 'shemai-suji', '', '164241687361e54ae9d5fd2.jpg', NULL, 55, 1, '2022-01-17 08:54:33', '2022-01-17 08:54:33'),
(64, 'diabetic-food', '', '164241691661e54b14b6e40.jpg', NULL, 4, 1, '2022-01-17 08:55:16', '2022-01-17 08:55:16'),
(65, 'meat-fish', '', '164241695861e54b3eaac62.jpg', NULL, 4, 1, '2022-01-17 08:55:58', '2022-01-17 08:55:58'),
(66, 'meat', '', '164241698861e54b5cbafc8.jpg', NULL, 65, 1, '2022-01-17 08:56:28', '2022-01-17 08:56:28'),
(67, 'fish', '', '164241715361e54c01206ff.webp', NULL, 65, 1, '2022-01-17 08:59:13', '2022-01-17 08:59:13'),
(68, 'food-supplements', '', '164241728461e54c84cd572.jpg', NULL, 13, 1, '2022-01-17 09:01:24', '2022-01-17 09:03:14'),
(69, 'herbal-digestive-aid', '', '164241732361e54cab67c37.png', NULL, 13, 1, '2022-01-17 09:02:03', '2022-01-17 09:03:00'),
(70, 'first-aid', '', '164241779161e54e7f8f0f7.jpg', NULL, 13, 1, '2022-01-17 09:09:51', '2022-01-17 09:09:51'),
(71, 'adult-diapers', '', '164241795061e54f1ee3605.jpg', NULL, 13, 1, '2022-01-17 09:12:31', '2022-01-17 09:12:31'),
(72, 'personal-care', '', '164241800561e54f55b24cc.jpg', NULL, 6, 1, '2022-01-17 09:13:25', '2022-01-17 09:13:25'),
(73, 'clothing-essentials', '', '164241913661e553c0c2282.webp', NULL, 72, 1, '2022-01-17 09:32:16', '2022-01-17 09:32:16'),
(74, 'handwash', '', '164241954861e5555cef01a.jpg', NULL, 72, 1, '2022-01-17 09:39:09', '2022-01-17 09:39:09'),
(75, 'tissue-wipes', '', '164242130561e55c39b945a.jpg', NULL, 72, 1, '2022-01-17 09:42:00', '2022-01-17 10:08:25'),
(76, 'talcom-powder', '', '164242136961e55c799fd2c.webp', NULL, 72, 1, '2022-01-17 10:09:29', '2022-01-17 10:09:29'),
(77, 'newborn-essentials', '', '164242145961e55cd3d8c1d.png', NULL, 7, 1, '2022-01-17 10:10:59', '2022-01-17 10:10:59'),
(78, 'feeders', '', '164242152561e55d153ad00.webp', NULL, 7, 1, '2022-01-17 10:12:05', '2022-01-17 10:12:05'),
(79, 'bath-skincare', '', 'default-cat.png', NULL, 7, 1, '2022-01-17 10:12:34', '2022-01-17 10:12:34'),
(80, 'baby-oral-care', '', 'default-cat.png', NULL, 7, 1, '2022-01-17 10:12:43', '2022-01-17 10:12:43'),
(81, 'pet-care', '<i class=\"icofont-cat-dog\"></i>', '164249361661e676b0ab546.jpg', NULL, NULL, 1, '2022-01-18 06:10:32', '2022-01-18 06:13:36'),
(82, 'kitten-food', '', '164249347861e676260fae8.jpg', NULL, 81, 1, '2022-01-18 06:11:18', '2022-01-18 06:11:18'),
(83, 'cat-food', '', '164249352361e6765364dd3.jpg', NULL, 81, 1, '2022-01-18 06:12:03', '2022-01-18 06:12:03'),
(84, 'dog-food', '', '164249355761e67675cd222.jpg', NULL, 81, 1, '2022-01-18 06:12:37', '2022-01-18 06:12:37'),
(85, 'other-pet-foods', '', '164249359661e6769ce2302.png', NULL, 81, 1, '2022-01-18 06:13:16', '2022-01-18 06:13:16'),
(86, 'pet-accessories', '', '164249369861e677025be00.png', NULL, 81, 1, '2022-01-18 06:14:58', '2022-01-18 06:14:58'),
(87, 'air-fresheners', '', '164249376461e67744ca50c.jpg', NULL, 9, 1, '2022-01-18 06:16:04', '2022-01-18 06:16:04'),
(88, 'dish-detergents', '', '164249380161e6776905292.jpg', NULL, 9, 1, '2022-01-18 06:16:41', '2022-01-18 06:16:41'),
(89, 'napkins', '', '164249393361e677ed332d6.jpg', NULL, 9, 1, '2022-01-18 06:18:53', '2022-01-18 06:18:53'),
(90, 'pest-control', '', '164249405361e67865e598e.jpg', NULL, 9, 1, '2022-01-18 06:20:53', '2022-01-18 06:20:53'),
(91, 'food-storage', '', '164249414761e678c3e4c54.jpg', NULL, 9, 1, '2022-01-18 06:22:27', '2022-01-18 06:22:27'),
(92, 'batteries', '', '164249427661e6794437457.jpg', NULL, 14, 1, '2022-01-18 06:24:36', '2022-01-18 06:24:36'),
(93, 'writing-drawing', '', '164249432661e67976d3d6d.jpg', NULL, 14, 1, '2022-01-18 06:25:26', '2022-01-18 06:25:26'),
(94, 'colours', '', '164249442361e679d73a4f2.jpg', NULL, 93, 1, '2022-01-18 06:27:03', '2022-01-18 06:28:49'),
(95, 'pens', '', '164249449861e67a2298df2.webp', NULL, 93, 1, '2022-01-18 06:28:18', '2022-01-18 06:28:34'),
(96, 'highlighters-markers', '', '164249475861e67b26beff0.png', NULL, 93, 1, '2022-01-18 06:32:38', '2022-01-18 06:32:38'),
(97, 'notebooks', '', '164249485461e67b8607df1.jpg', NULL, 93, 1, '2022-01-18 06:34:14', '2022-01-18 06:34:14'),
(98, 'organizing', '', 'default-cat.png', NULL, 14, 1, '2022-01-18 06:36:24', '2022-01-18 06:36:24'),
(99, 'glue-tapes', '', '164249504161e67c4177256.webp', NULL, 98, 1, '2022-01-18 06:37:21', '2022-01-18 06:37:21'),
(100, 'files-folders', '', '164249511261e67c882a002.jpg', NULL, 98, 1, '2022-01-18 06:38:32', '2022-01-18 06:38:32'),
(101, 'printing', '', '164249517161e67cc3830ea.jpg', '164328410161f286851bece.jpg', 14, 1, '2022-01-18 06:39:31', '2022-01-27 09:48:21'),
(102, 'paper', '', '164249520461e67ce450661.jpg', NULL, 101, 1, '2022-01-18 06:40:04', '2022-01-18 06:40:04'),
(103, 'toner-ink', '', '164249524361e67d0bb8069.jpg', NULL, 101, 1, '2022-01-18 06:40:43', '2022-01-18 06:40:43'),
(104, 'home-applications', '<i class=\"icofont-ui-home\"></i>', '164249557061e67e5204448.png', NULL, NULL, 1, '2022-01-18 06:46:10', '2022-01-18 06:46:10'),
(105, 'lights-electrical', '', '164249563261e67e90ec5d2.jpg', NULL, 104, 1, '2022-01-18 06:47:13', '2022-01-18 06:47:13'),
(106, 'tools-hardware', '', '164249568261e67ec2879c2.jpg', NULL, 104, 1, '2022-01-18 06:48:02', '2022-01-18 06:48:02'),
(107, 'vehicle-essentials', '<i class=\"icofont-car-alt-1\"></i>', '164249583861e67f5e57afc.jpg', NULL, NULL, 1, '2022-01-18 06:50:38', '2022-01-18 06:50:38'),
(108, 'organic-items', '<i class=\"icofont-fruits\"></i>', '164249590561e67fa1dc237.jpg', NULL, NULL, 1, '2022-01-18 06:51:45', '2022-01-18 06:51:45'),
(109, 'ready-mix', '', 'default-cat.png', '164342971561f4bf537b3b6.jpg', 55, 1, '2022-01-26 09:18:24', '2022-01-29 02:15:15'),
(110, 'cheese', '', '164371352461f913f416c88.webp', '164371352461f913f43f1cd.webp', 40, 1, '2022-02-01 09:05:24', '2022-02-01 09:05:24'),
(112, 'soap', '', '16444816736204cc89b64ec.jpg', '16444817726204ccec3f071.jpg', 6, 1, '2022-02-10 06:27:54', '2022-02-10 06:29:32'),
(113, 'skin-soap', '', '16444827076204d093aaa46.jpg', '16444827076204d093ae901.jpg', 112, 1, '2022-02-10 06:45:07', '2022-02-10 06:45:07'),
(114, 'laundry-soap', '', '16444828266204d10a031dc.webp', '16444828266204d10a074c8.webp', 112, 1, '2022-02-10 06:47:06', '2022-02-10 06:47:06'),
(115, 'laundry', '', '16444932716204f9d7c288e.webp', '16444932716204f9d7f1e27.webp', 9, 1, '2022-02-10 09:41:12', '2022-02-10 09:41:12'),
(116, 'tea-coffee', '', '1644659961620784f9030e4.webp', '1644659961620784f90d444.webp', 27, 1, '2022-02-12 07:59:21', '2022-02-12 07:59:21'),
(117, 'shampo', '', '164466167262078ba824617.webp', '164466167262078ba8278ab.webp', 6, 1, '2022-02-12 08:27:52', '2022-02-12 08:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 4, 'English', 'Food', 'All Types Of Food', '2021-05-24 02:23:15', '2021-05-24 02:23:15'),
(3, 6, 'English', 'Beauty & Health', '', '2021-05-25 06:38:12', '2021-05-25 06:38:12'),
(4, 7, 'English', 'Baby Care', '', '2021-05-25 06:57:59', '2021-05-25 06:57:59'),
(5, 8, 'English', 'Hygiene', '', '2021-05-26 06:17:04', '2021-05-26 06:17:04'),
(6, 9, 'English', 'Home & Cleaning', '', '2021-05-26 06:29:41', '2021-05-26 06:29:41'),
(7, 11, 'English', 'Medicine', '', '2021-05-26 08:04:29', '2021-05-26 08:04:29'),
(8, 12, 'English', 'Breakfast', '', '2021-05-27 01:05:24', '2021-05-27 01:05:24'),
(9, 13, 'English', 'Health Care', '', '2021-05-27 01:05:54', '2021-05-27 01:05:54'),
(10, 14, 'English', 'Office Products', '', '2021-05-27 02:25:11', '2021-05-27 02:25:11'),
(11, 15, 'English', 'Kitchen Appliances', '', '2021-05-27 02:27:09', '2021-05-27 02:27:09'),
(23, 27, 'English', 'Snacks', '', '2022-01-16 07:28:33', '2022-01-16 07:28:33'),
(26, 30, 'English', 'Fruits & Vegetabels', '', '2022-01-17 07:52:04', '2022-01-17 07:52:04'),
(27, 31, 'English', 'Fresh Fruits', '', '2022-01-17 07:54:34', '2022-01-17 07:54:34'),
(28, 32, 'English', 'Vegitables', '', '2022-01-17 07:55:26', '2022-01-17 07:55:26'),
(29, 33, 'English', 'Noodles', '', '2022-01-17 07:56:31', '2022-01-17 07:56:31'),
(30, 34, 'English', 'Soups', '', '2022-01-17 07:57:34', '2022-01-17 07:57:34'),
(31, 35, 'English', 'Pasta', '', '2022-01-17 07:58:26', '2022-01-17 07:58:26'),
(32, 36, 'English', 'Candy', '', '2022-01-17 07:59:44', '2022-01-17 07:59:44'),
(33, 37, 'English', 'Chips & Pretzels', '', '2022-01-17 08:03:00', '2022-01-17 08:03:00'),
(34, 38, 'English', 'Popcorn & Nuts', '', '2022-01-17 08:03:53', '2022-01-17 08:03:53'),
(35, 39, 'English', 'Biscuits', '', '2022-01-17 08:04:51', '2022-01-17 08:04:51'),
(36, 40, 'English', 'Dairy', '', '2022-01-17 08:05:31', '2022-01-17 08:05:31'),
(37, 41, 'English', 'Liquid & UHT Milk', '', '2022-01-17 08:06:26', '2022-01-17 08:06:26'),
(39, 43, 'English', 'Powder Milk & Cream', '', '2022-01-17 08:08:24', '2022-01-17 08:08:24'),
(40, 44, 'English', 'Yogurt & Sweet', '', '2022-01-17 08:09:23', '2022-01-17 08:09:23'),
(41, 45, 'English', 'Frozen & Canned', '', '2022-01-17 08:10:06', '2022-01-17 08:10:06'),
(42, 46, 'English', 'Ice cream', '', '2022-01-17 08:11:14', '2022-01-17 08:11:14'),
(43, 47, 'English', 'Frozen Snacks', '', '2022-01-17 08:14:48', '2022-01-17 08:14:48'),
(44, 48, 'English', 'Canned Food', '', '2022-01-17 08:15:25', '2022-01-17 08:15:25'),
(45, 49, 'English', 'Bread & Bakery', '', '2022-01-17 08:18:07', '2022-01-17 08:18:07'),
(46, 50, 'English', 'Cookies', '', '2022-01-17 08:19:41', '2022-01-17 08:19:41'),
(47, 51, 'English', 'Bakery Snacks', '', '2022-01-17 08:20:57', '2022-01-17 08:20:57'),
(48, 52, 'English', 'Breads', '', '2022-01-17 08:21:33', '2022-01-17 08:21:33'),
(49, 53, 'English', 'Honey', '', '2022-01-17 08:22:18', '2022-01-17 08:22:18'),
(50, 54, 'English', 'Cakes', '', '2022-01-17 08:23:13', '2022-01-17 08:23:13'),
(51, 55, 'English', 'Cooking', '', '2022-01-17 08:24:03', '2022-01-17 08:24:03'),
(52, 56, 'English', 'Rice', '', '2022-01-17 08:25:16', '2022-01-17 08:25:16'),
(53, 57, 'English', 'Spices', '', '2022-01-17 08:26:03', '2022-01-17 08:26:03'),
(54, 58, 'English', 'Oil', '', '2022-01-17 08:26:41', '2022-01-17 08:26:41'),
(55, 59, 'English', 'Ghee', '', '2022-01-17 08:51:23', '2022-01-17 08:51:23'),
(56, 60, 'English', 'Salt Mix', '', '2022-01-17 08:52:28', '2022-01-17 08:52:28'),
(57, 61, 'English', 'Salt & Sugar', '', '2022-01-17 08:53:13', '2022-01-17 08:53:13'),
(58, 62, 'English', 'Dal', '', '2022-01-17 08:53:58', '2022-01-17 08:53:58'),
(59, 63, 'English', 'Shemai & Suji', '', '2022-01-17 08:54:33', '2022-01-17 08:54:33'),
(60, 64, 'English', 'Diabetic Food', '', '2022-01-17 08:55:16', '2022-01-17 08:55:16'),
(61, 65, 'English', 'Meat & Fish', '', '2022-01-17 08:55:58', '2022-01-17 08:55:58'),
(62, 66, 'English', 'Meat', '', '2022-01-17 08:56:28', '2022-01-17 08:56:28'),
(63, 67, 'English', 'Fish', '', '2022-01-17 08:59:13', '2022-01-17 08:59:13'),
(64, 68, 'English', 'Food Supplements', '', '2022-01-17 09:01:24', '2022-01-17 09:01:24'),
(65, 69, 'English', 'Herbal & Digestive Aid', '', '2022-01-17 09:02:03', '2022-01-17 09:02:03'),
(66, 70, 'English', 'First Aid', '', '2022-01-17 09:09:51', '2022-01-17 09:09:51'),
(67, 71, 'English', 'Adult Diapers', '', '2022-01-17 09:12:31', '2022-01-17 09:12:31'),
(68, 72, 'English', 'Personal Care', '', '2022-01-17 09:13:25', '2022-01-17 09:13:25'),
(69, 73, 'English', 'Clothing Essentials', '', '2022-01-17 09:32:16', '2022-01-17 09:32:16'),
(70, 74, 'English', 'Handwash', '', '2022-01-17 09:39:09', '2022-01-17 09:39:09'),
(71, 75, 'English', 'Tissue & Wipes', '', '2022-01-17 09:42:00', '2022-01-17 09:42:00'),
(72, 76, 'English', 'Talcom Powder', '', '2022-01-17 10:09:29', '2022-01-17 10:09:29'),
(73, 77, 'English', 'Newborn Essentials', '', '2022-01-17 10:10:59', '2022-01-17 10:10:59'),
(74, 78, 'English', 'Feeders', '', '2022-01-17 10:12:05', '2022-01-17 10:12:05'),
(75, 79, 'English', 'Bath & Skincare', '', '2022-01-17 10:12:34', '2022-01-17 10:12:34'),
(76, 80, 'English', 'Baby oral Care', '', '2022-01-17 10:12:43', '2022-01-17 10:12:43'),
(77, 81, 'English', 'Pet Care', '', '2022-01-18 06:10:32', '2022-01-18 06:10:32'),
(78, 82, 'English', 'Kitten Food', '', '2022-01-18 06:11:18', '2022-01-18 06:11:18'),
(79, 83, 'English', 'Cat Food', '', '2022-01-18 06:12:03', '2022-01-18 06:12:03'),
(80, 84, 'English', 'Dog Food', '', '2022-01-18 06:12:37', '2022-01-18 06:12:37'),
(81, 85, 'English', 'Other pet Foods', '', '2022-01-18 06:13:16', '2022-01-18 06:13:16'),
(82, 86, 'English', 'Pet Accessories', '', '2022-01-18 06:14:58', '2022-01-18 06:14:58'),
(83, 87, 'English', 'Air Fresheners', '', '2022-01-18 06:16:04', '2022-01-18 06:16:04'),
(84, 88, 'English', 'Dish Detergents', '', '2022-01-18 06:16:41', '2022-01-18 06:16:41'),
(85, 89, 'English', 'napkins', '', '2022-01-18 06:18:53', '2022-01-18 06:18:53'),
(86, 90, 'English', 'Pest Control', '', '2022-01-18 06:20:53', '2022-01-18 06:20:53'),
(87, 91, 'English', 'Food Storage', '', '2022-01-18 06:22:27', '2022-01-18 06:22:27'),
(88, 92, 'English', 'Batteries', '', '2022-01-18 06:24:36', '2022-01-18 06:24:36'),
(89, 93, 'English', 'Writing & Drawing', '', '2022-01-18 06:25:26', '2022-01-18 06:25:26'),
(90, 94, 'English', 'Colours', '', '2022-01-18 06:27:03', '2022-01-18 06:27:03'),
(91, 95, 'English', 'Pens', '', '2022-01-18 06:28:19', '2022-01-18 06:28:19'),
(92, 96, 'English', 'Highlighters & Markers', '', '2022-01-18 06:32:38', '2022-01-18 06:32:38'),
(93, 97, 'English', 'Notebooks', '', '2022-01-18 06:34:14', '2022-01-18 06:34:14'),
(94, 98, 'English', 'Organizing', '', '2022-01-18 06:36:24', '2022-01-18 06:36:24'),
(95, 99, 'English', 'Glue & Tapes', '', '2022-01-18 06:37:21', '2022-01-18 06:37:21'),
(96, 100, 'English', 'Files & Folders', '', '2022-01-18 06:38:32', '2022-01-18 06:38:32'),
(97, 101, 'English', 'Printing', '', '2022-01-18 06:39:31', '2022-01-18 06:39:31'),
(98, 102, 'English', 'Paper', '', '2022-01-18 06:40:04', '2022-01-18 06:40:04'),
(99, 103, 'English', 'Toner & Ink', '', '2022-01-18 06:40:43', '2022-01-18 06:40:43'),
(100, 104, 'English', 'Home Applications', '', '2022-01-18 06:46:10', '2022-01-18 06:46:10'),
(101, 105, 'English', 'Lights & Electrical', '', '2022-01-18 06:47:13', '2022-01-18 06:47:13'),
(102, 106, 'English', 'Tools & Hardware', '', '2022-01-18 06:48:02', '2022-01-18 06:48:02'),
(103, 107, 'English', 'Vehicle Essentials', '', '2022-01-18 06:50:38', '2022-01-18 06:50:38'),
(104, 108, 'English', 'Organic Items', '', '2022-01-18 06:51:45', '2022-01-18 06:51:45'),
(105, 109, 'English', 'Ready Mix', '', '2022-01-26 09:18:24', '2022-01-26 09:18:24'),
(106, 110, 'English', 'cheese', '', '2022-02-01 09:05:24', '2022-02-01 09:05:24'),
(108, 112, 'English', 'Soap', '', '2022-02-10 06:27:54', '2022-02-10 06:27:54'),
(109, 113, 'English', 'Skin Soap', '', '2022-02-10 06:45:07', '2022-02-10 06:45:07'),
(110, 114, 'English', 'Laundry Soap', '', '2022-02-10 06:47:06', '2022-02-10 06:47:06'),
(111, 115, 'English', 'Laundry', '', '2022-02-10 09:41:12', '2022-02-10 09:41:12'),
(112, 116, 'English', 'Tea & Coffee', '', '2022-02-12 07:59:21', '2022-02-12 07:59:21'),
(113, 117, 'English', 'Shampo', '', '2022-02-12 08:27:52', '2022-02-12 08:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(10,2) UNSIGNED DEFAULT NULL,
  `is_percent` tinyint(1) NOT NULL,
  `used` int(11) NOT NULL DEFAULT 0,
  `uses_limit` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `value`, `is_percent`, `used`, `uses_limit`, `is_active`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(2, 'LC100', '5.00', 1, 1, 0, 1, '2021-12-27', '2021-12-31', '2021-12-27 09:26:14', '2021-12-27 09:29:40'),
(6, '123456', '20.00', 1, 0, 0, 1, '2022-01-01', '2022-02-01', '2022-01-04 02:26:14', '2022-01-04 02:26:14'),
(7, 'BIJOY2022', '10.00', 1, 9, 100, 1, '2022-01-08', '2022-01-24', '2022-01-08 02:25:10', '2022-01-09 09:48:14'),
(8, 'CRIS2021', '10.00', 1, 0, 200, 1, '2022-01-08', '2022-01-31', '2022-01-08 07:21:18', '2022-01-08 07:21:18'),
(9, 'LOVE2022', '20.00', 0, 1, 200, 1, '2022-01-08', '2022-01-30', '2022-01-08 07:25:45', '2022-01-09 09:41:45'),
(10, 'M50', '50.00', 0, 4, 4, 1, '2022-01-08', '2022-01-15', '2022-01-10 05:09:20', '2022-01-15 06:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_categories`
--

CREATE TABLE `coupon_categories` (
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_categories`
--

INSERT INTO `coupon_categories` (`coupon_id`, `category_id`) VALUES
(7, 12),
(8, 11),
(9, 11);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_products`
--

CREATE TABLE `coupon_products` (
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_translations`
--

CREATE TABLE `coupon_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_translations`
--

INSERT INTO `coupon_translations` (`id`, `coupon_id`, `locale`, `name`, `created_at`, `updated_at`) VALUES
(2, 2, 'English', 'Launch Ceremony', '2021-12-27 09:26:14', '2021-12-27 09:26:14'),
(6, 6, 'English', 'Antarip', '2022-01-04 02:26:14', '2022-01-04 02:26:14'),
(7, 7, 'English', 'BIJOY', '2022-01-08 02:25:10', '2022-01-08 02:25:10'),
(8, 8, 'English', 'CRIS2021', '2022-01-08 07:21:18', '2022-01-08 07:21:18'),
(9, 9, 'English', 'LOVE2022', '2022-01-08 07:25:45', '2022-01-08 07:25:45'),
(10, 10, 'English', 'testcoupon1', '2022-01-10 05:09:20', '2022-01-10 08:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `database_backups`
--

CREATE TABLE `database_backups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'welcome_email', 'Welcome to Q Bazar', '<table role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 20px 0 30px 0;\">\r\n<table style=\"border-collapse: collapse; border: 1px solid #cccccc;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 0 30px 0;\" align=\"center\" bgcolor=\"#1e1e2c\"><img src=\"../../../theme/img/website-logo.png\" alt=\"\" width=\"162\" height=\"40\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 40px 30px 40px 30px;\" bgcolor=\"#ffffff\">\r\n<table style=\"border-collapse: collapse; height: 95px; width: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 30px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; height: 30px;\">\r\n<h1 style=\"font-size: 24px; margin: 0;\">Welcome to Q Bazar</h1>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 47px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; font-size: 16px; line-height: 24px; padding: 20px 0px 30px; height: 47px;\">\r\n<p style=\"margin: 0;\">Hi {name},</p>\r\n<p style=\"margin: 0;\">Your account is now ready to use. You can now login to your portal using your email and password.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank You</p>\r\n<p style=\"margin: 0;\">Q Bazar</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 30px;\" bgcolor=\"#1e1e2c\">\r\n<table style=\"border-collapse: collapse; width: 99.4769%; height: 18px;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"color: #ffffff; font-family: Arial, sans-serif; font-size: 14px; width: 99.8141%; height: 18px;\">\r\n<p style=\"margin: 0px; text-align: center;\">&reg; Qbazar 2022</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '2022-01-13 01:06:50'),
(2, 'order_placed', 'Your Order Placed Successfully', '<table role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 20px 0 30px 0;\">\r\n<table style=\"border-collapse: collapse; border: 1px solid #cccccc;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 0 30px 0;\" align=\"center\" bgcolor=\"#1e1e2c\"><img src=\"../../../theme/img/website-logo.png\" alt=\"\" width=\"162\" height=\"40\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 40px 30px 40px 30px;\" bgcolor=\"#ffffff\">\r\n<table style=\"border-collapse: collapse; height: 95px; width: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 30px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; height: 30px;\">\r\n<h1 style=\"font-size: 24px; margin: 0;\">Your Order Placed Successfully</h1>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 47px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; font-size: 16px; line-height: 24px; padding: 20px 0px 30px; height: 47px;\">\r\n<p style=\"margin: 0;\">Hi {name},</p>\r\n<p style=\"margin: 0;\">Your Order (Order ID:{order_id}) has been placed sucessfully. Your order will be shipped within next 3 business days.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Order ID:{order_id}</p>\r\n<p style=\"margin: 0;\">Order Status:{delivery_status}</p>\r\n<p style=\"margin: 0;\">Payment Status:{payment_status}</p>\r\n<p style=\"margin: 0;\">Payment Method:{payment_method}</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank you for shopping with us.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank You</p>\r\n<p style=\"margin: 0;\">Q Bazar</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 30px;\" bgcolor=\"#1e1e2c\">\r\n<table style=\"border-collapse: collapse; width: 99.4769%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"color: #ffffff; font-family: Arial, sans-serif; font-size: 14px; width: 99.8141%;\">\r\n<p style=\"margin: 0px; text-align: center;\">&reg; Qbazar 2022</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '2022-01-13 01:07:16'),
(3, 'order_processing', 'Your Order Marked as Processing', '<table role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 20px 0 30px 0;\">\r\n<table style=\"border-collapse: collapse; border: 1px solid #cccccc;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 0 30px 0;\" align=\"center\" bgcolor=\"#1e1e2c\"><img src=\"../../../theme/img/website-logo.png\" alt=\"\" width=\"162\" height=\"40\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 40px 30px 40px 30px;\" bgcolor=\"#ffffff\">\r\n<table style=\"border-collapse: collapse; height: 95px; width: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 30px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; height: 30px;\">\r\n<h1 style=\"font-size: 24px; margin: 0;\">Your Order has been processed</h1>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 47px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; font-size: 16px; line-height: 24px; padding: 20px 0px 30px; height: 47px;\">\r\n<p style=\"margin: 0;\">Hi {name},</p>\r\n<p style=\"margin: 0;\">Your Order (Order ID:{order_id}) has been processed.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Order ID:{order_id}</p>\r\n<p style=\"margin: 0;\">Order Status:{delivery_status}</p>\r\n<p style=\"margin: 0;\">Payment Status:{payment_status}</p>\r\n<p style=\"margin: 0;\">Payment Method:{payment_method}</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank you for shopping with us.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank You</p>\r\n<p style=\"margin: 0;\">Q Bazar</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 30px;\" bgcolor=\"#1e1e2c\">\r\n<table style=\"border-collapse: collapse; width: 99.4769%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"color: #ffffff; font-family: Arial, sans-serif; font-size: 14px; width: 99.8141%;\">\r\n<p style=\"margin: 0px; text-align: center;\">&reg; Qbazar 2022</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '2022-01-13 01:06:18'),
(4, 'order_completed', 'Your Order Marked as Completed', '<table role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 20px 0 30px 0;\">\r\n<table style=\"border-collapse: collapse; border: 1px solid #cccccc;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 0 30px 0;\" align=\"center\" bgcolor=\"#1e1e2c\"><img src=\"../../../theme/img/website-logo.png\" alt=\"\" width=\"162\" height=\"40\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 40px 30px 40px 30px;\" bgcolor=\"#ffffff\">\r\n<table style=\"border-collapse: collapse; height: 95px; width: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 30px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; height: 30px;\">\r\n<h1 style=\"font-size: 24px; margin: 0;\">Your Order has Completed</h1>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 47px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; font-size: 16px; line-height: 24px; padding: 20px 0px 30px; height: 47px;\">\r\n<p style=\"margin: 0;\">Hi {name},</p>\r\n<p style=\"margin: 0;\">Your Order (Order ID:{order_id}) has completed.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Order ID:{order_id}</p>\r\n<p style=\"margin: 0;\">Order Status:{delivery_status}</p>\r\n<p style=\"margin: 0;\">Payment Status:{payment_status}</p>\r\n<p style=\"margin: 0;\">Payment Method:{payment_method}</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank you for shopping with us.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank You</p>\r\n<p style=\"margin: 0;\">Q Bazar</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 30px;\" bgcolor=\"#1e1e2c\">\r\n<table style=\"border-collapse: collapse; width: 99.4769%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"color: #ffffff; font-family: Arial, sans-serif; font-size: 14px; width: 99.8141%;\">\r\n<p style=\"margin: 0px; text-align: center;\">&reg; Qbazar 2022</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '2022-01-13 01:06:09'),
(5, 'order_canceled', 'Your Order Marked as Canceled', '<table role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 20px 0 30px 0;\">\r\n<table style=\"border-collapse: collapse; border: 1px solid #cccccc;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 0 30px 0;\" align=\"center\" bgcolor=\"#1e1e2c\"><img src=\"../../../theme/img/website-logo.png\" alt=\"\" width=\"162\" height=\"40\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 40px 30px 40px 30px;\" bgcolor=\"#ffffff\">\r\n<table style=\"border-collapse: collapse; height: 95px; width: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 30px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; height: 30px;\">\r\n<h1 style=\"font-size: 24px; margin: 0;\">Your Order has been canceled</h1>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 47px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; font-size: 16px; line-height: 24px; padding: 20px 0px 30px; height: 47px;\">\r\n<p style=\"margin: 0;\">Hi {name},</p>\r\n<p style=\"margin: 0;\">Your Order (Order ID:{order_id}) has been canceled.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Order ID:{order_id}</p>\r\n<p style=\"margin: 0;\">Order Status:{delivery_status}</p>\r\n<p style=\"margin: 0;\">Payment Status:{payment_status}</p>\r\n<p style=\"margin: 0;\">Payment Method:{payment_method}</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank you for shopping with us.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank You</p>\r\n<p style=\"margin: 0;\">Q Bazar</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 30px;\" bgcolor=\"#1e1e2c\">\r\n<table style=\"border-collapse: collapse; width: 99.4769%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"color: #ffffff; font-family: Arial, sans-serif; font-size: 14px; width: 99.8141%;\">\r\n<p style=\"margin: 0px; text-align: center;\">&reg; Qbazar 2022</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '2022-01-13 01:05:49'),
(6, 'assign_delivery_boy', 'New order assign to you for delivery', '<table role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 20px 0 30px 0;\">\r\n<table style=\"border-collapse: collapse; border: 1px solid #cccccc;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 0 30px 0;\" align=\"center\" bgcolor=\"#1e1e2c\"><img src=\"../../../theme/img/website-logo.png\" alt=\"\" width=\"162\" height=\"40\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 40px 30px 40px 30px;\" bgcolor=\"#ffffff\">\r\n<table style=\"border-collapse: collapse; height: 95px; width: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 30px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; height: 30px;\">\r\n<h1 style=\"font-size: 24px; margin: 0;\">New order assign to you for delivery</h1>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 47px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; font-size: 16px; line-height: 24px; padding: 20px 0px 30px; height: 47px;\">\r\n<p style=\"margin: 0;\">Hi{name},</p>\r\n<p style=\"margin: 0;\">New Order (Order ID:{order_id}) has been assigned to you for delivery.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Order ID:{order_id}</p>\r\n<p style=\"margin: 0;\">Order Status:{delivery_status}</p>\r\n<p style=\"margin: 0;\">Payment Status:{payment_status}</p>\r\n<p style=\"margin: 0;\">Payment Method:{payment_method}</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank you for shopping with us.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank You</p>\r\n<p style=\"margin: 0;\">Q Bazar</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 30px;\" bgcolor=\"#1e1e2c\">\r\n<table style=\"border-collapse: collapse; width: 99.4769%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"color: #ffffff; font-family: Arial, sans-serif; font-size: 14px; width: 99.8141%;\">\r\n<p style=\"margin: 0px; text-align: center;\">&reg; Qbazar 2022</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '2022-01-13 01:05:39'),
(7, 'welcome_email', 'Welcome to Q Bazar', '<table role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 20px 0 30px 0;\">\r\n<table style=\"border-collapse: collapse; border: 1px solid #cccccc;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 0 30px 0;\" align=\"center\" bgcolor=\"#1e1e2c\"><img src=\"../../../theme/img/website-logo.png\" alt=\"\" width=\"162\" height=\"40\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 40px 30px 40px 30px;\" bgcolor=\"#ffffff\">\r\n<table style=\"border-collapse: collapse; height: 95px; width: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 30px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; height: 30px;\">\r\n<h1 style=\"font-size: 24px; margin: 0;\">Welcome to Q Bazar</h1>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 47px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; font-size: 16px; line-height: 24px; padding: 20px 0px 30px; height: 47px;\">\r\n<p style=\"margin: 0;\">Hi {name},</p>\r\n<p style=\"margin: 0;\">Your account is now ready to use. You can now login to your portal using your email and password.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank You</p>\r\n<p style=\"margin: 0;\">Q Bazar</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 30px;\" bgcolor=\"#1e1e2c\">\r\n<table style=\"border-collapse: collapse; width: 99.4769%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"color: #ffffff; font-family: Arial, sans-serif; font-size: 14px; width: 99.8141%;\">\r\n<p style=\"margin: 0px; text-align: center;\">&reg; Qbazar 2022</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '2022-01-13 01:07:28'),
(8, 'order_placed', 'Your Order Placed Successfully', '<table role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 20px 0 30px 0;\">\r\n<table style=\"border-collapse: collapse; border: 1px solid #cccccc;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 0 30px 0;\" align=\"center\" bgcolor=\"#1e1e2c\"><img src=\"../../../theme/img/website-logo.png\" alt=\"\" width=\"162\" height=\"40\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 40px 30px 40px 30px;\" bgcolor=\"#ffffff\">\r\n<table style=\"border-collapse: collapse; height: 95px; width: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 30px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; height: 30px;\">\r\n<h1 style=\"font-size: 24px; margin: 0;\">Your Order Placed Successfully</h1>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 47px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; font-size: 16px; line-height: 24px; padding: 20px 0px 30px; height: 47px;\">\r\n<p style=\"margin: 0;\">Hi {name},</p>\r\n<p style=\"margin: 0;\">Your Order (Order ID:{order_id}) has been placed sucessfully. Your order will be shipped within next 3 business days.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Order ID:{order_id}</p>\r\n<p style=\"margin: 0;\">Order Status:{delivery_status}</p>\r\n<p style=\"margin: 0;\">Payment Status:{payment_status}</p>\r\n<p style=\"margin: 0;\">Payment Method:{payment_method}</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank you for shopping with us.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank You</p>\r\n<p style=\"margin: 0;\">Q Bazar</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 30px;\" bgcolor=\"#1e1e2c\">\r\n<table style=\"border-collapse: collapse; width: 99.4769%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"color: #ffffff; font-family: Arial, sans-serif; font-size: 14px; width: 99.8141%;\">\r\n<p style=\"margin: 0px; text-align: center;\">&reg; Qbazar 2022</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '2022-01-13 01:05:26'),
(9, 'order_processing', 'Your Order Marked as Processing', '<table role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 20px 0 30px 0;\">\r\n<table style=\"border-collapse: collapse; border: 1px solid #cccccc;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 0 30px 0;\" align=\"center\" bgcolor=\"#1e1e2c\"><img src=\"../../../theme/img/website-logo.png\" alt=\"\" width=\"162\" height=\"40\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 40px 30px 40px 30px;\" bgcolor=\"#ffffff\">\r\n<table style=\"border-collapse: collapse; height: 95px; width: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 30px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; height: 30px;\">\r\n<h1 style=\"font-size: 24px; margin: 0;\">Your Order has been processed</h1>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 47px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; font-size: 16px; line-height: 24px; padding: 20px 0px 30px; height: 47px;\">\r\n<p style=\"margin: 0;\">Hi {name},</p>\r\n<p style=\"margin: 0;\">Your Order (Order ID:{order_id}) has been processed.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Order ID:{order_id}</p>\r\n<p style=\"margin: 0;\">Order Status:{delivery_status}</p>\r\n<p style=\"margin: 0;\">Payment Status:{payment_status}</p>\r\n<p style=\"margin: 0;\">Payment Method:{payment_method}</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank you for shopping with us.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank You</p>\r\n<p style=\"margin: 0;\">Q Bazar</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 30px;\" bgcolor=\"#1e1e2c\">\r\n<table style=\"border-collapse: collapse; width: 99.4769%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"color: #ffffff; font-family: Arial, sans-serif; font-size: 14px; width: 99.8141%;\">\r\n<p style=\"margin: 0px; text-align: center;\">&reg; Qbazar 2022</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '2022-01-13 01:05:16'),
(10, 'order_completed', 'Your Order Marked as Completed', '<table role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 20px 0 30px 0;\">\r\n<table style=\"border-collapse: collapse; border: 1px solid #cccccc;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 0 30px 0;\" align=\"center\" bgcolor=\"#1e1e2c\"><img src=\"../../../theme/img/website-logo.png\" alt=\"\" width=\"162\" height=\"40\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 40px 30px 40px 30px;\" bgcolor=\"#ffffff\">\r\n<table style=\"border-collapse: collapse; height: 95px; width: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 30px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; height: 30px;\">\r\n<h1 style=\"font-size: 24px; margin: 0;\">Your Order has Completed</h1>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 47px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; font-size: 16px; line-height: 24px; padding: 20px 0px 30px; height: 47px;\">\r\n<p style=\"margin: 0;\">Hi {name},</p>\r\n<p style=\"margin: 0;\">Your Order (Order ID:{order_id}) has completed.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Order ID:{order_id}</p>\r\n<p style=\"margin: 0;\">Order Status:{delivery_status}</p>\r\n<p style=\"margin: 0;\">Payment Status:{payment_status}</p>\r\n<p style=\"margin: 0;\">Payment Method:{payment_method}</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank you for shopping with us.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank You</p>\r\n<p style=\"margin: 0;\">Q Bazar</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 30px;\" bgcolor=\"#1e1e2c\">\r\n<table style=\"border-collapse: collapse; width: 99.4769%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"color: #ffffff; font-family: Arial, sans-serif; font-size: 14px; width: 99.8141%;\">\r\n<p style=\"margin: 0px; text-align: center;\">&reg; Qbazar 2022</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '2022-01-13 01:05:07'),
(11, 'order_canceled', 'Your Order Marked as Canceled', '<table role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 20px 0 30px 0;\">\r\n<table style=\"border-collapse: collapse; border: 1px solid #cccccc;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 0 30px 0;\" align=\"center\" bgcolor=\"#1e1e2c\"><img src=\"../../../theme/img/website-logo.png\" alt=\"\" width=\"162\" height=\"40\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 40px 30px 40px 30px;\" bgcolor=\"#ffffff\">\r\n<table style=\"border-collapse: collapse; height: 95px; width: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 30px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; height: 30px;\">\r\n<h1 style=\"font-size: 24px; margin: 0;\">Your Order has been canceled</h1>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 47px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; font-size: 16px; line-height: 24px; padding: 20px 0px 30px; height: 47px;\">\r\n<p style=\"margin: 0;\">Hi {name},</p>\r\n<p style=\"margin: 0;\">Your Order (Order ID:{order_id}) has been canceled.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Order ID:{order_id}</p>\r\n<p style=\"margin: 0;\">Order Status:{delivery_status}</p>\r\n<p style=\"margin: 0;\">Payment Status:{payment_status}</p>\r\n<p style=\"margin: 0;\">Payment Method:{payment_method}</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank you for shopping with us.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank You</p>\r\n<p style=\"margin: 0;\">Q Bazar</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 30px;\" bgcolor=\"#1e1e2c\">\r\n<table style=\"border-collapse: collapse; width: 99.4769%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"color: #ffffff; font-family: Arial, sans-serif; font-size: 14px; width: 99.8141%;\">\r\n<p style=\"margin: 0px; text-align: center;\">&reg; Qbazar 2022</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '2022-01-13 01:04:57'),
(12, 'assign_delivery_boy', 'New order assign to you for delivery', '<table role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 20px 0 30px 0;\">\r\n<table style=\"border-collapse: collapse; border: 1px solid #cccccc;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 0 30px 0;\" align=\"center\" bgcolor=\"#1e1e2c\"><img src=\"../../../theme/img/website-logo.png\" alt=\"\" width=\"162\" height=\"40\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 40px 30px 40px 30px;\" bgcolor=\"#ffffff\">\r\n<table style=\"border-collapse: collapse; height: 95px; width: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 30px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; height: 30px;\">\r\n<h1 style=\"font-size: 24px; margin: 0;\">New order assign to you for delivery</h1>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 47px;\">\r\n<td style=\"color: #153643; font-family: Arial, sans-serif; font-size: 16px; line-height: 24px; padding: 20px 0px 30px; height: 47px;\">\r\n<p style=\"margin: 0;\">Hi{name},</p>\r\n<p style=\"margin: 0;\">New Order (Order ID:{order_id}) has been assigned to you for delivery.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Order ID:{order_id}</p>\r\n<p style=\"margin: 0;\">Order Status:{delivery_status}</p>\r\n<p style=\"margin: 0;\">Payment Status:{payment_status}</p>\r\n<p style=\"margin: 0;\">Payment Method:{payment_method}</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank you for shopping with us.</p>\r\n<p style=\"margin: 0;\">&nbsp;</p>\r\n<p style=\"margin: 0;\">Thank You</p>\r\n<p style=\"margin: 0;\">Q Bazar</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 30px;\" bgcolor=\"#1e1e2c\">\r\n<table style=\"border-collapse: collapse; width: 99.4769%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"color: #ffffff; font-family: Arial, sans-serif; font-size: 14px; width: 99.8141%;\">\r\n<p style=\"margin: 0px; text-align: center;\">&reg; Qbazar 2022</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '2022-01-13 01:04:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_12_152015_create_email_templates_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_09_01_080940_create_settings_table', 1),
(6, '2020_07_02_145857_create_database_backups_table', 1),
(7, '2020_07_06_142817_create_roles_table', 1),
(8, '2020_07_06_143240_create_permissions_table', 1),
(9, '2021_05_24_081012_create_categories_table', 1),
(10, '2021_05_24_082200_create_category_translations_table', 1),
(11, '2021_05_24_082301_create_units_table', 1),
(12, '2021_05_24_082302_create_unit_translations_table', 1),
(13, '2021_05_24_082501_create_products_table', 1),
(14, '2021_05_24_082502_create_product_translations_table', 1),
(15, '2021_05_24_152754_create_coupons_table', 1),
(16, '2021_05_24_152844_create_coupon_translations_table', 1),
(17, '2021_05_24_171317_create_coupon_products_table', 1),
(18, '2021_05_24_171318_create_coupon_categories_table', 1),
(19, '2021_06_01_172141_create_orders_table', 1),
(20, '2021_06_01_172303_create_order_products_table', 1),
(21, '2021_06_02_142034_create_transactions_table', 1),
(22, '2021_07_02_145504_create_pages_table', 1),
(23, '2021_07_02_145952_create_page_translations_table', 1),
(25, '2022_02_20_065546_create_product_stocks_table', 2),
(26, '2022_02_24_070425_create_product_stocks_table', 3),
(28, '2022_02_28_103105_create_temp_products_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(10,2) UNSIGNED NOT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_cost` decimal(10,2) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `discount` decimal(10,2) UNSIGNED NOT NULL,
  `total` decimal(10,2) UNSIGNED NOT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_boy_id` bigint(20) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'express',
  `delivery_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `customer_name`, `customer_email`, `customer_phone`, `shipping_address`, `sub_total`, `shipping_method`, `shipping_cost`, `coupon_id`, `discount`, `total`, `currency`, `payment_method`, `payment_status`, `delivery_status`, `delivery_boy_id`, `note`, `delivery_type`, `delivery_time`, `created_at`, `updated_at`) VALUES
(1, 2, 'Emran Miah', 'gaziemran2@gmail.com', '01623284207', 'House 63, Road 13, Sector 10, Uttara', '178.00', 'Flat Rate', '0.00', NULL, '0.00', '178.00', 'BDT', 'cash_on_delivery', 'paid', 'completed', NULL, '', 'express', '2021-10-18 12:10:53', '2021-10-18 03:53:02', '2021-10-18 08:10:10'),
(2, 4, 'bari', 'bari@gmail.com', '01608728680', 'uttara', '1064.00', 'Flat Rate', '0.00', NULL, '0.00', '1064.00', 'BDT', 'cash_on_delivery', 'paid', 'completed', NULL, '', 'express', '2021-10-18 16:10:47', '2021-10-18 07:47:51', '2021-10-25 08:04:50'),
(3, 4, 'bari', 'bari@gmail.com', '01608728680', 'uttara', '24.00', 'Flat Rate', '5.00', NULL, '0.00', '29.00', 'BDT', 'cash_on_delivery', 'paid', 'completed', NULL, '', 'express', '2021-10-18 16:10:56', '2021-10-18 07:56:30', '2021-10-18 07:57:10'),
(4, 5, 'ZAMAN KHAN', 'zamanit2008@gmail.com', '01973009007', 'House 63, Road 13, Sector 10, Uttara', '18.00', 'Flat Rate', '5.00', NULL, '0.00', '23.00', 'BDT', 'cash_on_delivery', 'paid', 'completed', NULL, '', 'express', '2021-10-18 19:10:04', '2021-10-18 10:04:01', '2021-10-25 08:13:04'),
(7, 7, 'Gazi', 'gazi@zaman-it.com', '01763061061', 'uttara', '430.00', 'Flat Rate', '0.00', NULL, '0.00', '430.00', 'BDT', 'cash_on_delivery', 'paid', 'completed', NULL, '', 'express', '2021-10-25 16:10:57', '2021-10-25 07:57:56', '2021-10-25 08:13:38'),
(8, 8, 'Mizan', 'mizan@gimal.com', '01778585363', 'H#111 R#7 Mohammadpur Dhaka', '178.00', 'Flat Rate', '0.00', NULL, '0.00', '178.00', 'BDT', 'cash_on_delivery', 'paid', 'completed', NULL, '', 'express', '2021-10-25 17:10:08', '2021-10-25 08:08:52', '2021-10-25 08:14:26'),
(9, 10, 'ENGR.MD.ANISUZZAMAN TARAFDER', 'anistarafder@gmail.com', '01711664939', '43/2, Ring Road, Shymoli, DHAKA', '1679.00', 'Flat Rate', '0.00', NULL, '0.00', '1679.00', 'BDT', 'cash_on_delivery', 'paid', 'completed', NULL, '', 'express', '2021-10-29 02:10:30', '2021-10-28 17:30:49', '2021-11-07 04:28:33'),
(10, 14, 'Khaleda', 'azrasalim14@gmail.com', '01713012757', 'Apt 1 C, House 20, Road 55, Gulshan', '320.00', 'Flat Rate', '0.00', NULL, '0.00', '320.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2021-11-16 02:11:19', '2021-11-15 17:19:04', '2021-11-15 17:19:04'),
(11, 14, 'Khaleda', 'azrasalim14@gmail.com', '01713012757', 'Apt 1C, Hs 20, Rd 55, Gulshan', '150.00', 'Flat Rate', '0.00', NULL, '0.00', '150.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2021-11-16 02:11:30', '2021-11-15 17:30:52', '2021-11-15 17:30:52'),
(12, 16, 'Shamsia Jafrin Shuchi', 'sjshuchi5@gmail.com', '01557474198', 'Luxmibazar', '790.00', 'Flat Rate', '0.00', NULL, '0.00', '790.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2021-11-16 10:11:23', '2021-11-16 01:23:14', '2021-11-16 01:23:14'),
(13, 17, 'Md. Samad Hosen', 'abirmahmud488@gmail.com', '01734522957', 'Banani, Dhaka', '120.00', 'Flat Rate', '0.00', NULL, '0.00', '120.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, 'Express Delivery', 'express', '2021-11-17 11:11:34', '2021-11-17 02:34:59', '2021-11-17 02:34:59'),
(14, 15, 'Abul ALi', 'abul@gmail.com', '01811221122', 'Chad', '1818.00', 'Flat Rate', '0.00', 1, '181.80', '1636.20', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2021-11-18 12:11:06', '2021-11-18 03:06:38', '2021-11-18 03:06:38'),
(15, 10, 'ENGR.MD.ANISUZZAMAN TARAFDER', 'anistarafder@gmail.com', '01711664939', '43/2, Ring Road, Shymoli, DHAKA', '710.00', 'Flat Rate', '0.00', NULL, '0.00', '710.00', 'BDT', 'cash_on_delivery', 'pending', 'processing', NULL, '', 'preorder', '2021-11-20 09:45:35', '2021-11-20 01:45:44', '2022-01-02 06:09:43'),
(16, 3, 'Sadi', 'sadi@qbazar.com.bd', '01608728677', 'House # 63, Road # 13, Sector # 10', '18.00', 'Flat Rate', '5.00', NULL, '0.00', '23.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2021-11-24 10:11:41', '2021-11-24 01:41:33', '2021-11-24 01:41:33'),
(17, 19, 'Abu Bakar Siddique', 'siddique@ts-integration.net', '01755631811', 'Axis Delvista', '600.00', 'Flat Rate', '0.00', NULL, '0.00', '600.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '2nd Floor', 'express', '2021-12-20 19:12:32', '2021-12-20 10:32:26', '2021-12-20 10:32:26'),
(22, 19, 'Abu Bakar Siddique', 'siddique@ts-integration.net', '01755631811', 'uttara', '36.00', 'Flat Rate', '5.00', NULL, '0.00', '41.00', 'BDT', 'cash_on_delivery', 'pending', 'processing', 3, '', 'express', '2021-12-27 18:12:37', '2021-12-27 09:37:53', '2021-12-29 04:11:10'),
(23, 20, 'Mehedhi', 'test@gmail.com', '01866717826', 'Kalabagan', '1500.00', 'Flat Rate', '0.00', NULL, '0.00', '1500.00', 'BDT', 'cash_on_delivery', 'paid', 'completed', NULL, '', 'express', '2021-12-29 13:12:15', '2021-12-29 04:15:42', '2021-12-30 03:49:26'),
(24, 20, 'Mehedi', 'test@gmail.com', '01866717826', 'Kalabagan', '29999.00', 'Flat Rate', '0.00', NULL, '0.00', '29999.00', 'BDT', 'cash_on_delivery', 'pending', 'processing', 33, '', 'express', '2022-01-04 15:01:22', '2022-01-04 06:22:46', '2022-01-10 04:38:13'),
(25, 20, 'Mehedi', 'test@gmail.com', '01866717826', 'Kalabagan', '29000.00', 'Flat Rate', '0.00', NULL, '0.00', '29000.00', 'BDT', 'cash_on_delivery', 'paid', 'completed', 23, '', 'preorder', '2022-01-04 14:23:28', '2022-01-04 06:23:40', '2022-01-04 06:25:16'),
(26, 20, 'Mehedi', 'mh271786@gmail.com', '01866717826', 'Kalabagan', '29999.00', 'Flat Rate', '0.00', NULL, '0.00', '29999.00', 'BDT', 'cash_on_delivery', 'pending', 'processing', 33, 'd', 'preorder', '2022-01-29 11:57:00', '2022-01-08 03:57:34', '2022-01-10 04:37:22'),
(27, 24, 'Antarip Saha', 'dip@gmail.com', '01713702979', 'Dhaka', '34.00', 'Flat Rate', '5.00', 7, '0.00', '39.00', 'BDT', 'cash_on_delivery', 'pending', 'processing', 25, '', 'express', '2022-01-08 13:01:11', '2022-01-08 04:11:43', '2022-01-10 04:57:11'),
(28, 24, 'Antarip Saha', 'dip@gmail.com', '01713702979', 'Dhaka', '34.00', 'Flat Rate', '5.00', 7, '0.00', '39.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2022-01-08 13:01:11', '2022-01-08 04:11:51', '2022-01-08 04:11:51'),
(29, 24, 'Antarip Saha', 'dip@gmail.com', '01713702979', 'Dhaka', '194.00', 'Flat Rate', '0.00', 7, '0.00', '194.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2022-01-08 13:01:13', '2022-01-08 04:13:04', '2022-01-08 04:13:04'),
(30, 24, 'Antarip Saha', 'dip@gmail.com', '01713702979', 'Dhaka', '424.00', 'Flat Rate', '0.00', 7, '0.00', '424.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2022-01-08 13:01:18', '2022-01-08 04:18:23', '2022-01-08 04:18:23'),
(31, 24, 'Antarip Saha', 'dip@gmail.com', '01713702979', 'Dhaka', '424.00', 'Flat Rate', '0.00', 7, '0.00', '424.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2022-01-08 13:01:19', '2022-01-08 04:19:12', '2022-01-08 04:19:12'),
(32, 24, 'Antarip Saha', 'dip@gmail.com', '01713702979', 'Dhaka', '424.00', 'Flat Rate', '0.00', 7, '3.40', '420.60', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2022-01-08 13:01:42', '2022-01-08 04:42:52', '2022-01-08 04:42:52'),
(33, 24, 'Antarip Saha', 'dip@gmail.com', '01713702979', 'Dhaka', '444.00', 'Flat Rate', '0.00', 7, '3.40', '440.60', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2022-01-08 13:01:43', '2022-01-08 04:43:45', '2022-01-08 04:43:45'),
(34, 24, 'Antarip Saha', 'dip@gmail.com', '01713702979', 'Dhaka', '722.00', 'Flat Rate', '0.00', 7, '10.00', '712.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2022-01-08 13:01:52', '2022-01-08 04:52:10', '2022-01-08 04:52:10'),
(35, 24, 'Antarip Saha', 'dip@gmail.com', '01713702979', 'Dhaka', '424.00', 'Flat Rate', '0.00', 7, '10.00', '414.00', 'BDT', 'cash_on_delivery', 'pending', 'processing', 23, '', 'express', '2022-01-08 13:01:53', '2022-01-08 04:53:14', '2022-01-10 08:38:40'),
(36, 24, 'Antarip Saha', 'dip@gmail.com', '01713702979', 'Dhaka', '260.00', 'Flat Rate', '0.00', 1, '26.00', '234.00', 'BDT', 'cash_on_delivery', 'paid', 'completed', 33, '', 'express', '2022-01-08 16:01:06', '2022-01-08 07:06:36', '2022-01-10 04:41:08'),
(37, 24, 'Antarip Saha', 'dip@gmail.com', '01713702979', 'Dhaka', '680.00', 'Flat Rate', '0.00', 9, '60.00', '620.00', 'BDT', 'cash_on_delivery', 'paid', 'completed', 33, '', 'express', '2022-01-08 16:01:54', '2022-01-08 07:54:27', '2022-01-10 04:33:56'),
(38, 4, 'Ashfaqul Bari', 'bari.zamanit@gmail.com', '01959621322', 'Uttara', '29000.00', 'Flat Rate', '0.00', NULL, '0.00', '29000.00', 'BDT', 'cash_on_delivery', 'pending', 'processing', 23, 'After 2pm', 'express', '2022-01-08 17:01:30', '2022-01-08 08:30:44', '2022-01-10 04:27:01'),
(39, 4, 'Ashfaqul Bari', 'bari.zamanit@gmail.com', '01959621322', 'Uttara', '870.00', 'Flat Rate', '0.00', NULL, '0.00', '870.00', 'BDT', 'cash_on_delivery', 'pending', 'processing', 23, '', 'express', '2022-01-08 17:01:38', '2022-01-08 08:38:12', '2022-01-10 04:26:52'),
(40, 20, 'Mehedi', 'mh271786@gmail.com', '01866717826', 'Kalabagan', '1000.00', 'Flat Rate', '0.00', 10, '500.00', '500.00', 'BDT', 'cash_on_delivery', 'pending', 'processing', 25, '', 'express', '2022-01-10 14:01:10', '2022-01-10 05:10:47', '2022-01-10 08:20:16'),
(41, 20, 'Mehedi', 'mh271786@gmail.com', '01866717826', 'Kalabagan', '18.00', 'Flat Rate', '5.00', 10, '50.00', '0.00', 'BDT', 'cash_on_delivery', 'paid', 'completed', 25, '', 'express', '2022-01-10 14:01:15', '2022-01-10 05:15:34', '2022-01-15 05:44:34'),
(42, 20, 'Mehedi', 'mh271786@gmail.com', '01866717826', 'Kalabagan', '1300.00', 'Flat Rate', '0.00', 10, '50.00', '1250.00', 'BDT', 'cash_on_delivery', 'paid', 'completed', NULL, '', 'express', '2022-01-15 14:01:45', '2022-01-15 05:45:38', '2022-01-29 09:35:15'),
(43, 20, 'Mehedi', 'mh271786@gmail.com', '01866717826', 'Kalabagan', '29999.00', 'Flat Rate', '0.00', 10, '50.00', '29949.00', 'BDT', 'cash_on_delivery', 'paid', 'completed', 23, '', 'preorder', '2022-01-15 14:14:09', '2022-01-15 06:14:18', '2022-01-15 06:16:30'),
(44, 43, 'Dip', 'antarip15@gmail.com', '01713702979', 'uttara, zamanit', '87000.00', 'Flat Rate', '0.00', NULL, '0.00', '87000.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2022-01-22 11:01:01', '2022-01-22 02:01:23', '2022-01-22 02:01:23'),
(45, 20, 'Mehedi', 'mh271786@gmail.com', '01866717826', 'Kalabagan', '30.00', 'Flat Rate', '5.00', NULL, '0.00', '35.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2022-01-24 20:01:25', '2022-01-24 11:25:36', '2022-01-24 11:25:36'),
(46, 5, 'ZAMAN KHAN', 'zamanit2008@gmail.com', '01973009007', 'House 63, Road 13, Sector 10, Uttara', '20.00', 'Flat Rate', '5.00', NULL, '0.00', '25.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2022-01-30 02:01:16', '2022-01-29 17:16:20', '2022-01-29 17:16:20'),
(47, 5, 'ZAMAN KHAN', 'zamanit2008@gmail.com', '01973009007', '-', '1490.00', 'Flat Rate', '0.00', NULL, '0.00', '1490.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2022-01-30 02:01:17', '2022-01-29 17:17:48', '2022-01-29 17:17:48'),
(48, 5, 'ZAMAN KHAN', 'zamanit2008@gmail.com', '01973009007', '-', '760.00', 'Flat Rate', '0.00', NULL, '0.00', '760.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2022-01-30 02:01:19', '2022-01-29 17:19:28', '2022-01-29 17:19:28'),
(49, 32, 'mehedi hasan', 'm@gmail.com', '01866717825', 'dhaka 1212', '120.00', 'Flat Rate', '0.00', NULL, '0.00', '120.00', 'BDT', 'cash_on_delivery', 'paid', 'completed', 23, '', 'express', '2022-02-06 13:02:10', '2022-02-06 04:10:54', '2022-02-06 04:14:30'),
(50, 32, 'mehedi hasan', 'm@gmail.com', '01866717825', 'dhaka 1212', '60.00', 'Flat Rate', '5.00', NULL, '0.00', '65.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2022-02-09 15:02:47', '2022-02-09 06:47:24', '2022-02-09 06:47:24'),
(51, 20, 'Mehedi', 'mh271786@gmail.com', '01866717826', 'Kalabagan', '200.00', 'Flat Rate', '0.00', NULL, '0.00', '200.00', 'BDT', 'cash_on_delivery', 'pending', 'processing', 23, '', 'express', '2022-02-13 13:02:07', '2022-02-13 04:07:55', '2022-02-13 04:11:35'),
(52, 49, 'Shajjadul Bari Abir', 'abircu90@gmail.com', '01816302331', 'Mouchak,Aysha Shopping Complex, 4th Floor. (Saifurs Center)', '195.00', 'Flat Rate', '0.00', NULL, '0.00', '195.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2022-02-16 17:02:04', '2022-02-16 08:04:58', '2022-02-16 08:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `unit_price` decimal(10,2) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `line_total` decimal(10,2) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `unit_price`, `qty`, `line_total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '18.00', 1, '18.00', '2021-10-18 03:53:02', '2021-10-18 03:53:02'),
(2, 1, 4, '160.00', 1, '160.00', '2021-10-18 03:53:02', '2021-10-18 03:53:02'),
(3, 2, 1, '18.00', 3, '54.00', '2021-10-18 07:47:51', '2021-10-18 07:47:51'),
(4, 2, 4, '160.00', 1, '160.00', '2021-10-18 07:47:51', '2021-10-18 07:47:51'),
(5, 2, 29, '850.00', 1, '850.00', '2021-10-18 07:47:51', '2021-10-18 07:47:51'),
(6, 3, 3, '12.00', 2, '24.00', '2021-10-18 07:56:30', '2021-10-18 07:56:30'),
(7, 4, 1, '18.00', 1, '18.00', '2021-10-18 10:04:01', '2021-10-18 10:04:01'),
(14, 7, 1, '18.00', 9, '162.00', '2021-10-25 07:57:56', '2021-10-25 07:57:56'),
(15, 7, 4, '160.00', 1, '160.00', '2021-10-25 07:57:56', '2021-10-25 07:57:56'),
(16, 7, 2, '16.00', 3, '48.00', '2021-10-25 07:57:56', '2021-10-25 07:57:56'),
(17, 7, 3, '12.00', 3, '36.00', '2021-10-25 07:57:56', '2021-10-25 07:57:56'),
(18, 7, 27, '8.00', 3, '24.00', '2021-10-25 07:57:56', '2021-10-25 07:57:56'),
(19, 8, 1, '18.00', 1, '18.00', '2021-10-25 08:08:52', '2021-10-25 08:08:52'),
(20, 8, 4, '160.00', 1, '160.00', '2021-10-25 08:08:52', '2021-10-25 08:08:52'),
(21, 9, 2, '16.00', 1, '16.00', '2021-10-28 17:30:49', '2021-10-28 17:30:49'),
(22, 9, 4, '160.00', 1, '160.00', '2021-10-28 17:30:49', '2021-10-28 17:30:49'),
(23, 9, 1, '18.00', 1, '18.00', '2021-10-28 17:30:49', '2021-10-28 17:30:49'),
(24, 9, 7, '430.00', 1, '430.00', '2021-10-28 17:30:49', '2021-10-28 17:30:49'),
(25, 9, 12, '150.00', 1, '150.00', '2021-10-28 17:30:49', '2021-10-28 17:30:49'),
(26, 9, 18, '120.00', 1, '120.00', '2021-10-28 17:30:49', '2021-10-28 17:30:49'),
(27, 9, 37, '45.00', 1, '45.00', '2021-10-28 17:30:49', '2021-10-28 17:30:49'),
(28, 9, 38, '360.00', 1, '360.00', '2021-10-28 17:30:49', '2021-10-28 17:30:49'),
(29, 9, 40, '380.00', 1, '380.00', '2021-10-28 17:30:49', '2021-10-28 17:30:49'),
(30, 10, 11, '160.00', 2, '320.00', '2021-11-15 17:19:04', '2021-11-15 17:19:04'),
(31, 11, 12, '150.00', 1, '150.00', '2021-11-15 17:30:52', '2021-11-15 17:30:52'),
(32, 12, 20, '40.00', 1, '40.00', '2021-11-16 01:23:14', '2021-11-16 01:23:14'),
(33, 12, 23, '130.00', 1, '130.00', '2021-11-16 01:23:14', '2021-11-16 01:23:14'),
(34, 12, 39, '110.00', 1, '110.00', '2021-11-16 01:23:14', '2021-11-16 01:23:14'),
(35, 12, 33, '60.00', 1, '60.00', '2021-11-16 01:23:14', '2021-11-16 01:23:14'),
(36, 12, 32, '450.00', 1, '450.00', '2021-11-16 01:23:14', '2021-11-16 01:23:14'),
(37, 13, 18, '120.00', 1, '120.00', '2021-11-17 02:34:59', '2021-11-17 02:34:59'),
(38, 14, 32, '450.00', 4, '1800.00', '2021-11-18 03:06:38', '2021-11-18 03:06:38'),
(39, 14, 1, '18.00', 1, '18.00', '2021-11-18 03:06:38', '2021-11-18 03:06:38'),
(40, 15, 5, '480.00', 1, '480.00', '2021-11-20 01:45:44', '2021-11-20 01:45:44'),
(41, 15, 25, '230.00', 1, '230.00', '2021-11-20 01:45:44', '2021-11-20 01:45:44'),
(42, 16, 1, '18.00', 1, '18.00', '2021-11-24 01:41:33', '2021-11-24 01:41:33'),
(43, 17, 32, '450.00', 1, '450.00', '2021-12-20 10:32:26', '2021-12-20 10:32:26'),
(44, 17, 31, '150.00', 1, '150.00', '2021-12-20 10:32:26', '2021-12-20 10:32:26'),
(52, 22, 1, '18.00', 2, '36.00', '2021-12-27 09:37:53', '2021-12-27 09:37:53'),
(53, 23, 47, '1500.00', 1, '1500.00', '2021-12-29 04:15:42', '2021-12-29 04:15:42'),
(54, 24, 49, '29999.00', 1, '29999.00', '2022-01-04 06:22:46', '2022-01-04 06:22:46'),
(55, 25, 50, '29000.00', 1, '29000.00', '2022-01-04 06:23:40', '2022-01-04 06:23:40'),
(56, 26, 49, '29999.00', 1, '29999.00', '2022-01-08 03:57:34', '2022-01-08 03:57:34'),
(57, 27, 1, '18.00', 1, '18.00', '2022-01-08 04:11:43', '2022-01-08 04:11:43'),
(58, 27, 2, '16.00', 1, '16.00', '2022-01-08 04:11:43', '2022-01-08 04:11:43'),
(59, 28, 1, '18.00', 1, '18.00', '2022-01-08 04:11:51', '2022-01-08 04:11:51'),
(60, 28, 2, '16.00', 1, '16.00', '2022-01-08 04:11:51', '2022-01-08 04:11:51'),
(61, 29, 1, '18.00', 1, '18.00', '2022-01-08 04:13:04', '2022-01-08 04:13:04'),
(62, 29, 4, '160.00', 1, '160.00', '2022-01-08 04:13:04', '2022-01-08 04:13:04'),
(63, 29, 2, '16.00', 1, '16.00', '2022-01-08 04:13:04', '2022-01-08 04:13:04'),
(64, 30, 1, '18.00', 1, '18.00', '2022-01-08 04:18:23', '2022-01-08 04:18:23'),
(65, 30, 44, '230.00', 1, '230.00', '2022-01-08 04:18:23', '2022-01-08 04:18:23'),
(66, 30, 4, '160.00', 1, '160.00', '2022-01-08 04:18:23', '2022-01-08 04:18:23'),
(67, 30, 2, '16.00', 1, '16.00', '2022-01-08 04:18:23', '2022-01-08 04:18:23'),
(68, 31, 1, '18.00', 1, '18.00', '2022-01-08 04:19:12', '2022-01-08 04:19:12'),
(69, 31, 44, '230.00', 1, '230.00', '2022-01-08 04:19:12', '2022-01-08 04:19:12'),
(70, 31, 4, '160.00', 1, '160.00', '2022-01-08 04:19:12', '2022-01-08 04:19:12'),
(71, 31, 2, '16.00', 1, '16.00', '2022-01-08 04:19:12', '2022-01-08 04:19:12'),
(72, 32, 1, '18.00', 1, '18.00', '2022-01-08 04:42:52', '2022-01-08 04:42:52'),
(73, 32, 44, '230.00', 1, '230.00', '2022-01-08 04:42:52', '2022-01-08 04:42:52'),
(74, 32, 4, '160.00', 1, '160.00', '2022-01-08 04:42:52', '2022-01-08 04:42:52'),
(75, 32, 2, '16.00', 1, '16.00', '2022-01-08 04:42:52', '2022-01-08 04:42:52'),
(76, 33, 1, '18.00', 1, '18.00', '2022-01-08 04:43:45', '2022-01-08 04:43:45'),
(77, 33, 44, '230.00', 1, '230.00', '2022-01-08 04:43:45', '2022-01-08 04:43:45'),
(78, 33, 4, '160.00', 1, '160.00', '2022-01-08 04:43:45', '2022-01-08 04:43:45'),
(79, 33, 2, '16.00', 1, '16.00', '2022-01-08 04:43:45', '2022-01-08 04:43:45'),
(80, 33, 3, '12.00', 1, '12.00', '2022-01-08 04:43:45', '2022-01-08 04:43:45'),
(81, 33, 27, '8.00', 1, '8.00', '2022-01-08 04:43:45', '2022-01-08 04:43:45'),
(82, 34, 1, '18.00', 2, '36.00', '2022-01-08 04:52:10', '2022-01-08 04:52:10'),
(83, 34, 2, '16.00', 1, '16.00', '2022-01-08 04:52:10', '2022-01-08 04:52:10'),
(84, 34, 5, '480.00', 1, '480.00', '2022-01-08 04:52:10', '2022-01-08 04:52:10'),
(85, 34, 6, '190.00', 1, '190.00', '2022-01-08 04:52:10', '2022-01-08 04:52:10'),
(86, 35, 1, '18.00', 1, '18.00', '2022-01-08 04:53:14', '2022-01-08 04:53:14'),
(87, 35, 44, '230.00', 1, '230.00', '2022-01-08 04:53:14', '2022-01-08 04:53:14'),
(88, 35, 4, '160.00', 1, '160.00', '2022-01-08 04:53:14', '2022-01-08 04:53:14'),
(89, 35, 2, '16.00', 1, '16.00', '2022-01-08 04:53:14', '2022-01-08 04:53:14'),
(90, 36, 35, '260.00', 1, '260.00', '2022-01-08 07:06:36', '2022-01-08 07:06:36'),
(91, 37, 15, '320.00', 1, '320.00', '2022-01-08 07:54:27', '2022-01-08 07:54:27'),
(92, 37, 38, '360.00', 1, '360.00', '2022-01-08 07:54:27', '2022-01-08 07:54:27'),
(93, 38, 50, '29000.00', 1, '29000.00', '2022-01-08 08:30:44', '2022-01-08 08:30:44'),
(94, 39, 12, '150.00', 1, '150.00', '2022-01-08 08:38:12', '2022-01-08 08:38:12'),
(95, 39, 19, '170.00', 1, '170.00', '2022-01-08 08:38:12', '2022-01-08 08:38:12'),
(96, 39, 28, '550.00', 1, '550.00', '2022-01-08 08:38:12', '2022-01-08 08:38:12'),
(97, 40, 46, '1000.00', 1, '1000.00', '2022-01-10 05:10:47', '2022-01-10 05:10:47'),
(98, 41, 1, '18.00', 1, '18.00', '2022-01-10 05:15:34', '2022-01-10 05:15:34'),
(99, 42, 48, '1300.00', 1, '1300.00', '2022-01-15 05:45:38', '2022-01-15 05:45:38'),
(100, 43, 49, '29999.00', 1, '29999.00', '2022-01-15 06:14:18', '2022-01-15 06:14:18'),
(101, 44, 77, '29000.00', 2, '58000.00', '2022-01-22 02:01:23', '2022-01-22 02:01:23'),
(102, 44, 50, '29000.00', 1, '29000.00', '2022-01-22 02:01:23', '2022-01-22 02:01:23'),
(103, 45, 123, '30.00', 1, '30.00', '2022-01-24 11:25:36', '2022-01-24 11:25:36'),
(104, 46, 185, '20.00', 1, '20.00', '2022-01-29 17:16:20', '2022-01-29 17:16:20'),
(105, 47, 274, '460.00', 1, '460.00', '2022-01-29 17:17:48', '2022-01-29 17:17:48'),
(106, 47, 233, '720.00', 1, '720.00', '2022-01-29 17:17:48', '2022-01-29 17:17:48'),
(107, 47, 11, '160.00', 1, '160.00', '2022-01-29 17:17:48', '2022-01-29 17:17:48'),
(108, 47, 12, '150.00', 1, '150.00', '2022-01-29 17:17:48', '2022-01-29 17:17:48'),
(109, 48, 24, '140.00', 2, '280.00', '2022-01-29 17:19:28', '2022-01-29 17:19:28'),
(110, 48, 5, '480.00', 1, '480.00', '2022-01-29 17:19:28', '2022-01-29 17:19:28'),
(111, 49, 395, '30.00', 1, '30.00', '2022-02-06 04:10:54', '2022-02-06 04:10:54'),
(112, 49, 414, '90.00', 1, '90.00', '2022-02-06 04:10:54', '2022-02-06 04:10:54'),
(113, 50, 258, '60.00', 1, '60.00', '2022-02-09 06:47:24', '2022-02-09 06:47:24'),
(114, 51, 414, '90.00', 2, '180.00', '2022-02-13 04:07:55', '2022-02-13 04:07:55'),
(115, 51, 395, '20.00', 1, '20.00', '2022-02-13 04:07:55', '2022-02-13 04:07:55'),
(116, 52, 327, '15.00', 1, '15.00', '2022-02-16 08:04:58', '2022-02-16 08:04:58'),
(117, 52, 324, '15.00', 1, '15.00', '2022-02-16 08:04:58', '2022-02-16 08:04:58'),
(118, 52, 45, '80.00', 1, '80.00', '2022-02-16 08:04:58', '2022-02-16 08:04:58'),
(119, 52, 464, '85.00', 1, '85.00', '2022-02-16 08:04:58', '2022-02-16 08:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'privacy-policy', 1, '2021-10-18 08:15:58', '2021-10-18 08:15:58'),
(2, 'terms-conditions', 1, '2021-10-18 08:16:12', '2021-10-18 08:16:12'),
(3, 'returns-refunds', 1, '2021-10-18 08:17:25', '2021-10-18 08:17:25'),
(4, 'about-us', 1, '2021-10-18 08:17:45', '2021-10-18 08:17:45'),
(5, 'contact-us', 1, '2021-10-18 08:18:07', '2021-10-18 08:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'English', 'Privacy Policy', '<p><span style=\"color: #000000;\">When you use our Website, we collect and store your personal information which is provided by you from time to time. Our primary goal in doing so is to provide you a safe, efficient, smooth and customized experience. This allows us to provide services and features that most likely meet your needs, and to customize our website to make your experience safer and easier. More importantly, while doing so, we collect personal information from you that we consider necessary for achieving this purpose.</span></p>\r\n<p><span style=\"color: #000000;\">Below are some of the ways in which we collect and store your information: </span></p>\r\n<p><span style=\"color: #000000;\">a)  We receive and store any information you enter on our website or give us in any other way. We use the information that you provide for such purposes as responding to your requests, customizing future shopping for you, improving our stores, and communicating with you.</span></p>\r\n<p><span style=\"color: #000000;\">b)  We also store certain types of information whenever you interact with us. For example, like many websites, we use \"cookies,\" and we obtain certain types of information when your web browser accesses qbazar.com.bd or advertisements and other content served by or on behalf of qbazar.com.bd on other websites.</span></p>\r\n<p><span style=\"color: #000000;\">c)  </span><span style=\"color: #000000;\">When signing up via Facebook, we collect your Name and Email (provided by Facebook) as part of your Qbazar account Information.</span></p>\r\n<p><span style=\"color: #000000;\">d)  </span><span style=\"color: #000000;\">To help us make e-mails more useful and interesting, we often receive a confirmation when you open e-mail from Qbazar if your computer supports such capabilities.</span></p>\r\n<p> </p>\r\n<p><span style=\"color: #000000;\"><strong>Changes To Your Information:</strong></span></p>\r\n<p><span style=\"color: #000000;\">The information you provide us isn’t set in stone. You may review, update, correct or delete the personal information in your profile at any time.</span></p>\r\n<p><span style=\"color: #000000;\">a) If you would like us to remove your information from our records, please create a request at the Contact Us page.</span></p>\r\n<p><span style=\"color: #000000;\">b) To Delete your Facebook login, visit the Contact Us page while logged in via Facebook. You should see a \"Delete Facebook Login\" option to create a request to remove Facebook login from your account.</span></p>\r\n<p><span style=\"color: #000000;\">Information about our customers is an important part of our business, and we are not in the business of selling it to others. </span><br /><br /></p>\r\n<p><span style=\"color: #000000;\">We release account and other personal information when we believe release is appropriate to comply with the law; enforce or apply our Terms of Use and other agreements; or protect the rights, property, or safety of qbazar.com, our users, or others. This includes exchanging information with other companies and organizations for fraud protection.</span></p>\r\n<p><span style=\"color: #000000;\"><strong>2.  Eligibility</strong> </span></p>\r\n<p><span style=\"color: #000000;\">2.1 Use of the Website is available only to such persons who can legally contract under the Contract Act, 1872. </span></p>\r\n<p><span style=\"color: #000000;\">2.2  If you are a minor i.e. under the age of 18 years, you shall not register as a user of Qbazar.com.bd and shall not transact on or use the Website. As a minor if you wish to use or transact on website, such use or transaction may be made by your legal guardian or parents on the Website. Qbazar reserves the right to terminate your membership and / or refuse to provide you with access to the website if it is brought to Qbazar’s notice or if it is discovered that you are under the age of 18 years. </span></p>\r\n<p><span style=\"color: #000000;\">2.3  By accepting the Terms or using or transacting on the Website, the User irrevocably declares and undertakes that he/she is of legal age i.e. 18 years or older and capable of entering into a binding contract and such usage shall be deemed to form a contract between the Website and such User to the extent permissible under applicable laws. </span></p>\r\n<p><span style=\"color: #000000;\">2.4  The usage of the Services offered through the Website is only available if the address of the User to which the product(s) is/are to be delivered is within Dhaka City, Bangladesh; Qbazar is serving with 1 Hour Delivery Service, to Dhaka City. Subject to the above, if the User specifies a convenient time and Qbazar will send the products during that time. </span></p>', '2021-10-18 08:15:58', '2021-10-26 09:36:37'),
(2, 2, 'English', 'Terms & Conditions', '<p><span style=\"color: #000000;\"><strong>Terms of Use</strong> :</span></p>\r\n<p><span style=\"color: #000000;\">1.1  Welcome to <strong>Qbazar.com.bd</strong>. Qbazar Limited (“<strong>Qbazar</strong>”) provides access to the <strong>Qbazar.com.bd</strong> website or the mobile application/app or any other media (\"Website\") to you subject to the terms and conditions (“Terms”) set out on this page. By using the Website, you, a registered or guest user in terms of the eligibility criteria set out herein (“User”) agree to be bound by the Terms. Please read them carefully as your continued usage of the Website, you signify your agreement to be bound by these Terms. If you do not want to be bound by the Terms, you must not subscribe to or use the Website or our services.</span></p>\r\n<p><span style=\"color: #000000;\">1.2  By impliedly or expressly accepting these Terms, you also accept and agree to be bound by <strong>Qbazar Policies</strong> (including but not limited to Privacy Policy available at <a href=\"../../../privacy-policy\">https://qbazar.com.bd/privacy-policy</a>) as amended from time to time.</span></p>\r\n<p><span style=\"color: #000000;\">1.3  In these Terms, references to \"you\", \"User\" shall mean the end user/customer accessing the Website, its contents and using the Services offered through the Website. References to the “Website”, \"<strong>Qbazar</strong>\", “<strong>Qbazar.com.bd</strong>”, \"we\", \"us\" and \"our\" shall mean the Website and/or <strong>Qbazar Limited</strong>. </span></p>\r\n<p><span style=\"color: #000000;\">1.4  The contents set out herein form an electronic record in terms of <strong>তথ্য ও যোগাযোগ প্রযুক্তি আইন, ২০০৬</strong> (Information &amp; Communication Technology Act, 2006) and rules there under as applicable and as amended from time to time. As such, this document does not require any physical or digital signatures and forms a valid and binding agreement between the Website and the User. </span></p>\r\n<p><span style=\"color: #000000;\">1.5  The Website is operated by <strong>Qbazar</strong> Limited., a company incorporated under the laws of Bangladesh having its registered office at 464/C, Khigaon, Dhaka 1219, Bangladesh. All references to the Website in these Terms shall deem to refer to the aforesaid entity in inclusion of the online portal. </span></p>\r\n<p><span style=\"color: #000000;\">1.6  This Website may also contain links to other websites, which are not operated by <strong>Qbazar</strong>, and <strong>Qbazar</strong> has no control over the linked sites and accepts no responsibility for them or for any loss or damage that may arise from your use of them. Your use of the linked sites will be subject to the terms of use and service contained within each such site. </span></p>\r\n<p><span style=\"color: #000000;\">1.7  We reserve the right to change these Terms at any time. Such changes will be effective when posted on the Website. By continuing to use the Website after we post any such changes, you accept the Terms as modified. </span></p>\r\n<p><span style=\"color: #000000;\">1.8  These Terms will continue to apply until terminated by either You or <strong>Qbazar</strong> in accordance with the terms set out below: </span></p>\r\n<p><span style=\"color: #000000;\">1.9   The agreement with <strong>Qbazar</strong> can be terminated by (i) not accessing the Website; or (ii) closing Your Account, if such  option has been made available to You. </span></p>\r\n<p><span style=\"color: #000000;\">1.10  Notwithstanding the foregoing, these provisions set out in these Terms which by their very nature survive are meant to survive termination, shall survive the termination / expiry of this agreement. </span></p>\r\n<p><span style=\"color: #000000;\"><strong> 2. Eligibility</strong> </span></p>\r\n<p><span style=\"color: #000000;\">2.1  Use of the Website is available only to such persons who can legally contract under the Contract Act, 1872. </span></p>\r\n<p><span style=\"color: #000000;\">2.2   If you are a minor i.e. under the age of 18 years, you shall not register as a user of Qbazar.com.bd and shall not transact on or use the Website. As a minor if you wish to use or transact on website, such use or transaction may be made by your legal guardian or parents on the Website. Qbazar reserves the right to terminate your membership and / or refuse to provide you with access to the website if it is brought to Qbazar’s notice or if it is discovered that you are under the age of 18 years. </span></p>\r\n<p><span style=\"color: #000000;\">2.3  By accepting the Terms or using or transacting on the Website, the User irrevocably declares and undertakes that he/she is of legal age i.e. 18 years or older and capable of entering into a binding contract and such usage shall be deemed to form a contract between the Website and such User to the extent permissible under applicable laws.</span></p>\r\n<p><span style=\"color: #000000;\">2.4   The usage of the Services offered through the Website is only available if the address of the User to which the product(s) is/are to be delivered is within Dhaka City, Bangladesh; Qbazaris serving with 1 Hour Delivery Service, to Dhaka City. For the rest of the Dhaka city Qbazar is currently delivering within 4-7 hours timeframe. Subject to the above, if the User specifies a convenient time and Qbazar will send the products during that time. </span></p>\r\n<p><strong><span style=\"color: #000000;\">3.  Communication </span></strong></p>\r\n<p><span style=\"color: #000000;\">3.1  When you use Qbazar.com.bd, or contact us via phone or email, you consent to receive communication from us. You authorize us to communicate with you by e-mail, SMS, phone call or by posting notices on the website or by any other mode of communication. For contractual purposes, you consent to receive communications (including transactional, promotional and/or commercial messages), from us with respect to your use of the website and/or your order placed on the Website. Additionally any disclosures posted on the site, or sent to you by email fulfill the legal obligation of communication made in writing.</span></p>\r\n<p><span style=\"color: #000000;\"><strong>4.  Your Account and Responsibilities </strong></span></p>\r\n<p><span style=\"color: #000000;\">4.1  Any person may access the Website either by registering to the Website or using the Website as a guest. However, a guest user may not have access to all sections of the Website including certain benefits/promotional offers, which shall be reserved only for the purpose of registered Users, and which may change from time to time at the sole discretion of the Website.</span></p>\r\n<p><span style=\"color: #000000;\">4.2  If you wish to register your account with the Website, you shall be required to create an account by registering with a valid Bangladeshi mobile number and/or with your Facebook account or your email address or by filling in the details prescribed in the Website registration form. You will then receive a password or one-time PIN with which you can login to the website to place orders. </span></p>\r\n<p><span style=\"color: #000000;\">4.3  If you use the website, you will be responsible for maintaining the confidentiality of your username and password and you will be responsible for all activities that occur under your username and you will be under the obligation to restrict access to your computer or mobile phone to prevent unauthorised access to your account. You should inform us immediately if you have any reason to believe that your password has become known to anyone else, or if the password is being, or is likely to be, used in an unauthorised manner. You agree that if you provide any information that is untrue, inaccurate, not current or incomplete or we have reasonable grounds to suspect that such information is untrue, inaccurate, not current or incomplete, or not in accordance with this Terms of Use, we have the right to suspend or terminate your membership on the website.</span></p>\r\n<p><span style=\"color: #000000;\">4.4  The Website may be inaccessible for such purposes as it may, at its sole discretions deem necessary, including but not limited to regular maintenance. However, under no circumstances will Qbazar be held liable for any losses or claims arising out of such inaccessibility to the Users and the Users expressly waive any claims against Qbazar in this regard.</span></p>\r\n<p><span style=\"color: #000000;\">4.5  Qbazar as a platform do not support or encourage multiple accounts owned by a single user even with different mobile numbers &amp; reserves the right to restrict , deactivate or disable any account that might fall under any sort of abuse to the service.</span></p>\r\n<p><span style=\"color: #000000;\"><strong>5. Charges</strong></span></p>\r\n<p><span style=\"color: #000000;\">5.1  Membership on the website is free for users. Qbazar does not charge any fee for browsing and buying on the website. Qbazar reserves the right to change its fee policy from time to time. In particular, Qbazar may at its sole discretion introduce new services and modify some or all of the existing services offered on the website. In such an event, Qbazar reserves the right to introduce fees for the new services offered or amend/introduce fees for existing services, as the case may be. Changes to the fee policy will be posted on the website and such changes will automatically become effective immediately after they are posted on the website.</span></p>\r\n<p><span style=\"color: #000000;\">6  <strong>Copyright</strong> </span></p>\r\n<p><span style=\"color: #000000;\">6.1  The material (including the content, and any other content, software or services) contained on Qbazar.com are the property of Qbazar Limited, its subsidiaries, affiliates and/or third party licensors. No material on this site may be copied, reproduced, republished, installed, posted, transmitted, stored or distributed without written permission from Qbazar Limited.</span></p>\r\n<p><span style=\"color: #000000;\">6.2  You may not use any “deep-link”, “page-scrape”, “robot”, “spider” or other automatic device, program, algorithm or methodology, or any similar or equivalent manual process, to access, acquire, copy or monitor any portion of the website or any content, or in any way reproduce or circumvent the navigational structure or presentation of the website or any content, to obtain or attempt to obtain any materials, documents or information through any means not purposely made available through the website. We reserve our right to bar any such activity.</span> </p>\r\n<p><span style=\"color: #000000;\">7.  <strong>Cookies</strong> </span></p>\r\n<p><span style=\"color: #000000;\">7.1  This site uses cookies, which means that you must have cookies enabled on your computer in order for all functionality on this site to work properly. A cookie is a small data file that is written to your hard drive when you visit certain Web sites. Cookie files contain certain information, such as a random number user ID that the site assigns to a visitor to track the pages visited. A cookie cannot read data off your hard disk or read cookie files created by other sites. Cookies, by themselves, cannot be used to find out the identity of any user. </span></p>\r\n<p><span style=\"color: #000000;\"><strong>8.   Promotional Activity</strong> </span></p>\r\n<p><span style=\"color: #000000;\">8.1   To promote its services Qbazar uses various advertisement and commercials which are truthful and are not deceptive or unfair to the best of our knowledge and belief. Every user is under the obligation to go through the relevant information contained in the Website before using the service and it will be assumed that each user is aware of every information provided in the Website. Images of products in the Website are for and by reference only and actual product may vary from the corresponding image exhibited. The Website disclaims any liabilities arising out of any discrepancies to this end to the fullest extent permitted by law. </span></p>\r\n<p><span style=\"color: #000000;\">8.2  Any short term or long term promotional acitivity or offer(s) are by default valid for a single order within the offered time frame under any specific account on chaldal.com. Any repetitive or suspicious or abusive practice during any offer or promotion might result as cancelled order &amp; chaldal reserves the right to do so to protect the rigths &amp; beniits of other users. Account that tends to abuse any offer by any means on the platform can also get termniated to maintain hygiene factor on the platform. The automated abuse detecction technology that chaldal has can be also enforced at anytime without any sort of prior notice.</span></p>\r\n<p><span style=\"color: #000000;\">8.3  Discount code(s) offered to any/all segment of customer(s) through different marketing channels might get disabled or extended by the authority at anytime without any prior notice. The modality can also be changed to accomodate with price changes or fluctuation &amp; intense of uses of the same by the user base to protect any sort of abuse or suspective uses.</span></p>\r\n<p><span style=\"color: #000000;\"><strong>9.   The Contract</strong> </span></p>\r\n<p><span style=\"color: #000000;\">9.1   Your order is an offer to us to buy the product(s) in your order. When you place an order to purchase a product from us, you will receive an e-mail and/or SMS to your mobile phone number confirming receipt of your order and/or containing the details of your order (the \"Order Confirmation E-mail and/or SMS\"). The Order Confirmation E-mail and/or SMS is acknowledgement that we have received your order, but does not confirm acceptance of your offer to buy the product(s) ordered; that when we send the Order Confirmation E-mail and/or SMS a contract called an “agreement to sell” is concluded in accordance with Section 4(3) of the Sale of Goods Act, 1930 i.e. the transfer of the property in the goods is to take place at a future time when the product(s) is/are delivered to your designated address. We only accept your offer, and the above “agreement to sell” becomes a contract of sale for product(s) ordered by you in accordance with Section 4(4) of the Sale of Goods Act, 1930, when the product(s) is/are delivered to your designated address and at that time the property in the goods is transferred from us to you.</span></p>\r\n<p><span style=\"color: #000000;\">9.2  You can cancel your order for a product at no cost any time before the goods are delivered to you. <br /></span></p>\r\n<p><span style=\"color: #000000;\">9.3  Please note that we sell products only in quantities which correspond to the typical needs of an average household. This applies both to the number of products ordered within a single order and the placing of several orders for the same product where the individual orders comprise a quantity typical for a normal household.</span></p>\r\n<p> </p>\r\n<p><span style=\"color: #000000;\"><strong>11.    Pricing</strong> </span></p>\r\n<p><span style=\"color: #000000;\">11.1 Except where noted otherwise, the list price or suggested price displayed for products on Qbazar represents the full retail price listed on the product itself, suggested by the manufacturer or supplier, or estimated in accordance with standard industry practice; or the estimated retail value for a comparably featured item offered elsewhere. The list price or suggested price is a comparative price estimate and may or may not represent the prevailing price in every area on any particular day. </span></p>\r\n<p><span style=\"color: #000000;\">11.2 Despite our best efforts, a small number of the items in our catalog may be mispriced. If the MRP of an item sold by Qbazar is higher than our stated price, we will, at our discretion, either contact you for instructions before shipping or cancel your order and notify you of such cancellation. And if the stated price on the product is lower than Qbazar, we will, either refund the amount or replace the product according to your preference, when acknowledged. </span></p>\r\n<p><span style=\"color: #000000;\"><strong>12. Return Policy</strong></span></p>\r\n<p><span style=\"color: #000000;\">12.1 A user may return any product during the time of delivery, or within 7 days if:</span></p>\r\n<p><span style=\"color: #000000;\">a) Product does not meet user’s expectation.</span></p>\r\n<p><br /><span style=\"color: #000000;\">b) Found damaged during delivery</span></p>\r\n<p><br /><span style=\"color: #000000;\">c) Have doubt about the product quality and quantity</span></p>\r\n<p><br /><span style=\"color: #000000;\">d) Received in an unhealthy/ unexpected condition</span></p>\r\n<p><br /><span style=\"color: #000000;\">e) Is not satisfied with the packaging</span></p>\r\n<p><br /><span style=\"color: #000000;\">f) Finds product unusable</span></p>\r\n<p><span style=\"color: #000000;\">We are continuously monitoring accounts of customers with excessive requests of returns and refunds. We take necessary steps to prevent this. </span></p>\r\n<p><span style=\"color: #000000;\">12.2 A user may return any unopened or defective up to 20% and less, item within 7 days of receiving the item. But following products may not be eligible for return or replacement: </span></p>\r\n<p><span style=\"color: #000000;\">a) Damages due to misuse of product</span></p>\r\n<p><br /><span style=\"color: #000000;\">b) Incidental damage due to malfunctioning of product</span></p>\r\n<p><br /><span style=\"color: #000000;\">c) Any consumable item which has been used/installed</span></p>\r\n<p><br /><span style=\"color: #000000;\">d) Products with tampered or missing serial/UPC numbers</span></p>\r\n<p><br /><span style=\"color: #000000;\">e) Any damage/defect which are not covered under the manufacturer\'s warranty</span></p>\r\n<p><br /><span style=\"color: #000000;\">f) Any product that is returned without all original packaging and accessories, including the box, manufacturer\'s packaging if any, and all other items originally included with the product/s delivered.</span></p>\r\n<p><span style=\"color: #000000;\"><strong>13. Refund Policy</strong></span></p>\r\n<p><span style=\"color: #000000;\">13.1 Qbazar tries its best to serve the users. But if under any circumstances, we fail to fulfill our commitment or to provide the service, we will notify you within 24 hours via phone/ text/ email. If the service, that Qbazar fails to complete, requires any refund, it be done maximum within 7 Days after our acknowledgement.</span></p>\r\n<p><span style=\"color: #000000;\">13.2 Refund requests will be processed under mentioned situation:</span></p>\r\n<p><span style=\"color: #000000;\">- Unable to serve with any product.</span></p>\r\n<p><span style=\"color: #000000;\">- Customer returns any product from a paid order.</span></p>\r\n<p><span style=\"color: #000000;\">- Customer cancels a paid order before it has been dispatched.</span></p>\r\n<p><span style=\"color: #000000;\">For all the above three scenarios, the refund amount will be sent to Qbazar Balance of the customer. And the balance can only be used to purchase at Qbazar. Upon customer\'s request, Qbazar will transfer the refund amount to the user\'s original payment source within 7 days. Refund is only allowed for customers who have paid via bKash or card or other electronic method. For the orders that are paid via Cash, refund is only to be given through Qbazar Credits.</span></p>\r\n<p><strong><span style=\"color: #000000;\">14. Supply Policy:</span></strong></p>\r\n<p><span style=\"color: #000000;\">14.1 Qbazar, itself does not produce or manufacture any product, therefore Qbazar tries to control the quality, but do not give quality assurance for any. We believe the manufacturer/ vendor/ supplier are fully capable of assuring the quality of every product.</span></p>\r\n<p><span style=\"color: #000000;\">14.2 If any user, at the time of receiving the order delivery, finds any product injurious to health/ life/ security, we will take full liability and will accept return of that product. If the user faces any threat after 12 hours of the provided delivery, we will consider it as a lacking within the quality assurance from the manufacturers or suppliers.</span></p>\r\n<p><span style=\"color: #000000;\">14.3 All products displayed on the website are subject to change and are subject to availability.</span></p>\r\n<p> </p>\r\n<p><span style=\"color: #000000;\"><strong>15. Modifications</strong></span></p>\r\n<p><br /><span style=\"color: #000000;\">15.1 Qbazar reserves the right to modify these Terms and Conditions. Such modifications shall be effective immediately upon posting on Qbazar.com.bd. You are responsible for the reviewing of such modifications. Your continued access or use of Qbazar.com shall be deemed your acceptance of the modified terms and conditions.</span></p>\r\n<p><span style=\"color: #000000;\"><strong>16. Qbazar Software Terms</strong></span></p>\r\n<p><br /><span style=\"color: #000000;\">16.1 Use of the Qbazar Software/Application/App : You may use Qbazar Software/ Application/ App solely for purposes of enabling you to use and enjoy the services as provided by Qbazar, and as permitted by these Terms. You may not incorporate any portion of the Qbazar Software / Application/ App into your own programs or compile any portion of it in combination with your own programs, transfer it for use with another service, or sell, rent, lease, lend, loan, distribute or sub-license the Qbazar Software / Application/ App or otherwise assign any rights to the Qbazar Software / Application/ App in whole or in part. You may not use the Qbazar Software / Application/ App for any illegal purpose. We may cease providing any Qbazar Software / Application/ App and we may terminate your right to use any Qbazar Software / Application/ App at any time. Your rights to use the Qbazar Software / Application/ App will automatically terminate without notice from us if you fail to comply with any of these Terms. All software used in any Qbazar Service is the property of Qbazar and/or its affiliates or its software suppliers and protected by laws of Bangladesh including but not limited to any other applicable copyright laws.</span></p>\r\n<p><span style=\"color: #000000;\">16.2 Use of Third Party Services: When you use the Qbazar Software / Application/ App, you may also be using the services of one or more third parties, such as a wireless carrier or a mobile platform provider. Your use of these third party services may be subject to the separate policies, terms of use, and fees of those third parties.</span></p>\r\n<p><span style=\"color: #000000;\">16.3 No Reverse Engineering: You may not, and you will not encourage, assist or authorize any other person to copy, modify, reverse engineer, decompile or disassemble, or otherwise tamper with, the Qbazar Software / Application/ App, whether in whole or in part, or create any derivative works from or of the Qbazar Software / Application/ App.</span></p>\r\n<p><span style=\"color: #000000;\">16.4 Updates: In order to keep the Qbazar Software / Application/ App up-to-date, we may offer automatic or manual updates at any time and without notice to you.</span></p>', '2021-10-18 08:16:12', '2021-10-26 10:11:02'),
(3, 3, 'English', 'Returns & Refunds', '<p><strong><span style=\"color: #000000;\">Return/Replace, Cancellation &amp; Refund Policy</span></strong></p>\r\n<p><span style=\"color: #000000;\">A Customer may return any delivered product at the presence of our delivery officer, or within next 12 hours or within 72 hours at the following circumstances; In case, if you have not received any products from the invoice, please paid the amount as per you received and paid amount does\'t meet our service charge policy, you will honor the policy (for example; your order amount was tk.999 or above under service charge free and for returning products and for reduced the invoice value, you will be under service charge payment automatically).</span></p>\r\n<p><span style=\"color: #000000;\"><strong>Instant Return Policy:</strong></span></p>\r\n<p><span style=\"color: #000000;\">         a )  If Product(s) not found as per your expectation.</span></p>\r\n<p><span style=\"color: #000000;\">         b )  If have damaged at the delivery time.</span></p>\r\n<p><span style=\"color: #000000;\">         c )  If have confusion about packaging, quality and volume.</span></p>\r\n<p> </p>\r\n<p><span style=\"color: #000000;\"><strong>12 Hours Return Policy:</strong></span></p>\r\n<p><span style=\"color: #000000;\">It is applicable only for our Vegetables, Fruits and any other perishable products, which may be returned for not consumable conditions under re-delivery terms.</span></p>\r\n<p> </p>\r\n<h5><span style=\"color: #000000;\"><strong>72 Hours Return Policy:</strong></span></h5>\r\n<h5><span style=\"color: #000000;\">A Customer may return any delivered product within 72 hours from the delivery date at the following circumstances;</span><br /><span style=\"color: #000000;\">You may return us any imperfect but unopened product(s) within 5 days period containing defect maximum 25% or less.</span><br /><span style=\"color: #000000;\">Products may not be returned or replaced under the following circumstances;</span></h5>\r\n<p><span style=\"color: #000000;\">     a )  Product(s) after use or consume or installation</span></p>\r\n<p><span style=\"color: #000000;\">     b )  Product(s) broken or out of order</span></p>\r\n<p><span style=\"color: #000000;\">     c )  Damages or defect which are not consumable</span></p>\r\n<p><span style=\"color: #000000;\">     d )  Any damages/defects are not covers up the manufacturer/traders warranty or guarantee</span></p>\r\n<p><span style=\"color: #000000;\">     e )  Any product(s) returnable if found without original packaging</span></p>\r\n<p><span style=\"color: #000000;\">     f )  Any products found tampered or missing serial/UPC numbers</span></p>\r\n<p> </p>\r\n<p><span style=\"color: #000000;\"><strong>Refund Policy :</strong></span></p>\r\n<p><span style=\"color: #000000;\">Qbazar (qbazar.com.bd.com) always here to providing best services to the customers. For any unforeseen situation, if we are not able to accomplish product(s) delivery or to provide our services, we will be informing you within 12 hours over phone or SMS. For any of our lacking, if there needed any refund, we will do it within next 7 days after as following.</span></p>\r\n<p><span style=\"color: #000000;\">Calls for refunding will be processed under the following circumstances</span></p>\r\n<p><span style=\"color: #000000;\">     a )  Unable to deliver any product</span></p>\r\n<p><span style=\"color: #000000;\">     b )  if any product(s) returned by customer against paid invoice</span></p>\r\n<p> </p>\r\n<p><span style=\"color: #000000;\"><strong>Deduction during refund :</strong></span></p>\r\n<p><span style=\"color: #000000;\">While a customer cancel any paid order and ask for refund, or we (qbazar.com.bd) cancel any paid order, in terms of Debit/Credit card payment of any bank or bKash/Rocket, we (qbazar.com.bd) will refund the full amount from our (qbazar.com.bd) end. In case of Credit/Debit card payment, the customer will get back the same amount from his/her card issuer bank. But in case of payment from bKash/ Rocket, even if qbazar.com.bd refunds FULL AMOUNT that a customer paid, they (bKash/Rocket) will deduct the transaction charge (according to their company policy) before refunding it to customer.</span></p>\r\n<p> </p>\r\n<p><strong><span style=\"color: #000000;\">Supply Policy:</span></strong></p>\r\n<p><span style=\"color: #000000;\">We are committed to ensure the quality on all supplied items. Qbazar (qbazar.com.bd) is not selling any self manufacturing products, despite the fact that we are looking into the quality. We never challenge for quality guaranty for any products at our own responsibility. We have trust to the manufacturer/traders/ vendor that they always assure the quality on their entire manufacturing/ supplied product.</span></p>\r\n<p> </p>\r\n<p><strong><span style=\"color: #000000;\">Order Cancellation And Blacklist Policy:</span></strong></p>\r\n<p><span style=\"color: #000000;\">In terms of paid order, Qbazar will verify the cell number from which the order has been placed. Without verifying, paid orders will not be delivered. You as a customer can cancel your order anytime by calling our customer service center OR when the delivery person arrives at your door. In such a case we will refund any payments already made by you for the order. On the otherhand, if we suspect any fraudulent transaction by any customer or any transaction which defies the terms &amp; conditions of using the website or our service, or if we find any customer has tried to cash in on some technical fault of our online system/website/service, recart items those no longer exist to our service list, recart special offer items those exist to our service list but price has been increased, order items for making profit by selling them, we at our sole discretion, MAY cancel such orders. We will maintain a negative list of all fraudulent transactions and customers and would deny access to them to our system or cancel any orders placed by them.</span></p>\r\n<p> </p>', '2021-10-18 08:17:25', '2021-10-26 10:00:07'),
(4, 4, 'English', 'About Us', '<p><span style=\"color: #000000;\"><strong>Qbazar.com.bd</strong> is an online shop available in Dhaka. We believe time is valuable to our fellow Dhaka residents, and that they should not have to waste hours in traffic, brave harsh weather and wait in line just to buy necessities like eggs! This is why we deliver every day needs to our customers’ door-steps across Dhaka.</span></p>\r\n<p><span style=\"color: #000000;\"><strong>Qbazar</strong> is a work in progress, and we hope to get better over time. We are firm believers in using technology and education to improve Bangladesh, and we will continue to invest all our effort in pushing the boundaries of technology.</span><br /><span style=\"color: #000000;\">If you have ideas on how we can improve, we would love to hear from you. Please do email us at <strong>info@qbazar.com.bd</strong></span></p>', '2021-10-18 08:17:45', '2021-10-26 10:05:03'),
(5, 5, 'English', 'Contact Us', '<p><span style=\"color: #000000;\"><strong>Office </strong></span></p>\r\n<p><span style=\"color: #000000;\">464/C, Khigaon, Dhaka 1219</span></p>\r\n<p><span style=\"color: #000000;\"><strong>E-mail:</strong> info@qbazar.com.bd</span></p>\r\n<p><span style=\"color: #000000;\"><strong>Phone :</strong> 88 02 55120202/55120203</span></p>', '2021-10-18 08:18:07', '2021-12-27 09:48:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('zamanit.uzzal@gmail.com', '$2y$10$PThglSoNgAawthjnCnZew.HA8yCHxfuIfGyraRKpY1Mkrusll9fQ.', '2022-01-10 01:22:15');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `role_id`, `permission`, `created_at`, `updated_at`) VALUES
(3, 1, 'products.index', '2021-12-27 03:58:32', '2021-12-27 03:58:32'),
(4, 1, 'products.create', '2021-12-27 03:58:32', '2021-12-27 03:58:32'),
(11, 3, 'products.index', '2021-12-28 21:51:24', '2021-12-28 21:51:24'),
(12, 3, 'products.create', '2021-12-28 21:51:24', '2021-12-28 21:51:24'),
(13, 3, 'products.edit', '2021-12-28 21:51:24', '2021-12-28 21:51:24'),
(14, 3, 'products.destroy', '2021-12-28 21:51:24', '2021-12-28 21:51:24'),
(15, 3, 'orders.assign_delivery_boy', '2021-12-28 21:51:24', '2021-12-28 21:51:24'),
(16, 3, 'orders.index', '2021-12-28 21:51:24', '2021-12-28 21:51:24'),
(17, 3, 'orders.show', '2021-12-28 21:51:24', '2021-12-28 21:51:24'),
(18, 3, 'orders.update', '2021-12-28 21:51:24', '2021-12-28 21:51:24'),
(19, 3, 'orders.destroy', '2021-12-28 21:51:24', '2021-12-28 21:51:24'),
(20, 3, 'reports.order_report', '2021-12-28 21:51:24', '2021-12-28 21:51:24'),
(21, 3, 'reports.sales_report', '2021-12-28 21:51:24', '2021-12-28 21:51:24'),
(22, 2, 'products.index', '2021-12-29 22:13:06', '2021-12-29 22:13:06'),
(23, 2, 'products.create', '2021-12-29 22:13:06', '2021-12-29 22:13:06'),
(28, 9, 'products.index', '2022-02-05 04:54:48', '2022-02-05 04:54:48'),
(29, 9, 'products.create', '2022-02-05 04:54:48', '2022-02-05 04:54:48'),
(30, 7, 'products.index', '2022-02-05 04:56:28', '2022-02-05 04:56:28'),
(31, 7, 'products.create', '2022-02-05 04:56:28', '2022-02-05 04:56:28'),
(34, 10, 'generated::Fw353opPCTs0U6cZ', '2022-02-05 04:58:24', '2022-02-05 04:58:24'),
(35, 10, 'products.index', '2022-02-05 04:58:24', '2022-02-05 04:58:24'),
(36, 10, 'products.create', '2022-02-05 04:58:24', '2022-02-05 04:58:24'),
(37, 10, 'products.edit', '2022-02-05 04:58:24', '2022-02-05 04:58:24'),
(38, 10, 'products.destroy', '2022-02-05 04:58:24', '2022-02-05 04:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_number` decimal(10,2) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `op_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) UNSIGNED NOT NULL,
  `special_price` decimal(10,2) UNSIGNED DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `viewed` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xitem` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `unit_id`, `unit_number`, `slug`, `op_name`, `price`, `special_price`, `in_stock`, `viewed`, `is_active`, `thumbnail`, `banner`, `product_type`, `stock`, `xitem`, `created_at`, `updated_at`) VALUES
(5, 12, 42, '1.00', 'bourn-vita', NULL, '520.00', '480.00', 1, 0, 1, '1634533859616d01e3d19f6.webp', NULL, 'general', '112', 'IC--000005', '2021-10-18 03:10:59', '2021-10-25 08:50:37'),
(6, 12, 42, '1.00', 'jam', NULL, '220.00', '190.00', 1, 0, 1, '1634533888616d0200b5f18.webp', NULL, 'general', '50', 'IC--000006', '2021-10-18 03:11:28', '2021-10-25 08:50:30'),
(11, 7, 42, '1.00', 'aci-savlon-baby-wipes', NULL, '170.00', '160.00', 1, 0, 1, '1634535841616d09a1215d6.webp', NULL, 'general', '55', 'IC--000011', '2021-10-18 03:44:01', '2021-10-25 08:49:08'),
(15, 11, 42, '1.00', 'eno-fruit-salt-powder---regular-flavour-pack-of-30-x-5-gm-', NULL, '350.00', '320.00', 1, 0, 1, '1634538124616d128c0f741.webp', NULL, 'general', '111', 'IC--000015', '2021-10-18 04:22:04', '2021-10-25 08:48:39'),
(16, 11, 42, '1.00', 'moov-pain-relief-specialist-cream', NULL, '100.00', '90.00', 1, 0, 1, '1634538181616d12c535516.webp', NULL, 'general', NULL, 'IC--000016', '2021-10-18 04:23:01', '2021-10-25 08:48:07'),
(17, 9, 42, '1.00', 'godrej-aer-fresh-green-room-spray', NULL, '220.00', '200.00', 1, 0, 1, '1634538308616d13449131a.webp', NULL, 'general', NULL, 'IC--000017', '2021-10-18 04:25:08', '2021-10-25 08:48:00'),
(18, 9, 42, '1.00', 'harpic-toilet-cleaning-liquid-original', NULL, '200.00', '120.00', 1, 0, 1, '1634538344616d1368498db.webp', NULL, 'general', NULL, 'IC--000018', '2021-10-18 04:25:44', '2021-10-25 08:47:52'),
(19, 9, 42, '1.00', 'mr-brasso-glass-household-cleaner-spray', NULL, '170.00', NULL, 1, 0, 1, '1634538377616d1389d2893.webp', NULL, 'general', NULL, 'IC--000019', '2021-10-18 04:26:17', '2021-10-25 08:47:23'),
(20, 14, 42, '1.00', 'deli-business-card-holder-e5798-', NULL, '50.00', '40.00', 1, 0, 1, '1634538516616d1414c430f.webp', NULL, 'general', NULL, 'IC--000020', '2021-10-18 04:28:02', '2021-10-25 08:47:15'),
(22, 14, 42, '1.00', 'deli-punch', NULL, '150.00', '130.00', 1, 0, 1, '1634538554616d143aa3598.webp', NULL, 'general', NULL, 'IC--000022', '2021-10-18 04:29:14', '2021-10-25 08:47:05'),
(23, 14, 42, '1.00', 'deli-versatile-pen-stand', NULL, '150.00', '130.00', 1, 0, 1, '1634538583616d14576b761.webp', NULL, 'general', NULL, 'IC--000023', '2021-10-18 04:29:43', '2021-10-25 08:46:58'),
(24, 12, 42, '1.00', 'foster-clark-s-cherry-jelly', NULL, '150.00', '140.00', 1, 0, 1, '1634544007616d2987b5034.webp', NULL, 'general', NULL, 'IC--000024', '2021-10-18 06:00:07', '2021-10-25 08:46:50'),
(25, 12, 42, '1.00', 'nutella-hazelnut-cocoa-spread', NULL, '250.00', '230.00', 1, 0, 1, '1634544036616d29a43f91d.webp', NULL, 'general', NULL, 'IC--000025', '2021-10-18 06:00:36', '2021-10-25 08:46:41'),
(26, 12, 42, '1.00', 'vitalia-sugar-free-corn-flakes', NULL, '250.00', '230.00', 1, 0, 1, '1634544084616d29d42c162.webp', NULL, 'general', NULL, 'IC--000026', '2021-10-18 06:01:24', '2021-10-25 08:46:34'),
(30, 7, 42, '1.00', 'pozzy-baby-wet-towel-wipes', NULL, '500.00', '470.00', 1, 0, 1, '1634544384616d2b00369e4.webp', NULL, 'general', NULL, 'IC--000030', '2021-10-18 06:06:24', '2021-10-25 08:45:23'),
(31, 7, 42, '1.00', 'parachute-just-for-baby---baby-soap', NULL, '180.00', '150.00', 1, 0, 1, '1634544417616d2b210d79e.webp', NULL, 'general', NULL, 'IC--000031', '2021-10-18 06:06:57', '2021-10-25 08:45:15'),
(32, 7, 42, '1.00', 'johnson-s-baby-shampoo', NULL, '450.00', NULL, 1, 0, 1, '1634544463616d2b4f74af8.webp', NULL, 'general', NULL, 'IC--000032', '2021-10-18 06:07:43', '2021-10-25 08:44:56'),
(35, 9, 42, '1.00', 'kelly-s-leather-care', NULL, '280.00', '260.00', 1, 0, 1, '1634544762616d2c7a24216.webp', NULL, 'general', NULL, 'IC--000035', '2021-10-18 06:12:42', '2021-10-25 08:43:30'),
(36, 9, 42, '1.00', 'odonil-air-freshener-block-jasmine-mist', NULL, '100.00', NULL, 1, 0, 1, '1634544790616d2c96c132c.webp', NULL, 'general', NULL, 'IC--000036', '2021-10-18 06:13:10', '2021-10-25 08:43:13'),
(37, 11, 42, '70.00', 'vicks-vaporub', NULL, '60.00', '45.00', 1, 0, 1, '1634544905616d2d0929c19.webp', NULL, 'general', NULL, 'IC--000037', '2021-10-18 06:15:05', '2021-10-25 08:35:54'),
(38, 11, 42, '1.00', 'ensure-diabetes-care-powder---vanilla-flavour', NULL, '390.00', '360.00', 1, 0, 1, '1634544934616d2d2601cd0.webp', NULL, 'general', NULL, 'IC--000038', '2021-10-18 06:15:34', '2021-10-25 08:39:01'),
(39, 14, 42, '1.00', 'kangaro-pin-remover', NULL, '110.00', NULL, 1, 0, 1, '1634545011616d2d73afef2.webp', NULL, 'general', NULL, 'IC--000039', '2021-10-18 06:16:51', '2021-10-25 08:38:38'),
(40, 14, 40, '40.00', 'double-a-legal-size-80-gsm-', NULL, '390.00', '380.00', 1, 0, 1, '1634545057616d2da13a1cb.webp', NULL, 'general', NULL, 'IC--000040', '2021-10-18 06:17:37', '2021-10-18 06:17:37'),
(41, 11, 42, '40.00', 'skore-notout-climax-delay-with-1500-plus-raised-dots-10-s', NULL, '60.00', '50.00', 1, 0, 1, '1634545151616d2dff5613e.webp', NULL, 'general', NULL, 'IC--000041', '2021-10-18 06:19:11', '2021-10-18 06:19:11'),
(42, 11, 42, '3.00', 'fexona-120mg-tablet', NULL, '65.00', '64.00', 1, 0, 1, '16371198706194777e3814f.jpg', NULL, 'general', NULL, 'IC--000042', '2021-11-17 01:31:10', '2021-11-17 01:31:10'),
(43, 11, 42, '6.00', 'axe-brand-28ml', NULL, '500.00', '480.00', 1, 0, 1, '163712054861947a245c6b5.jpg', NULL, 'general', NULL, 'IC--000043', '2021-11-17 01:42:28', '2021-11-17 01:42:28'),
(45, 4, 42, '12.00', 'eggs', NULL, '80.00', NULL, 1, 0, 1, 'default.png', 'default_banner.png', 'offer', NULL, 'IC--000045', '2021-12-27 09:22:41', '2021-12-27 09:22:41'),
(56, 33, 43, '180.00', 'cocola-egg-noodles', NULL, '20.00', '17.00', 1, 0, 1, '164249723961e684d7a3c41.webp', NULL, 'general', NULL, 'IC--000056', '2022-01-18 07:13:59', '2022-01-18 07:13:59'),
(57, 33, 43, '40.00', 'mr-noodles-chicken-cup-noodles', NULL, '35.00', '30.00', 1, 0, 1, '164249739861e6857693f68.webp', NULL, 'general', NULL, 'IC--000057', '2022-01-18 07:16:38', '2022-01-18 07:16:38'),
(58, 33, 42, '8.00', 'nestle-maggi-2-minute-masala-instant-noodles', NULL, '155.00', '135.00', 1, 0, 1, '164249772861e686c033b51.webp', NULL, 'general', NULL, 'IC--000058', '2022-01-18 07:22:08', '2022-01-18 07:22:08'),
(61, 64, 41, '2.00', 'teer-whole-wheat-flour-atta-', NULL, '100.00', '90.00', 1, 0, 1, '164267073761e92a9117915.webp', NULL, 'general', NULL, 'IC--000061', '2022-01-20 07:25:37', '2022-01-20 07:25:37'),
(62, 64, 42, '1.00', 'zero-cal-box-75-sachets', NULL, '250.00', '200.00', 1, 0, 1, '164267083761e92af547624.webp', NULL, 'general', NULL, 'IC--000062', '2022-01-20 07:27:17', '2022-01-20 07:27:17'),
(63, 64, 43, '180.00', 'bisk-club-sugar-free-cracker-biscuit', NULL, '70.00', '50.00', 1, 0, 1, '164267185061e92eeab5457.webp', NULL, 'general', NULL, 'IC--000063', '2022-01-20 07:28:27', '2022-01-20 07:44:10'),
(64, 64, 43, '500.00', 'quaker-white-oats', NULL, '289.00', NULL, 1, 0, 1, '164267096061e92b70ef65f.webp', NULL, 'general', NULL, 'IC--000064', '2022-01-20 07:29:21', '2022-01-20 07:29:21'),
(65, 64, 42, '1.00', 'zero-cal-sugar-100-tablets', NULL, '130.00', NULL, 1, 0, 1, '164267100161e92b9978a4d.webp', NULL, 'general', NULL, 'IC--000065', '2022-01-20 07:30:01', '2022-01-20 08:29:19'),
(66, 64, 41, '1.00', 'quaker-oats-jar', NULL, '600.00', NULL, 1, 0, 1, '164267108661e92bee53d66.webp', NULL, 'general', NULL, 'IC--000066', '2022-01-20 07:31:26', '2022-01-20 07:31:26'),
(67, 64, 43, '300.00', 'kishwan-sugar-free-biscuit', NULL, '130.00', NULL, 1, 0, 1, '164267113261e92c1cb37ca.webp', NULL, 'general', NULL, 'IC--000067', '2022-01-20 07:32:12', '2022-01-20 07:32:12'),
(68, 64, 42, '100.00', 'splenda-no-cal-sweetner', NULL, '370.00', NULL, 1, 0, 1, '164267119761e92c5d8d8ee.webp', NULL, 'general', NULL, 'IC--000068', '2022-01-20 07:33:17', '2022-01-20 07:33:17'),
(69, 64, 43, '200.00', 'jayson-mistin-herbal-sweetening-powder', NULL, '240.00', '220.00', 1, 0, 1, '164267129661e92cc0f3a98.webp', NULL, 'general', NULL, 'IC--000069', '2022-01-20 07:34:57', '2022-01-20 07:34:57'),
(70, 64, 46, '500.00', 'discovery-organic-a-c-vinegar-ginger-turmeric', NULL, '1500.00', '1300.00', 1, 0, 1, '164267143661e92d4cd1c2e.webp', NULL, 'general', NULL, 'IC--000070', '2022-01-20 07:37:16', '2022-01-20 07:37:16'),
(71, 64, 43, '100.00', 'sugar-free-gold-powder', NULL, '230.00', NULL, 1, 0, 1, '164267151361e92d99425f4.webp', NULL, 'general', NULL, 'IC--000071', '2022-01-20 07:38:33', '2022-01-20 07:38:33'),
(72, 64, 43, '500.00', 'foster-clark-s-tiara-white-oats-tin', NULL, '400.00', '290.00', 1, 0, 1, '164267154761e92dbb6867d.webp', NULL, 'general', NULL, 'IC--000072', '2022-01-20 07:39:07', '2022-01-20 07:39:07'),
(73, 64, 43, '500.00', 'pran-sugar-free-orange-jelly', NULL, '190.00', '185.00', 1, 0, 1, '164267163261e92e1024289.jpg', NULL, 'general', NULL, 'IC--000073', '2022-01-20 07:40:32', '2022-01-20 07:40:32'),
(74, 64, 43, '430.00', 'stute-fine-cut-diabetic-orange-extra-marmalade', NULL, '400.00', '380.00', 1, 0, 1, '164267180961e92ec1e87e2.jpg', NULL, 'general', NULL, 'IC--000074', '2022-01-20 07:43:30', '2022-01-20 07:43:30'),
(75, 63, 43, '200.00', 'kolson-laccha-shemai', NULL, '50.00', '35.00', 1, 0, 1, '164267194761e92f4b4f56d.webp', NULL, 'general', NULL, 'IC--000075', '2022-01-20 07:45:47', '2022-01-20 07:45:47'),
(79, 66, 43, '500.00', 'cock-chicken-skin-off-25-gm', NULL, '280.00', '260.00', 1, 0, 1, '164293362261ed2d76d6e89.webp', NULL, 'general', NULL, 'IC--000079', '2022-01-23 08:27:03', '2022-01-23 08:27:03'),
(80, 66, 43, '275.00', 'roast-chicken-10-gm', NULL, '300.00', '150.00', 1, 0, 1, '164293368361ed2db32caa5.webp', NULL, 'general', NULL, 'IC--000080', '2022-01-23 08:28:03', '2022-01-23 08:28:03'),
(81, 66, 41, '1.00', 'beef-bone-in-50-gm', NULL, '589.00', '580.00', 1, 0, 1, '164293374361ed2def53548.webp', NULL, 'general', NULL, 'IC--000081', '2022-01-23 08:29:03', '2022-01-23 08:29:03'),
(82, 66, 41, '1.00', 'broiler-chicken-skin-off-50-gm', NULL, '250.00', '240.00', 1, 0, 1, '164293377961ed2e137f53e.webp', NULL, 'general', NULL, 'IC--000082', '2022-01-23 08:29:39', '2022-01-23 08:29:39'),
(83, 66, 41, '1.00', 'broiler-chicken-skin-on-50-gm', NULL, '280.00', '240.00', 1, 0, 1, '164293382661ed2e42536aa.webp', NULL, 'general', NULL, 'IC--000083', '2022-01-23 08:30:26', '2022-01-23 08:30:26'),
(84, 66, 41, '1.00', 'bengal-meat-beef-bone-in-50-gm', NULL, '680.00', '635.00', 1, 0, 1, '1644664053620794f51e6a7.webp', NULL, 'general', NULL, 'IC--000084', '2022-01-23 08:31:28', '2022-02-12 09:07:33'),
(85, 66, 41, '1.00', 'bengal-meat-whole-chicken-curry-cut-50-gm', NULL, '350.00', '335.00', 1, 0, 1, '16444741686204af38bff75.webp', NULL, 'general', NULL, 'IC--000085', '2022-01-23 08:32:14', '2022-02-10 04:22:48'),
(86, 66, 43, '500.00', 'cow-liver-25-gm', NULL, '360.00', '330.00', 1, 0, 1, '164293397661ed2ed885e99.webp', NULL, 'general', NULL, 'IC--000086', '2022-01-23 08:32:56', '2022-01-23 08:32:56'),
(87, 66, 43, '500.00', 'whole-deshi-chicken-skin-off-25-gm', NULL, '420.00', '400.00', 1, 0, 1, '164293406661ed2f3278287.webp', NULL, 'general', NULL, 'IC--000087', '2022-01-23 08:34:26', '2022-01-23 08:34:26'),
(88, 66, 43, '500.00', 'country-natural-chicken-whole-leg-with-skin', NULL, '250.00', '220.00', 1, 0, 1, '164293413761ed2f7924adb.webp', NULL, 'general', NULL, 'IC--000088', '2022-01-23 08:35:37', '2022-01-23 08:35:37'),
(89, 66, 43, '200.00', 'bengal-meat-beef-t-bone-steak', NULL, '700.00', '650.00', 1, 0, 1, '1644664165620795659ef6a.webp', NULL, 'general', NULL, 'IC--000089', '2022-01-23 08:36:28', '2022-02-12 09:09:25'),
(90, 67, 43, '500.00', 'pabda-fish-30-gm', NULL, '300.00', '180.00', 1, 0, 1, '164293430161ed301d2abe2.webp', NULL, 'general', NULL, 'IC--000090', '2022-01-23 08:38:21', '2022-01-23 08:38:21'),
(91, 67, 43, '250.00', 'kaski-fish-15-gm', NULL, '130.00', '110.00', 1, 0, 1, '164293435161ed304f4bee3.webp', NULL, 'general', NULL, 'IC--000091', '2022-01-23 08:39:11', '2022-01-23 08:39:11'),
(92, 67, 43, '500.00', 'bagda-chingri-shrimp-25-30-pcs-30-gm', NULL, '380.00', '350.00', 1, 0, 1, '164293558461ed352034a74.jpg', NULL, 'general', NULL, 'IC--000092', '2022-01-23 08:59:44', '2022-01-23 08:59:44'),
(93, 67, 41, '1.00', 'koi-fish-processed-50-gm', NULL, '350.00', '310.00', 1, 0, 1, '164293567161ed35779f481.jpg', NULL, 'general', NULL, 'IC--000093', '2022-01-23 09:01:11', '2022-01-23 09:01:11'),
(94, 67, 43, '500.00', 'gura-chingri-shrimp-15-gm', NULL, '350.00', '300.00', 1, 0, 1, '164293576161ed35d105132.png', NULL, 'general', NULL, 'IC--000094', '2022-01-23 09:02:41', '2022-01-23 09:02:41'),
(95, 67, 43, '500.00', 'golda-chingri-shrimp-15-18-pcs-30-gm', NULL, '400.00', '350.00', 1, 0, 1, '164293581461ed3606f1460.jpg', NULL, 'general', NULL, 'IC--000095', '2022-01-23 09:03:35', '2022-01-23 09:03:35'),
(96, 67, 43, '500.00', 'shing-fish-processed-30-gm', NULL, '320.00', '300.00', 1, 0, 1, '164293587261ed3640ad477.webp', NULL, 'general', NULL, 'IC--000096', '2022-01-23 09:04:32', '2022-01-23 09:04:32'),
(97, 67, 43, '250.00', 'mola-fish-deshi-15-gm', NULL, '70.00', '50.00', 1, 0, 1, '164293592261ed36720bbf6.webp', NULL, 'general', NULL, 'IC--000097', '2022-01-23 09:05:22', '2022-01-23 09:05:22'),
(98, 67, 41, '1.00', 'rupchanda-fish-medium-30-gm', NULL, '720.00', '680.00', 1, 0, 1, '164293599161ed36b76fa9f.png', NULL, 'general', NULL, 'IC--000098', '2022-01-23 09:06:31', '2022-01-23 09:06:31'),
(99, 67, 43, '500.00', 'rupchanda-fish-medium-30-gm', NULL, '360.00', '340.00', 1, 0, 1, '164293604361ed36eb2055f.png', NULL, 'general', NULL, 'IC--000099', '2022-01-23 09:07:23', '2022-01-23 09:07:23'),
(100, 67, 43, '500.00', 'rui-fish', NULL, '180.00', '150.00', 1, 0, 1, '164293615561ed375bcc8a5.jpg', NULL, 'general', NULL, 'IC--000100', '2022-01-23 09:09:15', '2022-01-23 09:09:15'),
(101, 67, 41, '1.00', 'rui-fish', NULL, '340.00', '290.00', 1, 0, 1, '164293633161ed380b8bb87.jpg', NULL, 'general', NULL, 'IC--000101', '2022-01-23 09:12:11', '2022-01-23 09:12:11'),
(102, 67, 41, '2.00', 'rui-fish', NULL, '320.00', '310.00', 1, 0, 1, '164293637961ed383b32a43.jpg', NULL, 'general', NULL, 'IC--000102', '2022-01-23 09:12:59', '2022-01-23 09:12:59'),
(103, 67, 43, '500.00', 'magur-fish-30-gm', NULL, '400.00', '380.00', 1, 0, 1, '164293647061ed3896dc92c.jpg', NULL, 'general', NULL, 'IC--000103', '2022-01-23 09:14:30', '2022-01-23 09:14:30'),
(104, 33, 43, '480.00', 'ifad-eggy-instant-masala-noodles-', NULL, '280.00', '250.00', 1, 0, 1, '164293677961ed39cb5dd99.jfif', NULL, 'general', NULL, 'IC--000104', '2022-01-23 09:19:39', '2022-01-23 09:19:39'),
(105, 33, 44, '8.00', 'nestle-maggi-2-minute-masala-instant-noodles', NULL, '150.00', '130.00', 1, 0, 1, '164293695661ed3a7cc9d83.png', NULL, 'general', NULL, 'IC--000105', '2022-01-23 09:22:36', '2022-01-23 09:22:36'),
(106, 33, 42, '4.00', 'ifad-eggy-instant-noodles-chicken', NULL, '155.00', '140.00', 1, 0, 1, '164293702361ed3abfc0b24.jfif', NULL, 'general', NULL, 'IC--000106', '2022-01-23 09:23:43', '2022-01-23 09:23:43'),
(107, 33, 44, '8.00', 'nestle-maggi-masala-blast-noodles', NULL, '160.00', '160.00', 1, 0, 1, '164293710161ed3b0dbcd30.png', NULL, 'general', NULL, 'IC--000107', '2022-01-23 09:25:01', '2022-01-23 09:25:01'),
(108, 33, 43, '180.00', 'doodles-stick-noodles', NULL, '180.00', '160.00', 1, 0, 1, '164293719861ed3b6ed23af.jfif', NULL, 'general', NULL, 'IC--000108', '2022-01-23 09:26:38', '2022-01-23 09:26:38'),
(109, 33, 43, '180.00', 'dekko-egg-noodles-4-pcs', NULL, '70.00', '60.00', 1, 0, 1, '164301464061ee69f033363.png', NULL, 'general', NULL, 'IC--000109', '2022-01-24 06:57:20', '2022-01-24 06:57:20'),
(110, 33, 43, '300.00', 'leung-hung-chinese-egg-dragon-noodles', NULL, '55.00', '40.00', 1, 0, 1, '164301472161ee6a4157eed.jpg', NULL, 'general', NULL, 'IC--000110', '2022-01-24 06:58:41', '2022-01-24 06:58:41'),
(111, 33, 44, '8.00', 'doodles-masala-noodles', NULL, '170.00', '140.00', 1, 0, 1, '164301480261ee6a92d78dd.png', NULL, 'general', NULL, 'IC--000111', '2022-01-24 07:00:03', '2022-01-24 07:00:03'),
(112, 33, 43, '180.00', 'cocola-egg-chicken-masala-noodles', NULL, '30.00', '20.00', 1, 0, 1, '164301494161ee6b1d9f374.png', NULL, 'general', NULL, 'IC--000112', '2022-01-24 07:02:21', '2022-01-24 07:02:21'),
(113, 33, 43, '400.00', 'mama-instant-noodles-hot-spicy-flavour', NULL, '150.00', '140.00', 1, 0, 1, '164301501461ee6b6613117.jpg', NULL, 'general', NULL, 'IC--000113', '2022-01-24 07:03:34', '2022-01-24 07:03:34'),
(114, 33, 44, '12.00', 'nestle-maggi-2-minute-masala-instant-noodles', NULL, '230.00', '210.00', 1, 0, 1, '164301512761ee6bd7e6a96.jpg', NULL, 'general', NULL, 'IC--000114', '2022-01-24 07:05:27', '2022-01-24 07:05:27'),
(115, 33, 43, '120.00', 'mama-noodles-hot-and-spicy-flavour-10-pack', NULL, '180.00', '160.00', 1, 0, 1, '164301518461ee6c105deed.jpg', NULL, 'general', NULL, 'IC--000115', '2022-01-24 07:06:24', '2022-01-24 07:06:24'),
(116, 33, 43, '180.00', 'doodles-chicken-masala-stick-noodles', NULL, '30.00', '20.00', 1, 0, 1, '164301527461ee6c6a0ddbc.jpg', NULL, 'general', NULL, 'IC--000116', '2022-01-24 07:07:54', '2022-01-24 07:07:54'),
(117, 33, 43, '496.00', 'mr-noodles-magic-masala-easy-instant-box-free-', NULL, '150.00', '140.00', 1, 0, 1, '164301544661ee6d16a1f08.jpg', NULL, 'general', NULL, 'IC--000117', '2022-01-24 07:10:46', '2022-01-24 07:10:46'),
(118, 33, 42, '1.00', 'mama-cup-noodles-shrimp', NULL, '60.00', '50.00', 1, 0, 1, '164301549861ee6d4aa58a9.jpg', NULL, 'general', NULL, 'IC--000118', '2022-01-24 07:11:38', '2022-01-24 07:11:38'),
(127, 35, 43, '200.00', 'dekko-oyster-pasta', NULL, '80.00', '70.00', 1, 0, 1, '164301631261ee707820fe0.jpg', NULL, 'general', NULL, 'IC--000127', '2022-01-24 07:25:12', '2022-01-24 07:25:12'),
(128, 35, 43, '400.00', 'kolson-macaroni-shell', NULL, '70.00', '60.00', 1, 0, 1, '164301634661ee709a8412e.jpg', NULL, 'general', NULL, 'IC--000128', '2022-01-24 07:25:46', '2022-01-24 07:25:46'),
(129, 35, 43, '500.00', 'pasta-hat-penne-regati', NULL, '150.00', '140.00', 1, 0, 1, '164301639161ee70c751091.jpg', NULL, 'general', NULL, 'IC--000129', '2022-01-24 07:26:31', '2022-01-24 07:26:31'),
(130, 35, 43, '400.00', 'delicia-penne-pasta', NULL, '220.00', '200.00', 1, 0, 1, '164301643661ee70f426dd7.jpg', NULL, 'general', NULL, 'IC--000130', '2022-01-24 07:27:16', '2022-01-24 07:27:16'),
(131, 35, 43, '500.00', 'pasta-hat-vite', NULL, '160.00', '140.00', 1, 0, 1, '164301649161ee712b24ccf.jpg', NULL, 'general', NULL, 'IC--000131', '2022-01-24 07:28:11', '2022-01-24 07:28:11'),
(132, 35, 43, '400.00', 'emirates-macaroni-corni-corrugated-pasta', NULL, '160.00', '140.00', 1, 0, 1, '164301653661ee71582eabc.jpg', NULL, 'general', NULL, 'IC--000132', '2022-01-24 07:28:56', '2022-01-24 07:28:56'),
(133, 35, 43, '400.00', 'kolson-macaroni-bamboo', NULL, '160.00', '140.00', 1, 0, 1, '164301662461ee71b0cf61b.jpg', NULL, 'general', NULL, 'IC--000133', '2022-01-24 07:30:24', '2022-01-24 07:30:24'),
(134, 35, 43, '500.00', 'italpasta-88-farfalle', NULL, '200.00', '180.00', 1, 0, 1, '164301672661ee72165f6b4.jpg', NULL, 'general', NULL, 'IC--000134', '2022-01-24 07:32:06', '2022-01-24 07:32:06'),
(135, 35, 43, '500.00', 'reggia-pasta-chifarini', NULL, '200.00', '190.00', 1, 0, 1, '164301688361ee72b346d2d.jpg', NULL, 'general', NULL, 'IC--000135', '2022-01-24 07:34:43', '2022-01-24 07:34:43'),
(136, 35, 43, '400.00', 'varda-spaghetti-pasta', NULL, '210.00', '185.00', 1, 0, 1, '164301694461ee72f0d8f89.jpg', NULL, 'general', NULL, 'IC--000136', '2022-01-24 07:35:44', '2022-01-24 07:35:44'),
(137, 35, 43, '500.00', 'donna-sofia-spaghetti-pasta', NULL, '140.00', '130.00', 1, 0, 1, '164301699761ee73257844c.jpeg', NULL, 'general', NULL, 'IC--000137', '2022-01-24 07:36:37', '2022-01-24 07:36:37'),
(138, 35, 43, '200.00', 'bashundhara-macaroni-bamboo', NULL, '35.00', '30.00', 1, 0, 1, '164301721061ee73fa3e6d2.jpg', NULL, 'general', NULL, 'IC--000138', '2022-01-24 07:40:10', '2022-01-24 07:40:10'),
(139, 35, 43, '400.00', 'barilla-pasta-sauce-jar-napoletana', NULL, '350.00', '320.00', 1, 0, 1, '164301726661ee743287e94.jpg', NULL, 'general', NULL, 'IC--000139', '2022-01-24 07:41:06', '2022-01-24 07:41:06'),
(140, 35, 43, '400.00', 'emirates-macaroni-alfabeto-tricolor-pasta', NULL, '180.00', '140.00', 1, 0, 1, '164301732361ee746b62a49.webp', NULL, 'general', NULL, 'IC--000140', '2022-01-24 07:42:03', '2022-01-24 07:42:03'),
(141, 35, 43, '250.00', 'mr-pasta-chilli-chicken', NULL, '55.00', '45.00', 1, 0, 1, '164301738861ee74acb09c9.png', NULL, 'general', NULL, 'IC--000141', '2022-01-24 07:43:08', '2022-01-24 07:43:08'),
(142, 35, 43, '500.00', 'pastiano-penne-pasta', NULL, '185.00', NULL, 1, 0, 1, '164301751361ee7529bb060.png', NULL, 'general', NULL, 'IC--000142', '2022-01-24 07:45:13', '2022-01-24 07:45:13'),
(143, 36, 43, '18.00', 'snickers-chocolate', NULL, '25.00', NULL, 1, 0, 1, '164301756261ee755a1a932.jpg', NULL, 'general', NULL, 'IC--000143', '2022-01-24 07:46:02', '2022-01-24 07:46:02'),
(144, 36, 43, '13.00', 'cadbury-dairy-milk-chocolate-bar', NULL, '20.00', '15.00', 1, 0, 1, '164301765761ee75b954eac.png', NULL, 'general', NULL, 'IC--000144', '2022-01-24 07:47:37', '2022-01-24 07:47:37'),
(146, 36, 43, '18.00', 'nestle-kitkat-2-finger-chocolate-wafer-india-', NULL, '30.00', NULL, 1, 0, 1, '164301776561ee7625d98cf.jpg', NULL, 'general', NULL, 'IC--000146', '2022-01-24 07:49:25', '2022-01-24 07:49:25'),
(147, 36, 43, '100.00', 'cbl-munchee-chocolate-wafer', NULL, '80.00', '75.00', 1, 0, 1, '164301781361ee7655cd308.png', NULL, 'general', NULL, 'IC--000147', '2022-01-24 07:50:13', '2022-01-24 07:50:13'),
(148, 36, 43, '45.00', 'm-m-peanut-chocolate', NULL, '80.00', NULL, 1, 0, 1, '164301784961ee76799a7cb.jpg', NULL, 'general', NULL, 'IC--000148', '2022-01-24 07:50:49', '2022-01-24 07:50:49'),
(150, 36, 43, '40.00', 'nestle-classic-chocolate', NULL, '100.00', NULL, 1, 0, 1, '164301792061ee76c0c510e.jpg', NULL, 'general', NULL, 'IC--000150', '2022-01-24 07:52:01', '2022-01-24 07:52:01'),
(151, 36, 43, '40.00', 'sargam-royal-crispy-mouth-freshener', NULL, '100.00', NULL, 1, 0, 1, '164301799661ee770c291cf.png', NULL, 'general', NULL, 'IC--000151', '2022-01-24 07:53:16', '2022-01-24 07:53:16'),
(152, 36, 43, '8.00', 'tic-tac-mint-flavored-mouth-freshener', NULL, '40.00', NULL, 1, 0, 1, '164301803661ee7734438d4.jpg', NULL, 'general', NULL, 'IC--000152', '2022-01-24 07:53:56', '2022-01-24 07:53:56'),
(153, 36, 43, '500.00', 'bluebell-premium-white-compound-baking-chocolate', NULL, '330.00', '300.00', 1, 0, 1, '164302129161ee83ebc0ef5.jpg', NULL, 'general', NULL, 'IC--000153', '2022-01-24 08:48:11', '2022-01-24 08:48:11'),
(154, 36, 42, '40.00', 'shokti-chocolate-coated-wafer', NULL, '200.00', NULL, 1, 0, 1, '164302136461ee84340a2c6.jpg', NULL, 'general', NULL, 'IC--000154', '2022-01-24 08:49:24', '2022-01-24 08:49:24'),
(155, 36, 43, '70.00', 'ferrero-rocher-moments-premium-chocolate', NULL, '450.00', NULL, 1, 0, 1, '164302144361ee8483df6f0.jpg', NULL, 'general', NULL, 'IC--000155', '2022-01-24 08:50:43', '2022-01-24 08:50:43'),
(156, 37, 44, '1.00', 'cheese-puff', NULL, '10.00', NULL, 1, 0, 1, '164302156761ee84ff2e7df.jpg', NULL, 'general', NULL, 'IC--000156', '2022-01-24 08:52:47', '2022-01-24 11:29:17'),
(157, 37, 43, '22.00', 'bombay-sweets-mr-twist', NULL, '15.00', NULL, 1, 0, 1, '164309060861ef92b0e8996.jpg', NULL, 'general', NULL, 'IC--000157', '2022-01-25 04:03:29', '2022-01-25 04:03:29'),
(158, 37, 44, '1.00', 'bombay-sweets-ring-chips', NULL, '10.00', NULL, 1, 0, 1, '164309065461ef92debb9d6.jpeg', NULL, 'general', NULL, 'IC--000158', '2022-01-25 04:04:14', '2022-01-25 04:04:14'),
(159, 37, 44, '1.00', 'bombay-sweets-cheese-ball-cheezee-corn-snacks', NULL, '10.00', NULL, 1, 0, 1, '164309074361ef9337c7833.png', NULL, 'general', NULL, 'IC--000159', '2022-01-25 04:05:43', '2022-01-25 04:05:43'),
(160, 37, 44, '1.00', 'detos-chicken-wings-chips', NULL, '20.00', NULL, 1, 0, 1, '164309080861ef937845b8d.jpg', NULL, 'general', NULL, 'IC--000160', '2022-01-25 04:06:48', '2022-01-25 04:06:48'),
(161, 37, 44, '1.00', 'sun-chips-garlic-chilli', NULL, '25.00', NULL, 1, 0, 1, '164309084761ef939fd701e.jpg', NULL, 'general', NULL, 'IC--000161', '2022-01-25 04:07:27', '2022-01-25 04:07:27'),
(162, 37, 44, '1.00', 'kurkure-american-style-cream-onion-chips', NULL, '10.00', NULL, 1, 0, 1, '164309089161ef93cb5eabc.jpg', NULL, 'general', NULL, 'IC--000162', '2022-01-25 04:08:11', '2022-01-25 04:08:11'),
(163, 37, 44, '1.00', 'ifad-wavy-chips-bar-b-q-', NULL, '10.00', NULL, 1, 0, 1, '164309093161ef93f33c989.webp', NULL, 'general', NULL, 'IC--000163', '2022-01-25 04:08:51', '2022-01-25 04:08:51'),
(164, 37, 44, '1.00', 'alooz-waves-b-b-q-potato-chips', NULL, '15.00', NULL, 1, 0, 1, '164309096861ef94188674a.png', NULL, 'general', NULL, 'IC--000164', '2022-01-25 04:09:28', '2022-01-25 04:09:28'),
(165, 37, 44, '1.00', 'kurkure-masala-manch-chips', NULL, '25.00', NULL, 1, 0, 1, '164309101161ef94434a71c.png', NULL, 'general', NULL, 'IC--000165', '2022-01-25 04:10:11', '2022-01-25 04:10:11'),
(166, 38, 43, '100.00', 'almonds-kath-badam-', NULL, '90.00', '80.00', 1, 0, 1, '164309111461ef94aa9b388.png', NULL, 'general', NULL, 'IC--000166', '2022-01-25 04:11:54', '2022-01-25 04:11:54'),
(167, 38, 43, '100.00', 'peanut-raw-kacha-cheena-badam-', NULL, '30.00', '25.00', 1, 0, 1, '164309114861ef94cc66fc4.jpg', NULL, 'general', NULL, 'IC--000167', '2022-01-25 04:12:28', '2022-01-25 04:12:28'),
(168, 38, 43, '100.00', 'peanut-peeled-vaja-cheena-badam-', NULL, '40.00', '25.00', 1, 0, 1, '164309122261ef951660002.jpg', NULL, 'general', NULL, 'IC--000168', '2022-01-25 04:13:42', '2022-01-25 04:13:42'),
(169, 38, 43, '50.00', 'act-ii-popcorn-golden-sizzle', NULL, '30.00', NULL, 1, 0, 1, '164309134361ef958fdc02e.jpg', NULL, 'general', NULL, 'IC--000169', '2022-01-25 04:15:43', '2022-01-25 04:15:43'),
(170, 38, 43, '25.00', 'tong-garden-salted-peanuts', NULL, '25.00', NULL, 1, 0, 1, '164309140161ef95c9efa09.jpg', NULL, 'general', NULL, 'IC--000170', '2022-01-25 04:16:42', '2022-01-25 04:16:42'),
(171, 38, 43, '100.00', 'walnuts-akhrot-', NULL, '150.00', '130.00', 1, 0, 1, '164309161761ef96a163d47.jpg', NULL, 'general', NULL, 'IC--000171', '2022-01-25 04:20:17', '2022-01-25 04:20:17'),
(172, 38, 43, '400.00', 'royal-gardens-mixed-nuts', NULL, '550.00', '510.00', 1, 0, 1, '164309168161ef96e1b0290.webp', NULL, 'general', NULL, 'IC--000172', '2022-01-25 04:21:21', '2022-01-25 04:21:21'),
(173, 38, 43, '100.00', 'royal-gardens-salted-cashews-nut-kaju-badam-', NULL, '250.00', '220.00', 1, 0, 1, '164309178661ef974a45703.webp', NULL, 'general', NULL, 'IC--000173', '2022-01-25 04:23:06', '2022-01-25 04:23:06'),
(174, 38, 43, '150.00', 'tong-garden-japanese-rice-cracker-mixed-coated-peanut', NULL, '300.00', '280.00', 1, 0, 1, '164309184861ef9788c20a8.jpg', NULL, 'general', NULL, 'IC--000174', '2022-01-25 04:24:08', '2022-01-25 04:24:08'),
(175, 38, 43, '30.00', 'blue-diamond-almonds-mixed-nuts', NULL, '150.00', NULL, 1, 0, 1, '164309212261ef989aac05e.jpg', NULL, 'general', NULL, 'IC--000175', '2022-01-25 04:28:42', '2022-01-25 04:28:42'),
(176, 38, 43, '15.00', 'bombay-sweets-go-nuts-green-peas-', NULL, '5.00', NULL, 1, 0, 1, '164309217961ef98d3acdec.jpg', NULL, 'general', NULL, 'IC--000176', '2022-01-25 04:29:39', '2022-01-25 04:29:39'),
(177, 38, 43, '150.00', 'royal-gardens-honey-roasted-almonds', NULL, '330.00', '300.00', 1, 0, 1, '164309223261ef990863abd.webp', NULL, 'general', NULL, 'IC--000177', '2022-01-25 04:30:32', '2022-01-25 04:30:32'),
(178, 38, 43, '170.00', 'blue-diamond-almonds-bold-habanero-bbq', NULL, '550.00', '450.00', 1, 0, 1, '164309229161ef994376b5b.jpg', NULL, 'general', NULL, 'IC--000178', '2022-01-25 04:31:31', '2022-01-25 04:31:31'),
(179, 38, 43, '200.00', 'thai-park-cherry-plum', NULL, '280.00', '250.00', 1, 0, 1, '164309237161ef99935600c.jpeg', NULL, 'general', NULL, 'IC--000179', '2022-01-25 04:32:51', '2022-01-25 04:32:51'),
(180, 38, 43, '190.00', 'golden-garden-mixed-fruits-nuts', NULL, '350.00', '320.00', 1, 0, 1, '164309244261ef99da27a4f.jpg', NULL, 'general', NULL, 'IC--000180', '2022-01-25 04:34:02', '2022-01-25 04:34:02'),
(181, 38, 42, '2.00', 'golden-garden-dried-cherry-200-gm', NULL, '500.00', '450.00', 1, 0, 1, '164309254561ef9a41ec0c0.jpg', NULL, 'general', NULL, 'IC--000181', '2022-01-25 04:35:46', '2022-01-25 04:35:46'),
(182, 39, 43, '300.00', 'dekko-toast-biscuit', NULL, '120.00', NULL, 1, 0, 1, '164309261161ef9a837233e.jpg', NULL, 'general', NULL, 'IC--000182', '2022-01-25 04:36:51', '2022-01-25 04:36:51'),
(183, 39, 43, '75.00', 'cocola-champion-chocolate-cream-biscuit', NULL, '20.00', NULL, 1, 0, 1, '164309272761ef9af709779.jpg', NULL, 'general', NULL, 'IC--000183', '2022-01-25 04:38:47', '2022-01-25 04:38:47'),
(184, 39, 43, '50.00', 'haque-mr-cookie-biscuit', NULL, '10.00', NULL, 1, 0, 1, '164309276861ef9b20bbe9c.jpg', NULL, 'general', NULL, 'IC--000184', '2022-01-25 04:39:28', '2022-01-25 04:39:28'),
(185, 39, 43, '100.00', 'bangas-grand-choice-salted-biscuit', NULL, '20.00', NULL, 1, 0, 1, '164309286361ef9b7f935cf.jpg', NULL, 'general', NULL, 'IC--000185', '2022-01-25 04:41:03', '2022-01-25 04:41:03'),
(186, 39, 43, '88.00', 'dekko-honey-kalo-zeera-biscuit', NULL, '60.00', NULL, 1, 0, 1, '164309289661ef9ba0f3525.jpg', NULL, 'general', NULL, 'IC--000186', '2022-01-25 04:41:37', '2022-01-25 04:41:37'),
(187, 39, 43, '240.00', 'danish-lexus-vegetable-cracker-biscuit', NULL, '200.00', '170.00', 1, 0, 1, '164309294361ef9bcf95508.jpeg', NULL, 'general', NULL, 'IC--000187', '2022-01-25 04:42:23', '2022-01-25 04:42:23'),
(188, 39, 43, '88.00', 'dekko-black-brown-cookies', NULL, '192.00', '150.00', 1, 0, 1, '164309304661ef9c365e4cd.jpg', NULL, 'general', NULL, 'IC--000188', '2022-01-25 04:44:06', '2022-01-25 04:44:06'),
(189, 39, 43, '240.00', 'olympic-lexus-vege-cracker-biscuit', NULL, '80.00', '70.00', 1, 0, 1, '164309310161ef9c6d29f7f.jpg', NULL, 'general', NULL, 'IC--000189', '2022-01-25 04:45:01', '2022-01-25 04:45:01'),
(190, 39, 43, '125.00', 'olympic-digestive-high-fiber-biscuit', NULL, '20.00', NULL, 1, 0, 1, '164309315161ef9c9fd7a1a.jpg', NULL, 'general', NULL, 'IC--000190', '2022-01-25 04:45:51', '2022-01-25 04:45:51'),
(191, 39, 43, '300.00', 'danish-dry-cake-biscuit', NULL, '20.00', NULL, 1, 0, 1, '164309437361efa16564fe3.jpg', NULL, 'general', NULL, 'IC--000191', '2022-01-25 05:06:13', '2022-01-25 05:06:13'),
(192, 39, 43, '250.00', 'olympic-premium-toast', NULL, '50.00', '45.00', 1, 0, 1, '164309442661efa19a012eb.jpg', NULL, 'general', NULL, 'IC--000192', '2022-01-25 05:06:39', '2022-01-25 05:07:06'),
(193, 39, 43, '220.00', 'mr-cookie-butter-coconut-biscuit', NULL, '70.00', '50.00', 1, 0, 1, '164309451761efa1f5c2c1f.jpg', NULL, 'general', NULL, 'IC--000193', '2022-01-25 05:08:37', '2022-01-25 05:08:37'),
(194, 39, 43, '900.00', 'fresh-butter-cookies-biscuit-jar', NULL, '170.00', '160.00', 1, 0, 1, '164309455961efa21f6e741.png', NULL, 'general', NULL, 'IC--000194', '2022-01-25 05:09:19', '2022-01-25 05:09:19'),
(195, 39, 42, '70.00', 'olympic-tip-biscuit', NULL, '15.00', NULL, 1, 0, 1, '164309459861efa24630037.jpg', NULL, 'general', NULL, 'IC--000195', '2022-01-25 05:09:58', '2022-01-25 05:09:58'),
(196, 39, 43, '60.00', 'fit-cracker-milk-flavour-biscuit', NULL, '15.00', NULL, 1, 0, 1, '164309464661efa27678dcc.png', NULL, 'general', NULL, 'IC--000196', '2022-01-25 05:10:46', '2022-01-25 05:10:46'),
(197, 39, 43, '200.00', 'bakeman-s-lexus-vegetable-crackers-biscuit', NULL, '65.00', NULL, 1, 0, 1, '164309796761efaf6f537af.jpeg', NULL, 'general', NULL, 'IC--000197', '2022-01-25 05:11:13', '2022-01-25 06:06:07'),
(198, 39, 43, '300.00', 'dekko-dry-cake-biscuit', NULL, '120.00', '100.00', 1, 0, 1, '164309471361efa2b9b7211.jpg', NULL, 'general', NULL, 'IC--000198', '2022-01-25 05:11:53', '2022-01-25 05:11:53'),
(199, 47, 43, '600.00', 'jhatpot-paratha-low-fat-10-pcs', NULL, '120.00', '100.00', 1, 0, 1, '164309826961efb09d2aa8b.jpg', NULL, 'general', NULL, 'IC--000199', '2022-01-25 06:11:09', '2022-01-25 06:11:09'),
(200, 47, 42, '20.00', 'golden-harvest-deshi-paratha', NULL, '240.00', '220.00', 1, 0, 1, '164309847361efb1699a8b9.jpg', NULL, 'general', NULL, 'IC--000200', '2022-01-25 06:14:33', '2022-01-25 06:23:50'),
(201, 47, 43, '1300.00', 'kazi-farms-kitchen-plain-paratha-family-20-pcs', NULL, '270.00', '250.00', 1, 0, 1, '164309859661efb1e4cdd42.png', NULL, 'general', NULL, 'IC--000201', '2022-01-25 06:16:36', '2022-01-25 06:24:01'),
(202, 47, 43, '250.00', 'kazi-farms-kitchen-chicken-nuggets-spicy', NULL, '170.00', '150.00', 1, 0, 1, '164309866961efb22d0839f.jpg', NULL, 'general', NULL, 'IC--000202', '2022-01-25 06:17:49', '2022-01-25 06:23:36'),
(203, 47, 43, '300.00', 'golden-harvest-chicken-nuggets', NULL, '170.00', '150.00', 1, 0, 1, '164309881261efb2bcc1d76.jpg', NULL, 'general', NULL, 'IC--000203', '2022-01-25 06:20:12', '2022-01-25 06:23:21'),
(204, 47, 43, '600.00', 'quality-plain-paratha-10-pcs', NULL, '80.00', '60.00', 1, 0, 1, '164309897061efb35a59f12.jpg', NULL, 'general', NULL, 'IC--000204', '2022-01-25 06:22:50', '2022-01-25 06:22:50'),
(205, 47, 43, '1200.00', 'golden-harvest-atta-ruti-20-pcs', NULL, '160.00', '140.00', 1, 0, 1, '164309918761efb4335330c.jpg', NULL, 'general', NULL, 'IC--000205', '2022-01-25 06:26:27', '2022-01-25 06:26:27'),
(206, 47, 43, '270.00', 'bengal-meat-chicken-sausage-bp-', NULL, '220.00', '200.00', 1, 0, 1, '164309927961efb48f79bd6.jpg', NULL, 'general', NULL, 'IC--000206', '2022-01-25 06:27:59', '2022-01-25 06:27:59'),
(207, 47, 43, '300.00', 'kazi-farms-kitchen-chicken-liver-singara-15-pcs', NULL, '120.00', '100.00', 1, 0, 1, '164309936161efb4e111a84.png', NULL, 'general', NULL, 'IC--000207', '2022-01-25 06:29:21', '2022-01-25 06:29:21'),
(208, 47, 43, '450.00', 'kazi-farms-kitchen-dal-puri-10-pcs', NULL, '120.00', '100.00', 1, 0, 1, '164309941461efb51603b0f.jpg', NULL, 'general', NULL, 'IC--000208', '2022-01-25 06:30:14', '2022-01-25 06:30:14'),
(209, 47, 43, '300.00', 'ag-food-vegetable-spring-roll-14-15-pcs', NULL, '100.00', '85.00', 1, 0, 1, '164309949261efb5643855d.jpg', NULL, 'general', NULL, 'IC--000209', '2022-01-25 06:31:32', '2022-01-25 06:31:32'),
(210, 47, 43, '400.00', 'golden-harvest-frozen-chicken-meat-ball', NULL, '230.00', '200.00', 1, 0, 1, '164309955061efb59e273e6.jpg', NULL, 'general', NULL, 'IC--000210', '2022-01-25 06:32:30', '2022-01-25 06:32:30'),
(211, 47, 43, '280.00', 'quality-beef-classic-sausage', NULL, '290.00', '270.00', 1, 0, 1, '164309960361efb5d388b94.jpg', NULL, 'general', NULL, 'IC--000211', '2022-01-25 06:33:23', '2022-01-25 06:33:23'),
(212, 47, 43, '350.00', 'quality-chicken-smoked-sausage', NULL, '240.00', '230.00', 1, 0, 1, '164309969361efb62da6a48.jpg', NULL, 'general', NULL, 'IC--000212', '2022-01-25 06:34:53', '2022-01-25 06:34:53'),
(213, 47, 43, '250.00', 'golden-harvest-chicken-shami-kabab', NULL, '180.00', '160.00', 1, 0, 1, '164309974561efb66166304.jpg', NULL, 'general', NULL, 'IC--000213', '2022-01-25 06:35:45', '2022-01-25 06:35:45'),
(214, 47, 43, '150.00', 'quality-chicken-nuggets', NULL, '200.00', NULL, 1, 0, 1, '164309980961efb6a12fd48.png', NULL, 'general', NULL, 'IC--000214', '2022-01-25 06:36:49', '2022-01-25 06:36:49'),
(215, 48, 43, '425.00', 'blossoms-cane-whole-mushroom', NULL, '150.00', '130.00', 1, 0, 1, '164309990261efb6fe276d9.jpg', NULL, 'general', NULL, 'IC--000215', '2022-01-25 06:38:22', '2022-01-25 06:38:22'),
(216, 48, 43, '425.00', 'best-s-mushroom-choice-whole-tin', NULL, '180.00', '120.00', 1, 0, 1, '164309995761efb73581d85.jpg', NULL, 'general', NULL, 'IC--000216', '2022-01-25 06:39:17', '2022-01-25 06:39:17'),
(217, 48, 43, '340.00', 'blossoms-black-olives-pitted', NULL, '180.00', NULL, 1, 0, 1, '164310002461efb778b05d0.jpg', NULL, 'general', NULL, 'IC--000217', '2022-01-25 06:40:24', '2022-01-25 06:40:24'),
(218, 48, 43, '390.00', 'oliova-slice-balck-olives', NULL, '150.00', '140.00', 1, 0, 1, '164310014161efb7ed43254.webp', NULL, 'general', NULL, 'IC--000218', '2022-01-25 06:42:21', '2022-01-25 06:42:21'),
(219, 48, 43, '425.00', 'hibiscus-mushrooms-choice-whole-can', NULL, '150.00', NULL, 1, 0, 1, '164310019461efb822281ed.jpg', NULL, 'general', NULL, 'IC--000219', '2022-01-25 06:43:14', '2022-01-25 06:43:14'),
(220, 48, 43, '425.00', 'garden-fresh-whole-kernel-corn', NULL, '100.00', NULL, 1, 0, 1, '164310024361efb8532a097.jpg', NULL, 'general', NULL, 'IC--000220', '2022-01-25 06:44:03', '2022-01-25 06:44:03'),
(221, 56, 41, '5.00', 'miniket-rice-premium', NULL, '350.00', '325.00', 1, 0, 1, '164310032661efb8a6db252.jpg', NULL, 'general', NULL, 'IC--000221', '2022-01-25 06:45:26', '2022-01-25 06:45:26'),
(222, 56, 41, '5.00', 'nazirshail-rice-standard', NULL, '340.00', '275.00', 1, 0, 1, '164310037861efb8da62436.jpg', NULL, 'general', NULL, 'IC--000222', '2022-01-25 06:46:18', '2022-01-25 06:46:18'),
(223, 56, 41, '25.00', 'nazirshail-rice-standard', NULL, '1700.00', '1550.00', 1, 0, 1, '164310060961efb9c1c7c85.jpg', NULL, 'general', NULL, 'IC--000223', '2022-01-25 06:50:09', '2022-01-25 06:50:09'),
(225, 56, 41, '1.00', 'chinigura-rice', NULL, '110.00', '95.00', 1, 0, 1, '164310074861efba4c2168d.jpg', NULL, 'general', NULL, 'IC--000225', '2022-01-25 06:52:28', '2022-01-25 06:52:28'),
(226, 56, 41, '2.00', 'chashi-aromatic-chinigura-rice', NULL, '260.00', '240.00', 1, 0, 1, '164310079161efba778cfe0.jpeg', NULL, 'general', NULL, 'IC--000226', '2022-01-25 06:53:11', '2022-01-25 06:53:11'),
(227, 56, 41, '1.00', 'rupchanda-chinigura-premium', NULL, '130.00', NULL, 1, 0, 1, '164310085361efbab50d7fd.jpg', NULL, 'general', NULL, 'IC--000227', '2022-01-25 06:54:13', '2022-01-25 06:54:13'),
(228, 56, 41, '2.00', 'pran-chinigura-rice', NULL, '240.00', NULL, 1, 0, 1, '164310091761efbaf5eeed9.png', NULL, 'general', NULL, 'IC--000228', '2022-01-25 06:55:18', '2022-01-25 06:55:18'),
(229, 56, 41, '1.00', 'katarivog-rice', NULL, '65.00', NULL, 1, 0, 1, '164310101361efbb55658a7.jpg', NULL, 'general', NULL, 'IC--000229', '2022-01-25 06:56:53', '2022-01-25 06:56:53'),
(230, 56, 41, '2.00', 'ispahani-parbon-chinigura-rice', NULL, '250.00', NULL, 1, 0, 1, '164310106761efbb8bdb970.png', NULL, 'general', NULL, 'IC--000230', '2022-01-25 06:57:47', '2022-01-25 06:57:47'),
(231, 56, 41, '1.00', 'banglamoti-rice', NULL, '65.00', NULL, 1, 0, 1, '164310112761efbbc70fc6a.jpg', NULL, 'general', NULL, 'IC--000231', '2022-01-25 06:58:47', '2022-01-25 06:58:47'),
(232, 56, 41, '5.00', 'athash-rice', NULL, '300.00', '270.00', 1, 0, 1, '164310119361efbc09b3271.jpg', NULL, 'general', NULL, 'IC--000232', '2022-01-25 06:59:53', '2022-01-25 06:59:53'),
(233, 56, 41, '10.00', 'aci-pure-miniket-rice', NULL, '750.00', '720.00', 1, 0, 1, '164310123761efbc352a209.jpg', NULL, 'general', NULL, 'IC--000233', '2022-01-25 07:00:37', '2022-01-25 07:00:37'),
(234, 56, 41, '1.00', 'bpm-white-binni-rice', NULL, '110.00', NULL, 1, 0, 1, '164310127861efbc5e72d83.jpg', NULL, 'general', NULL, 'IC--000234', '2022-01-25 07:01:18', '2022-01-25 07:01:18'),
(236, 57, 43, '100.00', 'cumin-jira-', 'জিরা', '50.00', '45.00', 1, 0, 1, '164310168161efbdf1ea11a.png', NULL, 'general', NULL, 'IC--000236', '2022-01-25 07:08:02', '2022-02-09 04:15:54'),
(238, 57, 43, '100.00', 'dried-chillies-shukna-morich-', 'শুকনা মরিচ', '35.00', '30.00', 1, 0, 1, '164310181161efbe7352d4f.jpg', NULL, 'general', NULL, 'IC--000238', '2022-01-25 07:10:11', '2022-02-09 04:20:14'),
(239, 57, 43, '200.00', 'radhuni-turmeric-holud-powder', 'রাঁধুনী হলুদের গুঁড়া', '100.00', '90.00', 1, 0, 1, '164310184661efbe9630657.jpg', NULL, 'general', NULL, 'IC--000239', '2022-01-25 07:10:46', '2022-02-09 04:20:58'),
(240, 57, 43, '50.00', 'cardamom-elachi-whole', 'এলাচ', '170.00', '140.00', 1, 0, 1, '164310189361efbec51caa7.jpg', NULL, 'general', NULL, 'IC--000240', '2022-01-25 07:11:33', '2022-02-09 04:21:59'),
(241, 57, 43, '100.00', 'bay-leaves-tejpata-', 'তেজপাতা', '20.00', NULL, 1, 0, 1, '164310193861efbef2cb525.jpg', NULL, 'general', NULL, 'IC--000241', '2022-01-25 07:12:18', '2022-02-09 04:22:34'),
(242, 57, 43, '100.00', 'radhuni-cumin-jira-powder', 'রাধুনী জিরার গুড়া', '100.00', '85.00', 1, 0, 1, '164310200861efbf385ded9.jpg', NULL, 'general', NULL, 'IC--000242', '2022-01-25 07:13:28', '2022-02-09 04:23:07'),
(244, 57, 43, '40.00', 'radhuni-garam-masala', 'রাধুনী গরম মশলার গুড়া', '70.00', '65.00', 1, 0, 1, '164310212661efbfaeaa2a4.jpg', NULL, 'general', NULL, 'IC--000244', '2022-01-25 07:15:26', '2022-02-09 04:23:49'),
(245, 57, 43, '200.00', 'radhuni-coriander-dhonia-powder', 'রাধুনী ধনিয়ার গুড়া', '70.00', '60.00', 1, 0, 1, '164310221361efc00556343.jpg', NULL, 'general', NULL, 'IC--000245', '2022-01-25 07:16:53', '2022-02-09 04:25:02'),
(246, 57, 43, '35.00', 'radhuni-roast-masala', 'রাধুনী রোস্ট মশলা', '70.00', NULL, 1, 0, 1, '164310225961efc03365fd2.webp', NULL, 'general', NULL, 'IC--000246', '2022-01-25 07:17:39', '2022-02-09 04:25:57'),
(247, 57, 43, '50.00', 'radhuni-cumin-jira-powder', 'রাঁধুনী জিরার গুড়া', '45.00', '40.00', 1, 0, 1, '164310233661efc080334fa.jpg', NULL, 'general', NULL, 'IC--000247', '2022-01-25 07:18:56', '2022-02-09 04:27:02'),
(248, 57, 43, '50.00', 'black-pepper-gol-morich-whole', 'গোল মরিচ', '70.00', '60.00', 1, 0, 1, '164310239161efc0b78a6de.jpg', NULL, 'general', NULL, 'IC--000248', '2022-01-25 07:19:51', '2022-02-09 04:27:39'),
(249, 57, 43, '100.00', 'black-cumin-kalo-jira-', 'কালো জিরা', '60.00', '50.00', 1, 0, 1, '164310244161efc0e9d0fe1.jpg', NULL, 'general', NULL, 'IC--000249', '2022-01-25 07:20:41', '2022-02-09 04:28:23'),
(250, 57, 43, '100.00', 'fennel-mouri-', 'মৌরি', '30.00', '25.00', 1, 0, 1, '164310247461efc10a87c6b.jpg', NULL, 'general', NULL, 'IC--000250', '2022-01-25 07:21:14', '2022-02-09 04:28:59'),
(251, 57, 43, '100.00', 'fenugreek-methi-seed', 'মেথি বীজ', '25.00', '20.00', 1, 0, 1, '164310253161efc14376d5a.jpg', NULL, 'general', NULL, 'IC--000251', '2022-01-25 07:22:11', '2022-02-09 04:29:51'),
(254, 57, 43, '100.00', 'mix-spice-pach-foron-', 'পাঁচফোড়ন', '40.00', '29.00', 1, 0, 1, '164310267161efc1cf034e0.jpg', NULL, 'general', NULL, 'IC--000254', '2022-01-25 07:24:31', '2022-02-09 04:30:40'),
(255, 57, 43, '100.00', 'mustard-seed-sorisha-', 'সরিষা', '20.00', NULL, 1, 0, 1, '164310277161efc2333b81d.jpg', NULL, 'general', NULL, 'IC--000255', '2022-01-25 07:26:11', '2022-02-09 04:31:24'),
(257, 57, 43, '100.00', 'brown-flax-seed', 'তিসি বীজ', '30.00', '25.00', 1, 0, 1, '164310287061efc296c0007.jpg', NULL, 'general', NULL, 'IC--000257', '2022-01-25 07:27:50', '2022-02-09 04:32:01'),
(258, 57, 43, '45.00', 'dhakaiya-chicken-meat-masala', 'এসিয়াই  ঢাকাইয়া কাচ্চি বিরিয়ানি মশলা', '60.00', NULL, 1, 0, 1, '16443885116203609fe4939.jpg', NULL, 'general', NULL, 'IC--000258', '2022-01-25 07:28:25', '2022-02-09 04:37:32'),
(259, 37, 43, '22.00', 'bombay-sweets-mr-twist', NULL, '50.00', NULL, 1, 0, 1, '164318961861f115724f30f.jpg', NULL, 'general', NULL, 'IC--000259', '2022-01-26 07:33:38', '2022-01-26 07:33:38'),
(260, 37, 44, '1.00', 'bombay-sweets-ring-chips', NULL, '10.00', NULL, 1, 0, 1, '164318982361f1163fb3daf.webp', NULL, 'general', NULL, 'IC--000260', '2022-01-26 07:37:03', '2022-01-26 07:37:03'),
(261, 37, 44, '1.00', 'bombay-sweets-cheese-ball-cheezee-corn-snacks', NULL, '10.00', NULL, 1, 0, 1, '164319011461f117629c943.jpg', NULL, 'general', NULL, 'IC--000261', '2022-01-26 07:41:54', '2022-01-26 07:41:54'),
(262, 58, 47, '5.00', 'fresh-fortified', NULL, '800.00', '740.00', 1, 0, 1, '164319070661f119b2f07cb.jpg', NULL, 'general', NULL, 'IC--000262', '2022-01-26 07:51:47', '2022-01-26 07:51:47'),
(263, 58, 47, '2.00', 'fresh-fortified-soyabean-oil', NULL, '350.00', '330.00', 1, 0, 1, '164319093561f11a9769b82.jpg', NULL, 'general', NULL, 'IC--000263', '2022-01-26 07:55:35', '2022-01-26 07:55:35'),
(264, 58, 47, '5.00', 'veola-soyabean-oil', NULL, '800.00', '745.00', 1, 0, 1, '164319108861f11b30bcfa3.jpg', NULL, 'general', NULL, 'IC--000264', '2022-01-26 07:58:08', '2022-01-26 07:58:08'),
(265, 58, 47, '5.00', 'teer-soyabean-oil', NULL, '850.00', '800.00', 1, 0, 1, '164319121161f11bab21061.jpg', NULL, 'general', NULL, 'IC--000265', '2022-01-26 08:00:11', '2022-01-26 08:00:11'),
(266, 58, 47, '2.00', 'rupchanda-soyabean-oil', NULL, '340.00', '330.00', 1, 0, 1, '164319139361f11c6154e1b.webp', NULL, 'general', NULL, 'IC--000266', '2022-01-26 08:03:13', '2022-01-26 08:03:13'),
(267, 58, 47, '1.00', 'rupchanda-soyabean-oil-poly-', NULL, '160.00', '155.00', 1, 0, 1, '164319151161f11cd725ffe.webp', NULL, 'general', NULL, 'IC--000267', '2022-01-26 08:05:11', '2022-01-26 08:05:11'),
(268, 58, 47, '1.00', 'fresh-mustard-oil', NULL, '270.00', '238.00', 1, 0, 1, '164319163661f11d54b8b63.jpg', NULL, 'general', NULL, 'IC--000268', '2022-01-26 08:07:16', '2022-01-26 08:07:16'),
(269, 58, 46, '500.00', 'fresh-mustard-oil', NULL, '142.00', '125.00', 1, 0, 1, '164319180561f11dfd8faff.jpg', NULL, 'general', NULL, 'IC--000269', '2022-01-26 08:10:05', '2022-01-26 08:10:05'),
(270, 58, 47, '3.00', 'sena-fortified-soyabean-oil', NULL, '500.00', '472.00', 1, 0, 1, '164319194561f11e89957d7.webp', NULL, 'general', NULL, 'IC--000270', '2022-01-26 08:12:25', '2022-01-26 08:12:25'),
(271, 58, 46, '500.00', 'acme-mustard-oil', NULL, '170.00', '150.00', 1, 0, 1, '164319214561f11f516046f.jpg', NULL, 'general', NULL, 'IC--000271', '2022-01-26 08:15:45', '2022-01-26 08:15:45'),
(272, 58, 46, '500.00', 'pran-mustard-oil', NULL, '170.00', '150.00', 1, 0, 1, '164319229561f11fe710a26.png', NULL, 'general', NULL, 'IC--000272', '2022-01-26 08:18:15', '2022-01-26 08:18:15'),
(273, 58, 47, '1.00', 'rahma-pomace-olive-oil', NULL, '180.00', '160.00', 1, 0, 1, '164319245761f12089e4a10.jpg', NULL, 'general', NULL, 'IC--000273', '2022-01-26 08:20:58', '2022-01-26 08:20:58'),
(274, 59, 43, '500.00', 'aarong-dairy-pure-ghee', NULL, '470.00', '460.00', 1, 0, 1, '164319320261f12372c9e2f.webp', NULL, 'general', NULL, 'IC--000274', '2022-01-26 08:33:22', '2022-01-26 08:33:22'),
(275, 59, 43, '900.00', 'aarong-dairy-pure-ghee', NULL, '1400.00', '1200.00', 1, 0, 1, '164319328161f123c17f5ce.webp', NULL, 'general', NULL, 'IC--000275', '2022-01-26 08:34:41', '2022-01-26 08:34:41'),
(276, 59, 43, '200.00', 'sun-premium-ghee', NULL, '350.00', '300.00', 1, 0, 1, '164319341061f124426d71f.jpg', NULL, 'general', NULL, 'IC--000276', '2022-01-26 08:36:50', '2022-01-26 08:36:50'),
(277, 59, 43, '200.00', 'red-cow-butter-oil', NULL, '300.00', '285.00', 1, 0, 1, '164319519461f12b3a9074d.png', NULL, 'general', NULL, 'IC--000277', '2022-01-26 09:06:34', '2022-01-26 09:06:34'),
(278, 59, 43, '400.00', 'milk-vita-ghee', NULL, '550.00', '500.00', 1, 0, 1, '164319531061f12bae8a11a.jpg', NULL, 'general', NULL, 'IC--000278', '2022-01-26 09:08:30', '2022-01-26 09:08:30'),
(279, 59, 43, '300.00', 'khaas-food-ghee', NULL, '500.00', '480.00', 1, 0, 1, '164319542061f12c1cbeae1.jpg', NULL, 'general', NULL, 'IC--000279', '2022-01-26 09:10:20', '2022-01-26 09:10:20'),
(280, 59, 43, '200.00', 'khusboo-premium-ghee', NULL, '300.00', NULL, 1, 0, 1, '164319553561f12c8f24b92.jpg', NULL, 'general', NULL, 'IC--000280', '2022-01-26 09:12:15', '2022-01-26 09:12:15'),
(281, 59, 43, '500.00', 'aseel-vegetable-ghee', NULL, '400.00', '380.00', 1, 0, 1, '164319561761f12ce1e8027.jpg', NULL, 'general', NULL, 'IC--000281', '2022-01-26 09:13:37', '2022-01-26 09:13:37'),
(282, 109, 43, '20.00', 'radhuni-chicken-masala', NULL, '15.00', NULL, 1, 0, 1, '164319600061f12e6009455.jpg', NULL, 'general', NULL, 'IC--000282', '2022-01-26 09:20:00', '2022-01-26 09:20:00'),
(283, 109, 43, '6.00', 'nestle-maggi-fusian-fried-rice-seasoning-mix-sachet', NULL, '10.00', NULL, 1, 0, 1, '164319620361f12f2b8e793.jpeg', NULL, 'general', NULL, 'IC--000283', '2022-01-26 09:23:23', '2022-01-26 09:23:23'),
(284, 109, 43, '40.00', 'radhuni-biryani-masala', NULL, '60.00', NULL, 1, 0, 1, '164319638761f12fe3a3e1a.png', NULL, 'general', NULL, 'IC--000284', '2022-01-26 09:26:27', '2022-01-26 09:26:27'),
(285, 109, 43, '20.00', 'radhuni-chicken-masala', NULL, '15.00', NULL, 1, 0, 1, '164319674061f13144e6dc7.jpg', NULL, 'general', NULL, 'IC--000285', '2022-01-26 09:32:20', '2022-01-26 09:32:20'),
(286, 109, 43, '20.00', 'radhuni-beef-masala', NULL, '20.00', '17.00', 1, 0, 1, '164319777261f1354c5e471.jpg', NULL, 'general', NULL, 'IC--000286', '2022-01-26 09:49:32', '2022-01-26 09:49:32'),
(287, 109, 43, '50.00', 'radhuni-chatpoti-masala', NULL, '40.00', '35.00', 1, 0, 1, '164319972661f13cee3f15e.jpg', NULL, 'general', NULL, 'IC--000287', '2022-01-26 10:22:06', '2022-01-26 10:22:06'),
(288, 109, 43, '75.00', 'knorr-krispy-fried-chicken-mix', NULL, '80.00', '70.00', 1, 0, 1, '164320017561f13eafefaa1.jpg', NULL, 'general', NULL, 'IC--000288', '2022-01-26 10:29:36', '2022-01-26 10:29:36'),
(289, 109, 43, '75.00', 'radhuni-chicken-tandoori-masala', NULL, '50.00', '45.00', 1, 0, 1, '164327952061f274a0bd27e.jpg', NULL, 'general', NULL, 'IC--000289', '2022-01-27 08:32:00', '2022-01-27 08:32:00'),
(290, 109, 43, '80.00', 'radhuni-kala-bhuna-masala', NULL, '60.00', '55.00', 1, 0, 1, '164328074561f279691e4b7.jpg', NULL, 'general', NULL, 'IC--000290', '2022-01-27 08:52:25', '2022-01-27 08:52:25'),
(291, 109, 43, '100.00', 'radhuni-meat-curry-masala', NULL, '70.00', '60.00', 1, 0, 1, '164328086261f279de3fc8b.jpg', NULL, 'general', NULL, 'IC--000291', '2022-01-27 08:54:22', '2022-01-27 08:54:22'),
(292, 109, 43, '25.00', 'nestle-maggi-shaad-e-magic-seasoning-mix-sachet', NULL, '35.00', '30.00', 1, 0, 1, '164328104661f27a9635f74.jpg', NULL, 'general', NULL, 'IC--000292', '2022-01-27 08:57:26', '2022-01-27 08:57:26'),
(293, 109, 43, '40.00', 'radhuni-kachchi-biryani-masala', NULL, '60.00', '55.00', 1, 0, 1, '164328128561f27b8585089.jpg', NULL, 'general', NULL, 'IC--000293', '2022-01-27 09:01:25', '2022-01-27 09:01:25'),
(294, 109, 43, '100.00', 'savory-milkshake-premix-vanilla-flavor-box', NULL, '200.00', '150.00', 1, 0, 1, '164328138061f27be4e0222.jpeg', NULL, 'general', NULL, 'IC--000294', '2022-01-27 09:03:00', '2022-01-27 09:03:00'),
(295, 109, 43, '50.00', 'shan-seekh-kabab-masala-mix', NULL, '90.00', '70.00', 1, 0, 1, '164328149361f27c55beae7.png', NULL, 'general', NULL, 'IC--000295', '2022-01-27 09:04:53', '2022-01-27 09:04:53'),
(296, 109, 43, '50.00', 'shan-seekh-kabab-masala-mix', NULL, '120.00', '90.00', 1, 0, 1, '164328157561f27ca717d07.png', NULL, 'general', NULL, 'IC--000296', '2022-01-27 09:06:15', '2022-01-27 09:06:15');
INSERT INTO `products` (`id`, `category_id`, `unit_id`, `unit_number`, `slug`, `op_name`, `price`, `special_price`, `in_stock`, `viewed`, `is_active`, `thumbnail`, `banner`, `product_type`, `stock`, `xitem`, `created_at`, `updated_at`) VALUES
(297, 61, 41, '1.00', 'brown-sugar-akher-chini-loose', NULL, '90.00', '70.00', 1, 0, 1, '164328329061f2835a81674.webp', NULL, 'general', NULL, 'IC--000297', '2022-01-27 09:34:50', '2022-01-27 09:34:50'),
(298, 31, 41, '2.00', 'malta-50-gm', NULL, '460.00', '349.00', 1, 0, 1, '164362528061f7bb4090342.jpg', NULL, 'general', NULL, 'IC--000298', '2022-01-31 08:34:41', '2022-01-31 09:33:27'),
(299, 31, 43, '250.00', 'strawberry', NULL, '300.00', '250.00', 1, 0, 1, '164362544361f7bbe39f2e5.jpg', NULL, 'general', NULL, 'IC--000299', '2022-01-31 08:37:23', '2022-01-31 09:33:19'),
(300, 31, 43, '250.00', 'black-grapes', NULL, '125.00', '95.00', 1, 0, 1, '164362556261f7bc5a8a4d8.jpg', NULL, 'general', NULL, 'IC--000300', '2022-01-31 08:39:22', '2022-01-31 09:33:08'),
(301, 31, 42, '4.00', 'shagor-kola-banana-sagor-', NULL, '40.00', '36.00', 1, 0, 1, '164362566561f7bcc184e53.webp', NULL, 'general', NULL, 'IC--000301', '2022-01-31 08:41:05', '2022-01-31 09:34:06'),
(302, 31, 42, '12.00', 'banana-chompa', NULL, '72.00', '55.00', 1, 0, 1, '164362577561f7bd2f7b4ad.jpg', NULL, 'general', NULL, 'IC--000302', '2022-01-31 08:42:55', '2022-01-31 09:32:57'),
(303, 31, 41, '1.00', 'guava-50-gm-', NULL, '110.00', '70.00', 1, 0, 1, '164362591261f7bdb8015c1.jpg', NULL, 'general', NULL, 'IC--000303', '2022-01-31 08:45:12', '2022-01-31 09:32:46'),
(304, 31, 43, '250.00', 'lal-angur-red-grapes-12-gm', NULL, '125.00', '113.00', 1, 0, 1, '164362602061f7be249f2e8.jpg', NULL, 'general', NULL, 'IC--000304', '2022-01-31 08:47:00', '2022-01-31 09:28:57'),
(305, 31, 41, '1.00', 'paka-pape-50-gm', NULL, '115.00', '75.00', 1, 0, 1, '164362622861f7bef4a13fe.jpg', NULL, 'general', NULL, 'IC--000305', '2022-01-31 08:50:28', '2022-01-31 09:28:48'),
(306, 31, 42, '4.00', 'banana-sobri', NULL, '52.00', '36.00', 1, 0, 1, '164362636261f7bf7aba041.jpg', NULL, 'general', NULL, 'IC--000306', '2022-01-31 08:52:42', '2022-01-31 09:28:07'),
(307, 31, 42, '1.00', 'daab-green-coconut-', NULL, '90.00', '70.00', 1, 0, 1, '164432575762026b7d227c0.jpg', NULL, 'general', NULL, 'IC--000307', '2022-01-31 08:54:33', '2022-02-08 11:09:17'),
(308, 31, 41, '1.00', 'orange-indian-50-gm-', NULL, '230.00', '160.00', 1, 0, 1, '164362657561f7c04f1d0ce.png', NULL, 'general', NULL, 'IC--000308', '2022-01-31 08:56:15', '2022-01-31 09:27:49'),
(309, 31, 42, '2.00', 'dalim-pomegranate-', NULL, '180.00', '150.00', 1, 0, 1, '164362669861f7c0ca12edf.jpg', NULL, 'general', NULL, 'IC--000309', '2022-01-31 08:58:18', '2022-01-31 09:27:41'),
(310, 31, 41, '1.00', 'green-apple-50-gm', NULL, '300.00', '220.00', 1, 0, 1, '164362680061f7c13017164.jpg', NULL, 'general', NULL, 'IC--000310', '2022-01-31 09:00:00', '2022-01-31 09:27:30'),
(311, 31, 41, '1.00', 'gala-apple-50-gm', NULL, '220.00', '205.00', 1, 0, 1, '164362705361f7c22debbcb.jpg', NULL, 'general', NULL, 'IC--000311', '2022-01-31 09:04:13', '2022-01-31 09:27:01'),
(312, 31, 42, '1.00', 'cherry-pineapple-cherry-anaros-', NULL, '30.00', '20.00', 1, 0, 1, '164362715261f7c290ae2db.jpg', NULL, 'general', NULL, 'IC--000312', '2022-01-31 09:05:52', '2022-01-31 09:26:51'),
(313, 31, 41, '1.00', 'china-fuji-apple-50-gm', NULL, '195.00', '190.00', 1, 0, 1, '164362734161f7c34d1bc1a.png', NULL, 'general', NULL, 'IC--000313', '2022-01-31 09:09:01', '2022-01-31 09:26:41'),
(314, 31, 43, '800.00', 'china-orange-40-gm-', NULL, '220.00', '190.00', 1, 0, 1, '164362749961f7c3eb078e4.jpg', NULL, 'general', NULL, 'IC--000314', '2022-01-31 09:11:39', '2022-01-31 09:26:33'),
(315, 31, 42, '1.00', 'narikel-coconut-', NULL, '100.00', '75.00', 1, 0, 1, '164362760461f7c454bb671.jpg', NULL, 'general', NULL, 'IC--000315', '2022-01-31 09:13:24', '2022-01-31 09:26:23'),
(316, 31, 41, '1.00', 'amra-hog-plum-50-gm', NULL, '140.00', '80.00', 1, 0, 1, '164362786061f7c5542eb27.jpg', NULL, 'general', NULL, 'IC--000316', '2022-01-31 09:17:40', '2022-01-31 09:26:14'),
(317, 31, 42, '2.00', 'shada-nashpati-pear-white-', NULL, '132.00', '97.00', 1, 0, 1, '164362798361f7c5cf54e8d.png', NULL, 'general', NULL, 'IC--000317', '2022-01-31 09:19:43', '2022-01-31 09:26:04'),
(318, 31, 42, '1.00', 'sugar-apple-ata-phol-', NULL, '135.00', '100.00', 1, 0, 1, '164362809561f7c63f25905.jpg', NULL, 'general', NULL, 'IC--000318', '2022-01-31 09:21:35', '2022-01-31 09:25:49'),
(319, 31, 42, '1.00', 'jambura-pomelo-', NULL, '100.00', '80.00', 1, 0, 1, '164362821561f7c6b71e140.jpg', NULL, 'general', NULL, 'IC--000319', '2022-01-31 09:23:35', '2022-01-31 09:25:35'),
(320, 32, 41, '1.00', 'potato-regular-50-gm-', NULL, '30.00', '15.00', 1, 0, 1, '164362908561f7ca1dc4fdd.jpg', NULL, 'general', NULL, 'IC--000320', '2022-01-31 09:38:05', '2022-01-31 09:38:05'),
(321, 32, 41, '1.00', 'deshi-peyaj-local-onion-50-gm', NULL, '50.00', '30.00', 1, 0, 1, '164362918561f7ca81de7c2.jpg', NULL, 'general', NULL, 'IC--000321', '2022-01-31 09:39:45', '2022-01-31 09:39:45'),
(322, 32, 41, '1.00', 'lal-peyaj-onion-red-imported-50-gm', NULL, '60.00', '48.00', 1, 0, 1, '164362929661f7caf0b61d0.jpg', NULL, 'general', NULL, 'IC--000322', '2022-01-31 09:41:36', '2022-01-31 09:41:36'),
(323, 32, 42, '1.00', 'fulkopi-cauliflower-', NULL, '65.00', '32.00', 1, 0, 1, '164362942861f7cb74e020b.jpeg', NULL, 'general', NULL, 'IC--000323', '2022-01-31 09:43:48', '2022-01-31 09:43:48'),
(324, 32, 43, '500.00', 'red-tomato-25-gm', NULL, '25.00', '15.00', 1, 0, 1, '164362955061f7cbee1caab.jpg', NULL, 'general', NULL, 'IC--000324', '2022-01-31 09:45:50', '2022-01-31 09:45:50'),
(325, 32, 43, '100.00', 'coriander-leaves-dhonia-pata-10-gm', NULL, '15.00', '8.00', 1, 0, 1, '164362967361f7cc69c31c6.jpg', NULL, 'general', NULL, 'IC--000325', '2022-01-31 09:47:53', '2022-01-31 09:47:53'),
(326, 32, 43, '250.00', 'kacha-morich-green-chilli-12-gm', NULL, '20.00', '10.00', 1, 0, 1, '164363001261f7cdbcd2a38.jpg', NULL, 'general', NULL, 'IC--000326', '2022-01-31 09:53:32', '2022-01-31 09:53:32'),
(327, 32, 41, '1.00', 'notun-alu-potato-seasonal-50-gm', NULL, '25.00', '15.00', 1, 0, 1, '164363015561f7ce4bd42f3.jpg', NULL, 'general', NULL, 'IC--000327', '2022-01-31 09:55:55', '2022-01-31 09:55:55'),
(328, 32, 41, '1.00', 'boro-alu-big-diamond-potato-50-gm', NULL, '32.00', '17.00', 1, 0, 1, '164363043161f7cf5f172d3.jpeg', NULL, 'general', NULL, 'IC--000328', '2022-01-31 10:00:31', '2022-01-31 10:00:31'),
(329, 32, 43, '500.00', 'deshi-gajor-local-carrot-25-gm', NULL, '35.00', '16.00', 1, 0, 1, '164363064061f7d030f3d7f.jpg', NULL, 'general', NULL, 'IC--000329', '2022-01-31 10:04:01', '2022-01-31 10:04:01'),
(330, 32, 43, '500.00', 'roshun-garlic-imported-25-gm', NULL, '80.00', '60.00', 1, 0, 1, '164363074061f7d094b8de5.jpg', NULL, 'general', NULL, 'IC--000330', '2022-01-31 10:05:40', '2022-01-31 10:05:40'),
(331, 32, 43, '500.00', 'deshi-roshun-garlic-local-25-gm', NULL, '50.00', '25.00', 1, 0, 1, '164363095661f7d16cf30ef.jpg', NULL, 'general', NULL, 'IC--000331', '2022-01-31 10:09:17', '2022-01-31 10:09:17'),
(332, 110, 43, '200.00', 'goodlife-mozzarella-cheese', NULL, '160.00', NULL, 1, 0, 1, '164371368561f9149536eec.webp', NULL, 'general', NULL, 'IC--000332', '2022-02-01 09:08:05', '2022-02-01 09:08:05'),
(333, 110, 43, '200.00', 'aarong-dairy-austagram-cheese', NULL, '140.00', NULL, 1, 0, 1, '164371372161f914b90f7eb.webp', NULL, 'general', NULL, 'IC--000333', '2022-02-01 09:08:41', '2022-02-01 09:08:41'),
(334, 110, 43, '200.00', 'aarong-dairy-paneer', NULL, '150.00', NULL, 1, 0, 1, '164371377761f914f1b0848.png', NULL, 'general', NULL, 'IC--000334', '2022-02-01 09:09:37', '2022-02-01 09:09:37'),
(336, 110, 43, '200.00', 'melbourne-sandwich-sliced-cheese-12-slices-', NULL, '200.00', '200.00', 1, 0, 1, '164371382861f91524203d3.jpg', NULL, 'general', NULL, 'IC--000336', '2022-02-01 09:10:28', '2022-02-01 09:10:28'),
(337, 110, 43, '200.00', 'aarong-dairy-cheese-sliced-classic', NULL, '250.00', '230.00', 1, 0, 1, '164371389661f91568079e7.png', NULL, 'general', NULL, 'IC--000337', '2022-02-01 09:11:36', '2022-02-01 09:11:36'),
(338, 110, 43, '120.00', 'almarai-triangles-cheese-8-slices-', NULL, '220.00', NULL, 1, 0, 1, '164371394061f91594a7170.jpg', NULL, 'general', NULL, 'IC--000338', '2022-02-01 09:12:20', '2022-02-01 09:12:20'),
(339, 41, 47, '1.00', 'aarong-dairy-pasteurized-full-cream-liquid-milk', NULL, '75.00', NULL, 1, 0, 1, '164371399461f915ca0b20c.jpg', NULL, 'general', NULL, 'IC--000339', '2022-02-01 09:13:14', '2022-02-01 09:13:14'),
(340, 41, 47, '1.00', 'aarong-dairy-pasteurized-full-cream-liquid-milk', NULL, '75.00', NULL, 1, 0, 1, '164371399561f915cb2fa4d.jpg', NULL, 'general', NULL, 'IC--000340', '2022-02-01 09:13:15', '2022-02-01 09:13:15'),
(341, 110, 43, '200.00', 'aarong-dairy-shredded-mozzarella-cheese', NULL, '250.00', '220.00', 1, 0, 1, '164371399761f915cd995ff.jpg', NULL, 'general', NULL, 'IC--000341', '2022-02-01 09:13:17', '2022-02-01 09:13:17'),
(342, 110, 43, '200.00', 'bega-smokey-bbq-slice', NULL, '315.00', '300.00', 1, 0, 1, '164371404361f915fbe4f99.jpg', NULL, 'general', NULL, 'IC--000342', '2022-02-01 09:14:04', '2022-02-01 09:14:04'),
(343, 41, 46, '200.00', 'aarong-dairy-uht-chocolate-milk', NULL, '25.00', NULL, 1, 0, 1, '164371411561f91643244ec.jpg', NULL, 'general', NULL, 'IC--000343', '2022-02-01 09:15:15', '2022-02-01 09:15:15'),
(344, 110, 43, '200.00', 'bega-slice-cheese', NULL, '350.00', '330.00', 1, 0, 1, '164371412161f916495d5ee.jpg', NULL, 'general', NULL, 'IC--000344', '2022-02-01 09:15:21', '2022-02-01 09:15:21'),
(345, 41, 47, '1.00', 'pran-uht-milk', NULL, '90.00', NULL, 1, 0, 1, '164371422061f916acb2031.jpg', NULL, 'general', NULL, 'IC--000345', '2022-02-01 09:17:00', '2022-02-01 09:17:00'),
(346, 41, 46, '200.00', 'pran-uht-milk', NULL, '22.00', NULL, 1, 0, 1, '164371432261f9171206249.jpg', NULL, 'general', NULL, 'IC--000346', '2022-02-01 09:18:42', '2022-02-01 09:18:42'),
(347, 110, 43, '200.00', 'kisan-processed-cheese', NULL, '200.00', NULL, 1, 0, 1, '164371433561f9171f6b71e.jpg', NULL, 'general', NULL, 'IC--000347', '2022-02-01 09:18:55', '2022-02-01 09:18:55'),
(348, 41, 47, '1.00', 'pran-pasteurized-liquid-milk', NULL, '70.00', NULL, 1, 0, 1, '164371440561f91765b1217.jpeg', NULL, 'general', NULL, 'IC--000348', '2022-02-01 09:20:05', '2022-02-01 09:20:05'),
(349, 41, 46, '500.00', 'aarong-dairy-uht-full-cream-liquid-milk', NULL, '45.00', NULL, 1, 0, 1, '164371451661f917d4c8185.jpg', NULL, 'general', NULL, 'IC--000349', '2022-02-01 09:21:56', '2022-02-01 09:21:56'),
(350, 110, 43, '200.00', 'amul-cheese-slice', NULL, '350.00', '320.00', 1, 0, 1, '164371455361f917f966031.jpg', NULL, 'general', NULL, 'IC--000350', '2022-02-01 09:22:33', '2022-02-01 09:22:33'),
(351, 110, 43, '180.00', 'aarong-dairy-cheese-spread-pizza', NULL, '230.00', '220.00', 1, 0, 1, '164371467061f9186eb8807.jpeg', NULL, 'general', NULL, 'IC--000351', '2022-02-01 09:24:30', '2022-02-01 09:24:30'),
(352, 110, 43, '200.00', 'bega-gourmet-slices-cheese', NULL, '320.00', '300.00', 1, 0, 1, '164371472161f918a1d11b3.jpg', NULL, 'general', NULL, 'IC--000352', '2022-02-01 09:25:21', '2022-02-01 09:25:21'),
(353, 41, 46, '500.00', 'aarong-dairy-low-fat-liquid-milk', NULL, '40.00', NULL, 1, 0, 1, '164371473061f918aad69d4.jpeg', NULL, 'general', NULL, 'IC--000353', '2022-02-01 09:25:30', '2022-02-01 09:25:30'),
(354, 41, 46, '45.00', 'farm-fresh-uht-milk', NULL, '45.00', NULL, 1, 0, 1, '164371481861f919026a1d0.jpg', NULL, 'general', NULL, 'IC--000354', '2022-02-01 09:26:58', '2022-02-01 09:26:58'),
(355, 44, 43, '500.00', 'aarong-dairy-sour-yogurt', NULL, '90.00', '70.00', 1, 0, 1, '164371487661f9193c591d0.jpg', NULL, 'general', NULL, 'IC--000355', '2022-02-01 09:27:56', '2022-02-01 09:27:56'),
(356, 41, 46, '180.00', 'pran-flavored-chocolate-milk-pouch-', NULL, '20.00', NULL, 1, 0, 1, '164371490561f91959a28cb.png', NULL, 'general', NULL, 'IC--000356', '2022-02-01 09:28:25', '2022-02-01 09:28:25'),
(357, 44, 43, '500.00', 'aarong-dairy-low-fat-yogurt-sour-', NULL, '100.00', '80.00', 1, 0, 1, '164371494661f919823d50f.jpg', NULL, 'general', NULL, 'IC--000357', '2022-02-01 09:29:06', '2022-02-01 09:29:06'),
(358, 44, 43, '500.00', 'danish-ayran-sour-yogurt-500-ml', NULL, '100.00', '80.00', 1, 0, 1, '164371499061f919ae1044d.jpg', NULL, 'general', NULL, 'IC--000358', '2022-02-01 09:29:50', '2022-02-01 09:29:50'),
(359, 41, 46, '200.00', 'aarong-dairy-strawberry-yogurt-uht-milk', NULL, '25.00', NULL, 1, 0, 1, '164371500761f919bf728b5.jpg', NULL, 'general', NULL, 'IC--000359', '2022-02-01 09:30:07', '2022-02-01 09:30:07'),
(360, 44, 43, '95.00', 'shokti-mishti-doi', NULL, '40.00', '25.00', 1, 0, 1, '164371504161f919e191401.jpg', NULL, 'general', NULL, 'IC--000360', '2022-02-01 09:30:41', '2022-02-01 09:30:41'),
(361, 41, 46, '180.00', 'pran-flavored-mango-milk-pouch-', NULL, '20.00', NULL, 1, 0, 1, '164371510061f91a1c822af.jpeg', NULL, 'general', NULL, 'IC--000361', '2022-02-01 09:31:40', '2022-02-01 09:31:40'),
(362, 44, 43, '500.00', 'aarong-dairy-sweetened-yogurt', NULL, '120.00', '100.00', 1, 0, 1, '164371511161f91a27914ca.jpg', NULL, 'general', NULL, 'IC--000362', '2022-02-01 09:31:51', '2022-02-01 09:31:51'),
(363, 44, 43, '100.00', 'pran-sweet-yogurt', NULL, '30.00', '25.00', 1, 0, 1, '164371515261f91a50babe6.png', NULL, 'general', NULL, 'IC--000363', '2022-02-01 09:32:32', '2022-02-01 09:32:32'),
(364, 44, 43, '500.00', 'milk-vita-sour-curd', NULL, '100.00', '90.00', 1, 0, 1, '164371521661f91a9036e61.webp', NULL, 'general', NULL, 'IC--000364', '2022-02-01 09:33:36', '2022-02-01 09:33:36'),
(365, 41, 46, '500.00', 'pran-uht-milk', NULL, '45.00', NULL, 1, 0, 1, '164371523361f91aa1c033c.jpg', NULL, 'general', NULL, 'IC--000365', '2022-02-01 09:33:53', '2022-02-01 09:33:53'),
(366, 44, 44, '4.00', 'shokti-sweet-yogurt-strawberry-4-pcs-combo-box', NULL, '180.00', NULL, 1, 0, 1, '164371527661f91acc418c4.png', NULL, 'general', NULL, 'IC--000366', '2022-02-01 09:34:36', '2022-02-01 09:34:36'),
(367, 44, 43, '250.00', 'pran-matha', NULL, '30.00', '25.00', 1, 0, 1, '164371532361f91afb6559f.jpeg', NULL, 'general', NULL, 'IC--000367', '2022-02-01 09:35:23', '2022-02-01 09:35:23'),
(368, 41, 46, '500.00', 'aarong-dairy-laban', NULL, '55.00', NULL, 1, 0, 1, '164371535161f91b1722692.jpg', NULL, 'general', NULL, 'IC--000368', '2022-02-01 09:35:51', '2022-02-01 09:35:51'),
(369, 41, 46, '200.00', 'aarong-dairy-matha', NULL, '25.00', NULL, 1, 0, 1, '164371546161f91b852256b.jpg', NULL, 'general', NULL, 'IC--000369', '2022-02-01 09:37:41', '2022-02-01 09:37:41'),
(370, 41, 47, '2.00', 'danish-ayran-pasteurized-full-cream-liquid-milk', NULL, '235.00', NULL, 1, 0, 1, '164371557561f91bf7bfbc2.jpg', NULL, 'general', NULL, 'IC--000370', '2022-02-01 09:39:35', '2022-02-01 09:39:35'),
(371, 41, 47, '1.00', 'cowhead-pure-uht-milk', NULL, '249.00', NULL, 1, 0, 1, '164371571261f91c80a1fd5.png', NULL, 'general', NULL, 'IC--000371', '2022-02-01 09:41:52', '2022-02-01 09:41:52'),
(372, 43, 41, '1.00', 'arla-dano-daily-pusti-milk-powder', NULL, '520.00', NULL, 1, 0, 1, '164371589561f91d3744368.jpg', NULL, 'general', NULL, 'IC--000372', '2022-02-01 09:44:55', '2022-02-01 09:44:55'),
(373, 43, 41, '1.00', 'goalini-full-cream-milk-powder', NULL, '690.00', '619.00', 1, 0, 1, '164371601261f91dacf1513.jpg', NULL, 'general', NULL, 'IC--000373', '2022-02-01 09:46:53', '2022-02-01 09:46:53'),
(374, 43, 43, '500.00', 'diploma-full-cream-milk-powder', NULL, '365.00', NULL, 1, 0, 1, '164371611561f91e132b627.jpg', NULL, 'general', NULL, 'IC--000374', '2022-02-01 09:48:35', '2022-02-01 09:48:35'),
(375, 87, 43, '50.00', 'odonil-air-freshener-mix-fragrance', NULL, '150.00', '135.00', 1, 0, 1, '164371614361f91e2f8ac0a.png', NULL, 'general', NULL, 'IC--000375', '2022-02-01 09:49:03', '2022-02-01 09:49:03'),
(376, 38, 43, '500.00', 'arla-dano-daily-pusti-milk-powder', NULL, '275.00', NULL, 1, 0, 1, '164371622161f91e7d9c31a.jpg', NULL, 'general', NULL, 'IC--000376', '2022-02-01 09:50:21', '2022-02-01 09:50:21'),
(377, 43, 43, '397.00', 'danish-condensed-filled-milk', NULL, '75.00', NULL, 1, 0, 1, '164371638361f91f1fe767e.jpg', NULL, 'general', NULL, 'IC--000377', '2022-02-01 09:53:03', '2022-02-01 09:53:03'),
(378, 43, 43, '500.00', 'goalini-full-cream-milk-powder', NULL, '350.00', '319.00', 1, 0, 1, '164371758761f923d34b4f0.jpg', NULL, 'general', NULL, 'IC--000378', '2022-02-01 10:13:07', '2022-02-01 10:13:07'),
(379, 43, 41, '1.00', 'diploma-full-cream-milk-powder', NULL, '720.00', NULL, 1, 0, 1, '164371776661f9248699f1e.jpg', NULL, 'general', NULL, 'IC--000379', '2022-02-01 10:16:06', '2022-02-01 10:16:06'),
(380, 43, 43, '500.00', 'starship-milk-powder', NULL, '275.00', NULL, 1, 0, 1, '164371787061f924ee72d96.png', NULL, 'general', NULL, 'IC--000380', '2022-02-01 10:17:50', '2022-02-01 10:17:50'),
(381, 43, 43, '500.00', 'dano-power-instant-full-cream-milk-powder', NULL, '360.00', NULL, 1, 0, 1, '164371800761f925779c4f6.png', NULL, 'general', NULL, 'IC--000381', '2022-02-01 10:20:07', '2022-02-01 10:20:07'),
(382, 43, 43, '500.00', 'marks-milk-powder-poly', NULL, '350.00', NULL, 1, 0, 1, '164371810061f925d45fe0c.webp', NULL, 'general', NULL, 'IC--000382', '2022-02-01 10:21:40', '2022-02-01 10:21:40'),
(383, 43, 43, '450.00', 'nestle-coffee-mate-coffee-creamer-box', NULL, '270.00', NULL, 1, 0, 1, '164371822261f9264eeb9f4.jpg', NULL, 'general', NULL, 'IC--000383', '2022-02-01 10:23:42', '2022-02-01 10:23:42'),
(384, 43, 43, '170.00', 'dano-sterilized-cream', NULL, '120.00', NULL, 1, 0, 1, '164371841061f9270aef24f.webp', NULL, 'general', NULL, 'IC--000384', '2022-02-01 10:26:51', '2022-02-01 10:26:51'),
(385, 43, 43, '700.00', 'nestle-nido-fortigrow-full-cream-milk-powder', NULL, '560.00', NULL, 1, 0, 1, '164372061061f92fa21247d.jpg', NULL, 'general', NULL, 'IC--000385', '2022-02-01 11:03:30', '2022-02-01 11:03:30'),
(386, 43, 43, '200.00', 'diploma-full-cream-milk-powder', NULL, '155.00', NULL, 1, 0, 1, '164372071661f9300ce0349.jpg', NULL, 'general', NULL, 'IC--000386', '2022-02-01 11:05:16', '2022-02-01 11:05:16'),
(387, 57, 43, '50.00', 'aci-pure-turmeric-powder', 'এসিআই পিওর গুঁড়া হলুদ', '28.00', NULL, 1, 0, 1, '164387989161fb9dd338a19.jpg', NULL, 'general', NULL, 'IC--000387', '2022-02-03 07:18:11', '2022-02-09 04:32:58'),
(388, 57, 43, '100.00', 'aci-pure-turmeric-powder', 'এসিআই পিওর গুঁড়া হলুদ', '50.00', NULL, 1, 0, 1, '164387997361fb9e25a2337.jpg', NULL, 'general', NULL, 'IC--000388', '2022-02-03 07:19:33', '2022-02-09 04:32:43'),
(389, 57, 43, '200.00', 'aci-pure-turmeric-powder', 'এসিআই পিওর গুঁড়া হলুদ', '95.00', NULL, 1, 0, 1, '164388017161fb9eebf2734.jpg', NULL, 'general', NULL, 'IC--000389', '2022-02-03 07:22:52', '2022-02-09 04:32:29'),
(390, 57, 43, '500.00', 'aci-pure-turmeric-powder', 'এসিআই পিওর গুঁড়া হলুদ', '500.00', NULL, 1, 0, 1, '164388022361fb9f1fd4318.jpg', NULL, 'general', NULL, 'IC--000390', '2022-02-03 07:23:43', '2022-02-09 04:32:15'),
(391, 57, 43, '50.00', 'aci-pure-powdered-chilli', 'এসিআই পিওর গুঁড়া মরিচ', '30.00', NULL, 1, 0, 1, '164388052461fba04c0e973.jpg', NULL, 'general', NULL, 'IC--000391', '2022-02-03 07:28:44', '2022-02-09 04:32:00'),
(392, 57, 43, '100.00', 'aci-pure-powdered-chilli', 'এসিআই পিওর গুঁড়া মরিচ', '53.00', NULL, 1, 0, 1, '164388059661fba094637b2.jpg', NULL, 'general', NULL, 'IC--000392', '2022-02-03 07:29:56', '2022-02-09 04:31:47'),
(393, 57, 43, '200.00', 'aci-pure-powdered-chilli', 'এসিআই পিওর গুঁড়া মরিচ', '100.00', NULL, 1, 0, 1, '164388064761fba0c794697.jpg', NULL, 'general', NULL, 'IC--000393', '2022-02-03 07:30:47', '2022-02-09 04:31:35'),
(394, 57, 43, '500.00', 'aci-pure-powdered-chilli', 'এসিআই পিওর গুঁড়া মরিচ', '245.00', NULL, 1, 0, 1, '164388069061fba0f20bc79.jpg', NULL, 'general', NULL, 'IC--000394', '2022-02-03 07:31:30', '2022-02-09 04:31:22'),
(395, 57, 43, '50.00', 'aci-pure-coriander', 'এসিআই পিওর গুঁড়া ধনিয়া', '20.00', NULL, 1, 0, 1, '164388086161fba19d37635.jpg', NULL, 'general', NULL, 'IC--000395', '2022-02-03 07:34:21', '2022-02-09 04:31:06'),
(396, 57, 43, '200.00', 'aci-pure-coriander-zira-gura-', 'এসিআই পিওর গুঁড়া ধনিয়া-জার', '75.00', NULL, 1, 0, 1, '16443863786203584aac6e7.jpg', NULL, 'general', NULL, 'IC--000396', '2022-02-03 07:38:06', '2022-02-09 04:30:37'),
(398, 57, 43, '100.00', 'aci-pure-coriander-jar-zira-gura-', 'এসিআই পিওর গুঁড়া ধনিয়া', '35.00', NULL, 1, 0, 1, '164438635562035833a9c97.jpg', NULL, 'general', NULL, 'IC--000398', '2022-02-03 07:44:00', '2022-02-09 04:30:22'),
(399, 57, 43, '50.00', 'aci-pure-cumin-powder-zira-gura-', 'এসিআই পিওর গুঁড়া জিরা', '43.00', NULL, 1, 0, 1, '164388167061fba4c6b344c.png', NULL, 'general', NULL, 'IC--000399', '2022-02-03 07:47:50', '2022-02-09 04:30:11'),
(400, 57, 43, '100.00', 'aci-pure-cumin-zira-gura-', 'এসিআই পিওর গুঁড়া জিরা', '82.00', NULL, 1, 0, 1, '164388178161fba5358e3b1.png', NULL, 'general', NULL, 'IC--000400', '2022-02-03 07:49:41', '2022-02-09 04:29:57'),
(401, 57, 43, '200.00', 'aci-pure-cumin-jar-zira-gura-', 'এসিআই পিওর গুঁড়া জিরা জার', '170.00', NULL, 1, 0, 1, '164388206561fba651b5ec7.jpg', NULL, 'general', NULL, 'IC--000401', '2022-02-03 07:54:25', '2022-02-09 04:29:30'),
(403, 57, 43, '100.00', 'pure-meat-curry-masala', 'পিওর মাংসের মশলা', '65.00', NULL, 1, 0, 1, '164388989961fbc4eb08086.jpg', NULL, 'general', NULL, 'IC--000403', '2022-02-03 10:04:59', '2022-02-12 09:18:17'),
(404, 57, 43, '20.00', 'pure-chicken-curry-masala', 'এসিআই পিওর মুরগীর মাংসের মশলা', '15.00', NULL, 1, 0, 1, '164389001361fbc55d640b5.jpg', NULL, 'general', NULL, 'IC--000404', '2022-02-03 10:06:53', '2022-02-09 06:35:23'),
(405, 57, 43, '20.00', 'pure-beef-curry-masala', 'এসিআই পিওর গরুর মাংসের মশলা', '18.00', NULL, 1, 0, 1, '164432468962026751818c6.jpg', NULL, 'general', NULL, 'IC--000405', '2022-02-03 10:09:36', '2022-02-09 06:34:35'),
(406, 57, 43, '20.00', 'pure-fish-curry', 'এসিআই  মাছের মশলা', '10.00', NULL, 1, 0, 1, '164389030161fbc67dece7d.jpg', NULL, 'general', NULL, 'IC--000406', '2022-02-03 10:11:42', '2022-02-09 06:36:27'),
(409, 57, 43, '50.00', 'chotpoti-masala', 'এসিআই পিওর চটপটি মশলা', '40.00', NULL, 1, 0, 1, '164406234261fe668679bee.jpg', NULL, 'general', NULL, 'IC--000409', '2022-02-05 09:59:02', '2022-02-09 04:28:28'),
(410, 57, 43, '50.00', 'pachforon', 'পাঁচফোড়ন', '22.00', NULL, 1, 0, 1, '164406339361fe6aa1a1eeb.jpg', NULL, 'general', NULL, 'IC--000410', '2022-02-05 10:16:33', '2022-02-09 04:28:11'),
(411, 57, 43, '200.00', 'fun-fresh-fry', 'এসিআই ফান ফ্রেশ ফ্রাই', '40.00', NULL, 1, 0, 1, '164406356361fe6b4b62b55.PNG', NULL, 'general', NULL, 'IC--000411', '2022-02-05 10:19:23', '2022-02-09 04:27:59'),
(412, 57, 43, '45.00', 'tehari-masala', 'তেহারি মশলা', '45.00', NULL, 1, 0, 1, '164406358661fe6b6260198.jpg', NULL, 'general', NULL, 'IC--000412', '2022-02-05 10:19:46', '2022-02-09 04:27:45'),
(413, 57, 43, '65.00', 'aci-pure-mezbani-masala', 'এসিআই পিওর মেজবানি মশলা', '70.00', NULL, 1, 0, 1, '164406372861fe6bf06605e.jpg', NULL, 'general', NULL, 'IC--000413', '2022-02-05 10:22:08', '2022-02-09 04:27:31'),
(414, 57, 43, '50.00', 'aci-kabab-masala', 'কাবাব মশলা', '90.00', NULL, 1, 0, 1, '164406380861fe6c40928f7.jpg', NULL, 'general', NULL, 'IC--000414', '2022-02-05 10:23:28', '2022-02-09 04:27:15'),
(415, 49, 43, '14.00', 'fun-cup-cake-butter-', 'এসিআই ফান কাপ কেক', '5.00', NULL, 1, 0, 1, '164406387361fe6c812b7da.jpg', NULL, 'general', NULL, 'IC--000415', '2022-02-05 10:24:33', '2022-02-12 09:15:23'),
(416, 57, 43, '15.00', 'pure-garam-masala', 'এসিআই পিওর গরম মশলা', '26.00', NULL, 1, 0, 1, '164406393361fe6cbd11cda.jpg', NULL, 'general', NULL, 'IC--000416', '2022-02-05 10:25:33', '2022-02-09 04:26:18'),
(417, 57, 43, '150.00', 'pure-kheer-mix', 'এসিআই পিওর ক্ষীর মিক্স', '40.00', NULL, 1, 0, 1, '164406410861fe6d6cd8126.jpg', NULL, 'general', NULL, 'IC--000417', '2022-02-05 10:28:28', '2022-02-09 04:26:01'),
(418, 57, 43, '400.00', 'pure-mango-pickle', 'এসিআই পিওর আমের আচার', '135.00', NULL, 1, 0, 1, '164406415261fe6d984953c.jpg', NULL, 'general', NULL, 'IC--000418', '2022-02-05 10:29:12', '2022-02-09 04:15:23'),
(419, 57, 43, '200.00', 'pure-halim-mix', 'এসিআই হালিম মিক্স', '55.00', NULL, 1, 0, 1, '164406418361fe6db7db9b4.jpeg', NULL, 'general', NULL, 'IC--000419', '2022-02-05 10:29:43', '2022-02-09 04:15:02'),
(421, 33, 43, '150.00', 'thai-noodles-chili-chicken', NULL, '35.00', NULL, 1, 0, 1, '164406445661fe6ec840dcc.jpg', NULL, 'general', NULL, 'IC--000421', '2022-02-05 10:34:16', '2022-02-05 10:34:16'),
(422, 58, 46, '200.00', 'pure-mustard-oil', NULL, '72.00', NULL, 1, 0, 1, '164406452761fe6f0f9af04.jpeg', NULL, 'general', NULL, 'IC--000422', '2022-02-05 10:35:27', '2022-02-05 10:35:27'),
(423, 58, 46, '250.00', 'pure-mustard-oil', NULL, '80.00', NULL, 1, 0, 1, '164406460361fe6f5bad75e.jpeg', NULL, 'general', NULL, 'IC--000423', '2022-02-05 10:36:43', '2022-02-09 03:54:18'),
(424, 58, 46, '500.00', 'pure-mustard-oil', NULL, '150.00', NULL, 1, 0, 1, '164406467661fe6fa4f10a4.jpg', NULL, 'general', NULL, 'IC--000424', '2022-02-05 10:37:57', '2022-02-05 10:37:57'),
(425, 56, 41, '1.00', 'pure-aromatic-rice', NULL, '130.00', NULL, 1, 0, 1, '164406478761fe701346c54.jpg', NULL, 'general', NULL, 'IC--000425', '2022-02-05 10:39:47', '2022-02-05 10:39:47'),
(426, 56, 41, '1.00', 'gold-aromatic-rice', NULL, '130.00', NULL, 1, 0, 1, '164406505261fe711c7dc28.jpg', NULL, 'general', NULL, 'IC--000426', '2022-02-05 10:44:12', '2022-02-05 10:44:12'),
(427, 33, 43, '150.00', 'aci-pure-thai-noodles-hot-spicy', NULL, '35.00', NULL, 1, 0, 1, '164438698062035aa4276d9.jpg', NULL, 'general', NULL, 'IC--000427', '2022-02-09 04:09:40', '2022-02-09 04:09:40'),
(429, 113, 43, '125.00', 'aci-savlon-active-antiseptic-soap', 'এ সি আই স্যাভলন একটিভ এনটিসেপটিক সাবান', '60.00', NULL, 1, 0, 1, '16444819566204cda49f2bd.jpg', NULL, 'general', NULL, 'IC--000429', '2022-02-10 06:32:36', '2022-02-10 06:48:22'),
(430, 8, 46, '1000.00', 'aci-savlon-liquid-antiseptic', 'এসিআই স্যাভলন লিকুইড অ্যান্টিসেপ্টিক', '220.00', NULL, 1, 0, 1, '16444821676204ce77cbd2b.jpeg', NULL, 'general', NULL, 'IC--000430', '2022-02-10 06:36:07', '2022-02-10 06:36:07'),
(431, 8, 46, '500.00', 'aci-savlon-liquid-antiseptic', 'এসিআই স্যাভলন লিকুইড অ্যান্টিসেপ্টিক', '125.00', NULL, 1, 0, 1, '16444823186204cf0e84747.jpeg', NULL, 'general', NULL, 'IC--000431', '2022-02-10 06:38:38', '2022-02-10 06:38:38'),
(432, 114, 43, '125.00', 'wheel-laundry-soap', 'হুইল লন্ড্রি সাবান', '22.00', NULL, 1, 0, 1, '16444830746204d2026af7e.webp', NULL, 'general', NULL, 'IC--000432', '2022-02-10 06:51:14', '2022-02-10 06:51:14'),
(433, 115, 41, '2.00', 'wheel-powder-clean-fresh', 'হুইল পাউডার ক্লিন এ্যান্ড ফ্রেশ', '220.00', NULL, 1, 0, 1, '16444937866204fbda0a2d2.jpg', NULL, 'general', NULL, 'IC--000433', '2022-02-10 09:42:10', '2022-02-10 09:49:46'),
(434, 115, 41, '1.00', 'wheel-powder-clean-fresh', 'হুইল পাউডার ক্লিন এ্যান্ড ফ্রেশ', '105.00', NULL, 1, 0, 1, '16444936186204fb321e209.jpg', NULL, 'general', NULL, 'IC--000434', '2022-02-10 09:45:02', '2022-02-10 09:46:58'),
(435, 115, 43, '500.00', 'wheel-powder-clean-fresh', 'হুইল পাউডার ক্লিন এ্যান্ড ফ্রেশ', '52.00', NULL, 1, 0, 1, '16444936996204fb8355976.jpg', NULL, 'general', NULL, 'IC--000435', '2022-02-10 09:46:34', '2022-02-10 09:48:19'),
(436, 115, 46, '400.00', 'rin-liquid', 'রিন লিকুইড', '65.00', NULL, 1, 0, 1, '16444941426204fd3ec2216.jpg', NULL, 'general', NULL, 'IC--000436', '2022-02-10 09:55:42', '2022-02-10 09:55:42'),
(437, 115, 43, '500.00', 'rin-standard-powder', 'রিন স্ট্যান্ডার্ড পাউডার', '70.00', NULL, 1, 0, 1, '16444943176204fded93d6d.jpeg', NULL, 'general', NULL, 'IC--000437', '2022-02-10 09:58:37', '2022-02-10 09:58:37'),
(438, 115, 41, '1.00', 'rin-standard-powder', 'রিন স্ট্যান্ডার্ড পাউডার', '135.00', NULL, 1, 0, 1, '16444943616204fe1921076.jpeg', NULL, 'general', NULL, 'IC--000438', '2022-02-10 09:59:21', '2022-02-10 09:59:21'),
(439, 74, 47, '5.00', 'lifebuoy-liquid-handwash', 'লাইফবয় লিকুইড হ্যান্ডওয়াশ', '1100.00', NULL, 1, 0, 1, '16444943676204fe1fe4454.jpg', NULL, 'general', NULL, 'IC--000439', '2022-02-10 09:59:27', '2022-02-10 09:59:27'),
(440, 115, 43, '200.00', 'surf-excel-standard-powder', 'সার্ফ এক্সেল স্ট্যান্ডার্ড পাউডার', '40.00', NULL, 1, 0, 1, '16444945176204feb5bf6a9.jpg', NULL, 'general', NULL, 'IC--000440', '2022-02-10 10:01:57', '2022-02-10 10:01:57'),
(441, 115, 41, '1.00', 'surf-excel-standard-powder', 'সার্ফ এক্সেল স্ট্যান্ডার্ড পাউডার', '210.00', NULL, 1, 0, 1, '16444947436204ff9758852.jpg', NULL, 'general', NULL, 'IC--000441', '2022-02-10 10:05:43', '2022-02-10 10:05:43'),
(442, 115, 46, '500.00', 'surf-exce-quick-qash-liquid', 'সার্ফ এক্সেল কুইক ওয়াশিং লিকুইড', '160.00', NULL, 1, 0, 1, '1644494870620500161dea0.jpg', NULL, 'general', NULL, 'IC--000442', '2022-02-10 10:07:50', '2022-02-10 10:07:50'),
(443, 115, 43, '500.00', 'surf-excel-standard-powder', 'সার্ফ এক্সেল স্ট্যান্ডার্ড পাউডার', '105.00', NULL, 1, 0, 1, '16444949616205007111385.jpg', NULL, 'general', NULL, 'IC--000443', '2022-02-10 10:09:21', '2022-02-10 10:09:45'),
(444, 115, 43, '50.00', 'surf-excel-standard-powder', 'সার্ফ এক্সেল স্ট্যান্ডার্ড পাউডার', '10.00', NULL, 1, 0, 1, '1644495036620500bc09bf1.jpg', NULL, 'general', NULL, 'IC--000444', '2022-02-10 10:10:36', '2022-02-10 10:10:36'),
(445, 74, 46, '100.00', 'lifebuoy-liquid-handwash-lemon', 'লাইফবয় লিকুইড হ্যান্ডওয়াশ লেমন', '35.00', NULL, 1, 0, 1, '1644495300620501c47af35.jpg', NULL, 'general', NULL, 'IC--000445', '2022-02-10 10:15:00', '2022-02-10 10:15:00'),
(446, 74, 46, '480.00', 'lifebuoy-liquid-handwash', 'লাইফবয় লিকুইড হ্যান্ডওয়াশ', '175.00', NULL, 1, 0, 1, '16444953866205021a4632f.jpg', NULL, 'general', NULL, 'IC--000446', '2022-02-10 10:16:26', '2022-02-10 10:16:26'),
(447, 74, 46, '170.00', 'lifebuoy-liquid-handwash-cool-fresh', 'লাইফবয় লিকুইড হ্যান্ডওয়াশ কুল ফ্রেশ', '60.00', NULL, 1, 0, 1, '1644495612620502fc850dd.png', NULL, 'general', NULL, 'IC--000447', '2022-02-10 10:20:12', '2022-02-10 10:20:12'),
(448, 113, 43, '30.00', 'lifebuoy-bar-lemon-fresh', 'লাইফবয় বার লেমন ফ্রেশ', '10.00', NULL, 1, 0, 1, '164449575162050387d9564.webp', NULL, 'general', NULL, 'IC--000448', '2022-02-10 10:22:32', '2022-02-10 10:22:32'),
(449, 113, 43, '150.00', 'lifebuoy-bar-care', 'লাইফবয় স্কিন বার কেয়ার', '55.00', NULL, 1, 0, 1, '1644496086620504d63fbd2.jpg', NULL, 'general', NULL, 'IC--000449', '2022-02-10 10:28:06', '2022-02-10 10:28:54'),
(450, 113, 43, '100.00', 'lifebuoy-skin-bar', 'লাইফবয় স্কিন বার', '38.00', NULL, 1, 0, 1, '164449623162050567c8053.jpg', NULL, 'general', NULL, 'IC--000450', '2022-02-10 10:30:31', '2022-02-10 10:30:31'),
(451, 113, 43, '100.00', 'lifebuoy-skin-bar-care', 'লাইফবয় স্কিন বার কেয়ার', '38.00', NULL, 1, 0, 1, '1644496328620505c813669.jpg', NULL, 'general', NULL, 'IC--000451', '2022-02-10 10:32:08', '2022-02-10 10:32:08'),
(452, 113, 43, '150.00', 'lifebuoy-skin-bar', 'লাইফবয় স্কিন সাবান', '55.00', NULL, 1, 0, 1, '1644496351620505df88eff.jpeg', NULL, 'general', NULL, 'IC--000452', '2022-02-10 10:32:31', '2022-02-10 10:32:31'),
(453, 113, 43, '100.00', 'lux-bar-camelia-and-aloe-vera', 'লাক্স বার কেমেলিয়া এন্ড এলভেরা', '40.00', NULL, 1, 0, 1, '1644496562620506b294409.jpg', NULL, 'general', NULL, 'IC--000453', '2022-02-10 10:36:02', '2022-02-10 10:36:02'),
(454, 113, 43, '50.00', 'dove-skin-cleansing-bar', 'ডাভ স্কিন ক্লিনজিং বার হোয়াইট', '50.00', NULL, 1, 0, 1, '16446569586207793e98e4a.jpg', NULL, 'general', NULL, 'IC--000454', '2022-02-12 07:09:19', '2022-02-12 07:09:19'),
(455, 113, 43, '100.00', 'dove-skin-cleansing-bar-pink', 'ডাভ স্কিন ক্লিনজিং বার হোয়াইট পিঙ্ক', '95.00', NULL, 1, 0, 1, '1644657075620779b3dafe6.jpg', NULL, 'general', NULL, 'IC--000455', '2022-02-12 07:11:15', '2022-02-12 07:11:15'),
(456, 113, 43, '100.00', 'dove-skin-cleansing-bar-white', 'ডাভ স্কিন ক্লিনজিং বার হোয়াইট', '95.00', NULL, 1, 0, 1, '164465717762077a19b888d.jpg', NULL, 'general', NULL, 'IC--000456', '2022-02-12 07:12:57', '2022-02-12 07:12:57'),
(457, 113, 43, '135.00', 'dove-skin-cleansing-bar-pink', 'ডাভ স্কিন ক্লিনজিং বার হোয়াইট পিঙ্ক', '125.00', NULL, 1, 0, 1, '164465723662077a540951f.jpg', NULL, 'general', NULL, 'IC--000457', '2022-02-12 07:13:56', '2022-02-12 07:13:56'),
(458, 113, 43, '100.00', 'glow-and-lovely-bar-multivitamin', 'গ্লো অ্যান্ড লাভলি সোপ বার মাল্টিভিটামিন', '40.00', NULL, 1, 0, 1, '164465766362077bff38f16.jpg', NULL, 'general', NULL, 'IC--000458', '2022-02-12 07:21:03', '2022-02-12 07:21:03'),
(459, 113, 43, '100.00', 'glow-lovely-bar-multani-mati', 'গ্লো অ্যান্ড লাভলি সোপ বার মুলতানি মাটি', '40.00', NULL, 1, 0, 1, '164465786262077cc66d62a.jpg', NULL, 'general', NULL, 'IC--000459', '2022-02-12 07:24:22', '2022-02-12 07:24:22'),
(460, 88, 43, '125.00', 'vim-bar-ice-hockey', 'ভিম বার আইস হকি', '15.00', NULL, 1, 0, 1, '1644659049620781699b815.jpg', NULL, 'general', NULL, 'IC--000460', '2022-02-12 07:44:09', '2022-02-12 07:46:52'),
(461, 88, 43, '300.00', 'vim-bar-ice-hockey', 'ভিম বার আইস হকি', '35.00', NULL, 1, 0, 1, '1644659145620781c9cba98.jpg', NULL, 'general', NULL, 'IC--000461', '2022-02-12 07:45:45', '2022-02-12 07:45:45'),
(462, 116, 43, '200.00', 'brooke-bond-taaza-black-tea', 'ব্রুক বন্ড তাজা ব্ল্যাক টি', '100.00', NULL, 1, 0, 1, '16446600916207857b1e001.png', NULL, 'general', NULL, 'IC--000462', '2022-02-12 08:01:31', '2022-02-12 08:01:31'),
(463, 116, 43, '400.00', 'brooke-bond-taaza-black-tea', 'ব্রুক বন্ড তাজা ব্ল্যাক টি', '199.00', NULL, 1, 0, 1, '1644660131620785a3af95c.png', NULL, 'general', NULL, 'IC--000463', '2022-02-12 08:02:11', '2022-02-12 08:02:11'),
(464, 116, 44, '1.00', 'brooke-bond-taaza-tea-bag', 'ব্রুক বন্ড তাজা ব্ল্যাক টি ব্যাগস', '85.00', NULL, 1, 0, 1, '1644660422620786c6cb641.jpg', NULL, 'general', NULL, 'IC--000464', '2022-02-12 08:07:02', '2022-02-12 08:07:02'),
(465, 34, 43, '31.00', 'knorr-hot-and-sour-chicken-soup', 'নর হট এন্ড সৌর চিকেন স্যুপ', '40.00', NULL, 1, 0, 1, '16446608076207884716dcd.png', NULL, 'general', NULL, 'IC--000465', '2022-02-12 08:13:27', '2022-02-12 08:13:27'),
(466, 34, 43, '12.00', 'knorr-instant-cup-thai-soup', 'নর ইনিস্টেন্ট কাপ থাই স্যুপ', '20.00', NULL, 1, 0, 1, '1644661201620789d1c052e.webp', NULL, 'general', NULL, 'IC--000466', '2022-02-12 08:20:01', '2022-02-12 08:20:01'),
(467, 34, 43, '28.00', 'knorr-soup-thai', 'নর স্যুপ থাই', '40.00', NULL, 1, 0, 1, '164466129262078a2c75d37.webp', NULL, 'general', NULL, 'IC--000467', '2022-02-12 08:21:32', '2022-02-12 08:21:32'),
(468, 57, 43, '75.00', 'knorr-crispy-fried-chicken-mix', 'নর ক্রিস্পি ফ্রাইড চিকেন মিক্স', '70.00', NULL, 1, 0, 1, '164466157962078b4b346c5.jpg', NULL, 'general', NULL, 'IC--000468', '2022-02-12 08:26:19', '2022-02-12 08:26:19'),
(469, 117, 46, '180.00', 'sunsilk-shampoo-hijab-recharge', 'সানসিল্ক শ্যাম্পু হিজাব রিচার্জ', '215.00', NULL, 1, 0, 1, '164466188662078c7e9f8be.jpg', NULL, 'general', NULL, 'IC--000469', '2022-02-12 08:31:26', '2022-02-12 08:31:26'),
(470, 117, 46, '180.00', 'sunsilk-shampoo-stunning-black-shine', 'সানসিল্ক শ্যাম্পু স্টানিং ব্ল্যাক শাইন', '195.00', NULL, 1, 0, 1, '164466207362078d396fbdd.jpg', NULL, 'general', NULL, 'IC--000470', '2022-02-12 08:34:33', '2022-02-12 08:34:33'),
(471, 117, 46, '180.00', 'clear-hijab-anti-limp-shampoo', 'ক্লিয়ার হিজাব অ্যান্টি লিম্প শ্যাম্পু', '210.00', NULL, 1, 0, 1, '164466249362078edd80987.jpg', NULL, 'general', NULL, 'IC--000471', '2022-02-12 08:41:33', '2022-02-12 08:41:33'),
(472, 90, 46, '145.00', 'closeup-toothpaste-cool-mint', 'ক্লোজআপ টুথপেস্ট কুল মিন্ট', '120.00', NULL, 1, 0, 1, '1644662803620790137ab70.jpg', NULL, 'general', NULL, 'IC--000472', '2022-02-12 08:45:56', '2022-02-12 08:46:43'),
(473, 90, 43, '140.00', 'pepsodent-sensitive-expert-professional', 'পেপসোডেন্ট টুথপেস্ট সেন্সিটিভ এক্সপার্ট প্রোফেশনাল', '180.00', NULL, 1, 0, 1, '1644663758620793cee1177.png', NULL, 'general', NULL, 'IC--000473', '2022-02-12 09:02:39', '2022-02-28 10:40:25'),
(475, 4, 41, '5.00', 'potato', NULL, '100.00', NULL, 1, 0, 1, 'default.png', 'default_banner.png', 'offer', NULL, 'IC--000475', '2022-02-13 04:27:13', '2022-02-13 04:27:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `stock_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `stock_quantity`, `created_at`, `updated_at`) VALUES
(1, 5, '113', '2022-02-24 01:34:50', '2022-02-24 01:34:50'),
(2, 6, '30', '2022-02-24 01:35:29', '2022-02-24 01:35:29'),
(3, 11, '60', '2022-02-24 01:35:41', '2022-02-24 01:35:41'),
(4, 15, '111', '2022-02-24 01:35:55', '2022-02-24 01:35:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `description`, `created_at`, `updated_at`) VALUES
(5, 5, 'English', 'Bourn Vita', '<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lor</p>', '2021-10-18 03:10:59', '2021-10-18 03:10:59'),
(6, 6, 'English', 'Jam', '<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lor</p>', '2021-10-18 03:11:28', '2021-10-18 03:11:28'),
(11, 11, 'English', 'ACI Savlon Baby Wipes', '<p>ACI Savlon Baby Wipes</p>', '2021-10-18 03:44:01', '2021-10-18 03:44:01'),
(15, 15, 'English', 'Eno Fruit Salt Powder - Regular Flavour (Pack of 30 x 5 gm)', '<h6>Eno Fruit Salt Powder - Regular Flavour (Pack of 30 x 5 gm)</h6>\r\n<p> </p>', '2021-10-18 04:22:04', '2021-10-18 04:22:04'),
(16, 16, 'English', 'Moov Pain Relief Specialist Cream', '<h6>Moov Pain Relief Specialist Cream</h6>\r\n<h6>Moov Pain Relief Specialist Cream</h6>\r\n<h6>Moov Pain Relief Specialist Cream</h6>\r\n<p> </p>', '2021-10-18 04:23:01', '2021-10-18 04:23:01'),
(17, 17, 'English', 'Godrej Aer Fresh Green Room Spray', '<h6>Godrej Aer Fresh Green Room Spray</h6>\r\n<p> </p>', '2021-10-18 04:25:08', '2021-10-18 04:25:08'),
(18, 18, 'English', 'Harpic Toilet Cleaning Liquid Original', '<h6>Harpic Toilet Cleaning Liquid Original</h6>\r\n<p> </p>', '2021-10-18 04:25:44', '2021-10-18 04:25:44'),
(19, 19, 'English', 'Mr.Brasso Glass & Household Cleaner Spray', '<h6>Mr.Brasso Glass &amp; Household Cleaner Spray</h6>\r\n<p> </p>', '2021-10-18 04:26:17', '2021-10-18 04:26:17'),
(20, 20, 'English', 'Deli Business Card Holder(E5798)', '<h6>Deli Business Card Holder(E5798)</h6>\r\n<p> </p>', '2021-10-18 04:28:02', '2021-10-18 04:28:02'),
(21, 22, 'English', 'Deli Punch', '<h6>Deli Punch</h6>\r\n<p> </p>', '2021-10-18 04:29:14', '2021-10-18 04:29:14'),
(22, 23, 'English', 'Deli Versatile Pen Stand', '<h6>Deli Versatile Pen Stand</h6>\r\n<p> </p>', '2021-10-18 04:29:43', '2021-10-18 04:29:43'),
(23, 24, 'English', 'Foster Clark\'s Cherry Jelly', '', '2021-10-18 06:00:07', '2021-10-18 06:00:07'),
(24, 25, 'English', 'Nutella Hazelnut Cocoa Spread', '', '2021-10-18 06:00:36', '2021-10-18 06:00:36'),
(25, 26, 'English', 'Vitalia Sugar Free Corn Flakes', '', '2021-10-18 06:01:24', '2021-10-18 06:01:24'),
(29, 30, 'English', 'Pozzy Baby Wet Towel Wipes', '', '2021-10-18 06:06:24', '2021-10-18 06:06:24'),
(30, 31, 'English', 'Parachute Just For Baby - Baby Soap', '', '2021-10-18 06:06:57', '2021-10-18 06:06:57'),
(31, 32, 'English', 'Johnson\'s Baby Shampoo', '', '2021-10-18 06:07:43', '2021-10-18 06:07:43'),
(34, 35, 'English', 'Kelly\'s Leather Care', '', '2021-10-18 06:12:42', '2021-10-18 06:12:42'),
(35, 36, 'English', 'Odonil Air Freshener Block Jasmine Mist', '', '2021-10-18 06:13:10', '2021-10-18 06:13:10'),
(36, 37, 'English', 'Vicks Vaporub', '', '2021-10-18 06:15:05', '2021-10-18 06:15:05'),
(37, 38, 'English', 'Ensure Diabetes Care Powder - Vanilla Flavour', '', '2021-10-18 06:15:34', '2021-10-18 06:15:34'),
(38, 39, 'English', 'Kangaro Pin Remover', '', '2021-10-18 06:16:51', '2021-10-18 06:16:51'),
(39, 40, 'English', 'Double A Legal Size (80 GSM)', '', '2021-10-18 06:17:37', '2021-10-18 06:17:37'),
(40, 41, 'English', 'Skore Notout Climax Delay with 1500 Plus Raised Dots 10\'s', '<p>Skore Notout Climax Delay with 1500 Plus Raised Dots 10\'s</p>', '2021-10-18 06:19:11', '2021-10-25 08:34:08'),
(41, 42, 'English', 'Fexona-120mg Tablet', '', '2021-11-17 01:31:10', '2021-11-17 01:31:10'),
(42, 43, 'English', 'Axe Brand 28ml', '<p >\r\n<div style=\"box-sizing: border-box; color: #495057; font-family: nunito, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">The Main use of AXE Brand Universal Oil is for quick relief of cold, headache, and pain. Our online shop sells it at a low price in Bangladesh.</p>\r\n<div id=\"sign-in\" style=\"box-sizing: border-box; display: block;\">\r\n<h2 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: inherit; font-weight: 600; line-height: 1.3; color: #343a40; font-size: 1.75rem;\">AXE Brand Universal Oil</h2>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">The oil is handy medicine for the home. It has been started its journey in 1928. The founder is Leung Yun Chee. He emigrated from China to Singapore. Axe Universal Oil is made from a unique formula and has been used throughout the world for over 80 years. It is pure in color, pleasant in odor. More</p>\r\n<h4 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: inherit; font-weight: 600; line-height: 1.3; color: #343a40; font-size: 1.3125rem;\">HOW TO USE</h4>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">Apply a few drops to the affected area and massage gently. For stuffy nose: Apply 2-3 drops to a handkerchief or tissue paper and inhale deeply.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">For relief of flatulence and stomach discomfort: Apply the oil to the navel region and cover with a hot towel. Repeat the hot towel application whenever necessary.</p>\r\n<h5 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: inherit; font-weight: 600; line-height: 1.3; color: #343a40; font-size: 1.09375rem;\">Side Effects</h5>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">There are some disadvantages. It is better to not use it during pregnancy time. </p>\r\n<h4 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-family: inherit; font-weight: 600; line-height: 1.3; color: #343a40; font-size: 1.3125rem;\">Benefits</h4>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">It relief different kinds of pain in the body. These are:</p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">\r\n<li style=\"box-sizing: border-box;\">Headache</li>\r\n<li style=\"box-sizing: border-box;\">Giddiness</li>\r\n<li style=\"box-sizing: border-box;\">Insect bites</li>\r\n<li style=\"box-sizing: border-box;\">Blocked nose and cold</li>\r\n<li style=\"box-sizing: border-box;\">Stomach-ache</li>\r\n<li style=\"box-sizing: border-box;\">Rheumatic pain and</li>\r\n<li style=\"box-sizing: border-box;\">Muscular pain</li>\r\n</ul>\r\n</div>\r\n</div>', '2021-11-17 01:42:28', '2021-11-17 01:42:28'),
(44, 45, 'English', 'Eggs', '', '2021-12-27 09:22:41', '2021-12-27 09:22:41'),
(54, 56, 'English', 'Cocola Egg Noodles', '<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: #333333; font-size: 14px; font-family: \'segoe ui\', Helvetica, \'droid sans\', Arial, \'lucida grande\', tahoma, verdana, arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\" data-reactid=\".231jk0fu2n0.8.2.0.0.0.0.2.5.1.0:$p7454.4.0.1.0.1.4.$line-0\">Origin: Bangladesh</p>\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: #333333; font-size: 14px; font-family: \'segoe ui\', Helvetica, \'droid sans\', Arial, \'lucida grande\', tahoma, verdana, arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\" data-reactid=\".231jk0fu2n0.8.2.0.0.0.0.2.5.1.0:$p7454.4.0.1.0.1.4.$line-1\">Manufacturer: Cocola food products Ltd.</p>\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: #333333; font-size: 14px; font-family: \'segoe ui\', Helvetica, \'droid sans\', Arial, \'lucida grande\', tahoma, verdana, arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\" data-reactid=\".231jk0fu2n0.8.2.0.0.0.0.2.5.1.0:$p7454.4.0.1.0.1.4.$line-2\">Protein, calcium, iodine and vitamin enriched egg noodles.</p>\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: #333333; font-size: 14px; font-family: \'segoe ui\', Helvetica, \'droid sans\', Arial, \'lucida grande\', tahoma, verdana, arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\" data-reactid=\".231jk0fu2n0.8.2.0.0.0.0.2.5.1.0:$p7454.4.0.1.0.1.4.$line-3\">Ingredients: Noodles: Spices, iodized salt, water</p>\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: #333333; font-size: 14px; font-family: \'segoe ui\', Helvetica, \'droid sans\', Arial, \'lucida grande\', tahoma, verdana, arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\" data-reactid=\".231jk0fu2n0.8.2.0.0.0.0.2.5.1.0:$p7454.4.0.1.0.1.4.$line-4\">Masala: Iodized salt, tasting salt, corn starch, chicken powder, sugar, egg powder, chili powder, tapioca starch, citric acid.</p>\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: #333333; font-size: 14px; font-family: \'segoe ui\', Helvetica, \'droid sans\', Arial, \'lucida grande\', tahoma, verdana, arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\" data-reactid=\".231jk0fu2n0.8.2.0.0.0.0.2.5.1.0:$p7454.4.0.1.0.1.4.$line-5\">Nutrition: Minerals, fibre, calorie, protein, fat, carbohydrate, calcium, iron, carotene, vitamin B-1, vitamin B-2.</p>', '2022-01-18 07:13:59', '2022-01-18 07:13:59'),
(55, 57, 'English', 'Mr.Noodles Chicken Cup Noodles', '', '2022-01-18 07:16:38', '2022-01-18 07:16:38'),
(56, 58, 'English', 'Nestle Maggi 2-Minute Masala Instant Noodles', '<div class=\"details\" data-reactid=\".1pe5d158khu.8.2.0.0.0.0.2.5.1.0:$p3725.4.0.1.0.1.4\">\r\n<p data-reactid=\".1pe5d158khu.8.2.0.0.0.0.2.5.1.0:$p3725.4.0.1.0.1.4.$line-0\">MAGGI offers tasty and healthy snacks option for Bangladeshi families</p>\r\n<p data-reactid=\".1pe5d158khu.8.2.0.0.0.0.2.5.1.0:$p3725.4.0.1.0.1.4.$line-1\">Fortified with Vitamin A, Iron and Iodine.</p>\r\n<p data-reactid=\".1pe5d158khu.8.2.0.0.0.0.2.5.1.0:$p3725.4.0.1.0.1.4.$line-2\">The tastemaker is comprised of known ingredients typically found in Bangladeshi households, such as turmeric, pepper, coriander, ginger and cardamom.</p>\r\n<p data-reactid=\".1pe5d158khu.8.2.0.0.0.0.2.5.1.0:$p3725.4.0.1.0.1.4.$line-3\">To boost the goodness in your bowl, add colourful vegetables and lean protein such as chicken.</p>\r\n<p data-reactid=\".1pe5d158khu.8.2.0.0.0.0.2.5.1.0:$p3725.4.0.1.0.1.4.$line-4\">Contains noodle cake &amp; Tastemaker inside for a quick 2-minute preparation</p>\r\n<p data-reactid=\".1pe5d158khu.8.2.0.0.0.0.2.5.1.0:$p3725.4.0.1.0.1.4.$line-5\">Variant: Masala</p>\r\n<p data-reactid=\".1pe5d158khu.8.2.0.0.0.0.2.5.1.0:$p3725.4.0.1.0.1.4.$line-6\">Net Weight: 496g</p>\r\n<p data-reactid=\".1pe5d158khu.8.2.0.0.0.0.2.5.1.0:$p3725.4.0.1.0.1.4.$line-7\">Origin: Bangladesh</p>\r\n</div>', '2022-01-18 07:22:08', '2022-01-18 07:22:08'),
(57, 61, 'English', 'Teer Whole Wheat Flour (Atta)', '', '2022-01-20 07:25:37', '2022-01-20 07:25:37'),
(58, 62, 'English', 'Zero Cal Box 75 Sachets', '<p>Zerocal gives a rich taste to sweet beverages and desserts that does not become bitter afterwards, and its main ingredient, sucralose has no known side effects on health as tested in the last 20 years by over 100 scientific bodies and now has approval from apex regulatory bodies. For a single serving, the sachet is just made to order. There are three pack sizes – 25 sachets, 75 sachets and 150 sachets.Ingredients: Sucralose, Lactose, Colloidal silicon dioxide</p>', '2022-01-20 07:27:17', '2022-01-20 07:27:17'),
(59, 63, 'English', 'Bisk Club Sugar Free Cracker Biscuit', '', '2022-01-20 07:28:27', '2022-01-20 07:28:27'),
(60, 64, 'English', 'Quaker White Oats', '<p>Order 100% natural whole grain Quaker White Oats from chaldal. Mix it with milk to boost protein. So, buy the good food with affordable price. Net weight 500 gm.</p>', '2022-01-20 07:29:21', '2022-01-20 07:29:21'),
(61, 65, 'English', 'Zero Cal Sugar 100 Tablets', '<p>You can get Zerocal tablets in a pack of 100. The handy and compact pack size allows you to carry Zerocal wherever you go.Ingredients: Sucralose, Lactose, Colloidal silicon dioxide</p>', '2022-01-20 07:30:01', '2022-01-20 07:30:01'),
(62, 66, 'English', 'Quaker Oats Jar', '', '2022-01-20 07:31:26', '2022-01-20 07:31:26'),
(63, 67, 'English', 'Kishwan Sugar Free Biscuit', '', '2022-01-20 07:32:12', '2022-01-20 07:32:12'),
(64, 68, 'English', 'Splenda No Cal Sweetner', '', '2022-01-20 07:33:17', '2022-01-20 07:33:17'),
(65, 69, 'English', 'Jayson Mistin Herbal Sweetening Powder', '<div class=\"details\" data-reactid=\".1zpnvr9cfqe.8.2.0.0.0.0.2.5.1.0:$p24706.4.0.1.0.1.4\">\r\n<ul style=\"list-style-type: square;\">\r\n<li data-reactid=\".1zpnvr9cfqe.8.2.0.0.0.0.2.5.1.0:$p24706.4.0.1.0.1.4.$line-0\"><span style=\"color: #333333;\"> Low calorie Herbal Sweetening Agent, which tastes like sugar.</span></li>\r\n<li data-reactid=\".1zpnvr9cfqe.8.2.0.0.0.0.2.5.1.0:$p24706.4.0.1.0.1.4.$line-1\"><span style=\"color: #333333;\"> Suitable for diabetic patients and health conscious people.</span></li>\r\n<li data-reactid=\".1zpnvr9cfqe.8.2.0.0.0.0.2.5.1.0:$p24706.4.0.1.0.1.4.$line-2\"><span style=\"color: #333333;\">Can be used in Tea, Coffee, Fruit Juice, Sharbat, Desert etc.</span></li>\r\n<li data-reactid=\".1zpnvr9cfqe.8.2.0.0.0.0.2.5.1.0:$p24706.4.0.1.0.1.4.$line-3\"><span style=\"color: #333333;\">1 spoon of MISTIN is equal to 4 spoons of sugar</span></li>\r\n</ul>\r\n</div>', '2022-01-20 07:34:57', '2022-01-20 07:34:57'),
(66, 70, 'English', 'Discovery Organic A C Vinegar Ginger & Turmeric', '', '2022-01-20 07:37:16', '2022-01-20 07:37:16'),
(67, 71, 'English', 'Sugar Free Gold Powder', '', '2022-01-20 07:38:33', '2022-01-20 07:38:33'),
(68, 72, 'English', 'Foster Clark\'s Tiara White Oats Tin', '', '2022-01-20 07:39:07', '2022-01-20 07:39:07'),
(69, 73, 'English', 'Pran Sugar Free Orange Jelly', '', '2022-01-20 07:40:32', '2022-01-20 07:40:32'),
(70, 74, 'English', 'Stute Fine Cut Diabetic Orange Extra Marmalade', '', '2022-01-20 07:43:30', '2022-01-20 07:43:30'),
(71, 75, 'English', 'Kolson Laccha Shemai', '', '2022-01-20 07:45:47', '2022-01-20 07:45:47'),
(75, 79, 'English', 'Cock Chicken Skin Off ± 25 gm', '', '2022-01-23 08:27:03', '2022-01-23 08:27:03'),
(76, 80, 'English', 'Roast Chicken ± 10 gm', '', '2022-01-23 08:28:03', '2022-01-23 08:28:03'),
(77, 81, 'English', 'Beef Bone In ± 50 gm', '', '2022-01-23 08:29:03', '2022-01-23 08:29:03'),
(78, 82, 'English', 'Broiler Chicken Skin Off ± 50 gm', '', '2022-01-23 08:29:39', '2022-01-23 08:29:39'),
(79, 83, 'English', 'Broiler Chicken Skin On ± 50 gm', '', '2022-01-23 08:30:26', '2022-01-23 08:30:26'),
(80, 84, 'English', 'Bengal Meat Beef Bone In ± 50 gm', '<p>Premium quality locally sourced. Meat, such as beef, is mainly composed of protein. Usually eaten as roasts, ribs, or steaks, beef is also common ground or minced. Patties of ground beef are often used in hamburgers. Processed beef products include corned beef, beef jerky, and sausages. Fresh lean beef is rich in various vitamins and minerals, especially iron and zinc, and is therefore recommended as part of a healthy diet.</p>', '2022-01-23 08:31:28', '2022-01-23 08:31:28'),
(81, 85, 'English', 'Bengal Meat Whole Chicken Curry Cut ± 50 gm', '', '2022-01-23 08:32:14', '2022-01-23 08:32:14'),
(82, 86, 'English', 'Cow Liver ± 25 Gm', '', '2022-01-23 08:32:56', '2022-01-23 08:32:56'),
(83, 87, 'English', 'Whole Deshi Chicken Skin Off ± 25 gm', '<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p4419.4.0.1.0.1.4.$line-0\">Locally sourced, Whole Deshi Chicken Skin Off. Deshi Chicken has lots of benefits include</p>\r\n<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p4419.4.0.1.0.1.4.$line-1\"> </p>\r\n<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p4419.4.0.1.0.1.4.$line-2\">• it\'s good supply of protein content,</p>\r\n<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p4419.4.0.1.0.1.4.$line-3\">• the supply of essential vitamins and minerals,</p>\r\n<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p4419.4.0.1.0.1.4.$line-4\">• benefits in losing weight,</p>\r\n<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p4419.4.0.1.0.1.4.$line-5\">• cholesterol control,</p>\r\n<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p4419.4.0.1.0.1.4.$line-6\">• blood pressure control, and</p>\r\n<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p4419.4.0.1.0.1.4.$line-7\">• a reduced risk of cancer.</p>\r\n<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p4419.4.0.1.0.1.4.$line-8\"> </p>\r\n<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p4419.4.0.1.0.1.4.$line-9\">Net weight: 800 gm</p>\r\n<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p4419.4.0.1.0.1.4.$line-10\">100% fresh and healthy</p>', '2022-01-23 08:34:26', '2022-01-23 08:34:26'),
(84, 88, 'English', 'Country Natural Chicken Whole Leg with skin', '', '2022-01-23 08:35:37', '2022-01-23 08:35:37'),
(85, 89, 'English', 'Bengal Meat Beef T-Bone Steak', '', '2022-01-23 08:36:28', '2022-01-23 08:36:28'),
(86, 90, 'English', 'Pabda Fish ±30 gm', '', '2022-01-23 08:38:21', '2022-01-23 08:38:21'),
(87, 91, 'English', 'Kaski Fish ±15 gm', '', '2022-01-23 08:39:11', '2022-01-23 08:39:11'),
(88, 92, 'English', 'Bagda Chingri {Shrimp} 25-30 pcs ±30 gm', '<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p13670.4.0.1.0.1.4.$line-0\">Medium size Shrimp from the enclosure of Bangladesh.</p>\r\n<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p13670.4.0.1.0.1.4.$line-1\">Product Type: Medium size Shrimp</p>\r\n<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p13670.4.0.1.0.1.4.$line-2\">Quantity: 25-30 Pcs</p>\r\n<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p13670.4.0.1.0.1.4.$line-3\">Headless: No</p>\r\n<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p13670.4.0.1.0.1.4.$line-4\">Processed: No</p>\r\n<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p13670.4.0.1.0.1.4.$line-5\">With Leg: Yes</p>\r\n<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p13670.4.0.1.0.1.4.$line-6\">protein: 20g/100g</p>\r\n<p data-reactid=\".kelp6envcu.8.2.0.0.0.0.2.5.1.0:$p13670.4.0.1.0.1.4.$line-7\">Product Condition: Frozen</p>', '2022-01-23 08:59:44', '2022-02-12 09:12:06'),
(89, 93, 'English', 'Koi Fish Processed ±50 gm', '', '2022-01-23 09:01:11', '2022-01-23 09:01:11'),
(90, 94, 'English', 'Gura Chingri {Shrimp} ±15 gm', '', '2022-01-23 09:02:41', '2022-02-12 09:13:05'),
(91, 95, 'English', 'Golda Chingri {Shrimp} 15-18 pcs ±30 gm', '', '2022-01-23 09:03:35', '2022-02-12 09:12:38'),
(92, 96, 'English', 'Shing Fish Processed ±30 gm', '', '2022-01-23 09:04:32', '2022-01-23 09:04:32'),
(93, 97, 'English', 'Mola Fish Deshi ±15 gm', '', '2022-01-23 09:05:22', '2022-01-23 09:05:22'),
(94, 98, 'English', 'Rupchanda Fish Medium ±30 gm', '', '2022-01-23 09:06:31', '2022-01-23 09:06:31'),
(95, 99, 'English', 'Rupchanda Fish Medium ±30 gm', '', '2022-01-23 09:07:23', '2022-01-23 09:07:23'),
(96, 100, 'English', 'Rui Fish', '', '2022-01-23 09:09:15', '2022-01-23 09:09:15'),
(97, 101, 'English', 'Rui Fish', '', '2022-01-23 09:12:11', '2022-01-23 09:12:11'),
(98, 102, 'English', 'Rui Fish', '', '2022-01-23 09:12:59', '2022-01-23 09:12:59'),
(99, 103, 'English', 'Magur Fish ±30 gm', '', '2022-01-23 09:14:30', '2022-01-23 09:14:30'),
(100, 104, 'English', 'Ifad Eggy Instant Masala Noodles.', '', '2022-01-23 09:19:39', '2022-01-23 09:19:39'),
(101, 105, 'English', 'Nestle Maggi 2-Minute Masala Instant Noodles', '<p style=\"margin: 0in; margin-bottom: .0001pt; background: white;\"><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\'; color: #333333;\">MAGGI offers tasty and healthy snacks option for Bangladeshi families</span></p>\r\n<p style=\"margin: 0in; margin-bottom: .0001pt; background: white;\"><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\'; color: #333333;\">Fortified with Vitamin A, Iron, and Iodine.</span></p>\r\n<p style=\"margin: 0in; margin-bottom: .0001pt; background: white;\"><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\'; color: #333333;\">The tastemaker is comprised of known ingredients typically found in Bangladeshi households, such as turmeric, pepper, coriander, ginger, and cardamom.</span></p>\r\n<p style=\"margin: 0in; margin-bottom: .0001pt; background: white;\"><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\'; color: #333333;\">To boost the goodness in your bowl, add colorful vegetables and lean protein such as chicken.</span></p>\r\n<p style=\"margin: 0in; margin-bottom: .0001pt; background: white;\"><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\'; color: #333333;\">Contains noodle cake &amp; Tastemaker inside for a quick 2-minute preparation</span></p>\r\n<p style=\"margin: 0in; margin-bottom: .0001pt; background: white;\"><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\'; color: #333333;\">Variant: Masala</span></p>\r\n<p style=\"margin: 0in; margin-bottom: .0001pt; background: white;\"><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\'; color: #333333;\">Net Weight: 496g</span></p>\r\n<p style=\"margin: 0in; margin-bottom: .0001pt; background: white;\"><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\'; color: #333333;\">Origin: Bangladesh</span></p>', '2022-01-23 09:22:36', '2022-01-23 09:22:36'),
(102, 106, 'English', 'Ifad Eggy Instant Noodles Chicken', '', '2022-01-23 09:23:43', '2022-01-23 09:23:43'),
(103, 107, 'English', 'Nestle Maggi Masala Blast Noodles', '<p>MAGGI MASALA BLAST is Yummy and Spicy Noodles especially for teenagers who love to have hot and spicy foods.</p>\r\n<p>Fortified with Vitamin A, Iron, and Iodine.</p>\r\n<p>This unique tastemaker is comprised of the ingredients that consumers know and love such as red chili, turmeric, black pepper, onion, ginger, and cardamom sourced from both home and abroad.</p>\r\n<p>Contains noodle cake &amp; Tastemaker inside for a quick preparation</p>\r\n<p>Variant: Masala Blast</p>\r\n<p>Net Weight: 504g</p>\r\n<p>Origin: Bangladesh.</p>', '2022-01-23 09:25:01', '2022-01-23 09:25:01'),
(104, 108, 'English', 'Doodles Stick Noodles', '<p>Doodles instant noodles gives your fussy eating kids something tasty to look forward to. Kids’ love the irresistible taste of Doodles instant noodles that kills their boredom and provides iron, iodine, calcium and many other nutrient</p>', '2022-01-23 09:26:38', '2022-01-23 09:26:38'),
(105, 109, 'English', 'Dekko Egg Noodles 4 pcs', '', '2022-01-24 06:57:20', '2022-01-24 06:57:20'),
(106, 110, 'English', 'Leung Hung Chinese Egg Dragon Noodles', '', '2022-01-24 06:58:41', '2022-01-24 06:58:41'),
(107, 111, 'English', 'Doodles Masala Noodles', '<p>These delicious masala-flavored noodles are a classic snack or meal that directly transports your taste buds back to the spicy realm of taste. If you like Doodles Masala flavor, why not try Doodles Chicken Curry flavor!</p>', '2022-01-24 07:00:03', '2022-01-24 07:00:03'),
(108, 112, 'English', 'Cocola Egg & Chicken Masala Noodles', '', '2022-01-24 07:02:21', '2022-01-24 07:02:21'),
(109, 113, 'English', 'Mama Instant Noodles Hot & Spicy Flavour', '', '2022-01-24 07:03:34', '2022-01-24 07:03:34'),
(110, 114, 'English', 'Nestle Maggi 2-Minute Masala Instant Noodles', '<p>MAGGI offers tasty and healthy snacks option for Bangladeshi families</p>\r\n<p>Fortified with Vitamin A, Iron, and Iodine.</p>\r\n<p>The tastemaker is comprised of known ingredients typically found in Bangladeshi households, such as turmeric, pepper, coriander, ginger, and cardamom.</p>\r\n<p>To boost the goodness in your bowl, add colorful vegetables and lean protein such as chicken.</p>\r\n<p>Contains noodle cake &amp; Tastemaker inside for a quick 2-minute preparation</p>\r\n<p>Variant: Masala</p>\r\n<p>Net Weight: 744g</p>\r\n<p>Origin: Bangladesh</p>', '2022-01-24 07:05:27', '2022-01-24 07:05:27'),
(111, 115, 'English', 'Mama Noodles Hot And Spicy Flavour 10 Pack', '', '2022-01-24 07:06:24', '2022-01-24 07:06:24'),
(112, 116, 'English', 'Doodles Chicken Masala Stick Noodles', '<p>These delicious masala-flavored noodles are a classic snack or meal that directly transports your taste buds back to the spicy realm of taste. If you like Doodles Masala flavor, why not try Doodles Chicken Curry flavor!</p>', '2022-01-24 07:07:54', '2022-01-24 07:07:54'),
(113, 117, 'English', 'Mr. Noodles Magic Masala Easy Instant (Box Free)', '', '2022-01-24 07:10:46', '2022-01-24 07:10:46'),
(114, 118, 'English', 'Mama Cup Noodles Shrimp', '', '2022-01-24 07:11:38', '2022-01-24 07:11:38'),
(123, 127, 'English', 'Dekko Oyster Pasta', '', '2022-01-24 07:25:12', '2022-01-24 07:25:12'),
(124, 128, 'English', 'Kolson Macaroni Shell', '', '2022-01-24 07:25:46', '2022-01-24 07:25:46'),
(125, 129, 'English', 'Pasta Hat Penne Regati', '', '2022-01-24 07:26:31', '2022-01-24 07:26:31'),
(126, 130, 'English', 'Delicia Penne Pasta', '', '2022-01-24 07:27:16', '2022-01-24 07:27:16'),
(127, 131, 'English', 'Pasta Hat Vite', '', '2022-01-24 07:28:11', '2022-01-24 07:28:11'),
(128, 132, 'English', 'Emirates Macaroni Corni Corrugated Pasta', '', '2022-01-24 07:28:56', '2022-01-24 07:28:56'),
(129, 133, 'English', 'Kolson Macaroni Bamboo', '', '2022-01-24 07:30:24', '2022-01-24 07:30:24'),
(130, 134, 'English', 'Italpasta 88 Farfalle', '<ul style=\"list-style-type: square;\">\r\n<li>Product Type: Pasta</li>\r\n<li>Brand: ITALPASTA</li>\r\n<li>Weight: 500gm</li>\r\n<li>Origin: ITALY</li>\r\n<li>Ingredients: Durum Wheat Semolina Pasta.</li>\r\n<li>Quality: 100% Original &amp; Halal</li>\r\n</ul>\r\n<p>Keep in a dry and hygienic place this is a Vegetarian product 100% Halal The product is safe for human consumption no additives added. Cook the pasta in boiling water. Add salt to taste. Stir occasionally and cook until tender. Drain well and serve immediately with sauce of your taste. Also best with meat or vegetables.</p>', '2022-01-24 07:32:06', '2022-01-24 07:32:06'),
(131, 135, 'English', 'Reggia Pasta Chifarini', '', '2022-01-24 07:34:43', '2022-01-24 07:34:43'),
(132, 136, 'English', 'Varda Spaghetti Pasta', '', '2022-01-24 07:35:44', '2022-01-24 07:35:44'),
(133, 137, 'English', 'Donna Sofia Spaghetti Pasta', '', '2022-01-24 07:36:37', '2022-01-24 07:36:37'),
(134, 138, 'English', 'Bashundhara Macaroni Bamboo', '', '2022-01-24 07:40:10', '2022-01-24 07:40:10'),
(135, 139, 'English', 'Barilla Pasta Sauce Jar Napoletana', '<p>Origin: Italy</p>\r\n<p>Barilla NAPOLETANA sauce combines onion, garlic, and Mediterranean herbs with ripe Italian tomatoes. These tasty ingredients are cooked slowly to create a delicious and thick sauce that hugs your favorite Barilla pasta perfectly.</p>\r\n<p>• TRUSTED: N°1 IN ITALY with over 140 years of craftsmanship, making high-quality pasta that COOKS PERFECTLY EVERY TIME.</p>', '2022-01-24 07:41:06', '2022-01-24 07:41:06'),
(136, 140, 'English', 'Emirates Macaroni Alfabeto Tricolor Pasta', '', '2022-01-24 07:42:03', '2022-01-24 07:42:03'),
(137, 141, 'English', 'Mr. Pasta Chilli Chicken', '<p>Ingredients: Wheat flour, Edible vegetable oil &amp; Spices. Nutrition facts- Calories 226, protein 7g &amp; No cholesterol</p>', '2022-01-24 07:43:08', '2022-01-24 07:43:08'),
(138, 142, 'English', 'Pastiano Penne Pasta', '', '2022-01-24 07:45:13', '2022-01-24 07:45:13'),
(139, 143, 'English', 'Snickers Chocolate', '', '2022-01-24 07:46:02', '2022-01-24 07:46:02'),
(140, 144, 'English', 'Cadbury Dairy Milk Chocolate Bar', '<p>Your favorite chocolate Cadbury dairy milk in a unique, indulgent, liquid format</p>\r\n<p>Lick and enjoy this liquid chocolaty treat with a twist of Oreo bits and wheat crispiest Get a free toy with each pack of the delicious Dairy Milk Lick Ables  Scoop it, lick it.</p>', '2022-01-24 07:47:37', '2022-01-24 07:47:37'),
(142, 146, 'English', 'Nestle KITKAT 2 Finger Chocolate Wafer (India)', '<p>NESTLÉ KITKAT Chocolate Bar is the ideal snack for those who really value their break. Just unwrap the bar and break off one of the 2 fingers, snap it into two and savor the deliciously smooth milk chocolate.</p>\r\n<p>Imported from Nestlé India</p>', '2022-01-24 07:49:25', '2022-01-24 07:49:25'),
(143, 147, 'English', 'CBL Munchee Chocolate Wafer', '', '2022-01-24 07:50:13', '2022-01-24 07:50:13'),
(144, 148, 'English', 'M&M Peanut Chocolate', '', '2022-01-24 07:50:49', '2022-01-24 07:50:49'),
(146, 150, 'English', 'Nestle Classic Chocolate', '', '2022-01-24 07:52:01', '2022-01-24 07:52:01'),
(147, 151, 'English', 'Sargam Royal Crispy Mouth Freshener', '<p>Royal Crispy is a premium quality tobacco-free halal mouth freshener that will increase your appetite, provide fresh breath.</p>\r\n<p>By keeping the traditional value of betel nuts in mind, we have come up with Royal Crispy under the brand name ‘Sargam’.</p>\r\n<p>Royal Crispy is a unique variety of betel nut that is absolutely thin and crispy. These premium quality imported betel nuts are prepared as an after-meal mouth fresheners.</p>\r\n<p>It helps to increase digestion and keeps your mind and mouth fresh so that you can take it anytime in a day.</p>', '2022-01-24 07:53:16', '2022-01-24 07:53:16'),
(148, 152, 'English', 'Tic Tac Mint Flavored Mouth Freshener', '', '2022-01-24 07:53:56', '2022-01-24 07:53:56'),
(149, 153, 'English', 'Bluebell Premium White Compound Baking Chocolate', '', '2022-01-24 08:48:11', '2022-01-24 08:48:11'),
(150, 154, 'English', 'Shokti+ Chocolate Coated Wafer', '<p>(40 Pcs x 8 gm)</p>\r\n<p>Country of Origin: Bangladesh.</p>', '2022-01-24 08:49:24', '2022-01-24 08:49:24'),
(151, 155, 'English', 'Ferrero Rocher Moments Premium Chocolate', '<p>Introducing Ferrero Rocher Moments, from the house of Ferrero. Its center is filled with an exquisite hazelnut cream, which is surrounded by a crunchy wafer shell and is coated with fine meringue nuggets. The purest and finest ingredients are chosen, so you bite into the best experience. Ferrero Rocher Moments are well protected in a hermetic bag that maintains its rich taste, even at tropical temperatures. This bag is placed inside a golden, easy-to-gift premium pack. Make the Moment Perfect with Ferrero Rocher Moments. </p>', '2022-01-24 08:50:43', '2022-01-24 08:50:43'),
(152, 156, 'English', 'Cheese Puff', '<p>Cheese puffs are a puffed corn snack, coated with a mixture of cheese or cheese-flavored powders.</p>', '2022-01-24 08:52:47', '2022-01-24 08:52:47'),
(153, 157, 'English', 'Bombay Sweets Mr. Twist', '<p>Ingredients: Potato, Edible vegetable oil &amp; Spices. Nutrition facts- Calories 118, protein 3g &amp; No cholesterol</p>', '2022-01-25 04:03:29', '2022-01-25 04:03:29'),
(154, 158, 'English', 'Bombay Sweets Ring Chips', '', '2022-01-25 04:04:14', '2022-01-25 04:04:14'),
(155, 159, 'English', 'Bombay Sweets Cheese Ball Cheezee Corn Snacks', '', '2022-01-25 04:05:43', '2022-01-25 04:05:43'),
(156, 160, 'English', 'Detos Chicken Wings Chips', '<p>Detos aren’t just chips, they’re the tortilla shaped fuel that adds to the fire of adventure and passion that burns within hearts. You are a dreamer who is not afraid to speak your mind, you work hard to shine the brightest, and do the things you love with absolute love. Every bite marks a step in a bold new world, a world that radiates creativity and righteousness. Are you prepared to be thrilled? Life is just a bite away.</p>', '2022-01-25 04:06:48', '2022-01-25 04:06:48'),
(157, 161, 'English', 'Sun Chips Garlic & Chilli', '', '2022-01-25 04:07:27', '2022-01-25 04:07:27'),
(158, 162, 'English', 'Kurkure American Style Cream & Onion Chips', '', '2022-01-25 04:08:11', '2022-01-25 04:08:11'),
(159, 163, 'English', 'Ifad Wavy Chips (Bar-B-Q)', '', '2022-01-25 04:08:51', '2022-01-25 04:08:51'),
(160, 164, 'English', 'Alooz Waves B-B-Q Potato Chips', '', '2022-01-25 04:09:28', '2022-01-25 04:09:28'),
(161, 165, 'English', 'Kurkure Masala Manch Chips', '', '2022-01-25 04:10:11', '2022-01-25 04:10:11'),
(162, 166, 'English', 'Almonds (Kath Badam)', '<p>Almonds are a fantastic source of antioxidants. Nuts are low in carbs but high in healthy fats, protein, and fiber. The magnesium in almonds may additionally help lower blood pressure levels. Almonds Can Lower Cholesterol Levels. Eating Almonds Reduces Hunger, Lowering Your Overall Calorie Intake</p>\r\n<p>Almonds boast an impressive nutrient profile. A 1-ounce (28-gram) serving of almonds contains :</p>\r\n<ul>\r\n<li>Fiber: 3.5 grams</li>\r\n<li>Protein: 6 grams</li>\r\n<li>Fat: 14 grams (9 of which are monounsaturated)</li>\r\n<li>Vitamin E: 37% of the RDI</li>\r\n<li>Manganese: 32% of the RDI</li>\r\n<li>Magnesium: 20% of the RDI</li>\r\n</ul>\r\n<p>• They also contain a decent amount of copper, vitamin B2 (riboflavin) and phosphorus</p>', '2022-01-25 04:11:54', '2022-01-25 04:11:54'),
(163, 167, 'English', 'Peanut Raw (Kacha Cheena Badam)', '', '2022-01-25 04:12:28', '2022-01-25 04:12:28'),
(164, 168, 'English', 'Peanut Peeled (Vaja Cheena Badam)', '', '2022-01-25 04:13:42', '2022-01-25 04:13:42'),
(165, 169, 'English', 'Act II Popcorn Golden Sizzle', '', '2022-01-25 04:15:43', '2022-01-25 04:15:43'),
(166, 170, 'English', 'Tong Garden Salted Peanuts', '<p>Tong Garden ranks at the top in Southeast Asian markets when it comes to nuts products and snacks. Tong Garden grew into one of Asia’s greatest nut giants. Tong Garden never compromises on quality, and Tong Garden is constantly innovating to bring consumers more great-tasting snacks. Cashew nuts, broad beans, broad beans, pistachios, almonds, macadamias, sunflower kernels, honey-coated nut, Wasabi Cashew Nuts Mixed Macadamias, and most recently Almonds with Dried Cranberries and Banana Chips are the product range of Tong Garden. New products, new processes, aggressive strategies, and creative use of R&amp;D produced triple-digit growth in sales between 1996 and today for Tong Garden. Fair Food &amp; Lifestyle is the official distributor of Tong Garden in Bangladesh. Tong Garden has got much popularity as premium snacks for Bangladeshi with FFL.</p>', '2022-01-25 04:16:42', '2022-01-25 04:16:42'),
(167, 171, 'English', 'Walnuts (Akhrot)', '<p>Health benefits:</p>\r\n<p>Improves the metabolism, prevents cancer, improves skin, it helps manage weight, controls diabetes, reduces inflammation. It helps regulate sleep.</p>\r\n<p>Nutritional facts: Calories, Fat, Sodium, Potassium, carbohydrates, Protein, Calcium, Iron, Vitamin-C, Vitamin B-6, Magnesium.</p>', '2022-01-25 04:20:17', '2022-01-25 04:20:17'),
(168, 172, 'English', 'Royal Gardens Mixed Nuts', '', '2022-01-25 04:21:21', '2022-01-25 04:21:21'),
(169, 173, 'English', 'Royal Gardens Salted Cashews Nut (Kaju Badam)', '<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Cashews roasted in heart-healthy canola oil and Himalayan Pink Salt.</span></p>', '2022-01-25 04:23:06', '2022-01-25 04:23:06'),
(170, 174, 'English', 'Tong Garden Japanese Rice Cracker Mixed Coated Peanut', '<p>Tong Garden ranks at the top in Southeast Asian markets when it comes to nuts products and snacks. Tong Garden grew into one of Asia’s greatest nut giants. Tong Garden never compromise on quality, and Tong Garden is constantly innovating to bring consumers more great-tasting snacks. Cashew nuts, broad beans, broad beans, pistachios, almonds, macadamias, sunflower kernels, honey-coated nut, Wasabi Cashew Nuts Mixed Macadamias, and most recently Almonds with Dried Cranberries and Banana Chips are the product range of Tong Garden. New products, new processes, aggressive strategies and creative use of R&amp;D produced triple digit growth in sales between 1996 and today for Tong Garden. Fair Food &amp; Life Style is the official distributor of Tong Garden in Bangladesh. Tong Garden has got much popularity as premium snacks for Bangladeshi with FFL.</p>', '2022-01-25 04:24:08', '2022-01-25 04:24:08'),
(171, 175, 'English', 'Blue Diamond Almonds Mixed Nuts', '', '2022-01-25 04:28:42', '2022-01-25 04:28:42'),
(172, 176, 'English', 'Bombay Sweets Go Nuts (Green Peas)', '', '2022-01-25 04:29:39', '2022-01-25 04:29:39'),
(173, 177, 'English', 'Royal Gardens Honey Roasted Almonds', '<p>Honey Roasted California Almonds seasoned with Himalayan Pink Salt.</p>', '2022-01-25 04:30:32', '2022-01-25 04:30:32'),
(174, 178, 'English', 'Blue Diamond Almonds Bold Habanero BBQ', '', '2022-01-25 04:31:31', '2022-01-25 04:31:31'),
(175, 179, 'English', 'Thai Park Cherry Plum', '<ol>\r\n<li>Helps in Digestion</li>\r\n<li>Revitalize skin cells</li>\r\n<li>Boost up the immune system</li>\r\n<li>Source of Vitamin-C</li>\r\n</ol>', '2022-01-25 04:32:51', '2022-01-25 04:32:51'),
(176, 180, 'English', 'Golden Garden Mixed Fruits & Nuts', '<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">A great source of many nutrients. </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">• Loaded with antioxidants. </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">• May aid weight loss. </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">• Lower cholesterol and triglycerides. </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">• Reduce Inflammation. </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">• High in beneficial fiber. </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">• Reduce risk of heart attack and stroke.</span></p>', '2022-01-25 04:34:02', '2022-01-25 04:34:02'),
(177, 181, 'English', 'Golden Garden Dried Cherry 200 gm', '<p>Brand- Golden Garden</p>\r\n<p>Product of China</p>\r\n<p>Benefits:</p>\r\n<p>Its so refreshing, tart yet sweet snack that can boost your vitamin &amp; mineral intake while giving you valuable antioxidant phytonutrients. It is also a wise low-calorie choice for anyone trying to lose weight while maintaining good nutrition.</p>', '2022-01-25 04:35:46', '2022-01-25 04:35:46'),
(178, 182, 'English', 'Dekko Toast Biscuit', '', '2022-01-25 04:36:51', '2022-01-25 04:36:51'),
(179, 183, 'English', 'Cocola Champion Chocolate Cream Biscuit', '<p>Cocola Champion Chocolate Biscuits is the best product of Cocola Food Products Limited. Cocola Champion Chocolate Biscuits are tasty to eat. This may be the best choice for your child and your family. It is completely safe for each child.</p>\r\n<p>Cocola Food Products Limited, one of the leading food manufacturers in Bangladesh, started its journey in 1973 with the aim of improving the quality of food for the consumers by providing innovative and quality products in the market. The first product of this company was Cocola Lodge, through which Cocola was well known to its customers. Step by step it has introduced biscuits, noodles, chocolates, chips, wafers, and many snack products. Cocola Marie has started its biscuit line by producing biscuits and the company introduced Cocola Glucose Biscuits, Cocola Pineapple</p>', '2022-01-25 04:38:47', '2022-01-25 04:38:47'),
(180, 184, 'English', 'Haque Mr. Cookie Biscuit', '', '2022-01-25 04:39:28', '2022-01-25 04:39:28'),
(181, 185, 'English', 'Bangas Grand Choice Salted Biscuit', '<p>Ingredients: Flour, Sugar, Salt, Butter, Milk, Cumin, Egg Powder, Nuts Powder, Natural Colouring Agent, Preservatives, and Flavors.</p>', '2022-01-25 04:41:03', '2022-01-25 04:41:03'),
(182, 186, 'English', 'Dekko Honey & Kalo Zeera Biscuit', '', '2022-01-25 04:41:37', '2022-01-25 04:41:37'),
(183, 187, 'English', 'Danish Lexus Vegetable Cracker Biscuit', '<p>Origin: Bangladesh</p>\r\n<p>Manufacturer: Danish food limited</p>\r\n<p>Delicious vegetable cracker biscuits.</p>\r\n<p>Vegan</p>\r\n<p>Contains wheat gluten and soya</p>\r\n<p>Halal certified</p>\r\n<p>Ingredients: Wheat flour, salt, sugar, palm oil, corn starch, yeast, dehydrated vegetable, leavening agents: sodium bicarbonate, ammonium bicarbonate, emulsifier, soya lecithin, permitted antioxidants, artificial milk, and butter flavor.</p>\r\n<p>Nutrition: Energy, protein, fat, carbohydrate, dietary fiber, vitamin A, vitamin C, calcium, iron</p>', '2022-01-25 04:42:23', '2022-01-25 04:42:23'),
(184, 188, 'English', 'Dekko Black & Brown Cookies', '<p>Dekko Black &amp; Brown Cookies (Buy 3 Get 1 free) 88 gm.</p>\r\n<p>4 x 88 gm = 352 gm</p>\r\n<p>Origin: Bangladesh.</p>', '2022-01-25 04:44:06', '2022-01-25 04:44:06'),
(185, 189, 'English', 'Olympic Lexus Vege Cracker Biscuit', '', '2022-01-25 04:45:01', '2022-01-25 04:45:01'),
(186, 190, 'English', 'Olympic Digestive High Fiber Biscuit', '', '2022-01-25 04:45:51', '2022-01-25 04:45:51'),
(187, 191, 'English', 'Danish Dry Cake Biscuit', '', '2022-01-25 05:06:13', '2022-01-25 05:06:13'),
(188, 192, 'English', 'Olympic Premium Toast', '', '2022-01-25 05:06:39', '2022-01-25 05:06:39'),
(189, 193, 'English', 'Mr. Cookie Butter Coconut Biscuit', '', '2022-01-25 05:08:37', '2022-01-25 05:08:37'),
(190, 194, 'English', 'Fresh Butter Cookies Biscuit Jar', '', '2022-01-25 05:09:19', '2022-01-25 05:09:19'),
(191, 195, 'English', 'Olympic Tip Biscuit', '', '2022-01-25 05:09:58', '2022-01-25 05:09:58'),
(192, 196, 'English', 'Fit Cracker Milk Flavour Biscuit', '', '2022-01-25 05:10:46', '2022-01-25 05:10:46'),
(193, 197, 'English', 'Bakeman\'s Lexus Vegetable Crackers Biscuit', '', '2022-01-25 05:11:13', '2022-01-25 05:11:13'),
(194, 198, 'English', 'Dekko Dry Cake Biscuit', '', '2022-01-25 05:11:53', '2022-01-25 05:11:53'),
(195, 199, 'English', 'Jhatpot Paratha Low Fat 10 pcs', '', '2022-01-25 06:11:09', '2022-01-25 06:11:09'),
(196, 200, 'English', 'Golden Harvest Deshi Paratha', '<p>Get a classic golden frozen paratha family pack from us as your daily breakfast. One pack covers for one family. Hassle-free and easy to serve. Just tear off the packet and put it on the griddle for a few minutes and then serve it. It’s a good food for your good health.</p>', '2022-01-25 06:14:33', '2022-01-25 06:14:33'),
(197, 201, 'English', 'Kazi Farms Kitchen Plain Paratha Family 20 pcs', '', '2022-01-25 06:16:36', '2022-01-25 06:16:36'),
(198, 202, 'English', 'Kazi Farms Kitchen Chicken Nuggets Spicy', '', '2022-01-25 06:17:49', '2022-01-25 06:17:49'),
(199, 203, 'English', 'Golden Harvest Chicken Nuggets', '', '2022-01-25 06:20:12', '2022-01-25 06:20:12'),
(200, 204, 'English', 'Quality Plain Paratha 10 Pcs', '<p>Antibiotic-free, Halal Certified, Own Farmed chicken, ISO Certified, No Preservatives, MBM Free</p>', '2022-01-25 06:22:50', '2022-01-25 06:22:50'),
(201, 205, 'English', 'Golden Harvest Atta Ruti 20 pcs', '<p>Origin: Bangladesh</p>\r\n<p>Manufacturer: Golden Harvest Argo industries Ltd.</p>\r\n<p>Make your life hassle-free with a golden harvest is frozen atta roti.</p>\r\n<p>Halal certified</p>\r\n<p>HACCP certified</p>\r\n<p>ISO certify</p>', '2022-01-25 06:26:27', '2022-01-25 06:26:27'),
(202, 206, 'English', 'Bengal Meat Chicken Sausage (BP)', '<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Preparation: </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Mince chicken, Seasoning.Water stuffed in Edible (collagen) casing skin on </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">to prepare fresh sausage. </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Smoked with selected wood chips </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">from Bangladesh. </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Way to cook: </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Grill, Pan Fry, BBQ </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Recommended serving: </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Breakfast, Hot-Dog, Snacks, </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Pizza topping, Stir fry with </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">vegetables, Fried rice </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Special recipe: </span></p>', '2022-01-25 06:27:59', '2022-01-25 06:27:59'),
(203, 207, 'English', 'Kazi Farms Kitchen Chicken Liver Singara 15 pcs', '<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Chicken Liver Sinagra: </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">It is a singara made with chicken liver &amp; Gizzard, seasoning, salt, bay</span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">leaf, cardamon, etc. as the stuffing inside the wheat flour dough. </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Chicken livers are high in protein and a rich store of folate, which is important for fertility and helps prevent certain birth defects. </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Livers are also loaded with iron to give you energy and a treasure trove of certain B vitamins, most notably B12. </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Chicken livers are also one of the top sources of vitamin A, which helps eye health.</span></p>', '2022-01-25 06:29:21', '2022-01-25 06:29:21'),
(204, 208, 'English', 'Kazi Farms Kitchen Dal Puri 10 pcs', '', '2022-01-25 06:30:14', '2022-01-25 06:30:14'),
(205, 209, 'English', 'AG Food Vegetable Spring Roll 14-15 pcs', '', '2022-01-25 06:31:32', '2022-01-25 06:31:32'),
(206, 210, 'English', 'Golden Harvest Frozen Chicken Meat Ball', '<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Origin: Bangladesh </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Manufacturer: Golden Harvest Agro industries Ltd. </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Delicious chicken meat ball. </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Halal certified </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">HACCP certified </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">ISO certified </span></p>\r\n<p><span style=\"font-size: 11.0pt; font-family: \'Arial\',\'sans-serif\';\">Ingredients: Chicken meat, salt, onion, garlic, chili, seasoning, flour, black pepper, white pepper, water.</span></p>', '2022-01-25 06:32:30', '2022-01-25 06:32:30'),
(207, 211, 'English', 'Quality Beef Classic Sausage', '<p>Antibiotic-free, Halal Certified, Own Farmed chicken, ISO Certified, No Preservatives, MBM Free</p>', '2022-01-25 06:33:23', '2022-01-25 06:33:23'),
(208, 212, 'English', 'Quality Chicken Smoked Sausage', '', '2022-01-25 06:34:53', '2022-01-25 06:34:53'),
(209, 213, 'English', 'Golden Harvest Chicken Shami Kabab', '', '2022-01-25 06:35:45', '2022-01-25 06:35:45'),
(210, 214, 'English', 'Quality Chicken Nuggets', '', '2022-01-25 06:36:49', '2022-01-25 06:36:49'),
(211, 215, 'English', 'Blossoms Cane Whole Mushroom', '<p>Country of origin: China.</p>', '2022-01-25 06:38:22', '2022-01-25 06:38:22');
INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `description`, `created_at`, `updated_at`) VALUES
(212, 216, 'English', 'Best\'s Mushroom Choice Whole Tin', '', '2022-01-25 06:39:17', '2022-01-25 06:39:17'),
(213, 217, 'English', 'Blossoms Black Olives Pitted', '', '2022-01-25 06:40:24', '2022-01-25 06:40:24'),
(214, 218, 'English', 'Oliova Slice Balck Olives', '', '2022-01-25 06:42:21', '2022-01-25 06:42:21'),
(215, 219, 'English', 'Hibiscus Mushrooms Choice Whole Can', '', '2022-01-25 06:43:14', '2022-01-25 06:43:14'),
(216, 220, 'English', 'Garden Fresh Whole Kernel Corn', '', '2022-01-25 06:44:03', '2022-01-25 06:44:03'),
(217, 221, 'English', 'Miniket Rice Premium', '', '2022-01-25 06:45:26', '2022-01-25 06:45:26'),
(218, 222, 'English', 'Nazirshail Rice Standard', '', '2022-01-25 06:46:18', '2022-01-25 06:46:18'),
(219, 223, 'English', 'Nazirshail Rice Standard', '', '2022-01-25 06:50:09', '2022-01-25 06:50:09'),
(221, 225, 'English', 'Chinigura Rice', '', '2022-01-25 06:52:28', '2022-01-25 06:52:28'),
(222, 226, 'English', 'Chashi Aromatic Chinigura Rice', '', '2022-01-25 06:53:11', '2022-01-25 06:53:11'),
(223, 227, 'English', 'Rupchanda Chinigura Premium', '<p>Original Chinigura Aroma .</p>\r\n<p>No presence of broken and big grain.</p>\r\n<p>Ensures non sticky polao .</p>\r\n<p>Processed for 3 months .</p>\r\n<p>Best for all types of polao, biriyani &amp; payesh </p>', '2022-01-25 06:54:13', '2022-01-25 06:54:13'),
(224, 228, 'English', 'Pran Chinigura Rice', '<p>Pran Chinigura Aromatic Rice (Polau). Fresh and Clean,</p>\r\n<p>Vacuum Packed. Pran Chinigura Rice can be use in Biriyani, Polau, Firni, Kheer, Khichuri.</p>', '2022-01-25 06:55:18', '2022-01-25 06:55:18'),
(225, 229, 'English', 'Katarivog Rice', '', '2022-01-25 06:56:53', '2022-01-25 06:56:53'),
(226, 230, 'English', 'Ispahani Parbon Chinigura Rice', '', '2022-01-25 06:57:47', '2022-01-25 06:57:47'),
(227, 231, 'English', 'Banglamoti Rice', '', '2022-01-25 06:58:47', '2022-01-25 06:58:47'),
(228, 232, 'English', 'Athash Rice', '', '2022-01-25 06:59:53', '2022-01-25 06:59:53'),
(229, 233, 'English', 'ACI Pure Miniket Rice', '', '2022-01-25 07:00:37', '2022-01-25 07:00:37'),
(230, 234, 'English', 'BPM White Binni Rice', '', '2022-01-25 07:01:18', '2022-01-25 07:01:18'),
(232, 236, 'English', 'Cumin', '', '2022-01-25 07:08:02', '2022-02-09 04:15:54'),
(234, 238, 'English', 'Dried Chillies', '', '2022-01-25 07:10:11', '2022-02-09 04:20:14'),
(235, 239, 'English', 'Radhuni Turmeric Powder', '<p>Apart from having excellent antiseptic and antibacterial properties, it has the distinct flavor and fragrance of coriander for your delicious preparations.</p>', '2022-01-25 07:10:46', '2022-02-09 04:20:58'),
(236, 240, 'English', 'Cardamom Whole', '<p>Elach, Cardamom (Elachi) is a spice with an intense, slightly sweet flavor that some people compare to mint. Its antioxidant and diuretic properties may lower blood pressure.The compounds in cardamom may help fight cancer cells. Elach is rich in compounds that may fight inflammation. Cardamom has been used for thousands of years to help with digestion.The use of cardamom to treat bad breath and improve oral health is an ancient remedy.</p>\r\n<p>Compounds in cardamom may help increase airflow to your lungs and improve breathing. When taken in powder form, cardamom may lower blood sugar.</p>', '2022-01-25 07:11:33', '2022-02-09 04:21:59'),
(237, 241, 'English', 'Bay Leaves', '', '2022-01-25 07:12:18', '2022-02-09 04:22:34'),
(238, 242, 'English', 'Radhuni Cumin Powder', '', '2022-01-25 07:13:28', '2022-02-09 04:23:07'),
(240, 244, 'English', 'Radhuni Garam Masala Powder', '', '2022-01-25 07:15:26', '2022-02-12 09:18:59'),
(241, 245, 'English', 'Radhuni Coriander Powder', '<p>Providing a fragrant flavor Radhuni Powdered Coriander is high in food value. This ground coriander powder is obtained from the Coriander seed of the coriander plant. As a spice it is used widely in many cultures and country.</p>', '2022-01-25 07:16:53', '2022-02-09 04:25:02'),
(242, 246, 'English', 'Radhuni Roast Masala', '<p>Radhuni easy mix roast masala gives you the optimum taste of roast in the easiest way, without having to add any other spices. just add sour curd in preparation and edible oil in cooking with chicken.</p>', '2022-01-25 07:17:39', '2022-02-09 04:25:57'),
(243, 247, 'English', 'Radhuni Cumin Powder', '', '2022-01-25 07:18:56', '2022-02-09 04:27:02'),
(244, 248, 'English', 'Black Pepper Whole', '', '2022-01-25 07:19:51', '2022-02-09 04:27:39'),
(245, 249, 'English', 'Black Cumin', '<p>Usage :</p>\r\n<p>Black cumin is used to food ingridents. It is also used to treatment for some disease.</p>\r\n<p>Source : M/S Abdul Kader General Store</p>\r\n<p>Manufacturer : Farm</p>\r\n<p>Origin Country : Bangladesh</p>', '2022-01-25 07:20:41', '2022-02-09 04:28:23'),
(246, 250, 'English', 'Fennel', '', '2022-01-25 07:21:14', '2022-02-09 04:28:59'),
(247, 251, 'English', 'Fenugreek Seed', '', '2022-01-25 07:22:11', '2022-02-09 04:29:51'),
(250, 254, 'English', 'Mix Spice', '', '2022-01-25 07:24:31', '2022-02-09 04:30:40'),
(251, 255, 'English', 'Mustard Seed', '<p>Yellow whole mustard seeds. You can paste these or grind these and add to your curries like ‘shorisha ilish’.</p>', '2022-01-25 07:26:11', '2022-02-09 04:31:24'),
(253, 257, 'English', 'Brown Flax Seed', '', '2022-01-25 07:27:50', '2022-02-09 04:32:01'),
(254, 258, 'English', 'ACI Dhakaiya Kacchi Biriyani Masala', '', '2022-01-25 07:28:25', '2022-02-09 04:37:32'),
(255, 259, 'English', 'Bombay Sweets Mr. Twist', '<p>Ingredients: Potato, Edible vegetable oil &amp; Spices. Nutrition facts- Calories 118, protein 3g &amp; No cholesterol</p>', '2022-01-26 07:33:38', '2022-01-26 07:33:38'),
(256, 260, 'English', 'Bombay Sweets Ring Chips', '', '2022-01-26 07:37:03', '2022-01-26 07:37:03'),
(257, 261, 'English', 'Bombay Sweets Cheese Ball Cheezee Corn Snacks', '', '2022-01-26 07:41:54', '2022-01-26 07:41:54'),
(258, 262, 'English', 'Fresh Fortified', '<p>Fresh Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in</p>', '2022-01-26 07:51:47', '2022-01-26 07:51:47'),
(259, 263, 'English', 'Fresh Fortified Soyabean Oil', '<table width=\"762\">\r\n<tbody>\r\n<tr>\r\n<td width=\"366\">\r\n<p>Fresh Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vitamin A. Its fresh and healthy.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '2022-01-26 07:55:35', '2022-01-26 07:55:35'),
(260, 264, 'English', 'Veola Soyabean Oil', '<p>Vitamin A fortified soyabean Oil.</p>\r\n<p>Increases immunity.</p>\r\n<p>Strengthens bone &amp; teeth.</p>', '2022-01-26 07:58:08', '2022-01-26 07:58:08'),
(261, 265, 'English', 'Teer Soyabean Oil', '', '2022-01-26 08:00:11', '2022-01-26 08:00:11'),
(262, 266, 'English', 'Rupchanda Soyabean Oil', '<p>21 years of heritage.</p>\r\n<p>First Vitamin A fortified Soyabean Oil.</p>\r\n<p>Increases immunity.</p>\r\n<p>Strengthens bone &amp; teeth.</p>', '2022-01-26 08:03:13', '2022-01-26 08:03:13'),
(263, 267, 'English', 'Rupchanda Soyabean Oil (poly)', '<table width=\"762\">\r\n<tbody>\r\n<tr>\r\n<td width=\"366\">\r\n<p>21 years of heritage.</p>\r\n<p>First Vitamin A fortified Soyabean Oil.</p>\r\n<p>Increases immunity.</p>\r\n<p>Strengthens bone &amp; teeth.</p>\r\n<p> </p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '2022-01-26 08:05:11', '2022-01-26 08:05:11'),
(264, 268, 'English', 'Fresh Mustard Oil', '<table width=\"762\">\r\n<tbody>\r\n<tr>\r\n<td width=\"366\">\r\n<p>Surma Mustard Oil Mills Limited produces the finest Mustard Oil and Mustard Oil Cake under the brand name of Fresh. Fresh Mustard Oil is produced from world’s finest &amp; best quality mustard seeds and purified properly in an automatic plant. The legacy of this brand is to provide its great pungency &amp; natural taste to the consumers. Also it connotes the heritage of our Bengali culture.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '2022-01-26 08:07:16', '2022-01-26 08:07:16'),
(265, 269, 'English', 'Fresh Mustard Oil', '<table width=\"762\">\r\n<tbody>\r\n<tr>\r\n<td width=\"366\">\r\n<p>Surma Mustard Oil Mills Limited produces the finest Mustard Oil and Mustard Oil Cake under the brand name of Fresh. Fresh Mustard Oil is produced from world’s finest &amp; best quality mustard seeds and purified properly in an automatic plant. The legacy of this brand is to provide its great pungency &amp; natural taste to the consumers. Also it connotes the heritage of our Bengali culture.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '2022-01-26 08:10:05', '2022-01-26 08:10:05'),
(266, 270, 'English', 'Sena Fortified Soyabean Oil', '', '2022-01-26 08:12:25', '2022-01-26 08:12:25'),
(267, 271, 'English', 'Acme Mustard Oil', '', '2022-01-26 08:15:45', '2022-01-26 08:15:45'),
(268, 272, 'English', 'Pran Mustard Oil', '', '2022-01-26 08:18:15', '2022-01-26 08:18:15'),
(269, 273, 'English', 'Rahma Pomace Olive Oil', '', '2022-01-26 08:20:58', '2022-01-26 08:20:58'),
(270, 274, 'English', 'Aarong Dairy Pure Ghee', '<p>Origin: Bangladesh</p>\r\n<p>Manufacturer: Aarong dairy</p>\r\n<p>Made hygienically from fresh cream of cow’s milk.</p>\r\n<p>Composition:</p>\r\n<p>Cow’s Milk Cream</p>\r\n<p>Nutrition: Milk 99.8%(Min), Moisture 0.1%</p>', '2022-01-26 08:33:22', '2022-01-26 08:33:22'),
(271, 275, 'English', 'Aarong Dairy Pure Ghee', '<p>Made hygienically from fresh cream of pure cow\'s milk. Aarong Dairy Pure Ghee is excellent for preparing polao, korma, biriyani, paratha, halwa or any other sweet dish</p>', '2022-01-26 08:34:41', '2022-01-26 08:34:41'),
(272, 276, 'English', 'SUN Premium Ghee', '', '2022-01-26 08:36:50', '2022-01-26 08:36:50'),
(273, 277, 'English', 'Red Cow Butter Oil', '<p>Red Cow Butter Oil made from pure cow\'s milk. It contains energy, protein, carbohydrate and fat.</p>\r\n<p>New Zealand Dairy Product BD Ltd.</p>', '2022-01-26 09:06:34', '2022-01-26 09:06:34'),
(274, 278, 'English', 'Milk Vita Ghee', '', '2022-01-26 09:08:30', '2022-01-26 09:08:30'),
(275, 279, 'English', 'Khaas Food Ghee', '', '2022-01-26 09:10:20', '2022-01-26 09:10:20'),
(276, 280, 'English', 'Khusboo Premium Ghee', '<p>Khusboo ghee or clarified milk fat, sourced from Bangladeshi grass-fed cows. It contains Omega Fatty Acids, Butyric Acid, Vitamin K, Medium &amp; Short-Chain Triglycerides. A type of shelf-stable clarified milk fat, ghee is slowly processed to remove water, milk solids and impurities for its perfection</p>', '2022-01-26 09:12:15', '2022-01-26 09:12:15'),
(277, 281, 'English', 'Aseel Vegetable Ghee', '', '2022-01-26 09:13:37', '2022-01-26 09:13:37'),
(278, 282, 'English', 'Radhuni Chicken Masala', '<table width=\"762\">\r\n<tbody>\r\n<tr>\r\n<td width=\"366\">\r\n<p>Radhuni Chicken Masala mix helps you prepare rich and aromatic Chicken Curry for an appetizing and flavorful dish in an easy manner at the comfort of your home. Serving for 7-8 people, this 20gm convenient pack is ideal for 1 KG size chicken.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '2022-01-26 09:20:00', '2022-01-26 09:20:00'),
(279, 283, 'English', 'Nestle Maggi Fusian Fried Rice Seasoning Mix Sachet', '<p>Transforms your plain rice into a delicious wok flavored fried rice.</p>\r\n<p>A unique blend of different spices &amp; flavors like Garlic, black pepper, Soya sauce &amp; unique Asian wok flavor</p>\r\n<p>It’s very easy to cook, you just need to fry one onion in a fry pan with one table spoon oil &amp; then add plain rice and Fried rice seasoning mix. Then mix &amp; stir it for 2-3 minutes. Your Fried rice is ready!</p>\r\n<p>For more nutrition you can add Carrot, Broccoli, Capsicum and also scrambled egg.</p>\r\n<p>Net Weight: 6g</p>\r\n<p>Origin: Bangladesh</p>', '2022-01-26 09:23:23', '2022-01-26 09:23:23'),
(280, 284, 'English', 'Radhuni Biryani Masala', '<table width=\"762\">\r\n<tbody>\r\n<tr>\r\n<td width=\"366\">\r\n<p>Specially made mixed spices for mutton, beef, and chicken biryani. The mixing of different spices maintains the standard recipe to prepare delicious Biryani.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '2022-01-26 09:26:27', '2022-01-26 09:26:27'),
(281, 285, 'English', 'Radhuni Chicken Masala', '<table width=\"762\">\r\n<tbody>\r\n<tr>\r\n<td width=\"366\">\r\n<p>Radhuni Chicken Masala mix helps you prepare rich and aromatic Chicken Curry for an appetizing and flavorful dish in an easy manner at the comfort of your home. Serving for 7-8 people, this 20gm convenient pack is ideal for 1 KG size chicken.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '2022-01-26 09:32:20', '2022-01-26 09:32:20'),
(282, 286, 'English', 'Radhuni Beef Masala', '<table width=\"762\">\r\n<tbody>\r\n<tr>\r\n<td width=\"366\">\r\n<p>Radhuni Beef Masala mix helps you prepare rich and aromatic Beef Curry for an appetizing and flavorful dish in an easy manner at the comfort of your home. Serving for 7-8 people, this 25gm convenient pack is ideal for 1 KG beef.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '2022-01-26 09:49:32', '2022-01-26 09:49:32'),
(283, 287, 'English', 'Radhuni Chatpoti Masala', '<p>Radhuni Chatpoti Masala is a blend of different spices that makes the preparation easy, flavored, and tasty. Radhuni Chatpoti Masala is fresh and healthy.</p>', '2022-01-26 10:22:06', '2022-01-26 10:22:06'),
(284, 288, 'English', 'Knorr Krispy Fried Chicken Mix', '<p>Swap reconstituted meat for homemade chicken with Knorr Crispy Fried Chicken mix. You can also use it to prepare other delicious fried snacks e.g. onion rings, potato chop etc. Prepare restaurant like fried chicken at home with this mix and feed your children have a healthier snack!</p>', '2022-01-26 10:29:36', '2022-01-26 10:29:36'),
(285, 289, 'English', 'Radhuni Chicken Tandoori Masala', '<p>Radhuni Chicken Tandoori Masala is made from high quality and a selected variety of ingredients. It is 100% natural, free from adulterants, preservatives, artificial color, and flavor.</p>', '2022-01-27 08:32:00', '2022-01-27 08:32:00'),
(286, 290, 'English', 'Radhuni Kala Bhuna Masala', '<table width=\"762\">\r\n<tbody>\r\n<tr>\r\n<td width=\"366\">\r\n<p>Radhuni Kala Bhuna helps you recreate the authentic traditional taste of divine Kala Bhuna which is a true legacy of the Chatgaya Taste. The flavor of a Kala Bhuna is based on a mixture of spices with the process of making it makes the</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '2022-01-27 08:52:25', '2022-01-27 08:52:25'),
(287, 291, 'English', 'Radhuni Meat Curry Masala', '<table width=\"762\">\r\n<tbody>\r\n<tr>\r\n<td width=\"366\">\r\n<p>Radhuni Meat Curry Masala is riched mixed spices using ingredients like chili, turmeric, coriander, cumin, fenugreek etc to get the authentic taste of meat curry. This products is used as a complete spice for all kinds of meat cooking</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '2022-01-27 08:54:22', '2022-01-27 08:54:22'),
(288, 292, 'English', 'Nestle Maggi Shaad-e Magic Seasoning Mix Sachet', '<table width=\"762\">\r\n<tbody>\r\n<tr>\r\n<td width=\"366\">\r\n<p>MAGGI Shaad-e Magic is a unique blend of roasted spices which can enhance the taste of everyday dishes. This seasoning is comprised of well-known Bangladeshi spices such as cumin, chilli, turmeric, garlic which enriches the taste of a wide variety of traditional Bangladeshi. Fortified with vital nutrients such as vitamin A, Iron and Iodine.Net Weight: 25g. Origin: Bangladesh</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '2022-01-27 08:57:26', '2022-01-27 08:57:26'),
(289, 293, 'English', 'Radhuni Kachchi Biryani Masala', '', '2022-01-27 09:01:25', '2022-01-27 09:01:25'),
(290, 294, 'English', 'Savory Milkshake Premix Vanilla Flavor Box', '<table width=\"762\">\r\n<tbody>\r\n<tr>\r\n<td width=\"366\">\r\n<p>SAVORY Milkshake Premix is a sweet drink made by blending milk, ice cream, and flavorings or sweeteners.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '2022-01-27 09:03:00', '2022-01-27 09:03:00'),
(291, 295, 'English', 'Shan Seekh Kabab Masala Mix', '', '2022-01-27 09:04:53', '2022-01-27 09:04:53'),
(292, 296, 'English', 'Shan Seekh Kabab Masala Mix', '', '2022-01-27 09:06:15', '2022-01-27 09:06:15'),
(293, 297, 'English', 'Brown Sugar (Akher Chini) Loose', '', '2022-01-27 09:34:50', '2022-01-27 09:34:50'),
(294, 298, 'English', 'Malta  ± 50 gm', '', '2022-01-31 08:34:41', '2022-01-31 08:34:41'),
(295, 299, 'English', 'Strawberry', '', '2022-01-31 08:37:23', '2022-01-31 08:37:23'),
(296, 300, 'English', 'Black Grapes', '<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p14147.4.0.1.0.1.4.$line-0\">Black grapes, which are known for their velvety colour and sweet flavour, come packed with nutrients and antioxidants. With their cultivation dating back to 6,000 to 8,000 years ago, they are said to be the oldest cultivated fruit in the Near East and Europe, and are botanically known as Vitis vinifera. There are two widely known species of black grapes: the old world species is native to the area across the southeast coast of the Black Sea (near the south of the Caspian Sea) to Afghanistan and is still found in these regions with over 10,000 varieties; and the new world species that originated from South America and North Eastern America. Grapes are actually \'berries\' that have a semi-solid, translucent flesh inside them; they may or may not have seeds. The most popular use of grapes, all over the world, is in making wines. However, the juicy fruit has also added a number of uses to its crowning glory. Apart from being relished as a fruit or in salads, black grapes can also be cooked in a variety of ways to make sauces, jams, compotes, desserts and more. In addition, it has some incredible benefits for the skin, hair and overall health.</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p14147.4.0.1.0.1.4.$line-1\"> </p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p14147.4.0.1.0.1.4.$line-2\">Nutritional facts/Ingredients :</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p14147.4.0.1.0.1.4.$line-3\">\"Benefits:</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p14147.4.0.1.0.1.4.$line-4\">-Protects the Heart</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p14147.4.0.1.0.1.4.$line-5\">-Improves Vision</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p14147.4.0.1.0.1.4.$line-6\">-Fights Risk of Cancer</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p14147.4.0.1.0.1.4.$line-7\">-Boosts Brain Function</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p14147.4.0.1.0.1.4.$line-8\">-Prevents the Risk of Diabetes</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p14147.4.0.1.0.1.4.$line-9\">-Promotes Healthy Hair</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p14147.4.0.1.0.1.4.$line-10\">-Immunity Booster</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p14147.4.0.1.0.1.4.$line-11\">-Healthy Skin</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p14147.4.0.1.0.1.4.$line-12\">- Prevents Bone Loss\"</p>', '2022-01-31 08:39:22', '2022-01-31 08:39:22'),
(297, 301, 'English', 'Shagor Kola (Banana Sagor)', '', '2022-01-31 08:41:05', '2022-01-31 08:41:05'),
(298, 302, 'English', 'Banana Chompa', '<p>Banana is the most popular fresh fruit in all over the world. It has lots of variety. Chompa Banana is one of them. Chompa Bananas are comparatively smaller than the normal bananas. Bananas are great super food which provides us with energy, make us feel full and provide our body with essential nutrients and high amount of fiber. Banana is one of the high calorie tropical fruits. 100 grams of its flesh carries 90 calories. Besides, it contains good amount of health benefiting fiber, anti-oxidants, minerals, and vitamins. Bananas could help you to feel happier as they contain tryptophan, a type of protein that the body converts into serotonin, known to promote relaxation and improve mood.</p>', '2022-01-31 08:42:55', '2022-01-31 08:42:55'),
(299, 303, 'English', 'Guava (± 50 gm)', '<p>Guava is a tropical fruit rich in high-profile nutrients. Thai guavas are generally the size of a softball with apple green skin that can range from bumpy to smooth. The flesh is white with pale yellow seeds and tends to be drier than the pink type of guavas. Thai guavas are only mildly sweet and have very little fragrance. The crunchy flesh and hard seeds are both edible. Guavas come in two broad groups divided by the color of their flesh: pink and white. Thai guavas are a group of guavas within the white category that include a number of varieties. Thai Guava Guava is very helpful for those who want to lose weight without compromising their intake of proteins, vitamins and fiber. Guava is very high in roughage and rich in vitamins, proteins and minerals Adding a medium-sized guava to your lunch and you will not feel hungry again until the evening.</p>', '2022-01-31 08:45:12', '2022-01-31 08:45:12'),
(300, 304, 'English', 'Lal Angur (Red Grapes) ± 12 gm', '<p>The combination of unique texture and sweet, tart flavor has made Red Grapes an extra-ordinary fruit. Red Grapes are small round or oval berries that feature semi-translucent flesh encased by a smooth skin. Red grapes are relatively low in calories and are fat and cholesterol free. A 1-cup serving of red grapes contains only 104 calories, yet still provides 1 g of protein and 1 g of fiber. However, this serving also contains 27 g of total carbohydrates, 23 g of which come from sugar. Red grapes are a good source of several vitamins. One serving of red grapes offers 16 mg of vitamin C, which is about 27 percent of the daily value, based on a 2,000-calorie diet. It also contains 22 mcg of vitamin K and 0.4 mg of thiamin, which is about 28 percent and 27 percent of the daily value, respectfully. Red grapes also contain small amounts of vitamin E, vitamin A, vitamin K, pantothenic acid, vitamin B-6, folate, beta carotene and alpha carotene. These nutrients help your body processes function properly.</p>', '2022-01-31 08:47:00', '2022-01-31 08:47:00'),
(301, 305, 'English', 'Paka Pape ± 50 gm', '<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6965.4.0.1.0.1.4.$line-0\">\"One medium papaya has approximately:</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6965.4.0.1.0.1.4.$line-1\"> </p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6965.4.0.1.0.1.4.$line-2\">120 calories, 30 grams of carbohydrate – including 5 grams of fiber and 18 grams of sugar, 2 grams of protein</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6965.4.0.1.0.1.4.$line-3\">Papayas are also a good source of: folate, vitamin A, magnesium, copper, pantothenic, acid, fiber.</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6965.4.0.1.0.1.4.$line-4\"> </p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6965.4.0.1.0.1.4.$line-5\">They also have B vitamins, alpha and beta-carotene, lutein and zeaxanthin, vitamin E, calcium, potassium, vitamin K, and lycopene, the powerful antioxidant most commonly associated with tomatoes.\"</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6965.4.0.1.0.1.4.$line-6\"> </p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6965.4.0.1.0.1.4.$line-7\">Nutritional facts/Ingredients :The nutrients found in papaya are thought to have a range of health benefits. They may help protect against a number of health conditions such as Age-related macular degeneration, Asthma prevention, Cancer, Bone health, Diabetes, Digestion, Heart disease, Inflammation, Skin and healing, Hair health.</p>', '2022-01-31 08:50:28', '2022-01-31 08:50:28'),
(302, 306, 'English', 'Banana Sobri', '<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p23802.4.0.1.0.1.4.$line-0\">\"Bananas are one of the most popular fruits worldwide. They contain essential nutrients that can have a protective impact on health.</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p23802.4.0.1.0.1.4.$line-1\"> </p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p23802.4.0.1.0.1.4.$line-2\">Eating bananas can help lower blood pressure and may reduce the risk of cancer. Bananas are rich in the mineral potassium. Potassium helps maintain fluid levels in the body and regulates the movement of nutrients and waste products in and out of cells.</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p23802.4.0.1.0.1.4.$line-3\"> </p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p23802.4.0.1.0.1.4.$line-4\">Potassium also helps muscles to contract and nerve cells to respond. It keeps the heart beating regularly and can reduce the effect of sodium on blood pressure.\"</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p23802.4.0.1.0.1.4.$line-5\"> </p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p23802.4.0.1.0.1.4.$line-6\">Nutritional facts/Ingredients :</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p23802.4.0.1.0.1.4.$line-7\">\"Here are some tips for using bananas:</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p23802.4.0.1.0.1.4.$line-8\"> </p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p23802.4.0.1.0.1.4.$line-9\">-Add a sliced banana to your morning cereal or oatmeal for a more nutritious --breakfast.</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p23802.4.0.1.0.1.4.$line-10\">-Mash ripe bananas and use to replace butter or oil in baked goods.</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p23802.4.0.1.0.1.4.$line-11\">-Add mashed bananas to muffins, cookies, and cakes for a naturally sweet flavor.</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p23802.4.0.1.0.1.4.$line-12\">-Add bananas to a smoothie.</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p23802.4.0.1.0.1.4.$line-13\">-Take a banana to work or school for a healthful, portable snack.\"</p>', '2022-01-31 08:52:42', '2022-01-31 08:52:42'),
(303, 307, 'English', 'Daab (Green Coconut)', '<p>Green coconut or young coconut is a very popular fruit all over the world. Green coconut produces more water than the brown or mature coconut. It is a complete food rich in calories, vitamins, and minerals. One whole green coconut contains roughly 140 calories, 28 grams of carbohydrates, 2 grams fiber, 3 grams fat, and 2 grams of protein. Coconut water is a very refreshing drink to beat tropical summer thirst. It is also a very good source of B-complex vitamins. These vitamins are essential in the sense that body requires them from external sources to replenish. Coconut water contains a very good amount of potassium. Coconut’s water reduce the risk of heart disease, boost your daily energy.</p>', '2022-01-31 08:54:33', '2022-01-31 08:54:33'),
(304, 308, 'English', 'Orange Indian (± 50 gm)', '<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p13589.4.0.1.0.1.4.$line-0\">Fruit grown in warmer [climates] doesn\'t develop a deep orange color. Cold nighttime temperatures cause citrus to show deep orange color, and when the weather warms up again in late spring and early summer, the citrus tends to regreen</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p13589.4.0.1.0.1.4.$line-1\"> </p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p13589.4.0.1.0.1.4.$line-2\">Nutritional facts/Ingredients :\"Vitamin A 4% Vitamin C 88%</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p13589.4.0.1.0.1.4.$line-3\">Calcium 4% Iron 0%</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p13589.4.0.1.0.1.4.$line-4\">Vitamin D 0% Vitamin B-6 5%</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p13589.4.0.1.0.1.4.$line-5\">Cobalamin 0% Magnesium 2% \"</p>', '2022-01-31 08:56:15', '2022-01-31 08:56:15'),
(305, 309, 'English', 'Dalim (Pomegranate)', '<p>Pomegranate fruit is one of the most popular, nutritionally rich fruit with unique flavor, taste, and health promoting characteristics. The fruit is moderate in calories, holds about 83 calories per 100 grams; slightly more than that of in the apples. It contains no cholesterol or saturated fats. It is a good source of soluble and insoluble dietary fibers; providing about 4 grams per 100 g (about 12% of RDA). Dietary fiber aid in smooth digestion and bowel movements. The fruit is an also good source of antioxidant vitamin-C, provides about 17% per 100 g of daily requirement. Consumption of fruits rich in vitamin C helps the body develop resistance against infectious agents by boosting immunity. Pomegranate seeds make an attractive garnish on salads and dishes and fresh fruits make fantastic refreshing juice. Pomegranate juice can be employed to prepare soups, jellies, sorbets, sauces as well as to flavor cakes, baked apples and other desserts.</p>', '2022-01-31 08:58:18', '2022-01-31 08:58:18'),
(306, 310, 'English', 'Green Apple ± 50 gm', '<p>Green apples provide a huge range of health and beauty benefits, especially when compared to red apples. Green apple has some sweet and sour variety and amazing taste. Green apples possess glossy skin, along with a juicy flesh. They\'re high in fiber and help keep the digestive tract clean and healthy. Green apples are energy givers, contain both flavonoid and polyphenol, also can help prevent diarrhea. One of the major green apple benefits is the high fiber content. These high levels of fiber can help to reduce cholesterol. Green apple decreases chance of colon cancer. A 1-cup serving of green apple juice has 253 calories, with less than 1 gram of total fat. It also has 1.92 grams of protein and almost 42 grams of sugar. Because of this, a single serving of green apple juice has over 59 grams of carbohydrates.</p>', '2022-01-31 09:00:00', '2022-01-31 09:00:00'),
(307, 311, 'English', 'Gala Apple ± 50 gm', '', '2022-01-31 09:04:13', '2022-01-31 09:27:15'),
(308, 312, 'English', 'Cherry Pineapple (Cherry Anaros)', '', '2022-01-31 09:05:52', '2022-01-31 09:05:52'),
(309, 313, 'English', 'China Fuji Apple ± 50 gm', '<p>Apples are some of the most popular and delicious fruits on the planet. There are more than 7,500 varieties of this delicious fruit. China Fuji Apple is one of them. Fuji apples are typically round and range from large to very large, averaging 75 mm in diameter. They contain between 9–11% sugars by weight and have a dense flesh that is sweeter and crisper than many other apple cultivars, making them popular with consumers around the world. Fuji apples also have a very long shelf life compared to other apples, even without refrigeration. With refrigeration, Fuji apples can remain fresh for up to a year. Fuji apples are a variety of apple that originates in Japan. They are yellowish-green in color with red highlights. Harvested in September and October. Fuji apples are a healthy addition to most diets. They have no fat, sodium or cholesterol. A medium-sized apple weights about 154 grams and provides 80 calories. The FDA categorizes Fuji apples as a low-calorie food. Calories come from carbohydrates, proteins, fats and sugar. Any calories that your body does not use is stored as fat. A medium-sized Fuji apple also provides 170 milligrams of potassium. It offers 20 percent of the recommended daily value for vitamin C and 2 percent of the DV for vitamin A, calcium and iron, based on a 2,000-calorie diet.</p>', '2022-01-31 09:09:01', '2022-01-31 09:09:01'),
(310, 314, 'English', 'China Orange (± 40 gm)', '<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-0\">Mandarins are fruits of an evergreen shrub native to Asia that belongs to the family of Rutaceae and are thought to have originated in the forests of China. Mandarin oranges resemble a common orange in shape but are smaller in size and come with a thin peel. Clementine, Tangor and Satsuma, Owari are some of the most commonly available mandarin oranges. Mandarin oranges with red orange skins are the most commonly found mandarin and are properly known as tangerine.</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-1\"> </p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-2\">China oranges do much more than providing a pleasant taste. There are number of mandarin orange health benefits like preventing cancer and weight gain.\"</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-3\"> </p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-4\">Nutritional facts/Ingredients :</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-5\">\"Benefits:</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-6\">-Prevent Cancer</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-7\">-Great Source of Vitamin C</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-8\">-Solves Cholesterol Problems</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-9\">-Helps with Blood Pressure</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-10\">-Helps with Weight Loss</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-11\">-Develops Healthy Immune System</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-12\">-Develops Skin Health</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-13\">-Supplies Antioxidant</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-14\">-Glowing Skin</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-15\">-Improved Skin Tone</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-16\">-Fights Wrinkles</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p6013.4.0.1.0.1.4.$line-17\">-Heals Wounds\"</p>', '2022-01-31 09:11:39', '2022-01-31 09:11:39'),
(311, 315, 'English', 'Narikel (Coconut)', '<p>Coconut is one of very versatile and indispensable food item for millions of inhabitants in South and South-East Asia. It is one of the most sought-after ingredients in the kitchen since it employed in almost each and every recipe prepared in these parts of the world. Coconut is a very versatile and indispensable food item for most people under the tropical belt. It is a complete food rich in calories, vitamins, and minerals. A medium-size coconut carrying 400 g edible meat and some 30-150 ml of water may provide almost all the daily-required essential minerals, vitamins, and energy of an average-sized individual. Coconut water is a very refreshing drink to beat tropical summer thirst. The juice is packed with simple sugar, electrolytes, minerals, and bioactive compounds such as cytokinin, and enzymes such as acid phosphatase, catalase, dehydrogenase, peroxidase, polymerases, etc. Altogether, these enzymes aid in digestion and metabolism. It is also a very good source of B-complex vitamins such as folates, riboflavin, niacin, thiamin, and pyridoxine. These vitamins are essential in the sense that body requires them from external sources to replenish. Coconut meat and water contain a very good amount of potassium. 100 g of fresh meat contains 356 mg% or 7.5% of daily required levels of potassium. A full-sized coconut weighs about 1.44 kg (3.2 lb).</p>', '2022-01-31 09:13:24', '2022-01-31 09:13:24'),
(312, 316, 'English', 'Amra (Hog Plum) ± 50 gm', '<p>Hog plums are rich in vitamin C, which, in addition to being an essential vitamin, is a natural antioxidant, protecting your body from damage caused by free radicals, potentially reducing your risk of heart disease. A 100-gram portion of hog plums has 46.4 milligrams of vitamin C per serving. This provides 39 to 49 percent of the daily intake needed each day. Vitamin C gives support to your immune system, and it helps with the production of collagen, which keeps your skin, ligaments, tendons and cartilage healthy. A 100-gram serving of hog plums has 2.8 milligrams of iron. This provides 15.5 to 35 percent of the recommended intake of iron per day. Iron is essential for overall health and body function because it is needed to produce hemoglobin and myoglobin, both of which carry oxygen throughout your body. Hemoglobin is stored in red blood cells, so having enough iron in your diet is key for red blood cell production. The fruits can be eaten raw and whole as a snack, but people are commonly made into fresh juices, or used to jams and jellies. In Bangladesh, unripe hog plums are pickled to make a sour-spicy side dish.</p>', '2022-01-31 09:17:40', '2022-01-31 09:17:40'),
(313, 317, 'English', 'Shada Nashpati (Pear White)', '<p>Pears are valuable fruits that have been widely used and savored for their delicious flavor since ancient times. Pear has a unique nutrient qualities. Pears fruit is packed with health benefiting nutrients such as dietary fiber, anti-oxidants, minerals and vitamins, which are necessary for optimum health also Pears are a good source of dietary fiber. 100 gm fruit provides 3.1 gm or 8% of fiber per 100 gm. Regular eating of this fruit may offer protection against colon cancer. In addition, pear fruit is one of the very low calorie fruits; provides just 58 calories per 100gm. They contain good quantities of vitamin C. Fresh fruits provide about 7% of RDA per 100 gm. The fruit is a good source of minerals such as copper, iron, potassium, manganese and magnesium as well as B-complex vitamins such as folates, riboflavin and pyridoxine (vitamin B-6). Pears have been suggested in various traditional medicines in the treatment of colitis, chronic gallbladder disorders, arthritis, and gout.</p>', '2022-01-31 09:19:43', '2022-01-31 09:19:43'),
(314, 318, 'English', 'Sugar Apple (Ata Phol)', '', '2022-01-31 09:21:35', '2022-01-31 09:21:35'),
(315, 319, 'English', 'Jambura (Pomelo)', '', '2022-01-31 09:23:35', '2022-01-31 09:23:35'),
(316, 320, 'English', 'Potato Regular (± 50 gm)', '<p>Buy regular potato from us which provides you with dietary fiber, potassium, vitamins, etc. Regular potato provides 9-10 percent of your daily need. Regular potatoes offer more of this nutrient which helps control your blood pressure. Make a good curry with regular potato. You can make French fries and you can enjoy with your family members.</p>', '2022-01-31 09:38:05', '2022-01-31 09:38:05'),
(317, 321, 'English', 'Deshi Peyaj (Local Onion) ± 50 gm', '<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-0\">\"Though all vegetables are important for health, certain kinds offer unique benefits.</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-1\"> </p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-2\">Onions are members of the Allium genus of flowering plants that also includes garlic, shallots, leeks and chives.</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-3\"> </p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-4\">These vegetables contain various vitamins, minerals and potent plant compounds that have been shown to promote health in many ways.</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-5\"> </p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-6\">In fact, the medicinal properties of onions have been recognized since ancient times, when they were used to treat ailments like headaches, heart disease and mouth sores.\"</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-7\"> </p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-8\">Nutritional facts/Ingredients :</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-9\">\"Benefits:</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-10\">-Packed With Nutrients</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-11\">-May Benefit Heart Health</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-12\">-Loaded With Antioxidants</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-13\">-Contain Cancer-Fighting Compounds</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-14\">-Help Control Blood Sugar</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-15\">-May Boost Bone Density</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-16\">-Have Antibacterial Properties</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-17\">-May Boost Digestive Health</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p19987.4.0.1.0.1.4.$line-18\">-Easy to Add to Your Diet\"</p>', '2022-01-31 09:39:45', '2022-01-31 09:39:45'),
(318, 322, 'English', 'Lal Peyaj (Onion Red Imported) ± 50 gm', '', '2022-01-31 09:41:36', '2022-01-31 09:41:36'),
(319, 323, 'English', 'Fulkopi (Cauliflower)', '<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p16371.4.0.1.0.1.4.$line-0\">\"Cauliflower is as good a source of fiber and vitamins.</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p16371.4.0.1.0.1.4.$line-1\">Its ingredients may help strengthen bones, boost the cardiovascular system, and prevent cancer.</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p16371.4.0.1.0.1.4.$line-2\">Tasty ways of eating cauliflower include cauliflower crust pizza and cauliflower and cheese soup.</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p16371.4.0.1.0.1.4.$line-3\">People who are using blood thinners should not suddenly start eating a lot of cauliflower because the high levels of vitamin K could react adversely with the drugs.\"</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p16371.4.0.1.0.1.4.$line-4\"> </p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p16371.4.0.1.0.1.4.$line-5\">Nutritional facts/Ingredients :</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p16371.4.0.1.0.1.4.$line-6\">\"Benefits:</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p16371.4.0.1.0.1.4.$line-7\">-Helps With Digestion</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p16371.4.0.1.0.1.4.$line-8\">-Helps Fight Cancer</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p16371.4.0.1.0.1.4.$line-9\">-Sharpen Your memory</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p16371.4.0.1.0.1.4.$line-10\">-Makes your bones Stronger</p>\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p16371.4.0.1.0.1.4.$line-11\">\"</p>', '2022-01-31 09:43:48', '2022-01-31 09:43:48'),
(320, 324, 'English', 'Red Tomato ± 25 gm', '<p>The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.</p>', '2022-01-31 09:45:50', '2022-01-31 09:45:50'),
(321, 325, 'English', 'Coriander Leaves (Dhonia Pata) ± 10 gm', '<p>Locally sourced. With its sweet, bright aroma, fresh coriander is used a lot in cooking. Also known as Chinese parsley use it raw or cooked in curries, soups and salads. Its assertive taste stands up well to mild-flavored foods. Goes well with all kinds of meat and fish.</p>', '2022-01-31 09:47:53', '2022-01-31 09:47:53'),
(322, 326, 'English', 'Kacha Morich (Green Chilli) ±12 gm', '<div class=\"lightboxContent\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p5592.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p5592.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p5592.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p5592.4.0.1.0.1.4\">\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p5592.4.0.1.0.1.4.$line-0\">The heat of chilies is stored mostly in the seeds and membranes, so remove these to remove the heat.Chilies matches well with bananas, beans, chutneys, corn, fruit, ketchup, pineapple and rice. These smaller the chilies are slightly milder.</p>\r\n</div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p5592.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p5592.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p5592.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p5592.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p5592.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer>', '2022-01-31 09:53:32', '2022-01-31 09:53:32'),
(323, 327, 'English', 'Notun Alu (Potato Seasonal) ± 50 gm', '<div class=\"lightboxContent\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p13726.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p13726.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p13726.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p13726.4.0.1.0.1.4\">\r\n<p data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p13726.4.0.1.0.1.4.$line-0\">New potatoes have wispy skins, thin, and a crisp, waxy texture. They are young potatoes and unlike their fully grown counterparts, they keep their shape once cooked and cut. They are also sweeter because their sugar has not yet converted into starch. So, when you fry it, it will be tasted sweeter. So, make new recipes with new potato from chaldal.</p>\r\n</div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p13726.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p13726.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p13726.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p13726.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".2357xz159my.8.2.0.0.0.0.2.5.1.0:$p13726.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer>', '2022-01-31 09:55:55', '2022-01-31 09:55:55'),
(324, 328, 'English', 'Boro Alu (Big Diamond Potato) ± 50 gm', '<div class=\"lightboxContent\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5937.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5937.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5937.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5937.4.0.1.0.1.4\">\r\n<div class=\"lightboxContent\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5594.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5594.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5594.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5594.4.0.1.0.1.4\">\r\n<p data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5594.4.0.1.0.1.4.$line-0\">Potato is a very healthy food and popular vegetable all over the world. Potatoes are available year-round as they are harvested somewhere every month of the year. potato\'s have lots of variety. these Potatoes are comparatively bigger than regular Potatoes. potatoes contain a goodly amount of carbohydrate (starch and sugar) they are also a storehouse for many vitamins and minerals. With the exception of vitamin A, potatoes have at least some of just about every nutrient, including fiber. Potatoes are relatively low in calories.</p>\r\n</div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5594.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5594.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5594.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5594.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5594.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer></div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5937.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5937.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5937.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5937.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p5937.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer>', '2022-01-31 10:00:31', '2022-01-31 10:00:31');
INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `description`, `created_at`, `updated_at`) VALUES
(325, 329, 'English', 'Deshi Gajor (Local Carrot) ± 25 gm', '<div class=\"lightboxContent\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p6297.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p6297.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p6297.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p6297.4.0.1.0.1.4\">\r\n<p data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p6297.4.0.1.0.1.4.$line-0\">Fresh Carrots pre-packed for your convenience. Carrots are an excellent source of vitamin a and they help promote heart, eye, brain, skin and liver health. Best eaten raw for maximum health benefits.</p>\r\n</div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p6297.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p6297.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p6297.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p6297.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p6297.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer>', '2022-01-31 10:04:01', '2022-01-31 10:04:01'),
(326, 330, 'English', 'Roshun (Garlic Imported) ± 25 gm', '<div class=\"lightboxContent\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p8103.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p8103.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p8103.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p8103.4.0.1.0.1.4\">\r\n<p data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p8103.4.0.1.0.1.4.$line-0\">Garlic is an excellent source of minerals and vitamins that are essential for optimum health. The bulbs are one of the richest sources of potassium, iron, calcium, magnesium, manganese, zinc, and selenium. Selenium is a heart-healthy mineral, and is an important cofactor for antioxidant enzymes within the body.</p>\r\n</div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p8103.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p8103.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p8103.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p8103.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p8103.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer>', '2022-01-31 10:05:40', '2022-01-31 10:05:40'),
(327, 331, 'English', 'Deshi Roshun (Garlic Local) ±25 gm', '<div class=\"lightboxContent\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p11694.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p11694.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p11694.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p11694.4.0.1.0.1.4\">\r\n<p data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p11694.4.0.1.0.1.4.$line-0\">Garlic is an excellent source of minerals and vitamins that are essential for optimum health. The bulbs are one of the richest sources of potassium, iron, calcium, magnesium, manganese, zinc, and selenium. Selenium is a heart-healthy mineral, and is an important cofactor for antioxidant enzymes within the body.</p>\r\n</div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p11694.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p11694.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p11694.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p11694.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".19l4kjc3zsw.8.2.0.0.0.0.2.5.1.0:$p11694.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer>', '2022-01-31 10:09:17', '2022-01-31 10:09:17'),
(328, 332, 'English', 'Goodlife Mozzarella Cheese', '', '2022-02-01 09:08:05', '2022-02-01 09:08:05'),
(329, 333, 'English', 'Aarong Dairy Austagram Cheese', '', '2022-02-01 09:08:41', '2022-02-01 09:08:41'),
(330, 334, 'English', 'Aarong Dairy Paneer', '<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p22272.4.0.1.0.1.4.$line-0\">Paneer is a fresh, creamy, normally unsalted cheese. It is made by curdling hot milk using lemon juice, citric acid or vinegar. The result is a soft, fluffy cheese that is firm and can be cut into slices, pieces or blocks as required but doesn’t crumble easily. The texture is firm and has the ability to retain its shape for a long time, even when it’s cooked or baked over high heat.</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p22272.4.0.1.0.1.4.$line-1\">CATEGORIES: PONIR, CHEESE</p>', '2022-02-01 09:09:37', '2022-02-01 09:09:37'),
(332, 336, 'English', 'Melbourne Sandwich Sliced Cheese (12 slices)', '', '2022-02-01 09:10:28', '2022-02-01 09:10:28'),
(333, 337, 'English', 'Aarong Dairy Cheese Sliced Classic', '', '2022-02-01 09:11:36', '2022-02-01 09:11:36'),
(334, 338, 'English', 'Almarai Triangles Cheese (8 Slices)', '', '2022-02-01 09:12:20', '2022-02-01 09:12:20'),
(335, 339, 'English', 'Aarong Dairy Pasteurized Full Cream Liquid Milk', '<div class=\"lightboxContent\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.1.0.1.4\">\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.1.0.1.4.$line-0\">Milk is the best source for calcium. And it keeps skin soft and glowing. And in order to improve proper growth, you can have Aarong Dairy Full Cream Liquid Milk. Brand: Aarong Dairy. Milk Type: Liquid. Net weight 1 Ltr.</p>\r\n</div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer>', '2022-02-01 09:13:14', '2022-02-01 09:13:14'),
(336, 340, 'English', 'Aarong Dairy Pasteurized Full Cream Liquid Milk', '<div class=\"lightboxContent\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.1.0.1.4\">\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.1.0.1.4.$line-0\">Milk is the best source for calcium. And it keeps skin soft and glowing. And in order to improve proper growth, you can have Aarong Dairy Full Cream Liquid Milk. Brand: Aarong Dairy. Milk Type: Liquid. Net weight 1 Ltr.</p>\r\n</div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2111.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer>', '2022-02-01 09:13:15', '2022-02-01 09:13:15'),
(337, 341, 'English', 'Aarong Dairy Shredded Mozzarella Cheese', '', '2022-02-01 09:13:17', '2022-02-01 09:13:17'),
(338, 342, 'English', 'Bega Smokey BBQ Slice', '', '2022-02-01 09:14:04', '2022-02-01 09:14:04'),
(339, 343, 'English', 'Aarong Dairy UHT Chocolate Milk', '<div class=\"lightboxContent\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p14530.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p14530.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p14530.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p14530.4.0.1.0.1.4\">\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p14530.4.0.1.0.1.4.$line-0\">Packed with protein and calcium, these are treats you can feel good about serving your child.</p>\r\n</div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p14530.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p14530.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p14530.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p14530.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p14530.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer>', '2022-02-01 09:15:15', '2022-02-01 09:15:15'),
(340, 344, 'English', 'Bega Slice Cheese', '', '2022-02-01 09:15:21', '2022-02-01 09:15:21'),
(341, 345, 'English', 'Pran UHT Milk', '<div class=\"lightboxContent\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3967.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3967.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3967.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3967.4.0.1.0.1.4\">\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3967.4.0.1.0.1.4.$line-0\">UHT Milk is one of the most popular milks to the people who wants to maintain a balanced and healthy life.Pran UHT Milk gives us a proper combination of nutrition and good taste. It is enriched with many essential nutrients like potassium,zinc,carbohydrates,protein etc.If we want to have a long healthy life,we can certainly take this fresh full cream milk.</p>\r\n</div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3967.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3967.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3967.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3967.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3967.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer>', '2022-02-01 09:17:00', '2022-02-01 09:17:00'),
(342, 346, 'English', 'Pran UHT Milk', '<div class=\"lightboxContent\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p16182.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p16182.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p16182.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p16182.4.0.1.0.1.4\">\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p16182.4.0.1.0.1.4.$line-0\">UHT Milk is one of the most popular milks to the people who wants to maintain a balanced and healthy life.Pran UHT Milk gives us a proper combination of nutrition and good taste. It is enriched with many essential nutrients like potassium,zinc,carbohydrates,protein etc.If we want to have a long healthy life,we can certainly take this fresh full cream milk.</p>\r\n</div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p16182.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p16182.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p16182.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p16182.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p16182.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer>', '2022-02-01 09:18:42', '2022-02-01 09:18:42'),
(343, 347, 'English', 'Kisan Processed Cheese', '', '2022-02-01 09:18:55', '2022-02-01 09:18:55'),
(344, 348, 'English', 'Pran Pasteurized Liquid Milk', '', '2022-02-01 09:20:05', '2022-02-01 09:20:05'),
(345, 349, 'English', 'Aarong Dairy UHT Full Cream Liquid Milk', '<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p8846.4.0.1.0.1.4.$line-0\">Aarong Dairy UHT (Ultra High Temperature) Milk is full cream milk that is long life fresh milk sterilized at high temperature without any preservative. It’s directly drinkable that requires no boiling.</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p8846.4.0.1.0.1.4.$line-1\">Share and Enjoy!</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p8846.4.0.1.0.1.4.$line-2\">CATEGORIES: UHT MILK, LIQUID MILK</p>', '2022-02-01 09:21:56', '2022-02-01 09:21:56'),
(346, 350, 'English', 'Amul Cheese Slice', '<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p22862.4.0.1.0.1.4.$line-0\">10 Slices</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p22862.4.0.1.0.1.4.$line-1\"> </p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p22862.4.0.1.0.1.4.$line-2\"> </p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p22862.4.0.1.0.1.4.$line-3\"> </p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p22862.4.0.1.0.1.4.$line-4\">Amul pasteurized processed cheddar cheese is made from cheese, sodium citrate, common salt, citric acid, permitted natural colour – annatto.</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p22862.4.0.1.0.1.4.$line-5\"> </p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p22862.4.0.1.0.1.4.$line-6\">Emulsifier and class II preservatives. It is made from graded cow/buffalo milk using microbial rennet.</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p22862.4.0.1.0.1.4.$line-7\"> </p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p22862.4.0.1.0.1.4.$line-8\">Origin: India</p>', '2022-02-01 09:22:33', '2022-02-01 09:22:33'),
(347, 351, 'English', 'Aarong Dairy Cheese Spread Pizza', '<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15662.4.0.1.0.1.4.$line-0\">Origin: Bangladesh</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15662.4.0.1.0.1.4.$line-1\">Manufacturer: Aarong dairy</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15662.4.0.1.0.1.4.$line-2\">Smooth and creamy cheese with pizza flavor. One can spread it on bread for a quick breakfast or snacks or add extra taste to any food.</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15662.4.0.1.0.1.4.$line-3\">Composition:</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15662.4.0.1.0.1.4.$line-4\">Milk Solids, Water, Cheese, Emulsifiers (INS 452(i), INS 331(iii), INS 339(iii)), Iodised Salt, , Preservative(INS 200), Acidity Regulator (INS 270, INS 260),Stabilizer (INS 412).</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15662.4.0.1.0.1.4.$line-5\">CONTAINS ADDED FLAVOUR (NATURE-IDENTICAL FLAVOURING SUBSTANCES).</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15662.4.0.1.0.1.4.$line-6\"> </p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15662.4.0.1.0.1.4.$line-7\">Nutrition: Protein, Energy, Milk fat, Carbohydrate</p>', '2022-02-01 09:24:30', '2022-02-01 09:24:30'),
(348, 352, 'English', 'Bega Gourmet Slices Cheese', '', '2022-02-01 09:25:21', '2022-02-01 09:25:21'),
(349, 353, 'English', 'Aarong Dairy Low Fat Liquid Milk', '<div class=\"lightboxContent\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p6658.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p6658.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p6658.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p6658.4.0.1.0.1.4\">\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p6658.4.0.1.0.1.4.$line-0\">Collected from homestead dairy farmers across Bangladesh every day, the milk is pasteurized to keep it healthy, fresh-tasting and flavorful.</p>\r\n</div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p6658.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p6658.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p6658.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p6658.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p6658.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer>', '2022-02-01 09:25:30', '2022-02-01 09:25:30'),
(350, 354, 'English', 'Farm Fresh UHT Milk', '', '2022-02-01 09:26:58', '2022-02-01 09:26:58'),
(351, 355, 'English', 'Aarong Dairy Sour Yogurt', '<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p2115.4.0.1.0.1.4.$line-0\">Brac Dairy &amp; Food Project</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p2115.4.0.1.0.1.4.$line-1\"> </p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p2115.4.0.1.0.1.4.$line-2\">1. Boosts Immunity Level</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p2115.4.0.1.0.1.4.$line-3\">2. Prevents Cold</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p2115.4.0.1.0.1.4.$line-4\">3. Better Digestion</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p2115.4.0.1.0.1.4.$line-5\">4. Strengthen The Bones</p>', '2022-02-01 09:27:56', '2022-02-01 09:27:56'),
(352, 356, 'English', 'Pran Flavored Chocolate Milk (Pouch)', '', '2022-02-01 09:28:25', '2022-02-01 09:28:25'),
(353, 357, 'English', 'Aarong Dairy Low Fat Yogurt (Sour)', '<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p13790.4.0.1.0.1.4.$line-0\">Delicious, creamy and smooth, made from fresh milk collected every day from homestead dairy farmers across Bangladesh. It is completely natural, free of artificial ingredients and preservatives.</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p13790.4.0.1.0.1.4.$line-1\">Share and Enjoy!</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p13790.4.0.1.0.1.4.$line-2\">CATEGORIES: LOW FAT YOGHURT, YOGHURT, LOW FAT PRODUCTS</p>', '2022-02-01 09:29:06', '2022-02-01 09:29:06'),
(354, 358, 'English', 'Danish Ayran Sour Yogurt 500 ml', '', '2022-02-01 09:29:50', '2022-02-01 09:29:50'),
(355, 359, 'English', 'Aarong Dairy Strawberry Yogurt UHT Milk', '<div class=\"lightboxContent\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p15175.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p15175.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p15175.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p15175.4.0.1.0.1.4\">\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p15175.4.0.1.0.1.4.$line-0\">Packed with protein and calcium, these are treats you can feel good about serving your child.</p>\r\n</div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p15175.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p15175.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p15175.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p15175.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p15175.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer>', '2022-02-01 09:30:07', '2022-02-01 09:30:07'),
(356, 360, 'English', 'Shokti+ Mishti Doi', '', '2022-02-01 09:30:41', '2022-02-01 09:30:41'),
(357, 361, 'English', 'Pran Flavored Mango Milk (Pouch)', '', '2022-02-01 09:31:40', '2022-02-01 09:31:40'),
(358, 362, 'English', 'Aarong Dairy Sweetened Yogurt', '<p>Delicious, creamy and smooth, made from fresh milk collected every day from homestead dairy farmers across Bangladesh. It is completely natural, free of artificial ingredients and preservatives.</p>', '2022-02-01 09:31:51', '2022-02-01 09:31:51'),
(359, 363, 'English', 'Pran Sweet Yogurt', '', '2022-02-01 09:32:32', '2022-02-01 09:32:32'),
(360, 364, 'English', 'Milk Vita Sour Curd', '', '2022-02-01 09:33:36', '2022-02-01 09:33:36'),
(361, 365, 'English', 'Pran UHT Milk', '<div class=\"lightboxContent\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3966.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3966.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3966.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3966.4.0.1.0.1.4\">\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3966.4.0.1.0.1.4.$line-0\">UHT Milk is one of the most popular milks to the people who wants to maintain a balanced and healthy life.Pran UHT Milk gives us a proper combination of nutrition and good taste. It is enriched with many essential nutrients like potassium,zinc,carbohydrates,protein etc.If we want to have a long healthy life,we can certainly take this fresh full cream milk.</p>\r\n</div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3966.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3966.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3966.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3966.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3966.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer>', '2022-02-01 09:33:53', '2022-02-01 09:33:53'),
(362, 366, 'English', 'Shokti+ Sweet Yogurt Strawberry 4 Pcs Combo Box', '<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15304.4.0.1.0.1.4.$line-0\">Origin: Bangladesh</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15304.4.0.1.0.1.4.$line-1\">Manufacturer: Grameen-Danone foods</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15304.4.0.1.0.1.4.$line-2\">Unique fortified yogurt for little ones. Enriched with iodin, iron, zinc and vitamin A.</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15304.4.0.1.0.1.4.$line-3\">Iron increases blood.</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15304.4.0.1.0.1.4.$line-4\">Vitamin A improves eyesight</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15304.4.0.1.0.1.4.$line-5\">Iodin helps in brain development</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15304.4.0.1.0.1.4.$line-6\">Zinc maintains physical fitness</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15304.4.0.1.0.1.4.$line-7\">Probiotic keeps gut healthy</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15304.4.0.1.0.1.4.$line-8\">Strawberry flavoured yogurt</p>\r\n<p data-reactid=\".h1m0jx47vm.8.2.0.0.0.0.2.5.1.0:$p15304.4.0.1.0.1.4.$line-9\">Fullfills 30% of daily needs</p>', '2022-02-01 09:34:36', '2022-02-01 09:34:36'),
(363, 367, 'English', 'Pran Matha', '', '2022-02-01 09:35:23', '2022-02-01 09:35:23'),
(364, 368, 'English', 'Aarong Dairy Laban', '<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23740.4.0.1.0.1.4.$line-0\">Aarong Dairy’s milk-based beverages are tasty and nutritious. It adds a whole lot of goodness to every occasion.</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23740.4.0.1.0.1.4.$line-1\">Share and Enjoy!</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23740.4.0.1.0.1.4.$line-2\">CATEGORIES: LABAN, YOGHURT DRINKS</p>', '2022-02-01 09:35:51', '2022-02-01 09:35:51'),
(365, 369, 'English', 'Aarong Dairy Matha', '<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23741.4.0.1.0.1.4.$line-0\">Aarong Dairy’s milk-based beverages are tasty and nutritious. It adds a whole lot of goodness to every occasion.</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23741.4.0.1.0.1.4.$line-1\">Share and Enjoy!</p>', '2022-02-01 09:37:41', '2022-02-01 09:37:41'),
(366, 370, 'English', 'Danish Ayran Pasteurized Full Cream Liquid Milk', '<div class=\"lightboxContent\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22337.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22337.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22337.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22337.4.0.1.0.1.4\">\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22337.4.0.1.0.1.4.$line-0\">Milk is the best source for calcium. And it keeps skin soft and glowing. And in order to improve proper growth,</p>\r\n</div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22337.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22337.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22337.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22337.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22337.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer>', '2022-02-01 09:39:35', '2022-02-01 09:39:35'),
(367, 371, 'English', 'Cowhead Pure UHT Milk', '<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2186.4.0.1.0.1.4.$line-0\">Origin: Australia</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2186.4.0.1.0.1.4.$line-1\">100% natural and fresh cow milk.</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2186.4.0.1.0.1.4.$line-2\">Full cream milk.</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2186.4.0.1.0.1.4.$line-3\">Minimum 32% fat</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2186.4.0.1.0.1.4.$line-4\">UHT processed to maintain long life and retain the qualities and flavor of milk.</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2186.4.0.1.0.1.4.$line-5\">Nutrition: Energy, protein, trans and saturated fats, sodium, calcium, dietary fibre, cholesterol, carbohydrate.</p>', '2022-02-01 09:41:52', '2022-02-01 09:41:52'),
(368, 372, 'English', 'Arla Dano Daily Pusti Milk Powder', '', '2022-02-01 09:44:55', '2022-02-01 09:44:55'),
(369, 373, 'English', 'Goalini Full Cream Milk Powder', '<div class=\"lightboxContent\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4\">\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-0\">Product Type: Full Cream Milk Powder</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-1\">Brand: Goalini</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-2\">Capacity: 1kg</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-3\">Premium Quality</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-4\">Technology : Switzerland, Buhler</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-5\">Simple, easy to use</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-6\">Add water for instant use</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-7\">Provides all the benefits of fresh full cream milk in convenient powder form</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-8\">Useful for baking, ice-cream, desserts, etc</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-9\">Creamy flavor</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-10\">Packed with essential vitamins, minerals</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-11\">Calcium</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-12\">Vitamin D</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-13\">Phosphorous</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-14\">Potassium</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-15\">Vitamin A &amp; B</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-16\">Iodine\"</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.1.0.1.4.$line-17\"> </p>\r\n</div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p23055.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer>', '2022-02-01 09:46:53', '2022-02-01 09:46:53'),
(370, 374, 'English', 'Diploma Full Cream Milk Powder', '<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2207.4.0.1.0.1.4.$line-0\">Diploma Instant Full Cream Milk Powder provides all the cooking benefits of fresh full cream milk in a convenient powdered form.</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2207.4.0.1.0.1.4.$line-1\">No need to refrigerate and it’s simple and easy to use – just add water for instant milk.</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2207.4.0.1.0.1.4.$line-2\">A useful flavour enhancer for soups, creamy sauces, curries or desserts.</p>\r\n<p> </p>', '2022-02-01 09:48:35', '2022-02-01 09:48:35'),
(371, 375, 'English', 'Odonil Air Freshener Mix Fragrance', '', '2022-02-01 09:49:03', '2022-02-01 09:49:03'),
(372, 376, 'English', 'Arla Dano Daily Pusti Milk Powder', '', '2022-02-01 09:50:21', '2022-02-01 09:50:21'),
(373, 377, 'English', 'Danish Condensed Filled Milk', '<div class=\"lightboxContent\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3374.4.0.1\">\r\n<article class=\"productDetails\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3374.4.0.1.0\">\r\n<section class=\"right\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3374.4.0.1.0.1\">\r\n<div class=\"details\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3374.4.0.1.0.1.4\">\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3374.4.0.1.0.1.4.$line-0\">Danish sweetened condensed filled milk is scientifically processed under hygienic conditions using skimmed milk powder, refined sugar and edible vegetable fat. It is homogenised and pasteurised to guarantee the quality. Danish sweetened condensed filled milk adds taste and flavor to Tea, Coffee and Milk beverage. You can also use it in Pudding.</p>\r\n</div>\r\n</section>\r\n</article>\r\n</div>\r\n<footer id=\"footer\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3374.4.0.2\">\r\n<section class=\"footer-banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3374.4.0.2.0\">\r\n<div class=\"banner\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3374.4.0.2.0.0\">\r\n<div class=\"wrap\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3374.4.0.2.0.0.0\">\r\n<div class=\"left-area\" data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p3374.4.0.2.0.0.0.0\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</footer>', '2022-02-01 09:53:03', '2022-02-01 09:53:03'),
(374, 378, 'English', 'Goalini Full Cream Milk Powder', '<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22183.4.0.1.0.1.4.$line-0\">Product Type: Full Cream Milk Powder</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22183.4.0.1.0.1.4.$line-1\">Brand: Goalini</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22183.4.0.1.0.1.4.$line-2\">Capacity: 500gm</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22183.4.0.1.0.1.4.$line-3\">Premium Quality</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22183.4.0.1.0.1.4.$line-4\">Technology : Switzerland, Buhler</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22183.4.0.1.0.1.4.$line-5\">Simple, easy to use</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22183.4.0.1.0.1.4.$line-6\">Add water for instant use</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22183.4.0.1.0.1.4.$line-7\">Provides all the benefits of fresh full cream milk in convenient powder form</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22183.4.0.1.0.1.4.$line-8\">Useful for baking, ice-cream, desserts, etc</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22183.4.0.1.0.1.4.$line-9\">Creamy flavor</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22183.4.0.1.0.1.4.$line-10\">Packed with essential vitamins, minerals</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22183.4.0.1.0.1.4.$line-11\">Calcium</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22183.4.0.1.0.1.4.$line-12\">Vitamin D</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22183.4.0.1.0.1.4.$line-13\">Phosphorous</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22183.4.0.1.0.1.4.$line-14\">Potassium</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22183.4.0.1.0.1.4.$line-15\">Vitamin A &amp; B</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p22183.4.0.1.0.1.4.$line-16\">Iodine\"</p>', '2022-02-01 10:13:07', '2022-02-01 10:13:07'),
(375, 379, 'English', 'Diploma Full Cream Milk Powder', '<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2205.4.0.1.0.1.4.$line-0\">Diploma Instant Full Cream Milk Powder provides all the cooking benefits of fresh full cream milk in a convenient powdered form.</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2205.4.0.1.0.1.4.$line-1\">No need to refrigerate and it’s simple and easy to use – just add water for instant milk.</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2205.4.0.1.0.1.4.$line-2\">A useful flavour enhancer for soups, creamy sauces, curries or desserts.</p>', '2022-02-01 10:16:06', '2022-02-01 10:16:06'),
(376, 380, 'English', 'Starship Milk Powder', '', '2022-02-01 10:17:50', '2022-02-01 10:17:50'),
(377, 381, 'English', 'Dano Power Instant Full Cream Milk Powder', '', '2022-02-01 10:20:07', '2022-02-01 10:20:07'),
(378, 382, 'English', 'Marks Milk Powder Poly', '', '2022-02-01 10:21:40', '2022-02-01 10:21:40'),
(379, 383, 'English', 'Nestle Coffee Mate Coffee Creamer Box', '<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2324.4.0.1.0.1.4.$line-0\">Coffee and NESTLÉ COFFEE-MATE together bring out the best in each other.</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2324.4.0.1.0.1.4.$line-1\">It’s a non-dairy creamer that makes your coffee richer, smoother, and creamier.</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2324.4.0.1.0.1.4.$line-2\">Allows you to customize your personal taste and the right coffee color.</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2324.4.0.1.0.1.4.$line-3\">It’s the perfect partner for your coffee.</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2324.4.0.1.0.1.4.$line-4\">Net Weight: 450g</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2324.4.0.1.0.1.4.$line-5\">Origin: Thailand</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2324.4.0.1.0.1.4.$line-6\">Packed &amp; Marketed by Nestlé Bangladesh Limited.</p>', '2022-02-01 10:23:43', '2022-02-01 10:23:43'),
(380, 384, 'English', 'Dano Sterilized Cream', '', '2022-02-01 10:26:51', '2022-02-01 10:26:51'),
(381, 385, 'English', 'Nestle Nido Fortigrow Full Cream Milk Powder', '<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2334.4.0.1.0.1.4.$line-0\">NIDO Fortigrow- World’s no 1 selling milk powder which ensures proper nutrition for children above 5 years old.</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2334.4.0.1.0.1.4.$line-1\"> </p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2334.4.0.1.0.1.4.$line-2\">It has Iron, Vitamin A, C &amp; D which help to maintain your child\'s normal immune function and overall growth</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2334.4.0.1.0.1.4.$line-3\"> </p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2334.4.0.1.0.1.4.$line-4\">#Source: Euromonitor International Limited; Packaged Food 2019 Edition; NIDO brand shares by umbrella brand name, as per powder milk definition; all retail channels; retail value rsp. 2018 data.</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2334.4.0.1.0.1.4.$line-5\"> </p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2334.4.0.1.0.1.4.$line-6\">Net Weight: 700g</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2334.4.0.1.0.1.4.$line-7\"> </p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2334.4.0.1.0.1.4.$line-8\">Origin: New Zealand</p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2334.4.0.1.0.1.4.$line-9\"> </p>\r\n<p data-reactid=\".b0azul0sfm.8.2.0.0.0.0.2.5.1.0:$p2334.4.0.1.0.1.4.$line-10\">Marketed by Nestlé Bangladesh Limited.</p>', '2022-02-01 11:03:30', '2022-02-01 11:03:30'),
(382, 386, 'English', 'Diploma Full Cream Milk Powder', '', '2022-02-01 11:05:16', '2022-02-01 11:05:16'),
(383, 387, 'English', 'ACI Pure Turmeric Powder', '', '2022-02-03 07:18:11', '2022-02-09 04:32:58'),
(384, 388, 'English', 'ACI Pure Turmeric Powder', '', '2022-02-03 07:19:33', '2022-02-09 04:32:43'),
(385, 389, 'English', 'ACI Pure Turmeric Powder', '', '2022-02-03 07:22:52', '2022-02-09 04:32:29'),
(386, 390, 'English', 'ACI Pure Turmeric Powder', '', '2022-02-03 07:23:43', '2022-02-09 04:32:15'),
(387, 391, 'English', 'ACI Pure Powder Chilli', '', '2022-02-03 07:28:44', '2022-02-09 06:30:00'),
(388, 392, 'English', 'ACI Pure Powder Chilli', '', '2022-02-03 07:29:56', '2022-02-09 06:30:08'),
(389, 393, 'English', 'ACI Pure Powder Chilli', '', '2022-02-03 07:30:47', '2022-02-09 06:29:52'),
(390, 394, 'English', 'ACI Pure Powder Chilli', '', '2022-02-03 07:31:30', '2022-02-09 04:31:22'),
(391, 395, 'English', 'ACI Pure Coriander Powder', '', '2022-02-03 07:34:21', '2022-02-09 06:28:37'),
(392, 396, 'English', 'ACI Pure Coriander Powder', '', '2022-02-03 07:38:06', '2022-02-09 06:28:30'),
(394, 398, 'English', 'ACI Pure Coriander Powder', '', '2022-02-03 07:44:00', '2022-02-09 04:30:22'),
(395, 399, 'English', 'ACI Pure Cumin Powder', '', '2022-02-03 07:47:50', '2022-02-09 04:30:11'),
(396, 400, 'English', 'ACI Pure Cumin Powder', '', '2022-02-03 07:49:41', '2022-02-09 04:29:57'),
(397, 401, 'English', 'ACI Pure Cumin Powder-Jar', '', '2022-02-03 07:54:25', '2022-02-09 06:29:21'),
(399, 403, 'English', 'Pure Meat Curry Masala', '', '2022-02-03 10:04:59', '2022-02-09 04:29:17'),
(400, 404, 'English', 'ACI Pure Chicken Curry Masala', '', '2022-02-03 10:06:53', '2022-02-09 06:35:23'),
(401, 405, 'English', 'ACI Pure Beef Curry Masala', '', '2022-02-03 10:09:36', '2022-02-09 06:34:35'),
(402, 406, 'English', 'ACI Pure Fish Curry', '', '2022-02-03 10:11:42', '2022-02-09 06:36:27'),
(405, 409, 'English', 'ACI Chotpoti Masala', '', '2022-02-05 09:59:02', '2022-02-09 04:28:28'),
(406, 410, 'English', 'Panchforan', '', '2022-02-05 10:16:33', '2022-02-12 09:16:57'),
(407, 411, 'English', 'ACI FUN FRESH FRY', '', '2022-02-05 10:19:23', '2022-02-09 04:27:59'),
(408, 412, 'English', 'Tehari Masala', '', '2022-02-05 10:19:46', '2022-02-09 04:27:45'),
(409, 413, 'English', 'ACI Pure Mezbani Masala', '', '2022-02-05 10:22:08', '2022-02-09 04:27:31'),
(410, 414, 'English', 'ACI Kabab Masala', '', '2022-02-05 10:23:28', '2022-02-09 04:27:15'),
(411, 415, 'English', 'ACI Fun Cup Cake(Butter)', '', '2022-02-05 10:24:33', '2022-02-12 09:15:03'),
(412, 416, 'English', 'ACI Pure Garam Masala', '', '2022-02-05 10:25:33', '2022-02-09 04:26:18'),
(413, 417, 'English', 'ACI Pure Kheer Mix', '', '2022-02-05 10:28:28', '2022-02-09 04:26:01'),
(414, 418, 'English', 'ACI Pure Mango Pickle', '', '2022-02-05 10:29:12', '2022-02-09 04:15:23'),
(415, 419, 'English', 'ACI Pure Halim Mix', '', '2022-02-05 10:29:43', '2022-02-09 04:15:02'),
(417, 421, 'English', 'ACI Pure Thai Noodles Chili Chicken', '', '2022-02-05 10:34:16', '2022-02-09 04:07:11'),
(418, 422, 'English', 'ACI Pure Mustard Oil', '', '2022-02-05 10:35:27', '2022-02-09 03:53:44'),
(419, 423, 'English', 'ACI Pure Mustard Oil', '', '2022-02-05 10:36:43', '2022-02-09 03:54:18'),
(420, 424, 'English', 'ACI Pure Mustard Oil', '', '2022-02-05 10:37:57', '2022-02-09 03:56:38'),
(421, 425, 'English', 'ACI Pure Aromatic Rice', '', '2022-02-05 10:39:47', '2022-02-09 03:57:15'),
(422, 426, 'English', 'ACI Gold Aromatic Rice', '', '2022-02-05 10:44:12', '2022-02-09 03:58:38'),
(423, 427, 'English', 'ACI Pure Thai Noodles Hot& Spicy', '', '2022-02-09 04:09:40', '2022-02-09 04:09:40'),
(424, 429, 'English', 'ACI Savlon Active Antiseptic Soap', '', '2022-02-10 06:32:36', '2022-02-10 06:32:36'),
(425, 430, 'English', 'ACI Savlon Liquid Antiseptic', '', '2022-02-10 06:36:07', '2022-02-10 06:36:07'),
(426, 431, 'English', 'ACI Savlon Liquid Antiseptic', '', '2022-02-10 06:38:38', '2022-02-10 06:38:38'),
(427, 432, 'English', 'Wheel Laundry Soap', '', '2022-02-10 06:51:14', '2022-02-10 06:51:14'),
(428, 433, 'English', 'Wheel Powder Clean & Fresh', '', '2022-02-10 09:42:10', '2022-02-10 09:42:10'),
(429, 434, 'English', 'Wheel Powder Clean & Fresh', '', '2022-02-10 09:45:02', '2022-02-10 09:45:02'),
(430, 435, 'English', 'Wheel Powder Clean & Fresh', '', '2022-02-10 09:46:34', '2022-02-10 09:46:34'),
(431, 436, 'English', 'RIN Liquid', '', '2022-02-10 09:55:42', '2022-02-10 09:55:42'),
(432, 437, 'English', 'Rin Standard Powder', '', '2022-02-10 09:58:37', '2022-02-10 09:58:37'),
(433, 438, 'English', 'Rin Standard Powder', '', '2022-02-10 09:59:21', '2022-02-10 09:59:21'),
(434, 439, 'English', 'Lifebuoy Liquid Handwash', '', '2022-02-10 09:59:27', '2022-02-10 09:59:27'),
(435, 440, 'English', 'Surf Excel Standard Powder', '', '2022-02-10 10:01:57', '2022-02-10 10:01:57'),
(436, 441, 'English', 'Surf Excel Standard Powder', '', '2022-02-10 10:05:43', '2022-02-10 10:05:43'),
(437, 442, 'English', 'Surf Exce Quick Qash Liquid', '', '2022-02-10 10:07:50', '2022-02-10 10:07:50'),
(438, 443, 'English', 'Surf Excel Standard Powder', '', '2022-02-10 10:09:21', '2022-02-10 10:09:21'),
(439, 444, 'English', 'Surf Excel Standard Powder', '', '2022-02-10 10:10:36', '2022-02-10 10:10:36'),
(440, 445, 'English', 'Lifebuoy Liquid Handwash lemon', '', '2022-02-10 10:15:00', '2022-02-10 10:15:00'),
(441, 446, 'English', 'Lifebuoy Liquid Handwash', '', '2022-02-10 10:16:26', '2022-02-10 10:16:26'),
(442, 447, 'English', 'Lifebuoy Liquid Handwash Cool Fresh', '', '2022-02-10 10:20:12', '2022-02-10 10:20:12'),
(443, 448, 'English', 'Lifebuoy Bar lemon Fresh', '', '2022-02-10 10:22:32', '2022-02-10 10:22:32'),
(444, 449, 'English', 'Lifebuoy Skin Bar Care', '', '2022-02-10 10:28:06', '2022-02-10 10:28:54'),
(445, 450, 'English', 'Lifebuoy Skin Bar', '', '2022-02-10 10:30:31', '2022-02-10 10:30:31'),
(446, 451, 'English', 'Lifebuoy Skin Bar Care', '', '2022-02-10 10:32:08', '2022-02-10 10:32:08'),
(447, 452, 'English', 'Lifebuoy Skin Bar', '', '2022-02-10 10:32:31', '2022-02-10 10:32:31'),
(448, 453, 'English', 'Lux Bar Camelia and Aloe vera', '', '2022-02-10 10:36:02', '2022-02-10 10:36:02'),
(449, 454, 'English', 'Dove Skin Cleansing Bar White', '', '2022-02-12 07:09:19', '2022-02-12 07:11:57'),
(450, 455, 'English', 'Dove Skin Cleansing Bar Pink', '', '2022-02-12 07:11:15', '2022-02-12 07:11:15'),
(451, 456, 'English', 'Dove Skin Cleansing Bar White', '', '2022-02-12 07:12:57', '2022-02-12 07:12:57'),
(452, 457, 'English', 'Dove Skin Cleansing Bar Pink', '', '2022-02-12 07:13:56', '2022-02-12 07:13:56'),
(453, 458, 'English', 'Glow and Lovely Bar Multivitamin', '', '2022-02-12 07:21:03', '2022-02-12 07:21:03'),
(454, 459, 'English', 'Glow & Lovely Bar Multani Mati', '', '2022-02-12 07:24:22', '2022-02-12 07:24:22'),
(455, 460, 'English', 'Vim Bar Ice Hockey', '', '2022-02-12 07:44:09', '2022-02-12 07:44:09'),
(456, 461, 'English', 'Vim Bar Ice Hockey', '', '2022-02-12 07:45:45', '2022-02-12 07:45:45'),
(457, 462, 'English', 'Brooke Bond Taaza Black Tea', '', '2022-02-12 08:01:31', '2022-02-12 08:01:31'),
(458, 463, 'English', 'Brooke Bond Taaza Black Tea', '', '2022-02-12 08:02:11', '2022-02-12 08:02:11'),
(459, 464, 'English', 'Brooke Bond Taaza Tea Bag', '', '2022-02-12 08:07:02', '2022-02-12 08:07:02'),
(460, 465, 'English', 'Knorr Hot and Sour Chicken Soup', '', '2022-02-12 08:13:27', '2022-02-12 08:13:27'),
(461, 466, 'English', 'Knorr Instant Cup Thai Soup', '', '2022-02-12 08:20:01', '2022-02-12 08:20:01'),
(462, 467, 'English', 'Knorr Soup Thai', '', '2022-02-12 08:21:32', '2022-02-12 08:21:32'),
(463, 468, 'English', 'Knorr Crispy Fried Chicken Mix', '', '2022-02-12 08:26:19', '2022-02-12 08:26:19'),
(464, 469, 'English', 'Sunsilk Shampoo Hijab Recharge', '', '2022-02-12 08:31:26', '2022-02-12 08:31:26'),
(465, 470, 'English', 'Sunsilk Shampoo Stunning Black Shine', '', '2022-02-12 08:34:33', '2022-02-12 08:34:33'),
(466, 471, 'English', 'Clear Hijab Anti Limp Shampoo', '', '2022-02-12 08:41:33', '2022-02-12 08:41:33'),
(467, 472, 'English', 'Closeup Toothpaste Cool Mint', '', '2022-02-12 08:45:56', '2022-02-12 08:45:56'),
(468, 473, 'English', 'Pepsodent Sensitive Expert Professional', '', '2022-02-12 09:02:39', '2022-02-12 09:02:39'),
(470, 475, 'English', 'potato', '', '2022-02-13 04:27:13', '2022-02-13 04:27:13'),
(471, 473, 'language', 'Pepsodent Sensitive Expert Professional', '', '2022-02-17 07:34:22', '2022-02-17 07:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(10, 'Office user', NULL, '2022-02-05 10:56:01', '2022-02-05 10:56:01');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'mail_type', 'smtp', NULL, '2022-01-08 10:23:02'),
(2, 'backend_direction', 'ltr', NULL, '2022-02-17 03:15:28'),
(3, 'language', 'English', NULL, '2021-11-15 03:03:15'),
(4, 'email_verification', 'enabled', NULL, '2022-02-17 03:15:28'),
(5, 'delivery_charge', '5', NULL, '2022-02-17 03:15:28'),
(6, 'free_delivery_amount', '100', NULL, '2022-02-17 03:15:28'),
(7, 'currency', 'BDT', NULL, '2022-02-17 03:15:28'),
(8, 'main_heading', 'Groceries delivered in 24 hours', NULL, '2022-01-08 08:05:37'),
(9, 'mail_type', 'smtp', NULL, '2022-01-08 10:23:02'),
(10, 'backend_direction', 'ltr', NULL, '2022-02-17 03:15:28'),
(11, 'language', 'English', NULL, '2021-11-15 03:03:15'),
(12, 'email_verification', 'enabled', NULL, '2022-02-17 03:15:28'),
(13, 'delivery_charge', '5', NULL, '2022-02-17 03:15:28'),
(14, 'free_delivery_amount', '100', NULL, '2022-02-17 03:15:28'),
(15, 'currency', 'BDT', NULL, '2022-02-17 03:15:28'),
(16, 'main_heading', 'Groceries delivered in 24 hours', NULL, '2022-01-08 08:05:37'),
(17, 'company_name', 'Q Bazar', '2021-10-17 02:27:53', '2021-11-15 03:03:15'),
(18, 'site_title', 'Q Bazar', '2021-10-17 02:27:53', '2021-11-15 03:03:15'),
(19, 'phone', '+88 01763-000000', '2021-10-17 02:27:53', '2021-11-15 03:03:15'),
(20, 'email', 'info@qbazar.com.bd', '2021-10-17 02:27:53', '2021-11-15 03:03:15'),
(21, 'timezone', 'Asia/Dhaka', '2021-10-17 02:27:53', '2021-11-15 03:03:15'),
(22, 'currency_position', 'left', '2021-10-17 08:30:56', '2022-02-17 03:15:28'),
(23, 'date_format', 'd-m-Y', '2021-10-17 08:30:56', '2022-02-17 03:15:28'),
(24, 'time_format', '12', '2021-10-17 08:30:56', '2022-02-17 03:15:28'),
(25, 'about_us', 'Qbazar.com.bd is an online shop available in Dhaka. We believe time is valuable to our fellow Dhaka residents, and that they should not have to waste hours in traffic, brave harsh weather and wait in line just to buy necessities like eggs! This is why we deliver every day needs to our customers’ door-steps across Dhaka.', '2021-10-17 08:32:24', '2022-01-08 08:05:37'),
(26, 'copyright', 'Copyright © 2021 Q Bazar - All Rights Reserved.', '2021-10-17 08:32:24', '2022-01-08 08:05:37'),
(27, 'primary_color', '#004e9f', '2021-10-17 08:32:24', '2022-01-08 08:05:37'),
(28, 'sidebar_active_color', '#004e9f', '2021-10-17 08:32:24', '2022-01-08 08:05:37'),
(29, 'footer_top_color', '#2f3640', '2021-10-17 08:32:24', '2022-01-08 08:05:37'),
(30, 'footer_bottom_color', '#26282b', '2021-10-17 08:32:24', '2022-01-08 08:05:37'),
(31, 'footer_important_links', '[\"1\",\"2\",\"3\",\"4\",\"5\"]', '2021-10-17 08:32:24', '2022-01-08 08:05:37'),
(32, 'footer_popular_category', '[\"5\",\"13\",\"7\",\"11\"]', '2021-10-17 08:32:24', '2022-01-08 08:05:37'),
(33, 'meta_keywords', '', '2021-10-17 08:32:24', '2022-01-08 08:05:37'),
(34, 'meta_content', '', '2021-10-17 08:32:24', '2022-01-08 08:05:37'),
(35, 'home_banner', 'file_1634471364.jpg', '2021-10-17 08:32:24', '2021-10-17 09:49:24'),
(36, 'website_logo', 'website-logo.png', '2021-10-17 09:34:29', '2022-02-17 07:37:06'),
(37, 'address', '', '2021-10-28 01:43:04', '2021-11-15 03:03:15'),
(38, 'from_email', 'info@qbazar.com.bd', '2022-01-05 03:26:40', '2022-01-08 10:23:02'),
(39, 'from_name', 'Qbazaar', '2022-01-05 03:26:40', '2022-01-08 10:23:02'),
(40, 'smtp_host', 'mail.qbazar.com.bd', '2022-01-05 03:26:40', '2022-01-08 10:23:02'),
(41, 'smtp_port', '465', '2022-01-05 03:26:40', '2022-01-08 10:23:02'),
(42, 'smtp_username', 'info@qbazar.com.bd', '2022-01-05 03:26:40', '2022-01-08 10:23:02'),
(43, 'smtp_password', 'info@qbazar.com.bd', '2022-01-05 03:26:40', '2022-01-08 10:23:02'),
(44, 'smtp_encryption', 'ssl', '2022-01-05 03:26:40', '2022-01-08 10:23:02'),
(45, 'logo', 'app-luncher.png', '2022-01-29 02:17:08', '2022-01-31 04:18:09'),
(46, 'google_login', 'enabled', '2022-02-16 07:34:11', '2022-02-16 08:04:35'),
(47, 'GOOGLE_CLIENT_ID', '885882027961-0pmg540lnpllicmf72q1jlcml8ff3946.apps.googleusercontent.com', '2022-02-16 07:34:11', '2022-02-16 08:04:35'),
(48, 'GOOGLE_CLIENT_SECRET', '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', '2022-02-16 07:34:11', '2022-02-16 08:04:35'),
(49, 'facebook_login', 'enabled', '2022-02-16 07:34:11', '2022-02-16 08:04:35'),
(50, 'FACEBOOK_CLIENT_ID', '674724093661051', '2022-02-16 07:34:11', '2022-02-16 08:04:35'),
(51, 'FACEBOOK_CLIENT_SECRET', 'a482bfa8f6036ffe994a9ec3b0dc186c', '2022-02-16 07:34:11', '2022-02-16 08:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `temp_products`
--

CREATE TABLE `temp_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_products`
--

INSERT INTO `temp_products` (`id`, `category_id`, `product_name`, `itemcode`, `stock_quantity`, `created_at`, `updated_at`) VALUES
(4, NULL, 'test2', 'IC--000487', '500', '2022-02-28 23:51:34', '2022-02-28 23:51:34'),
(5, NULL, 'test3', 'IC--000488', '5000', '2022-02-28 23:51:50', '2022-02-28 23:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `transaction_id`, `payment_method`, `amount`, `payment_data`, `created_at`, `updated_at`) VALUES
(1, 2, '4353', 'cash_on_delivery', '1064.00', NULL, '2021-10-18 07:50:59', '2021-10-18 07:50:59'),
(2, 3, '435345', 'cash_on_delivery', '29.00', NULL, '2021-10-18 07:57:10', '2021-10-18 07:57:10'),
(3, 1, 'jhuhuhuo', 'cash_on_delivery', '178.00', NULL, '2021-10-18 08:10:10', '2021-10-18 08:10:10'),
(4, 4, '888', 'cash_on_delivery', '23.00', NULL, '2021-10-25 08:13:04', '2021-10-25 08:13:04'),
(5, 7, 'hyhgdhg', 'cash_on_delivery', '430.00', NULL, '2021-10-25 08:13:38', '2021-10-25 08:13:38'),
(6, 8, '65365', 'cash_on_delivery', '178.00', NULL, '2021-10-25 08:14:26', '2021-10-25 08:14:26');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `created_at`, `updated_at`) VALUES
(40, '2021-10-18 06:16:13', '2021-10-18 06:16:13'),
(41, '2021-10-18 06:16:22', '2021-10-18 06:16:22'),
(42, '2021-10-18 06:18:43', '2021-10-18 06:18:43'),
(43, '2022-01-16 04:57:17', '2022-01-16 04:57:17'),
(44, '2022-01-18 07:23:52', '2022-01-18 07:23:52'),
(46, '2022-01-20 07:36:22', '2022-01-20 07:36:22'),
(47, '2022-01-26 07:48:12', '2022-01-26 07:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `unit_translations`
--

CREATE TABLE `unit_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unit_translations`
--

INSERT INTO `unit_translations` (`id`, `unit_id`, `locale`, `name`, `short_name`, `created_at`, `updated_at`) VALUES
(40, 40, 'English', 'Rim', 'Rim', '2021-10-18 06:16:13', '2021-10-25 08:27:22'),
(41, 41, 'English', 'KG', 'KG', '2021-10-18 06:16:22', '2021-10-25 08:27:05'),
(42, 42, 'English', 'Pices', 'P', '2021-10-18 06:18:43', '2021-10-25 08:12:23'),
(43, 43, 'English', 'Gram', 'gm', '2022-01-16 04:57:17', '2022-01-16 04:57:39'),
(44, 44, 'English', 'Pack', 'pack', '2022-01-18 07:23:52', '2022-01-18 07:23:52'),
(46, 46, 'English', 'milliliter', 'ml', '2022-01-20 07:36:22', '2022-01-20 07:36:22'),
(47, 47, 'English', 'Litter', 'ltr', '2022-01-26 07:48:12', '2022-01-26 07:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `user_type`, `role_id`, `status`, `profile_picture`, `email_verified_at`, `password`, `provider`, `provider_id`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'info@qbazar.com.bd', NULL, 'admin', NULL, 1, 'profile_1635156262.png', '2021-10-17 02:26:46', '$2y$10$AUq1eWzw7rk48iB7JyezGOu0n5NE1u8nePupSKj3FFRpuzwI0eiVS', NULL, NULL, NULL, 'wniN6eB99uboiyl72hLpI8z5XFgNGdUqkEjQno0IMlVcowNQfeBFpC0T5sCr', '2021-10-17 02:26:46', '2022-01-04 08:53:47'),
(2, 'Emran Miah', 'gaziemran2@gmail.com', '01623284207', 'customer', NULL, 1, NULL, '2021-10-17 21:52:34', '$2y$10$7agJ3O5QskldMm.Az4kBzONMPQDh8xUUFz.AX6sE.Na3.00VQyVwO', NULL, NULL, NULL, NULL, '2021-10-17 21:52:34', '2021-10-17 21:52:34'),
(3, 'Sadi', 'sadi@qbazar.com.bd', '01608728677', 'delivery_boy', NULL, 1, '', '2021-10-18 07:25:52', '$2y$10$CjbTFQbXkCGNyms/uAlEDOjRjqpQ/rGdAe7QPN8v1ME1fKunpFATG', NULL, NULL, 'House # 63, Road # 13, Sector # 10', NULL, '2021-10-18 07:25:52', '2021-12-27 09:41:02'),
(4, 'Ashfaqul Bari', 'bari.zamanit@gmail.com', '01959621322', 'customer', NULL, 1, '1635156537Tulips.jpg', '2021-10-18 01:47:22', '$2y$10$JRbWf/igWsGU0QGDwD8tPu/9UYaEQTGksEQ/vQX/3bUEdWATt0ji.', NULL, NULL, 'Uttara', NULL, '2021-10-18 01:47:22', '2021-10-25 08:08:57'),
(5, 'ZAMAN KHAN', 'zamanit2008@gmail.com', '01973009007', 'customer', NULL, 1, NULL, '2021-10-18 04:03:28', '$2y$10$o1HbqGIMLNPYeu72Lhr2i.k3e3udXLd0ZCPTXLBpAMMAr/INrDQB2', NULL, NULL, '-', NULL, '2021-10-18 04:03:28', '2022-01-29 11:14:44'),
(6, 'Md Sehirul Islam Rehi', 'mdsehirulislamrehi@gmail.com', '01858361812', 'customer', NULL, 1, NULL, '2021-10-18 20:19:02', '$2y$10$u.IHtJ6l4o9Y2PvPn9nQCunT7GMChHJUzGgHsU2WZhAzvYeSKrQre', NULL, NULL, NULL, NULL, '2021-10-18 20:19:02', '2021-10-18 20:19:02'),
(7, 'Gazi', 'gazi@zaman-it.com', '01763061061', 'customer', NULL, 1, NULL, '2021-10-25 01:52:37', '$2y$10$nxlNwr8xEhvhNZQGDgcs9.Kav3LbRYx4z8pha/q2ZFWxm36Tz5rg.', NULL, NULL, NULL, NULL, '2021-10-25 01:52:37', '2021-10-25 01:52:37'),
(8, 'Mizan', 'mizan@gimal.com', '01778585363', 'customer', NULL, 1, NULL, '2021-10-25 02:05:05', '$2y$10$D31mw5M1vY5GG7lHMSBCSO4qU03PIkEoJrcD2mLLwQGU3959T8OPu', NULL, NULL, NULL, NULL, '2021-10-25 02:05:05', '2021-10-25 02:05:05'),
(9, 'Raihan', 'vh8456@gmail.com', '79807980', 'customer', NULL, 1, NULL, '2021-10-26 22:53:08', '$2y$10$19EoBjCxdFysePJ7vOyOPegtc5t0o4WTX8e2gnPgKxko4DWOEoBb6', NULL, NULL, NULL, NULL, '2021-10-26 22:53:08', '2021-10-26 22:53:08'),
(10, 'ENGR.MD.ANISUZZAMAN TARAFDER', 'anistarafder@gmail.com', '01711664939', 'customer', NULL, 1, 'profile_1637380094.jpg', '2021-10-28 11:24:16', '$2y$10$emkmSK65cQohMMdS9zW8iugUw62tBIlTfRyE2gkCPpA7Bh/VjwC6q', NULL, NULL, NULL, NULL, '2021-10-28 11:24:16', '2021-11-19 19:48:14'),
(11, 'Raihan Kabir', 'raihanmac79@gmail.com', '79807980', 'customer', NULL, 1, NULL, '2021-10-30 11:32:15', '$2y$10$PReJw6I8YCAk2eUBj4LF7e5McKT1R.SHZ/yokkpsLuM3zpPijLCGu', NULL, NULL, 'Haven Is Home Investment \nP.O.BOX- 7288\nManzini', NULL, '2021-10-30 11:32:15', '2021-10-30 11:40:47'),
(12, 'Md.Rustom ali', 'biofloc507@gmail.com', '01824222184', 'customer', NULL, 1, NULL, '2021-11-07 09:23:44', '$2y$10$iGegrvJQ7ViVUWQdRT8b2.hYCypI4hUiDiFnx5z.3JZmtl7YItKg6', NULL, NULL, NULL, NULL, '2021-11-07 09:23:44', '2021-11-07 09:23:44'),
(14, 'Khaleda', 'azrasalim14@gmail.com', '01713012757', 'customer', NULL, 1, NULL, '2021-11-15 11:17:09', '$2y$10$JcBLVtrDr/ufMRt.u2dGrONlRvGl9oAqJ8k907lwjnyBSpkbk8mXm', NULL, NULL, NULL, NULL, '2021-11-15 11:17:09', '2021-11-15 11:17:09'),
(15, 'Abul ALi', 'abul@gmail.com', '01811221122', 'customer', NULL, 1, 'profile_1637032308.jpg', '2021-11-15 19:06:05', '$2y$10$iA5nXD/Jli9DOz4ys4o96ubv5Xw1QZEmjBLLWET0O7NBi4K8yONN.', NULL, NULL, NULL, NULL, '2021-11-15 19:06:05', '2021-11-15 19:11:48'),
(16, 'Shamsia Jafrin Shuchi', 'sjshuchi5@gmail.com', '01557474198', 'customer', NULL, 1, NULL, '2021-11-15 19:09:57', '$2y$10$Cgx5TdoKTP0LIiZnjKE7pONATbw/M3P9.ZlAJkQc.0Ldu./UlD.X6', NULL, NULL, 'Luxmibazar', NULL, '2021-11-15 19:09:57', '2021-11-15 19:10:22'),
(17, 'Md. Samad Hosen', 'abirmahmud488@gmail.com', '01734522957', 'customer', NULL, 1, NULL, '2021-11-16 20:17:31', '$2y$10$fFbgKuJ3/dkmrcZd0LyENOmK0iK73ovZWDrFfa2LifcAmCNRQzIXu', NULL, NULL, NULL, NULL, '2021-11-16 20:17:31', '2021-11-16 20:17:31'),
(18, 'Md.Johir uddin tarafder', 'johirtarafder@gmail.com', '01982049599', 'customer', NULL, 1, NULL, '2021-11-17 21:36:40', '$2y$10$co7OnvSTaFGF/ohvP99t1uSmp/d90E.OUTKq2sgJHTIFMOFZf9SsK', NULL, NULL, NULL, NULL, '2021-11-17 21:36:40', '2021-11-17 21:36:40'),
(19, 'Abu Bakar Siddique', 'siddique@ts-integration.net', '01755631811', 'customer', NULL, 1, NULL, '2021-12-20 04:10:16', '$2y$10$CETJRV.2FD1AmkiCOiiCI.cQeYFFIuuOOZUlh1WgXXw5GJSNryb8S', NULL, NULL, 'uttara', NULL, '2021-12-20 04:10:16', '2021-12-27 09:34:30'),
(21, 'Siam', 'abc@abc.net', '12345678', 'delivery_boy', NULL, 1, '', '2021-12-27 09:44:35', '$2y$10$wn0XLiufYTl4lvoqFS3IM.bm1.TZO/dm6ZY4CA5N6d1eO2zseqfpu', NULL, NULL, 'sdfdf', NULL, '2021-12-27 09:44:36', '2021-12-27 09:44:36'),
(23, 'tarikul islam', 'tarik@gmail.com', '012345678', 'delivery_boy', NULL, 1, '', '2021-12-29 04:13:01', '$2y$10$cu8osJjee.x5CLLmKi3RVOZQ2XNd/rwLpFc4O0dOmz8pdmqiGIJsq', NULL, NULL, 'dhaka', NULL, '2021-12-29 04:13:01', '2022-02-06 04:13:44'),
(30, 'UZZAL KUMAR ROY', 'zamanit.uzzal@gmail.com', '01965445223', 'customer', NULL, 1, NULL, NULL, '$2y$10$XXBwtzKweUAZiF.fIDjSE.P5sQ8hG0KNwTpqNymBQAst4bL2a6Jri', NULL, NULL, NULL, NULL, '2022-01-08 04:23:17', '2022-01-08 04:23:17'),
(31, 'Emran Gazi', 'e.zamanit@gmail.com', '01608728677', 'customer', NULL, 1, NULL, NULL, '$2y$10$BH0hAncre9o.W97TIPWuu.SWR27fqQ73Znr1zfKx/GZ86XxlpipMi', NULL, NULL, NULL, NULL, '2022-01-08 20:40:18', '2022-01-08 20:40:18'),
(32, 'mehedi hasan', 'm@gmail.com', '01866717825', 'customer', NULL, 1, '', '2022-01-10 04:22:33', '$2y$10$OoShhwbBBalq3bmNc1oZW.kkjPKrJu9wLStnkvJOR8u/VbSYja8hi', NULL, NULL, 'dhaka 1212', NULL, '2022-01-10 04:22:33', '2022-02-05 22:10:31'),
(33, 'delivery man1', 'd@gmail.com', '01941697253', 'delivery_boy', NULL, 1, '', '2022-01-10 04:29:33', '$2y$10$6GGmSlPYllAqef.F117PNeQzCozS8Wank4e/wiHafvz9V/eEpDhJ6', NULL, NULL, 'dhaka 1212', NULL, '2022-01-10 04:29:33', '2022-01-10 08:22:29'),
(34, 'Order sorting man1', 'order@gmail.com', NULL, 'admin', 6, 1, '', '2022-01-10 04:53:49', '$2y$10$iDkthjOhhR3D5CmCb9btxe20cSAEaRiGnynbCbYFAQ/yJ6ClObJuu', NULL, NULL, NULL, 'y04LYHXCuY7sX9zhDiTGcjzCbHj3iOCR3hOSWfwi4yGQzT6HbrZXGJHTYxir', '2022-01-10 04:53:49', '2022-01-10 08:22:56'),
(40, 'Shakil Islam', 'shakoli@gmail.com', '017878797987', 'customer', NULL, 1, NULL, NULL, '$2y$10$D849lHlijCecGTVHhlYfX.Zf1wRoQCeR2mSHZ.ozU.oRdHD6yVHHi', NULL, NULL, NULL, NULL, '2022-01-16 21:11:59', '2022-01-16 21:11:59'),
(43, 'Dip', 'antarip15@gmail.com', '01713702979', 'customer', NULL, 1, 'profile_1642843136.jpg', '2022-01-21 19:55:02', '$2y$10$jLF7XaSh/7cAiTWQJ8MgR.7tETfAOXUQOXF1NQ3E.H35hayheE4zW', NULL, NULL, NULL, 'bVXEuCivd9gaijGHwiFjZcTXfeHWSM3RiKibBY3YdUfEOGmPU3JFZTI6D11b', '2022-01-21 19:52:15', '2022-01-22 01:18:56'),
(46, 'Mohammad Zahirul Kabir', 'kabirabs01@gmail.com', '8801711525261', 'customer', NULL, 1, NULL, '2022-02-05 21:54:54', '$2y$10$27eJUvOtX7VxrMLp0JDT9.hkjtWMY1s/CbksBPRSYqQCHq.xp8Czy', NULL, NULL, NULL, 'RNThaeXPC6sUDJfUg7c0pOMAG8ut522Md3ieJl7AEgHoqEy3csJrC2UAuoY3', '2022-02-05 21:54:01', '2022-02-05 21:54:54'),
(49, 'Shajjadul Bari Abir', 'abircu90@gmail.com', '01816302331', 'customer', NULL, 1, NULL, '2022-02-16 02:02:10', '$2y$10$22P6I1SAdSwoQPU0VXRK0eH6fhR09IqB8w7UPeoCfh0IlhExSu7Ki', NULL, NULL, NULL, NULL, '2022-02-16 01:55:47', '2022-02-16 02:02:10'),
(52, 'mehedi', 'mh271786@gmail.com', '01866717825', 'customer', NULL, 1, NULL, '2022-02-16 21:21:48', '$2y$10$PDH1vPFSNNlEmIyiJW/XVufo9FWmXYnPJwlGxn.14vjqTN5XM4TEy', NULL, NULL, NULL, NULL, '2022-02-16 21:20:31', '2022-02-16 21:21:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_code_index` (`code`);

--
-- Indexes for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD PRIMARY KEY (`coupon_id`,`category_id`),
  ADD KEY `coupon_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD PRIMARY KEY (`coupon_id`,`product_id`),
  ADD KEY `coupon_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_translations_coupon_id_locale_unique` (`coupon_id`,`locale`);

--
-- Indexes for table `database_backups`
--
ALTER TABLE `database_backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_translations_page_id_locale_unique` (`page_id`,`locale`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_stocks_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_translations_product_id_locale_unique` (`product_id`,`locale`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_products`
--
ALTER TABLE `temp_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit_translations`
--
ALTER TABLE `unit_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unit_translations_unit_id_locale_unique` (`unit_id`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `database_backups`
--
ALTER TABLE `database_backups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=491;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `temp_products`
--
ALTER TABLE `temp_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `unit_translations`
--
ALTER TABLE `unit_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD CONSTRAINT `coupon_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_categories_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD CONSTRAINT `coupon_products_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD CONSTRAINT `coupon_translations_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD CONSTRAINT `product_stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `unit_translations`
--
ALTER TABLE `unit_translations`
  ADD CONSTRAINT `unit_translations_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
