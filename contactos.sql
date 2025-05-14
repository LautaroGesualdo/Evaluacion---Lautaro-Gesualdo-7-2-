-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2025 a las 01:53:52
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sitio_web`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `nombre`, `email`, `mensaje`, `fecha`) VALUES
(1, 'lautaro', 'snnsjsjs@gmail.com', 'nsnsbbsiis', '2025-05-14 22:34:23'),
(3, 'MAXIMILIANO', 'ALBANESE@gmail.com', 'nnsnmsnsn', '2025-05-14 22:46:04'),
(4, 'tomas ', 'tomas@gmail.com', 'jajajajajajaja', '2025-05-14 22:54:24'),
(6, 'benjamin', 'benja@gmail.com', 'mmmm', '2025-05-14 22:55:52'),
(7, 'julian', 'juli@gmail.com', 'ooooooooooooooooooo', '2025-05-14 22:58:06'),
(8, 'franco', 'franco@gmail.com', 'tttttttttttttttttttttttttttttt', '2025-05-14 22:58:27'),
(10, 'cris', 'cristobal@gmail.com', 'qqqqqqqqqqqqqqqqqqqqqqqqq', '2025-05-14 23:05:07'),
(13, 'colman', 'cookie@gmail.com', 'apapapapa', '2025-05-14 23:16:06'),
(14, 'gabo', 'gabriel@gmail.com', 'hhh', '2025-05-14 23:25:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
