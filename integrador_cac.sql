-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2023 a las 01:41:35
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integrador_cac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id_orador` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `mail` varchar(60) NOT NULL,
  `tema` varchar(1000) NOT NULL,
  `activo` char(2) NOT NULL,
  `fecha_alta` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `activo`, `fecha_alta`) VALUES
(1, 'Diego', 'Milito', 'el_principe_22@gmail.com', 'Oracle', 'N', '2023-11-12 11:05:44'),
(2, 'Lisandro', 'Lopez', 'licha_15@gmail.com', 'Java', 'S', '2023-11-12 11:11:52'),
(3, 'Sebastian', 'Saja', 'chino_saja@gmail.com', 'Javascrpit', 'N', '2023-11-12 11:17:01'),
(4, 'Ivan', 'Pillud', 'ivan4@gmail.com', 'HTML', 'S', '2023-11-12 11:19:45'),
(5, 'Gabriel', 'Hauche', 'el.demonio.hauche@gmail.com', 'CSS', 'S', '2023-11-12 11:21:41'),
(6, 'Rodrigo', 'De Paul', 'rodri_depaul@gmail.com', 'Phyton', 'S', '2023-11-12 11:23:13'),
(7, 'Lautaro', 'Martinez', 'el_toro@gmail.com', 'PHP', 'S', '2023-11-12 11:54:35'),
(8, 'Marcos', 'Acuña', 'el_huevo_acuña@gmail.com', 'C#', 'S', '2023-11-12 11:57:50'),
(9, 'Gustavo', 'Bou', 'la_pantera_bou@gmail.com', 'React', 'S', '2023-11-12 11:59:16'),
(10, 'Facundo', 'Sava', 'el.colorado.sava@gmail.com', 'C++', 'N', '2023-11-12 12:01:02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id_orador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id_orador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
