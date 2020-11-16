-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2020 a las 03:38:13
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `selotengodb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aceptado_servicio`
--

CREATE TABLE `aceptado_servicio` (
  `id_aceptado` int(40) NOT NULL,
  `cod_us` int(40) NOT NULL,
  `cod-oferta` int(40) NOT NULL,
  `cod_solicitud` int(40) NOT NULL,
  `cod_ind` int(40) NOT NULL,
  `telefono_us` double NOT NULL,
  `departamento_serv` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad_serv` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `direccion_serv` char(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `califica_servicio`
--

CREATE TABLE `califica_servicio` (
  `id_calificacion` int(40) NOT NULL,
  `cod_us` int(40) NOT NULL,
  `cod_aceptado` int(11) NOT NULL,
  `cod_ind` int(11) NOT NULL,
  `tiempo_resp` int(40) NOT NULL,
  `amabilidad` int(40) NOT NULL,
  `calidad` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_servicios`
--

CREATE TABLE `lista_servicios` (
  `id_servicio` int(40) NOT NULL,
  `servicio` char(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta_servicio`
--

CREATE TABLE `oferta_servicio` (
  `id_respuesta` int(40) NOT NULL,
  `num_solicitud` int(40) NOT NULL,
  `cod_ind` int(40) NOT NULL,
  `nombres_ind` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `telefono_ind` double NOT NULL,
  `foto_ind` char(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_independ`
--

CREATE TABLE `registro_independ` (
  `id_ind` int(40) NOT NULL,
  `nombres_ind` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos_ind` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `email_ind` char(60) COLLATE utf8_spanish_ci NOT NULL,
  `telefono_ind` float NOT NULL,
  `departamento_ind` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad_ind` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `direccion_ind` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `servicio_ind` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `tiempoexp_ind` float NOT NULL,
  `foto_ind` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `contrasena_ind` longtext COLLATE utf8_spanish_ci NOT NULL,
  `url_ind` char(60) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_usuario`
--

CREATE TABLE `registro_usuario` (
  `id_us` int(40) NOT NULL,
  `nombre_us` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos_us` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `email_us` char(30) COLLATE utf8_spanish_ci NOT NULL,
  `telefono_us` float NOT NULL,
  `departamento_us` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad_us` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `barrio_us` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `direccion_us` char(75) COLLATE utf8_spanish_ci NOT NULL,
  `contraseña_us` longtext COLLATE utf8_spanish_ci NOT NULL,
  `confirmarcontrasena_us` longtext COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_servicio`
--

CREATE TABLE `solicitud_servicio` (
  `id_solicitud` int(40) NOT NULL,
  `servicio_sol` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_sol` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_sol` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `telefono_sol` double NOT NULL,
  `cod_us` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aceptado_servicio`
--
ALTER TABLE `aceptado_servicio`
  ADD PRIMARY KEY (`id_aceptado`);

--
-- Indices de la tabla `califica_servicio`
--
ALTER TABLE `califica_servicio`
  ADD PRIMARY KEY (`id_calificacion`);

--
-- Indices de la tabla `lista_servicios`
--
ALTER TABLE `lista_servicios`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `oferta_servicio`
--
ALTER TABLE `oferta_servicio`
  ADD PRIMARY KEY (`id_respuesta`);

--
-- Indices de la tabla `registro_independ`
--
ALTER TABLE `registro_independ`
  ADD PRIMARY KEY (`id_ind`);

--
-- Indices de la tabla `registro_usuario`
--
ALTER TABLE `registro_usuario`
  ADD PRIMARY KEY (`id_us`);

--
-- Indices de la tabla `solicitud_servicio`
--
ALTER TABLE `solicitud_servicio`
  ADD PRIMARY KEY (`id_solicitud`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aceptado_servicio`
--
ALTER TABLE `aceptado_servicio`
  MODIFY `id_aceptado` int(40) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `califica_servicio`
--
ALTER TABLE `califica_servicio`
  MODIFY `id_calificacion` int(40) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lista_servicios`
--
ALTER TABLE `lista_servicios`
  MODIFY `id_servicio` int(40) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oferta_servicio`
--
ALTER TABLE `oferta_servicio`
  MODIFY `id_respuesta` int(40) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registro_independ`
--
ALTER TABLE `registro_independ`
  MODIFY `id_ind` int(40) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registro_usuario`
--
ALTER TABLE `registro_usuario`
  MODIFY `id_us` int(40) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitud_servicio`
--
ALTER TABLE `solicitud_servicio`
  MODIFY `id_solicitud` int(40) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
