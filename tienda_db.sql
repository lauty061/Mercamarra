-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-04-2025 a las 17:59:05
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
-- Base de datos: `tienda_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `fecha_registro`) VALUES
(3, 'grjnytntyy', 'pmon71810@gmail.com', 'ntntntn', '2024-11-25 21:46:41'),
(4, 'lauty', 'borgeslautaro0@gmail.com', 'lauty', '2024-11-25 21:47:21'),
(5, 'ffafafd', 'pxcaca867@gmail.com', 'fdfdfdfdfd', '2024-11-25 21:55:01'),
(6, 'fdfdfd', 'dfmfjnmd@gmail.com', 'dsdsdsdsds', '2024-11-25 21:59:39'),
(7, 'fdfdfd', 'pedito@gmail.com', 'fdfdfd', '2024-11-25 22:04:50'),
(8, 'fdfdfd', 'fdfd@gmail.com', 'fdfdfd', '2024-11-25 22:09:56'),
(9, 'fdfdfd', 'fdvdjujvnsdjinovds@gmail.com', 'ngfng', '2024-11-25 22:11:43'),
(10, 'fdfdfd', '9rtgh@gmail.com', 'cscsdacasd', '2024-11-25 22:15:13'),
(11, 'vuidsvhuisdsb', 'nvodwsn@gmail.com', 'vdnjiovjindvjisd', '2024-11-25 22:19:37'),
(12, 'gfgfgfg', 'ndfindf@gmail.com', 'nk0thn,mkoth', '2024-11-25 22:53:01'),
(13, 'grfgb', 'jujju@gmail.com', 'mfbkmfkb', '2024-11-25 22:55:31'),
(14, 'dfdfdfdhthh6', '777m7h79@gmail.com', 'yiymihmiyj', '2024-11-26 02:49:02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
