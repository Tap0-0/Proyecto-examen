-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.32-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para bd_peluqueria_canina
CREATE DATABASE IF NOT EXISTS `bd_peluqueria_canina` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `bd_peluqueria_canina`;

-- Volcando estructura para tabla bd_peluqueria_canina.tb_cita
CREATE TABLE IF NOT EXISTS `tb_cita` (
  `id_cita` int(10) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `servicio` varchar(100) NOT NULL DEFAULT '0',
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_cita`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_peluqueria_canina.tb_cita: ~3 rows (aproximadamente)
INSERT INTO `tb_cita` (`id_cita`, `fecha`, `hora`, `servicio`, `estado`) VALUES
	(1, '2025-02-01', '12:00:00', 'baños', 1),
	(2, '2025-02-01', '12:00:00', 'baño', 0),
	(3, '2025-02-01', '12:00:00', 'baño', 0);

-- Volcando estructura para tabla bd_peluqueria_canina.tb_cliente
CREATE TABLE IF NOT EXISTS `tb_cliente` (
  `id_cliente` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  `apellido` varchar(50) NOT NULL DEFAULT '0',
  `cedula` varchar(50) NOT NULL DEFAULT '0',
  `telefono` varchar(50) NOT NULL DEFAULT '0',
  `direccion` varchar(50) NOT NULL DEFAULT '0',
  `correo` varchar(50) NOT NULL DEFAULT '0',
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_cliente`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_peluqueria_canina.tb_cliente: ~9 rows (aproximadamente)
INSERT INTO `tb_cliente` (`id_cliente`, `nombre`, `apellido`, `cedula`, `telefono`, `direccion`, `correo`, `estado`) VALUES
	(1, 'jair', 'peñafiel', '0985637812', '0988126065', 'Quito', 'jair3@gmail.com', 0),
	(32, 'dani', 'peñafiel', '0985637812', '098812601', 'gye', 'jair3@gmail.com', 0),
	(33, 'dani', 'peñafiel', '0985637812', '0988126065', 'Quito', 'jair3@gmail.com', 0),
	(34, 'dani', 'peñafiel', '0985637812', '0988126065', 'gy7', 'jair3@gmail.com', 0),
	(35, 'jair', 'peñafiel', '0985637812', '0988126065', 'Quito', 'jair3@gmail.com', 0),
	(36, 'dani', 'peñafiel', '0985637812', '0988126065', 'Quito', 'jair3@gmail.com', 0),
	(37, 'jair', 'boboooooooooooooooooooo', '0985637812', '0988126065', 'cuenca', 'jair56@gmail.com', 0),
	(38, 'jair', 'peñafiel', '0985637812', '09881225', 'cuenca', 'jair3@gmail.4', 1),
	(39, 'Daniela', 'sosa', '0985637812', '0988126065', 'Quito', 'dani3@gmail.com', 1);

-- Volcando estructura para tabla bd_peluqueria_canina.tb_compra
CREATE TABLE IF NOT EXISTS `tb_compra` (
  `id_compra` int(10) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `producto` varchar(50) NOT NULL DEFAULT '0',
  `cantidad` int(10) NOT NULL DEFAULT 0,
  `precio_total` varchar(50) NOT NULL DEFAULT '0',
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_compra`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_peluqueria_canina.tb_compra: ~1 rows (aproximadamente)
INSERT INTO `tb_compra` (`id_compra`, `fecha`, `producto`, `cantidad`, `precio_total`, `estado`) VALUES
	(1, '2024-10-25', 'jabon', 20, '100,00', 1);

-- Volcando estructura para tabla bd_peluqueria_canina.tb_empleado
CREATE TABLE IF NOT EXISTS `tb_empleado` (
  `id_empleado` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  `apellido` varchar(50) NOT NULL DEFAULT '0',
  `cedula` varchar(50) NOT NULL DEFAULT '0',
  `telefono` varchar(50) NOT NULL DEFAULT '0',
  `correo` varchar(50) NOT NULL DEFAULT '0',
  `cargo` varchar(50) NOT NULL DEFAULT '0',
  `salario` varchar(50) NOT NULL DEFAULT '0',
  `estado` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_peluqueria_canina.tb_empleado: ~2 rows (aproximadamente)
INSERT INTO `tb_empleado` (`id_empleado`, `nombre`, `apellido`, `cedula`, `telefono`, `correo`, `cargo`, `salario`, `estado`) VALUES
	(1, 'daniela', 'sosa', '0941237541', '0955223642', 'sosa4@gmail.com', 'gerente', '300,00', 1),
	(2, 'daniela', 'sosa', '0941237541', '0955223642', 'sosa4@gmail.com', 'gerente', '300,00', 1);

-- Volcando estructura para tabla bd_peluqueria_canina.tb_historial
CREATE TABLE IF NOT EXISTS `tb_historial` (
  `id_historial` int(10) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `descripcion` varchar(100) NOT NULL DEFAULT '0',
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_historial`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_peluqueria_canina.tb_historial: ~1 rows (aproximadamente)
INSERT INTO `tb_historial` (`id_historial`, `fecha`, `descripcion`, `estado`) VALUES
	(1, '2024-06-09', 'corte de uñas', 1);

-- Volcando estructura para tabla bd_peluqueria_canina.tb_horario_atencion
CREATE TABLE IF NOT EXISTS `tb_horario_atencion` (
  `id_horario_atencion` int(10) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_horario_atencion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_peluqueria_canina.tb_horario_atencion: ~3 rows (aproximadamente)
INSERT INTO `tb_horario_atencion` (`id_horario_atencion`, `fecha`, `hora`, `estado`) VALUES
	(1, '2024-10-10', '00:20:00', 1),
	(2, '2024-10-02', '12:35:00', 0),
	(3, '2024-05-02', '20:41:00', 0);

-- Volcando estructura para tabla bd_peluqueria_canina.tb_inventario
CREATE TABLE IF NOT EXISTS `tb_inventario` (
  `id_inventario` int(10) NOT NULL AUTO_INCREMENT,
  `cantidad` int(10) NOT NULL DEFAULT 0,
  `producto` varchar(50) NOT NULL DEFAULT '0',
  `descripcion` varchar(50) NOT NULL DEFAULT '0',
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_inventario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_peluqueria_canina.tb_inventario: ~2 rows (aproximadamente)
INSERT INTO `tb_inventario` (`id_inventario`, `cantidad`, `producto`, `descripcion`, `estado`) VALUES
	(1, 15, 'tijera', 'color azul  tamaño mediana', 1),
	(2, 15, 'tijera', 'color azul  tamaño mediana', 1);

-- Volcando estructura para tabla bd_peluqueria_canina.tb_mascota
CREATE TABLE IF NOT EXISTS `tb_mascota` (
  `id_mascotas` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  `raza` varchar(50) NOT NULL DEFAULT '0',
  `edad` int(10) NOT NULL DEFAULT 0,
  `peso` float NOT NULL DEFAULT 0,
  `sexo` varchar(50) NOT NULL DEFAULT '0',
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_mascotas`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_peluqueria_canina.tb_mascota: ~1 rows (aproximadamente)
INSERT INTO `tb_mascota` (`id_mascotas`, `nombre`, `raza`, `edad`, `peso`, `sexo`, `estado`) VALUES
	(1, 'firulai', 'doberman', 2, 2.3, 'macho', 1);

-- Volcando estructura para tabla bd_peluqueria_canina.tb_orden_ingreso
CREATE TABLE IF NOT EXISTS `tb_orden_ingreso` (
  `id_orden_ingreso` int(10) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `id_usuario` int(10) NOT NULL DEFAULT 0,
  `id_mascota` int(10) NOT NULL DEFAULT 0,
  `id_citas` int(10) NOT NULL DEFAULT 0,
  `id_servicios` int(10) NOT NULL DEFAULT 0,
  `id_empleado` int(10) NOT NULL DEFAULT 0,
  `id_producto` int(10) NOT NULL DEFAULT 0,
  `id_historial` int(10) NOT NULL DEFAULT 0,
  `id_pago` int(10) NOT NULL DEFAULT 0,
  `id_proveedor` int(10) NOT NULL DEFAULT 0,
  `id_compra` int(10) NOT NULL DEFAULT 0,
  `id_venta` int(10) NOT NULL DEFAULT 0,
  `id_horario_atencion` int(10) NOT NULL DEFAULT 0,
  `id_inventario` int(10) NOT NULL DEFAULT 0,
  `observacion` varchar(100) NOT NULL DEFAULT '0',
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_orden_ingreso`) USING BTREE,
  KEY `id_usuario` (`id_usuario`),
  KEY `id_mascota` (`id_mascota`),
  KEY `id_citas` (`id_citas`),
  KEY `id_servicios` (`id_servicios`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_producto` (`id_producto`),
  KEY `id_historial` (`id_historial`),
  KEY `id_pago` (`id_pago`),
  KEY `id_proveedor` (`id_proveedor`),
  KEY `id_compra` (`id_compra`),
  KEY `id_venta` (`id_venta`),
  KEY `id_horario_atencion` (`id_horario_atencion`),
  KEY `id_inventario` (`id_inventario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_peluqueria_canina.tb_orden_ingreso: ~0 rows (aproximadamente)

-- Volcando estructura para tabla bd_peluqueria_canina.tb_pago
CREATE TABLE IF NOT EXISTS `tb_pago` (
  `id_pago` int(10) NOT NULL AUTO_INCREMENT,
  `monto` varchar(50) NOT NULL DEFAULT '0',
  `fecha_pago` datetime NOT NULL,
  `metodo_pago` varchar(50) NOT NULL DEFAULT '0',
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_peluqueria_canina.tb_pago: ~7 rows (aproximadamente)
INSERT INTO `tb_pago` (`id_pago`, `monto`, `fecha_pago`, `metodo_pago`, `estado`) VALUES
	(3, '20,00', '2024-02-06 15:30:00', '', 0),
	(4, '20,00', '2024-02-06 15:30:00', '', 0),
	(5, '20,00', '2024-02-06 15:30:00', 'transferencia', 0),
	(6, '20,00', '2024-02-06 15:30:00', '', 0),
	(7, '207,00', '2024-02-06 15:30:00', 'efectivo', 0),
	(8, '20,00', '2024-02-06 15:30:00', 'transferencia', 1),
	(9, '30,00', '2024-02-06 18:30:00', 'efectivo', 1);

-- Volcando estructura para tabla bd_peluqueria_canina.tb_producto
CREATE TABLE IF NOT EXISTS `tb_producto` (
  `id_producto` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  `descripcion` varchar(100) NOT NULL DEFAULT '0',
  `precio` varchar(50) NOT NULL DEFAULT '0',
  `cantidad` int(10) NOT NULL DEFAULT 0,
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_peluqueria_canina.tb_producto: ~4 rows (aproximadamente)
INSERT INTO `tb_producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `cantidad`, `estado`) VALUES
	(1, 'shampoo', 'bueno en vitamina e para el pelo', '15,00', 5, 0),
	(2, 'jabón', 'antigarrapatas', '20,00', 40, 1),
	(3, 'patillas', 'vitamina ', '8,00', 5, 1),
	(4, 'shampoo', 'bueno en vitamina e para el pelo', '15,00', 5, 1);

-- Volcando estructura para tabla bd_peluqueria_canina.tb_proveedor
CREATE TABLE IF NOT EXISTS `tb_proveedor` (
  `id_proveedor` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  `apellido` varchar(50) NOT NULL DEFAULT '0',
  `telefono` varchar(50) NOT NULL DEFAULT '0',
  `correo` varchar(50) NOT NULL DEFAULT '0',
  `direccion` varchar(100) NOT NULL DEFAULT '0',
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_peluqueria_canina.tb_proveedor: ~1 rows (aproximadamente)
INSERT INTO `tb_proveedor` (`id_proveedor`, `nombre`, `apellido`, `telefono`, `correo`, `direccion`, `estado`) VALUES
	(1, 'julio', 'garcia', '0912452365', 'juli12@gmail', 'av machala', 1);

-- Volcando estructura para tabla bd_peluqueria_canina.tb_servicio
CREATE TABLE IF NOT EXISTS `tb_servicio` (
  `id_servicio` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  `precio` varchar(50) NOT NULL DEFAULT '0',
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_servicio`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_peluqueria_canina.tb_servicio: ~6 rows (aproximadamente)
INSERT INTO `tb_servicio` (`id_servicio`, `nombre`, `precio`, `estado`) VALUES
	(1, 'corte', '2,20', 1),
	(2, 'corte', '2,50', 1),
	(3, 'corte', '2,50', 1),
	(4, 'corte', '2,50', 0),
	(5, 'corte', '2,50', 0),
	(6, 'corte', '2,50', 1);

-- Volcando estructura para tabla bd_peluqueria_canina.tb_usuario
CREATE TABLE IF NOT EXISTS `tb_usuario` (
  `id_usuario` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  `clave` varchar(50) NOT NULL DEFAULT '0',
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_usuario`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_peluqueria_canina.tb_usuario: ~10 rows (aproximadamente)
INSERT INTO `tb_usuario` (`id_usuario`, `nombre`, `clave`, `estado`) VALUES
	(1, '0', '0', 1),
	(2, '0', '0', 1),
	(3, 'daniela', 'emili29', 1),
	(4, 'daniela', 'emili29', 1),
	(5, 'daniela', 'emili29', 1),
	(6, 'daniela', 'emili29', 1),
	(7, 'daniela', 'emili29', 1),
	(8, 'daniela', 'emili29', 1),
	(9, 'daniela', 'emili29', 1),
	(10, 'daniela', 'emili29', 1);

-- Volcando estructura para tabla bd_peluqueria_canina.tb_venta
CREATE TABLE IF NOT EXISTS `tb_venta` (
  `id_venta` int(10) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `producto` varchar(500) NOT NULL DEFAULT '0',
  `cantidad` int(10) NOT NULL DEFAULT 0,
  `precio_total` varchar(50) NOT NULL DEFAULT '0',
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla bd_peluqueria_canina.tb_venta: ~5 rows (aproximadamente)
INSERT INTO `tb_venta` (`id_venta`, `fecha`, `producto`, `cantidad`, `precio_total`, `estado`) VALUES
	(1, '2024-05-21', 'accesorio', 17, '14', 0),
	(2, '2024-05-22', 'accesorios', 14, '17,30', 0),
	(3, '2024-05-21', 'accesorio', 10, '17,50', 0),
	(4, '2024-05-21', 'accesorios', 101, '17,50', 0),
	(5, '2024-05-21', 'accesorio', 10, '17,50', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
