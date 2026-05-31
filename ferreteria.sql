-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2026 a las 21:00:15
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ferreteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`) VALUES
(1, 'Herramientas y equipos'),
(2, 'Fijación y Ferreteria'),
(3, 'Herramientas Manuales'),
(4, 'Herramientas eléctricas'),
(5, 'Herrajes'),
(6, 'Tornilleria y perneria'),
(7, 'Clavos y grapas'),
(8, 'Abrasivos y adhesivos'),
(9, 'Tuberias y conexiones'),
(10, 'Accesorios sanitarios'),
(11, 'Mobiliario y griferia'),
(12, 'Material de instalación'),
(13, 'Iluminación'),
(14, 'Pinturas'),
(15, 'Jardin'),
(16, 'Articulos limpieza'),
(17, 'Equipo de protección');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `telefono`) VALUES
(1, 'hetzabell madera coronel', '3344556677'),
(4, 'angel daniel', '78798u789'),
(5, 'Diego', '55643948739');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_detalle` int(11) NOT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_detalle`, `id_venta`, `id_producto`, `cantidad`, `subtotal`) VALUES
(3, 4, 1, 4, 124),
(4, 5, 1, 3, 93),
(5, 6, 1, 4, 124),
(6, 6, 2, 3, 3),
(7, 7, 1, 3, 93),
(8, 7, 2, 6, 6),
(9, 8, 1, 3, 93),
(10, 8, 2, 44, 44),
(11, 9, 2, 7, 7),
(12, 9, 1, 8, 248),
(13, 10, 4, 1, 89);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `precio`, `stock`, `id_categoria`, `id_proveedor`) VALUES
(1, 'resistol 5000', 31, 82, 8, 1),
(2, 'tornillo', 1, 40, 6, 1),
(4, 'Martillo', 89, 99, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre`, `telefono`, `direccion`) VALUES
(1, 'marcos perez', '7y8798', 'jdsklafjsdklajhfiodsa dsdfsa'),
(2, 'TRUPER', '55839173681', 'CDMX');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipousuarios`
--

CREATE TABLE `tbl_tipousuarios` (
  `idtbl_tipousuarios` int(11) NOT NULL,
  `tbl_tipousuariosdescripcion` varchar(45) NOT NULL,
  `tbl_tipousuariosactivo` bit(1) NOT NULL,
  `tbl_tipousuariosadministrador` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_tipousuarios`
--

INSERT INTO `tbl_tipousuarios` (`idtbl_tipousuarios`, `tbl_tipousuariosdescripcion`, `tbl_tipousuariosactivo`, `tbl_tipousuariosadministrador`) VALUES
(1, 'Administrador', b'1', b'1'),
(2, 'Orientación', b'1', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `idtbl_usuarios` int(11) NOT NULL,
  `tbl_usuariosnombre` varchar(45) NOT NULL,
  `tbl_usuariosappaterno` varchar(45) NOT NULL,
  `tbl_usuariosapmaterno` varchar(45) DEFAULT NULL,
  `tbl_usuariosusuario` varchar(45) NOT NULL,
  `tbl_usuarioscontra` varchar(45) NOT NULL,
  `idtbl_tipousuarios` int(11) NOT NULL,
  `tbl_usuariosactivo` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`idtbl_usuarios`, `tbl_usuariosnombre`, `tbl_usuariosappaterno`, `tbl_usuariosapmaterno`, `tbl_usuariosusuario`, `tbl_usuarioscontra`, `idtbl_tipousuarios`, `tbl_usuariosactivo`) VALUES
(1, 'Administrador', '.', '', 'admin', 'password', 1, b'1'),
(3, 'Angel', 'Zenil', 'Madera', 'azenil', '1006', 2, b'1'),
(8, 'Orientacion', '.', '', 'orientacion', '123456789', 2, b'1'),
(11, 'Antonio Emanuel', 'Oaxaca', 'Simón', 'Antony', 'Antonio1409', 1, b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `fecha`, `id_cliente`) VALUES
(4, '2026-05-20', 1),
(5, '2026-05-20', 1),
(6, '2026-05-20', 1),
(7, '2026-05-20', 1),
(8, '2026-05-20', 4),
(9, '2026-05-20', 1),
(10, '2026-05-20', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `tbl_tipousuarios`
--
ALTER TABLE `tbl_tipousuarios`
  ADD PRIMARY KEY (`idtbl_tipousuarios`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`idtbl_usuarios`),
  ADD KEY `idtbl_tipousuarios` (`idtbl_tipousuarios`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_tipousuarios`
--
ALTER TABLE `tbl_tipousuarios`
  MODIFY `idtbl_tipousuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `idtbl_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`),
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD CONSTRAINT `tbl_usuarios_ibfk_1` FOREIGN KEY (`idtbl_tipousuarios`) REFERENCES `tbl_tipousuarios` (`idtbl_tipousuarios`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
