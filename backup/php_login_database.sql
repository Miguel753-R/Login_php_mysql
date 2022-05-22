-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2022 a las 22:52:03
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `php_login_database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'test@meil.com', '$2y$10$hzUrzl20C5Apu5JdrL.x2eGdKbcbf.sJbblbEkIuFjKRlrMvoq3UK'),
(4, 'test2@mail.com', '$2y$10$TRSkgP3Bo4Y.6Inb7XbVMuJxK2MXFZDN8i0IOvn3PUU7ewVFWE.V6'),
(5, 'test3@email.com', '$2y$10$nXBmOaBPtcZ0GjMUG5Mo0Ojig8pWdbjuxsSn5r4nic/iCVIKF1BWO'),
(6, 'juan@mail.com', '$2y$10$LUc.UmtKT0Ky/ulzO47/xO7cCf9V7p6IpYIV0F8UCM4zMRa/EqHs.'),
(7, 'miguel@gmail.com', '$2y$10$IPS8VLlOaGMl9X5s2DsxdOf3o7n2oGHksR9HRTWfZBBCXAvMydCHO'),
(8, 'yo@email.com', '$2y$10$zB/Hq08yMm8NXDnkaVbb2.NpL1oKiJmg7.6nz7M8dvE5FOOeDhlAy'),
(9, 'jose@me.com', '$2y$10$I.zBBzMX2YhNs6PK1.2BGOcMh5LjSXQrVcwc2nmO3BPy7xr0rD1ri'),
(10, 'hola@gmail.com', '$2y$10$Ms/TSyunENuoQwIEapRziuMTRMGxwRbgwosoxAX/c/o15aeeVsTUa');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
