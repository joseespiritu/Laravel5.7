-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2020 a las 03:33:36
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel_master`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `image_id` int(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `image_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Buena foto de familia', '2020-07-14 06:52:16', '2020-07-14 06:52:16'),
(2, 2, 1, 'Buena foto de playa', '2020-07-14 06:52:16', '2020-07-14 06:52:16'),
(3, 2, 4, 'que bueno!!!', '2020-07-14 06:52:16', '2020-07-14 06:52:16'),
(4, 6, 7, 'dsada dasd', '2020-07-24 01:37:27', '2020-07-24 01:37:27'),
(6, 6, 7, 'cdscsd', '2020-07-28 02:03:09', '2020-07-28 02:03:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `user_id`, `image_path`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'test.jpg', 'descripcion de prueba 1', '2020-07-14 06:52:16', '2020-07-14 06:52:16'),
(2, 1, 'playa.jpg', 'descripcion de prueba 2', '2020-07-14 06:52:16', '2020-07-14 06:52:16'),
(3, 1, 'arena.jpg', 'descripcion de prueba 3', '2020-07-14 06:52:16', '2020-07-14 06:52:16'),
(4, 3, 'familia.jpg', 'descripcion de prueba 4', '2020-07-14 06:52:16', '2020-07-14 06:52:16'),
(6, 6, '1595330362WTR.jpg', 'Logo', '2020-07-21 11:19:22', '2020-07-21 11:19:22'),
(7, 6, '1595901895oso.jpg', 'Soy un oso', '2020-07-22 02:44:38', '2020-07-28 02:04:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `likes`
--

CREATE TABLE `likes` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `image_id` int(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `image_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2020-07-14 06:52:16', '2020-07-14 06:52:16'),
(2, 2, 4, '2020-07-14 06:52:16', '2020-07-14 06:52:16'),
(3, 3, 1, '2020-07-14 06:52:16', '2020-07-14 06:52:16'),
(4, 3, 2, '2020-07-14 06:52:16', '2020-07-14 06:52:16'),
(5, 2, 1, '2020-07-14 06:52:16', '2020-07-14 06:52:16'),
(10, 5, 1, '2020-07-26 13:27:54', '2020-07-26 13:27:54'),
(11, 5, 2, '2020-07-26 13:31:22', '2020-07-26 13:31:22'),
(14, 5, 7, '2020-07-26 13:36:34', '2020-07-26 13:36:34'),
(15, 5, 6, '2020-07-26 13:50:05', '2020-07-26 13:50:05'),
(17, 5, 4, '2020-07-26 13:50:08', '2020-07-26 13:50:08'),
(18, 5, 3, '2020-07-26 13:50:09', '2020-07-26 13:50:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `rol` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(200) DEFAULT NULL,
  `nick` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `rol`, `name`, `surname`, `nick`, `email`, `password`, `image`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'user', 'jose', 'espiritu', 'joseespiritu', 'jose@jose.com', 'pass', NULL, '2020-07-14 06:52:16', '2020-07-14 06:52:16', NULL),
(2, 'user', 'juan', 'lopez', 'juanlopez', 'juan@juan.com', 'pass', NULL, '2020-07-14 06:52:16', '2020-07-14 06:52:16', NULL),
(3, 'user', 'manolo', 'garcia', 'manologarcia', 'manolo@manolo.com', 'pass', NULL, '2020-07-14 06:52:16', '2020-07-14 06:52:16', NULL),
(4, NULL, 'Admin', NULL, NULL, 'admin@admin.com', '$2y$10$gujvG9XztB41uDJUklRWe.S/cG9wUam0MEbLD9GH8XVO.z0T4dbN6', NULL, '2020-07-15 11:24:37', '2020-07-15 11:24:37', 'jjxvZY8bQtB048N9rOnB3pEsseprKzGsW18EWs1AHprSBEXIR1aTW7vIPlmR'),
(5, NULL, 'David', 'Martinez', 'davidm', 'david@david.com', '$2y$10$0IVLzMoz5G/NQIo.AV3w3esVBh9PfJZEcHNwvL10LuYACFCG9Na9G', '1595555319AAL.jpg', '2020-07-15 11:36:52', '2020-07-24 01:48:39', 'iHEXkAULEzmXjZTFMqMNH03XG4K4wGrvp4FdnDKttqHlmOqlkb5KKInCdEHs'),
(6, 'user', 'Paco', 'Sanchez', 'paco', 'paco@paco.com', '$2y$10$xOx9W5BUv55pOxwPPPjkEek.lo/aUCzERzTzzM36SIoCNOxLQ.VFu', '1595116184WTR.jpg', '2020-07-15 11:39:13', '2020-07-18 23:49:44', 'e7UZ3d5h8KrMA0hi2agMY3GhFn9Fdlk7RoR1rtBV098nZ9q4Hz6Stvk0LAPJ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comments_users` (`user_id`),
  ADD KEY `fk_comments_images` (`image_id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_images_users` (`user_id`);

--
-- Indices de la tabla `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_likes_users` (`user_id`),
  ADD KEY `fk_likes_images` (`image_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comments_images` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `fk_comments_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fk_images_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `fk_likes_images` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `fk_likes_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
