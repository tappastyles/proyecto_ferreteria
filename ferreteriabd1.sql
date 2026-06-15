-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2026 a las 04:12:32
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE DATABASE IF NOT EXISTS ferreteriabd1 CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE ferreteriabd1;
--
-- Base de datos: `ferreteriabd1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categoria`
--

CREATE TABLE `tbl_categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_categoria`
--

INSERT INTO `tbl_categoria` (`id_categoria`, `nombre`) VALUES
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
-- Estructura de tabla para la tabla `tbl_ciudad`
--

CREATE TABLE `tbl_ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_ciudad`
--

INSERT INTO `tbl_ciudad` (`id_ciudad`, `nombre`) VALUES
(1, 'ACAMBAY DE RUIZ CASTAÑEDA'),
(2, 'ACAMBAY DE RUIZ CASTAÑEDA'),
(3, 'ACOLMAN'),
(4, 'ACULCO'),
(5, 'ALMOLOYA DE ALQUISIRAS'),
(6, 'ALMOLOYA DE JUÁREZ'),
(7, 'ALMOLOYA DEL RÍO'),
(8, 'AMANALCO'),
(9, 'AMATEPEC'),
(10, 'AMECAMECA'),
(11, 'APAXCO'),
(12, 'ATENCO'),
(13, 'ATIZAPÁN'),
(14, 'ATIZAPÁN DE ZARAGOZA'),
(15, 'ATLACOMULCO'),
(16, 'ATLAUTLA'),
(17, 'AXAPUSCO'),
(18, 'AYAPANGO'),
(19, 'CALIMAYA'),
(20, 'CAPULHUAC'),
(21, 'COACALCO DE BERRIOZÁBAL'),
(22, 'COATEPEC HARINAS'),
(23, 'COCOTITLÁN'),
(24, 'COYOTEPEC'),
(25, 'CUAUTITLÁN'),
(26, 'CUAUTITLÁN IZCALLI'),
(27, 'CHALCO'),
(28, 'CHAPA DE MOTA'),
(29, 'CHAPULTEPEC'),
(30, 'CHIAUTLA'),
(31, 'CHICOLOAPAN'),
(32, 'CHICONCUAC'),
(33, 'CHIMALHUACÁN'),
(34, 'DONATO GUERRA'),
(35, 'ECATEPEC DE MORELOS'),
(36, 'ECATZINGO'),
(37, 'HUEHUETOCA'),
(38, 'HUEYPOXTLA'),
(39, 'HUIXQUILUCAN'),
(40, 'ISIDRO FABELA'),
(41, 'IXTAPALUCA'),
(42, 'IXTAPAN DE LA SAL'),
(43, 'IXTAPAN DEL ORO'),
(44, 'IXTLAHUACA'),
(45, 'XALATLACO'),
(46, 'JALTENCO'),
(47, 'JILOTEPEC'),
(48, 'JILOTZINGO'),
(49, 'JIQUIPILCO'),
(50, 'JOCOTITLÁN'),
(51, 'JOQUICINGO'),
(52, 'JUCHITEPEC'),
(53, 'LERMA'),
(54, 'MALINALCO'),
(55, 'MELCHOR OCAMPO'),
(56, 'METEPEC'),
(57, 'MEXICALTZINGO'),
(58, 'MORELOS'),
(59, 'NAUCALPAN DE JUÁREZ'),
(60, 'NEXTLALPAN'),
(61, 'NEZAHUALCÓYOTL'),
(62, 'NICOLÁS ROMERO'),
(63, 'NOPALTEPEC'),
(64, 'OCOYOACAC'),
(65, 'OCUILAN'),
(66, 'EL ORO'),
(67, 'OTUMBA'),
(68, 'OTZOLOAPAN'),
(69, 'OTZOLOTEPEC'),
(70, 'OZUMBA'),
(71, 'PAPALOTLA'),
(72, 'LA PAZ'),
(73, 'POLOTITLÁN'),
(74, 'RAYÓN'),
(75, 'SAN ANTONIO LA ISLA'),
(76, 'SAN FELIPE DEL PROGRESO'),
(77, 'SAN MARTÍN DE LAS PIRÁMIDES'),
(78, 'SAN MATEO ATENCO'),
(79, 'SAN SIMÓN DE GUERRERO'),
(80, 'SANTO TOMÁS'),
(81, 'SOYANIQUILPAN DE JUÁREZ'),
(82, 'SULTEPEC'),
(83, 'TECÁMAC'),
(84, 'TEJUPILCO'),
(85, 'TEMAMATLA'),
(86, 'TEMASCALAPA'),
(87, 'TEMASCALCINGO'),
(88, 'TEMASCALTEPEC'),
(89, 'TEMOAYA'),
(90, 'TENANCINGO'),
(91, 'TENANGO DEL AIRE'),
(92, 'TENANGO DEL VALLE'),
(93, 'TEOLOYUCAN'),
(94, 'TEOTIHUACÁN'),
(95, 'TEPETLAOXTOC'),
(96, 'TEPETLIXPA'),
(97, 'TEPOTZOTLÁN'),
(98, 'TEQUIXQUIAC'),
(99, 'TEXCALTITLÁN'),
(100, 'TEXCALYACAC'),
(101, 'TEXCOCO'),
(102, 'TEZOYUCA'),
(103, 'TIANGUISTENCO'),
(104, 'TIMILPAN'),
(105, 'TLALMANALCO'),
(106, 'TLALNEPANTLA DE BAZ'),
(107, 'TLATLAYA'),
(108, 'TOLUCA'),
(109, 'TONATICO'),
(110, 'TULTEPEC'),
(111, 'TULTITLÁN'),
(112, 'VALLE DE BRAVO'),
(113, 'VILLA DE ALLENDE'),
(114, 'VILLA DEL CARBÓN'),
(115, 'VILLA GUERRERO'),
(116, 'VILLA VICTORIA'),
(117, 'XONACATLÁN'),
(118, 'ZACAZONAPAN'),
(119, 'ZACUALPAN'),
(120, 'ZINACANTEPEC'),
(121, 'ZUMPAHUACÁN'),
(122, 'ZUMPANGO'),
(123, 'VALLE DE CHALCO SOLIDARIDAD'),
(124, 'LUVIANOS'),
(125, 'SAN JOSÉ DEL RINCÓN'),
(126, 'TONANITLA'),
(127, 'FORÁNEO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `puntos` int(11) NOT NULL,
  `rfc` varchar(13) NOT NULL,
  `id_ciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`id_cliente`, `nombre`, `telefono`, `puntos`, `rfc`, `id_ciudad`) VALUES
(1, 'General', '5555555555', 0, 'XXXXXXXXXXXXX', 25),
(4, 'Angel Daniel Zenil Madera', '5578654323', 49, 'ZEMA090610FC6', 26),
(10, 'Hetzabell Madera Coronel', '5519038965', 450, 'MACH820206RZ2', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle_venta`
--

CREATE TABLE `tbl_detalle_venta` (
  `id_detalle` int(11) NOT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_detalle_venta`
--

INSERT INTO `tbl_detalle_venta` (`id_detalle`, `id_venta`, `id_producto`, `cantidad`, `subtotal`) VALUES
(3, 4, 1, 4, 124),
(4, 5, 1, 3, 93),
(5, 6, 1, 4, 124),
(6, 6, 2, 3, 3),
(7, 7, 1, 3, 93),
(8, 7, 2, 6, 6),
(9, 8, 1, 1, 1),
(10, 8, 2, 5, 1),
(11, 9, 1, 1, 31),
(12, 10, 5, 1, 80),
(13, 10, 1, 1, 31),
(14, 11, 1, 1, 496),
(15, 11, 4, 17, 8.5),
(16, 12, 6, 1, 5),
(17, 12, 2, 1, 1),
(18, 13, 5, 1, 80),
(19, 13, 1, 1, 31),
(20, 13, 6, 1, 5),
(21, 14, 6, 1, 5),
(22, 14, 6, 1, 5),
(23, 14, 1, 1, 589),
(24, 15, 1, 10, 310),
(25, 16, 5, 1, 80),
(26, 17, 6, 1, 5),
(27, 17, 1, 1, 31),
(28, 17, 2, 1, 1),
(29, 18, 5, 1, 80),
(30, 18, 6, 1, 5),
(31, 19, 5, 4, 320),
(32, 20, 6, 1, 42),
(33, 20, 6, 1, 42);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_metodopago`
--

CREATE TABLE `tbl_metodopago` (
  `id_metodopago` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_metodopago`
--

INSERT INTO `tbl_metodopago` (`id_metodopago`, `nombre`) VALUES
(1, 'Efectivo'),
(2, 'Transferencia'),
(3, 'Tarjeta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_producto`
--

CREATE TABLE `tbl_producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_producto`
--

INSERT INTO `tbl_producto` (`id_producto`, `nombre`, `precio`, `stock`, `id_categoria`, `id_proveedor`) VALUES
(1, 'Caja de herramientas plástica 16\"', 289, 1, 8, 1),
(2, 'Nivel de burbuja 60 cm', 125, 6, 6, 1),
(4, 'Flexómetro 5 m', 49, 6, 6, 1),
(5, 'Anclaje de expansión 1/4\" (caja 20 pzas)', 85, 8, 1, 1),
(6, 'Abrazadera sin fin 1\" (paquete 10 pzas)', 42, 6, 14, 1),
(9, 'Brida de nailon 3.6x200 mm (bolsa 100 pzas)', 35, 74, 2, 8),
(10, 'Martillo de uña 20 oz', 98, 41, 3, 10),
(11, 'Destornillador plano 6x100 mm', 22, 86, 3, 9),
(12, 'Alicate universal 8\"', 65, 53, 3, 6),
(13, 'Llave ajustable 10\"', 79, 37, 3, 11),
(14, 'Taladro eléctrico 1/2\" 550W', 890, 22, 4, 11),
(15, 'Amoladora angular 4-1/2\" 750W', 720, 18, 4, 11),
(16, 'Lijadora orbital 180W', 450, 25, 4, 6),
(17, 'Bisagra para puerta 3\" (par)', 38, 68, 5, 12),
(18, 'Cerradura de seguridad para puerta principal', 320, 14, 5, 12),
(19, 'Manija para mueble (juego 2 pzas)', 25, 79, 5, 12),
(20, 'Tornillo para madera 4x30 mm (caja 100 pzas)', 28, 91, 6, 12),
(21, 'Perno hexagonal 3/8x50 mm (caja 50 pzas)', 62, 46, 6, 12),
(22, 'Tuerca hexagonal 1/4\" (caja 200 pzas)', 19, 105, 6, 12),
(23, 'Clavo para madera 2\" (kg)', 32, 58, 7, 11),
(24, 'Clavo para concreto 1-1/2\" (caja 100 pzas)', 24, 72, 7, 11),
(25, 'Grapa para madera 6 mm (caja 500 pzas)', 18, 83, 7, 11),
(26, 'Papel de lija agua grano 120 (hoja)', 6, 120, 8, 16),
(27, 'Disco de corte para metal 4-1/2\"', 14, 95, 8, 16),
(28, 'Pegamento de contacto 500 ml', 89, 34, 8, 16),
(29, 'Silicona neutra cartucho 280 ml', 32, 67, 8, 16),
(30, 'Tubo PVC sanitario 2\" (tramo 3 m)', 45, 40, 9, 16),
(31, 'Codo PVC 90Â° 2\"', 8, 88, 9, 16),
(32, 'Válvula de esfera 1/2\"', 55, 36, 9, 17),
(33, 'Sifón para lavabo flexible', 29, 52, 10, 18),
(34, 'DesagÃ¼e de piso con rejilla 2\"', 42, 39, 10, 19),
(35, 'Manguera de conexión para inodoro 40 cm', 18, 71, 10, 20),
(36, 'Grifo mezclador para lavabo', 380, 16, 11, 20),
(37, 'Grifo de cocina giratorio', 420, 12, 11, 20),
(38, 'Ducha fija con brazo', 195, 24, 11, 20),
(39, 'Cable eléctrico calibre 12 (metro)', 12, 150, 12, 20),
(40, 'Apagador sencillo', 22, 94, 12, 14),
(41, 'Tomacorriente doble', 26, 87, 12, 14),
(42, 'Tubo conduit ligero 1/2\" (tramo 3 m)', 18, 63, 12, 14),
(43, 'Foco LED 15W luz blanca', 35, 112, 13, 14),
(44, 'Tubo LED 18W 120 cm', 48, 76, 13, 14),
(45, 'Reflector LED 50W', 120, 31, 13, 15),
(46, 'Pintura vinílica blanca 19 L', 580, 19, 14, 15),
(47, 'Esmalte alquidálico rojo 1 L', 75, 44, 14, 15),
(48, 'Rodillo para pintura 9\"', 32, 57, 14, 15),
(49, 'Brocha 2\"', 18, 82, 14, 15),
(50, 'Pala cuadrada con mango', 115, 28, 15, 13),
(51, 'Rastrillo de 14 dientes con mango', 89, 33, 15, 13),
(52, 'Manguera de jardín 15 m', 145, 21, 15, 13),
(53, 'Tijera de podar', 68, 47, 15, 13),
(54, 'Escoba de plástico con mango', 42, 66, 16, 12),
(55, 'Trapeador de algodón con mango', 38, 73, 16, 12),
(56, 'Cubeta plástica 12 L', 25, 59, 16, 12),
(57, 'Recogedor de plástico', 16, 81, 16, 12),
(58, 'Casco de seguridad color blanco', 45, 49, 17, 12),
(59, 'Guantes de cuero (par)', 28, 77, 17, 12),
(60, 'Gafas de protección transparente', 22, 92, 17, 12),
(61, 'Botas de seguridad punta de acero talla 26', 390, 15, 17, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_proveedor`
--

CREATE TABLE `tbl_proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_proveedor`
--

INSERT INTO `tbl_proveedor` (`id_proveedor`, `nombre`, `telefono`, `direccion`) VALUES
(1, 'Truper S.A. de C.V.', '5558999000', 'Av. Industria Automotriz 500, Parque Industrial Toluca 2000, Toluca, Edo. de México, C.P. 50200'),
(6, ' Grupo Ferretodo', '5511683888', 'Calle 5 de Febrero 128, Col. San Miguel, Alcaldía Iztapalapa, CDMX, C.P. 09360'),
(8, ' Nacobre S.A. de C.V.', '5553222000', 'Av. Ceylán 901, Col. Industrial Vallejo, Alcaldía Azcapotzalco, CDMX, C.P. 02300'),
(9, ' TFI Tornillos y Fijaciones', '8183456789', 'Av. Eugenio Garza Sada 2400, Col. Tecnológico, Monterrey, N.L., C.P. 64700'),
(10, ' Eleva Herrajes', '5522734400', 'Calle Dr. Luis Farah 155, Col. San Pedro Xalpa, Alcaldía Azcapotzalco, CDMX, C.P. 02720'),
(11, ' Sika México', '5552612000', 'Blvd. Manuel Ãvila Camacho 369, Piso 10, Lomas de Chapultepec, CDMX, C.P. 11000'),
(12, ' Pinturas Comex', '5552278900', 'Av. Patriotismo 201, Col. San Pedro de los Pinos, Alcaldía Benito Juárez, CDMX, C.P. 03800'),
(13, ' Ingco Herramientas', '3338257700', 'Av. López Mateos Sur 4800, Col. La Calma, Zapopan, Jal., C.P. 45070'),
(14, ' Stanley Black & Decker', '5556283000', 'Av. Vasco de Quiroga 3200, Col. Santa Fe, Alcaldía Ãlvaro Obregón, CDMX, C.P. 01210'),
(15, ' Ferrecentral', '2222478800', 'Blvd. Norte 4508, Col. El Carmen, Puebla, Pue., C.P. 72530'),
(16, ' 3M México', '5552701000', 'Av. Santa Fe 190, Col. Santa Fe, Alcaldía Álvaro Obregón, CDMX, C.P. 01219'),
(17, ' Bosch México', '5552842000', 'Av. Insurgentes Sur 1602, Piso 12, Col. Crédito Constructor, Alcaldía Benito Juárez, CDMX, C.P. 03940'),
(18, ' La Casa del Herrero', '4422145500', 'Av. Constituyentes 125, Col. Centro, Querétaro, Qro., C.P. 76000'),
(19, ' Surtidora Mexicana', '8183316405', 'Calle 5 de Mayo 345, Col. Centro, Monterrey, N.L., C.P. 64000'),
(20, ' Ferretería Calzada', '3336579401', 'Av. Vallarta 2100, Col. Americana, Guadalajara, Jal., C.P. 44160');

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
(2, 'Vendedor 1', b'1', b'0'),
(28, 'Cajero', b'1', b'0'),
(30, 'Cajero 2', b'1', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `idtbl_usuarios` int(11) NOT NULL,
  `tbl_usuariosnombre` varchar(45) NOT NULL,
  `tbl_usuariosappaterno` varchar(45) NOT NULL,
  `tbl_usuariosapmaterno` varchar(45) DEFAULT NULL,
  `tbl_usuariosusuario` varchar(15) NOT NULL,
  `tbl_usuarioscontra` varchar(15) NOT NULL,
  `idtbl_tipousuarios` int(11) NOT NULL,
  `tbl_usuariosactivo` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`idtbl_usuarios`, `tbl_usuariosnombre`, `tbl_usuariosappaterno`, `tbl_usuariosapmaterno`, `tbl_usuariosusuario`, `tbl_usuarioscontra`, `idtbl_tipousuarios`, `tbl_usuariosactivo`) VALUES
(1, 'Administrador', '.', '', 'admin', 'password', 1, b'1'),
(8, 'Caja', '.', '', 'cajero', '123456789', 28, b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_venta`
--

CREATE TABLE `tbl_venta` (
  `id_venta` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_metodopago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_venta`
--

INSERT INTO `tbl_venta` (`id_venta`, `fecha`, `id_cliente`, `id_metodopago`) VALUES
(4, '2026-05-20', 10, 1),
(5, '2026-05-20', 4, 2),
(6, '2026-05-20', 4, 3),
(7, '2026-05-20', 10, 1),
(8, '2026-05-26', 1, 1),
(9, '2026-05-26', 10, 1),
(10, '2026-05-26', 1, 1),
(11, '2026-05-29', 4, 2),
(12, '2026-06-01', 4, 2),
(13, '2026-06-01', 10, 1),
(14, '2026-06-01', 1, 1),
(15, '2026-06-01', 4, 1),
(16, '2026-06-01', 1, 1),
(17, '2026-06-01', 1, 2),
(18, '2026-06-07', 4, 3),
(19, '2026-06-07', 4, 1),
(20, '2026-06-12', 4, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `tbl_ciudad`
--
ALTER TABLE `tbl_ciudad`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_ciudad` (`id_ciudad`);

--
-- Indices de la tabla `tbl_detalle_venta`
--
ALTER TABLE `tbl_detalle_venta`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `tbl_metodopago`
--
ALTER TABLE `tbl_metodopago`
  ADD PRIMARY KEY (`id_metodopago`);

--
-- Indices de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `tbl_proveedor`
--
ALTER TABLE `tbl_proveedor`
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
-- Indices de la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_metodopago` (`id_metodopago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `tbl_ciudad`
--
ALTER TABLE `tbl_ciudad`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_detalle_venta`
--
ALTER TABLE `tbl_detalle_venta`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `tbl_metodopago`
--
ALTER TABLE `tbl_metodopago`
  MODIFY `id_metodopago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `tbl_proveedor`
--
ALTER TABLE `tbl_proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tbl_tipousuarios`
--
ALTER TABLE `tbl_tipousuarios`
  MODIFY `idtbl_tipousuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `idtbl_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD CONSTRAINT `tbl_cliente_ibfk_1` FOREIGN KEY (`id_ciudad`) REFERENCES `tbl_ciudad` (`id_ciudad`);

--
-- Filtros para la tabla `tbl_detalle_venta`
--
ALTER TABLE `tbl_detalle_venta`
  ADD CONSTRAINT `tbl_detalle_venta_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `tbl_venta` (`id_venta`),
  ADD CONSTRAINT `tbl_detalle_venta_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `tbl_producto` (`id_producto`);

--
-- Filtros para la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  ADD CONSTRAINT `tbl_producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `tbl_categoria` (`id_categoria`),
  ADD CONSTRAINT `tbl_producto_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `tbl_proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD CONSTRAINT `tbl_usuarios_ibfk_1` FOREIGN KEY (`idtbl_tipousuarios`) REFERENCES `tbl_tipousuarios` (`idtbl_tipousuarios`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  ADD CONSTRAINT `tbl_venta_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `tbl_cliente` (`id_cliente`),
  ADD CONSTRAINT `tbl_venta_ibfk_2` FOREIGN KEY (`id_metodopago`) REFERENCES `tbl_metodopago` (`id_metodopago`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
