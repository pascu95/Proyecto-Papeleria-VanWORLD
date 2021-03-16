-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-03-2021 a las 04:36:33
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(7, 'LIBROS', '2021-02-26 19:27:30'),
(8, 'CUADERNOS', '2021-02-26 19:27:38'),
(9, 'CARTULINAS', '2021-02-26 19:27:47'),
(10, 'BOLIGRAFOS', '2021-02-26 19:27:56'),
(11, 'REGLAS', '2021-02-26 19:28:22'),
(12, 'MARCADORES', '2021-02-26 19:28:46'),
(13, 'LAPICES DE COLORES', '2021-02-27 23:52:29'),
(14, 'BORRADORES', '2021-02-27 23:52:46'),
(15, 'FORROS', '2021-02-27 23:53:11'),
(16, 'TIJERAS', '2021-02-28 00:05:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(3, 'William Zamora', 2147483647, 'Willam@gmail.com', '(093) 412-3402', '5 de Junio', '1980-11-02', 5807, '2021-02-27 19:03:33', '2021-03-10 00:18:01'),
(11, 'David Guzman', 43634643, 'david@hotmail.com', '(096) 574-5634', 'Las Cumbres', '1967-05-04', 110, '2021-02-27 18:50:43', '2021-02-27 23:50:43'),
(12, 'Gonzalo Pérez', 436346346, 'gonzalo@gmail.com', '(098) 346-3464', 'Flavio Reyes', '1967-08-09', 10024, '2021-02-27 19:09:55', '2021-03-10 00:17:56'),
(13, 'Preciado', 1342536747, 'preciado@gmail.com', '(098) 765-4321', 'Esmeraldas', '2010-02-18', 29, '2021-03-02 10:23:11', '2021-03-02 15:23:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(61, 7, '123', 'LIBRO DE INGLES', 'vistas/img/productos/123/765.jpg', 40, 5, 7, 10, '2021-02-28 00:03:33'),
(62, 8, '22', 'CUADERNO UNIVERSITARIO', 'vistas/img/productos/22/764.jpg', 250, 1, 1.2, 50, '2021-03-10 00:17:56'),
(63, 9, '1234', 'CARTULINAS TAMAÑO A4', 'vistas/img/productos/1234/707.jpg', 100, 0.1, 0.1, 100, '2021-02-28 00:14:59'),
(64, 10, '12345', 'LAPICEROS PUNTA FINA', 'vistas/img/productos/12345/272.jpg', 50, 25, 35, 50, '2021-02-28 00:14:34'),
(65, 12, '123456', 'MARCADORES PERMANENTES Y BORRABLES', 'vistas/img/productos/123456/631.jpg', 40, 50, 70, 40, '2021-03-10 00:18:01'),
(66, 11, '01', 'REGLAS DE FIGURAS GEOMETRICAS', 'vistas/img/productos/01/344.jpg', 250, 50, 70, 150, '2021-03-10 00:17:51'),
(67, 13, '00', 'LAPICES DE COLORES MARCAS NORMAS', 'vistas/img/productos/00/911.jpg', 500, 2, 2.8, 4500, '2021-02-28 00:13:26'),
(68, 14, '012', 'BORRADOR PELIKAM', 'vistas/img/productos/012/746.jpg', 995, 10, 10, 3005, '2021-03-02 15:23:11'),
(69, 15, '02', 'FORROS PARA CUADERNOS', 'vistas/img/productos/02/567.jpg', 7980, 15, 15, 2020, '2021-03-02 15:23:11'),
(70, 16, '03', 'TIJERAS DE ACERO INOXIDABLE', 'vistas/img/productos/03/270.jpg', 73996, 75, 75, 6004, '2021-03-02 15:23:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'VanWorld', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/342.png', 1, '2021-03-09 22:33:31', '2021-03-10 03:33:31'),
(58, 'Julio Gómez', 'julio', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Especial', 'vistas/img/usuarios/julio/100.png', 1, '2021-03-02 10:57:44', '2021-03-02 15:57:44'),
(60, 'PRECIA VALVERDE', 'preciado', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/preciado/423.jpg', 1, '2021-02-27 20:16:12', '2021-02-28 01:16:12'),
(62, 'juan', 'juan', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Vendedor', 'vistas/img/usuarios/juan/974.jpg', 1, '2021-03-09 11:23:56', '2021-03-09 16:23:56'),
(63, 'adrian', 'adrian', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Especial', 'vistas/img/usuarios/adrian/526.jpg', 0, '2021-03-06 21:43:49', '2021-03-07 02:44:38'),
(64, 'Sanler Valverde', 'sanler', '$2a$07$asxx54ahjppf45sd87a5auJRR6foEJ7ynpjisKtbiKJbvJsoQ8VPS', 'Administrador', 'vistas/img/usuarios/sanler/401.jpg', 0, '0000-00-00 00:00:00', '2021-03-07 02:50:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(43, 10004, 3, 1, '[{\"id\":\"65\",\"descripcion\":\"PERMANENTES Y BORRABLES\",\"cantidad\":\"20\",\"stock\":\"58\",\"precio\":\"70\",\"total\":\"1400\"}]', 14, 1400, 1414, 'TC-4', '2021-02-27 23:50:13'),
(44, 10005, 11, 1, '[{\"id\":\"66\",\"descripcion\":\"PLASTICO\",\"cantidad\":\"100\",\"stock\":\"100\",\"precio\":\"70\",\"total\":\"7000\"}]', 140, 7000, 7140, 'TD-2', '2021-02-27 23:50:43'),
(45, 10006, 12, 1, '[{\"id\":\"67\",\"descripcion\":\"MARCAS NORMAS\",\"cantidad\":\"4000\",\"stock\":\"1000\",\"precio\":\"2.8\",\"total\":\"11200\"}]', 112, 11200, 11312, 'Efectivo', '2021-02-28 00:01:11'),
(46, 10007, 3, 1, '[{\"id\":\"69\",\"descripcion\":\"FORROS PARA CUADERNOS\",\"cantidad\":\"2000\",\"stock\":\"8000\",\"precio\":\"15\",\"total\":\"30000\"},{\"id\":\"68\",\"descripcion\":\"PELIKAM\",\"cantidad\":\"3000\",\"stock\":\"1000\",\"precio\":\"10\",\"total\":\"30000\"},{\"id\":\"67\",\"descripcion\":\"MARCAS NORMAS\",\"cantidad\":\"500\",\"stock\":\"500\",\"precio\":\"2.8\",\"total\":\"1400\"},{\"id\":\"66\",\"descripcion\":\"PLASTICO\",\"cantidad\":\"50\",\"stock\":\"50\",\"precio\":\"70\",\"total\":\"3500\"},{\"id\":\"65\",\"descripcion\":\"PERMANENTES Y BORRABLES\",\"cantidad\":\"20\",\"stock\":\"38\",\"precio\":\"70\",\"total\":\"1400\"},{\"id\":\"62\",\"descripcion\":\"CUADERNO UNIVERSITARIO\",\"cantidad\":\"50\",\"stock\":\"50\",\"precio\":\"1.2\",\"total\":\"60\"},{\"id\":\"63\",\"descripcion\":\"TAMAÑO A4\",\"cantidad\":\"100\",\"stock\":\"100\",\"precio\":\"0.1\",\"total\":\"10\"},{\"id\":\"64\",\"descripcion\":\"PUNTA FINA\",\"cantidad\":\"50\",\"stock\":\"50\",\"precio\":\"35\",\"total\":\"1750\"},{\"id\":\"61\",\"descripcion\":\"LIBRO DE INGLES\",\"cantidad\":\"10\",\"stock\":\"40\",\"precio\":\"7\",\"total\":\"70\"}]', 681.9, 68190, 68871.9, 'TC-12', '2021-02-28 00:03:33'),
(47, 10008, 12, 1, '[{\"id\":\"70\",\"descripcion\":\"ACERO INOXIDABLE\",\"cantidad\":\"6000\",\"stock\":\"74000\",\"precio\":\"75\",\"total\":\"450000\"}]', 4500, 450000, 454500, 'Efectivo', '2021-02-28 00:09:55'),
(48, 10009, 13, 1, '[{\"id\":\"70\",\"descripcion\":\"TIJERAS DE ACERO INOXIDABLE\",\"cantidad\":\"4\",\"stock\":\"73996\",\"precio\":\"75\",\"total\":\"300\"},{\"id\":\"69\",\"descripcion\":\"FORROS PARA CUADERNOS\",\"cantidad\":\"20\",\"stock\":\"7980\",\"precio\":\"15\",\"total\":\"300\"},{\"id\":\"68\",\"descripcion\":\"BORRADOR PELIKAM\",\"cantidad\":\"5\",\"stock\":\"995\",\"precio\":\"10\",\"total\":\"50\"}]', 65, 650, 715, 'Efectivo', '2021-03-02 15:23:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
