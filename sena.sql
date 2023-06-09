-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2023 a las 01:09:17
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sena`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `paises_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`, `paises_id`) VALUES
(21, 'Andalucía', 1),
(22, 'Cataluña', 1),
(23, 'Comunidad de Madrid', 1),
(24, 'Comunidad Valenciana', 1),
(25, 'Galicia', 1),
(26, 'Castilla y León', 1),
(27, 'País Vasco', 1),
(28, 'Castilla-La Mancha', 1),
(29, 'Canarias', 1),
(30, 'Región de Murcia', 1),
(31, 'Aragón', 1),
(32, 'Extremadura', 1),
(33, 'Islas Baleares', 1),
(34, 'Asturias', 1),
(35, 'Navarra', 1),
(36, 'Cantabria', 1),
(37, 'La Rioja', 1),
(38, 'Ceuta (ciudad autónoma)', 1),
(39, 'Melilla (ciudad autónoma)', 1),
(40, 'Principado de Andorra', 1),
(41, 'Goiás', 2),
(42, 'Acre', 2),
(43, 'Alagoas', 2),
(44, 'Amapá', 2),
(45, 'amazonas', 2),
(46, 'Bahía', 2),
(47, 'Ceará', 2),
(48, 'Espírito Santo', 2),
(49, 'Maranhão', 2),
(50, 'Mato Grosso', 2),
(51, 'Mato Grosso do Sul', 2),
(52, 'Minas Gerais', 2),
(53, 'Pará', 2),
(54, 'Paraná', 2),
(55, 'Pernambuco', 2),
(56, 'Piauí', 2),
(57, 'Paraíba', 2),
(58, 'Río de Janeiro', 2),
(59, 'Río Grande do Norte', 2),
(60, 'Río Grande do Sul', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuelas`
--

CREATE TABLE `escuelas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `paises_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `escuelas`
--

INSERT INTO `escuelas` (`id`, `nombre`, `direccion`, `telefono`, `paises_id`) VALUES
(1, 'Colegio La Salle', 'Calle Falsa, 123, Ciudad Ficticia, Provincia ', '+34 912 345 678', 1),
(2, 'Colegio San Ignacio', 'Avenida Imaginaria, 456, Pueblo Inventado, Re', '+34 934 567 890', 1),
(3, 'Instituto Santa María', 'Plaza Ficticia, 789, Villa Irreal, Estado Ima', '+34 956 789 012', 1),
(4, 'Escuela Montessori Barcelona', 'Calle Ficticia, 321, Ciudad de Ensueño, Depar', '+34 910 123 456', 1),
(5, 'Colegio Sagrado Corazón', 'Avenida Imaginaria, 654, Pueblo Irreal, Regió', '+34 921 234 567', 1),
(6, 'Institución Educativa SEK', 'Calle Falsa, 987, Ciudad Ilusoria, Provincia ', '+34 931 456 789', 1),
(7, 'Colegio San Patricio', 'Plaza Ficticia, 654, Villa de Ensueño, Estado', '+34 955 678 901', 1),
(8, 'Escuela Internacional de Madrid', 'Avenida Imaginaria, 321, Pueblo Irreal, Depar', '+34 916 789 012', 1),
(9, 'Colegio Nuestra Señora del Pilar', 'Calle Ficticia, 789, Ciudad de Fantasía, Prov', '+34 923 012 345', 1),
(10, 'Instituto Ramiro de Maeztu', 'Plaza Falsa, 123, Villa Inventada, Región Irr', '+34 932 234 567', 1),
(11, 'Escola São Francisco', 'Rua Falsa, 789, Bairro de Ensaios, Cidade de ', '+55 81 91012-3456', 2),
(12, 'Colégio Santa Clara', 'Praça Fictícia, 123, Bairro Inventado, Cidade', '+55 11 91234-5678', 2),
(13, 'Instituto Brasileiro de Educação', 'Avenida dos Sonhos, 321, Bairro Irreal, Cidad', '+55 21 93456-7890', 2),
(14, 'Escola Nossa Senhora da Conceição', 'Praça Fictícia, 654, Bairro de Ensaios, Cidad', '+55 31 95678-9012', 2),
(15, 'Colégio Dom Pedro II', '  Rua Falsa, 987, Bairro Inventado, Cidade de', '+55 41 91012-3456', 2),
(16, 'Escola Estadual Santos Dumont', 'Avenida dos Sonhos, 654, Bairro Irreal, Cidad', '+34 931 456 789', 2),
(17, 'Instituto Educacional Brasília', 'Rua Fictícia, 321, Bairro de Ensaios, Cidade ', '+55 51 92345-6789', 2),
(18, 'Colégio São João Bosco', 'Praça Falsa, 789, Bairro Inventado, Cidade Ir', '+55 61 93456-7890', 2),
(19, 'Escola Estrela do Norte', 'Avenida dos Sonhos, 456, Bairro Irreal, Cidad', '+55 71 95678-9012', 2),
(20, 'Instituto Educacional Santa Catarina', 'Rua Fictícia, 123, Bairro Imaginário, Cidade ', '+55 91 92345-6789', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `bandera` varchar(45) NOT NULL,
  `capital` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `nombre`, `bandera`, `capital`) VALUES
(1, 'España', 'Rojo, Amarillo, Rojo', 'madrid'),
(2, 'Brasil', 'Verde; amarillo', 'brasilia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `fecha de nacimiento` varchar(45) NOT NULL,
  `departamentos_id` int(11) NOT NULL,
  `escuelas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `correo`, `contraseña`, `fecha de nacimiento`, `departamentos_id`, `escuelas_id`) VALUES
(1, 'roberto g', 'herrera cortés', 'rob@gmail.com', '1234', '1999-06-15', 42, 1),
(2, 'andres camilo', 'salazar rivas', 'andre@gmail.com', '8756321', '2000-07-03', 21, 9),
(3, 'carlos eduardo', 'castro cordoba', 'carlos28@gmail.com', 'jp1234', '2010-12-05', 24, 2),
(4, 'andrea maria', 'montes cifuentes', 'and123@gmail.com', 'mac1234', '2019-07-03', 21, 3),
(5, 'maira ', 'ortega fuentes', 'may34@gmail.com', 'des12345', '2015-\'08-07', 36, 1),
(6, 'jhon', 'paez arteaga', 'paez@gmail.com', 'jhon7654', '1995--09-01', 32, 7),
(7, 'jose ', 'pardo correa', 'joco@gmail.com', 'fr5463io', '1987-06-05', 23, 7),
(8, 'carolina', 'mateus rodriguez', 'carol@gmail.com', 'trere28467', '1995-04-09', 28, 4),
(9, 'jessica', 'palacios', 'jess@gmail.com', '2548vbc', '2016-01-28', 22, 6),
(10, 'karen', 'ochoa osorio', 'karochoa@gmail.com', 'gra4563@gmail.com', '2013-10-21', 22, 9),
(11, 'kelly j', 'diaz ', 'keldia@gmail.com', 'dfg2534', '2001-11-12', 21, 10),
(12, 'jhohana', 'betancourt', 'jho@gmail.com', '5463gda', '2010-05-28', 30, 2),
(13, 'isabela', 'corrales', 'isis@gmail.com', 'fdre3546', '1999-12-07', 27, 9),
(14, 'juan carlos', 'ordoñez tellez', 'juan@gmail.com', 'jua@gmail.com', '2001-02-17', 33, 7),
(15, 'jhonatan', 'mantilla ', 'jho@gmail.com', 'df2345', '2013-05-03', 37, 3),
(16, 'Mateo ', ' da Silva', 'mat@gmail.com', 'der2345', '1998-11-30', 52, 18),
(17, 'Isabella', 'souza silva', 'silva@gmail.com', '2345adre', '2013-09-07', 43, 15),
(18, 'Gabriel', 'santos ', 'gabriel@gmail.com', 'dfg1786', '2013-09-31', 50, 17),
(19, 'Sophia', 'oliveira', 'sofi@gmail.com', 'ders3456', '2018-04-17', 51, 16),
(20, 'Lucas', 'Ferreira', 'lufe@gmail.com', 'dfrete1234', '1990-06-10', 45, 19),
(21, 'Manuela ', 'costa', 'manu@gmail.com', 'man7865', '1995-04-|19', 54, 17),
(22, 'Enzo', 'pereira', 'enz@gmail.com', 'ez122345667', '1996-07-01', 44, 17),
(23, 'Felipe', 'barboza', 'febar@gmail.com', 'feb182643', '1998-05-28', 47, 15),
(24, 'mariana', 'cardoso', 'marcar@gmail.com', 'mar34567', '2015-01-30', 48, 17),
(25, 'Valentina', 'almeida', 'valal@gmail.com', 'val12345', '2010-09-11', 42, 13),
(26, 'Thiago', 'rodriguez', 'thiagrod@gmail.com', 'rod84756', '1980-04-28', 43, 15),
(27, 'Laura', 'gomez', 'lau@gmail.com', 'lu9877655', '2000-05-14', 44, 19),
(28, 'Rafaela', 'carvhalo', 'carv@gmail.com', 'card23339', '1997-08-19', 41, 11),
(29, 'Pedro', 'Castro', 'pedro@gmail.com', 'ped12456678', '1993-09-12', 49, 17),
(30, 'Beatriz', 'lima', 'betli@gmail.com', 'fdgh5342667', '2008-03-24', 57, 17);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paises_id` (`paises_id`);

--
-- Indices de la tabla `escuelas`
--
ALTER TABLE `escuelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paises_id` (`paises_id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departamentos_id` (`departamentos_id`),
  ADD KEY `escuelas_id` (`escuelas_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `escuelas`
--
ALTER TABLE `escuelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD CONSTRAINT `departamentos_ibfk_1` FOREIGN KEY (`paises_id`) REFERENCES `paises` (`id`);

--
-- Filtros para la tabla `escuelas`
--
ALTER TABLE `escuelas`
  ADD CONSTRAINT `escuelas_ibfk_1` FOREIGN KEY (`paises_id`) REFERENCES `paises` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`departamentos_id`) REFERENCES `departamentos` (`id`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`escuelas_id`) REFERENCES `escuelas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
