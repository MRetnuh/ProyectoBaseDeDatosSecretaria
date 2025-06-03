-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-09-2024 a las 00:51:26
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
-- Base de datos: `secretaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id_cargo` int(11) NOT NULL,
  `cuil_profesor` varchar(20) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL,
  `horas_tp` int(11) DEFAULT NULL,
  `asignatura_cargo` varchar(100) DEFAULT NULL,
  `curso_turno` varchar(20) DEFAULT NULL,
  `situacion_revista` varchar(20) DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `reemplaza_a` varchar(50) DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  `observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id_cargo`, `cuil_profesor`, `puesto`, `rol`, `horas_tp`, `asignatura_cargo`, `curso_turno`, `situacion_revista`, `fecha_alta`, `reemplaza_a`, `fecha_baja`, `observaciones`) VALUES
(1, '20-12345678-9', 'Profesor', 'Titular', 20, 'Matemáticas', '1ro A', 'Activo', '2024-01-15', NULL, NULL, 'Sin observaciones'),
(2, '20-87654321-0', 'Profesor', 'Suplente', 15, 'Lengua', '2do B', 'Baja', '2024-02-20', '20-93847561-8', '2024-03-01', 'Renuncia voluntaria'),
(3, '20-12398745-1', 'Profesor', 'Titular', 18, 'Historia', '3ro C', 'Activo', '2024-03-25', NULL, NULL, 'Sin observaciones'),
(4, '20-98765432-2', 'Director', 'Titular', 0, 'Dirección', 'General', 'Activo', '2024-04-10', NULL, NULL, 'Ascenso'),
(5, '20-56473829-3', 'Profesor', 'Titular', 10, 'Geografía', '4to D', 'Licencia', '2024-05-05', NULL, NULL, 'Licencia por maternidad'),
(6, '20-83749201-4', 'Profesor', 'Titular', 12, 'Química', '5to E', 'Activo', '2024-06-30', NULL, NULL, 'Sin observaciones'),
(7, '20-10293847-5', 'Profesor', 'Titular', 20, 'Física', '6to F', 'Activo', '2024-07-15', NULL, NULL, 'Sin observaciones'),
(8, '20-56473829-6', 'Profesor', 'Titular', 25, 'Biología', '7mo G', 'Baja', '2024-08-25', NULL, '2024-09-01', 'Jubilación'),
(9, '20-38475620-7', 'Profesor', 'Titular', 22, 'Educación Física', '8vo H', 'Activo', '2024-09-10', NULL, NULL, 'Sin observaciones'),
(10, '20-93847561-8', 'Profesor', 'Titular', 24, 'Inglés', '9no I', 'Activo', '2024-10-20', NULL, NULL, 'Sin observaciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expedientes_alta_baja`
--

CREATE TABLE `expedientes_alta_baja` (
  `id_expediente` int(11) NOT NULL,
  `cuil_profesor` varchar(20) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `expedientes_alta_baja`
--

INSERT INTO `expedientes_alta_baja` (`id_expediente`, `cuil_profesor`, `tipo`) VALUES
(1, '20-12345678-9', 'Alta'),
(2, '20-87654321-0', 'Baja'),
(3, '20-12398745-1', 'Alta'),
(4, '20-98765432-2', 'Alta'),
(5, '20-56473829-3', 'Baja'),
(6, '20-83749201-4', 'Alta'),
(7, '20-10293847-5', 'Alta'),
(8, '20-56473829-6', 'Baja'),
(9, '20-38475620-7', 'Alta'),
(10, '20-93847561-8', 'Alta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expedientes_licencias`
--

CREATE TABLE `expedientes_licencias` (
  `id_expediente` int(11) NOT NULL,
  `cuil_profesor` varchar(20) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `expedientes_licencias`
--

INSERT INTO `expedientes_licencias` (`id_expediente`, `cuil_profesor`, `tipo`) VALUES
(1, '20-12345678-9', 'Licencia por enfermedad'),
(2, '20-87654321-0', 'Licencia sin goce de sueldo'),
(3, '20-12398745-1', 'Licencia por maternidad'),
(4, '20-98765432-2', 'Licencia por estudios'),
(5, '20-56473829-3', 'Licencia por enfermedad'),
(6, '20-83749201-4', 'Licencia sin goce de sueldo'),
(7, '20-10293847-5', 'Licencia por maternidad'),
(8, '20-56473829-6', 'Licencia por estudios'),
(9, '20-38475620-7', 'Licencia por enfermedad'),
(10, '20-93847561-8', 'Licencia sin goce de sueldo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id_horario` int(11) NOT NULL,
  `id_cargo` int(11) DEFAULT NULL,
  `dia` varchar(10) DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id_horario`, `id_cargo`, `dia`, `hora_inicio`, `hora_fin`) VALUES
(1, 1, 'Lunes', '08:00:00', '10:00:00'),
(2, 2, 'Martes', '10:00:00', '12:00:00'),
(3, 3, 'Miércoles', '08:00:00', '11:00:00'),
(4, 4, 'Jueves', '09:00:00', '11:00:00'),
(5, 5, 'Viernes', '07:00:00', '09:00:00'),
(6, 6, 'Lunes', '11:00:00', '13:00:00'),
(7, 7, 'Martes', '12:00:00', '14:00:00'),
(8, 8, 'Miércoles', '10:00:00', '12:00:00'),
(9, 9, 'Jueves', '13:00:00', '15:00:00'),
(10, 10, 'Viernes', '11:00:00', '13:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `id_movimiento` int(11) NOT NULL,
  `cuil_profesor` varchar(20) DEFAULT NULL,
  `fecha_movimiento` date DEFAULT NULL,
  `tipo_movimiento` varchar(50) DEFAULT NULL,
  `detalle` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `cuil` varchar(20) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL CHECK (`email` like '%@%'),
  `telefono` varchar(20) DEFAULT NULL,
  `domicilio` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nro_legajo` varchar(20) DEFAULT NULL,
  `ficha_censal` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`cuil`, `nombre`, `apellido`, `email`, `telefono`, `domicilio`, `fecha_nacimiento`, `nro_legajo`, `ficha_censal`) VALUES
('20-10293847-5', 'Lucía', 'Fernández', 'lucia.fernandez@example.com', '5566778899', 'Calle Meteorito 741', '1995-07-15', '99001', 'G123'),
('20-12345678-9', 'Juan', 'Pérez', 'juan.perez@example.com', '1234567890', 'Calle Falsa 123', '1980-01-15', '12345', 'A123'),
('20-12398745-1', 'Carlos', 'López', 'carlos.lopez@example.com', '1122334455', 'Calle Luna 789', '1985-03-25', '11223', 'C789'),
('20-38475620-7', 'Claudia', 'Ramírez', 'claudia.ramirez@example.com', '7788990011', 'Calle Galaxia 963', '1992-09-10', '44556', 'I789'),
('20-56473829-3', 'María', 'Rodríguez', 'maria.rodriguez@example.com', '3344556677', 'Calle Estrella 654', '1982-05-05', '55667', 'E456'),
('20-56473829-6', 'Pedro', 'Sánchez', 'pedro.sanchez@example.com', '6677889900', 'Calle Asteroide 852', '1989-08-25', '22334', 'H456'),
('20-83749201-4', 'Jorge', 'González', 'jorge.gonzalez@example.com', '4455667788', 'Calle Cometa 987', '1987-06-30', '77889', 'F789'),
('20-87654321-0', 'Ana', 'García', 'ana.garcia@example.com', '0987654321', 'Av. Siempre Viva 456', '1975-02-20', '67890', 'B456'),
('20-93847561-8', 'Diego', 'Torres', 'diego.torres@example.com', '8899001122', 'Calle Universo 159', '1988-10-20', '66778', 'J123'),
('20-98765432-2', 'Laura', 'Martínez', 'laura.martinez@example.com', '2233445566', 'Calle Sol 321', '1990-04-10', '33445', 'D123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id_cargo`),
  ADD KEY `cuil_profesor` (`cuil_profesor`);

--
-- Indices de la tabla `expedientes_alta_baja`
--
ALTER TABLE `expedientes_alta_baja`
  ADD PRIMARY KEY (`id_expediente`),
  ADD KEY `cuil_profesor` (`cuil_profesor`);

--
-- Indices de la tabla `expedientes_licencias`
--
ALTER TABLE `expedientes_licencias`
  ADD PRIMARY KEY (`id_expediente`),
  ADD KEY `cuil_profesor` (`cuil_profesor`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id_horario`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`id_movimiento`),
  ADD KEY `cuil_profesor` (`cuil_profesor`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`cuil`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `expedientes_alta_baja`
--
ALTER TABLE `expedientes_alta_baja`
  MODIFY `id_expediente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `expedientes_licencias`
--
ALTER TABLE `expedientes_licencias`
  MODIFY `id_expediente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD CONSTRAINT `cargos_ibfk_1` FOREIGN KEY (`cuil_profesor`) REFERENCES `profesores` (`cuil`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `expedientes_alta_baja`
--
ALTER TABLE `expedientes_alta_baja`
  ADD CONSTRAINT `expedientes_alta_baja_ibfk_1` FOREIGN KEY (`cuil_profesor`) REFERENCES `profesores` (`cuil`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `expedientes_licencias`
--
ALTER TABLE `expedientes_licencias`
  ADD CONSTRAINT `expedientes_licencias_ibfk_1` FOREIGN KEY (`cuil_profesor`) REFERENCES `profesores` (`cuil`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `horarios_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `cargos` (`id_cargo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD CONSTRAINT `movimientos_ibfk_1` FOREIGN KEY (`cuil_profesor`) REFERENCES `profesores` (`cuil`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
