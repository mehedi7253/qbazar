-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2022 at 06:48 PM
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
(4, 'food', '<i class=\"icofont-food-basket\"></i>', '162211069760af71e9a0a6c.png', '1644313028620239c4b27da.jpg', NULL, 1, '2021-05-23 19:50:15', '2022-02-08 01:37:08'),
(6, 'beauty-health', '<i class=\"icofont-muscle-weight\"></i>', '162211077360af72357aa52.png', NULL, NULL, 1, '2021-05-25 00:38:12', '2021-07-14 22:24:21'),
(7, 'baby-care', '<i class=\"icofont-baby-food\"></i>', '162211081060af725a7788c.png', NULL, NULL, 1, '2021-05-25 00:57:59', '2021-07-14 22:23:28'),
(8, 'hygiene', '<i class=\"icofont-laboratory\"></i>', '162211084560af727d1fde5.png', NULL, NULL, 1, '2021-05-26 00:17:04', '2021-07-14 22:22:58'),
(9, 'home-cleaning', '<i class=\"icofont-water-bottle\"></i>', '162211088360af72a36252e.png', NULL, NULL, 1, '2021-05-26 00:29:41', '2021-07-14 22:21:23'),
(11, 'medicine', '<i class=\"icofont-medicine\"></i>', '162211092260af72cab9a9e.png', NULL, NULL, 0, '2021-05-26 02:04:29', '2022-03-09 01:27:25'),
(12, 'breakfast', '', 'default-cat.png', '16443116136202343da491c.webp', 4, 1, '2021-05-26 19:05:24', '2022-02-08 01:13:34'),
(13, 'health-care', '', 'default-cat.png', NULL, 6, 1, '2021-05-26 19:05:54', '2021-05-26 19:05:54'),
(14, 'office-products', '<i class=\"icofont-ui-office\"></i>', '162211111160af73870b8bd.png', NULL, NULL, 0, '2021-05-26 20:25:11', '2022-03-09 01:27:49'),
(15, 'kitchen-appliances', '<i class=\"icofont-spoon-and-fork\"></i>', '16279067076107e29307a93.png', NULL, NULL, 0, '2021-05-26 20:27:09', '2022-03-09 01:27:10'),
(27, 'snacks', '', 'default-cat.png', NULL, 4, 1, '2022-01-16 01:28:33', '2022-01-16 01:28:33'),
(30, 'fruits-vegetabels', '', '164241312361e53c43e4559.jpg', NULL, 4, 1, '2022-01-17 01:52:04', '2022-01-17 01:52:04'),
(31, 'fresh-fruits', '', '164241327361e53cd9cf6a3.jpg', NULL, 30, 1, '2022-01-17 01:54:34', '2022-01-17 01:54:34'),
(32, 'vegitables', '', '164241332661e53d0e1717f.jpg', NULL, 30, 1, '2022-01-17 01:55:26', '2022-01-17 01:55:26'),
(33, 'noodles', '', '164241339161e53d4f82034.jpg', NULL, 27, 1, '2022-01-17 01:56:31', '2022-01-17 01:56:31'),
(34, 'soups', '', '164241345461e53d8e04c22.jpg', NULL, 27, 1, '2022-01-17 01:57:34', '2022-01-17 01:57:34'),
(35, 'pasta', '', '164241350661e53dc2207df.jpg', NULL, 27, 1, '2022-01-17 01:58:26', '2022-01-17 01:58:26'),
(36, 'candy', '', '1648962035624929f3a7bf2.jpg', NULL, 27, 1, '2022-01-17 01:59:44', '2022-04-02 21:00:35'),
(37, 'chips-pretzels', '', '164241378061e53ed48e125.jpeg', NULL, 27, 1, '2022-01-17 02:03:00', '2022-01-17 02:03:00'),
(38, 'popcorn-nuts', '', '164241383361e53f092efe4.jpg', NULL, 27, 1, '2022-01-17 02:03:53', '2022-01-17 02:03:53'),
(39, 'biscuits', '', '164241389161e53f432547d.jpg', NULL, 27, 1, '2022-01-17 02:04:51', '2022-01-17 02:04:51'),
(40, 'dairy', '', '164241393161e53f6b8afd9.jpg', NULL, 4, 1, '2022-01-17 02:05:31', '2022-01-17 02:05:31'),
(41, 'liquid-uht-milk', '', '164241398661e53fa23ffc5.jpg', NULL, 40, 1, '2022-01-17 02:06:26', '2022-01-17 02:06:26'),
(43, 'powder-milk-cream', '', '164241410461e54018b7891.jpg', NULL, 40, 1, '2022-01-17 02:08:24', '2022-01-17 02:08:24'),
(44, 'yogurt-sweet', '', '164241416361e54053ce938.jpg', '164371561061f91c1a7e936.PNG', 40, 1, '2022-01-17 02:09:23', '2022-02-01 03:40:10'),
(45, 'frozen-canned', '', '164241420661e5407e0daa9.webp', NULL, 4, 0, '2022-01-17 02:10:06', '2022-03-15 03:22:56'),
(46, 'ice-cream', '', '164241427461e540c2bb2de.jpg', NULL, 45, 0, '2022-01-17 02:11:14', '2022-02-01 03:43:57'),
(47, 'frozen-snacks', '', '164241448861e54198bc18c.jpg', NULL, 45, 1, '2022-01-17 02:14:48', '2022-01-17 02:14:48'),
(48, 'canned-food', '', '164241452561e541bdaf264.jpg', NULL, 45, 1, '2022-01-17 02:15:25', '2022-01-17 02:15:25'),
(49, 'bread-bakery', '', '164241468761e5425f00be1.png', NULL, 4, 1, '2022-01-17 02:18:07', '2022-01-17 02:18:07'),
(50, 'cookies', '', '164241478161e542bda26ed.jpg', NULL, 49, 1, '2022-01-17 02:19:41', '2022-01-17 02:19:41'),
(51, 'bakery-snacks', '', '164241485761e5430939098.jpg', NULL, 49, 1, '2022-01-17 02:20:57', '2022-01-17 02:20:57'),
(52, 'breads', '', '164241489361e5432d1e9ab.jpg', NULL, 49, 1, '2022-01-17 02:21:33', '2022-01-17 02:21:33'),
(53, 'honey', '', '164241493861e5435a6f4d3.jpg', NULL, 49, 1, '2022-01-17 02:22:18', '2022-01-17 02:22:18'),
(54, 'cakes', '', '164241499361e54391498d5.jpg', NULL, 49, 1, '2022-01-17 02:23:13', '2022-01-17 02:23:13'),
(55, 'cooking', '', '164241504361e543c34e74e.jpg', '164328444461f287dc9b54d.jpg', 4, 1, '2022-01-17 02:24:03', '2022-01-27 03:54:04'),
(56, 'rice', '', '164241511661e5440cba1b1.jpg', NULL, 55, 1, '2022-01-17 02:25:16', '2022-01-17 02:25:16'),
(57, 'spices', '', '164241516361e5443b26ac1.webp', '164689377462299ace2c168.webp', 55, 1, '2022-01-17 02:26:03', '2022-03-09 22:29:34'),
(58, 'oil', '', '164241520061e54460bc9ff.jpg', NULL, 55, 1, '2022-01-17 02:26:41', '2022-01-17 02:26:41'),
(59, 'ghee', '', '164241668261e54a2af237f.jpg', NULL, 55, 1, '2022-01-17 02:51:23', '2022-01-17 02:51:23'),
(60, 'salt-mix', '', '164241674861e54a6c4d374.webp', NULL, 55, 1, '2022-01-17 02:52:28', '2022-01-17 02:52:28'),
(61, 'salt-sugar', '', '164241679361e54a99219c9.jpg', NULL, 55, 1, '2022-01-17 02:53:13', '2022-01-17 02:53:13'),
(62, 'dal', '', '164241683761e54ac5f010d.jpg', NULL, 55, 1, '2022-01-17 02:53:58', '2022-01-17 02:53:58'),
(63, 'shemai-suji', '', '164241687361e54ae9d5fd2.jpg', NULL, 55, 1, '2022-01-17 02:54:33', '2022-01-17 02:54:33'),
(64, 'diabetic-food', '', '164241691661e54b14b6e40.jpg', NULL, 4, 1, '2022-01-17 02:55:16', '2022-01-17 02:55:16'),
(65, 'meat-fish', '', '164241695861e54b3eaac62.jpg', NULL, 4, 1, '2022-01-17 02:55:58', '2022-01-17 02:55:58'),
(66, 'meat', '', '164241698861e54b5cbafc8.jpg', NULL, 65, 1, '2022-01-17 02:56:28', '2022-01-17 02:56:28'),
(67, 'fish', '', '164241715361e54c01206ff.webp', NULL, 65, 1, '2022-01-17 02:59:13', '2022-01-17 02:59:13'),
(68, 'food-supplements', '', '164241728461e54c84cd572.jpg', NULL, 13, 1, '2022-01-17 03:01:24', '2022-01-17 03:03:14'),
(69, 'herbal-digestive-aid', '', '164241732361e54cab67c37.png', NULL, 13, 1, '2022-01-17 03:02:03', '2022-01-17 03:03:00'),
(70, 'first-aid', '', '164241779161e54e7f8f0f7.jpg', NULL, 13, 1, '2022-01-17 03:09:51', '2022-01-17 03:09:51'),
(71, 'adult-diapers', '', '164241795061e54f1ee3605.jpg', NULL, 13, 1, '2022-01-17 03:12:31', '2022-01-17 03:12:31'),
(72, 'personal-care', '', '164241800561e54f55b24cc.jpg', NULL, 6, 1, '2022-01-17 03:13:25', '2022-01-17 03:13:25'),
(73, 'clothing-essentials', '', '164241913661e553c0c2282.webp', NULL, 72, 1, '2022-01-17 03:32:16', '2022-01-17 03:32:16'),
(74, 'handwash', '', '164241954861e5555cef01a.jpg', '1646815607622869771f8c7.jpg', 8, 1, '2022-01-17 03:39:09', '2022-03-09 00:46:47'),
(75, 'tissue-wipes', '', '164242130561e55c39b945a.jpg', NULL, 72, 1, '2022-01-17 03:42:00', '2022-01-17 04:08:25'),
(76, 'talcom-powder', '', '164242136961e55c799fd2c.webp', NULL, 72, 1, '2022-01-17 04:09:29', '2022-01-17 04:09:29'),
(77, 'newborn-essentials', '', '164242145961e55cd3d8c1d.png', NULL, 7, 1, '2022-01-17 04:10:59', '2022-01-17 04:10:59'),
(78, 'feeders', '', '164242152561e55d153ad00.webp', NULL, 7, 1, '2022-01-17 04:12:05', '2022-01-17 04:12:05'),
(79, 'bath-skincare', '', 'default-cat.png', NULL, 7, 1, '2022-01-17 04:12:34', '2022-01-17 04:12:34'),
(80, 'baby-oral-care', '', 'default-cat.png', NULL, 7, 1, '2022-01-17 04:12:43', '2022-01-17 04:12:43'),
(81, 'pet-care', '<i class=\"icofont-cat-dog\"></i>', '164249361661e676b0ab546.jpg', NULL, NULL, 0, '2022-01-18 00:10:32', '2022-03-09 01:26:25'),
(82, 'kitten-food', '', '164249347861e676260fae8.jpg', NULL, 81, 1, '2022-01-18 00:11:18', '2022-01-18 00:11:18'),
(83, 'cat-food', '', '164249352361e6765364dd3.jpg', NULL, 81, 1, '2022-01-18 00:12:03', '2022-01-18 00:12:03'),
(84, 'dog-food', '', '164249355761e67675cd222.jpg', NULL, 81, 1, '2022-01-18 00:12:37', '2022-01-18 00:12:37'),
(85, 'other-pet-foods', '', '164249359661e6769ce2302.png', NULL, 81, 1, '2022-01-18 00:13:16', '2022-01-18 00:13:16'),
(86, 'pet-accessories', '', '164249369861e677025be00.png', NULL, 81, 1, '2022-01-18 00:14:58', '2022-01-18 00:14:58'),
(87, 'air-fresheners', '', '164249376461e67744ca50c.jpg', NULL, 9, 1, '2022-01-18 00:16:04', '2022-01-18 00:16:04'),
(88, 'dish-detergents', '', '164249380161e6776905292.jpg', NULL, 9, 1, '2022-01-18 00:16:41', '2022-01-18 00:16:41'),
(89, 'napkins', '', '164249393361e677ed332d6.jpg', NULL, 9, 1, '2022-01-18 00:18:53', '2022-01-18 00:18:53'),
(90, 'pest-control', '', '164249405361e67865e598e.jpg', '164680840262284d523d50e.jpg', 9, 1, '2022-01-18 00:20:53', '2022-03-08 22:46:42'),
(91, 'food-storage', '', '164249414761e678c3e4c54.jpg', NULL, 9, 1, '2022-01-18 00:22:27', '2022-01-18 00:22:27'),
(92, 'batteries', '', '164249427661e6794437457.jpg', NULL, 14, 1, '2022-01-18 00:24:36', '2022-01-18 00:24:36'),
(93, 'writing-drawing', '', '164249432661e67976d3d6d.jpg', NULL, 14, 1, '2022-01-18 00:25:26', '2022-01-18 00:25:26'),
(94, 'colours', '', '164249442361e679d73a4f2.jpg', NULL, 93, 1, '2022-01-18 00:27:03', '2022-01-18 00:28:49'),
(95, 'pens', '', '164249449861e67a2298df2.webp', NULL, 93, 1, '2022-01-18 00:28:18', '2022-01-18 00:28:34'),
(96, 'highlighters-markers', '', '164249475861e67b26beff0.png', NULL, 93, 1, '2022-01-18 00:32:38', '2022-01-18 00:32:38'),
(97, 'notebooks', '', '164249485461e67b8607df1.jpg', NULL, 93, 1, '2022-01-18 00:34:14', '2022-01-18 00:34:14'),
(98, 'organizing', '', 'default-cat.png', NULL, 14, 1, '2022-01-18 00:36:24', '2022-01-18 00:36:24'),
(99, 'glue-tapes', '', '164249504161e67c4177256.webp', NULL, 98, 1, '2022-01-18 00:37:21', '2022-01-18 00:37:21'),
(100, 'files-folders', '', '164249511261e67c882a002.jpg', NULL, 98, 1, '2022-01-18 00:38:32', '2022-01-18 00:38:32'),
(101, 'printing', '', '164249517161e67cc3830ea.jpg', '164328410161f286851bece.jpg', 14, 1, '2022-01-18 00:39:31', '2022-01-27 03:48:21'),
(102, 'paper', '', '164249520461e67ce450661.jpg', NULL, 101, 1, '2022-01-18 00:40:04', '2022-01-18 00:40:04'),
(103, 'toner-ink', '', '164249524361e67d0bb8069.jpg', NULL, 101, 1, '2022-01-18 00:40:43', '2022-01-18 00:40:43'),
(104, 'home-applications', '<i class=\"icofont-ui-home\"></i>', '164249557061e67e5204448.png', NULL, NULL, 1, '2022-01-18 00:46:10', '2022-04-03 21:26:45'),
(105, 'lights-electrical', '', '164249563261e67e90ec5d2.jpg', NULL, 104, 1, '2022-01-18 00:47:13', '2022-01-18 00:47:13'),
(106, 'tools-hardware', '', '164249568261e67ec2879c2.jpg', NULL, 104, 1, '2022-01-18 00:48:02', '2022-01-18 00:48:02'),
(107, 'vehicle-essentials', '<i class=\"icofont-car-alt-1\"></i>', '164249583861e67f5e57afc.jpg', NULL, NULL, 0, '2022-01-18 00:50:38', '2022-03-09 01:26:51'),
(108, 'organic-items', '<i class=\"icofont-fruits\"></i>', '164249590561e67fa1dc237.jpg', NULL, NULL, 1, '2022-01-18 00:51:45', '2022-01-18 00:51:45'),
(109, 'ready-mix', '', '164689020262298cda5282d.png', '1646891454622991bea6c83.PNG', 55, 1, '2022-01-26 03:18:24', '2022-03-09 21:50:54'),
(110, 'cheese', '', '164371352461f913f416c88.webp', '164371352461f913f43f1cd.webp', 40, 1, '2022-02-01 03:05:24', '2022-02-01 03:05:24'),
(112, 'soap', '', '16444816736204cc89b64ec.jpg', '16444817726204ccec3f071.jpg', 6, 1, '2022-02-10 00:27:54', '2022-02-10 00:29:32'),
(113, 'skin-soap', '', '16444827076204d093aaa46.jpg', '16444827076204d093ae901.jpg', 112, 1, '2022-02-10 00:45:07', '2022-02-10 00:45:07'),
(114, 'laundry-soap', '', '16444828266204d10a031dc.webp', '16444828266204d10a074c8.webp', 112, 1, '2022-02-10 00:47:06', '2022-02-10 00:47:06'),
(115, 'laundry', '', '16444932716204f9d7c288e.webp', '16444932716204f9d7f1e27.webp', 9, 1, '2022-02-10 03:41:12', '2022-02-10 03:41:12'),
(116, 'tea-coffee', '', '1644659961620784f9030e4.webp', '1644659961620784f90d444.webp', 27, 1, '2022-02-12 01:59:21', '2022-02-12 01:59:21'),
(117, 'shampo', '', '164466167262078ba824617.webp', '164466167262078ba8278ab.webp', 6, 1, '2022-02-12 02:27:52', '2022-02-12 02:27:52'),
(120, 'oral-care', '', '1646891704622992b86a4e3.jpg', '1646891704622992b87110b.webp', 6, 1, '2022-03-08 22:36:15', '2022-03-09 21:55:04'),
(121, 'salad-dressing', '', '1647258454622f2b560da49.webp', '1647258454622f2b56114c5.webp', 27, 1, '2022-03-14 03:47:34', '2022-03-14 03:47:34'),
(122, 'eggs', '', '164778278862372b8422471.jpg', 'default-banner.png', 40, 1, '2022-03-20 05:26:28', '2022-03-20 05:26:28'),
(123, 'sauces', '', '1647850976623835e0f2cf5.png', '16478510826238364a17935.jpg', 27, 1, '2022-03-21 00:22:57', '2022-03-21 00:24:42'),
(124, 'drinks', '', '164895861362491c95c6ddb.jpg', '1648959673624920b9e3add.jpg', 4, 1, '2022-04-02 20:03:34', '2022-04-02 20:21:13'),
(125, 'soft-drinks', '', '1648959849624921691225b.png', '164895984962492169167f0.webp', 124, 1, '2022-04-02 20:24:09', '2022-04-02 20:24:09'),
(126, 'syrups-powder-drinks', '', '1648960561624924315cfab.jpg', '164896056162492431618b1.webp', 124, 1, '2022-04-02 20:34:53', '2022-04-02 20:36:01'),
(127, 'dried-fruits', '', '1648982148624978842cfb7.jpg', '164898214862497884315dd.jpg', 30, 1, '2022-04-03 02:35:48', '2022-04-03 02:36:46');

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
(1, 4, 'English', 'Food', 'All Types Of Food', '2021-05-23 20:23:15', '2021-05-23 20:23:15'),
(3, 6, 'English', 'Beauty & Health', '', '2021-05-25 00:38:12', '2021-05-25 00:38:12'),
(4, 7, 'English', 'Baby Care', '', '2021-05-25 00:57:59', '2021-05-25 00:57:59'),
(5, 8, 'English', 'Hygiene', '', '2021-05-26 00:17:04', '2021-05-26 00:17:04'),
(6, 9, 'English', 'Home & Cleaning', '', '2021-05-26 00:29:41', '2021-05-26 00:29:41'),
(7, 11, 'English', 'Medicine', '', '2021-05-26 02:04:29', '2021-05-26 02:04:29'),
(8, 12, 'English', 'Breakfast', '', '2021-05-26 19:05:24', '2021-05-26 19:05:24'),
(9, 13, 'English', 'Health Care', '', '2021-05-26 19:05:54', '2021-05-26 19:05:54'),
(10, 14, 'English', 'Office Products', '', '2021-05-26 20:25:11', '2021-05-26 20:25:11'),
(11, 15, 'English', 'Kitchen Appliances', '', '2021-05-26 20:27:09', '2021-05-26 20:27:09'),
(23, 27, 'English', 'Snacks', '', '2022-01-16 01:28:33', '2022-01-16 01:28:33'),
(26, 30, 'English', 'Fruits & Vegetabels', '', '2022-01-17 01:52:04', '2022-01-17 01:52:04'),
(27, 31, 'English', 'Fresh Fruits', '', '2022-01-17 01:54:34', '2022-01-17 01:54:34'),
(28, 32, 'English', 'Vegitables', '', '2022-01-17 01:55:26', '2022-01-17 01:55:26'),
(29, 33, 'English', 'Noodles', '', '2022-01-17 01:56:31', '2022-01-17 01:56:31'),
(30, 34, 'English', 'Soups', '', '2022-01-17 01:57:34', '2022-01-17 01:57:34'),
(31, 35, 'English', 'Pasta', '', '2022-01-17 01:58:26', '2022-01-17 01:58:26'),
(32, 36, 'English', 'Chira, Muri & Chanachur', '', '2022-01-17 01:59:44', '2022-04-02 23:58:17'),
(33, 37, 'English', 'Chips & Pretzels', '', '2022-01-17 02:03:00', '2022-01-17 02:03:00'),
(34, 38, 'English', 'Popcorn & Nuts', '', '2022-01-17 02:03:53', '2022-01-17 02:03:53'),
(35, 39, 'English', 'Biscuits', '', '2022-01-17 02:04:51', '2022-01-17 02:04:51'),
(36, 40, 'English', 'Dairy', '', '2022-01-17 02:05:31', '2022-01-17 02:05:31'),
(37, 41, 'English', 'Liquid & UHT Milk', '', '2022-01-17 02:06:26', '2022-01-17 02:06:26'),
(39, 43, 'English', 'Powder Milk & Cream', '', '2022-01-17 02:08:24', '2022-01-17 02:08:24'),
(40, 44, 'English', 'Yogurt & Sweet', '', '2022-01-17 02:09:23', '2022-01-17 02:09:23'),
(41, 45, 'English', 'Frozen & Canned', '', '2022-01-17 02:10:06', '2022-01-17 02:10:06'),
(42, 46, 'English', 'Ice cream', '', '2022-01-17 02:11:14', '2022-01-17 02:11:14'),
(43, 47, 'English', 'Frozen Snacks', '', '2022-01-17 02:14:48', '2022-01-17 02:14:48'),
(44, 48, 'English', 'Canned Food', '', '2022-01-17 02:15:25', '2022-01-17 02:15:25'),
(45, 49, 'English', 'Bread & Bakery', '', '2022-01-17 02:18:07', '2022-01-17 02:18:07'),
(46, 50, 'English', 'Cookies', '', '2022-01-17 02:19:41', '2022-01-17 02:19:41'),
(47, 51, 'English', 'Bakery Snacks', '', '2022-01-17 02:20:57', '2022-01-17 02:20:57'),
(48, 52, 'English', 'Breads', '', '2022-01-17 02:21:33', '2022-01-17 02:21:33'),
(49, 53, 'English', 'Honey', '', '2022-01-17 02:22:18', '2022-01-17 02:22:18'),
(50, 54, 'English', 'Cakes', '', '2022-01-17 02:23:13', '2022-01-17 02:23:13'),
(51, 55, 'English', 'Cooking', '', '2022-01-17 02:24:03', '2022-01-17 02:24:03'),
(52, 56, 'English', 'Rice', '', '2022-01-17 02:25:16', '2022-01-17 02:25:16'),
(53, 57, 'English', 'Spices', '', '2022-01-17 02:26:03', '2022-01-17 02:26:03'),
(54, 58, 'English', 'Oil', '', '2022-01-17 02:26:41', '2022-01-17 02:26:41'),
(55, 59, 'English', 'Ghee', '', '2022-01-17 02:51:23', '2022-01-17 02:51:23'),
(56, 60, 'English', 'Salt Mix', '', '2022-01-17 02:52:28', '2022-01-17 02:52:28'),
(57, 61, 'English', 'Salt & Sugar', '', '2022-01-17 02:53:13', '2022-01-17 02:53:13'),
(58, 62, 'English', 'Dal', '', '2022-01-17 02:53:58', '2022-01-17 02:53:58'),
(59, 63, 'English', 'Atta, Shemai & Suji', '', '2022-01-17 02:54:33', '2022-03-13 03:42:52'),
(60, 64, 'English', 'Diabetic Food', '', '2022-01-17 02:55:16', '2022-01-17 02:55:16'),
(61, 65, 'English', 'Meat & Fish', '', '2022-01-17 02:55:58', '2022-01-17 02:55:58'),
(62, 66, 'English', 'Meat', '', '2022-01-17 02:56:28', '2022-01-17 02:56:28'),
(63, 67, 'English', 'Fish', '', '2022-01-17 02:59:13', '2022-01-17 02:59:13'),
(64, 68, 'English', 'Food Supplements', '', '2022-01-17 03:01:24', '2022-01-17 03:01:24'),
(65, 69, 'English', 'Herbal & Digestive Aid', '', '2022-01-17 03:02:03', '2022-01-17 03:02:03'),
(66, 70, 'English', 'First Aid', '', '2022-01-17 03:09:51', '2022-01-17 03:09:51'),
(67, 71, 'English', 'Adult Diapers', '', '2022-01-17 03:12:31', '2022-01-17 03:12:31'),
(68, 72, 'English', 'Personal Care', '', '2022-01-17 03:13:25', '2022-01-17 03:13:25'),
(69, 73, 'English', 'Clothing Essentials', '', '2022-01-17 03:32:16', '2022-01-17 03:32:16'),
(70, 74, 'English', 'Handwash', '', '2022-01-17 03:39:09', '2022-01-17 03:39:09'),
(71, 75, 'English', 'Tissue & Wipes', '', '2022-01-17 03:42:00', '2022-01-17 03:42:00'),
(72, 76, 'English', 'Talcom Powder', '', '2022-01-17 04:09:29', '2022-01-17 04:09:29'),
(73, 77, 'English', 'Newborn Essentials', '', '2022-01-17 04:10:59', '2022-01-17 04:10:59'),
(74, 78, 'English', 'Feeders', '', '2022-01-17 04:12:05', '2022-01-17 04:12:05'),
(75, 79, 'English', 'Bath & Skincare', '', '2022-01-17 04:12:34', '2022-01-17 04:12:34'),
(76, 80, 'English', 'Baby oral Care', '', '2022-01-17 04:12:43', '2022-01-17 04:12:43'),
(77, 81, 'English', 'Pet Care', '', '2022-01-18 00:10:32', '2022-01-18 00:10:32'),
(78, 82, 'English', 'Kitten Food', '', '2022-01-18 00:11:18', '2022-01-18 00:11:18'),
(79, 83, 'English', 'Cat Food', '', '2022-01-18 00:12:03', '2022-01-18 00:12:03'),
(80, 84, 'English', 'Dog Food', '', '2022-01-18 00:12:37', '2022-01-18 00:12:37'),
(81, 85, 'English', 'Other pet Foods', '', '2022-01-18 00:13:16', '2022-01-18 00:13:16'),
(82, 86, 'English', 'Pet Accessories', '', '2022-01-18 00:14:58', '2022-01-18 00:14:58'),
(83, 87, 'English', 'Air Fresheners', '', '2022-01-18 00:16:04', '2022-01-18 00:16:04'),
(84, 88, 'English', 'Dish Detergents', '', '2022-01-18 00:16:41', '2022-01-18 00:16:41'),
(85, 89, 'English', 'napkins', '', '2022-01-18 00:18:53', '2022-01-18 00:18:53'),
(86, 90, 'English', 'Pest Control', '', '2022-01-18 00:20:53', '2022-01-18 00:20:53'),
(87, 91, 'English', 'Food Storage', '', '2022-01-18 00:22:27', '2022-01-18 00:22:27'),
(88, 92, 'English', 'Batteries', '', '2022-01-18 00:24:36', '2022-01-18 00:24:36'),
(89, 93, 'English', 'Writing & Drawing', '', '2022-01-18 00:25:26', '2022-01-18 00:25:26'),
(90, 94, 'English', 'Colours', '', '2022-01-18 00:27:03', '2022-01-18 00:27:03'),
(91, 95, 'English', 'Pens', '', '2022-01-18 00:28:19', '2022-01-18 00:28:19'),
(92, 96, 'English', 'Highlighters & Markers', '', '2022-01-18 00:32:38', '2022-01-18 00:32:38'),
(93, 97, 'English', 'Notebooks', '', '2022-01-18 00:34:14', '2022-01-18 00:34:14'),
(94, 98, 'English', 'Organizing', '', '2022-01-18 00:36:24', '2022-01-18 00:36:24'),
(95, 99, 'English', 'Glue & Tapes', '', '2022-01-18 00:37:21', '2022-01-18 00:37:21'),
(96, 100, 'English', 'Files & Folders', '', '2022-01-18 00:38:32', '2022-01-18 00:38:32'),
(97, 101, 'English', 'Printing', '', '2022-01-18 00:39:31', '2022-01-18 00:39:31'),
(98, 102, 'English', 'Paper', '', '2022-01-18 00:40:04', '2022-01-18 00:40:04'),
(99, 103, 'English', 'Toner & Ink', '', '2022-01-18 00:40:43', '2022-01-18 00:40:43'),
(100, 104, 'English', 'Home Applications', '', '2022-01-18 00:46:10', '2022-01-18 00:46:10'),
(101, 105, 'English', 'Lights & Electrical', '', '2022-01-18 00:47:13', '2022-01-18 00:47:13'),
(102, 106, 'English', 'Tools & Hardware', '', '2022-01-18 00:48:02', '2022-01-18 00:48:02'),
(103, 107, 'English', 'Vehicle Essentials', '', '2022-01-18 00:50:38', '2022-01-18 00:50:38'),
(104, 108, 'English', 'Organic Items', '', '2022-01-18 00:51:45', '2022-01-18 00:51:45'),
(105, 109, 'English', 'Ready Mix', '', '2022-01-26 03:18:24', '2022-01-26 03:18:24'),
(106, 110, 'English', 'cheese', '', '2022-02-01 03:05:24', '2022-02-01 03:05:24'),
(108, 112, 'English', 'Soap', '', '2022-02-10 00:27:54', '2022-02-10 00:27:54'),
(109, 113, 'English', 'Skin Soap', '', '2022-02-10 00:45:07', '2022-02-10 00:45:07'),
(110, 114, 'English', 'Laundry Soap', '', '2022-02-10 00:47:06', '2022-02-10 00:47:06'),
(111, 115, 'English', 'Laundry', '', '2022-02-10 03:41:12', '2022-02-10 03:41:12'),
(112, 116, 'English', 'Tea & Coffee', '', '2022-02-12 01:59:21', '2022-02-12 01:59:21'),
(113, 117, 'English', 'Shampo', '', '2022-02-12 02:27:52', '2022-02-12 02:27:52'),
(116, 120, 'English', 'Oral Care', '', '2022-03-08 22:36:15', '2022-03-08 22:36:15'),
(117, 121, 'English', 'Colors & Flavours', '', '2022-03-14 03:47:34', '2022-03-14 04:01:04'),
(118, 122, 'English', 'Eggs', '', '2022-03-20 05:26:28', '2022-03-20 05:26:28'),
(119, 123, 'English', 'sauces', '', '2022-03-21 00:22:57', '2022-03-21 00:22:57'),
(120, 124, 'English', 'Beverages', '', '2022-04-02 20:03:34', '2022-04-02 20:21:13'),
(121, 125, 'English', 'Soft-Drinks', '', '2022-04-02 20:24:09', '2022-04-02 20:24:09'),
(122, 126, 'English', 'Syrups & Powder Drinks', '', '2022-04-02 20:34:53', '2022-04-02 20:34:53'),
(123, 127, 'English', 'Dried Fruits', '', '2022-04-03 02:35:48', '2022-04-03 02:35:48');

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

-- --------------------------------------------------------

--
-- Table structure for table `coupon_categories`
--

CREATE TABLE `coupon_categories` (
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(124, 84, 't', 't@gmail.com', '111', 'cndj', '90.00', 'Flat Rate', '0.00', NULL, '0.00', '90.00', 'BDT', 'cash_on_delivery', 'paid', 'completed', NULL, '', 'express', '2022-04-04 10:04:55', '2022-04-04 03:55:05', '2022-04-04 14:37:18'),
(125, 84, 't', 't@gmail.com', '111', 'cndj', '90.00', 'Flat Rate', '0.00', NULL, '0.00', '90.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2022-04-04 10:04:58', '2022-04-04 03:58:35', '2022-04-04 03:58:35'),
(126, 84, 't', 't@gmail.com', '111', 'cndj', '270.00', 'Flat Rate', '0.00', NULL, '0.00', '270.00', 'BDT', 'cash_on_delivery', 'pending', 'processing', NULL, '', 'express', '2022-04-04 11:04:01', '2022-04-04 04:01:17', '2022-04-04 06:50:12'),
(127, 84, 't', 't@gmail.com', '111', 'cndj', '32.00', 'Flat Rate', '0.00', NULL, '0.00', '32.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2022-04-04 14:04:00', '2022-04-04 07:00:34', '2022-04-04 07:00:34'),
(128, 84, 't', 't@gmail.com', '111', 'cndj', '23.00', 'Flat Rate', '0.00', NULL, '0.00', '23.00', 'BDT', 'cash_on_delivery', 'pending', 'pending', NULL, '', 'express', '2022-04-04 20:04:45', '2022-04-04 13:45:59', '2022-04-04 13:45:59');

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
(398, 124, 781, '90.00', 1, '90.00', '2022-04-04 03:55:05', '2022-04-04 03:55:05'),
(399, 125, 781, '90.00', 1, '90.00', '2022-04-04 03:58:35', '2022-04-04 03:58:35'),
(400, 126, 781, '90.00', 3, '270.00', '2022-04-04 04:01:17', '2022-04-04 04:01:17'),
(401, 127, 795, '32.00', 1, '32.00', '2022-04-04 07:00:34', '2022-04-04 07:00:34'),
(402, 128, 793, '23.00', 1, '23.00', '2022-04-04 13:45:59', '2022-04-04 13:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `order_responses`
--

CREATE TABLE `order_responses` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_responses`
--

INSERT INTO `order_responses` (`id`, `order_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 66, 0, '2022-03-08 06:29:29', '2022-03-08 04:29:16'),
(2, 85, 1, '2022-03-16 03:00:36', '2022-03-16 03:00:36');

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
(5, 5, 'English', 'Contact Us', '<p><span style=\"color: #000000;\"><strong>Office </strong></span></p>\r\n<p><span style=\"color: #000000;\">464/C, Khigaon, Dhaka 1219</span></p>\r\n<p><span style=\"color: #000000;\"><strong>E-mail:</strong> info@qbazar.com.bd</span></p>\r\n<p><span style=\"color: #000000;\"><strong>Phone :</strong> +88 01321177234</span></p>', '2021-10-18 08:18:07', '2022-03-21 03:45:14');

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
(38, 10, 'products.destroy', '2022-02-05 04:58:24', '2022-02-05 04:58:24'),
(39, 13, 'temp-product.index', '2022-03-09 00:52:29', '2022-03-09 00:52:29'),
(40, 13, 'temp-product.create', '2022-03-09 00:52:29', '2022-03-09 00:52:29'),
(41, 13, 'temp-product.show', '2022-03-09 00:52:29', '2022-03-09 00:52:29'),
(42, 13, 'temp-product.edit', '2022-03-09 00:52:29', '2022-03-09 00:52:29'),
(43, 13, 'products.index', '2022-03-09 00:52:29', '2022-03-09 00:52:29'),
(44, 13, 'products.create', '2022-03-09 00:52:29', '2022-03-09 00:52:29'),
(45, 13, 'products.edit', '2022-03-09 00:52:29', '2022-03-09 00:52:29'),
(46, 13, 'categories.index', '2022-03-09 00:52:29', '2022-03-09 00:52:29'),
(47, 13, 'categories.create', '2022-03-09 00:52:29', '2022-03-09 00:52:29'),
(48, 13, 'categories.show', '2022-03-09 00:52:29', '2022-03-09 00:52:29'),
(49, 13, 'units.index', '2022-03-09 00:52:29', '2022-03-09 00:52:29'),
(50, 13, 'units.create', '2022-03-09 00:52:29', '2022-03-09 00:52:29'),
(51, 13, 'units.edit', '2022-03-09 00:52:29', '2022-03-09 00:52:29'),
(107, 16, 'products.index', '2022-03-13 20:28:57', '2022-03-13 20:28:57'),
(108, 16, 'products.create', '2022-03-13 20:28:57', '2022-03-13 20:28:57'),
(109, 16, 'products.edit', '2022-03-13 20:28:57', '2022-03-13 20:28:57'),
(110, 16, 'orders.assign_delivery_boy', '2022-03-13 20:28:57', '2022-03-13 20:28:57'),
(111, 16, 'orders.index', '2022-03-13 20:28:57', '2022-03-13 20:28:57'),
(112, 16, 'orders.show', '2022-03-13 20:28:57', '2022-03-13 20:28:57'),
(113, 16, 'orders.update', '2022-03-13 20:28:57', '2022-03-13 20:28:57'),
(114, 16, 'orders.invoice', '2022-03-13 20:28:57', '2022-03-13 20:28:57'),
(115, 16, 'categories.index', '2022-03-13 20:28:57', '2022-03-13 20:28:57'),
(116, 16, 'categories.create', '2022-03-13 20:28:57', '2022-03-13 20:28:57'),
(117, 16, 'categories.show', '2022-03-13 20:28:57', '2022-03-13 20:28:57'),
(118, 16, 'categories.edit', '2022-03-13 20:28:57', '2022-03-13 20:28:57'),
(119, 16, 'units.index', '2022-03-13 20:28:57', '2022-03-13 20:28:57'),
(120, 16, 'units.create', '2022-03-13 20:28:57', '2022-03-13 20:28:57'),
(121, 16, 'units.edit', '2022-03-13 20:28:57', '2022-03-13 20:28:57'),
(161, 15, 'temp-product.index', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(162, 15, 'temp-product.create', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(163, 15, 'temp-product.show', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(164, 15, 'temp-product.edit', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(165, 15, 'products.index', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(166, 15, 'products.create', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(167, 15, 'products.edit', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(168, 15, 'orders.assign_delivery_boy', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(169, 15, 'orders.index', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(170, 15, 'orders.show', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(171, 15, 'orders.update', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(172, 15, 'orders.invoice', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(173, 15, 'categories.index', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(174, 15, 'categories.create', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(175, 15, 'categories.show', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(176, 15, 'categories.edit', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(177, 15, 'offers.index', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(178, 15, 'offers.create', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(179, 15, 'offers.edit', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(180, 15, 'units.index', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(181, 15, 'units.create', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(182, 15, 'units.edit', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(183, 15, 'customers.index', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(184, 15, 'customers.show', '2022-03-20 00:36:55', '2022-03-20 00:36:55'),
(206, 18, 'products.index', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(207, 18, 'products.create', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(208, 18, 'products.edit', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(209, 18, 'orders.assign_delivery_boy', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(210, 18, 'orders.index', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(211, 18, 'orders.show', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(212, 18, 'orders.update', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(213, 18, 'orders.destroy', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(214, 18, 'orders.invoice', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(215, 18, 'order.product', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(216, 18, 'order.product.search', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(217, 18, 'order.product.download', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(218, 18, 'order.product.search.download', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(219, 18, 'categories.index', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(220, 18, 'categories.create', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(221, 18, 'categories.show', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(222, 18, 'categories.edit', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(223, 18, 'units.index', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(224, 18, 'units.create', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(225, 18, 'units.edit', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(226, 18, 'reports.order_report', '2022-03-23 23:00:07', '2022-03-23 23:00:07'),
(227, 18, 'reports.sales_report', '2022-03-23 23:00:07', '2022-03-23 23:00:07');

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
  `s_key` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `unit_id`, `unit_number`, `slug`, `op_name`, `price`, `special_price`, `in_stock`, `viewed`, `is_active`, `thumbnail`, `banner`, `product_type`, `stock`, `xitem`, `s_key`, `created_at`, `updated_at`) VALUES
(246, 57, 43, '35.00', 'radhuni-roast-masala', 'এসিআই পিউর রোস্ট মসলা', '70.00', NULL, 1, 0, 1, '164673407862272afea3518.jpg', NULL, 'general', '595', 'IC--000246', NULL, '2022-01-25 01:17:39', '2022-03-08 02:10:48'),
(258, 57, 43, '45.00', 'dhakaiya-chicken-meat-masala', 'এসিআই ঢাকাইয়া কাচ্চি বিরিয়ানি মশলা', '60.00', NULL, 1, 0, 1, '16443885116203609fe4939.jpg', NULL, 'general', '595', 'IC--000258', NULL, '2022-01-25 01:28:25', '2022-03-14 22:11:13'),
(387, 57, 43, '50.00', 'aci-pure-turmeric-powder', 'এসিআই পিওর গুঁড়া হলুদ', '28.00', NULL, 1, 0, 1, '164387989161fb9dd338a19.jpg', NULL, 'general', '595', 'IC--000387', NULL, '2022-02-03 01:18:11', '2022-03-08 02:20:11'),
(388, 57, 43, '100.00', 'aci-pure-turmeric-powder', 'এসিআই পিওর গুঁড়া হলুদ', '50.00', NULL, 1, 0, 1, '164387997361fb9e25a2337.jpg', NULL, 'general', '595', 'IC--000388', NULL, '2022-02-03 01:19:33', '2022-03-08 02:20:24'),
(389, 57, 43, '200.00', 'aci-pure-turmeric-powder', 'এসিআই পিওর গুঁড়া হলুদ', '95.00', NULL, 1, 0, 1, '164388017161fb9eebf2734.jpg', NULL, 'general', '595', 'IC--000389', NULL, '2022-02-03 01:22:52', '2022-02-08 22:32:29'),
(390, 57, 43, '500.00', 'aci-pure-turmeric-powder', 'এসিআই পিওর গুঁড়া হলুদ', '200.00', NULL, 1, 0, 1, '164388022361fb9f1fd4318.jpg', NULL, 'general', '595', 'IC--000390', NULL, '2022-02-03 01:23:43', '2022-03-14 21:30:09'),
(391, 57, 43, '50.00', 'aci-pure-powdered-chilli', 'এসিআই পিওর গুঁড়া মরিচ', '30.00', NULL, 1, 0, 1, '164388052461fba04c0e973.jpg', NULL, 'general', '595', 'IC--000391', NULL, '2022-02-03 01:28:44', '2022-03-08 02:12:44'),
(392, 57, 43, '100.00', 'aci-pure-powdered-chilli', 'এসিআই পিওর গুঁড়া মরিচ', '53.00', NULL, 1, 0, 1, '164388059661fba094637b2.jpg', NULL, 'general', '595', 'IC--000392', NULL, '2022-02-03 01:29:56', '2022-03-08 02:13:19'),
(393, 57, 43, '200.00', 'aci-pure-powdered-chilli', 'এসিআই পিওর গুঁড়া মরিচ', '100.00', NULL, 1, 0, 1, '164388064761fba0c794697.jpg', NULL, 'general', '595', 'IC--000393', NULL, '2022-02-03 01:30:47', '2022-03-08 02:11:56'),
(394, 57, 43, '500.00', 'aci-pure-powdered-chilli', 'এসিআই পিওর গুঁড়া মরিচ', '245.00', NULL, 1, 0, 1, '164388069061fba0f20bc79.jpg', NULL, 'general', '595', 'IC--000394', NULL, '2022-02-03 01:31:30', '2022-03-08 02:13:00'),
(395, 57, 43, '50.00', 'aci-pure-coriander', 'এসিআই পিওর গুঁড়া ধনিয়া', '20.00', NULL, 1, 0, 1, '164388086161fba19d37635.jpg', NULL, 'general', '595', 'IC--000395', NULL, '2022-02-03 01:34:21', '2022-03-08 02:16:45'),
(396, 57, 43, '200.00', 'aci-pure-coriander-zira-gura-', 'এসিআই পিওর গুঁড়া ধনিয়া-জার', '75.00', NULL, 1, 0, 1, '16443863786203584aac6e7.jpg', NULL, 'general', '595', 'IC--000396', NULL, '2022-02-03 01:38:06', '2022-03-08 02:17:02'),
(398, 57, 43, '100.00', 'aci-pure-coriander-jar-zira-gura-', 'এসিআই পিওর গুঁড়া ধনিয়া', '35.00', NULL, 1, 0, 1, '164438635562035833a9c97.jpg', NULL, 'general', '595', 'IC--000398', NULL, '2022-02-03 01:44:00', '2022-03-08 02:16:52'),
(399, 57, 43, '50.00', 'aci-pure-cumin-powder-zira-gura-', 'এসিআই পিওর গুঁড়া জিরা', '43.00', NULL, 1, 0, 1, '164388167061fba4c6b344c.png', NULL, 'general', '595', 'IC--000399', NULL, '2022-02-03 01:47:50', '2022-03-08 02:17:58'),
(400, 57, 43, '100.00', 'aci-pure-cumin-zira-gura-', 'এসিআই পিওর গুঁড়া জিরা', '82.00', NULL, 1, 0, 1, '164388178161fba5358e3b1.png', NULL, 'general', '595', 'IC--000400', NULL, '2022-02-03 01:49:41', '2022-03-08 02:18:13'),
(401, 57, 43, '200.00', 'aci-pure-cumin-jar-zira-gura-', 'এসিআই পিওর গুঁড়া জিরা জার', '170.00', NULL, 1, 0, 1, '164388206561fba651b5ec7.jpg', NULL, 'general', '595', 'IC--000401', NULL, '2022-02-03 01:54:25', '2022-03-08 02:19:17'),
(403, 57, 43, '100.00', 'pure-meat-curry-masala', 'পিওর মাংসের মশলা', '65.00', NULL, 1, 0, 1, '164388989961fbc4eb08086.jpg', NULL, 'general', '595', 'IC--000403', NULL, '2022-02-03 04:04:59', '2022-03-08 02:41:52'),
(404, 57, 43, '20.00', '', 'এসিআই পিওর মুরগীর মাংসের মশলা', '15.00', NULL, 1, 0, 1, '164389001361fbc55d640b5.jpg', NULL, 'general', '595', 'IC--000404', NULL, '2022-02-03 04:06:53', '2022-03-08 00:57:37'),
(405, 57, 43, '20.00', 'pure-beef-curry-masala', 'এসিআই পিওর গরুর মাংসের মশলা', '18.00', NULL, 1, 0, 1, '164432468962026751818c6.jpg', NULL, 'general', '595', 'IC--000405', NULL, '2022-02-03 04:09:36', '2022-03-08 00:55:57'),
(406, 57, 43, '20.00', 'pure-fish-curry', 'এসিআই  মাছের মশলা', '10.00', NULL, 1, 0, 1, '164389030161fbc67dece7d.jpg', NULL, 'general', '595', 'IC--000406', NULL, '2022-02-03 04:11:42', '2022-03-08 01:01:34'),
(409, 57, 43, '50.00', 'chotpoti-masala', 'এসিআই পিওর চটপটি মশলা', '40.00', NULL, 1, 0, 1, '164406234261fe668679bee.jpg', NULL, 'general', '595', 'IC--000409', NULL, '2022-02-05 03:59:02', '2022-03-08 01:24:48'),
(410, 57, 43, '50.00', 'pachforon', 'পাঁচফোড়ন', '22.00', NULL, 1, 0, 1, '164406339361fe6aa1a1eeb.jpg', NULL, 'general', '595', 'IC--000410', NULL, '2022-02-05 04:16:33', '2022-02-08 22:28:11'),
(411, 57, 43, '200.00', 'fun-fresh-fry', 'এসিআই ফান ফ্রেশ ফ্রাই', '40.00', NULL, 1, 0, 0, '164406356361fe6b4b62b55.PNG', NULL, 'general', '595', 'IC--000411', NULL, '2022-02-05 04:19:23', '2022-03-15 00:38:24'),
(412, 57, 43, '40.00', 'tehari-masala', 'এসিআই পিওর তেহারি মশলা', '45.00', NULL, 1, 0, 1, '164406358661fe6b6260198.jpg', NULL, 'general', '595', 'IC--000412', NULL, '2022-02-05 04:19:46', '2022-03-08 01:23:09'),
(413, 57, 43, '65.00', 'aci-pure-mezbani-masala', 'এসিআই পিওর মেজবানি মশলা', '70.00', NULL, 1, 0, 1, '164406372861fe6bf06605e.jpg', NULL, 'general', '595', 'IC--000413', NULL, '2022-02-05 04:22:08', '2022-03-08 01:09:19'),
(414, 57, 43, '50.00', 'aci-kabab-masala', 'কাবাব মশলা', '90.00', NULL, 1, 0, 1, '164406380861fe6c40928f7.jpg', NULL, 'general', '595', 'IC--000414', NULL, '2022-02-05 04:23:28', '2022-03-08 01:06:39'),
(415, 54, 43, '14.00', 'fun-cup-cake-butter-', 'এসিআই ফান কাপ কেক', '5.00', NULL, 1, 0, 1, '164406387361fe6c812b7da.jpg', NULL, 'general', '595', 'IC--000415', NULL, '2022-02-05 04:24:33', '2022-03-08 01:34:32'),
(416, 57, 43, '50.00', 'pure-garam-masala', 'এসিআই পিওর গরম মশলা', '55.00', NULL, 1, 0, 1, '164406393361fe6cbd11cda.jpg', NULL, 'general', '595', 'IC--000416', NULL, '2022-02-05 04:25:33', '2022-03-14 21:52:21'),
(417, 109, 43, '150.00', 'pure-kheer-mix', 'এসিআই পিওর ক্ষীর মিক্স', '40.00', NULL, 1, 0, 1, '164406410861fe6d6cd8126.jpg', NULL, 'general', '595', 'IC--000417', NULL, '2022-02-05 04:28:28', '2022-03-09 21:42:48'),
(418, 30, 43, '400.00', 'pure-mango-pickle', 'এসিআই পিওর আমের আচার', '135.00', NULL, 1, 0, 1, '1647080238622c732e8e214.jpg', NULL, 'general', '595', 'IC--000418', NULL, '2022-02-05 04:29:12', '2022-03-12 03:02:43'),
(419, 109, 43, '200.00', 'pure-halim-mix', 'এসিআই হালিম মিক্স', '55.00', NULL, 1, 0, 1, '164406418361fe6db7db9b4.jpeg', NULL, 'general', '595', 'IC--000419', NULL, '2022-02-05 04:29:43', '2022-03-09 21:40:21'),
(429, 113, 43, '125.00', 'aci-savlon-active-antiseptic-soap', 'এ সি আই স্যাভলন একটিভ এনটিসেপটিক সাবান', '60.00', NULL, 1, 0, 1, '16444819566204cda49f2bd.jpg', NULL, 'general', '595', 'IC--000429', NULL, '2022-02-10 00:32:36', '2022-02-10 00:48:22'),
(430, 8, 46, '1000.00', 'aci-savlon-liquid-antiseptic', 'এসিআই স্যাভলন লিকুইড অ্যান্টিসেপ্টিক', '220.00', NULL, 1, 0, 1, '16444821676204ce77cbd2b.jpeg', NULL, 'general', '595', 'IC--000430', NULL, '2022-02-10 00:36:07', '2022-02-10 00:36:07'),
(431, 8, 46, '500.00', 'aci-savlon-liquid-antiseptic', 'এসিআই স্যাভলন লিকুইড অ্যান্টিসেপ্টিক', '125.00', NULL, 1, 0, 1, '16444823186204cf0e84747.jpeg', NULL, 'general', '595', 'IC--000431', NULL, '2022-02-10 00:38:38', '2022-02-10 00:38:38'),
(432, 114, 43, '125.00', 'wheel-laundry-soap', 'হুইল লন্ড্রি সাবান', '22.00', NULL, 1, 0, 1, '16444830746204d2026af7e.webp', NULL, 'general', '595', 'IC--000432', NULL, '2022-02-10 00:51:14', '2022-03-08 03:05:00'),
(433, 115, 41, '2.00', 'wheel-powder-clean-fresh', 'হুইল পাউডার ক্লিন এ্যান্ড ফ্রেশ', '220.00', NULL, 1, 0, 1, '16444937866204fbda0a2d2.jpg', NULL, 'general', '595', 'IC--000433', NULL, '2022-02-10 03:42:10', '2022-03-08 03:05:35'),
(434, 115, 41, '1.00', 'wheel-powder-clean-fresh', 'হুইল পাউডার ক্লিন এ্যান্ড ফ্রেশ', '105.00', NULL, 1, 0, 1, '16444936186204fb321e209.jpg', NULL, 'general', '595', 'IC--000434', NULL, '2022-02-10 03:45:02', '2022-03-08 03:05:22'),
(435, 115, 43, '500.00', 'wheel-powder-clean-fresh', 'হুইল পাউডার ক্লিন এ্যান্ড ফ্রেশ', '52.00', NULL, 1, 0, 1, '16444936996204fb8355976.jpg', NULL, 'general', '595', 'IC--000435', NULL, '2022-02-10 03:46:34', '2022-03-08 03:05:14'),
(436, 115, 46, '400.00', 'rin-liquid', 'রিন লিকুইড', '90.00', NULL, 1, 0, 1, '16444941426204fd3ec2216.jpg', NULL, 'general', '595', 'IC--000436', NULL, '2022-02-10 03:55:42', '2022-03-08 02:57:53'),
(437, 115, 43, '500.00', 'rin-standard-powder', 'রিন স্ট্যান্ডার্ড পাউডার', '70.00', NULL, 1, 0, 1, '16444943176204fded93d6d.jpeg', NULL, 'general', '595', 'IC--000437', NULL, '2022-02-10 03:58:37', '2022-03-08 02:58:07'),
(438, 115, 41, '1.00', 'rin-standard-powder', 'রিন স্ট্যান্ডার্ড পাউডার', '135.00', NULL, 1, 0, 1, '16444943616204fe1921076.jpeg', NULL, 'general', '595', 'IC--000438', NULL, '2022-02-10 03:59:21', '2022-03-08 02:58:16'),
(439, 74, 47, '5.00', 'lifebuoy-liquid-handwash', 'লাইফবয় লিকুইড হ্যান্ডওয়াশ', '1100.00', NULL, 1, 0, 1, '16444943676204fe1fe4454.jpg', NULL, 'general', '595', 'IC--000439', NULL, '2022-02-10 03:59:27', '2022-03-08 02:48:12'),
(440, 115, 43, '200.00', 'surf-excel-standard-powder', 'সার্ফ এক্সেল স্ট্যান্ডার্ড পাউডার', '40.00', NULL, 1, 0, 1, '16444945176204feb5bf6a9.jpg', NULL, 'general', '595', 'IC--000440', NULL, '2022-02-10 04:01:57', '2022-03-08 03:00:41'),
(441, 115, 41, '1.00', 'surf-excel-standard-powder', 'সার্ফ এক্সেল স্ট্যান্ডার্ড পাউডার', '210.00', NULL, 1, 0, 1, '16444947436204ff9758852.jpg', NULL, 'general', '595', 'IC--000441', NULL, '2022-02-10 04:05:43', '2022-02-10 04:05:43'),
(442, 115, 46, '500.00', 'surf-exce-quick-qash-liquid', 'সার্ফ এক্সেল কুইক ওয়াশিং লিকুইড', '160.00', NULL, 1, 0, 1, '1644494870620500161dea0.jpg', NULL, 'general', '595', 'IC--000442', NULL, '2022-02-10 04:07:50', '2022-03-08 02:59:42'),
(443, 115, 43, '500.00', 'surf-excel-standard-powder', 'সার্ফ এক্সেল স্ট্যান্ডার্ড পাউডার', '105.00', NULL, 1, 0, 1, '16444949616205007111385.jpg', NULL, 'general', '595', 'IC--000443', NULL, '2022-02-10 04:09:21', '2022-03-08 03:00:15'),
(444, 115, 43, '50.00', 'surf-excel-standard-powder', 'সার্ফ এক্সেল স্ট্যান্ডার্ড পাউডার', '10.00', NULL, 1, 0, 1, '1644495036620500bc09bf1.jpg', NULL, 'general', '595', 'IC--000444', NULL, '2022-02-10 04:10:36', '2022-03-08 03:00:28'),
(445, 74, 46, '100.00', 'lifebuoy-liquid-handwash-lemon', 'লাইফবয় লিকুইড হ্যান্ডওয়াশ লেমন', '35.00', NULL, 1, 0, 1, '1644495300620501c47af35.jpg', NULL, 'general', '595', 'IC--000445', NULL, '2022-02-10 04:15:00', '2022-03-08 02:48:44'),
(446, 74, 46, '250.00', 'lifebuoy-liquid-handwash', 'লাইফবয় লিকুইড হ্যান্ডওয়াশ', '85.00', NULL, 1, 0, 1, '1646815473622868f1c4c15.jpg', NULL, 'general', '595', 'IC--000446', 'lifebuoy', '2022-02-10 04:16:26', '2022-04-02 04:04:19'),
(447, 74, 46, '170.00', 'lifebuoy-liquid-handwash-cool-fresh', 'লাইফবয় লিকুইড হ্যান্ডওয়াশ কুল ফ্রেশ', '60.00', NULL, 1, 0, 1, '1644495612620502fc850dd.png', NULL, 'general', '595', 'IC--000447', NULL, '2022-02-10 04:20:12', '2022-03-08 02:49:48'),
(448, 113, 43, '30.00', 'lifebuoy-bar-lemon-fresh', 'লাইফবয় বার লেমন ফ্রেশ', '10.00', NULL, 1, 0, 1, '164449575162050387d9564.webp', NULL, 'general', '595', 'IC--000448', NULL, '2022-02-10 04:22:32', '2022-03-08 02:49:34'),
(449, 113, 43, '150.00', 'lifebuoy-bar-care', 'লাইফবয় স্কিন বার কেয়ার', '55.00', NULL, 1, 0, 1, '1644496086620504d63fbd2.jpg', NULL, 'general', '595', 'IC--000449', NULL, '2022-02-10 04:28:06', '2022-03-08 02:54:50'),
(450, 113, 43, '100.00', 'lifebuoy-skin-bar', 'লাইফবয় স্কিন বার', '38.00', NULL, 1, 0, 1, '164449623162050567c8053.jpg', NULL, 'general', '595', 'IC--000450', NULL, '2022-02-10 04:30:31', '2022-03-08 02:53:35'),
(451, 113, 43, '100.00', 'lifebuoy-skin-bar-care', 'লাইফবয় স্কিন বার কেয়ার', '38.00', NULL, 1, 0, 1, '1644496328620505c813669.jpg', NULL, 'general', '595', 'IC--000451', NULL, '2022-02-10 04:32:08', '2022-03-08 02:50:47'),
(452, 113, 43, '150.00', 'lifebuoy-skin-bar', 'লাইফবয় স্কিন সাবান', '55.00', NULL, 1, 0, 1, '1644496351620505df88eff.jpeg', NULL, 'general', '595', 'IC--000452', NULL, '2022-02-10 04:32:31', '2022-03-08 02:53:56'),
(453, 113, 43, '100.00', 'lux-bar-camelia-and-aloe-vera', 'লাক্স বার কেমেলিয়া এন্ড এলভেরা', '40.00', NULL, 1, 0, 1, '1644496562620506b294409.jpg', NULL, 'general', '595', 'IC--000453', NULL, '2022-02-10 04:36:02', '2022-02-10 04:36:02'),
(454, 113, 43, '50.00', 'dove-skin-cleansing-bar', 'ডাভ স্কিন ক্লিনজিং বার হোয়াইট', '50.00', NULL, 1, 0, 1, '16446569586207793e98e4a.jpg', NULL, 'general', '595', 'IC--000454', NULL, '2022-02-12 01:09:19', '2022-03-08 02:47:40'),
(455, 113, 43, '100.00', 'dove-skin-cleansing-bar-pink', 'ডাভ স্কিন ক্লিনজিং বার হোয়াইট পিঙ্ক', '95.00', NULL, 1, 0, 1, '1644657075620779b3dafe6.jpg', NULL, 'general', '595', 'IC--000455', NULL, '2022-02-12 01:11:15', '2022-03-08 02:47:03'),
(456, 113, 43, '100.00', 'dove-skin-cleansing-bar-white', 'ডাভ স্কিন ক্লিনজিং বার হোয়াইট', '95.00', NULL, 1, 0, 1, '164465717762077a19b888d.jpg', NULL, 'general', '595', 'IC--000456', NULL, '2022-02-12 01:12:57', '2022-03-08 02:45:39'),
(457, 113, 43, '135.00', 'dove-skin-cleansing-bar-pink', 'ডাভ স্কিন ক্লিনজিং বার হোয়াইট পিঙ্ক', '125.00', NULL, 1, 0, 1, '164465723662077a540951f.jpg', NULL, 'general', '595', 'IC--000457', NULL, '2022-02-12 01:13:56', '2022-03-08 02:45:34'),
(458, 113, 43, '100.00', 'glow-and-lovely-bar-multivitamin', 'গ্লো অ্যান্ড লাভলি সোপ বার মাল্টিভিটামিন', '40.00', NULL, 1, 0, 1, '164465766362077bff38f16.jpg', NULL, 'general', '595', 'IC--000458', NULL, '2022-02-12 01:21:03', '2022-02-12 01:21:03'),
(459, 113, 43, '100.00', 'glow-lovely-bar-multani-mati', 'গ্লো অ্যান্ড লাভলি সোপ বার মুলতানি মাটি', '40.00', NULL, 1, 0, 1, '164465786262077cc66d62a.jpg', NULL, 'general', '595', 'IC--000459', NULL, '2022-02-12 01:24:22', '2022-02-12 01:24:22'),
(460, 88, 43, '125.00', 'vim-bar-ice-hockey', 'ভিম বার আইস হকি', '15.00', NULL, 1, 0, 1, '1644659049620781699b815.jpg', NULL, 'general', '595', 'IC--000460', NULL, '2022-02-12 01:44:09', '2022-03-08 03:04:45'),
(461, 88, 43, '300.00', 'vim-bar-ice-hockey', 'ভিম বার আইস হকি', '35.00', NULL, 1, 0, 1, '1644659145620781c9cba98.jpg', NULL, 'general', '595', 'IC--000461', NULL, '2022-02-12 01:45:45', '2022-03-08 03:03:49'),
(462, 116, 43, '200.00', 'brooke-bond-taaza-black-tea', 'ব্রুক বন্ড তাজা ব্ল্যাক টি', '100.00', NULL, 1, 0, 1, '16446600916207857b1e001.png', NULL, 'general', '595', 'IC--000462', NULL, '2022-02-12 02:01:31', '2022-02-12 02:01:31'),
(463, 116, 43, '400.00', 'brooke-bond-taaza-black-tea', 'ব্রুক বন্ড তাজা ব্ল্যাক টি', '199.00', NULL, 1, 0, 1, '1644660131620785a3af95c.png', NULL, 'general', '595', 'IC--000463', NULL, '2022-02-12 02:02:11', '2022-02-12 02:02:11'),
(464, 116, 44, '1.00', 'brooke-bond-taaza-tea-bag', 'ব্রুক বন্ড তাজা ব্ল্যাক টি ব্যাগস', '85.00', NULL, 1, 0, 1, '1644660422620786c6cb641.jpg', NULL, 'general', '595', 'IC--000464', NULL, '2022-02-12 02:07:02', '2022-03-08 03:03:22'),
(465, 34, 43, '31.00', 'knorr-hot-and-sour-chicken-soup', 'নর হট এন্ড সৌর চিকেন স্যুপ', '40.00', NULL, 1, 0, 1, '16446608076207884716dcd.png', NULL, 'general', '595', 'IC--000465', NULL, '2022-02-12 02:13:27', '2022-02-12 02:13:27'),
(466, 34, 43, '12.00', 'knorr-instant-cup-thai-soup', 'নর ইনিস্টেন্ট কাপ থাই স্যুপ', '20.00', NULL, 1, 0, 1, '1644661201620789d1c052e.webp', NULL, 'general', '595', 'IC--000466', NULL, '2022-02-12 02:20:01', '2022-02-12 02:20:01'),
(467, 34, 43, '28.00', 'knorr-soup-thai', 'নর স্যুপ থাই', '40.00', NULL, 1, 0, 1, '164466129262078a2c75d37.webp', NULL, 'general', '595', 'IC--000467', NULL, '2022-02-12 02:21:32', '2022-02-12 02:21:32'),
(468, 109, 43, '75.00', 'knorr-crispy-fried-chicken-mix', 'নর ক্রিস্পি ফ্রাইড চিকেন মিক্স', '70.00', NULL, 1, 0, 1, '164466157962078b4b346c5.jpg', NULL, 'general', '595', 'IC--000468', NULL, '2022-02-12 02:26:19', '2022-03-09 21:42:13'),
(469, 117, 46, '180.00', 'sunsilk-shampoo-hijab-recharge', 'সানসিল্ক শ্যাম্পু হিজাব রিচার্জ', '215.00', NULL, 1, 0, 1, '164466188662078c7e9f8be.jpg', NULL, 'general', '595', 'IC--000469', NULL, '2022-02-12 02:31:26', '2022-03-08 02:59:14'),
(470, 117, 46, '180.00', 'sunsilk-shampoo-stunning-black-shine', 'সানসিল্ক শ্যাম্পু স্টানিং ব্ল্যাক শাইন', '195.00', NULL, 1, 0, 1, '16474329906231d51e2afb9.jpg', NULL, 'general', '595', 'IC--000470', NULL, '2022-02-12 02:34:33', '2022-03-16 04:16:30'),
(471, 117, 46, '180.00', 'clear-hijab-anti-limp-shampoo', 'ক্লিয়ার হিজাব অ্যান্টি লিম্প শ্যাম্পু', '210.00', NULL, 1, 0, 1, '164466249362078edd80987.jpg', NULL, 'general', '595', 'IC--000471', NULL, '2022-02-12 02:41:33', '2022-03-08 02:44:03'),
(472, 120, 46, '145.00', 'closeup-toothpaste-cool-mint', 'ক্লোজআপ টুথপেস্ট কুল মিন্ট', '120.00', NULL, 1, 0, 1, '1644662803620790137ab70.jpg', NULL, 'general', '595', 'IC--000472', NULL, '2022-02-12 02:45:56', '2022-03-08 22:37:17'),
(473, 120, 43, '140.00', 'pepsodent-sensitive-expert-professional', 'পেপসোডেন্ট টুথপেস্ট সেন্সিটিভ এক্সপার্ট প্রোফেশনাল', '180.00', NULL, 1, 0, 1, '1644663758620793cee1177.png', NULL, 'general', '595', 'IC--000473', NULL, '2022-02-12 03:02:39', '2022-03-08 22:36:47'),
(499, 117, 46, '170.00', 'dove-shampoo-healthy-grow', 'ডাভ শ্যাম্পু হেলদি গ্রো', '220.00', NULL, 1, 0, 1, '1646727364622710c4bb026.jpeg', NULL, 'general', '595', 'IC--000499', NULL, '2022-03-08 00:16:04', '2022-03-08 02:47:50'),
(500, 74, 46, '245.00', 'lux-handwash-rose-and-almond-oil', 'লাক্স হ্যান্ডওয়াশ রোজ ও এলমন্ড অয়েল', '150.00', NULL, 1, 0, 1, '1646729131622717abeec99.jpg', NULL, 'general', '595', 'IC--000500', NULL, '2022-03-08 00:45:32', '2022-03-08 00:45:32'),
(501, 56, 41, '1.00', 'aci-pure-aromatic-broken-rice', 'এসিআই পিওর এরোমেটিক ব্রোকেন রাইস', '70.00', NULL, 1, 0, 1, '1646729646622719ae393a0.webp', NULL, 'general', '595', 'IC--000501', NULL, '2022-03-08 00:54:06', '2022-03-08 01:09:06'),
(502, 113, 43, '100.00', 'lux-soap-bar-soft-glow', 'লাক্স সাবান বার সফট গ্লো', '45.00', NULL, 1, 0, 1, '1646729679622719cf498e4.jpg', NULL, 'general', '595', 'IC--000502', 'lux', '2022-03-08 00:54:39', '2022-04-02 02:35:50'),
(503, 39, 43, '300.00', 'aci-pure-plain-toast', NULL, '60.00', NULL, 1, 0, 1, '164673121862271fd26d903.jpg', NULL, 'general', '595', 'IC--000503', NULL, '2022-03-08 01:20:18', '2022-03-15 00:37:09'),
(504, 58, 46, '80.00', 'aci-pure-mustard-oil', 'এসিআই পিওর সরিষার তেল', '30.00', NULL, 1, 0, 1, '16473337696230518949515.jpg', NULL, 'general', '595', 'IC--000504', NULL, '2022-03-08 01:22:40', '2022-03-20 04:03:18'),
(505, 58, 46, '200.00', 'aci-pure-mustard-oil', 'এসিআই পিওর সরিষার তেল', '85.00', NULL, 1, 0, 1, '16473334586230505259cea.jpg', NULL, 'general', '595', 'IC--000505', NULL, '2022-03-08 01:23:58', '2022-03-20 04:06:22'),
(506, 58, 46, '500.00', 'aci-pure-mustard-oil', 'এসিআই পিওর সরিষার তেল', '150.00', NULL, 1, 0, 1, '164733395262305240e1d76.jpg', NULL, 'general', '595', 'IC--000506', NULL, '2022-03-08 01:24:57', '2022-03-20 04:00:09'),
(507, 36, 43, '130.00', 'fun-chanachur-hot-spicy', 'ফান চানাচুর হট এন্ড স্পাইসি', '35.00', NULL, 1, 0, 1, '16467325746227251e06890.jpg', NULL, 'general', '595', 'IC--000507', 'chanachur', '2022-03-08 01:42:54', '2022-04-02 21:12:45'),
(508, 36, 43, '280.00', 'fun-chanachur-hot-and-spicy', 'ফান চানাচুর হট এন্ড স্পাইসি', '75.00', NULL, 1, 0, 1, '16467328906227265a639cb.jpg', NULL, 'general', '595', 'IC--000508', 'chanachur', '2022-03-08 01:48:10', '2022-04-02 21:13:38'),
(509, 33, 43, '150.00', 'aci-thai-noodles-oriental-thai', 'এসিআই থাই নুড্লস অরিয়েন্টাল থাই', '35.00', NULL, 1, 0, 1, '1646733488622728b0b29cc.jpg', NULL, 'general', '595', 'IC--000509', NULL, '2022-03-08 01:58:08', '2022-03-08 01:58:08'),
(511, 90, 46, '250.00', 'aci-aerosol-spray', 'এসিআই এরোসল স্প্রে', '205.00', NULL, 1, 0, 1, '164680806762284c032d616.jpg', NULL, 'general', '595', 'IC--000511', NULL, '2022-03-08 22:18:42', '2022-03-19 20:43:47'),
(514, 90, 46, '350.00', 'aci-aerosol-spray', 'এসিআই এরোসল স্প্রে', '275.00', NULL, 1, 0, 1, '164680822162284c9dc84f4.jpeg', NULL, 'general', '595', 'IC--000514', NULL, '2022-03-08 22:43:41', '2022-03-19 20:43:10'),
(515, 90, 46, '475.00', 'aci-aerosol-spray', 'এসিআই এরোসল স্প্রে', '335.00', NULL, 1, 0, 1, '164680826562284cc97cc48.png', NULL, 'general', '595', 'IC--000515', NULL, '2022-03-08 22:44:25', '2022-03-19 20:42:40'),
(516, 90, 46, '800.00', 'aci-aerosol-spray', 'এসিআই এরোসল স্প্রে', '495.00', NULL, 1, 0, 1, '164680862262284e2e223a2.jpg', NULL, 'general', '595', 'IC--000516', NULL, '2022-03-08 22:49:19', '2022-03-19 20:42:16'),
(517, 120, 43, '100.00', 'aci-colgate-active-salt', 'এসিআই কোলগেট একটিভ সল্ট', '90.00', NULL, 1, 0, 1, '164680895362284f79aeb95.png', NULL, 'general', '595', 'IC--000517', NULL, '2022-03-08 22:55:53', '2022-03-19 20:44:31'),
(518, 120, 43, '200.00', 'aci-colgate-active-salt', 'এসিআই কোলগেট একটিভ সল্ট', '160.00', NULL, 1, 0, 1, '164680906462284fe8424c3.png', NULL, 'general', '595', 'IC--000518', NULL, '2022-03-08 22:57:44', '2022-03-19 20:45:05'),
(519, 113, 43, '100.00', 'neem-original-olive-aloe-vera-soap', 'এ সি আই নিম অরিজিনাল (অলিভ ও এলোভেরা) সাবান', '42.00', NULL, 1, 0, 1, '1646809248622850a02cdd3.jpg', NULL, 'general', '595', 'IC--000519', NULL, '2022-03-08 23:00:48', '2022-03-19 20:45:44'),
(520, 56, 41, '1.00', 'nazirshail-rice', 'প্রিমিয়াম নাজিরশাইল চাল', '74.00', NULL, 1, 0, 1, '164680940162285139a36eb.webp', NULL, 'general', '595', 'IC--000520', NULL, '2022-03-08 23:03:21', '2022-03-19 20:40:25'),
(521, 56, 41, '1.00', 'miniket-rice', 'প্রিমিয়াম মিনিকেট চাল', '68.00', NULL, 1, 0, 1, '1646809476622851849dbcb.webp', NULL, 'general', '595', 'IC--000521', NULL, '2022-03-08 23:04:36', '2022-03-19 20:41:33'),
(523, 88, 46, '500.00', 'vim-liquid-dishwash', 'ভিম লিকুইড ডিশওয়াশ', '110.00', NULL, 1, 0, 1, '164681679862286e1eee37e.jpg', NULL, 'general', '595', 'IC--000523', NULL, '2022-03-09 01:06:39', '2022-03-09 01:14:40'),
(524, 33, 43, '180.00', 'aci-pure-tandoori-stick-noodles', 'এসিআই পিওর তন্দুরি স্টিক নুডলস', '20.00', NULL, 1, 0, 1, '164681714062286f74e50aa.jpg', NULL, 'general', '595', 'IC--000524', NULL, '2022-03-09 01:12:20', '2022-03-20 21:37:56'),
(525, 57, 43, '100.00', 'radhuni-cumin-powder', 'রাঁধুনী জিরা গুঁড়া', '88.00', NULL, 1, 0, 1, '1646887132622980dcf2f92.webp', NULL, 'general', '595', 'IC--000525', NULL, '2022-03-09 20:38:53', '2022-03-14 04:54:10'),
(526, 57, 43, '100.00', 'radhuni-turmeric-powder', 'রাঁধুনী হলুদের গুঁড়া', '50.00', NULL, 1, 0, 1, '1646887368622981c8bf805.jpg', NULL, 'general', '595', 'IC--000526', NULL, '2022-03-09 20:42:48', '2022-03-14 04:36:10'),
(527, 57, 43, '200.00', 'radhuni-cumin-powder', 'রাঁধুনী জিরা গুঁড়া', '170.00', NULL, 1, 0, 1, '16468875506229827e8bad9.webp', NULL, 'general', '595', 'IC--000527', NULL, '2022-03-09 20:45:50', '2022-03-09 20:45:50'),
(528, 57, 43, '200.00', 'radhuni-turmeric-powder', 'রাঁধুনী হলুদের গুঁড়া', '95.00', NULL, 1, 0, 1, '1646887629622982cd1b2ad.jpg', NULL, 'general', '595', 'IC--000528', NULL, '2022-03-09 20:47:09', '2022-03-14 04:35:56'),
(529, 57, 43, '200.00', 'radhuni-cumin-powder-pet-jar', 'রাঁধুনী জিরা গুঁড়া জার', '175.00', NULL, 1, 0, 1, '164688776162298351e1b42.jpg', NULL, 'general', '595', 'IC--000529', NULL, '2022-03-09 20:49:21', '2022-03-14 04:54:00'),
(530, 57, 43, '200.00', 'radhuni-turmeric-powder-jar-', 'রাঁধুনী হলুদের গুঁড়া  (জার)', '110.00', NULL, 1, 0, 1, '16468878066229837e8c880.jpg', NULL, 'general', '595', 'IC--000530', NULL, '2022-03-09 20:50:06', '2022-03-14 04:35:37'),
(531, 57, 43, '100.00', 'radhuni-chilli-powder', 'রাঁধুনী মরিচ গুঁড়া', '53.00', NULL, 1, 0, 1, '16468880676229848329af7.webp', NULL, 'general', '595', 'IC--000531', NULL, '2022-03-09 20:54:27', '2022-03-14 04:50:08'),
(532, 57, 43, '15.00', 'radhuni-garam-masala', 'রাঁধুনী গরম মশলার গুঁড়া', '28.00', NULL, 1, 0, 1, '1646888111622984af0b89f.webp', NULL, 'general', '595', 'IC--000532', NULL, '2022-03-09 20:55:11', '2022-03-09 22:26:18'),
(533, 57, 43, '200.00', 'radhuni-chilli-powder', 'রাঁধুনী মরিচ গুঁড়া', '100.00', NULL, 1, 0, 1, '1646888130622984c2f000d.webp', NULL, 'general', '595', 'IC--000533', NULL, '2022-03-09 20:55:31', '2022-03-14 04:50:54'),
(534, 57, 43, '200.00', 'radhuni-chilli-powder-jar-', 'রাঁধুনী মরিচ গুঁড়া (জার)', '115.00', NULL, 1, 0, 1, '16468882986229856ae26d7.webp', NULL, 'general', '595', 'IC--000534', NULL, '2022-03-09 20:58:18', '2022-03-14 03:08:06'),
(535, 57, 43, '40.00', 'radhuni-garam-masala', 'রাঁধুনী গরম মশলার গুঁড়া', '68.00', NULL, 1, 0, 1, '1646888390622985c6de8ca.webp', NULL, 'general', '595', 'IC--000535', NULL, '2022-03-09 20:59:50', '2022-03-14 04:54:46'),
(536, 57, 43, '100.00', 'radhuni-coriander-powder', 'রাঁধুনী ধনিয়া গুঁড়া', '33.00', NULL, 1, 0, 1, '1646888416622985e0e3ee0.webp', NULL, 'general', '595', 'IC--000536', NULL, '2022-03-09 21:00:16', '2022-03-14 21:02:21'),
(537, 57, 43, '100.00', 'radhuni-meat-curry-masala', 'রাঁধুনী মাংসের মশলা', '65.00', NULL, 1, 0, 1, '164688859662298694287e1.webp', NULL, 'general', '595', 'IC--000537', NULL, '2022-03-09 21:03:16', '2022-03-09 21:03:16'),
(538, 57, 43, '200.00', 'radhuni-coriander-powder', 'রাঁধুনী ধনিয়া গুঁড়া', '63.00', NULL, 1, 0, 1, '1646888626622986b293976.webp', NULL, 'general', '595', 'IC--000538', NULL, '2022-03-09 21:03:46', '2022-03-14 04:51:52'),
(539, 57, 43, '200.00', 'radhuni-coriander-powder-jar-', 'রাঁধুনী ধনিয়া গুঁড়া (জার)', '80.00', NULL, 1, 0, 1, '16468887176229870d1b340.webp', NULL, 'general', '595', 'IC--000539', NULL, '2022-03-09 21:05:17', '2022-03-14 04:53:07'),
(540, 57, 43, '100.00', 'radhuni-beef-curry-masala', 'রাঁধুনী গরুর মাংসের মশলা', '60.00', NULL, 1, 0, 1, '164688896362298803851ed.jpg', NULL, 'general', '595', 'IC--000540', NULL, '2022-03-09 21:09:23', '2022-03-09 21:09:23'),
(541, 57, 43, '50.00', 'radhuni-chicken-tandoori-masala', 'রাঁধুনী চিকেন তান্দুরি মশলা', '75.00', NULL, 1, 0, 1, '1646889134622988aea63b2.webp', NULL, 'general', '595', 'IC--000541', NULL, '2022-03-09 21:12:14', '2022-03-14 05:03:53'),
(542, 57, 43, '35.00', 'radhuni-roast-masala', 'রাঁধুনী রোস্ট মশলা', '60.00', NULL, 1, 0, 1, '164688925562298927b93d7.webp', NULL, 'general', '595', 'IC--000542', NULL, '2022-03-09 21:14:15', '2022-03-14 03:33:47'),
(543, 57, 43, '68.00', 'radhuni-mejbani-beef-masala', 'রাঁধুনী মেজবানি গরুর মাংসের মশলা', '70.00', NULL, 1, 0, 1, '16468892916229894bd6872.jpeg', NULL, 'general', '595', 'IC--000543', NULL, '2022-03-09 21:14:51', '2022-03-14 04:55:26'),
(544, 57, 43, '40.00', 'radhuni-biryani-masala', 'রাঁধুনী বিরিয়ানি মশলা', '55.00', NULL, 1, 0, 1, '1646889378622989a2dfa1d.webp', NULL, 'general', '595', 'IC--000544', NULL, '2022-03-09 21:16:18', '2022-03-14 03:31:40'),
(545, 57, 43, '40.00', 'radhuni-kachchi-biryani-masala', 'রাঁধুনী কাচ্চি বিরিয়ানি মশলা', '60.00', NULL, 1, 0, 1, '1646889450622989eae0ee7.webp', NULL, 'general', '595', 'IC--000545', NULL, '2022-03-09 21:17:30', '2022-03-14 05:04:24'),
(546, 57, 43, '80.00', 'radhuni-kala-bhuna-masala', 'রাঁধুনী কালা ভুনা মশলা', '70.00', NULL, 1, 0, 1, '164688949962298a1b1420c.webp', NULL, 'general', '595', 'IC--000546', NULL, '2022-03-09 21:18:19', '2022-03-14 05:02:12'),
(547, 57, 43, '40.00', 'radhuni-tehari-masala', 'রাঁধুনি তেহারি মশলা', '48.00', NULL, 1, 0, 1, '164688954062298a4457e3b.webp', NULL, 'general', '595', 'IC--000547', NULL, '2022-03-09 21:19:00', '2022-03-09 21:19:00'),
(548, 57, 43, '50.00', 'radhuni-chatpoti-masala', 'রাঁধুনী চটপটি মশলা', '52.00', NULL, 1, 0, 1, '164688963962298aa769d0a.webp', NULL, 'general', '595', 'IC--000548', NULL, '2022-03-09 21:20:39', '2022-03-09 21:20:39'),
(549, 57, 43, '100.00', 'radhuni-chicken-masala', 'রাঁধুনী মুরগির মাংসের মশলা', '65.00', NULL, 1, 0, 1, '164688967862298aced62ee.jpg', NULL, 'general', '595', 'IC--000549', NULL, '2022-03-09 21:21:18', '2022-03-14 05:02:40'),
(550, 58, 46, '250.00', 'radhuni-pure-mustard-oil', 'রাঁধুনী খাঁটি সরিষার তেল', '85.00', NULL, 1, 0, 1, '164689004662298c3e105e1.webp', NULL, 'general', '595', 'IC--000550', NULL, '2022-03-09 21:27:26', '2022-03-20 04:59:39'),
(551, 109, 43, '500.00', 'radhuni-khichuri-mix', 'রাঁধুনী খিচুড়ি মিক্স', '110.00', NULL, 1, 0, 1, '164689012562298c8d6f8be.webp', NULL, 'general', '595', 'IC--000551', NULL, '2022-03-09 21:28:45', '2022-03-14 05:05:00'),
(552, 58, 46, '500.00', 'radhuni-pure-mustard-oil', 'রাঁধুনী খাঁটি সরিষার তেল', '150.00', NULL, 1, 0, 1, '164689016962298cb969960.webp', NULL, 'general', '595', 'IC--000552', NULL, '2022-03-09 21:29:29', '2022-03-20 04:00:59'),
(553, 109, 43, '150.00', 'radhuni-kheer-mix', 'রাঁধুনী ক্ষীর মিক্স', '40.00', NULL, 1, 0, 1, '164689036662298d7ea4467.jpg', NULL, 'general', '595', 'IC--000553', NULL, '2022-03-09 21:32:46', '2022-03-09 21:32:46'),
(554, 58, 46, '1000.00', 'radhuni-pure-mustard-oil', 'রাঁধুনী খাঁটি সরিষার তেল', '290.00', NULL, 1, 0, 1, '164689052062298e1823a64.webp', NULL, 'general', '595', 'IC--000554', NULL, '2022-03-09 21:35:20', '2022-03-09 21:35:20'),
(555, 109, 43, '250.00', 'radhuni-falooda-mix-mango-flavor', 'রাঁধুনী ফালুদা মিক্স ম্যাংগো ফ্লেভার', '64.00', NULL, 1, 0, 1, '164689054162298e2dcc7a7.jpg', NULL, 'general', '595', 'IC--000555', NULL, '2022-03-09 21:35:41', '2022-03-09 21:35:41'),
(556, 109, 43, '250.00', 'radhuni-falooda-mix-vanila-flavor', 'রাঁধুনী ফালুদা মিক্স ভ্যানিলা ফ্লেভার', '63.00', NULL, 1, 0, 1, '164689064962298e994ef88.webp', NULL, 'general', '595', 'IC--000556', NULL, '2022-03-09 21:37:29', '2022-03-09 21:37:29'),
(557, 56, 41, '1.00', 'chashi-aromatic-chinigura-rice', 'চাষী সুগন্ধি চিনিগুড়া চাল', '130.00', NULL, 1, 0, 1, '164689079662298f2cc8450.webp', NULL, 'general', '595', 'IC--000557', NULL, '2022-03-09 21:39:56', '2022-03-09 21:39:56'),
(558, 109, 43, '200.00', 'radhuni-haleem-mix', 'রাঁধুনী হালিম মিক্স', '55.00', NULL, 1, 0, 1, '1646891238622990e644ba3.webp', NULL, 'general', '595', 'IC--000558', NULL, '2022-03-09 21:47:18', '2022-03-14 03:10:21'),
(559, 32, 41, '1.00', 'potato', 'ডায়মন্ড আলু', '25.00', '20.00', 1, 0, 1, '1646931640622a2eb8d04a4.webp', NULL, 'general', '595', 'IC--000559', 'alu', '2022-03-10 09:00:40', '2022-03-31 03:16:08'),
(560, 32, 41, '1.00', 'peyaj', 'দেশি  পেঁয়াজ', '65.00', '35.00', 1, 0, 1, '1646931733622a2f15da037.webp', NULL, 'general', '595', 'IC--000560', 'দেশি  পেঁয়াজ, Deshi Peyaj, onion, peyj, peaz,peaj,paj', '2022-03-10 09:02:13', '2022-04-02 03:27:35'),
(561, 56, 41, '1.00', 'aci-gold-chinigura-aromatic-rice', 'এসিআই গোল্ড এরোমেটিক রাইস', '130.00', '125.00', 1, 0, 1, '1647082107622c7a7b10a8c.jpeg', NULL, 'general', '595', 'IC--000561', NULL, '2022-03-12 02:48:27', '2022-03-27 00:54:48'),
(562, 56, 41, '1.00', 'aci-pure-chinigura-aromatic-rice', 'এসিআই পিওর এরোমেটিক রাইস', '130.00', '125.00', 1, 0, 1, '1647082541622c7c2db79f8.jpg', NULL, 'general', '595', 'IC--000562', NULL, '2022-03-12 02:55:41', '2022-03-27 00:54:18'),
(563, 63, 41, '2.00', 'fresh-atta', 'ফ্রেশ আটা', '90.00', NULL, 1, 0, 1, '1647171694622dd86e1bab8.webp', NULL, 'general', '595', 'IC--000563', NULL, '2022-03-13 03:41:34', '2022-03-13 03:43:07'),
(564, 63, 41, '2.00', 'teer-atta', 'তীর আটা', '95.00', NULL, 1, 0, 1, '1647171916622dd94ce567b.webp', NULL, 'general', '595', 'IC--000564', NULL, '2022-03-13 03:45:16', '2022-03-13 03:45:16'),
(565, 66, 41, '1.00', 'meat-beef', 'গরুর মাংস', '650.00', NULL, 1, 0, 1, '1647172130622dda2289a5b.jpg', NULL, 'general', '595', 'IC--000565', NULL, '2022-03-13 03:48:50', '2022-03-22 03:13:04'),
(566, 63, 41, '2.00', 'sunshine-atta', 'সানশাইন আটা', '90.00', NULL, 1, 0, 1, '1647172438622ddb56e6f1c.png', NULL, 'general', '595', 'IC--000566', NULL, '2022-03-13 03:53:59', '2022-03-13 03:53:59'),
(567, 58, 47, '5.00', 'sena-soyabean-oil', 'সেনা সয়াবিন তেল', '800.00', NULL, 1, 0, 1, '1647172575622ddbdf9abe2.webp', NULL, 'general', '595', 'IC--000567', NULL, '2022-03-13 03:56:15', '2022-03-21 20:21:55'),
(568, 67, 41, '1.00', 'hilsha-fish-50gm-', 'ইলিশ মাছ (± ৫০gm)', '0.00', NULL, 1, 0, 1, '1647172744622ddc88a23ff.webp', NULL, 'general', '595', 'IC--000568', 'elish', '2022-03-13 03:59:04', '2022-04-01 21:28:14'),
(569, 67, 41, '1.00', 'chingri', 'চিংড়ি মাছ (± ৫০ gm)', '850.00', NULL, 1, 0, 1, '1647176988622ded1cc77d3.webp', NULL, 'general', '595', 'IC--000569', NULL, '2022-03-13 05:09:48', '2022-03-27 23:27:13'),
(570, 67, 41, '1.00', 'shing-50-gm-', 'শিং মাছ (±৫০ gm)', '450.00', NULL, 1, 0, 1, '1647177080622ded7822999.webp', NULL, 'general', '595', 'IC--000570', NULL, '2022-03-13 05:11:20', '2022-03-13 05:14:25'),
(571, 67, 41, '1.00', 'katol-fish-50-gm-', 'কাতলা মাছ  (± 5০ gm)', '400.00', NULL, 1, 0, 1, '1647177183622deddf82e4c.jpeg', NULL, 'general', '595', 'IC--000571', NULL, '2022-03-13 05:13:03', '2022-03-28 23:37:39'),
(572, 12, 43, '330.00', 'nestl-koko-krunch', 'নেসলে কোকো ক্র্যাঞ্চ', '360.00', NULL, 1, 0, 1, '1647179691622df7ab632a5.jpg', NULL, 'general', '595', 'IC--000572', NULL, '2022-03-13 05:54:51', '2022-03-14 00:16:27'),
(573, 33, 44, '1.00', 'maggi-noodles-masala-family-fun-pack-16-pack', 'ম্যাগি নুডুলস মাসালা (ফ্যামিলি ফান প্যাক ) ১৬ প্যাক', '270.00', NULL, 1, 0, 1, '1647246397622efc3d0e9d4.jpg', NULL, 'general', '595', 'IC--000573', NULL, '2022-03-14 00:26:37', '2022-03-14 00:26:37'),
(574, 33, 43, '4.00', 'magi-shade-magic', 'ম্যাগি স্বাদে এ ম্যাজিক', '5.00', NULL, 1, 0, 1, '16478369386237ff0ae1e85.PNG', NULL, 'general', '595', 'IC--000574', NULL, '2022-03-14 00:33:24', '2022-03-20 20:28:59'),
(575, 33, 43, '496.00', 'maggi-masala-instant-noodles-8-pack', 'ম্যাগী মাসালা ইন্সট্যান্ট নুডুলস ৮ প্যাক', '140.00', NULL, 1, 0, 1, '1647247593622f00e9d87df.jpg', NULL, 'general', '595', 'IC--000575', NULL, '2022-03-14 00:46:34', '2022-03-14 00:46:34'),
(576, 33, 43, '744.00', 'maggi-noodles-masala-12-pack', 'ম্যাগী মাসালা নুডুলস ১২ প্যাক', '210.00', NULL, 1, 0, 1, '1647248001622f02811e1d5.jpg', NULL, 'general', '595', 'IC--000576', NULL, '2022-03-14 00:53:21', '2022-03-14 00:53:21'),
(577, 34, 42, '1.00', 'maggi-healthy-soup-thai', 'ম্যাগি হেলদি স্যুপ থাই', '45.00', NULL, 1, 0, 1, '1647248413622f041df3d11.jpg', NULL, 'general', '595', 'IC--000577', NULL, '2022-03-14 01:00:14', '2022-03-14 01:00:14'),
(578, 34, 42, '1.00', 'maggi-healthy-soup-corn-with-chicken', 'ম্যাগী হেলদি স্যুপ কর্ন উইথ চিকেন', '45.00', NULL, 1, 0, 1, '1647248564622f04b4291af.jpg', NULL, 'general', '595', 'IC--000578', NULL, '2022-03-14 01:02:44', '2022-03-14 01:02:44'),
(579, 62, 41, '1.00', 'moshur-dal-deshi-', 'মশুর ডাল (দেশি)', '125.00', NULL, 1, 0, 1, '1647249118622f06dee6d8d.webp', NULL, 'general', '595', 'IC--000579', NULL, '2022-03-14 01:05:19', '2022-03-14 02:58:00'),
(580, 62, 41, '1.00', 'motor-dal', 'মটর ডাল', '120.00', NULL, 1, 0, 1, '1647249197622f072daff23.webp', NULL, 'general', '595', 'IC--000580', NULL, '2022-03-14 01:10:30', '2022-03-14 03:00:23'),
(581, 62, 43, '500.00', 'motor-dal', 'মটর ডাল', '60.00', NULL, 1, 0, 1, '1647249174622f0716621a9.webp', NULL, 'general', '595', 'IC--000581', NULL, '2022-03-14 01:11:45', '2022-03-14 03:00:44'),
(582, 62, 41, '1.00', 'mug-dal', 'মুগ ডাল', '135.00', '138.00', 1, 0, 1, '1647249284622f07848b7e7.webp', NULL, 'general', '595', 'IC--000582', 'mug', '2022-03-14 01:14:44', '2022-04-03 19:49:50'),
(583, 62, 43, '500.00', 'mug-dal', 'মুগ ডাল', '70.00', '69.00', 1, 0, 1, '1647249316622f07a4a7bf2.webp', NULL, 'general', '595', 'IC--000583', 'mug', '2022-03-14 01:15:16', '2022-04-03 19:50:25'),
(584, 58, 47, '2.00', 'rupchanda-soyabean-oil', 'রূপচাঁদা সয়াবিন তেল', '335.00', NULL, 1, 0, 1, '1647249418622f080aa87ac.webp', NULL, 'general', '595', 'IC--000584', NULL, '2022-03-14 01:16:58', '2022-03-14 03:02:12'),
(585, 62, 41, '1.00', 'boot-dal', 'বুটের ডাল', '96.00', NULL, 1, 0, 1, '1649043907624a69c3d7211.jpg', NULL, 'general', '595', 'IC--000585', 'boot', '2022-03-14 01:22:22', '2022-04-03 19:45:07'),
(586, 57, 43, '100.00', 'cumin-jira-', 'জিরা', '55.00', '50.00', 1, 0, 1, '1647256303622f22efe4dfa.webp', NULL, 'general', '595', 'IC--000586', 'jira', '2022-03-14 03:11:44', '2022-04-03 00:57:30'),
(587, 57, 43, '100.00', 'cinnamon-darchini-', 'দারুচিনি', '60.00', '49.00', 1, 0, 1, '1647256560622f23f0dc5f5.jpg', NULL, 'general', '595', 'IC--000587', 'darchini', '2022-03-14 03:16:00', '2022-04-03 00:54:23'),
(588, 57, 43, '50.00', 'elachi-jambo', 'এলাচ', '150.00', '129.00', 1, 0, 1, '1647256785622f24d1d951c.jpg', NULL, 'general', '595', 'IC--000588', 'Elach', '2022-03-14 03:19:45', '2022-04-03 00:58:44'),
(589, 57, 43, '50.00', 'clove-lobongo-', 'লবঙ্গ', '85.00', '75.00', 1, 0, 1, '1647256834622f250252ae7.webp', NULL, 'general', '595', 'IC--000589', 'lobongo', '2022-03-14 03:20:34', '2022-04-03 00:55:50'),
(590, 57, 43, '50.00', 'black-pepper', 'কালো গোলমরিচ', '70.00', '48.00', 1, 0, 1, '1647257032622f25c874fbd.webp', NULL, 'general', '595', 'IC--000590', 'black pepper', '2022-03-14 03:23:52', '2022-04-03 00:53:40'),
(591, 62, 41, '1.00', 'moshur-dal-b-grade-', 'মসুর ডাল (বোল্ডার )', '120.00', '110.00', 1, 0, 1, '1647257493622f2795ae44c.jpeg', NULL, 'general', '595', 'IC--000591', NULL, '2022-03-14 03:31:33', '2022-03-26 22:36:54'),
(592, 121, 46, '200.00', 'kewra-water', 'কেওড়া জল', '25.00', NULL, 1, 0, 1, '1647258468622f2b64ecdaf.jpg', NULL, 'general', '595', 'IC--000592', NULL, '2022-03-14 03:47:48', '2022-03-14 03:48:05'),
(593, 121, 46, '200.00', 'rose-water', 'গোলাপ জল', '25.00', NULL, 1, 0, 1, '1647258670622f2c2e25b78.jpg', NULL, 'general', '595', 'IC--000593', NULL, '2022-03-14 03:51:10', '2022-03-14 03:51:10'),
(594, 121, 43, '100.00', 'corn-flour', 'কর্ন ফ্লাওয়ার', '60.00', NULL, 1, 0, 1, '1647258746622f2c7ade874.jpg', NULL, 'general', '595', 'IC--000594', NULL, '2022-03-14 03:52:27', '2022-03-14 03:52:27'),
(595, 57, 43, '100.00', 'psyllium-husk-isub-gul-vushi-', 'ইসুবগুলের ভুষি', '129.00', NULL, 1, 0, 1, '1647259228622f2e5c9ff23.jpg', NULL, 'general', '595', 'IC--000595', 'isub gul vushi', '2022-03-14 04:00:28', '2022-04-03 01:02:59'),
(596, 57, 46, '250.00', 'kalijira-houny', 'কালিজিরা মধু', '300.00', '250.00', 1, 0, 1, '1647262708622f3bf43ba51.jpg', NULL, 'general', '595', 'IC--000596', 'kalijira', '2022-03-14 04:58:28', '2022-04-03 01:02:07'),
(597, 57, 43, '15.00', 'aci-pure-garam-masala', 'এসিআই পিওর গরম মশলা', '26.00', NULL, 1, 0, 1, '164732288162302701d17fa.jpg', NULL, 'general', '595', 'IC--000597', NULL, '2022-03-14 21:41:22', '2022-03-14 21:41:22'),
(598, 57, 43, '40.00', 'aci-pure-shahi-biryani-masala', 'এসিআই পিওর শাহী বিরিয়ানি মশলা', '55.00', NULL, 1, 0, 1, '164732406662302ba24db79.webp', NULL, 'general', '595', 'IC--000598', NULL, '2022-03-14 22:01:06', '2022-03-14 22:10:20'),
(599, 57, 43, '20.00', 'aci-pure-meat-curry-masala', 'এসিআই পিওর মাংসের মসলা', '15.00', NULL, 1, 0, 1, '164732458162302da508d9a.jpg', NULL, 'general', '595', 'IC--000599', NULL, '2022-03-14 22:09:41', '2022-03-14 22:09:41'),
(600, 57, 43, '200.00', 'aci-pure-coriander-powder', 'এসিআই পিওর গুঁড়া ধনিয়া', '65.00', NULL, 1, 0, 1, '164732512162302fc175d8b.webp', NULL, 'general', '595', 'IC--000600', NULL, '2022-03-14 22:18:41', '2022-03-14 22:18:41'),
(601, 57, 43, '200.00', 'aci-pure-chilli-powder-jar', 'এ সি আই পিওর মরিচ গুঁড়া জার', '95.00', NULL, 1, 0, 1, '164733045062304492cd9e6.webp', NULL, 'general', '595', 'IC--000601', NULL, '2022-03-14 23:47:30', '2022-03-14 23:47:30'),
(602, 57, 43, '200.00', 'aci-pure-turmeric-powder-jar', 'এ সি আই পিওর হলুদ গুঁড়া জার', '105.00', NULL, 1, 0, 1, '1647330492623044bc45a29.webp', NULL, 'general', '595', 'IC--000602', NULL, '2022-03-14 23:48:12', '2022-03-14 23:48:12'),
(603, 44, 41, '1.00', 'bathan-dairy-farm-sweet-yogurt', 'বাথান ডেইরি ফার্ম মিষ্টি দই', '220.00', NULL, 1, 0, 1, '164734446362307b4f475ea.jpg', NULL, 'general', '595', 'IC--000603', NULL, '2022-03-15 03:12:14', '2022-03-15 03:41:03'),
(604, 44, 41, '1.00', 'bathan-dairy-farm-sour-yogurt', 'বাথান ডেইরি ফার্ম টক দই', '170.00', NULL, 1, 0, 1, '164734445362307b4585b48.jpg', NULL, 'general', '595', 'IC--000604', NULL, '2022-03-15 03:15:48', '2022-03-15 03:40:53'),
(605, 41, 47, '1.00', 'bathan-dairy-farm-milk', 'বাথান ডেইরি ফার্ম দুধ', '90.00', NULL, 1, 0, 1, '164734444262307b3a6be3b.jpg', NULL, 'general', '595', 'IC--000605', NULL, '2022-03-15 03:17:34', '2022-03-15 03:40:42'),
(606, 62, 41, '1.00', 'chola-boot', 'ছোলা বুট', '90.00', '79.00', 1, 0, 1, '1649044053624a6a558addd.webp', NULL, 'general', '595', 'IC--000606', 'chola', '2022-03-15 03:34:41', '2022-04-03 19:47:33'),
(608, 36, 43, '500.00', 'iftar-muri', 'ইফতার মুড়ি', '55.00', NULL, 1, 0, 1, '1647348218623089fa89426.jpeg', NULL, 'general', '595', 'IC--000608', 'muri', '2022-03-15 04:43:38', '2022-04-02 21:02:58'),
(609, 36, 41, '1.00', 'iftar-muri', 'ইফতার মুড়ি', '109.00', NULL, 1, 0, 1, '164734828762308a3fab8a1.jpeg', NULL, 'general', '595', 'IC--000609', 'muri', '2022-03-15 04:44:47', '2022-04-02 21:02:34'),
(610, 36, 41, '1.00', 'jarif-muri', 'জারিফ মুড়ি', '109.00', NULL, 1, 0, 1, '164734835962308a87646ea.jpeg', NULL, 'general', '595', 'IC--000610', 'muri', '2022-03-15 04:45:59', '2022-04-02 21:02:10'),
(611, 36, 43, '500.00', 'jarif-muri', 'জারিফ মুড়ি', '55.00', NULL, 1, 0, 1, '164734841162308abb8d3a1.jpeg', NULL, 'general', '595', 'IC--000611', 'muri', '2022-03-15 04:46:51', '2022-04-02 21:01:37'),
(612, 57, 43, '100.00', 'clove-lobongo-', 'লবঙ্গ', '170.00', '150.00', 1, 0, 1, '1647403951623163afc6242.webp', NULL, 'general', '595', 'IC--000612', 'lobongo', '2022-03-15 20:12:31', '2022-04-03 00:55:11'),
(613, 57, 43, '100.00', 'elach', 'এলাচ', '300.00', NULL, 1, 0, 1, '1647404054623164167ecb3.jpg', NULL, 'general', '595', 'IC--000613', 'elach', '2022-03-15 20:14:14', '2022-04-03 00:58:07'),
(614, 57, 43, '100.00', 'black-pepper', 'কালো গোলমরিচ', '135.00', '96.00', 1, 0, 1, '164740440662316576c74a4.webp', NULL, 'general', '595', 'IC--000614', 'Black Pepper,paper, black, paper black', '2022-03-15 20:20:06', '2022-03-30 00:09:34'),
(615, 57, 43, '200.00', 'cumin-jira-', 'জিরা', '110.00', '100.00', 1, 0, 1, '1647404562623166128a0f2.webp', NULL, 'general', '595', 'IC--000615', 'jira', '2022-03-15 20:22:42', '2022-04-03 00:56:22'),
(617, 57, 43, '500.00', 'ginger-imported-', 'আদা আমদানিকৃত', '63.00', '59.00', 1, 0, 1, '16474980946232d36e5de91.webp', NULL, 'general', '595', 'IC--000617', 'ada', '2022-03-16 22:21:34', '2022-04-03 01:00:33'),
(618, 57, 43, '500.00', 'garlic-garlic-imported-', 'রসুন আমদানিকৃত', '65.00', NULL, 1, 0, 1, '16474982956232d437eb51d.webp', NULL, 'general', '595', 'IC--000618', 'roshun', '2022-03-16 22:24:55', '2022-04-03 00:59:33'),
(619, 54, 43, '100.00', 'forest-moon-baking-powder', 'ফরেস্ট মুন বেকিং পাউডার', '60.00', NULL, 1, 0, 1, '16475057006232f124dbbce.jpg', NULL, 'general', '595', 'IC--000619', NULL, '2022-03-17 00:28:20', '2022-03-17 00:28:20'),
(620, 57, 43, '100.00', 'alu-bukhara-dried-plums-', 'আলুবোখারা', '59.00', NULL, 1, 0, 1, '16475059686232f23083b6b.jpg', NULL, 'general', '595', 'IC--000620', 'Alu Bukhara, Bukhara, alo bukhara', '2022-03-17 00:32:48', '2022-03-30 00:03:47'),
(621, 57, 43, '100.00', 'golden-kismis-', 'গোল্ডেন কিসমিস', '60.00', NULL, 1, 0, 1, '16475061696232f2f9627b3.jpg', NULL, 'general', '595', 'IC--000621', 'kismis', '2022-03-17 00:36:09', '2022-04-03 01:01:23'),
(622, 57, 43, '100.00', 'almond-kathbadam-', 'কাঠবাদাম', '95.00', NULL, 1, 0, 1, '16475065286232f4604bb86.png', NULL, 'general', '595', 'IC--000622', 'Kathbadam,badam', '2022-03-17 00:42:08', '2022-04-03 01:03:54'),
(623, 63, 43, '500.00', 'bashundhara-suji', 'বসুন্ধরা সুজি', '38.00', NULL, 1, 0, 1, '16477637376236e1193c602.webp', NULL, 'general', '595', 'IC--000623', NULL, '2022-03-20 00:08:57', '2022-03-21 00:06:47'),
(624, 122, 42, '12.00', 'chicken-eggs', 'মুরগির ডিম', '115.00', NULL, 1, 0, 1, '164778275562372b63b74f1.jpg', NULL, 'general', '595', 'IC--000624', NULL, '2022-03-20 05:25:55', '2022-03-20 05:26:43'),
(625, 63, 43, '500.00', 'teer-semolina-suji', 'তীর সেমোলিনা সুজি', '40.00', NULL, 1, 0, 1, '1647850228623832f4084a0.webp', NULL, 'general', '595', 'IC--000625', NULL, '2022-03-21 00:10:28', '2022-03-21 00:10:28'),
(626, 123, 43, '550.00', 'pran-hot-tomato-sauce', 'প্রান হট টমেটো সস', '120.00', NULL, 1, 0, 1, '16478508266238354acb880.jpeg', NULL, 'general', '595', 'IC--000626', NULL, '2022-03-21 00:20:26', '2022-03-21 04:06:37'),
(629, 62, 43, '500.00', 'boot-dal', 'বুটের ডাল', '48.00', NULL, 1, 0, 1, '1649043868624a699c94208.jpg', NULL, 'general', '595', 'IC--000629', 'boot', '2022-03-26 21:39:53', '2022-04-03 19:44:28'),
(634, 62, 41, '1.00', 'boot-dal-besan', 'বুট ডালের বেসন', '119.00', NULL, 1, 0, 1, '1648370193624022113cfc4.webp', NULL, 'general', '595', 'IC--000634', NULL, '2022-03-27 00:36:33', '2022-03-27 00:36:33'),
(641, 12, 43, '500.00', 'quaker-oats-jar', 'কোয়েকার ওটস জার', '320.00', NULL, 1, 0, 1, '16485565976242fa350ec79.webp', NULL, 'general', '595', 'IC--000641', 'Quaker Oats Jar, কোয়েকার ওটস জার', '2022-03-28 03:55:06', '2022-03-29 04:23:17'),
(642, 12, 41, '1.00', 'quaker-oats-jar', 'কোয়েকার ওটস জার', '599.00', NULL, 1, 0, 1, '16485565576242fa0db5eea.webp', NULL, 'general', '595', 'IC--000642', 'Quaker Oats Jar, কোয়েকার ওটস জার', '2022-03-28 04:00:38', '2022-03-29 04:22:37'),
(643, 109, 43, '250.00', 'sabudana', 'সাবুদানা', '55.00', NULL, 1, 0, 1, '16486192856243ef15bf43e.webp', NULL, 'general', '595', 'IC--000643', 'Sabudana, সাবুদানা', '2022-03-28 20:19:32', '2022-03-29 21:48:05'),
(645, 61, 41, '1.00', 'molla-super-salt', 'মোল্লা সুপার লবণ', '35.00', NULL, 1, 0, 1, '16485564746242f9ba6dd97.jpg', NULL, 'general', '595', 'IC--000645', 'Molla Super Salt, salt, মোল্লা সুপার লবণ, লবণ', '2022-03-29 01:56:46', '2022-03-29 20:29:23'),
(646, 61, 41, '1.00', 'sun-sugar', 'সান চিনি', '85.00', NULL, 1, 0, 1, '16486192216243eed55f694.PNG', NULL, 'general', '595', 'IC--000646', 'Sun Sugar(chini),সান চিনি', '2022-03-29 02:05:57', '2022-03-29 21:47:01'),
(647, 126, 43, '750.00', 'foster-clark-s-orange-instant-drink-powder', 'ফস্টার ক্লার্ক\'স অরেঞ্জ ইনস্ট্যান্ট ড্রিঙ্ক পাউডার', '550.00', NULL, 1, 0, 1, '16485563706242f95250987.jpg', NULL, 'general', '595', 'IC--000647', 'Foster Clark\'s Orange Instant Drink Powder, ফস্টার ক্লার্ক\'স অরেঞ্জ ইনস্ট্যান্ট ড্রিঙ্ক পাউডার', '2022-03-29 02:16:59', '2022-04-02 20:39:35'),
(648, 126, 43, '750.00', 'foster-clark-s-mango-instant-drink-powder', 'ফস্টার ক্লার্ক\'স ম্যাংগো ইনস্ট্যান্ট ড্রিঙ্ক পাউডার', '550.00', NULL, 1, 0, 1, '16485563306242f92acb8bc.webp', NULL, 'general', '595', 'IC--000648', 'Foster Clark\'s Mango Instant Drink Powder, ফস্টার ক্লার্ক\'স ম্যাংগো ইনস্ট্যান্ট ড্রিঙ্ক পাউডার', '2022-03-29 02:19:29', '2022-04-02 20:39:09'),
(649, 126, 43, '500.00', 'foster-clark-s-orange-instant-drink-powder', 'ফস্টার ক্লার্ক\'স অরেঞ্জ ইনস্ট্যান্ট ড্রিঙ্ক পাউডার', '310.00', NULL, 1, 0, 1, '16486193606243ef6027aeb.jpg', NULL, 'general', '595', 'IC--000649', 'Foster Clark\'s Orange Instant Drink Powder, ফস্টার ক্লার্ক\'স অরেঞ্জ ইনস্ট্যান্ট ড্রিঙ্ক পাউডার', '2022-03-29 02:27:28', '2022-04-02 20:38:50'),
(650, 126, 43, '500.00', 'foster-clark-s-mango-instant-drink-powder', 'ফস্টার ক্লার্ক\'স ম্যাংগো ইনস্ট্যান্ট ড্রিঙ্ক পাউডার', '310.00', NULL, 1, 0, 1, '16485561246242f85c3d8e6.jpeg', NULL, 'general', '595', 'IC--000650', 'Foster Clark\'s Mango Instant Drink Powder, ফস্টার ক্লার্ক\'স ম্যাংগো ইনস্ট্যান্ট ড্রিঙ্ক পাউডার,', '2022-03-29 02:30:41', '2022-04-02 20:38:29'),
(651, 62, 43, '500.00', 'boot-dal-besan', 'বুট ডালের বেসন', '60.00', NULL, 1, 0, 1, '164897546362495e67d4a38.webp', NULL, 'general', '595', 'IC--000651', 'বুট ডালের বেসন, boot dal beson, veshon, beshon, Bheson', '2022-03-29 02:48:55', '2022-04-03 00:44:24'),
(655, 67, 41, '1.00', 'ayer-fish-1-2-50-', 'আইর মাছ', '840.00', NULL, 1, 0, 1, '16486204796243f3bf7088a.jpeg', NULL, 'general', '595', 'IC--000655', 'ayer, ayir', '2022-03-29 22:07:59', '2022-03-29 22:15:35'),
(656, 67, 41, '1.00', 'river-poa-fish', 'নদীর পোয়া মাছ', '370.00', NULL, 1, 0, 1, '16487354726245b4f0c76be.jpeg', NULL, 'general', '595', 'IC--000656', 'poa', '2022-03-29 22:23:45', '2022-03-31 06:04:32'),
(657, 67, 41, '1.00', 'bata-fish', 'নদীর বাটা মাছ', '375.00', NULL, 1, 0, 1, '16486228276243fcebf1b52.jpg', NULL, 'general', '595', 'IC--000657', 'bata, beta', '2022-03-29 22:36:07', '2022-03-30 20:26:01'),
(662, 125, 43, '300.00', 'rooh-afza', 'রুহ আফজা', '175.00', NULL, 1, 0, 1, '164864265562444a5f0858a.webp', NULL, 'general', '595', 'IC--000662', 'rooh afza', '2022-03-30 04:17:35', '2022-04-02 20:41:14'),
(663, NULL, NULL, '0.00', 'Premium Miniket Rice 1.00KG', NULL, '0.00', NULL, 0, 0, 0, NULL, NULL, 'general', '595', 'IC--000521', NULL, NULL, NULL),
(664, NULL, NULL, '0.00', 'Premium Nazirshail Rice 1.00KG', NULL, '0.00', NULL, 0, 0, 0, NULL, NULL, 'general', '595', 'IC--000520', NULL, NULL, NULL),
(665, 125, 43, '750.00', 'rooh-afza', 'রুহ আফজা', '300.00', NULL, 1, 0, 1, '164864282062444b0462deb.webp', NULL, 'general', '595', 'IC--000665', 'rooh afza', '2022-03-30 04:20:20', '2022-04-02 20:40:42'),
(666, 57, 43, '250.00', 'guamuri-fennel-seeds-', 'গুয়ামুরি', '60.00', NULL, 1, 0, 1, '164864309562444c1749a9b.jpg', NULL, 'general', '595', 'IC--000666', NULL, '2022-03-30 04:24:55', '2022-03-30 04:24:55'),
(668, 61, 43, '100.00', 'bit-lobon', 'বিট লবন', '40.00', NULL, 1, 0, 1, '164864343062444d66f06f8.jpg', NULL, 'general', '595', 'IC--000668', NULL, '2022-03-30 04:30:31', '2022-03-30 04:30:31'),
(669, 51, 43, '50.00', 'baking-soda', 'বেকিং সোডা', '45.00', NULL, 1, 0, 1, '164864361762444e210ac92.jpg', NULL, 'general', '595', 'IC--000669', NULL, '2022-03-30 04:33:37', '2022-03-30 04:33:37'),
(671, 33, 43, '496.00', 'mr-noodles-shahi-masala-8pcs', 'নুডলস শাহী মশলা 8 পিচ', '140.00', NULL, 1, 0, 1, '164864416462445044e4da1.jpeg', NULL, 'general', '595', 'IC--000671', NULL, '2022-03-30 04:42:44', '2022-03-30 04:42:44'),
(672, 33, 43, '496.00', 'mr-noodles-korean-super-spicy', 'মি.নুডলস কোরিয়ান সুপার স্পাইসি', '145.00', NULL, 1, 0, 1, '16486443646244510c72344.webp', NULL, 'general', '595', 'IC--000672', NULL, '2022-03-30 04:46:04', '2022-03-30 04:46:04'),
(673, 33, 43, '496.00', 'chopstick-noodles-deshi-masala', 'চপসটীক দেশী মাসালা ইনস্ট্যান্ট নুডুলস', '135.00', NULL, 1, 0, 1, '16486446556244522fa4540.webp', NULL, 'general', '595', 'IC--000673', NULL, '2022-03-30 04:50:55', '2022-03-30 04:50:55');
INSERT INTO `products` (`id`, `category_id`, `unit_id`, `unit_number`, `slug`, `op_name`, `price`, `special_price`, `in_stock`, `viewed`, `is_active`, `thumbnail`, `banner`, `product_type`, `stock`, `xitem`, `s_key`, `created_at`, `updated_at`) VALUES
(674, 8, 43, '750.00', 'harpic-toilet-cleaning-liquid', 'হারপিক টয়লেট ক্লিনিং লিকুইড', '135.00', NULL, 1, 0, 1, '1648644868624453046c1bc.webp', NULL, 'general', '595', 'IC--000674', NULL, '2022-03-30 04:54:28', '2022-03-30 04:54:28'),
(675, 8, 47, '1.00', 'dettol-antiseptic-disinfectant-liquid', 'ডেটল অ্যান্টিসেপটিক জীবাণুনাশক তরল', '245.00', NULL, 1, 0, 1, '164864523962445477bd8e4.jpg', NULL, 'general', '595', 'IC--000675', NULL, '2022-03-30 05:00:39', '2022-03-30 05:00:39'),
(676, 126, 43, '500.00', 'tang-orange-instant-drink-powder', 'ট্যাং অরেঞ্জ ইনস্ট্যান্ট ড্রিঙ্ক পাউডার', '330.00', NULL, 1, 0, 1, '16486457586244567e78e82.webp', NULL, 'general', '595', 'IC--000676', 'tang', '2022-03-30 05:09:18', '2022-04-02 20:37:57'),
(677, 126, 43, '250.00', 'tang-orange-instant-drink-powder', 'ট্যাং অরেঞ্জ ইনস্ট্যান্ট ড্রিঙ্ক পাউডার', '180.00', NULL, 1, 0, 1, '1648645925624457251f8a4.webp', NULL, 'general', '595', 'IC--000677', 'tang', '2022-03-29 21:12:05', '2022-04-02 12:37:01'),
(678, 33, 43, '496.00', 'mr-noodles-magic-masala-easy-instant', 'মিঃ নুডুলস ম্যাজিক মাসালা ইজি ইনস্ট্যান্ট', '140.00', NULL, 1, 0, 1, '16486460456244579dc0852.webp', NULL, 'general', '595', 'IC--000678', NULL, '2022-03-29 21:14:05', '2022-03-29 21:14:05'),
(679, 113, 43, '200.00', 'cussons-imperial-leather-classic-soap', 'কুশন ইম্পেরিয়াল লেদার ক্লাসিক সাবান', '175.00', NULL, 1, 0, 1, '1648646581624459b5d71bf.jpeg', NULL, 'general', '595', 'IC--000679', 'Cussons Imperial Leather Classic Soap', '2022-03-29 21:23:01', '2022-04-02 11:43:41'),
(680, 115, 41, '1.00', 'jet-classic-detergent-powder-paper-pack', 'জেট ক্লাসিক ডিটারজেন্ট পাউডার পেপার প্যাক ১ কেজি', '250.00', NULL, 1, 0, 1, '164864721162445c2b32394.webp', NULL, 'general', '595', 'IC--000680', NULL, '2022-03-29 21:33:31', '2022-03-29 21:33:31'),
(681, 114, 43, '130.00', 'nirala-ball-laundry-soap', 'নিরালা বল লন্ড্রী সাবান', '20.00', NULL, 1, 0, 1, '164864760162445db1ab308.webp', NULL, 'general', '595', 'IC--000681', NULL, '2022-03-29 21:40:01', '2022-03-29 21:40:01'),
(682, 66, 43, '1500.00', 'broiler-live-chicken-murgi-', 'ব্রয়লার লাইভ চিকেন', '255.00', NULL, 1, 0, 1, '1648702437624533e50d2c9.jpg', NULL, 'general', '595', 'IC--000682', 'murgi', '2022-03-30 12:53:57', '2022-03-30 13:48:52'),
(683, 66, 41, '1.00', 'live-cock-chicken', 'লাইভ কক মুরগী', '320.00', NULL, 1, 0, 1, '1648702678624534d679fb8.jpg', NULL, 'general', '595', 'IC--000683', NULL, '2022-03-30 12:57:58', '2022-03-30 12:57:58'),
(684, 67, 41, '1.00', 'bagda-chingri-medium-size-', 'বাগদা চিংড়ি (মিডিয়াম সাইজ)', '650.00', NULL, 1, 0, 1, '164871691862456c76077eb.jpeg', NULL, 'general', '595', 'IC--000684', NULL, '2022-03-30 16:55:18', '2022-03-30 16:55:18'),
(685, 59, 43, '450.00', 'ghee', 'ঘি', '650.00', '540.00', 1, 0, 1, '16487328026245aa828f55f.JPG', NULL, 'general', '595', 'IC--000685', 'ghee', '2022-03-30 21:20:02', '2022-03-30 21:27:15'),
(686, 58, 43, '250.00', 'ghani-vangga-mustard-oil-shorisher-tel-', 'ঘানি ভাঙ্গা সরিষা তেল', '100.00', '90.00', 1, 0, 1, '16487331406245abd4e02b8.JPG', NULL, 'general', '595', 'IC--000686', 'oil', '2022-03-30 21:25:41', '2022-04-01 20:06:31'),
(687, 62, 41, '1.00', 'khesari-dal', 'খেসারি ডাল', '96.00', NULL, 1, 0, 1, '16488846186247fb8a03322.jfif', NULL, 'general', '595', 'IC--000687', NULL, '2022-04-01 15:30:18', '2022-04-01 15:30:18'),
(688, 62, 41, '1.00', 'dubli-boot', 'ডাবলি বুট', '58.00', NULL, 1, 0, 1, '16488849486247fcd4ac5cb.webp', NULL, 'general', '595', 'IC--000688', NULL, '2022-04-01 15:35:49', '2022-04-01 15:35:49'),
(689, 58, 47, '5.00', 'fresh-soyabean-oil', 'ফ্রেশ সোয়াবেন অয়েল ৫ লিটার', '760.00', NULL, 1, 0, 1, '16488916576248170900548.jpg', NULL, 'general', '595', 'IC--000689', 'oil', '2022-04-01 17:27:37', '2022-04-01 20:55:43'),
(690, 61, 41, '1.00', 'sugar', 'লাল চিনি', '95.00', NULL, 1, 0, 1, '1648903585624845a1a8cb9.jpg', NULL, 'general', '595', 'IC--000690', 'Salt & Sugar', '2022-04-01 17:36:33', '2022-04-01 20:47:06'),
(691, 58, 47, '1.00', 'suresh-pure-mustard-oil', 'সুরেশ সরিষার তেল', '400.00', NULL, 1, 0, 1, '164889245762481a29f050b.jpg', NULL, 'general', '595', 'IC--000691', NULL, '2022-04-01 17:40:58', '2022-04-01 17:40:58'),
(692, 89, 44, '1.00', 'bashundhara-kitchen-tissue', 'বসুন্ধরা কিচেন টিসু', '120.00', NULL, 1, 0, 1, '1648895671624826b726c27.jfif', NULL, 'general', '595', 'IC--000692', 'Napkins', '2022-04-01 17:51:20', '2022-04-01 18:34:31'),
(693, 67, 41, '1.00', 'baila-fish', 'বাইলা মাছ', '755.00', NULL, 1, 0, 1, '164889312162481cc11d6ad.webp', NULL, 'general', '595', 'IC--000693', 'bele', '2022-04-01 17:52:01', '2022-04-01 18:06:05'),
(694, 67, 43, '1250.00', 'batasi-fish-1-250g-50g-', 'বাতাসি মাছ', '906.00', NULL, 1, 0, 1, '164889361962481eb3d0f86.jpg', NULL, 'general', '595', 'IC--000694', 'batasi', '2022-04-01 18:00:19', '2022-04-02 18:21:35'),
(695, 67, 41, '1.00', 'kaski-fish-30g-', 'কাচকি মাছ', '520.00', NULL, 1, 0, 1, '164889374062481f2c96253.webp', NULL, 'general', '595', 'IC--000695', NULL, '2022-04-01 18:02:20', '2022-04-01 18:02:20'),
(696, 116, 43, '1.00', 'ispahani-blender-s-choice-black-tea', 'ইস্পাহানি ব্লেন্ডার\'স চয়েস ব্ল্যাক টি', '160.00', NULL, 1, 0, 1, '164889374362481f2f45b05.jpg', NULL, 'general', '595', 'IC--000696', NULL, '2022-04-01 18:02:23', '2022-04-01 18:02:23'),
(697, 67, 41, '1.00', 'pabda-fish-30-g-', 'পাবদা মাছ', '450.00', NULL, 1, 0, 1, '164889388062481fb859f2d.webp', NULL, 'general', '595', 'IC--000697', NULL, '2022-04-01 18:04:40', '2022-04-01 18:04:40'),
(698, 63, 41, '2.00', 'aci-pure-white-flour', NULL, '118.00', NULL, 1, 0, 1, '164889660862482a60a22dd.jfif', NULL, 'general', '595', 'IC--000698', NULL, '2022-04-01 18:50:08', '2022-04-01 18:50:08'),
(699, 63, 41, '2.00', 'teer-white-flour-maida-', 'তীর ময়দা', '126.00', NULL, 1, 0, 1, '16489039656248471d7b497.webp', NULL, 'general', '595', 'IC--000699', NULL, '2022-04-01 20:52:45', '2022-04-01 20:52:45'),
(700, 66, 42, '1.00', 'deshi-big-cock', 'দেশী বড় মোরগ', '550.00', NULL, 1, 0, 1, '16489068906248528aba7b6.jpg', NULL, 'general', '595', 'IC--000700', 'chicken', '2022-04-01 21:41:30', '2022-04-02 12:19:17'),
(701, 36, 41, '1.00', 'red-chira', 'লাল  চিড়া', '120.00', NULL, 1, 0, 1, '164896335662492f1cb99d1.jpg', NULL, 'general', '595', 'IC--000701', NULL, '2022-04-02 13:22:36', '2022-04-02 13:22:36'),
(706, 61, 41, '1.00', 'white-sugar-chini-', 'সাদা চিনি', '82.00', NULL, 1, 0, 1, '164896645562493b37966c7.webp', NULL, 'general', '595', 'IC--000706', NULL, '2022-04-02 14:14:15', '2022-04-02 14:14:15'),
(710, 126, 43, '2500.00', 'tang-orange', 'টাং অরেঞ্জ ২.৫', '1400.00', NULL, 1, 0, 1, '16489811386249749248e8e.png', NULL, 'general', '595', 'IC--000710', NULL, '2022-04-02 18:18:58', '2022-04-02 18:18:58'),
(711, 58, 47, '1.00', 'pusti-fortified-soyabean-oil', 'পুস্টি ফর্টিফাইড সয়াবিন তেল', '160.00', NULL, 1, 0, 1, '164898114362497497ddffb.webp', NULL, 'general', '595', 'IC--000711', NULL, '2022-04-02 18:19:03', '2022-04-02 18:19:03'),
(712, 127, 41, '1.00', 'mariyam-dates-khejur-', 'মারিয়াম খেজুর', '680.00', NULL, 1, 0, 1, '1648982377624979693f404.jpg', NULL, 'general', '595', 'IC--000712', NULL, '2022-04-02 18:39:37', '2022-04-02 18:39:37'),
(713, 127, 43, '500.00', 'mariyam-dates-khejur-', 'মারিয়াম খেজুর', '350.00', NULL, 1, 0, 1, '164898358362497e1f706d7.jpg', NULL, 'general', '595', 'IC--000713', NULL, '2022-04-02 18:59:43', '2022-04-02 18:59:43');

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
(242, 246, 'English', 'ACI Pure Roast Masala', '', '2022-01-24 17:17:39', '2022-03-07 18:10:48'),
(254, 258, 'English', 'ACI  Pure Dhakaiya Kacchi Biriani Masala', '', '2022-01-24 17:28:25', '2022-03-07 17:00:00'),
(383, 387, 'English', 'ACI Pure Turmeric Powder', '', '2022-02-02 17:18:11', '2022-02-08 14:32:58'),
(384, 388, 'English', 'ACI Pure Turmeric Powder', '', '2022-02-02 17:19:33', '2022-02-08 14:32:43'),
(385, 389, 'English', 'ACI Pure Turmeric Powder', '', '2022-02-02 17:22:52', '2022-02-08 14:32:29'),
(386, 390, 'English', 'ACI Pure Turmeric Powder', '', '2022-02-02 17:23:43', '2022-02-08 14:32:15'),
(387, 391, 'English', 'ACI Pure Powder Chilli', '', '2022-02-02 17:28:44', '2022-02-08 16:30:00'),
(388, 392, 'English', 'ACI Pure Powder Chilli', '', '2022-02-02 17:29:56', '2022-02-08 16:30:08'),
(389, 393, 'English', 'ACI Pure Powder Chilli', '', '2022-02-02 17:30:47', '2022-02-08 16:29:52'),
(390, 394, 'English', 'ACI Pure Powder Chilli', '', '2022-02-02 17:31:30', '2022-02-08 14:31:22'),
(391, 395, 'English', 'ACI Pure Coriander Powder', '', '2022-02-02 17:34:21', '2022-02-08 16:28:37'),
(392, 396, 'English', 'ACI Pure Coriander Powder-Jar', '', '2022-02-02 17:38:06', '2022-03-14 12:48:51'),
(394, 398, 'English', 'ACI Pure Coriander Powder', '', '2022-02-02 17:44:00', '2022-02-08 14:30:22'),
(395, 399, 'English', 'ACI Pure Cumin Powder', '', '2022-02-02 17:47:50', '2022-02-08 14:30:11'),
(396, 400, 'English', 'ACI Pure Cumin Powder', '', '2022-02-02 17:49:41', '2022-02-08 14:29:57'),
(397, 401, 'English', 'ACI Pure Cumin Powder-Jar', '', '2022-02-02 17:54:25', '2022-02-08 16:29:21'),
(399, 403, 'English', 'Pure Meat Curry Masala', '', '2022-02-02 20:04:59', '2022-02-08 14:29:17'),
(400, 404, 'English', 'ACI Pure Chicken Curry Masala', '', '2022-02-02 20:06:53', '2022-02-08 16:35:23'),
(401, 405, 'English', 'ACI Pure Beef Curry Masala', '', '2022-02-02 20:09:36', '2022-02-08 16:34:35'),
(402, 406, 'English', 'ACI Pure Fish Curry', '', '2022-02-02 20:11:42', '2022-02-08 16:36:27'),
(405, 409, 'English', 'ACI Chotpoti Masala', '', '2022-02-04 19:59:02', '2022-02-08 14:28:28'),
(406, 410, 'English', 'Panchforan', '', '2022-02-04 20:16:33', '2022-02-11 19:16:57'),
(407, 411, 'English', 'ACI Fun Fresh Fry', '', '2022-02-04 20:19:23', '2022-03-07 19:07:01'),
(408, 412, 'English', 'ACI Pure Tehari Masala', '', '2022-02-04 20:19:46', '2022-03-07 17:23:09'),
(409, 413, 'English', 'ACI Pure Mezbani Masala', '', '2022-02-04 20:22:08', '2022-02-08 14:27:31'),
(410, 414, 'English', 'ACI Pure Kabab Masala', '', '2022-02-04 20:23:28', '2022-03-14 12:31:14'),
(411, 415, 'English', 'ACI Fun Cup Cake(Butter)', '', '2022-02-04 20:24:33', '2022-02-11 19:15:03'),
(412, 416, 'English', 'ACI Pure Garam Masala', '', '2022-02-04 20:25:33', '2022-02-08 14:26:18'),
(413, 417, 'English', 'ACI Pure Kheer Mix', '', '2022-02-04 20:28:28', '2022-02-08 14:26:01'),
(414, 418, 'English', 'ACI Pure Mixed Pickle', '', '2022-02-04 20:29:12', '2022-03-11 18:17:19'),
(415, 419, 'English', 'ACI Pure Haleem Mix', '', '2022-02-04 20:29:43', '2022-03-09 13:47:57'),
(424, 429, 'English', 'ACI Savlon Active Antiseptic Soap', '', '2022-02-09 16:32:36', '2022-02-09 16:32:36'),
(425, 430, 'English', 'ACI Savlon Liquid Antiseptic', '', '2022-02-09 16:36:07', '2022-02-09 16:36:07'),
(426, 431, 'English', 'ACI Savlon Liquid Antiseptic', '', '2022-02-09 16:38:38', '2022-02-09 16:38:38'),
(427, 432, 'English', 'Wheel Laundry Soap', '', '2022-02-09 16:51:14', '2022-02-09 16:51:14'),
(428, 433, 'English', 'Wheel Powder Clean & Fresh', '', '2022-02-09 19:42:10', '2022-02-09 19:42:10'),
(429, 434, 'English', 'Wheel Powder Clean & Fresh', '', '2022-02-09 19:45:02', '2022-02-09 19:45:02'),
(430, 435, 'English', 'Wheel Powder Clean & Fresh', '', '2022-02-09 19:46:34', '2022-02-09 19:46:34'),
(431, 436, 'English', 'RIN Liquid', '', '2022-02-09 19:55:42', '2022-02-09 19:55:42'),
(432, 437, 'English', 'Rin Standard Powder', '', '2022-02-09 19:58:37', '2022-02-09 19:58:37'),
(433, 438, 'English', 'Rin Standard Powder', '', '2022-02-09 19:59:21', '2022-02-09 19:59:21'),
(434, 439, 'English', 'Lifebuoy Liquid Handwash', '', '2022-02-09 19:59:27', '2022-02-09 19:59:27'),
(435, 440, 'English', 'Surf Excel Standard Powder', '', '2022-02-09 20:01:57', '2022-02-09 20:01:57'),
(436, 441, 'English', 'Surf Excel Standard Powder', '', '2022-02-09 20:05:43', '2022-02-09 20:05:43'),
(437, 442, 'English', 'Surf Exce Quick Wash Liquid', '', '2022-02-09 20:07:50', '2022-03-07 18:59:42'),
(438, 443, 'English', 'Surf Excel Standard Powder', '', '2022-02-09 20:09:21', '2022-02-09 20:09:21'),
(439, 444, 'English', 'Surf Excel Standard Powder', '', '2022-02-09 20:10:36', '2022-02-09 20:10:36'),
(440, 445, 'English', 'Lifebuoy Liquid Handwash lemon', '', '2022-02-09 20:15:00', '2022-02-09 20:15:00'),
(441, 446, 'English', 'Lifebuoy Liquid Handwash', '', '2022-02-09 20:16:26', '2022-02-09 20:16:26'),
(442, 447, 'English', 'Lifebuoy Liquid Handwash Cool Fresh', '', '2022-02-09 20:20:12', '2022-02-09 20:20:12'),
(443, 448, 'English', 'Lifebuoy Bar lemon Fresh', '', '2022-02-09 20:22:32', '2022-02-09 20:22:32'),
(444, 449, 'English', 'Lifebuoy Skin Bar Care', '', '2022-02-09 20:28:06', '2022-02-09 20:28:54'),
(445, 450, 'English', 'Lifebuoy Skin Bar', '', '2022-02-09 20:30:31', '2022-02-09 20:30:31'),
(446, 451, 'English', 'Lifebuoy Skin Bar Care', '', '2022-02-09 20:32:08', '2022-02-09 20:32:08'),
(447, 452, 'English', 'Lifebuoy Skin Bar', '', '2022-02-09 20:32:31', '2022-02-09 20:32:31'),
(448, 453, 'English', 'Lux Bar Camelia and Aloe vera', '', '2022-02-09 20:36:02', '2022-02-09 20:36:02'),
(449, 454, 'English', 'Dove Skin Cleansing Bar White', '', '2022-02-11 17:09:19', '2022-02-11 17:11:57'),
(450, 455, 'English', 'Dove Skin Cleansing Bar Pink', '', '2022-02-11 17:11:15', '2022-02-11 17:11:15'),
(451, 456, 'English', 'Dove Skin Cleansing Bar White', '', '2022-02-11 17:12:57', '2022-02-11 17:12:57'),
(452, 457, 'English', 'Dove Skin Cleansing Bar Pink', '', '2022-02-11 17:13:56', '2022-02-11 17:13:56'),
(453, 458, 'English', 'Glow and Lovely Bar Multivitamin', '', '2022-02-11 17:21:03', '2022-02-11 17:21:03'),
(454, 459, 'English', 'Glow & Lovely Bar Multani Mati', '', '2022-02-11 17:24:22', '2022-02-11 17:24:22'),
(455, 460, 'English', 'Vim Bar Ice Hockey', '', '2022-02-11 17:44:09', '2022-02-11 17:44:09'),
(456, 461, 'English', 'Vim Bar Ice Hockey', '', '2022-02-11 17:45:45', '2022-02-11 17:45:45'),
(457, 462, 'English', 'Brooke Bond Taaza Black Tea', '', '2022-02-11 18:01:31', '2022-02-11 18:01:31'),
(458, 463, 'English', 'Brooke Bond Taaza Black Tea', '', '2022-02-11 18:02:11', '2022-02-11 18:02:11'),
(459, 464, 'English', 'Brooke Bond Taaza Tea Bag', '', '2022-02-11 18:07:02', '2022-02-11 18:07:02'),
(460, 465, 'English', 'Knorr Hot and Sour Chicken Soup', '', '2022-02-11 18:13:27', '2022-02-11 18:13:27'),
(461, 466, 'English', 'Knorr Instant Cup Thai Soup', '', '2022-02-11 18:20:01', '2022-02-11 18:20:01'),
(462, 467, 'English', 'Knorr Soup Thai', '', '2022-02-11 18:21:32', '2022-02-11 18:21:32'),
(463, 468, 'English', 'Knorr Crispy Fried Chicken Mix', '', '2022-02-11 18:26:19', '2022-02-11 18:26:19'),
(464, 469, 'English', 'Sunsilk Shampoo Hijab Recharge', '', '2022-02-11 18:31:26', '2022-02-11 18:31:26'),
(465, 470, 'English', 'Sunsilk Shampoo Stunning Black Shine', '', '2022-02-11 18:34:33', '2022-02-11 18:34:33'),
(466, 471, 'English', 'Clear Hijab Anti Limp Shampoo', '', '2022-02-11 18:41:33', '2022-02-11 18:41:33'),
(467, 472, 'English', 'Closeup Toothpaste Cool Mint', '', '2022-02-11 18:45:56', '2022-02-11 18:45:56'),
(468, 473, 'English', 'Pepsodent Sensitive Expert Professional', '', '2022-02-11 19:02:39', '2022-02-11 19:02:39'),
(471, 473, 'language', 'Pepsodent Sensitive Expert Professional', '', '2022-02-16 17:34:22', '2022-02-16 17:34:22'),
(491, 499, 'English', 'Dove Shampoo Healthy Grow', '', '2022-03-07 16:16:04', '2022-03-07 16:16:04'),
(492, 500, 'English', 'Lux Handwash Rose and Almond Oil', '', '2022-03-07 16:45:32', '2022-03-07 16:45:32'),
(493, 501, 'English', 'ACI Pure Aromatic Broken Rice', '', '2022-03-07 16:54:06', '2022-03-07 16:54:06'),
(494, 502, 'English', 'Lux Soap Bar Soft Glow', '', '2022-03-07 16:54:39', '2022-03-07 16:54:39'),
(495, 503, 'English', 'ACI Pure Plain Toast', '', '2022-03-07 17:20:18', '2022-03-07 17:20:18'),
(496, 504, 'English', 'ACI Pure Mustard Oil', '', '2022-03-07 17:22:40', '2022-03-07 17:22:40'),
(497, 505, 'English', 'ACI Pure Mustard Oil', '', '2022-03-07 17:23:58', '2022-03-07 17:23:58'),
(498, 506, 'English', 'ACI Pure Mustard Oil', '', '2022-03-07 17:24:57', '2022-03-07 17:24:57'),
(499, 507, 'English', 'Fun Chanachur Hot & Spicy', '', '2022-03-07 17:42:54', '2022-03-07 17:42:54'),
(500, 508, 'English', 'Fun Chanachur Hot and Spicy', '', '2022-03-07 17:48:10', '2022-03-07 17:48:10'),
(501, 509, 'English', 'ACI Thai Noodles Oriental Thai', '', '2022-03-07 17:58:08', '2022-03-07 17:58:08'),
(503, 511, 'English', 'ACI Aerosol Spray', '', '2022-03-08 14:18:42', '2022-03-08 14:18:42'),
(506, 514, 'English', 'ACI Aerosol Spray', '', '2022-03-08 14:43:41', '2022-03-08 14:43:41'),
(507, 515, 'English', 'ACI Aerosol Spray', '', '2022-03-08 14:44:25', '2022-03-08 14:44:25'),
(508, 516, 'English', 'ACI Aerosol Spray', '', '2022-03-08 14:49:19', '2022-03-08 14:49:19'),
(509, 517, 'English', 'ACI Colgate Active Salt', '', '2022-03-08 14:55:53', '2022-03-08 14:55:53'),
(510, 518, 'English', 'ACI Colgate Active Salt', '', '2022-03-08 14:57:44', '2022-03-08 14:57:44'),
(511, 519, 'English', 'Neem Original (Olive & Aloe Vera) Soap', '', '2022-03-08 15:00:48', '2022-03-08 15:00:48'),
(512, 520, 'English', 'Premium Nazirshail Rice', '', '2022-03-08 15:03:21', '2022-03-19 12:40:25'),
(513, 521, 'English', 'Premium Miniket Rice', '', '2022-03-08 15:04:36', '2022-03-19 12:41:33'),
(515, 523, 'English', 'Vim liquid dishwash', '', '2022-03-08 17:06:39', '2022-03-08 17:14:40'),
(516, 524, 'English', 'ACI Pure Tandoori Stick Noodles', '', '2022-03-08 17:12:20', '2022-03-08 17:12:20'),
(517, 525, 'English', 'Radhuni Cumin Powder', '', '2022-03-09 12:38:53', '2022-03-09 12:38:53'),
(518, 526, 'English', 'Radhuni Turmeric Powder', '', '2022-03-09 12:42:48', '2022-03-09 12:42:48'),
(519, 527, 'English', 'Radhuni Cumin Powder', '', '2022-03-09 12:45:50', '2022-03-09 12:45:50'),
(520, 528, 'English', 'Radhuni Turmeric Powder', '', '2022-03-09 12:47:09', '2022-03-09 12:47:09'),
(521, 529, 'English', 'Radhuni Cumin Powder Pet Jar', '', '2022-03-09 12:49:21', '2022-03-09 12:49:21'),
(522, 530, 'English', 'Radhuni Turmeric Powder (Jar)', '', '2022-03-09 12:50:06', '2022-03-09 12:50:06'),
(523, 531, 'English', 'Radhuni Chilli powder', '', '2022-03-09 12:54:27', '2022-03-09 12:54:27'),
(524, 532, 'English', 'Radhuni Garam Masala', '', '2022-03-09 12:55:11', '2022-03-09 12:55:11'),
(525, 533, 'English', 'Radhuni Chilli powder', '', '2022-03-09 12:55:31', '2022-03-09 12:55:31'),
(526, 534, 'English', 'Radhuni Chilli powder (Jar)', '', '2022-03-09 12:58:18', '2022-03-09 12:58:18'),
(527, 535, 'English', 'Radhuni Garam Masala', '', '2022-03-09 12:59:50', '2022-03-09 12:59:50'),
(528, 536, 'English', 'Radhuni Coriander Powder', '', '2022-03-09 13:00:16', '2022-03-09 13:00:16'),
(529, 537, 'English', 'Radhuni Meat Curry Masala', '', '2022-03-09 13:03:16', '2022-03-09 13:03:16'),
(530, 538, 'English', 'Radhuni Coriander Powder', '', '2022-03-09 13:03:46', '2022-03-09 13:03:46'),
(531, 539, 'English', 'Radhuni Coriander Powder (Jar)', '', '2022-03-09 13:05:17', '2022-03-09 13:05:17'),
(532, 540, 'English', 'Radhuni Beef Curry Masala', '', '2022-03-09 13:09:23', '2022-03-09 13:09:23'),
(533, 541, 'English', 'Radhuni Chicken Tandoori Masala', '', '2022-03-09 13:12:14', '2022-03-09 13:12:14'),
(534, 542, 'English', 'Radhuni Roast Masala', '', '2022-03-09 13:14:15', '2022-03-09 13:14:15'),
(535, 543, 'English', 'Radhuni Mejbani Beef Masala', '', '2022-03-09 13:14:51', '2022-03-09 13:14:51'),
(536, 544, 'English', 'Radhuni Biryani Masala', '', '2022-03-09 13:16:18', '2022-03-09 13:16:18'),
(537, 545, 'English', 'Radhuni Kachchi Biryani Masala', '', '2022-03-09 13:17:30', '2022-03-09 13:17:30'),
(538, 546, 'English', 'Radhuni Kala Bhuna Masala', '', '2022-03-09 13:18:19', '2022-03-09 13:18:19'),
(539, 547, 'English', 'Radhuni Tehari Masala', '', '2022-03-09 13:19:00', '2022-03-09 13:19:00'),
(540, 548, 'English', 'Radhuni Chatpoti Masala', '', '2022-03-09 13:20:39', '2022-03-09 13:20:39'),
(541, 549, 'English', 'Radhuni Chicken Masala', '', '2022-03-09 13:21:18', '2022-03-09 13:21:18'),
(542, 550, 'English', 'Radhuni Pure Mustard Oil', '', '2022-03-09 13:27:26', '2022-03-09 13:27:26'),
(543, 551, 'English', 'Radhuni Khichuri Mix', '', '2022-03-09 13:28:45', '2022-03-09 13:28:45'),
(544, 552, 'English', 'Radhuni Pure Mustard Oil', '', '2022-03-09 13:29:29', '2022-03-09 13:29:29'),
(545, 553, 'English', 'Radhuni Kheer Mix', '', '2022-03-09 13:32:46', '2022-03-09 13:32:46'),
(546, 554, 'English', 'Radhuni Pure Mustard Oil', '', '2022-03-09 13:35:20', '2022-03-09 13:35:20'),
(547, 555, 'English', 'Radhuni Falooda Mix-Mango Flavor', '', '2022-03-09 13:35:41', '2022-03-09 13:35:41'),
(548, 556, 'English', 'Radhuni Falooda Mix-Vanila Flavor', '', '2022-03-09 13:37:29', '2022-03-09 13:37:29'),
(549, 557, 'English', 'Chashi Aromatic Chinigura Rice', '', '2022-03-09 13:39:56', '2022-03-09 13:39:56'),
(550, 558, 'English', 'Radhuni Haleem Mix', '', '2022-03-09 13:47:18', '2022-03-09 13:47:18'),
(551, 559, 'English', 'Diamond Potato', '', '2022-03-10 01:00:40', '2022-03-19 12:34:57'),
(552, 560, 'English', 'Deshi Peyaj(onion)', '', '2022-03-10 01:02:13', '2022-03-26 13:22:41'),
(553, 561, 'English', 'ACI Gold Chinigura Aromatic Rice', '', '2022-03-11 18:48:27', '2022-03-11 18:48:27'),
(554, 562, 'English', 'ACI Pure Chinigura Aromatic Rice', '', '2022-03-11 18:55:41', '2022-03-11 18:55:41'),
(555, 563, 'English', 'Fresh Atta', '', '2022-03-12 19:41:34', '2022-03-12 19:41:34'),
(556, 564, 'English', 'Teer Atta', '', '2022-03-12 19:45:16', '2022-03-12 19:45:16'),
(557, 565, 'English', 'Meat Beef', '', '2022-03-12 19:48:50', '2022-03-12 19:48:50'),
(558, 566, 'English', 'Sunshine Atta', '', '2022-03-12 19:53:59', '2022-03-12 19:53:59'),
(559, 567, 'English', 'Sena Soyabean Oil', '', '2022-03-12 19:56:15', '2022-03-12 19:56:15'),
(560, 568, 'English', 'Hilsha Fish (± 50gm)', '', '2022-03-12 19:59:04', '2022-03-12 19:59:04'),
(561, 569, 'English', 'Chingri (± 50 gm)', '', '2022-03-12 21:09:48', '2022-03-12 21:14:53'),
(562, 570, 'English', 'Shing (±50 gm)', '', '2022-03-12 21:11:20', '2022-03-12 21:11:20'),
(563, 571, 'English', 'Katol Fish (± 50 gm)', '', '2022-03-12 21:13:03', '2022-03-12 21:13:03'),
(564, 572, 'English', 'Nestlé Koko Krunch', '', '2022-03-12 21:54:51', '2022-03-12 21:54:51'),
(748, 676, 'English', 'Tang Orange Instant Drink Powder', '', '2022-04-04 15:10:28', '2022-04-04 16:26:36'),
(749, 671, 'English', 'mr-noodles-shahi-masala-8pcs', '', '2022-04-04 15:11:15', '2022-04-04 15:11:15'),
(750, 675, 'English', 'dettol-antiseptic-disinfectant-liquid', '', '2022-04-04 15:12:35', '2022-04-04 15:12:35'),
(751, 674, 'English', 'harpic-toilet-cleaning-liquid', '', '2022-04-04 15:15:30', '2022-04-04 15:15:30'),
(752, 673, 'English', 'chopstick-noodles-deshi-masala', '', '2022-04-04 15:16:00', '2022-04-04 15:16:00'),
(753, 672, 'English', 'mr-noodles-korean-super-spicy', '', '2022-04-04 15:17:36', '2022-04-04 15:17:36'),
(754, 669, 'English', 'Baking Soda', '', '2022-04-04 15:18:11', '2022-04-04 15:18:11'),
(755, 668, 'English', 'Bit Lobon', '', '2022-04-04 15:19:55', '2022-04-04 15:19:55'),
(756, 666, 'English', 'guamuri fennel seeds-', '', '2022-04-04 15:22:08', '2022-04-04 15:22:08'),
(757, 665, 'English', 'Rooh Afza', '', '2022-04-04 15:22:43', '2022-04-04 15:26:11'),
(758, 662, 'English', 'Rooh Afza', '', '2022-04-04 15:23:26', '2022-04-04 15:25:10'),
(759, 657, 'English', 'Bata Fish', '', '2022-04-04 15:27:09', '2022-04-04 15:27:09'),
(760, 656, 'English', 'River Poa Fish', '', '2022-04-04 15:28:01', '2022-04-04 15:28:01'),
(761, 655, 'English', 'Ayer-Fish-1-2-50-', '', '2022-04-04 15:28:53', '2022-04-04 15:28:53'),
(762, 650, 'English', 'foster clark s mango instant drink powder', '', '2022-04-04 15:29:53', '2022-04-04 15:29:53'),
(763, 651, 'English', 'boot dal besan', '', '2022-04-04 15:30:39', '2022-04-04 15:30:39'),
(764, 649, 'English', 'foster clark s orange instant drink powder', '', '2022-04-04 15:32:10', '2022-04-04 15:32:10'),
(765, 648, 'English', 'foster clark s mango instant drink powder', '', '2022-04-04 15:32:58', '2022-04-04 15:32:58'),
(766, 647, 'English', 'Foster Clark s-orange Instant Drink Powder', '', '2022-04-04 15:38:16', '2022-04-04 15:38:16'),
(767, 646, 'English', 'Sun Sugar(chini)', '', '2022-04-04 15:38:54', '2022-04-04 15:38:54'),
(768, 645, 'English', 'Molla Super Salt', '', '2022-04-04 15:39:47', '2022-04-04 15:39:47'),
(769, 643, 'English', 'Sabudana', '', '2022-04-04 15:40:18', '2022-04-04 15:40:18'),
(770, 642, 'English', 'Quaker Oats Jar', '', '2022-04-04 15:40:48', '2022-04-04 15:40:48'),
(771, 641, 'English', 'Quaker Oats Jar', '', '2022-04-04 15:41:22', '2022-04-04 15:41:22'),
(772, 634, 'English', 'Boot Dal Besan', '', '2022-04-04 15:42:03', '2022-04-04 15:42:03'),
(773, 629, 'English', 'boot dal', '', '2022-04-04 15:42:47', '2022-04-04 15:42:47'),
(774, 626, 'English', 'pran hot tomato sauce', '', '2022-04-04 15:44:17', '2022-04-04 15:44:17'),
(775, 625, 'English', 'Teer Semolina Suji', '', '2022-04-04 15:44:56', '2022-04-04 15:44:56'),
(776, 624, 'English', 'Chicken Eggs', '', '2022-04-04 15:45:26', '2022-04-04 15:45:26'),
(777, 623, 'English', 'Bashundhara Suji', '', '2022-04-04 15:45:56', '2022-04-04 15:45:56'),
(778, 622, 'English', 'Almond Kathbadam', '', '2022-04-04 15:46:29', '2022-04-04 15:46:29'),
(779, 621, 'English', 'Golden Kismis', '', '2022-04-04 15:47:05', '2022-04-04 15:47:05'),
(780, 620, 'English', 'Alu Bukhara Dried Plums', '', '2022-04-04 15:47:47', '2022-04-04 15:47:47'),
(781, 619, 'English', 'Forest Moon Baking Powder', '', '2022-04-04 15:49:11', '2022-04-04 15:49:11'),
(782, 618, 'English', 'Garlic Garlic Imported', '', '2022-04-04 15:49:48', '2022-04-04 15:49:48'),
(783, 617, 'English', 'Ginger Imported', '', '2022-04-04 15:50:21', '2022-04-04 15:50:21'),
(784, 615, 'English', 'Cumin Jira', '', '2022-04-04 15:51:02', '2022-04-04 15:51:02'),
(785, 614, 'English', 'Black Pepper', '', '2022-04-04 15:51:40', '2022-04-04 15:51:40'),
(786, 613, 'English', 'Elach', '', '2022-04-04 15:52:07', '2022-04-04 15:52:07'),
(787, 612, 'English', 'Clove Lobongo', '', '2022-04-04 15:53:27', '2022-04-04 15:53:27'),
(788, 611, 'English', 'Jarif Muri', '', '2022-04-04 15:54:04', '2022-04-04 15:54:04'),
(789, 610, 'English', 'Jarif Muri', '', '2022-04-04 15:54:37', '2022-04-04 15:54:37'),
(790, 609, 'English', 'Iftar Muri', '', '2022-04-04 15:55:10', '2022-04-04 15:55:10'),
(791, 608, 'English', 'Iftar Muri', '', '2022-04-04 15:55:49', '2022-04-04 15:55:49'),
(792, 606, 'English', 'Chola Boot', '', '2022-04-04 15:56:41', '2022-04-04 15:56:41'),
(793, 605, 'English', 'Bathan Dairy Farm Milk', '', '2022-04-04 15:57:28', '2022-04-04 15:57:28'),
(794, 604, 'English', 'Bathan Dairy Farm Milk Sour Yogurt', '', '2022-04-04 15:58:20', '2022-04-04 15:58:20'),
(795, 603, 'English', 'Bathan Dairy Farm Milk Sweet Yogurt', '', '2022-04-04 15:59:01', '2022-04-04 15:59:01'),
(796, 602, 'English', 'ACI Pure Turmeric Powder Jar', '', '2022-04-04 16:00:00', '2022-04-04 16:00:00'),
(797, 601, 'English', 'ACI Pure Chilli Powder Jar', '', '2022-04-04 16:00:48', '2022-04-04 16:00:48'),
(798, 600, 'English', 'ACI Pure Coriander Powder', '', '2022-04-04 16:01:56', '2022-04-04 16:01:56'),
(799, 599, 'English', 'ACI Pure Meat Curry Masala', '', '2022-04-04 16:02:54', '2022-04-04 16:02:54'),
(800, 598, 'English', 'ACI Pure Shahi Biryani Masala', '', '2022-04-04 16:03:54', '2022-04-04 16:03:54'),
(801, 597, 'English', 'ACI Pure Garam Masala', '', '2022-04-04 16:05:06', '2022-04-04 16:05:06'),
(802, 596, 'English', 'Kalijira Houny', '', '2022-04-04 16:05:47', '2022-04-04 16:05:47'),
(803, 595, 'English', 'Psyllium Husk Isub Gul Vushi', '', '2022-04-04 16:06:35', '2022-04-04 16:06:35'),
(804, 594, 'English', 'Corn Flour', '', '2022-04-04 16:07:09', '2022-04-04 16:07:09'),
(805, 593, 'English', 'Rose Water', '', '2022-04-04 16:09:35', '2022-04-04 16:09:35'),
(806, 592, 'English', 'Kewra Water', '', '2022-04-04 16:10:38', '2022-04-04 16:10:38'),
(807, 591, 'English', 'Moshur Dal B Grade', '', '2022-04-04 16:11:35', '2022-04-04 16:11:35'),
(808, 590, 'English', 'Black Pepper', '', '2022-04-04 16:12:21', '2022-04-04 16:12:21'),
(809, 589, 'English', 'Clove Lobongo-', '', '2022-04-04 16:12:55', '2022-04-04 16:12:55'),
(810, 588, 'English', 'Elachi Jambo', '', '2022-04-04 16:13:39', '2022-04-04 16:13:39'),
(811, 587, 'English', 'Cinnamon Darchini', '', '2022-04-04 16:14:13', '2022-04-04 16:14:13'),
(812, 586, 'English', 'Cumin Jira', '', '2022-04-04 16:14:52', '2022-04-04 16:14:52'),
(813, 585, 'English', 'Boot Dal', '', '2022-04-04 16:15:38', '2022-04-04 16:15:38'),
(814, 584, 'English', 'Rupchanda Soyabean Oil', '', '2022-04-04 16:16:44', '2022-04-04 16:16:44'),
(815, 583, 'English', 'Mug Dal', '', '2022-04-04 16:17:19', '2022-04-04 16:17:19'),
(816, 582, 'English', 'Mug Dal', '', '2022-04-04 16:19:21', '2022-04-04 16:19:21'),
(817, 581, 'English', 'Motor Dal', '', '2022-04-04 16:19:53', '2022-04-04 16:19:53'),
(818, 580, 'English', 'Motor Dal', '', '2022-04-04 16:20:21', '2022-04-04 16:20:21'),
(819, 579, 'English', 'Moshur Dal Deshi', '', '2022-04-04 16:20:41', '2022-04-04 16:20:41'),
(820, 578, 'English', 'Maggi Healthy Soup Corn With Chicken', '', '2022-04-04 16:21:19', '2022-04-04 16:21:19'),
(821, 577, 'English', 'Maggi Healthy Soup Thai', '', '2022-04-04 16:21:51', '2022-04-04 16:21:51'),
(822, 576, 'English', 'Maggi Noodles Masala 12 Pack', '', '2022-04-04 16:22:23', '2022-04-04 16:22:23'),
(823, 575, 'English', 'Maggi Masala Instant Noodles 8 Pack', '', '2022-04-04 16:22:58', '2022-04-04 16:22:58'),
(824, 574, 'English', 'Magi Shade Magic', '', '2022-04-04 16:23:53', '2022-04-04 16:23:53'),
(825, 573, 'English', 'Maggi Noodles Masala Family Fun Pack 16 Pack', '', '2022-04-04 16:24:56', '2022-04-04 16:24:56'),
(826, 713, 'English', 'Mariyam Dates Khejur', '', '2022-04-04 16:30:35', '2022-04-04 16:30:35'),
(827, 712, 'English', 'Mariyam Dates Khejur-', '', '2022-04-04 16:30:56', '2022-04-04 16:30:56'),
(828, 711, 'English', 'Pusti Fortified Soyabean Oil', '', '2022-04-04 16:31:14', '2022-04-04 16:31:14'),
(829, 710, 'English', 'Tang Orange', '', '2022-04-04 16:31:26', '2022-04-04 16:31:26'),
(830, 706, 'English', 'White Sugar Chini', '', '2022-04-04 16:34:49', '2022-04-04 16:34:49'),
(831, 701, 'English', 'Red Chira', '', '2022-04-04 16:34:59', '2022-04-04 16:34:59'),
(832, 700, 'English', 'Deshi Big Cock', '', '2022-04-04 16:35:12', '2022-04-04 16:35:12'),
(833, 699, 'English', 'Teer White Flour Maida', '', '2022-04-04 16:35:28', '2022-04-04 16:35:28'),
(834, 698, 'English', 'ACI Pure White Flour', '', '2022-04-04 16:36:03', '2022-04-04 16:36:03'),
(835, 697, 'English', 'Pabda Fish 30 G', '', '2022-04-04 16:36:21', '2022-04-04 16:36:21'),
(836, 696, 'English', 'Ispahani Blender SChoice Black Tea', '', '2022-04-04 16:38:28', '2022-04-04 16:38:28'),
(837, 695, 'English', 'Kaski Fish 30g', '', '2022-04-04 16:38:47', '2022-04-04 16:38:47'),
(838, 694, 'English', 'Batasi Fish 1 250g 50g-', '', '2022-04-04 16:39:03', '2022-04-04 16:39:03'),
(839, 693, 'English', 'Baila Fish', '', '2022-04-04 16:39:12', '2022-04-04 16:39:12'),
(840, 692, 'English', 'Bashundhara Kitchen Tissue', '', '2022-04-04 16:39:28', '2022-04-04 16:39:28'),
(841, 691, 'English', 'Suresh Pure Mustard Oil', '', '2022-04-04 16:39:42', '2022-04-04 16:39:42'),
(842, 690, 'English', 'Sugar', '', '2022-04-04 16:39:48', '2022-04-04 16:39:48'),
(843, 689, 'English', 'Fresh Soyabean Oil', '', '2022-04-04 16:40:00', '2022-04-04 16:40:00'),
(844, 688, 'English', 'Dubli Boot', '', '2022-04-04 16:40:08', '2022-04-04 16:40:08'),
(845, 687, 'English', 'Khesari Dal', '', '2022-04-04 16:40:15', '2022-04-04 16:40:15'),
(846, 686, 'English', 'Ghani Vangga Mustard Oil Shorisher Tel', '', '2022-04-04 16:42:34', '2022-04-04 16:42:34'),
(847, 685, 'English', 'Ghee', '', '2022-04-04 16:42:40', '2022-04-04 16:42:40'),
(848, 684, 'English', 'Bagda Chingri Medium Size', '', '2022-04-04 16:43:02', '2022-04-04 16:43:02'),
(849, 683, 'English', 'Live Cock Chicken', '', '2022-04-04 16:43:14', '2022-04-04 16:43:14'),
(850, 682, 'English', 'Broiler Live Chicken Murgi', '', '2022-04-04 16:43:32', '2022-04-04 16:43:32'),
(851, 681, 'English', 'Nirala Ball Laundry Soap', '', '2022-04-04 16:43:46', '2022-04-04 16:43:46'),
(852, 680, 'English', 'Jet Classic Detergent Powder Paper Pack', '', '2022-04-04 16:44:06', '2022-04-04 16:44:06'),
(853, 679, 'English', 'Cussons Imperial Leather Classic Soap', '', '2022-04-04 16:44:22', '2022-04-04 16:44:22'),
(854, 678, 'English', 'Mr. Noodles Magic Masala Easy Instant', '', '2022-04-04 16:44:51', '2022-04-04 16:44:51'),
(855, 677, 'English', 'Tang Orange Instant Drink Powder', '', '2022-04-04 16:45:07', '2022-04-04 16:45:07');

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
(15, 'office_user', NULL, '2022-03-09 06:54:14', '2022-03-09 06:54:14'),
(17, 'ofiice_user', NULL, '2022-03-14 02:27:14', '2022-03-14 02:27:14'),
(18, 'raihan', NULL, '2022-03-14 02:28:04', '2022-03-14 02:28:04'),
(20, 'supply_chain', 'supply_chain', '2022-03-26 11:13:19', '2022-03-26 11:13:19'),
(21, 'Supply Chain', NULL, '2022-03-26 11:16:23', '2022-03-26 11:16:23');

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
(2, 'backend_direction', 'ltr', NULL, '2022-03-25 14:46:53'),
(3, 'language', 'English', NULL, '2022-03-15 05:43:20'),
(4, 'email_verification', 'disabled', NULL, '2022-03-25 14:46:53'),
(5, 'delivery_charge', '0', NULL, '2022-03-25 14:46:53'),
(6, 'free_delivery_amount', '0', NULL, '2022-03-25 14:46:53'),
(7, 'currency', 'BDT', NULL, '2022-03-25 14:46:53'),
(8, 'main_heading', 'Groceries delivered in 24 hours', NULL, '2022-03-21 03:55:26'),
(9, 'mail_type', 'smtp', NULL, '2022-01-08 10:23:02'),
(10, 'backend_direction', 'ltr', NULL, '2022-03-25 14:46:53'),
(11, 'language', 'English', NULL, '2022-03-15 05:43:20'),
(12, 'email_verification', 'disabled', NULL, '2022-03-25 14:46:53'),
(13, 'delivery_charge', '0', NULL, '2022-03-25 14:46:53'),
(14, 'free_delivery_amount', '0', NULL, '2022-03-25 14:46:53'),
(15, 'currency', 'BDT', NULL, '2022-03-25 14:46:53'),
(16, 'main_heading', 'Groceries delivered in 24 hours', NULL, '2022-03-21 03:55:26'),
(17, 'company_name', 'Q Bazar', '2021-10-17 02:27:53', '2022-03-15 05:43:20'),
(18, 'site_title', 'Q Bazar', '2021-10-17 02:27:53', '2022-03-15 05:43:20'),
(19, 'phone', '+88 01321177234', '2021-10-17 02:27:53', '2022-03-15 05:43:20'),
(20, 'email', 'info@qbazar.com.bd', '2021-10-17 02:27:53', '2022-03-15 05:43:20'),
(21, 'timezone', 'Asia/Dhaka', '2021-10-17 02:27:53', '2022-03-15 05:43:20'),
(22, 'currency_position', 'left', '2021-10-17 08:30:56', '2022-03-25 14:46:53'),
(23, 'date_format', 'd-m-Y', '2021-10-17 08:30:56', '2022-03-25 14:46:53'),
(24, 'time_format', '12', '2021-10-17 08:30:56', '2022-03-25 14:46:53'),
(25, 'about_us', 'Qbazar.com.bd is an online shop available in Dhaka. We believe time is valuable to our fellow Dhaka residents, and that they should not have to waste hours in traffic, brave harsh weather and wait in line just to buy necessities like eggs! This is why we deliver every day needs to our customers’ door-steps across Dhaka.', '2021-10-17 08:32:24', '2022-03-21 03:55:26'),
(26, 'copyright', 'Copyright © 2021 Q Bazar - All Rights Reserved.', '2021-10-17 08:32:24', '2022-03-21 03:55:26'),
(27, 'primary_color', '#004e9f', '2021-10-17 08:32:24', '2022-03-21 03:55:26'),
(28, 'sidebar_active_color', '#004e9f', '2021-10-17 08:32:24', '2022-03-21 03:55:26'),
(29, 'footer_top_color', '#2f3640', '2021-10-17 08:32:24', '2022-03-21 03:55:26'),
(30, 'footer_bottom_color', '#26282b', '2021-10-17 08:32:24', '2022-03-21 03:55:26'),
(31, 'footer_important_links', '[\"1\",\"2\",\"3\",\"4\",\"5\"]', '2021-10-17 08:32:24', '2022-03-21 03:55:26'),
(32, 'footer_popular_category', '[\"4\",\"57\",\"108\"]', '2021-10-17 08:32:24', '2022-03-21 03:55:26'),
(33, 'meta_keywords', '', '2021-10-17 08:32:24', '2022-03-21 03:55:26'),
(34, 'meta_content', '', '2021-10-17 08:32:24', '2022-03-21 03:55:26'),
(35, 'home_banner', 'file_1634471364.jpg', '2021-10-17 08:32:24', '2021-10-17 09:49:24'),
(36, 'website_logo', 'website-logo.png', '2021-10-17 09:34:29', '2022-03-08 04:10:49'),
(37, 'address', '', '2021-10-28 01:43:04', '2022-03-15 05:43:20'),
(38, 'from_email', 'info@qbazar.com.bd', '2022-01-05 03:26:40', '2022-01-08 10:23:02'),
(39, 'from_name', 'Qbazaar', '2022-01-05 03:26:40', '2022-01-08 10:23:02'),
(40, 'smtp_host', 'mail.qbazar.com.bd', '2022-01-05 03:26:40', '2022-01-08 10:23:02'),
(41, 'smtp_port', '465', '2022-01-05 03:26:40', '2022-01-08 10:23:02'),
(42, 'smtp_username', 'info@qbazar.com.bd', '2022-01-05 03:26:40', '2022-01-08 10:23:02'),
(43, 'smtp_password', 'info@qbazar.com.bd', '2022-01-05 03:26:40', '2022-01-08 10:23:02'),
(44, 'smtp_encryption', 'ssl', '2022-01-05 03:26:40', '2022-01-08 10:23:02'),
(45, 'logo', 'app-luncher.png', '2022-01-29 02:17:08', '2022-01-31 04:18:09'),
(46, 'google_login', 'enabled', '2022-02-16 07:34:11', '2022-03-24 04:33:49'),
(47, 'GOOGLE_CLIENT_ID', '668229574250-5orohpoq26hkrboo3pva7mrtc49a0nba.apps.googleusercontent.com', '2022-02-16 07:34:11', '2022-03-24 04:33:49'),
(48, 'GOOGLE_CLIENT_SECRET', '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', '2022-02-16 07:34:11', '2022-03-24 04:33:49'),
(49, 'facebook_login', 'disabled', '2022-02-16 07:34:11', '2022-03-24 04:33:49'),
(50, 'FACEBOOK_CLIENT_ID', '1333949347102993', '2022-02-16 07:34:11', '2022-03-24 04:33:49'),
(51, 'FACEBOOK_CLIENT_SECRET', 'c5aa7248411343e8c97566cafaeef128', '2022-02-16 07:34:11', '2022-03-24 04:33:49');

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
(42, 42, 'English', 'Pices', 'Pcs', '2021-10-18 06:18:43', '2022-03-02 11:07:14'),
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
(1, 'Admin', 'info@qbazar.com.bd', NULL, 'admin', 12, 1, 'profile_1646733291.png', '2021-10-17 02:26:46', '$2y$10$m5XB.6CIEowuys5CeZhiteSf6i1krQOxyTMgUwu/Y07nUAFjBbPGa', NULL, NULL, NULL, 'eWYUY8dX0DvJiWRU803X4Em4A63WMonNbyz7iIWXTkjnaQsIeOXjAlA2eaI0', '2021-10-17 02:26:46', '2022-03-09 06:49:09'),
(2, 'Emran Miah', 'gaziemran2@gmail.com', '01623284207', 'customer', NULL, 1, NULL, '2021-10-17 21:52:34', '$2y$10$7agJ3O5QskldMm.Az4kBzONMPQDh8xUUFz.AX6sE.Na3.00VQyVwO', NULL, NULL, NULL, NULL, '2021-10-17 21:52:34', '2021-10-17 21:52:34'),
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
(30, 'UZZAL KUMAR ROY', 'zamanit.uzzal@gmail.com', '01965445223', 'customer', NULL, 1, NULL, NULL, '$2y$10$XXBwtzKweUAZiF.fIDjSE.P5sQ8hG0KNwTpqNymBQAst4bL2a6Jri', NULL, NULL, NULL, NULL, '2022-01-08 04:23:17', '2022-01-08 04:23:17'),
(31, 'Emran Gazi', 'e.zamanit@gmail.com', '01608728677', 'customer', NULL, 1, NULL, NULL, '$2y$10$BH0hAncre9o.W97TIPWuu.SWR27fqQ73Znr1zfKx/GZ86XxlpipMi', NULL, NULL, NULL, NULL, '2022-01-08 20:40:18', '2022-01-08 20:40:18'),
(40, 'Shakil Islam', 'shakoli@gmail.com', '017878797987', 'customer', NULL, 1, NULL, NULL, '$2y$10$D849lHlijCecGTVHhlYfX.Zf1wRoQCeR2mSHZ.ozU.oRdHD6yVHHi', NULL, NULL, NULL, NULL, '2022-01-16 21:11:59', '2022-01-16 21:11:59'),
(43, 'Dip', 'antarip15@gmail.com', '01713702979', 'customer', NULL, 1, 'profile_1642843136.jpg', '2022-01-21 19:55:02', '$2y$10$jLF7XaSh/7cAiTWQJ8MgR.7tETfAOXUQOXF1NQ3E.H35hayheE4zW', NULL, NULL, NULL, 'bVXEuCivd9gaijGHwiFjZcTXfeHWSM3RiKibBY3YdUfEOGmPU3JFZTI6D11b', '2022-01-21 19:52:15', '2022-01-22 01:18:56'),
(46, 'Mohammad Zahirul Kabir', 'kabirabs01@gmail.com', '8801711525261', 'customer', NULL, 1, NULL, '2022-02-05 21:54:54', '$2y$10$27eJUvOtX7VxrMLp0JDT9.hkjtWMY1s/CbksBPRSYqQCHq.xp8Czy', NULL, NULL, NULL, 'RNThaeXPC6sUDJfUg7c0pOMAG8ut522Md3ieJl7AEgHoqEy3csJrC2UAuoY3', '2022-02-05 21:54:01', '2022-02-05 21:54:54'),
(49, 'Shajjadul Bari Abir', 'abircu90@gmail.com', '01816302331', 'customer', NULL, 1, NULL, '2022-02-16 02:02:10', '$2y$10$22P6I1SAdSwoQPU0VXRK0eH6fhR09IqB8w7UPeoCfh0IlhExSu7Ki', NULL, NULL, NULL, NULL, '2022-02-16 01:55:47', '2022-02-16 02:02:10'),
(62, 'Sabbir Hossain', 'sabbirsa240@gmail.com', NULL, 'user', 15, 1, '', '2022-03-09 06:54:44', '$2y$10$n5rJSqlG/StyxjT9tvFNjelhetu0lElIh.6GdO4cBb17t6LcOyNOC', NULL, NULL, NULL, NULL, '2022-03-09 06:54:44', '2022-03-10 02:19:32'),
(63, 'Q Bazar', 'qbazarweb@gmail.com', '01866717825', 'customer', NULL, 1, '1647150391_avatar.jpg', '2022-03-12 21:46:31', NULL, 'google', '114960362808222819477', 'dhaka', NULL, '2022-03-12 21:46:31', '2022-03-12 21:47:04'),
(64, 'Md. Shahidul haque', 'shaid.exotica@gmail.com', '01688636379', 'customer', NULL, 1, NULL, '2022-03-13 05:57:34', '$2y$10$ES2U3oWjJRVHlBS0W02.2uLYw9qgYPHOM1YphXkS9c1RsQqqR5Ivm', NULL, NULL, '464/C Khilgaon', NULL, '2022-03-13 05:57:34', '2022-03-14 05:10:15'),
(65, 'Raihan', 'raihan@qbazar.com.bd', NULL, 'user', 18, 1, '', '2022-03-14 02:27:20', '$2y$10$4wM4UxZ3KFuo/2wIAYLqQeUlP2v91iglt4qV1UYV8jKzA75XQIFa2', NULL, NULL, NULL, 'XYxbJh7s6aFLmZSHUmxYxMmDxqb2xI2ikqZquJYwQtFQp3bHM1KUksKAVi8M', '2022-03-14 02:27:20', '2022-03-14 02:29:36'),
(66, 'Ms. Syeda Zohora Khatun', 'soyeda.merina@gmail.com', '01824674812', 'customer', NULL, 1, '', '2022-03-14 05:12:11', '$2y$10$sglvwZoo5ZBrY/UtM6wHrupPcswQWOSqJ.WFYQ223xZ/Kfq2jEEgC', NULL, NULL, '464/C, Khilgaon, Dhaka', NULL, '2022-03-14 05:12:11', '2022-03-15 11:11:12'),
(67, 'Imran Ahmed', 'imranafiya270@gmail.com', '01921873270', 'customer', NULL, 1, '1647242123_avatar.jpg', '2022-03-13 23:15:23', NULL, 'google', '114167199719885471225', '464/C, khilgaon, Dhaka, 1219', NULL, '2022-03-13 23:15:23', '2022-03-13 23:16:00'),
(68, 'Admin Chairperson', 'chairperson1122@gmail.com', '01321177233', 'customer', NULL, 1, '1647339474_avatar.jpg', '2022-03-15 02:17:54', NULL, 'google', '111970028916735686616', 'House No.-27, Flat-2/B, Road-7, Dhanmondi.', NULL, '2022-03-15 02:17:54', '2022-03-15 02:21:14'),
(69, 'Md. Shahidul Haque', 'shahid.exotica@gmail.com', '01688636379', 'customer', NULL, 1, '1647350089_avatar.jpg', '2022-03-15 05:14:49', '$2y$10$084yUGvd.d3RQcGpjJURFeZ5En5nK9nal1X.h6wZl8sUv4U1fRP.u', 'google', '101537003272386899570', '464/C Khilgaon', NULL, '2022-03-15 05:14:49', '2022-03-20 06:34:26'),
(70, 'SHOHAG HOSSAIN', 'maharajashohag@gmail.com', NULL, 'customer', NULL, 1, '1647516040_avatar.jpg', '2022-03-17 03:20:40', NULL, 'google', '108997200429448964392', NULL, NULL, '2022-03-17 03:20:40', '2022-03-17 03:20:40'),
(71, 'Mr. Ashraful Haque', 'ashrafulhaque.dhk@gmail.com', '01931408363', 'customer', NULL, 1, '', '2022-03-20 11:21:43', '$2y$10$RCBMCPEA7O2Khv6VHzHHMudiNhyBFZ7mefIr2eEMbWYxz2pkl78nq', NULL, NULL, '239/C (2nd floor) Khilgaon, Dhaka', NULL, '2022-03-20 11:21:43', '2022-03-20 11:21:43'),
(72, 'Syeda Hazera Khatun Ruma', 'syedahazera1963@gmail.com', NULL, 'customer', NULL, 1, '1648128194_avatar.jpg', '2022-03-24 05:23:14', NULL, 'google', '111154578761749295593', NULL, NULL, '2022-03-24 05:23:14', '2022-03-24 05:23:14'),
(73, 'pappo wahid', 'pappow@gmail.com', '01791001818', 'customer', NULL, 1, '1648224137_avatar.jpg', '2022-03-25 08:02:17', NULL, 'google', '102179190051241686872', 'Kha 116/1 South Badda Dhaka 1212', NULL, '2022-03-25 08:02:17', '2022-03-25 14:13:11'),
(79, 'Q Bazar', 'qbazar2@gmail.com', '11111111111111', 'customer', NULL, 1, '1648227237_avatar.jpg', '2022-03-25 08:53:57', NULL, 'google', '116574480798513940514', 'ldfn', NULL, '2022-03-25 08:53:57', '2022-03-25 08:54:58'),
(80, 'MEHEDI HASAN', 'mdmehedihasan221@gmail.com', '01941697253', 'customer', NULL, 1, '1648269531_avatar.jpg', '2022-03-25 20:38:51', NULL, 'google', '118048121862630051655', 'Dhaka', NULL, '2022-03-25 20:38:51', '2022-03-25 20:39:29'),
(81, 'Nousat Ahmed Tanvir', 'n.htanvir9280@gmail.com', NULL, 'customer', NULL, 1, '1648278223_avatar.jpg', '2022-03-25 23:03:43', NULL, 'google', '106135718137464251181', NULL, NULL, '2022-03-25 23:03:43', '2022-03-25 23:03:43'),
(82, 'pappu', 'bdelectricalmkt201@gmail.com', '01791001818', 'customer', NULL, 1, NULL, '2022-03-26 01:55:30', '$2y$10$kfh2L1P8yHMibaT8v76c.OZ7yVAxJ0OpfcQw601uQ11m6VhIlnX3O', NULL, NULL, NULL, NULL, '2022-03-26 01:55:30', '2022-03-26 01:55:30'),
(83, 'Mr. Wahiduzzaman', 'mwzaman60@gmail.com', NULL, 'admin', 21, 1, '', '2022-03-26 11:16:37', '$2y$10$0DCt2htc7/tYBTfkoAElceEt1s1ypjIKVv4w0pALLQI69XMkaalUq', NULL, NULL, NULL, NULL, '2022-03-26 11:16:37', '2022-03-26 11:16:37'),
(84, 't', 't@gmail.com', '111', 'customer', NULL, 1, NULL, '2022-03-29 05:17:09', '$2y$10$xKGZl5PV8AiC3iDWlZyOzOgTZZevVHiqWVJP1junBkiqmpTryawKa', NULL, NULL, 'cndj', NULL, '2022-03-29 05:17:09', '2022-03-29 05:49:58');

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
-- Indexes for table `order_responses`
--
ALTER TABLE `order_responses`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `order_responses`
--
ALTER TABLE `order_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=799;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=856;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `unit_translations`
--
ALTER TABLE `unit_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

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
