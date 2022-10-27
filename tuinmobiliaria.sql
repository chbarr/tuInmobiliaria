-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-10-2022 a las 23:23:53
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
-- Base de datos: `tuinmobiliaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `houses`
--

CREATE TABLE `houses` (
  `id` tinyint(4) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `houses`
--

INSERT INTO `houses` (`id`, `address`) VALUES
(1, 'Kr1#2-3'),
(2, 'kr2#4-5'),
(3, 'kra 3#6-7'),
(4, 'Kr7#12-31'),
(5, 'cll9#40-5'),
(6, 'kr16#40-5'),
(7, 'cll15#9-17'),
(8, 'transv9#12-3'),
(9, 'av9#4-1'),
(10, 'kr19#6-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persons`
--

CREATE TABLE `persons` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persons`
--

INSERT INTO `persons` (`id`, `name`, `lastname`, `email`) VALUES
(1, 'Isabela', 'Lopez', 'isabelal@gmail.com'),
(2, 'Christian', 'Barreto', 'christianbar@gmail.com'),
(4, 'Christian Andres', 'Gomez', 'chris@gmail.com'),
(5, 'Camila', 'Torres', 'camitor@gmail.com'),
(6, 'Camilo', 'Paredes', 'campar@gmail.com'),
(7, 'Maria', 'Camila', 'marcam@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rentaldata`
--

CREATE TABLE `rentaldata` (
  `id` tinyint(4) NOT NULL,
  `personid` tinyint(4) NOT NULL,
  `houseid` tinyint(4) NOT NULL,
  `rentdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rentaldata`
--

INSERT INTO `rentaldata` (`id`, `personid`, `houseid`, `rentdate`) VALUES
(1, 2, 2, '2021-06-20'),
(2, 2, 1, '2022-02-20'),
(3, 1, 2, '2022-03-14'),
(7, 4, 3, '2022-10-25'),
(8, 5, 4, '2022-03-12'),
(9, 5, 10, '2022-10-12'),
(10, 6, 5, '2021-06-20'),
(11, 6, 7, '2021-11-20'),
(12, 6, 9, '2022-05-02'),
(13, 7, 8, '2022-04-26');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rentaldata`
--
ALTER TABLE `rentaldata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personid` (`personid`),
  ADD KEY `houseid` (`houseid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `houses`
--
ALTER TABLE `houses`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `persons`
--
ALTER TABLE `persons`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `rentaldata`
--
ALTER TABLE `rentaldata`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `rentaldata`
--
ALTER TABLE `rentaldata`
  ADD CONSTRAINT `rentaldata_ibfk_1` FOREIGN KEY (`personid`) REFERENCES `persons` (`id`),
  ADD CONSTRAINT `rentaldata_ibfk_2` FOREIGN KEY (`houseid`) REFERENCES `houses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
