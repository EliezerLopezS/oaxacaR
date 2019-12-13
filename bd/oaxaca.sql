-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2019 a las 20:53:32
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `oaxaca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(7) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Clave` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `Nombre`, `Clave`) VALUES
(1, 'admin', 'admin'),
(2, 'donaldo', 'donaldo'),
(3, 'eliezer', '3713236'),
(4, 'oswaldo', 'rodriguez'),
(5, 'juan', 'juan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `CodigoCat` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`CodigoCat`, `Nombre`, `Descripcion`) VALUES
('C1', 'Hombre', 'artículos para caballero'),
('C2', 'Mujeres', 'mujeres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `NIT` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `NombreCompleto` varchar(70) NOT NULL,
  `Apellido` varchar(70) NOT NULL,
  `Clave` text NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`NIT`, `Nombre`, `NombreCompleto`, `Apellido`, `Clave`, `Direccion`, `Telefono`, `Email`) VALUES
('CUSO980220HMCRNS05', 'donaldo', 'Oscar', 'Cruz', 'donaldo', 'los pinos', '9531201209', 'donaldoc56@gmail.com'),
('CUSO990220MHCSS05', 'manuel', 'Manuel', 'Marinez martinez', '2bb60ac8d2c20ee0785c90e7d1eae15d', 'los sauces', '9531021022', 'marni@gmail.com'),
('LOSE980224HOCPNL14', 'OSWALDO', 'OSWALDO', 'OSWALDO', 'e10adc3949ba59abbe56e057f20f883e', 'los pinos', '9531645366', 'donaldoc56@gmail.com'),
('LOSE980224HOCPNL15', 'ELIEZER', 'eliezer', 'lopez sandoval', '405aa2dfb61d4cf8c105011d09eac0dd', 'PINOS', '9531645366', '371EZE6.375@GMAIL.COM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentabanco`
--

CREATE TABLE `cuentabanco` (
  `id` int(50) NOT NULL,
  `NumeroCuenta` varchar(100) NOT NULL,
  `NombreBanco` varchar(100) NOT NULL,
  `NombreBeneficiario` varchar(100) NOT NULL,
  `TipoCuenta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuentabanco`
--

INSERT INTO `cuentabanco` (`id`, `NumeroCuenta`, `NombreBanco`, `NombreBeneficiario`, `TipoCuenta`) VALUES
(1, '5512382322519937', 'Banco Azteca', 'Eliezer Sandoval', 'Debito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `NumPedido` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `CantidadProductos` int(20) NOT NULL,
  `PrecioProd` decimal(30,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`NumPedido`, `CodigoProd`, `CantidadProductos`, `PrecioProd`) VALUES
(7, '0009', 1, '190.00'),
(8, '000001', 1, '339.50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `NombreProd` varchar(30) NOT NULL,
  `CodigoCat` varchar(30) NOT NULL,
  `Precio` decimal(30,2) NOT NULL,
  `Descuento` int(2) NOT NULL,
  `Modelo` varchar(30) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Stock` int(20) NOT NULL,
  `NITProveedor` varchar(30) NOT NULL,
  `Imagen` varchar(150) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `CodigoProd`, `NombreProd`, `CodigoCat`, `Precio`, `Descuento`, `Modelo`, `Marca`, `Stock`, `NITProveedor`, `Imagen`, `Nombre`, `Estado`) VALUES
(1, '000001', 'SOMBRERO DE PALMA', 'C1', '350.00', 3, 'SOMBRERO BAQUERO', 'ARTESANAL', 8, '000000001', '000001.jpg', 'donaldo', 'Activo'),
(2, '002', 'Falda bordada', 'C2', '520.00', 0, 'Falda Bordad', 'Artesanal', 9, '002', '002.jpg', 'donaldo', 'Activo'),
(3, '003', 'Blusa borda', 'C2', '450.00', 0, 'Cuello en V', 'regional', 44, '002', '003.jpg', 'donaldo', 'Activo'),
(4, '004', 'Gabán', 'C1', '820.00', 0, 'bordados de caballo', 'regional', 2, '000000001', '004.jpg', 'donaldo', 'Activo'),
(5, '0006', 'Pantalon de manta', 'C1', '380.00', 0, 'Pantalon de manta Tradicional', 'Artesanal', 10, '000000001', '0006.jpg', 'donaldo', 'Activo'),
(6, '0007', 'Paliacate', 'C1', '100.00', 0, 'pañuelo  de color rojo', 'Regional', 5, '000000001', '0007.jpg', 'donaldo', 'Activo'),
(7, '0008', 'Sombrero', 'C1', '250.00', 0, 'Sombrero de palma tejido a man', 'Artesanal', 12, '002', '0008.jpg', 'donaldo', 'Activo'),
(8, '0009', 'Sombrero', 'C1', '190.00', 0, 'Sombrero de palma  de plastico', 'Regional', 8, '000000001', '0009.jpg', 'donaldo', 'Activo'),
(9, '00010', 'Huareches', 'C2', '280.00', 0, 'Huarache de cuero', 'Tradicional', 5, '002', '00010.jpg', 'donaldo', 'Activo'),
(10, '00011', 'Blusa regional', 'C2', '620.00', 0, 'blusa tipica cuello V', 'Artesanal', 15, '000000001', '00011.jpg', 'donaldo', 'Activo'),
(11, '00012', 'Bolsa de mano', 'C2', '200.00', 0, 'Bolsa de mano tejida', 'Regional', 12, '000000001', '00012.jpg', 'donaldo', 'Activo'),
(12, '00013', 'Huareches', 'C2', '330.00', 0, 'Huarache de cuero decorado', 'Artesanal', 19, '002', '00013.jpg', 'donaldo', 'Activo'),
(13, '00014', 'Huipil', 'C2', '1500.00', 0, 'Huipil con bordados de mano', 'Regional', 20, '002', '00014.jpg', 'donaldo', 'Activo'),
(14, '00015', 'Playera', 'C2', '550.00', 0, 'Playera artesanal con cuello V', 'Artesanal', 20, '000000001', '00015.jpg', 'donaldo', 'Activo'),
(15, '00016', 'Huipil artesanal', 'C2', '1600.00', 0, 'Huipil con decorados artesanal', 'Artesanal', 15, '000000001', '00016.jpg', 'donaldo', 'Activo'),
(16, '00017', 'Tenate', 'C2', '300.00', 0, 'Tenate de  palma de plastico', 'Artesanal', 10, '000000001', '00017.jpg', 'donaldo', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `NITProveedor` varchar(30) NOT NULL,
  `NombreProveedor` varchar(30) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `PaginaWeb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`NITProveedor`, `NombreProveedor`, `Direccion`, `Telefono`, `PaginaWeb`) VALUES
('000000001', 'MARIA TERESA MARTINEZ', 'Tlaxiaco Oaxaca Barrio san nicolas', '9531061066', 'http://oaxacatradicional.com'),
('002', 'Mariana Gutierrez', 'Colonia los pinos', '9531203434', 'http://oaxacatradicional.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `NumPedido` int(20) NOT NULL,
  `Fecha` varchar(150) NOT NULL,
  `NIT` varchar(30) NOT NULL,
  `TotalPagar` decimal(30,2) NOT NULL,
  `Estado` varchar(150) NOT NULL,
  `NumeroDeposito` varchar(50) NOT NULL,
  `TipoEnvio` varchar(37) NOT NULL,
  `Adjunto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`NumPedido`, `Fecha`, `NIT`, `TotalPagar`, `Estado`, `NumeroDeposito`, `TipoEnvio`, `Adjunto`) VALUES
(7, '06-06-2019', 'CUSO980220HMCRNS05', '190.00', 'Pendiente', '22434', 'Envio Por Currier', 'comprobante_1.jpg'),
(8, '06-06-2019', 'CUSO980220HMCRNS05', '339.50', 'Pendiente', '099765455', 'Envio Por Currier', 'comprobante_2.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CodigoCat`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`NIT`);

--
-- Indices de la tabla `cuentabanco`
--
ALTER TABLE `cuentabanco`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD KEY `NumPedido` (`NumPedido`),
  ADD KEY `CodigoProd` (`CodigoProd`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CodigoCat` (`CodigoCat`),
  ADD KEY `NITProveedor` (`NITProveedor`),
  ADD KEY `Agregado` (`Nombre`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`NITProveedor`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`NumPedido`),
  ADD KEY `NIT` (`NIT`),
  ADD KEY `NIT_2` (`NIT`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `cuentabanco`
--
ALTER TABLE `cuentabanco`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `NumPedido` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuentabanco`
--
ALTER TABLE `cuentabanco`
  ADD CONSTRAINT `cuentabanco_ibfk_1` FOREIGN KEY (`id`) REFERENCES `administrador` (`id`);

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_9` FOREIGN KEY (`NumPedido`) REFERENCES `venta` (`NumPedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_7` FOREIGN KEY (`CodigoCat`) REFERENCES `categoria` (`CodigoCat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_8` FOREIGN KEY (`NITProveedor`) REFERENCES `proveedor` (`NITProveedor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`NIT`) REFERENCES `cliente` (`NIT`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
