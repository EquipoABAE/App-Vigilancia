-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1

-- Tiempo de generación: 21-12-2022 a las 02:15:16
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

-- Tiempo de generación: 17-12-2022 a las 23:17:07
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eventos`
--

-- --------------------------------------------------------

--

-- Estructura de tabla para la tabla `papelera`
--

CREATE TABLE `papelera` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `fecha` date NOT NULL,
  `ruta_video` text NOT NULL,
  `ruta_miniatura` text NOT NULL,
  `comentario` text NOT NULL,
  `duracion` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `papelera`
--

INSERT INTO `papelera` (`id`, `nombre`, `fecha`, `ruta_video`, `ruta_miniatura`, `comentario`, `duracion`) VALUES
(4, 'Cam1 2022_12_20  14_18_7.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_18_7.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_18_7.jpg', '', '00:00:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `fecha` date NOT NULL,
  `ruta_video` text NOT NULL,
  `ruta_miniatura` text NOT NULL,
  `comentario` text NOT NULL,
  `duracion` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `video`
--

INSERT INTO `video` (`id`, `nombre`, `fecha`, `ruta_video`, `ruta_miniatura`, `comentario`, `duracion`) VALUES
(3, 'Cam1 2022_12_20  14_18_20.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_18_20.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_18_20.jpg', '', '00:00:05'),
(4, 'Cam1 2022_12_20  14_18_44.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_18_44.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_18_44.jpg', '', '00:00:05'),
(5, 'Cam1 2022_12_20  14_20_46.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_20_46.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_20_46.jpg', '', '00:00:21'),
(6, 'Cam1 2022_12_20  14_22_43.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_22_43.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_22_43.jpg', '', '00:00:06'),
(7, 'Cam1 2022_12_20  14_23_50.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_23_50.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_23_50.jpg', '', '00:00:05'),
(8, 'Cam1 2022_12_20  14_24_15.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_24_15.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_24_15.jpg', '', '00:00:05'),
(9, 'Cam1 2022_12_20  14_26_13.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_26_13.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_26_13.jpg', '', '00:00:05'),
(10, 'Cam1 2022_12_20  14_27_1.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_27_1.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_27_1.jpg', '', '00:00:05'),
(13, 'Cam1 2022_12_20  14_29_46.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_29_46.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_29_46.jpg', '', '00:00:14'),
(14, 'Cam1 2022_12_20  14_35_31.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_35_31.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_35_31.jpg', '', '00:00:07'),
(15, 'Cam1 2022_12_20  14_41_8.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_41_8.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_41_8.jpg', '', '00:00:07'),
(16, 'Cam1 2022_12_20  14_42_48.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_42_48.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_42_48.jpg', '', '00:00:07'),
(17, 'Cam1 2022_12_20  14_43_38.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_43_38.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_43_38.jpg', '', '00:00:10'),
(18, 'Cam1 2022_12_20  14_46_19.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_46_19.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_46_19.jpg', '', '00:00:05'),
(19, 'Cam1 2022_12_20  14_48_18.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_48_18.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_48_18.jpg', '', '00:00:21'),
(20, 'Cam1 2022_12_20  14_52_22.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_52_22.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_52_22.jpg', '', '00:00:16'),
(21, 'Cam1 2022_12_20  14_53_57.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_53_57.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_53_57.jpg', '', '00:00:10'),
(22, 'Cam1 2022_12_20  14_56_1.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_56_1.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_56_1.jpg', '', '00:00:13'),
(23, 'Cam1 2022_12_20  15_1_13.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_1_13.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_1_13.jpg', '', '00:00:05'),
(24, 'Cam1 2022_12_20  15_4_52.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_4_52.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_4_52.jpg', '', '00:00:07'),
(25, 'Cam1 2022_12_20  15_6_30.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_6_30.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_6_30.jpg', '', '00:00:05'),
(26, 'Cam1 2022_12_20  15_9_55.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_9_55.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_9_55.jpg', '', '00:00:09'),
(27, 'Cam1 2022_12_20  15_12_11.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_12_11.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_12_11.jpg', '', '00:00:06'),
(28, 'Cam1 2022_12_20  15_13_28.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_13_28.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_13_28.jpg', '', '00:00:07'),
(29, 'Cam1 2022_12_20  15_14_22.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_14_22.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_14_22.jpg', '', '00:00:05'),
(30, 'Cam1 2022_12_20  15_14_49.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_14_49.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_14_49.jpg', '', '00:00:05'),
(31, 'Cam1 2022_12_20  15_15_24.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_15_24.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_15_24.jpg', '', '00:00:05'),
(32, 'Cam1 2022_12_20  15_19_6.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_19_6.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  15_19_6.jpg', '', '00:00:05'),
(34, 'Cam1 2022_12_20  14_27_34.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_27_34.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_27_34.jpg', '', '00:00:18'),
(35, 'Cam1 2022_12_20  18_34_56.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  18_34_56.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  18_34_56.jpg', '', '00:00:05'),
(36, 'Cam1 2022_12_20  20_9_4.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_9_4.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_9_4.jpg', '', '00:00:28'),
(37, 'Cam1 2022_12_20  20_11_0.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_11_0.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_11_0.jpg', '', '00:00:22'),
(38, 'Cam1 2022_12_20  20_13_23.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_13_23.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_13_23.jpg', '', '00:00:05'),
(39, 'Cam1 2022_12_20  20_14_49.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_14_49.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_14_49.jpg', '', '00:00:08'),
(40, 'Cam1 2022_12_20  14_28_55.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_28_55.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_28_55.jpg', '', '00:00:05'),
(41, 'Cam1 2022_12_20  14_15_18.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_15_18.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  14_15_18.jpg', '', '00:00:13'),
(42, 'Cam1 2022_12_20  20_17_46.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_17_46.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_17_46.jpg', '', '00:00:05'),
(43, 'Cam1 2022_12_20  20_21_23.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_21_23.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_21_23.jpg', '', '00:00:05'),
(44, 'Cam1 2022_12_20  20_21_45.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_21_45.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_21_45.jpg', '', '00:00:06'),
(45, 'Cam1 2022_12_20  20_22_9.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_22_9.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_22_9.jpg', '', '00:00:05'),
(46, 'Cam1 2022_12_20  20_23_54.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_23_54.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_23_54.jpg', '', '00:00:05'),
(47, 'Cam1 2022_12_20  20_33_48.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_33_48.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_33_48.jpg', '', '00:00:05'),
(48, 'Cam1 2022_12_20  20_36_41.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_36_41.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_36_41.jpg', '', '00:00:05'),
(49, 'Cam1 2022_12_20  20_38_34.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_38_34.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_38_34.jpg', '', '00:00:08'),
(50, 'Cam1 2022_12_20  20_39_38.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_39_38.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_39_38.jpg', '', '00:00:21'),
(51, 'Cam1 2022_12_20  20_42_16.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_42_16.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_42_16.jpg', '', '00:00:05'),
(52, 'Cam1 2022_12_20  20_42_57.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_42_57.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_42_57.jpg', '', '00:00:05'),
(53, 'Cam1 2022_12_20  20_44_21.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_44_21.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_44_21.jpg', '', '00:00:05'),
(54, 'Cam1 2022_12_20  20_53_11.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_53_11.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_53_11.jpg', '', '00:00:07'),
(55, 'Cam1 2022_12_20  20_56_29.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_56_29.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_56_29.jpg', '', '00:00:37'),
(56, 'Cam1 2022_12_20  20_57_50.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_57_50.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_57_50.jpg', '', '00:00:13'),
(57, 'Cam1 2022_12_20  20_58_29.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_58_29.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_58_29.jpg', '', '00:00:07'),
(58, 'Cam1 2022_12_20  20_58_57.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_58_57.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  20_58_57.jpg', '', '00:00:05'),
(59, 'Cam1 2022_12_20  21_5_35.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  21_5_35.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  21_5_35.jpg', '', '00:00:06'),
(60, 'Cam1 2022_12_20  21_7_41.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  21_7_41.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  21_7_41.jpg', '', '00:00:06'),
(61, 'Cam1 2022_12_20  21_8_36.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  21_8_36.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  21_8_36.jpg', '', '00:00:32'),
(62, 'Cam1 2022_12_20  21_10_45.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  21_10_45.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  21_10_45.jpg', '', '00:00:06'),
(63, 'Cam1 2022_12_20  21_12_56.mp4', '2022-12-20', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\videos\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  21_12_56.mp4', 'c:\\Sistema_de_vigilancia_ABAE_Puerto_Cabello\\thumbnail\\Cam1\\2022\\Dec\\20\\Cam1 2022_12_20  21_12_56.jpg', '', '00:00:05');

-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `ID` int(11) NOT NULL,
  `NOMBRE` text NOT NULL,
  `FECHA` date NOT NULL,
  `DIREC_VIDEO` text NOT NULL,
  `DIREC_MINI` text NOT NULL,
  `COMEN` text NOT NULL,
  `DURACION` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `papelera`
--
ALTER TABLE `papelera`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`ID`);


--
-- AUTO_INCREMENT de las tablas volcadas
--

--

-- AUTO_INCREMENT de la tabla `papelera`
--
ALTER TABLE `papelera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
