-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-06-2020 a las 23:50:42
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lamascoteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `idCategoria`, `nombre`, `descripcion`, `precio`) VALUES
(1001, 2001, 'Cepillo de Peinar', 'Excelente cepillo para peinar el pelaje de los felinos, una manera eficaz de mantener suave el pelo de tu mascota', 7000),
(1002, 2001, 'Parque de juegos', 'Hermoso parque de juegos para distraer y entretener a tu gato, la mejor de compartir el tiempo con tu mascota', 55000),
(1004, 2001, 'Cuido en croquetas', 'excelentes croquetas hechas 100% de pescado ideal para la dieta balanceada de un mascota.', 25000),
(1005, 2002, 'juguete masticable', 'un juguete perfecto para esos momentos de inquietud de tu fiel amigo, hecho en plástico y con un pito para mayor diversion', 8000),
(1006, 2002, 'Cama Alcochada', 'Hermosa cama hecha 100% en algodo de color negro, para que tu mascota tengo un lugar donde descansar.', 70000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblCategorias`
--

CREATE TABLE `tblCategorias` (
  `idCategoria` int(11) NOT NULL,
  `codigo` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblCategorias`
--

INSERT INTO `tblCategorias` (`idCategoria`, `codigo`, `nombre`, `descripcion`) VALUES
(2001, 'LMCat', 'Gatos', 'Esta categoria esta realizada pensando en el cuidado de nuestras mascotas felinas, encontraras todo lo necesario para estos animales'),
(2002, 'LMDog', 'Perros', 'Esta categoria esta realizada pensando en el cuidado de nuestras mascotas caninas, encontraras todo lo necesario para estos animales'),
(2004, 'LMFish', 'Peces', 'Esta categoria esta realizada pensando en el cuidado de nuestras mascotas acuáticas, encontraras todo lo necesario para sus habitas y su ecosistema ideal.'),
(2005, 'LMBirds', 'Aves', 'Esta categoria esta realizada pensando en el cuidado de nuestras mascotas, encontraras todo lo necesario para sus habitas y su ecosistema ideal.'),
(2006, 'LMAdopcion', 'Adopción', 'Esta categoria esta realizada con el fin de ayudar a todas esas mascotas indefensas a encontrar un hogar, un lugar donde reciban y puedan dar mucho amor.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblordenes`
--

CREATE TABLE `tblordenes` (
  `idOrden` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblordenes`
--

INSERT INTO `tblordenes` (`idOrden`, `idProducto`, `idUsuario`, `fecha`) VALUES
(1000001, 1001, 10001, '2020-04-23 17:44:48'),
(1000002, 1002, 10001, '2020-04-23 17:44:48'),
(1000003, 1003, 10001, '2020-04-23 17:48:09'),
(1000004, 1002, 10003, '2020-04-15 17:48:09'),
(1000005, 1001, 10002, '2020-04-21 17:48:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblroles`
--

CREATE TABLE `tblroles` (
  `idRol` int(11) NOT NULL,
  `código` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblroles`
--

INSERT INTO `tblroles` (`idRol`, `código`, `nombre`) VALUES
(1, 'LM01', 'Cliente'),
(2, 'LM02', 'Administrador'),
(4, 'LM03', 'Empleado'),
(5, 'LM04', 'Proveedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `telefono` int(15) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nombre`, `clave`, `correo`, `usuario`, `telefono`, `apellido`, `direccion`, `iduser`) VALUES
('carlos', '123456', 'carlis@gmail.com', 'weisman', 23456, 'gallego', 'buenos aires', 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `tblCategorias`
--
ALTER TABLE `tblCategorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `tblordenes`
--
ALTER TABLE `tblordenes`
  ADD PRIMARY KEY (`idOrden`);

--
-- Indices de la tabla `tblroles`
--
ALTER TABLE `tblroles`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT de la tabla `tblCategorias`
--
ALTER TABLE `tblCategorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2007;

--
-- AUTO_INCREMENT de la tabla `tblordenes`
--
ALTER TABLE `tblordenes`
  MODIFY `idOrden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000006;

--
-- AUTO_INCREMENT de la tabla `tblroles`
--
ALTER TABLE `tblroles`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
