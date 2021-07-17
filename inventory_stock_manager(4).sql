-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 17, 2021 at 01:27 PM
-- Server version: 10.3.29-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_stock_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `barcodes`
--

CREATE TABLE `barcodes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barcodes`
--

INSERT INTO `barcodes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(59, '49-dress3', '2021-07-04 07:05:36', '2021-07-04 07:05:36'),
(60, '50-dress4', '2021-07-05 10:58:36', '2021-07-05 10:58:36'),
(61, '51-sheikha', '2021-07-09 15:11:12', '2021-07-09 15:11:12'),
(62, '52-princess', '2021-07-09 15:14:01', '2021-07-09 15:14:01'),
(63, '53-New york', '2021-07-10 07:50:34', '2021-07-10 07:50:34'),
(64, '54-Rawan', '2021-07-10 07:52:05', '2021-07-10 07:52:05'),
(65, '55-London', '2021-07-10 07:53:41', '2021-07-10 07:53:42'),
(66, '56-Hessa', '2021-07-10 07:54:53', '2021-07-10 07:54:53'),
(67, '57-Cape with stone:1', '2021-07-10 07:56:53', '2021-07-10 07:56:53'),
(68, '58-Oscar Jacket', '2021-07-10 08:00:50', '2021-07-10 08:00:50'),
(69, '59-Spanish1', '2021-07-10 08:02:47', '2021-07-10 08:02:47'),
(70, '60-Spanish Feather2', '2021-07-10 08:04:45', '2021-07-10 08:04:45'),
(71, '61-Madrid', '2021-07-10 08:31:29', '2021-07-10 08:31:29'),
(72, '62-Cindrella1', '2021-07-10 08:33:40', '2021-07-10 08:33:41'),
(73, '63-Cann1', '2021-07-10 08:35:02', '2021-07-10 08:35:02'),
(74, '64-Abudhabi', '2021-07-10 08:36:02', '2021-07-10 08:36:02'),
(75, '65-Hurrem Sultan', '2021-07-10 08:37:01', '2021-07-10 08:37:01'),
(76, '66-Dantail1', '2021-07-10 08:38:22', '2021-07-10 08:38:22'),
(77, '67-Flower in Shoulder', '2021-07-10 08:39:33', '2021-07-10 08:39:33'),
(78, '68-Chaden1', '2021-07-10 08:40:29', '2021-07-10 08:40:29'),
(79, '69-Cinderella2', '2021-07-10 08:41:19', '2021-07-10 08:41:19'),
(80, '70-Bride1', '2021-07-10 08:42:07', '2021-07-10 08:42:07'),
(81, '71-Bride2', '2021-07-10 08:43:01', '2021-07-10 08:43:01'),
(82, '72-Golden Tartar', '2021-07-10 08:44:02', '2021-07-10 08:44:02'),
(83, '73-Sprink Flower', '2021-07-10 08:45:25', '2021-07-10 08:45:25'),
(84, '74-Sugar1', '2021-07-10 08:46:27', '2021-07-10 08:46:27'),
(85, '75-Lebanese Jumpsuit', '2021-07-10 08:47:42', '2021-07-10 08:47:43'),
(86, '76-Buff Style', '2021-07-10 09:17:45', '2021-07-10 09:17:45'),
(87, '77-Corset1', '2021-07-10 09:19:17', '2021-07-10 09:19:17'),
(88, '78-AJM', '2021-07-10 09:20:02', '2021-07-10 09:20:02'),
(89, '79-Mermaid2', '2021-07-10 09:21:02', '2021-07-10 09:21:02'),
(90, '80-Valentine1', '2021-07-10 09:25:36', '2021-07-10 09:25:36'),
(91, '81-Stripe skirt', '2021-07-10 09:26:36', '2021-07-10 09:26:36'),
(92, '82-Toor Kaftan', '2021-07-10 09:28:31', '2021-07-10 09:28:31'),
(93, '83-Farasha Valentine', '2021-07-10 09:29:29', '2021-07-10 09:29:29'),
(94, '84-Palm Kaftan', '2021-07-10 09:30:36', '2021-07-10 09:30:36'),
(95, '85-Cape Kaftan', '2021-07-10 09:35:20', '2021-07-10 09:35:20'),
(96, '86-Rainbow Kaftan', '2021-07-10 09:36:27', '2021-07-10 09:36:27'),
(97, '87-Thob Kaftan(beige)', '2021-07-10 09:42:08', '2021-07-10 09:42:08'),
(98, '88-Thob Kaftan(black)', '2021-07-10 09:43:20', '2021-07-10 09:43:20'),
(99, '89-Shaika Moza Abhaya', '2021-07-10 09:44:27', '2021-07-10 09:44:27'),
(100, '90-Stone Kaftan', '2021-07-10 09:45:07', '2021-07-10 09:45:07'),
(101, '91-Cann2', '2021-07-10 09:45:51', '2021-07-10 09:45:51'),
(102, '92-Cannes2', '2021-07-10 11:57:29', '2021-07-10 11:57:29'),
(103, '93-Red Carpet1', '2021-07-10 11:59:24', '2021-07-10 11:59:24'),
(104, '94-Zena1', '2021-07-10 12:01:02', '2021-07-10 12:01:02'),
(105, '95-Red Carpet2', '2021-07-10 12:02:18', '2021-07-10 12:02:19'),
(106, '96-Cannes3', '2021-07-10 12:03:11', '2021-07-10 12:03:11'),
(107, '97-Chaden2', '2021-07-10 12:04:15', '2021-07-10 12:04:16'),
(108, '98-Cannes4', '2021-07-10 12:07:37', '2021-07-10 12:07:37'),
(109, '99-Curtain', '2021-07-10 12:08:48', '2021-07-10 12:08:48'),
(110, '100-JSM', '2021-07-10 12:10:31', '2021-07-10 12:10:31'),
(111, '101-Rahaf1', '2021-07-10 12:12:57', '2021-07-10 12:12:57'),
(112, '102-Rahaf2', '2021-07-10 12:13:47', '2021-07-10 12:13:47'),
(113, '103-Rahaf3', '2021-07-10 12:14:34', '2021-07-10 12:14:34'),
(114, '104-Rahaf4', '2021-07-10 12:15:50', '2021-07-10 12:15:50'),
(115, '105-Rahaf5', '2021-07-10 12:16:36', '2021-07-10 12:16:36'),
(116, '106-Rahaf6', '2021-07-10 12:17:39', '2021-07-10 12:17:39'),
(117, '107-Rahaf7', '2021-07-10 12:18:39', '2021-07-10 12:18:39'),
(118, '108-Rahaf8', '2021-07-10 12:20:05', '2021-07-10 12:20:05'),
(119, '109-Randa1', '2021-07-10 12:21:08', '2021-07-10 12:21:08'),
(120, '110-Rahaf9', '2021-07-10 12:23:44', '2021-07-10 12:23:44'),
(121, '111-Stripe Trouser', '2021-07-10 12:24:46', '2021-07-10 12:24:46'),
(122, '112-Skirt Curtain', '2021-07-10 12:25:51', '2021-07-10 12:25:51'),
(123, '113-Cape with stone:2', '2021-07-11 10:45:32', '2021-07-11 10:45:34'),
(124, '114-Cape with stone:2', '2021-07-11 10:45:36', '2021-07-11 10:45:37'),
(125, '115-Stripe skirt2', '2021-07-11 10:47:42', '2021-07-11 10:47:42'),
(126, '116-Kuwaiti Skirt', '2021-07-11 10:49:55', '2021-07-11 10:49:55'),
(127, '117-Spot Skirt', '2021-07-11 10:50:36', '2021-07-11 10:50:39'),
(128, '118-Spot Skirt', '2021-07-11 10:50:40', '2021-07-11 10:50:41'),
(129, '119-Stripe Dress1', '2021-07-11 10:51:42', '2021-07-11 10:51:45'),
(130, '120-Stripe Dress1', '2021-07-11 10:51:46', '2021-07-11 10:51:48'),
(131, '121-Stripe Dress1', '2021-07-11 10:51:49', '2021-07-11 10:51:50'),
(132, '122-Spot Skirt', '2021-07-11 10:56:55', '2021-07-11 10:56:55'),
(133, '123-Stripe Dress1', '2021-07-11 10:57:29', '2021-07-11 10:57:29'),
(134, '124-Yolla1', '2021-07-11 10:58:24', '2021-07-11 10:58:25'),
(135, '125-Miss 60:1', '2021-07-11 10:59:42', '2021-07-11 10:59:43'),
(136, '126-Miss Sixty:2', '2021-07-12 08:49:20', '2021-07-12 08:49:20'),
(137, '127-Chopar', '2021-07-12 08:50:19', '2021-07-12 08:50:19'),
(138, '128-Cape with stone 3 Pink', '2021-07-12 08:51:50', '2021-07-12 08:51:50'),
(139, '129-Lebanese Dress', '2021-07-12 08:52:22', '2021-07-12 08:52:22'),
(140, '130-Spanish Jacket', '2021-07-12 08:53:35', '2021-07-12 08:53:35'),
(141, '131-Hamra Feathers', '2021-07-12 08:54:26', '2021-07-12 08:54:26'),
(142, '132-Rasha1', '2021-07-12 08:55:04', '2021-07-12 08:55:04'),
(143, '133-Flower Rasha', '2021-07-12 08:56:01', '2021-07-12 08:56:02'),
(144, '134-Kasrat Skirt', '2021-07-12 08:56:45', '2021-07-12 08:56:46'),
(145, '135-Melcha(Pink)', '2021-07-12 08:57:23', '2021-07-12 08:57:23'),
(146, '136-Sponge Skirt', '2021-07-12 08:58:07', '2021-07-12 08:58:07'),
(147, '137-Oscar1', '2021-07-12 08:58:42', '2021-07-12 08:58:42'),
(148, '138-Mermaid1', '2021-07-12 08:59:25', '2021-07-12 08:59:25'),
(149, '139-Blissai sleeves Jumpsuit1', '2021-07-12 09:00:40', '2021-07-12 09:00:40'),
(150, '140-Bride 3', '2021-07-12 09:02:08', '2021-07-12 09:02:08'),
(151, '141-Fyonka with Dress1', '2021-07-12 09:02:59', '2021-07-12 09:02:59'),
(152, '142-Zena2', '2021-07-12 09:03:49', '2021-07-12 09:03:49'),
(153, '143-Ahoud1', '2021-07-12 09:05:47', '2021-07-12 09:05:47'),
(154, '144-Ahoud2', '2021-07-12 09:06:56', '2021-07-12 09:06:56'),
(155, '145-Randa2', '2021-07-12 09:08:08', '2021-07-12 09:08:08'),
(156, '146-Montaha Jumpsuit1', '2021-07-12 09:09:22', '2021-07-12 09:09:22'),
(157, '147-Oscar2', '2021-07-12 09:09:54', '2021-07-12 09:09:55'),
(158, '148-Buff Sleeves1', '2021-07-12 09:11:29', '2021-07-12 09:11:29'),
(159, '149-Montaha Jacket', '2021-07-12 09:12:06', '2021-07-12 09:12:06'),
(160, '150-Cape with stone set 4', '2021-07-12 09:13:06', '2021-07-12 09:13:06'),
(161, '151-Stripe Dress with Flower', '2021-07-12 09:13:53', '2021-07-12 09:13:53'),
(162, '152-Rainbow Dantail Blouse', '2021-07-12 09:14:45', '2021-07-12 09:14:45'),
(163, '153-Spanish Dress 3', '2021-07-12 09:15:34', '2021-07-12 09:15:34'),
(164, '154-Macaron Top', '2021-07-12 09:16:27', '2021-07-12 09:16:27'),
(165, '155-Randa3', '2021-07-12 09:17:38', '2021-07-12 09:17:38'),
(166, '156-Sado Top', '2021-07-12 09:18:13', '2021-07-12 09:18:14'),
(167, '157-Japanese Dress', '2021-07-12 09:19:02', '2021-07-12 09:19:03'),
(168, '158-Japanese Dress', '2021-07-14 04:32:01', '2021-07-14 04:32:01'),
(169, '159-American Chiffon1', '2021-07-14 04:33:17', '2021-07-14 04:33:17'),
(170, '160-Johara Skirt', '2021-07-14 04:33:57', '2021-07-14 04:33:57'),
(171, '161-Rahaf Jacket', '2021-07-14 04:34:40', '2021-07-14 04:34:40'),
(172, '162-Chan Skirt', '2021-07-14 04:35:32', '2021-07-14 04:35:33'),
(173, '163-Spanish Top', '2021-07-14 04:36:17', '2021-07-14 04:36:17'),
(174, '164-Mermaid Skirt', '2021-07-14 04:36:53', '2021-07-14 04:36:53'),
(175, '165-Corset2', '2021-07-14 04:38:06', '2021-07-14 04:38:06'),
(176, '166-Spanish Skirt', '2021-07-14 04:38:53', '2021-07-14 04:38:53'),
(177, '167-Mexican Blouse', '2021-07-14 04:39:53', '2021-07-14 04:39:53'),
(178, '168-Princess skirt', '2021-07-14 04:40:22', '2021-07-14 04:40:22'),
(179, '169-Bride Top1', '2021-07-14 04:41:25', '2021-07-14 04:41:25'),
(180, '170-Buff Sleeves with belt 2', '2021-07-14 04:43:08', '2021-07-14 04:43:08'),
(181, '171-19 century dress', '2021-07-14 04:44:15', '2021-07-14 04:44:15'),
(182, '172-Best Crystal Dress', '2021-07-14 04:44:52', '2021-07-14 04:44:52'),
(183, '173-Fyonka Dress2', '2021-07-14 04:45:55', '2021-07-14 04:45:55'),
(184, '174-Best Jump suit', '2021-07-14 04:47:00', '2021-07-14 04:47:01'),
(185, '175-Red Carpet3', '2021-07-14 04:47:50', '2021-07-14 04:47:50'),
(186, '176-Fyonka Dress3', '2021-07-14 04:48:28', '2021-07-14 04:48:28'),
(187, '177-Farasha1', '2021-07-14 04:49:16', '2021-07-14 04:49:16'),
(188, '178-Spanish Dress4', '2021-07-14 04:49:57', '2021-07-14 04:49:57'),
(189, '179-Long Sleeves Dress', '2021-07-14 04:51:19', '2021-07-14 04:51:19'),
(190, '180-Bride4', '2021-07-14 04:51:55', '2021-07-14 04:51:55'),
(191, '181-Spanish Dress5', '2021-07-14 04:52:42', '2021-07-14 04:52:42'),
(192, '182-Farasha Dress2', '2021-07-14 04:54:46', '2021-07-14 04:54:46'),
(193, '183-Princess Dress1', '2021-07-14 04:56:00', '2021-07-14 04:56:00'),
(194, '184-Fyonka Dress4', '2021-07-14 04:56:42', '2021-07-14 04:56:42'),
(195, '185-Randa4', '2021-07-14 04:57:27', '2021-07-14 04:57:27'),
(196, '186-Classic Dress1', '2021-07-14 04:58:07', '2021-07-14 04:58:07'),
(197, '187-Yolla2', '2021-07-14 04:58:47', '2021-07-14 04:58:47'),
(198, '188-Mermaid Dress3', '2021-07-14 04:59:38', '2021-07-14 04:59:38'),
(199, '189-Feather Loff Dress1', '2021-07-14 05:00:30', '2021-07-14 05:00:30'),
(200, '190-Stripe Dress2', '2021-07-14 05:01:10', '2021-07-14 05:01:10'),
(201, '191-Randa Feathers5', '2021-07-14 05:02:53', '2021-07-14 05:02:53'),
(202, '192-Cinderella3', '2021-07-14 05:03:31', '2021-07-14 05:03:31'),
(203, '193-Loona Dress', '2021-07-14 05:04:18', '2021-07-14 05:04:18'),
(204, '194-Blissai sleeves Jumpsuit2', '2021-07-14 05:05:17', '2021-07-14 05:05:17'),
(205, '195-Blissai Dress1', '2021-07-14 05:06:21', '2021-07-14 05:06:22'),
(206, '196-Lulu Dress', '2021-07-14 05:07:00', '2021-07-14 05:07:00'),
(207, '197-Montaha Jumpsuit2', '2021-07-14 05:08:06', '2021-07-14 05:08:06'),
(208, '198-Sheikha 1', '2021-07-14 05:09:20', '2021-07-14 05:09:20'),
(209, '199-Toor Jumpsuit1', '2021-07-14 05:10:40', '2021-07-14 05:10:40'),
(210, '200-Laila1', '2021-07-14 05:11:26', '2021-07-14 05:11:26'),
(211, '201-Lamya', '2021-07-14 05:12:16', '2021-07-14 05:12:16'),
(212, '202-Feather Loff Dress2', '2021-07-14 05:13:02', '2021-07-14 05:13:02'),
(213, '203-Rasha2', '2021-07-14 05:13:52', '2021-07-14 05:13:52'),
(214, '204-Crystal Cape', '2021-07-14 05:14:51', '2021-07-14 05:14:51'),
(215, '205-Classic Dress2', '2021-07-14 05:15:36', '2021-07-14 05:15:36'),
(216, '206-Noor', '2021-07-14 05:16:22', '2021-07-14 05:16:22'),
(217, '207-Queen', '2021-07-14 05:17:30', '2021-07-14 05:17:30'),
(218, '208-Cape Tartar1', '2021-07-14 05:18:35', '2021-07-14 05:18:35'),
(219, '209-Feather Loff Dress3', '2021-07-14 05:20:01', '2021-07-14 05:20:01'),
(220, '210-Fashion Dress', '2021-07-14 05:20:58', '2021-07-14 05:20:58'),
(221, '211-Stars', '2021-07-14 05:22:40', '2021-07-14 05:22:40'),
(222, '212-Angelina1', '2021-07-14 05:23:38', '2021-07-14 05:23:38'),
(223, '213-Caroline', '2021-07-14 05:24:55', '2021-07-14 05:24:55'),
(224, '214-Valentine2', '2021-07-14 05:25:50', '2021-07-14 05:25:50'),
(225, '215-Miss 70:1', '2021-07-14 05:27:27', '2021-07-14 05:27:27'),
(226, '216-Dalal', '2021-07-14 05:28:26', '2021-07-14 05:28:26'),
(227, '217-Sarah', '2021-07-14 05:29:09', '2021-07-14 05:29:09'),
(228, '218-Hadab Cape', '2021-07-14 05:30:17', '2021-07-14 05:30:17'),
(229, '219-Bride5', '2021-07-14 05:31:19', '2021-07-14 05:31:19'),
(230, '220-Bride6', '2021-07-14 05:32:02', '2021-07-14 05:32:02'),
(231, '221-Bride7', '2021-07-14 05:33:08', '2021-07-14 05:33:08'),
(232, '222-Bride8', '2021-07-14 05:34:27', '2021-07-14 05:34:27'),
(233, '223-Bride9', '2021-07-14 05:35:26', '2021-07-14 05:35:26'),
(234, '224-Fyonka5', '2021-07-14 05:36:24', '2021-07-14 05:36:24'),
(235, '225-Buff Sleeves dress 3', '2021-07-14 05:37:47', '2021-07-14 05:37:47'),
(236, '226-Rasha3', '2021-07-14 05:38:40', '2021-07-14 05:38:40'),
(237, '227-New Year', '2021-07-16 16:39:16', '2021-07-16 16:39:16'),
(238, '228-Miss Lebanon', '2021-07-16 16:41:01', '2021-07-16 16:41:01'),
(239, '229-Montaha Dress1', '2021-07-16 16:41:45', '2021-07-16 16:41:45'),
(240, '230-new1', '2021-07-17 06:26:26', '2021-07-17 06:26:26'),
(241, '231-new2', '2021-07-17 06:27:28', '2021-07-17 06:27:28'),
(242, '232-new3', '2021-07-17 06:28:14', '2021-07-17 06:28:15'),
(243, '233-new4', '2021-07-17 06:29:44', '2021-07-17 06:29:44'),
(244, '234-new5', '2021-07-17 06:30:50', '2021-07-17 06:30:50'),
(245, '235-new6', '2021-07-17 06:32:15', '2021-07-17 06:32:16'),
(246, '236-new7', '2021-07-17 06:32:52', '2021-07-17 06:32:52'),
(247, '237-new8', '2021-07-17 06:33:38', '2021-07-17 06:33:38'),
(248, '238-new9', '2021-07-17 06:34:21', '2021-07-17 06:34:22'),
(249, '239-new10', '2021-07-17 06:35:57', '2021-07-17 06:35:57'),
(250, '240-new11', '2021-07-17 06:38:02', '2021-07-17 06:38:02'),
(251, '241-new12', '2021-07-17 06:39:29', '2021-07-17 06:39:30'),
(252, '242-new13', '2021-07-17 06:40:03', '2021-07-17 06:40:03'),
(253, '243-new14', '2021-07-17 06:40:38', '2021-07-17 06:40:39'),
(254, '244-new15', '2021-07-17 06:41:24', '2021-07-17 06:41:24'),
(255, '245-new16', '2021-07-17 06:41:56', '2021-07-17 06:41:56'),
(256, '246-new17', '2021-07-17 06:43:48', '2021-07-17 06:43:48'),
(257, '247-new18', '2021-07-17 06:44:52', '2021-07-17 06:44:52'),
(258, '248-new19', '2021-07-17 06:45:32', '2021-07-17 06:45:32'),
(259, '249-new20', '2021-07-17 06:48:21', '2021-07-17 06:48:22'),
(260, '250-new21', '2021-07-17 06:49:28', '2021-07-17 06:49:28'),
(261, '251-new22', '2021-07-17 06:53:57', '2021-07-17 06:53:58'),
(262, '252-new23', '2021-07-17 06:55:32', '2021-07-17 06:55:32'),
(263, '253-new24', '2021-07-17 06:56:40', '2021-07-17 06:56:40'),
(264, '254-new25', '2021-07-17 06:58:00', '2021-07-17 06:58:00'),
(265, '255-new26', '2021-07-17 06:59:11', '2021-07-17 06:59:11'),
(266, '256-new27', '2021-07-17 06:59:58', '2021-07-17 06:59:58'),
(267, '257-new29', '2021-07-17 07:03:23', '2021-07-17 07:03:24'),
(268, '258-new28', '2021-07-17 07:04:21', '2021-07-17 07:04:21'),
(269, '259-new30', '2021-07-17 07:05:05', '2021-07-17 07:05:05'),
(270, '260-new31', '2021-07-17 07:05:34', '2021-07-17 07:05:34'),
(271, '261-new32', '2021-07-17 07:07:42', '2021-07-17 07:07:42'),
(272, '262-new33', '2021-07-17 07:08:19', '2021-07-17 07:08:19'),
(273, '263-new34', '2021-07-17 07:09:01', '2021-07-17 07:09:01'),
(274, '264-new35', '2021-07-17 07:09:35', '2021-07-17 07:09:35'),
(275, '265-new36', '2021-07-17 07:11:05', '2021-07-17 07:11:05'),
(276, '266-new37', '2021-07-17 07:11:33', '2021-07-17 07:11:33'),
(277, '267-new38', '2021-07-17 07:12:18', '2021-07-17 07:12:18'),
(278, '268-new39', '2021-07-17 07:13:43', '2021-07-17 07:13:44'),
(279, '269-new40', '2021-07-17 07:15:21', '2021-07-17 07:15:21'),
(280, '270-new41', '2021-07-17 07:16:07', '2021-07-17 07:16:08'),
(281, '271-new42', '2021-07-17 07:16:56', '2021-07-17 07:16:56'),
(282, '272-new44', '2021-07-17 07:17:51', '2021-07-17 07:17:52'),
(283, '273-new45', '2021-07-17 07:19:24', '2021-07-17 07:19:24'),
(284, '274-new46', '2021-07-17 07:20:25', '2021-07-17 07:20:25'),
(285, '275-new48', '2021-07-17 07:21:52', '2021-07-17 07:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(5, 'Haute Couture', '2021-07-04 05:44:11', '2021-07-04 05:45:39'),
(6, 'Evening Dress', '2021-07-04 05:44:40', '2021-07-04 05:44:40'),
(7, 'Kaftan', '2021-07-04 05:44:52', '2021-07-04 05:44:52'),
(8, 'Ready to wear', '2021-07-04 05:45:06', '2021-07-04 05:45:06'),
(9, 'Bridal Wear', '2021-07-04 05:45:20', '2021-07-04 05:45:20'),
(10, 'Please select', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `key_api` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `address`, `email`, `key_api`, `logo`) VALUES
(1, 'Montaha Couture', 'Al Tilal Mall', 'montahacouture@gmail.com', '4dc7c9ec434ed06502767136789763ec11d2c4b7', 'logo.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Harvey Nichols, Doha', 'Doha', 'harveynicholsdoha@gmail.com', '988283923', '2019-10-20 18:37:09', '2019-10-28 17:36:38'),
(2, 'Blue Salon, Qatar', 'Qatar', 'bluesalonkuwait@gmail.com', '989099099', '2019-10-21 00:03:28', '2019-10-28 17:46:48'),
(3, ' Montaha Couture POS', 'Al Tilal Mall, ', '', '', NULL, NULL),
(4, 'Galleries La Fayette,Doha ', 'Doha', '', '', NULL, NULL);

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
(3, '2018_12_18_035002_create_customers_table', 1),
(4, '2018_12_18_035015_create_sales_table', 1),
(5, '2018_12_18_035038_create_suppliers_table', 1),
(6, '2018_12_18_041830_create_categories_table', 1),
(7, '2018_12_18_042809_create_products_table', 1),
(8, '2018_12_18_043146_create_product_masuk_table', 1),
(9, '2018_12_18_043233_create_product_keluar_table', 1),
(10, '2018_12_19_044911_add_field_role_to_table_users', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `po_no` int(11) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `customer_name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `date` date NOT NULL,
  `refund_status` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0 - No, 1-refund_received',
  `order_status` int(10) UNSIGNED NOT NULL COMMENT '0 - payment received, 1-order delivered',
  `discount` float UNSIGNED DEFAULT NULL,
  `subtotal` float NOT NULL,
  `cashier` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `barcode_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `image`, `qty`, `barcode_id`, `created_at`, `updated_at`) VALUES
(53, 6, 'New york', 95, '/upload/products/new-york.jpeg', 1, 63, '2021-07-10 07:50:34', '2021-07-16 16:35:09'),
(54, 6, 'Rawan', 95, '/upload/products/rawan.jpeg', 1, 64, '2021-07-10 07:52:05', '2021-07-16 16:35:17'),
(55, 10, 'London', 55, '/upload/products/london.jpeg', 1, 65, '2021-07-10 07:53:41', '2021-07-14 05:40:23'),
(56, 10, 'Hessa', 55, '/upload/products/hessa.jpeg', 1, 66, '2021-07-10 07:54:53', '2021-07-14 05:40:38'),
(57, 8, 'Stone Cape1', 95, '/upload/products/cape-with-stone1.jpeg', 1, 67, '2021-07-10 07:56:53', '2021-07-14 05:40:56'),
(58, 6, 'Oscar Jacket', 170, '/upload/products/oscar-jacket.jpeg', 1, 68, '2021-07-10 08:00:50', '2021-07-10 08:00:50'),
(59, 10, 'Spanish1', 170, '/upload/products/spanish1.jpeg', 1, 69, '2021-07-10 08:02:47', '2021-07-14 05:42:47'),
(60, 10, 'Spanish Feather2', 110, '/upload/products/spanish-feather2.jpeg', 1, 70, '2021-07-10 08:04:45', '2021-07-14 05:43:16'),
(61, 10, 'Madrid', 95, '/upload/products/madrid.jpeg', 1, 71, '2021-07-10 08:31:29', '2021-07-14 05:43:42'),
(62, 10, 'Cindrella1', 95, '/upload/products/cindrella1.jpeg', 1, 72, '2021-07-10 08:33:41', '2021-07-10 08:33:41'),
(63, 10, 'Cann1', 120, '/upload/products/cann1.jpeg', 1, 73, '2021-07-10 08:35:02', '2021-07-10 08:35:02'),
(64, 10, 'Abudhabi', 85, '/upload/products/abudhabi.jpeg', 1, 74, '2021-07-10 08:36:02', '2021-07-10 08:36:02'),
(65, 10, 'Hurrem Sultan', 95, '/upload/products/hurrem-sultan.jpeg', 1, 75, '2021-07-10 08:37:01', '2021-07-14 05:44:01'),
(66, 10, 'Dantail1', 75, '/upload/products/dantail1.jpeg', 1, 76, '2021-07-10 08:38:22', '2021-07-10 08:38:22'),
(67, 10, 'Flower in Shoulder', 75, '/upload/products/flower-in-shoulder.jpeg', 1, 77, '2021-07-10 08:39:33', '2021-07-10 08:39:33'),
(68, 10, 'Chaden1', 95, '/upload/products/chaden1.jpeg', 1, 78, '2021-07-10 08:40:29', '2021-07-10 08:40:29'),
(69, 10, 'Cinderella2', 95, '/upload/products/cinderella2.jpeg', 1, 79, '2021-07-10 08:41:19', '2021-07-10 08:41:19'),
(70, 10, 'Bride1', 165, '/upload/products/bride1.jpeg', 2, 80, '2021-07-10 08:42:07', '2021-07-11 05:22:54'),
(71, 10, 'Bride2', 175, '/upload/products/bride2.jpeg', 0, 81, '2021-07-10 08:43:01', '2021-07-16 16:34:49'),
(72, 10, 'Golden Tartar', 180, '/upload/products/golden-tartar.jpeg', 1, 82, '2021-07-10 08:44:02', '2021-07-10 08:44:02'),
(73, 10, 'Sprink Flower', 145, '/upload/products/sprink-flower.jpeg', 1, 83, '2021-07-10 08:45:25', '2021-07-10 08:45:25'),
(74, 10, 'Sugar1', 135, '/upload/products/sugar1.jpeg', 1, 84, '2021-07-10 08:46:27', '2021-07-10 08:46:27'),
(75, 10, 'Lebanese Jumpsuit', 120, '/upload/products/lebanese-jumpsuit.jpeg', 1, 85, '2021-07-10 08:47:42', '2021-07-14 05:45:08'),
(76, 10, 'Buff Style', 165, '/upload/products/buff-style.jpeg', 1, 86, '2021-07-10 09:17:45', '2021-07-14 05:44:50'),
(77, 10, 'Corset1', 95, '/upload/products/corset1.jpeg', 1, 87, '2021-07-10 09:19:17', '2021-07-14 05:44:23'),
(78, 10, 'AJM', 75, '/upload/products/ajm.jpeg', 1, 88, '2021-07-10 09:20:02', '2021-07-10 09:20:02'),
(79, 10, 'Mermaid2', 120, '/upload/products/mermaid2.jpeg', 1, 89, '2021-07-10 09:21:02', '2021-07-10 09:21:02'),
(80, 10, 'Valentine1', 195, '/upload/products/valentine1.jpeg', 1, 90, '2021-07-10 09:25:36', '2021-07-10 09:25:36'),
(81, 10, 'Stripe skirt', 65, '/upload/products/stripe-skirt.jpeg', 1, 91, '2021-07-10 09:26:36', '2021-07-10 09:26:36'),
(82, 10, 'Toor Kaftan', 110, '/upload/products/toor-kaftan.jpeg', 1, 92, '2021-07-10 09:28:31', '2021-07-10 09:28:31'),
(83, 10, 'Farasha Valentine', 55, '/upload/products/farasha-valentine.jpeg', 1, 93, '2021-07-10 09:29:29', '2021-07-10 09:29:29'),
(84, 10, 'Palm Kaftan', 95, '/upload/products/palm-kaftan.jpeg', 1, 94, '2021-07-10 09:30:36', '2021-07-10 09:30:36'),
(85, 10, 'Cape Kaftan', 95, '/upload/products/cape-kaftan.jpeg', 1, 95, '2021-07-10 09:35:20', '2021-07-10 09:35:20'),
(86, 10, 'Rainbow Kaftan', 55, '/upload/products/rainbow-kaftan.jpeg', 1, 96, '2021-07-10 09:36:27', '2021-07-10 09:36:27'),
(87, 10, 'Thob Kaftan(beige)', 55, '/upload/products/thob-kaftanbeige.jpeg', 0, 97, '2021-07-10 09:42:08', '2021-07-16 16:30:35'),
(88, 10, 'Thob Kaftan(black)', 55, '/upload/products/thob-kaftanblack.jpeg', 1, 98, '2021-07-10 09:43:20', '2021-07-16 16:32:02'),
(89, 10, 'Shaika Moza Abhaya', 170, '/upload/products/shaika-moza-abhaya.jpeg', 1, 99, '2021-07-10 09:44:27', '2021-07-16 16:31:42'),
(90, 10, 'Stone Kaftan', 55, '/upload/products/stone-kaftan.jpeg', 1, 100, '2021-07-10 09:45:07', '2021-07-10 09:45:07'),
(92, 10, 'Cannes2', 45, '/upload/products/cannes2.jpeg', 1, 102, '2021-07-10 11:57:29', '2021-07-10 11:57:29'),
(93, 10, 'Red Carpet1', 700, '/upload/products/red-carpet1.jpeg', 1, 103, '2021-07-10 11:59:24', '2021-07-10 11:59:24'),
(94, 10, 'Zena1', 95, '/upload/products/zena1.jpeg', 1, 104, '2021-07-10 12:01:02', '2021-07-10 12:01:02'),
(95, 10, 'Red Carpet2', 650, '/upload/products/red-carpet2.jpeg', 1, 105, '2021-07-10 12:02:18', '2021-07-10 12:02:18'),
(96, 10, 'Cannes3', 110, '/upload/products/cannes3.jpeg', 1, 106, '2021-07-10 12:03:11', '2021-07-10 12:03:11'),
(97, 10, 'Chaden2', 95, '/upload/products/chaden2.jpeg', 1, 107, '2021-07-10 12:04:15', '2021-07-10 12:04:15'),
(98, 10, 'Cannes4', 165, '/upload/products/cannes4.jpeg', 1, 108, '2021-07-10 12:07:37', '2021-07-10 12:07:37'),
(99, 10, 'Curtain', 165, '/upload/products/curtain.jpeg', 1, 109, '2021-07-10 12:08:48', '2021-07-10 12:08:48'),
(100, 10, 'JSM', 120, '/upload/products/jsm.jpeg', 0, 110, '2021-07-10 12:10:31', '2021-07-16 16:33:17'),
(101, 10, 'Rahaf1', 135, '/upload/products/rahaf1.jpeg', 1, 111, '2021-07-10 12:12:57', '2021-07-10 12:12:57'),
(102, 10, 'Rahaf2', 135, '/upload/products/rahaf2.jpeg', 1, 112, '2021-07-10 12:13:47', '2021-07-10 12:13:47'),
(103, 10, 'Rahaf3', 135, '/upload/products/rahaf3.jpeg', 1, 113, '2021-07-10 12:14:34', '2021-07-10 12:14:34'),
(104, 10, 'Rahaf4', 135, '/upload/products/rahaf4.jpeg', 1, 114, '2021-07-10 12:15:50', '2021-07-10 12:15:50'),
(105, 10, 'Rahaf5', 135, '/upload/products/rahaf5.jpeg', 1, 115, '2021-07-10 12:16:36', '2021-07-10 12:16:36'),
(106, 10, 'Rahaf6', 135, '/upload/products/rahaf6.jpeg', 1, 116, '2021-07-10 12:17:39', '2021-07-10 12:17:39'),
(107, 10, 'Rahaf7', 135, '/upload/products/rahaf7.jpeg', 1, 117, '2021-07-10 12:18:39', '2021-07-10 12:18:39'),
(108, 10, 'Rahaf8', 135, '/upload/products/rahaf8.jpeg', 1, 118, '2021-07-10 12:20:05', '2021-07-10 12:20:05'),
(109, 10, 'Randa1', 145, '/upload/products/randa1.jpeg', 1, 119, '2021-07-10 12:21:08', '2021-07-10 12:21:08'),
(110, 10, 'Rahaf9', 135, '/upload/products/rahaf9.jpeg', 0, 120, '2021-07-10 12:23:44', '2021-07-16 16:32:39'),
(111, 10, 'Stripe Trouser', 75, '/upload/products/stripe-trouser.jpeg', 1, 121, '2021-07-10 12:24:46', '2021-07-10 12:24:46'),
(112, 10, 'Skirt Curtain', 75, '/upload/products/skirt-curtain.jpeg', 1, 122, '2021-07-10 12:25:51', '2021-07-10 12:25:51'),
(114, 10, 'Cape with stone:2', 110, '/upload/products/cape-with-stone2.jpeg', 1, 124, '2021-07-11 10:45:36', '2021-07-11 10:45:36'),
(115, 10, 'Stripe skirt2', 85, '/upload/products/stripe-skirt2.jpeg', 1, 125, '2021-07-11 10:47:42', '2021-07-11 10:47:42'),
(116, 10, 'Kuwaiti Skirt', 65, '/upload/products/kuwaiti-skirt.jpeg', 1, 126, '2021-07-11 10:49:55', '2021-07-11 10:49:55'),
(122, 10, 'Spot Skirt', 65, '/upload/products/spot-skirt.jpeg', 1, 132, '2021-07-11 10:56:55', '2021-07-11 10:56:55'),
(123, 10, 'Stripe Dress1', 75, '/upload/products/stripe-dress1.jpeg', 1, 133, '2021-07-11 10:57:29', '2021-07-11 10:57:29'),
(124, 10, 'Yolla1', 165, '/upload/products/yolla1.jpeg', 1, 134, '2021-07-11 10:58:24', '2021-07-11 10:58:24'),
(125, 10, 'Miss Sixty:1', 165, '/upload/products/miss-601.jpeg', 1, 135, '2021-07-11 10:59:43', '2021-07-12 08:48:35'),
(126, 10, 'Miss Sixty:2', 165, '/upload/products/miss-sixty2.jpeg', 1, 136, '2021-07-12 08:49:20', '2021-07-12 08:49:20'),
(127, 10, 'Chopar', 145, '/upload/products/chopar.jpeg', 1, 137, '2021-07-12 08:50:19', '2021-07-12 08:50:19'),
(128, 10, 'Cape with stone 3 Pink', 110, '/upload/products/cape-with-stone-3-pink.jpeg', 1, 138, '2021-07-12 08:51:50', '2021-07-12 08:51:50'),
(129, 10, 'Lebanese Dress', 120, '/upload/products/lebanese-dress.jpeg', 1, 139, '2021-07-12 08:52:22', '2021-07-12 08:52:22'),
(130, 10, 'Spanish Jacket', 165, '/upload/products/spanish-jacket.jpeg', 1, 140, '2021-07-12 08:53:35', '2021-07-12 08:53:35'),
(131, 10, 'Hamra Feathers', 145, '/upload/products/hamra-feathers.jpeg', 1, 141, '2021-07-12 08:54:26', '2021-07-12 08:54:26'),
(132, 10, 'Rasha1', 165, '/upload/products/rasha1.jpeg', 1, 142, '2021-07-12 08:55:04', '2021-07-12 08:55:04'),
(133, 10, 'Flower Rasha', 95, '/upload/products/flower-rasha.jpeg', 1, 143, '2021-07-12 08:56:02', '2021-07-12 08:56:02'),
(134, 10, 'Kasrat Skirt', 125, '/upload/products/kasrat-skirt.jpeg', 1, 144, '2021-07-12 08:56:46', '2021-07-12 08:56:46'),
(135, 10, 'Melcha(Pink)', 135, '/upload/products/melchapink.jpeg', 1, 145, '2021-07-12 08:57:23', '2021-07-12 08:57:23'),
(136, 10, 'Sponge Skirt', 95, '/upload/products/sponge-skirt.jpeg', 1, 146, '2021-07-12 08:58:07', '2021-07-12 08:58:07'),
(137, 10, 'Oscar1', 145, '/upload/products/oscar1.jpeg', 1, 147, '2021-07-12 08:58:42', '2021-07-12 08:58:42'),
(138, 10, 'Mermaid1', 170, '/upload/products/mermaid1.jpeg', 1, 148, '2021-07-12 08:59:25', '2021-07-12 08:59:25'),
(139, 10, 'Blissai sleeves Jumpsuit1', 195, '/upload/products/blissai-sleeves-jumpsuit1.jpeg', 1, 149, '2021-07-12 09:00:40', '2021-07-12 09:00:40'),
(140, 10, 'Bride 3', 290, '/upload/products/bride-3.jpeg', 1, 150, '2021-07-12 09:02:08', '2021-07-12 09:02:08'),
(141, 10, 'Fyonka with Dress1', 125, '/upload/products/fyonka-with-dress1.jpeg', 1, 151, '2021-07-12 09:02:59', '2021-07-12 09:02:59'),
(142, 10, 'Zena2', 80, '/upload/products/zena2.jpeg', 1, 152, '2021-07-12 09:03:49', '2021-07-12 09:03:49'),
(143, 10, 'Ahoud1', 95, '/upload/products/ahoud1.jpeg', 1, 153, '2021-07-12 09:05:47', '2021-07-12 09:05:47'),
(144, 10, 'Ahoud2', 95, '/upload/products/ahoud2.jpeg', 1, 154, '2021-07-12 09:06:56', '2021-07-12 09:06:56'),
(145, 10, 'Randa2', 145, '/upload/products/randa2.jpeg', 1, 155, '2021-07-12 09:08:08', '2021-07-12 09:08:08'),
(146, 10, 'Montaha Jumpsuit1', 95, '/upload/products/montaha-jumpsuit1.jpeg', 1, 156, '2021-07-12 09:09:22', '2021-07-12 09:09:22'),
(147, 10, 'Oscar2', 145, '/upload/products/oscar2.jpeg', 1, 157, '2021-07-12 09:09:54', '2021-07-12 09:09:54'),
(148, 10, 'Buff Sleeves1', 165, '/upload/products/buff-sleeves1.jpeg', 1, 158, '2021-07-12 09:11:29', '2021-07-12 09:11:29'),
(149, 10, 'Montaha Jacket', 95, '/upload/products/montaha-jacket.jpeg', 1, 159, '2021-07-12 09:12:06', '2021-07-12 09:12:06'),
(150, 10, 'Cape with stone set 4', 185, '/upload/products/cape-with-stone-set-4.jpeg', 1, 160, '2021-07-12 09:13:06', '2021-07-12 09:13:06'),
(151, 10, 'Stripe Dress with Flower', 80, '/upload/products/stripe-dress-with-flower.jpeg', 1, 161, '2021-07-12 09:13:53', '2021-07-12 09:13:53'),
(152, 10, 'Rainbow Dantail Blouse', 35, '/upload/products/rainbow-dantail-blouse.jpeg', 1, 162, '2021-07-12 09:14:45', '2021-07-12 09:14:45'),
(153, 10, 'Spanish Dress 3', 140, '/upload/products/spanish-dress-3.jpeg', 1, 163, '2021-07-12 09:15:34', '2021-07-12 09:15:34'),
(154, 10, 'Macaron Top', 145, '/upload/products/macaron-top.jpeg', 1, 164, '2021-07-12 09:16:27', '2021-07-12 09:16:27'),
(155, 10, 'Randa3', 145, '/upload/products/randa3.jpeg', 1, 165, '2021-07-12 09:17:38', '2021-07-12 09:17:38'),
(156, 10, 'Sado Top', 55, '/upload/products/sado-top.jpeg', 1, 166, '2021-07-12 09:18:13', '2021-07-12 09:18:13'),
(158, 10, 'Japanese Dress', 135, '/upload/products/japanese-dress.jpeg', 1, 168, '2021-07-14 04:32:01', '2021-07-14 04:32:01'),
(159, 10, 'American Chiffon1', 95, '/upload/products/american-chiffon1.jpeg', 1, 169, '2021-07-14 04:33:17', '2021-07-14 04:33:17'),
(160, 10, 'Johara Skirt', 65, '/upload/products/johara-skirt.jpeg', 1, 170, '2021-07-14 04:33:57', '2021-07-14 04:33:57'),
(161, 10, 'Rahaf Jacket', 35, '/upload/products/rahaf-jacket.jpeg', 1, 171, '2021-07-14 04:34:40', '2021-07-14 04:34:40'),
(162, 10, 'Chan Skirt', 65, '/upload/products/chan-skirt.jpeg', 1, 172, '2021-07-14 04:35:32', '2021-07-14 04:35:32'),
(163, 10, 'Spanish Top', 35, '/upload/products/spanish-top.jpeg', 1, 173, '2021-07-14 04:36:17', '2021-07-14 04:36:17'),
(164, 10, 'Mermaid Skirt', 110, '/upload/products/mermaid-skirt.jpeg', 1, 174, '2021-07-14 04:36:53', '2021-07-14 04:36:53'),
(165, 10, 'Corset2', 145, '/upload/products/corset2.jpeg', 1, 175, '2021-07-14 04:38:06', '2021-07-14 04:38:06'),
(166, 10, 'Spanish Skirt', 110, '/upload/products/spanish-skirt.jpeg', 1, 176, '2021-07-14 04:38:53', '2021-07-14 04:38:53'),
(167, 10, 'Mexican Blouse', 135, '/upload/products/mexican-blouse.jpeg', 1, 177, '2021-07-14 04:39:53', '2021-07-14 04:39:53'),
(168, 10, 'Princess skirt', 110, '/upload/products/princess-skirt.jpeg', 1, 178, '2021-07-14 04:40:22', '2021-07-14 04:40:22'),
(169, 10, 'Bride Top1', 145, '/upload/products/bride-top1.jpeg', 1, 179, '2021-07-14 04:41:25', '2021-07-14 04:41:25'),
(170, 10, 'Buff Sleeves with belt 2', 180, '/upload/products/buff-sleeves-with-belt-2.jpeg', 1, 180, '2021-07-14 04:43:08', '2021-07-14 04:43:08'),
(171, 10, '19 century dress', 185, '/upload/products/19-century-dress.jpeg', 1, 181, '2021-07-14 04:44:15', '2021-07-14 04:44:15'),
(172, 10, 'Best Crystal Dress', 220, '/upload/products/best-crystal-dress.jpeg', 1, 182, '2021-07-14 04:44:52', '2021-07-14 04:44:52'),
(173, 10, 'Fyonka Dress2', 180, '/upload/products/fyonka-dress2.jpeg', 1, 183, '2021-07-14 04:45:55', '2021-07-14 04:45:55'),
(174, 10, 'Best Jump suit', 225, '/upload/products/best-jump-suit.jpeg', 1, 184, '2021-07-14 04:47:00', '2021-07-14 04:47:00'),
(175, 10, 'Red Carpet3', 195, '/upload/products/red-carpet3.jpeg', 1, 185, '2021-07-14 04:47:50', '2021-07-14 04:47:50'),
(176, 10, 'Fyonka Dress3', 180, '/upload/products/fyonka-dress3.jpeg', 1, 186, '2021-07-14 04:48:28', '2021-07-14 04:48:28'),
(177, 10, 'Farasha1', 165, '/upload/products/farasha1.jpeg', 1, 187, '2021-07-14 04:49:16', '2021-07-14 04:49:16'),
(178, 10, 'Spanish Dress4', 180, '/upload/products/spanish-dress4.jpeg', 1, 188, '2021-07-14 04:49:57', '2021-07-14 04:49:57'),
(179, 10, 'Long Sleeves Dress', 110, '/upload/products/long-sleeves-dress.jpeg', 1, 189, '2021-07-14 04:51:19', '2021-07-14 04:51:19'),
(180, 10, 'Bride4', 185, '/upload/products/bride4.jpeg', 1, 190, '2021-07-14 04:51:55', '2021-07-14 04:51:55'),
(181, 10, 'Spanish Dress5', 180, '/upload/products/spanish-dress5.jpeg', 1, 191, '2021-07-14 04:52:42', '2021-07-14 04:53:49'),
(182, 10, 'Farasha Dress2', 120, '/upload/products/farasha-dress2.jpeg', 1, 192, '2021-07-14 04:54:46', '2021-07-14 04:54:46'),
(183, 10, 'Princess Dress1', 110, '/upload/products/princess-dress1.jpeg', 1, 193, '2021-07-14 04:56:00', '2021-07-14 04:56:00'),
(184, 10, 'Fyonka Dress4', 125, '/upload/products/fyonka-dress4.jpeg', 1, 194, '2021-07-14 04:56:42', '2021-07-14 04:56:42'),
(185, 10, 'Randa4', 145, '/upload/products/randa4.jpeg', 1, 195, '2021-07-14 04:57:27', '2021-07-14 04:57:27'),
(186, 10, 'Classic Dress1', 125, '/upload/products/classic-dress1.jpeg', 1, 196, '2021-07-14 04:58:07', '2021-07-14 04:58:07'),
(187, 10, 'Yolla2', 120, '/upload/products/yolla2.jpeg', 1, 197, '2021-07-14 04:58:47', '2021-07-14 04:58:47'),
(188, 10, 'Mermaid Dress3', 170, '/upload/products/mermaid-dress3.jpeg', 1, 198, '2021-07-14 04:59:38', '2021-07-14 04:59:38'),
(189, 10, 'Feather Loff Dress1', 165, '/upload/products/feather-loff-dress1.jpeg', 1, 199, '2021-07-14 05:00:30', '2021-07-14 05:00:30'),
(190, 10, 'Stripe Dress2', 120, '/upload/products/stripe-dress2.jpeg', 1, 200, '2021-07-14 05:01:10', '2021-07-14 05:01:10'),
(191, 10, 'Randa Feathers5', 135, '/upload/products/randa-feathers5.jpeg', 1, 201, '2021-07-14 05:02:53', '2021-07-14 05:02:53'),
(192, 10, 'Cinderella3', 110, '/upload/products/cinderella3.jpeg', 1, 202, '2021-07-14 05:03:31', '2021-07-14 05:03:31'),
(193, 10, 'Loona Dress', 165, '/upload/products/loona-dress.jpeg', 1, 203, '2021-07-14 05:04:18', '2021-07-14 05:04:18'),
(194, 10, 'Blissai sleeves Jumpsuit2', 195, '/upload/products/blissai-sleeves-jumpsuit2.jpeg', 1, 204, '2021-07-14 05:05:17', '2021-07-14 05:05:17'),
(195, 10, 'Blissai Dress1', 165, '/upload/products/blissai-dress1.jpeg', 1, 205, '2021-07-14 05:06:21', '2021-07-14 05:06:21'),
(196, 10, 'Lulu Dress', 175, '/upload/products/lulu-dress.jpeg', 1, 206, '2021-07-14 05:07:00', '2021-07-14 05:07:00'),
(197, 10, 'Montaha Jumpsuit2', 95, '/upload/products/montaha-jumpsuit2.jpeg', 1, 207, '2021-07-14 05:08:06', '2021-07-14 05:08:06'),
(198, 10, 'Sheikha 1', 195, '/upload/products/sheikha-1.jpeg', 1, 208, '2021-07-14 05:09:20', '2021-07-14 05:09:20'),
(199, 10, 'Toor Jumpsuit1', 165, '/upload/products/toor-jumpsuit1.jpeg', 1, 209, '2021-07-14 05:10:40', '2021-07-14 05:10:40'),
(200, 10, 'Laila1', 180, '/upload/products/laila1.jpeg', 1, 210, '2021-07-14 05:11:26', '2021-07-14 05:11:26'),
(201, 10, 'Lamya', 180, '/upload/products/lamya.jpeg', 1, 211, '2021-07-14 05:12:16', '2021-07-14 05:12:16'),
(202, 10, 'Feather Loff Dress2', 165, '/upload/products/feather-loff-dress2.jpeg', 1, 212, '2021-07-14 05:13:02', '2021-07-14 05:13:02'),
(203, 10, 'Rasha2', 165, '/upload/products/rasha2.jpeg', 1, 213, '2021-07-14 05:13:52', '2021-07-14 05:13:52'),
(204, 10, 'Crystal Cape', 145, '/upload/products/crystal-cape.jpeg', 1, 214, '2021-07-14 05:14:51', '2021-07-14 05:14:51'),
(205, 10, 'Classic Dress2', 165, '/upload/products/classic-dress2.jpeg', 1, 215, '2021-07-14 05:15:36', '2021-07-14 05:15:36'),
(206, 10, 'Noor', 145, '/upload/products/noor.jpeg', 1, 216, '2021-07-14 05:16:22', '2021-07-14 05:16:22'),
(207, 10, 'Queen', 120, '/upload/products/queen.jpeg', 1, 217, '2021-07-14 05:17:30', '2021-07-14 05:17:30'),
(208, 10, 'Cape Tartar1', 165, '/upload/products/cape-tartar1.jpeg', 1, 218, '2021-07-14 05:18:35', '2021-07-14 05:18:35'),
(209, 10, 'Feather Loff Dress3', 195, '/upload/products/feather-loff-dress3.jpeg', 1, 219, '2021-07-14 05:20:01', '2021-07-14 05:20:01'),
(210, 10, 'Fashion Dress', 135, '/upload/products/fashion-dress.jpeg', 1, 220, '2021-07-14 05:20:58', '2021-07-14 05:20:58'),
(211, 10, 'Stars', 185, '/upload/products/stars.jpeg', 1, 221, '2021-07-14 05:22:40', '2021-07-14 05:22:40'),
(212, 10, 'Angelina1', 185, '/upload/products/angelina1.jpeg', 1, 222, '2021-07-14 05:23:38', '2021-07-14 05:23:38'),
(213, 10, 'Caroline', 120, '/upload/products/caroline.jpeg', 1, 223, '2021-07-14 05:24:55', '2021-07-14 05:24:55'),
(214, 10, 'Valentine2', 165, '/upload/products/valentine2.jpeg', 1, 224, '2021-07-14 05:25:50', '2021-07-14 05:25:50'),
(215, 10, 'Miss 70:1', 165, '/upload/products/miss-701.jpeg', 1, 225, '2021-07-14 05:27:27', '2021-07-14 05:27:27'),
(216, 10, 'Dalal', 185, '/upload/products/dalal.jpeg', 1, 226, '2021-07-14 05:28:26', '2021-07-14 05:28:26'),
(217, 10, 'Sarah', 220, '/upload/products/sarah.jpeg', 1, 227, '2021-07-14 05:29:09', '2021-07-14 05:29:09'),
(218, 10, 'Hadab Cape', 125, '/upload/products/hadab-cape.jpeg', 1, 228, '2021-07-14 05:30:17', '2021-07-14 05:30:17'),
(219, 10, 'Bride5', 295, '/upload/products/bride5.jpeg', 1, 229, '2021-07-14 05:31:19', '2021-07-14 05:31:19'),
(220, 10, 'Bride6', 220, '/upload/products/bride6.jpeg', 1, 230, '2021-07-14 05:32:02', '2021-07-14 05:32:02'),
(221, 10, 'Bride7', 190, '/upload/products/bride7.jpeg', 1, 231, '2021-07-14 05:33:08', '2021-07-14 05:33:08'),
(222, 10, 'Bride8', 190, '/upload/products/bride8.jpeg', 1, 232, '2021-07-14 05:34:27', '2021-07-14 05:34:27'),
(223, 10, 'Bride9', 750, '/upload/products/bride9.jpeg', 1, 233, '2021-07-14 05:35:26', '2021-07-14 05:35:26'),
(224, 10, 'Fyonka5', 170, '/upload/products/fyonka5.jpeg', 1, 234, '2021-07-14 05:36:24', '2021-07-14 05:36:24'),
(225, 10, 'Buff Sleeves dress 3', 165, '/upload/products/buff-sleeves-dress-3.jpeg', 1, 235, '2021-07-14 05:37:47', '2021-07-14 05:37:47'),
(226, 10, 'Rasha3', 165, '/upload/products/rasha3.jpeg', 1, 236, '2021-07-14 05:38:40', '2021-07-14 05:38:40'),
(227, 6, 'New Year', 110, '/upload/products/new-year.jpeg', 1, 237, '2021-07-16 16:39:16', '2021-07-16 16:39:16'),
(228, 10, 'Miss Lebanon', 185, '/upload/products/miss-lebanon.jpeg', 1, 238, '2021-07-16 16:41:01', '2021-07-16 16:41:01'),
(229, 10, 'Montaha Dress1', 165, '/upload/products/montaha-dress1.jpeg', 1, 239, '2021-07-16 16:41:45', '2021-07-16 16:41:45'),
(230, 6, 'new1', 180, '/upload/products/new1.jpeg', 1, 240, '2021-07-17 06:26:26', '2021-07-17 06:26:26'),
(231, 10, 'new2', 95, '/upload/products/new2.jpeg', 1, 241, '2021-07-17 06:27:28', '2021-07-17 06:27:28'),
(232, 10, 'new3', 140, '/upload/products/new3.jpeg', 1, 242, '2021-07-17 06:28:14', '2021-07-17 06:28:14'),
(233, 10, 'new4', 55, '/upload/products/new4.jpeg', 1, 243, '2021-07-17 06:29:44', '2021-07-17 06:29:44'),
(234, 10, 'new5', 190, '/upload/products/new5.jpeg', 1, 244, '2021-07-17 06:30:50', '2021-07-17 06:30:50'),
(235, 10, 'new6', 135, '/upload/products/new6.jpeg', 1, 245, '2021-07-17 06:32:15', '2021-07-17 06:32:15'),
(236, 10, 'new7', 180, '/upload/products/new7.jpeg', 1, 246, '2021-07-17 06:32:52', '2021-07-17 06:32:52'),
(237, 10, 'new8', 165, '/upload/products/new8.jpeg', 1, 247, '2021-07-17 06:33:38', '2021-07-17 06:33:38'),
(238, 10, 'new9', 250, '/upload/products/new9.jpeg', 1, 248, '2021-07-17 06:34:21', '2021-07-17 06:34:21'),
(239, 10, 'new10', 125, '/upload/products/new10.jpeg', 1, 249, '2021-07-17 06:35:57', '2021-07-17 06:35:57'),
(240, 10, 'new11', 140, '/upload/products/new11.jpeg', 1, 250, '2021-07-17 06:38:02', '2021-07-17 06:38:02'),
(241, 10, 'new12', 145, '/upload/products/new12.jpeg', 1, 251, '2021-07-17 06:39:30', '2021-07-17 06:39:30'),
(242, 10, 'new13', 135, '/upload/products/new13.jpeg', 1, 252, '2021-07-17 06:40:03', '2021-07-17 06:40:03'),
(243, 10, 'new14', 145, '/upload/products/new14.jpeg', 1, 253, '2021-07-17 06:40:39', '2021-07-17 06:40:39'),
(244, 10, 'new15', 145, '/upload/products/new15.jpeg', 1, 254, '2021-07-17 06:41:24', '2021-07-17 06:41:24'),
(245, 10, 'new16', 135, '/upload/products/new16.jpeg', 2, 255, '2021-07-17 06:41:56', '2021-07-17 06:42:51'),
(246, 6, 'new17', 140, '/upload/products/new17.jpeg', 1, 256, '2021-07-17 06:43:48', '2021-07-17 06:43:48'),
(247, 10, 'new18', 250, '/upload/products/new18.jpeg', 1, 257, '2021-07-17 06:44:52', '2021-07-17 06:44:52'),
(248, 10, 'new19', 195, '/upload/products/new19.jpeg', 1, 258, '2021-07-17 06:45:32', '2021-07-17 06:45:32'),
(249, 10, 'new20', 110, '/upload/products/new20.jpeg', 1, 259, '2021-07-17 06:48:21', '2021-07-17 06:48:21'),
(250, 10, 'new21', 110, '/upload/products/new21.jpeg', 1, 260, '2021-07-17 06:49:28', '2021-07-17 06:49:28'),
(251, 10, 'new22', 110, '/upload/products/new22.jpeg', 1, 261, '2021-07-17 06:53:58', '2021-07-17 06:53:58'),
(252, 10, 'new23', 145, '/upload/products/new23.jpeg', 1, 262, '2021-07-17 06:55:32', '2021-07-17 06:55:32'),
(253, 10, 'new24', 185, '/upload/products/new24.jpeg', 1, 263, '2021-07-17 06:56:40', '2021-07-17 06:56:40'),
(254, 10, 'new25', 120, '/upload/products/new25.jpeg', 1, 264, '2021-07-17 06:58:00', '2021-07-17 06:58:00'),
(255, 10, 'new26', 90, '/upload/products/new26.jpeg', 1, 265, '2021-07-17 06:59:11', '2021-07-17 06:59:11'),
(256, 10, 'new27', 95, '/upload/products/new27.jpeg', 1, 266, '2021-07-17 06:59:58', '2021-07-17 06:59:58'),
(257, 10, 'new29', 165, '/upload/products/new29.jpeg', 1, 267, '2021-07-17 07:03:23', '2021-07-17 07:03:23'),
(258, 10, 'new28', 185, '/upload/products/new28.jpeg', 1, 268, '2021-07-17 07:04:21', '2021-07-17 07:04:21'),
(259, 10, 'new30', 85, '/upload/products/new30.jpeg', 1, 269, '2021-07-17 07:05:05', '2021-07-17 07:05:05'),
(260, 10, 'new31', 165, '/upload/products/new31.jpeg', 1, 270, '2021-07-17 07:05:34', '2021-07-17 07:05:34'),
(261, 10, 'new32', 135, '/upload/products/new32.jpeg', 1, 271, '2021-07-17 07:07:42', '2021-07-17 07:07:42'),
(262, 10, 'new33', 75, '/upload/products/new33.jpeg', 1, 272, '2021-07-17 07:08:19', '2021-07-17 07:08:19'),
(263, 10, 'new34', 145, '/upload/products/new34.jpeg', 1, 273, '2021-07-17 07:09:01', '2021-07-17 07:09:01'),
(264, 10, 'new35', 165, '/upload/products/new35.jpeg', 1, 274, '2021-07-17 07:09:35', '2021-07-17 07:10:16'),
(265, 10, 'new36', 110, '/upload/products/new36.jpeg', 1, 275, '2021-07-17 07:11:05', '2021-07-17 07:11:05'),
(266, 10, 'new37', 110, '/upload/products/new37.jpeg', 1, 276, '2021-07-17 07:11:33', '2021-07-17 07:11:33'),
(267, 10, 'new38', 90, '/upload/products/new38.jpeg', 1, 277, '2021-07-17 07:12:18', '2021-07-17 07:12:18'),
(268, 10, 'new39', 165, '/upload/products/new39.jpeg', 1, 278, '2021-07-17 07:13:43', '2021-07-17 07:14:03'),
(269, 10, 'new40', 85, '/upload/products/new40.jpeg', 1, 279, '2021-07-17 07:15:21', '2021-07-17 07:15:21'),
(270, 10, 'new41', 280, '/upload/products/new41.jpeg', 1, 280, '2021-07-17 07:16:08', '2021-07-17 07:16:08'),
(271, 10, 'new42', 165, '/upload/products/new42.jpeg', 1, 281, '2021-07-17 07:16:56', '2021-07-17 07:16:56'),
(272, 10, 'new44', 240, '/upload/products/new44.jpeg', 1, 282, '2021-07-17 07:17:51', '2021-07-17 07:17:51'),
(273, 10, 'new45', 120, '/upload/products/new45.jpeg', 1, 283, '2021-07-17 07:19:24', '2021-07-17 07:19:24'),
(274, 10, 'new46', 165, '/upload/products/new46.jpeg', 1, 284, '2021-07-17 07:20:25', '2021-07-17 07:20:25'),
(275, 10, 'new48', 260, '/upload/products/new48.jpeg', 1, 285, '2021-07-17 07:21:53', '2021-07-17 07:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_in`
--

CREATE TABLE `product_in` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `date` date NOT NULL,
  `user_name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_out`
--

CREATE TABLE `product_out` (
  `id` int(10) UNSIGNED NOT NULL,
  `po_no` int(11) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `date` date NOT NULL,
  `discount` float UNSIGNED DEFAULT NULL,
  `subtotal` float NOT NULL,
  `cashier` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund_status` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` int(200) UNSIGNED NOT NULL,
  `product_out_id` int(200) UNSIGNED NOT NULL,
  `po_no` int(200) UNSIGNED NOT NULL,
  `refund_date` date NOT NULL,
  `refund_amount` double UNSIGNED NOT NULL,
  `cashier` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_new`
--

CREATE TABLE `sales_new` (
  `id` int(10) UNSIGNED NOT NULL,
  `po_no` int(10) UNSIGNED NOT NULL,
  `total_amount` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `cashier` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund_status` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0- no,',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Montaha Couture', 'Tilal Mall', 'montahacouture@gmail.com', '90890890', '2019-10-20 18:36:12', '2019-10-28 17:57:20');

-- --------------------------------------------------------

--
-- Table structure for table `temp_sales`
--

CREATE TABLE `temp_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `po_no` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `discount` float NOT NULL,
  `subtotal` float NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','staff') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$76X.PJjxEkQX6YKnIN15b.ZkTcvF/TrOzlOJgITWxh1L29iYQ4dim', 'cF5AOk3JX8MFCo2RNDc5EFTV1TJ2ff4Uwynplw6CBIausBPgbEnok5ndrvO7', '2019-10-02 02:47:55', '2021-07-16 16:52:11', 'admin'),
(5, 'mary', 'mary@gmail.com', '$2y$10$0WYtCplGyi/.Z9m701oM3.D60855D3dljAi/VUBjYF1TQDjah1dEC', NULL, '2021-07-16 16:53:28', '2021-07-16 16:53:43', 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barcodes`
--
ALTER TABLE `barcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `fk_barcode_products_barcoce_id` (`barcode_id`);

--
-- Indexes for table `product_in`
--
ALTER TABLE `product_in`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_in_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_out`
--
ALTER TABLE `product_out`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_out_product_id_foreign` (`product_id`),
  ADD KEY `foreign_key_user` (`cashier`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign_key_product_out` (`product_out_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_new`
--
ALTER TABLE `sales_new`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign_key_customer` (`customer_id`),
  ADD KEY `foreign_key_user_table` (`cashier`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_sales`
--
ALTER TABLE `temp_sales`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `barcodes`
--
ALTER TABLE `barcodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `product_in`
--
ALTER TABLE `product_in`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `product_out`
--
ALTER TABLE `product_out`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` int(200) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_new`
--
ALTER TABLE `sales_new`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `temp_sales`
--
ALTER TABLE `temp_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_barcode_products_barcoce_id` FOREIGN KEY (`barcode_id`) REFERENCES `barcodes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_in`
--
ALTER TABLE `product_in`
  ADD CONSTRAINT `product_in_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_out`
--
ALTER TABLE `product_out`
  ADD CONSTRAINT `product_out_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_out_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
