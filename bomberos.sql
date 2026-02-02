-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-03-2025 a las 19:48:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bomberos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control`
--

CREATE TABLE `control` (
  `idcontrol` int(11) NOT NULL,
  `fecha_control` date NOT NULL,
  `hora_control` time NOT NULL,
  `estado_control` varchar(45) NOT NULL,
  `personal_idpersonal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `control`
--

INSERT INTO `control` (`idcontrol`, `fecha_control`, `hora_control`, `estado_control`, `personal_idpersonal`) VALUES
(35, '2025-02-02', '09:32:55', 'ENTRADA', 8),
(36, '2025-02-02', '09:33:28', 'ENTRADA', 7),
(37, '2025-02-02', '09:33:43', 'ENTRADA', 4),
(38, '2025-02-02', '12:31:56', 'ENTRADA', 9),
(39, '2025-02-02', '12:32:50', 'SALIDA', 9),
(40, '2025-02-02', '13:24:02', 'SALIDA', 7),
(41, '2025-02-02', '13:50:16', 'SALIDA', 4),
(42, '2025-02-02', '15:04:13', 'SALIDA', 8),
(71, '2025-02-03', '12:09:54', 'ENTRADA', 12),
(72, '2025-02-03', '14:46:26', 'SALIDA', 12),
(73, '2025-02-03', '16:37:23', 'ENTRADA', 4),
(75, '2025-02-03', '19:21:17', 'ENTRADA', 14),
(76, '2025-02-03', '19:54:55', 'ENTRADA', 15),
(77, '2025-02-03', '19:55:21', 'ENTRADA', 12),
(78, '2025-02-03', '20:09:02', 'ENTRADA', 17),
(79, '2025-02-03', '20:36:01', 'SALIDA', 4),
(80, '2025-02-03', '21:07:11', 'SALIDA', 12),
(81, '2025-02-03', '21:30:38', 'SALIDA', 14),
(82, '2025-02-03', '21:31:37', 'SALIDA', 17),
(83, '2025-02-03', '23:00:40', 'SALIDA', 15),
(84, '2025-02-04', '13:11:57', 'ENTRADA', 18),
(85, '2025-02-04', '14:53:32', 'SALIDA', 18),
(86, '2025-02-04', '21:52:17', 'ENTRADA', 19),
(87, '2025-02-04', '22:07:49', 'SALIDA', 19),
(88, '2025-02-05', '10:23:02', 'ENTRADA', 8),
(89, '2025-02-05', '10:32:35', 'ENTRADA', 4),
(90, '2025-02-05', '13:10:52', 'ENTRADA', 5),
(91, '2025-02-05', '13:53:34', 'SALIDA', 4),
(92, '2025-02-05', '15:00:32', 'SALIDA', 8),
(93, '2025-02-05', '17:13:00', 'SALIDA', 5),
(94, '2025-02-05', '17:13:01', 'ENTRADA', 5),
(95, '2025-02-05', '17:13:29', 'SALIDA', 5),
(96, '2025-02-06', '07:08:15', 'ENTRADA', 8),
(97, '2025-02-06', '15:13:54', 'SALIDA', 8),
(98, '2025-02-06', '18:59:13', 'ENTRADA', 5),
(99, '2025-02-06', '19:32:26', 'ENTRADA', 12),
(100, '2025-02-06', '20:35:03', 'ENTRADA', 20),
(101, '2025-02-06', '22:30:30', 'SALIDA', 5),
(102, '2025-02-06', '22:36:18', 'ENTRADA', 17),
(103, '2025-02-06', '22:38:59', 'SALIDA', 12),
(104, '2025-02-06', '22:38:59', 'ENTRADA', 12),
(105, '2025-02-06', '22:39:21', 'SALIDA', 12),
(106, '2025-02-06', '22:39:21', 'ENTRADA', 12),
(107, '2025-02-06', '22:39:55', 'SALIDA', 12),
(108, '2025-02-06', '22:47:03', 'SALIDA', 20),
(109, '2025-02-06', '22:54:38', 'SALIDA', 17),
(110, '2025-02-07', '07:24:45', 'ENTRADA', 21),
(111, '2025-02-07', '09:41:46', 'ENTRADA', 22),
(112, '2025-02-07', '10:34:54', 'ENTRADA', 8),
(113, '2025-02-07', '11:57:46', 'ENTRADA', 12),
(114, '2025-02-07', '12:01:38', 'ENTRADA', 23),
(115, '2025-02-07', '12:55:26', 'SALIDA', 22),
(116, '2025-02-07', '13:20:21', 'SALIDA', 12),
(117, '2025-02-07', '14:19:11', 'SALIDA', 23),
(118, '2025-02-07', '15:09:54', 'SALIDA', 8),
(119, '2025-02-07', '18:54:18', 'ENTRADA', 24),
(120, '2025-02-07', '19:02:15', 'ENTRADA', 25),
(121, '2025-02-07', '19:12:43', 'ENTRADA', 4),
(122, '2025-02-07', '19:44:51', 'ENTRADA', 11),
(123, '2025-02-07', '19:45:31', 'ENTRADA', 12),
(124, '2025-02-07', '19:46:06', 'ENTRADA', 23),
(125, '2025-02-07', '19:47:25', 'ENTRADA', 5),
(126, '2025-02-07', '19:47:25', 'SALIDA', 5),
(127, '2025-02-07', '19:48:19', 'ENTRADA', 5),
(128, '2025-02-07', '19:48:58', 'ENTRADA', 6),
(129, '2025-02-07', '20:33:17', 'ENTRADA', 15),
(130, '2025-02-07', '20:57:48', 'ENTRADA', 17),
(131, '2025-02-07', '21:49:36', 'SALIDA', 17),
(132, '2025-02-07', '21:53:54', 'SALIDA', 23),
(133, '2025-02-07', '22:04:56', 'ENTRADA', 26),
(134, '2025-02-07', '22:08:09', 'SALIDA', 25),
(135, '2025-02-07', '22:08:43', 'SALIDA', 26),
(136, '2025-02-07', '22:24:49', 'SALIDA', 11),
(137, '2025-02-07', '22:28:12', 'SALIDA', 5),
(138, '2025-02-07', '22:32:31', 'SALIDA', 15),
(139, '2025-02-07', '22:59:24', 'SALIDA', 6),
(150, '2025-02-07', '23:00:13', 'SALIDA', 4),
(151, '2025-02-07', '23:09:16', 'SALIDA', 21),
(152, '2025-02-08', '07:30:59', 'ENTRADA', 4),
(153, '2025-02-08', '07:31:17', 'ENTRADA', 21),
(154, '2025-02-08', '09:39:44', 'SALIDA', 4),
(155, '2025-02-08', '11:00:33', 'ENTRADA', 8),
(156, '2025-02-08', '13:32:01', 'SALIDA', 21),
(157, '2025-02-08', '15:01:44', 'SALIDA', 8),
(158, '2025-02-09', '13:47:35', 'ENTRADA', 8),
(159, '2025-02-09', '14:59:33', 'SALIDA', 8),
(160, '2025-02-10', '13:14:58', 'ENTRADA', 8),
(161, '2025-02-10', '14:04:10', 'ENTRADA', 22),
(162, '2025-02-10', '14:50:58', 'SALIDA', 8),
(163, '2025-02-10', '17:25:21', 'ENTRADA', 4),
(164, '2025-02-10', '19:41:16', 'SALIDA', 22),
(165, '2025-02-10', '19:41:22', 'SALIDA', 4),
(166, '2025-02-11', '09:10:08', 'ENTRADA', 23),
(167, '2025-02-11', '12:24:12', 'ENTRADA', 22),
(168, '2025-02-11', '12:24:51', 'ENTRADA', 18),
(169, '2025-02-11', '13:14:58', 'SALIDA', 23),
(170, '2025-02-11', '13:17:04', 'ENTRADA', 6),
(171, '2025-02-11', '16:04:58', 'SALIDA', 18),
(172, '2025-02-11', '19:00:00', 'ENTRADA', 28),
(173, '2025-02-11', '20:33:28', 'SALIDA', 6),
(174, '2025-02-11', '20:41:39', 'SALIDA', 28),
(175, '2025-02-11', '20:46:14', 'SALIDA', 22),
(176, '2025-02-12', '10:35:39', 'ENTRADA', 8),
(177, '2025-02-12', '14:39:15', 'ENTRADA', 22),
(178, '2025-02-12', '14:59:47', 'SALIDA', 8),
(179, '2025-02-12', '15:20:35', 'ENTRADA', 11),
(180, '2025-02-12', '15:32:16', 'ENTRADA', 6),
(181, '2025-02-12', '16:49:15', 'SALIDA', 11),
(182, '2025-02-12', '17:03:28', 'ENTRADA', 5),
(183, '2025-02-12', '17:40:48', 'SALIDA', 12),
(184, '2025-02-12', '20:57:25', 'SALIDA', 5),
(185, '2025-02-12', '21:52:18', 'ENTRADA', 29),
(186, '2025-02-12', '22:24:36', 'SALIDA', 22),
(187, '2025-02-12', '22:25:07', 'SALIDA', 6),
(188, '2025-02-12', '22:25:21', 'ENTRADA', 12),
(189, '2025-02-12', '22:52:43', 'SALIDA', 29),
(190, '2025-02-13', '07:13:46', 'ENTRADA', 8),
(191, '2025-02-13', '09:01:12', 'ENTRADA', 22),
(192, '2025-02-13', '09:34:14', 'SALIDA', 8),
(193, '2025-02-13', '09:36:23', 'ENTRADA', 29),
(194, '2025-02-13', '09:48:07', 'SALIDA', 12),
(195, '2025-02-13', '09:49:41', 'ENTRADA', 12),
(196, '2025-02-13', '09:51:35', 'ENTRADA', 6),
(197, '2025-02-13', '12:29:47', 'ENTRADA', 8),
(198, '2025-02-13', '13:16:28', 'SALIDA', 29),
(199, '2025-02-13', '14:59:05', 'SALIDA', 8),
(200, '2025-02-13', '17:39:55', 'SALIDA', 6),
(201, '2025-02-13', '17:40:10', 'SALIDA', 22),
(202, '2025-02-13', '17:57:05', 'SALIDA', 12),
(203, '2025-02-14', '13:08:48', 'ENTRADA', 8),
(204, '2025-02-14', '15:04:09', 'SALIDA', 8),
(205, '2025-02-14', '20:03:15', 'ENTRADA', 17),
(206, '2025-02-14', '22:11:32', 'SALIDA', 17),
(207, '2025-02-15', '13:20:23', 'ENTRADA', 8),
(208, '2025-02-15', '15:24:14', 'SALIDA', 8),
(209, '2025-02-15', '19:27:31', 'ENTRADA', 15),
(210, '2025-02-15', '22:08:17', 'SALIDA', 15),
(211, '2025-02-16', '07:03:12', 'ENTRADA', 4),
(212, '2025-02-16', '07:06:00', 'ENTRADA', 8),
(213, '2025-02-16', '09:19:25', 'ENTRADA', 23),
(214, '2025-02-16', '13:55:49', 'SALIDA', 23),
(215, '2025-02-16', '18:05:05', 'SALIDA', 4),
(216, '2025-02-16', '07:07:49', 'ENTRADA', 15),
(217, '2025-02-16', '18:08:10', 'SALIDA', 15),
(218, '2025-02-16', '18:10:13', 'SALIDA', 8),
(219, '2025-02-17', '08:57:13', 'ENTRADA', 12),
(220, '2025-02-17', '12:28:41', 'ENTRADA', 8),
(221, '2025-02-17', '12:42:41', 'ENTRADA', 15),
(222, '2025-02-17', '13:43:42', 'SALIDA', 15),
(223, '2025-02-17', '15:03:43', 'SALIDA', 8),
(224, '2025-02-17', '15:33:52', 'SALIDA', 12),
(225, '2025-02-17', '23:11:22', 'ENTRADA', 18),
(226, '2025-02-18', '09:45:29', 'SALIDA', 18),
(227, '2025-02-18', '11:44:26', 'ENTRADA', 11),
(228, '2025-02-18', '11:45:30', 'ENTRADA', 10),
(229, '2025-02-18', '15:15:34', 'SALIDA', 10),
(230, '2025-02-18', '15:15:56', 'SALIDA', 11),
(231, '2025-02-18', '15:15:56', 'ENTRADA', 11),
(232, '2025-02-18', '16:32:29', 'ENTRADA', 5),
(233, '2025-02-18', '17:27:45', 'ENTRADA', 4),
(234, '2025-02-18', '17:41:02', 'ENTRADA', 20),
(235, '2025-02-18', '18:35:33', 'ENTRADA', 14),
(236, '2025-02-18', '18:59:52', 'ENTRADA', 12),
(237, '2025-02-18', '19:59:02', 'ENTRADA', 17),
(238, '2025-02-18', '21:39:43', 'SALIDA', 5),
(239, '2025-02-18', '21:45:20', 'SALIDA', 4),
(240, '2025-02-18', '21:48:04', 'SALIDA', 14),
(241, '2025-02-18', '21:49:15', 'SALIDA', 12),
(242, '2025-02-18', '21:49:32', 'SALIDA', 17),
(243, '2025-02-19', '11:47:58', 'ENTRADA', 8),
(244, '2025-02-19', '15:00:07', 'SALIDA', 8),
(245, '2025-02-20', '16:12:44', 'ENTRADA', 4),
(246, '2025-02-20', '18:02:44', 'ENTRADA', 5),
(247, '2025-02-20', '18:21:47', 'ENTRADA', 14),
(248, '2025-02-20', '18:30:49', 'ENTRADA', 12),
(249, '2025-02-20', '19:00:55', 'ENTRADA', 15),
(250, '2025-02-20', '20:27:11', 'SALIDA', 5),
(251, '2025-02-20', '21:22:42', 'SALIDA', 14),
(252, '2025-02-20', '21:37:28', 'SALIDA', 4),
(253, '2025-02-20', '21:56:31', 'SALIDA', 15),
(254, '2025-02-21', '09:50:11', 'SALIDA', 20),
(255, '2025-02-21', '09:51:11', 'ENTRADA', 20),
(256, '2025-02-21', '13:03:23', 'SALIDA', 20),
(257, '2025-02-21', '14:25:07', 'SALIDA', 12),
(258, '2025-02-21', '14:25:37', 'ENTRADA', 12),
(259, '2025-02-21', '15:09:58', 'ENTRADA', 6),
(260, '2025-02-21', '15:15:57', 'ENTRADA', 15),
(261, '2025-02-21', '21:17:25', 'ENTRADA', 19),
(262, '2025-02-21', '21:54:43', 'SALIDA', 19),
(263, '2025-02-21', '22:01:22', 'ENTRADA', 21),
(264, '2025-02-21', '22:04:46', 'SALIDA', 6),
(265, '2025-02-21', '23:01:34', 'SALIDA', 21),
(266, '2025-02-22', '00:37:34', 'SALIDA', 12),
(267, '2025-02-22', '00:38:02', 'SALIDA', 15),
(268, '2025-02-22', '09:04:27', 'ENTRADA', 30),
(269, '2025-02-22', '09:05:12', 'ENTRADA', 21),
(270, '2025-02-22', '10:20:37', 'SALIDA', 30),
(271, '2025-02-22', '10:20:37', 'ENTRADA', 30),
(272, '2025-02-22', '11:57:10', 'SALIDA', 30),
(273, '2025-02-22', '17:11:45', 'ENTRADA', 6),
(274, '2025-02-23', '05:51:51', 'ENTRADA', 12),
(275, '2025-02-23', '06:05:01', 'ENTRADA', 15),
(276, '2025-02-23', '06:06:16', 'ENTRADA', 8),
(277, '2025-02-23', '07:01:59', 'ENTRADA', 4),
(278, '2025-02-23', '07:25:52', 'SALIDA', 6),
(279, '2025-02-23', '07:26:11', 'ENTRADA', 6),
(280, '2025-02-23', '07:36:42', 'SALIDA', 21),
(281, '2025-02-23', '07:36:42', 'ENTRADA', 21),
(282, '2025-02-23', '11:03:06', 'SALIDA', 4),
(283, '2025-02-23', '13:34:40', 'SALIDA', 12),
(284, '2025-02-23', '13:49:56', 'SALIDA', 15),
(285, '2025-02-23', '15:38:15', 'SALIDA', 8),
(286, '2025-02-23', '16:49:28', 'SALIDA', 6),
(287, '2025-02-23', '16:52:34', 'SALIDA', 21),
(288, '2025-02-24', '15:16:22', 'ENTRADA', 12),
(289, '2025-02-24', '22:11:18', 'SALIDA', 12),
(290, '2025-02-25', '10:09:36', 'ENTRADA', 6),
(291, '2025-02-25', '15:44:07', 'SALIDA', 6),
(292, '2025-02-25', '15:44:07', 'ENTRADA', 6),
(293, '2025-02-25', '15:44:17', 'SALIDA', 6),
(294, '2025-02-25', '15:57:23', 'ENTRADA', 20),
(295, '2025-02-25', '18:47:47', 'ENTRADA', 5),
(296, '2025-02-25', '18:56:00', 'ENTRADA', 12),
(297, '2025-02-25', '19:48:08', 'SALIDA', 20),
(298, '2025-02-25', '19:56:14', 'ENTRADA', 17),
(299, '2025-02-25', '21:37:00', 'SALIDA', 5),
(300, '2025-02-25', '22:18:17', 'SALIDA', 17),
(301, '2025-02-25', '22:18:45', 'SALIDA', 12),
(302, '2025-02-26', '10:08:08', 'ENTRADA', 8),
(303, '2025-02-26', '12:30:52', 'ENTRADA', 23),
(304, '2025-02-26', '14:54:33', 'SALIDA', 8),
(305, '2025-02-26', '17:33:10', 'SALIDA', 23),
(306, '2025-02-26', '17:33:10', 'ENTRADA', 23),
(307, '2025-02-26', '17:34:40', 'SALIDA', 23),
(308, '2025-02-26', '17:54:26', 'ENTRADA', 4),
(309, '2025-02-26', '18:11:47', 'ENTRADA', 5),
(310, '2025-02-26', '18:19:27', 'ENTRADA', 12),
(311, '2025-02-26', '20:40:20', 'ENTRADA', 19),
(312, '2025-02-26', '21:13:11', 'SALIDA', 5),
(313, '2025-02-26', '21:21:52', 'SALIDA', 12),
(314, '2025-02-26', '22:02:05', 'SALIDA', 19),
(315, '2025-02-26', '23:06:45', 'SALIDA', 4),
(316, '2025-02-27', '07:39:50', 'ENTRADA', 8),
(317, '2025-02-27', '15:35:58', 'ENTRADA', 18),
(318, '2025-02-27', '19:09:54', 'SALIDA', 8),
(319, '2025-02-27', '19:55:20', 'SALIDA', 18),
(320, '2025-02-28', '15:01:14', 'ENTRADA', 20),
(321, '2025-02-28', '15:02:16', 'ENTRADA', 30),
(322, '2025-02-28', '15:06:25', 'ENTRADA', 6),
(323, '2025-02-28', '18:26:32', 'ENTRADA', 12),
(324, '2025-02-28', '18:43:09', 'ENTRADA', 19),
(325, '2025-02-28', '18:52:54', 'SALIDA', 30),
(326, '2025-02-28', '19:50:53', 'ENTRADA', 17),
(327, '2025-02-28', '21:52:16', 'SALIDA', 19),
(328, '2025-02-28', '21:53:14', 'SALIDA', 17),
(329, '2025-02-28', '21:55:34', 'SALIDA', 20),
(330, '2025-02-28', '22:06:36', 'SALIDA', 6),
(331, '2025-02-28', '22:58:27', 'SALIDA', 12),
(332, '2025-03-01', '09:40:34', 'ENTRADA', 12),
(333, '2025-03-01', '12:48:55', 'ENTRADA', 8),
(334, '2025-03-01', '13:06:46', 'ENTRADA', 31),
(335, '2025-03-01', '14:40:03', 'SALIDA', 12),
(336, '2025-03-01', '14:59:44', 'SALIDA', 8),
(337, '2025-03-01', '16:29:06', 'ENTRADA', 32),
(338, '2025-03-01', '16:29:44', 'ENTRADA', 6),
(339, '2025-03-01', '16:30:45', 'ENTRADA', 21),
(340, '2025-03-01', '21:20:00', 'SALIDA', 6),
(341, '2025-03-01', '21:20:48', 'SALIDA', 21),
(342, '2025-03-01', '21:20:48', 'ENTRADA', 21),
(343, '2025-03-01', '21:21:11', 'SALIDA', 21),
(344, '2025-03-01', '21:21:11', 'ENTRADA', 21),
(345, '2025-03-01', '21:21:43', 'SALIDA', 21),
(346, '2025-03-02', '08:45:30', 'SALIDA', 31),
(347, '2025-03-02', '08:46:05', 'ENTRADA', 31),
(348, '2025-03-02', '08:46:05', 'SALIDA', 31),
(349, '2025-03-02', '08:46:46', 'ENTRADA', 8),
(350, '2025-03-02', '08:47:15', 'ENTRADA', 31),
(351, '2025-03-02', '09:05:09', 'ENTRADA', 17),
(352, '2025-03-02', '11:01:05', 'SALIDA', 32),
(353, '2025-03-02', '11:50:29', 'SALIDA', 17),
(354, '2025-03-02', '11:57:11', 'SALIDA', 31),
(355, '2025-03-02', '15:10:42', 'SALIDA', 8),
(356, '2025-03-02', '23:03:41', 'ENTRADA', 32),
(357, '2025-03-03', '08:34:21', 'SALIDA', 32),
(358, '2025-03-03', '08:35:18', 'ENTRADA', 32),
(359, '2025-03-03', '15:56:34', 'ENTRADA', 31),
(360, '2025-03-03', '17:03:39', 'SALIDA', 31),
(361, '2025-03-03', '17:57:30', 'ENTRADA', 12),
(362, '2025-03-03', '18:41:23', 'ENTRADA', 5),
(363, '2025-03-03', '22:04:29', 'SALIDA', 5),
(364, '2025-03-03', '22:16:48', 'SALIDA', 12),
(365, '2025-03-04', '10:16:29', 'SALIDA', 32),
(366, '2025-03-04', '11:51:57', 'ENTRADA', 32),
(367, '2025-03-04', '18:17:02', 'ENTRADA', 6),
(368, '2025-03-04', '18:17:02', 'SALIDA', 6),
(369, '2025-03-04', '18:17:27', 'ENTRADA', 6),
(370, '2025-03-04', '18:40:25', 'ENTRADA', 12),
(371, '2025-03-04', '19:24:32', 'ENTRADA', 5),
(372, '2025-03-05', '14:19:33', 'SALIDA', 32),
(373, '2025-03-05', '14:20:08', 'ENTRADA', 32),
(374, '2025-03-05', '16:36:20', 'SALIDA', 32),
(375, '2025-03-05', '17:11:38', 'SALIDA', 12),
(376, '2025-03-05', '20:24:54', 'ENTRADA', 15),
(377, '2025-03-05', '22:04:50', 'SALIDA', 15),
(378, '2025-03-05', '22:14:39', 'ENTRADA', 32),
(379, '2025-03-06', '07:37:37', 'SALIDA', 32),
(380, '2025-03-06', '07:58:37', 'ENTRADA', 19),
(381, '2025-03-06', '08:27:53', 'ENTRADA', 15),
(382, '2025-03-06', '11:30:46', 'SALIDA', 19),
(383, '2025-03-06', '11:31:33', 'ENTRADA', 32),
(384, '2025-03-06', '11:32:07', 'SALIDA', 32),
(385, '2025-03-06', '11:33:11', 'SALIDA', 15),
(386, '2025-03-06', '13:52:53', 'ENTRADA', 32),
(387, '2025-03-06', '16:02:15', 'SALIDA', 5),
(388, '2025-03-06', '16:22:49', 'ENTRADA', 21),
(389, '2025-03-06', '16:23:30', 'ENTRADA', 23),
(390, '2025-03-06', '18:19:30', 'SALIDA', 6),
(391, '2025-03-06', '18:19:47', 'ENTRADA', 6),
(392, '2025-03-06', '19:32:26', 'ENTRADA', 20),
(393, '2025-03-06', '21:15:50', 'SALIDA', 23),
(394, '2025-03-06', '21:15:50', 'ENTRADA', 23),
(395, '2025-03-06', '21:16:55', 'SALIDA', 23),
(396, '2025-03-06', '21:25:24', 'SALIDA', 21),
(397, '2025-03-06', '21:28:01', 'SALIDA', 6),
(398, '2025-03-06', '21:56:52', 'SALIDA', 20),
(399, '2025-03-07', '09:24:59', 'SALIDA', 32),
(400, '2025-03-07', '12:19:44', 'ENTRADA', 12),
(401, '2025-03-07', '15:44:10', 'SALIDA', 12),
(402, '2025-03-07', '15:59:10', 'ENTRADA', 6),
(403, '2025-03-07', '16:05:39', 'ENTRADA', 33),
(404, '2025-03-07', '16:05:39', 'SALIDA', 33),
(405, '2025-03-07', '16:05:57', 'ENTRADA', 33),
(406, '2025-03-07', '19:25:27', 'ENTRADA', 34),
(407, '2025-03-07', '19:26:01', 'ENTRADA', 21),
(408, '2025-03-07', '19:29:44', 'ENTRADA', 12),
(409, '2025-03-07', '19:45:09', 'ENTRADA', 5),
(410, '2025-03-07', '20:20:07', 'ENTRADA', 15),
(411, '2025-03-07', '22:18:35', 'SALIDA', 34),
(412, '2025-03-07', '22:18:58', 'SALIDA', 15),
(413, '2025-03-07', '22:21:27', 'SALIDA', 33),
(414, '2025-03-07', '22:21:37', 'SALIDA', 6),
(415, '2025-03-07', '22:21:59', 'SALIDA', 12),
(416, '2025-03-08', '00:31:30', 'SALIDA', 21),
(417, '2025-03-08', '00:33:23', 'SALIDA', 5),
(418, '2025-03-08', '08:45:17', 'ENTRADA', 32),
(419, '2025-03-08', '10:13:33', 'ENTRADA', 20),
(420, '2025-03-08', '14:47:40', 'SALIDA', 20),
(421, '2025-03-08', '16:54:22', 'ENTRADA', 21),
(422, '2025-03-08', '18:28:04', 'ENTRADA', 22),
(423, '2025-03-08', '18:28:28', 'ENTRADA', 33),
(424, '2025-03-08', '19:14:48', 'ENTRADA', 12),
(425, '2025-03-08', '19:40:19', 'ENTRADA', 6),
(426, '2025-03-08', '23:45:25', 'SALIDA', 21),
(427, '2025-03-08', '23:45:45', 'SALIDA', 6),
(428, '2025-03-08', '23:45:45', 'ENTRADA', 6),
(429, '2025-03-08', '23:45:58', 'SALIDA', 6),
(430, '2025-03-09', '06:57:25', 'ENTRADA', 6),
(431, '2025-03-09', '07:00:22', 'ENTRADA', 35),
(432, '2025-03-09', '07:00:53', 'ENTRADA', 14),
(433, '2025-03-09', '07:01:26', 'ENTRADA', 21),
(434, '2025-03-09', '07:01:52', 'ENTRADA', 17),
(435, '2025-03-09', '07:03:12', 'ENTRADA', 8),
(436, '2025-03-09', '07:11:02', 'SALIDA', 32),
(437, '2025-03-09', '07:11:19', 'ENTRADA', 32),
(438, '2025-03-09', '07:11:53', 'SALIDA', 12),
(439, '2025-03-09', '07:12:15', 'ENTRADA', 12),
(440, '2025-03-09', '07:18:29', 'ENTRADA', 15),
(441, '2025-03-09', '07:19:58', 'ENTRADA', 19),
(442, '2025-03-09', '07:20:23', 'SALIDA', 33),
(443, '2025-03-09', '13:03:15', 'ENTRADA', 34),
(444, '2025-03-09', '13:05:53', 'SALIDA', 17),
(445, '2025-03-09', '13:10:03', 'SALIDA', 19),
(446, '2025-03-09', '13:13:54', 'SALIDA', 35),
(447, '2025-03-09', '13:16:07', 'SALIDA', 14),
(448, '2025-03-09', '13:24:58', 'SALIDA', 34),
(449, '2025-03-09', '13:25:36', 'ENTRADA', 34),
(450, '2025-03-09', '13:43:03', 'SALIDA', 6),
(451, '2025-03-09', '13:44:07', 'SALIDA', 21),
(452, '2025-03-09', '13:44:41', 'SALIDA', 22),
(453, '2025-03-09', '13:44:59', 'ENTRADA', 33),
(454, '2025-03-09', '13:46:29', 'SALIDA', 33),
(455, '2025-03-09', '13:47:40', 'SALIDA', 12),
(456, '2025-03-09', '14:39:44', 'SALIDA', 32),
(457, '2025-03-09', '14:55:37', 'SALIDA', 8),
(458, '2025-03-09', '16:51:04', 'SALIDA', 15),
(459, '2025-03-09', '21:36:06', 'ENTRADA', 32),
(460, '2025-03-10', '07:25:59', 'ENTRADA', 36),
(461, '2025-03-10', '07:55:16', 'SALIDA', 32),
(462, '2025-03-10', '07:55:42', 'ENTRADA', 32),
(463, '2025-03-10', '12:00:21', 'SALIDA', 32),
(464, '2025-03-10', '12:32:28', 'SALIDA', 36),
(465, '2025-03-10', '18:08:37', 'ENTRADA', 12),
(466, '2025-03-10', '18:11:49', 'ENTRADA', 35),
(467, '2025-03-10', '19:53:58', 'ENTRADA', 27),
(468, '2025-03-10', '20:56:36', 'SALIDA', 35),
(469, '2025-03-10', '21:11:48', 'SALIDA', 12),
(470, '2025-03-10', '22:08:38', 'ENTRADA', 32),
(471, '2025-03-10', '22:59:58', 'SALIDA', 27),
(472, '2025-03-10', '22:59:58', 'ENTRADA', 27),
(473, '2025-03-10', '23:01:10', 'SALIDA', 27),
(474, '2025-03-11', '06:57:43', 'SALIDA', 32),
(475, '2025-03-11', '13:01:10', 'ENTRADA', 32),
(476, '2025-03-12', '06:47:31', 'SALIDA', 32),
(477, '2025-03-12', '11:19:13', 'ENTRADA', 33),
(478, '2025-03-12', '11:32:22', 'ENTRADA', 32),
(479, '2025-03-12', '11:42:13', 'ENTRADA', 6),
(480, '2025-03-12', '13:05:41', 'ENTRADA', 8),
(481, '2025-03-12', '14:28:12', 'SALIDA', 33),
(482, '2025-03-12', '15:03:14', 'SALIDA', 8),
(483, '2025-03-12', '18:07:41', 'ENTRADA', 25),
(484, '2025-03-12', '21:27:13', 'SALIDA', 25),
(485, '2025-03-12', '22:15:38', 'SALIDA', 6),
(486, '2025-03-13', '06:53:49', 'SALIDA', 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `idpersonal` int(11) NOT NULL,
  `cod_bombero` varchar(10) NOT NULL,
  `clave_bombero` varchar(100) NOT NULL,
  `nombre_bombero` varchar(45) NOT NULL,
  `apellido_bombero` varchar(45) NOT NULL,
  `grado_bombero` varchar(45) NOT NULL,
  `estado_bombero` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`idpersonal`, `cod_bombero`, `clave_bombero`, `nombre_bombero`, `apellido_bombero`, `grado_bombero`, `estado_bombero`) VALUES
(4, 'A24278', '180696', 'Denys Alberto', 'Davila Mozombite', 'Seccionario', 'Activo'),
(5, 'A24286', '159951', 'Carlos Andres', 'Davila Shica', 'Seccionario', 'Activo'),
(6, 'A24279', '789654', 'Bruno Adrian', 'Rengifo Saldaña', 'Seccionario', 'Activo'),
(7, 'A24947', '202510', 'Andy Enrique', 'Santa Maria', 'Seccionario', 'Activo'),
(8, 'A25588', '604456', 'Gelio Tomy', 'Cabrera Macahuachi', 'Seccionario', 'Activo'),
(9, 'A11686', 'pacp', 'Pedro Abel', 'Cárdenas Panduro', 'Teniente', 'Activo'),
(10, 'A21503', '123456', 'Robert', 'Galan Ponce', 'Seccionario', 'Activo'),
(11, 'A18890', '123456', 'Tamara Liz', 'Vasquez Bardales', 'Sub. Teniente', 'Activo'),
(12, 'A24948', '123456', 'LUIS MANUEL', 'BORGOS ZUMAETA', 'Seccionario', 'Activo'),
(14, 'A11683', '060865', 'Juan Alberto', 'Arce Pajita', 'Teniente', 'Activo'),
(15, 'A13604', '604604', 'JULIO CESAR', 'RUPAY RIVERA', 'Sub. Teniente', 'Activo'),
(17, 'A00349', '1912', 'Javier Abraham', 'Espinoza Aguilar', 'Teniente Brigadier', 'Activo'),
(18, 'A21500', '0496', 'Paolo Cesar', 'Tueros Rios', 'Seccionario', 'Activo'),
(19, 'A24942', '472011', 'Anthony Miguel', 'Tananta Picon', 'Seccionario', 'Activo'),
(20, 'A11686', '41223387', 'PEDRO ABEL', 'CARDENAS PANDURO', 'Teniente', 'Activo'),
(21, 'A24927', 'RaDaGaLo3005', 'Raylton Dandiel', 'Garcia Lozano', 'Seccionario', 'Activo'),
(22, 'A19869', '1234567', 'Erick Fernando', 'Ozambela Soria', 'Seccionario', 'Activo'),
(23, 'A25598', 'A25598', 'JOSE  ALEJANDRO', 'MAYER  VALDIVIA', 'Seccionario', 'Activo'),
(24, 'A11687', 'Axel2013', 'Edwin Octavio', 'Reategui Tananta', 'Sub. Teniente', 'Activo'),
(25, 'A21499', 'Qwerty1891/*-', 'NESTOR', 'AGUILAR LOZANO', 'Seccionario', 'Activo'),
(26, 'A21507', '030519', 'Lady Dianeth', 'Sinarahua Puga', 'Seccionario', 'Activo'),
(27, 'A23238', '72147031', 'CYNTHIA TALITH', 'RENGIFO RIOS', 'Seccionario', 'Activo'),
(28, 'A24926', 'CRIS8290', 'CRISTINA DEL PILAR', 'VILLACREZ CHINO', 'Seccionario', 'Activo'),
(29, 'A10801', 'tag2025', 'Gerardo', 'Tamani Ahuanari', 'Sub. Teniente', 'Activo'),
(30, 'A24941', '123456789', 'Nicolas Cesar', 'Veliz Ramirez', 'Seccionario', 'Activo'),
(31, 'A03591', '123456', 'NELIN', 'RAMOS CANTARO', 'Sub. Teniente', 'Activo'),
(32, 'A06916', 'cheyerak', 'Charles Yerak', 'Cachique Macedo', 'Teniente Brigadier', 'Activo'),
(33, 'A24924', 'jhoanny12', 'JHOANNY CHRIST', 'RIOS PEREZ', 'Seccionario', 'Activo'),
(34, 'A18899', 'MOTELITO1', 'NIXON', 'ANAYA YNUMA', 'Sub. Teniente', 'Activo'),
(35, 'A25311', 'PANTERAJUNIOR27', 'DARWIN RAFAEL', 'MACEDO PRADA', 'Seccionario', 'Activo'),
(36, 'A09282', '654321', 'Marcial', 'Villacorta Ramírez', 'Teniente', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `control`
--
ALTER TABLE `control`
  ADD PRIMARY KEY (`idcontrol`),
  ADD KEY `fk_control_personal_idx` (`personal_idpersonal`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`idpersonal`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `control`
--
ALTER TABLE `control`
  MODIFY `idcontrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `idpersonal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `control`
--
ALTER TABLE `control`
  ADD CONSTRAINT `fk_control_personal` FOREIGN KEY (`personal_idpersonal`) REFERENCES `personal` (`idpersonal`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
