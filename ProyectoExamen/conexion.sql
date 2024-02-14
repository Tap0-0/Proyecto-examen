-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         11.2.0-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para tb_sastreria
CREATE DATABASE IF NOT EXISTS `tb_sastreria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `tb_sastreria`;

-- Volcando estructura para tabla tb_sastreria.tb_alquiler
CREATE TABLE IF NOT EXISTS `tb_alquiler` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL DEFAULT '0',
  `talla` varchar(50) NOT NULL DEFAULT '0',
  `precio_alquiler` float NOT NULL DEFAULT 0,
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla tb_sastreria.tb_alquiler: ~2 rows (aproximadamente)
INSERT INTO `tb_alquiler` (`id`, `descripcion`, `talla`, `precio_alquiler`, `estado`) VALUES
	(1, 'Traje de Gala', 'M', 50, 1),
	(2, 'TERNO', 'S', 18, 1);

-- Volcando estructura para tabla tb_sastreria.tb_articulosalquiler
CREATE TABLE IF NOT EXISTS `tb_articulosalquiler` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) NOT NULL DEFAULT 1,
  `subtotal` float NOT NULL DEFAULT 0,
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla tb_sastreria.tb_articulosalquiler: ~2 rows (aproximadamente)
INSERT INTO `tb_articulosalquiler` (`id`, `cantidad`, `subtotal`, `estado`) VALUES
	(1, 3, 90, 1),
	(2, 4, 25, 1);

-- Volcando estructura para tabla tb_sastreria.tb_clavesforaneas
CREATE TABLE IF NOT EXISTS `tb_clavesforaneas` (
  `id_clientes` int(10) NOT NULL DEFAULT 0,
  `id_productos` int(10) NOT NULL DEFAULT 0,
  `id_pedidos` int(10) NOT NULL DEFAULT 0,
  `id_alquiler` int(10) NOT NULL DEFAULT 0,
  `id_direcciones` int(10) NOT NULL DEFAULT 0,
  `id_medidasclientes` int(10) NOT NULL DEFAULT 0,
  `id_detallespedidos` int(10) NOT NULL DEFAULT 0,
  `id_articulosalquiler` int(10) NOT NULL DEFAULT 0,
  `id_inventarios` int(10) NOT NULL DEFAULT 0,
  `id_local` int(10) NOT NULL DEFAULT 0,
  `id_transicion` int(10) NOT NULL DEFAULT 0,
  `id_usuario` int(10) NOT NULL DEFAULT 0,
  KEY `id_clientes` (`id_clientes`),
  KEY `id_productos` (`id_productos`),
  KEY `id_alquiler` (`id_alquiler`),
  KEY `id_medidasclientes` (`id_medidasclientes`),
  KEY `id_detallespedidos` (`id_detallespedidos`),
  KEY `id_articulosalquiler` (`id_articulosalquiler`),
  KEY `id_inventarios` (`id_inventarios`),
  KEY `id_pedidos` (`id_pedidos`),
  KEY `Columna 10` (`id_local`) USING BTREE,
  KEY `id_direccion` (`id_direcciones`) USING BTREE,
  KEY `id_transicion` (`id_transicion`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla tb_sastreria.tb_clavesforaneas: ~0 rows (aproximadamente)

-- Volcando estructura para tabla tb_sastreria.tb_clientes
CREATE TABLE IF NOT EXISTS `tb_clientes` (
  `id_clientes` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL DEFAULT '0',
  `apellido` varchar(30) NOT NULL DEFAULT '0',
  `direccion` varchar(30) NOT NULL DEFAULT '0',
  `telefono` varchar(20) NOT NULL DEFAULT '0',
  `email` varchar(30) NOT NULL DEFAULT '0',
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_clientes`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla tb_sastreria.tb_clientes: ~2 rows (aproximadamente)
INSERT INTO `tb_clientes` (`id_clientes`, `nombre`, `apellido`, `direccion`, `telefono`, `email`, `estado`) VALUES
	(1, 'karla', 'sanchez', 'paraiso de la flor', '0921576859', 'karlasanchez@gmail.com', 1),
	(2, 'kevin', 'tapie', 'naranjal', '0996660643', 'tapi1@gmail.com', 1);

-- Volcando estructura para tabla tb_sastreria.tb_detallespedidos
CREATE TABLE IF NOT EXISTS `tb_detallespedidos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) NOT NULL DEFAULT 1,
  `subtotal` float NOT NULL DEFAULT 0,
  `estado` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla tb_sastreria.tb_detallespedidos: ~1 rows (aproximadamente)
INSERT INTO `tb_detallespedidos` (`id`, `cantidad`, `subtotal`, `estado`) VALUES
	(1, 50, 1000, 1);

-- Volcando estructura para tabla tb_sastreria.tb_direcciones
CREATE TABLE IF NOT EXISTS `tb_direcciones` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `calle` varchar(50) NOT NULL DEFAULT '0',
  `ciudad` varchar(50) NOT NULL DEFAULT '0',
  `codigo_postal` varchar(50) NOT NULL DEFAULT '0',
  `pais` varchar(50) NOT NULL DEFAULT '0',
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla tb_sastreria.tb_direcciones: ~2 rows (aproximadamente)
INSERT INTO `tb_direcciones` (`id`, `calle`, `ciudad`, `codigo_postal`, `pais`, `estado`) VALUES
	(1, 'Calle Principal 123', 'Ciudad Ejemplo', '12345', 'Pais Ejemplo', 0),
	(2, 'JUARES', 'GUAYAQUIL', '091202', 'ECUADOR', 1);

-- Volcando estructura para tabla tb_sastreria.tb_inventarios
CREATE TABLE IF NOT EXISTS `tb_inventarios` (
  `id_inventario` int(10) NOT NULL AUTO_INCREMENT,
  `tipomaterial` varchar(50) NOT NULL DEFAULT '0',
  `descripcion` varchar(50) NOT NULL DEFAULT '0',
  `cantidadisponible` int(10) NOT NULL DEFAULT 0,
  `preciounitario` float NOT NULL DEFAULT 0,
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_inventario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla tb_sastreria.tb_inventarios: ~2 rows (aproximadamente)
INSERT INTO `tb_inventarios` (`id_inventario`, `tipomaterial`, `descripcion`, `cantidadisponible`, `preciounitario`, `estado`) VALUES
	(1, 'Algodon', 'Camisa de vestir blanca', 50, 30, 1),
	(2, 'CUERO', 'CHAQUETA', 20, 20, 0);

-- Volcando estructura para tabla tb_sastreria.tb_local
CREATE TABLE IF NOT EXISTS `tb_local` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  `telefono` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla tb_sastreria.tb_local: ~2 rows (aproximadamente)
INSERT INTO `tb_local` (`id`, `nombre`, `telefono`, `email`, `estado`) VALUES
	(1, 'Sastreria El Elegante', '+1234567890', 'info@sastreriaelelegante.com', 1),
	(2, 'SASTRERIA DON JORGE', '0934546876', 'jorge1@gmail.com', 0);

-- Volcando estructura para tabla tb_sastreria.tb_medidasclientes
CREATE TABLE IF NOT EXISTS `tb_medidasclientes` (
  `id_medidasclientes` int(10) NOT NULL AUTO_INCREMENT,
  `pecho` varchar(50) NOT NULL DEFAULT '0',
  `cintura` varchar(50) NOT NULL DEFAULT '0',
  `cadera` varchar(50) NOT NULL DEFAULT '0',
  `longitudbrazo` varchar(50) NOT NULL DEFAULT '0',
  `longitudpiernas` varchar(50) NOT NULL DEFAULT '0',
  `entrepiernas` varchar(50) NOT NULL DEFAULT '0',
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_medidasclientes`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla tb_sastreria.tb_medidasclientes: ~3 rows (aproximadamente)
INSERT INTO `tb_medidasclientes` (`id_medidasclientes`, `pecho`, `cintura`, `cadera`, `longitudbrazo`, `longitudpiernas`, `entrepiernas`, `estado`) VALUES
	(1, '80', '90', '94', '70', '80', '85', 1),
	(2, '90', '70', '100', '60', '80', '85', 1),
	(3, '0', '0', '0', '0', '80', '0', 0);

-- Volcando estructura para tabla tb_sastreria.tb_pedidos
CREATE TABLE IF NOT EXISTS `tb_pedidos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fechapedido` date NOT NULL,
  `fechaentrega` date NOT NULL,
  `total` float NOT NULL DEFAULT 0,
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla tb_sastreria.tb_pedidos: ~2 rows (aproximadamente)
INSERT INTO `tb_pedidos` (`id`, `fechapedido`, `fechaentrega`, `total`, `estado`) VALUES
	(1, '2024-02-12', '2024-02-15', 350, 1),
	(2, '2024-02-12', '2024-02-14', 200, 0);

-- Volcando estructura para tabla tb_sastreria.tb_productos
CREATE TABLE IF NOT EXISTS `tb_productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL DEFAULT '0',
  `tipo_prenda` varchar(50) NOT NULL DEFAULT '',
  `talla` varchar(50) NOT NULL DEFAULT '0',
  `color` varchar(50) NOT NULL DEFAULT '0',
  `material` varchar(50) NOT NULL DEFAULT '0',
  `precio` float NOT NULL DEFAULT 0,
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla tb_sastreria.tb_productos: ~2 rows (aproximadamente)
INSERT INTO `tb_productos` (`id`, `descripcion`, `tipo_prenda`, `talla`, `color`, `material`, `precio`, `estado`) VALUES
	(1, 'Traje de vestir', 'Traje', 'M', 'Negro', 'Lana', 250, 1),
	(2, 'vestido', 'null', 'null', 'null', 'null', 20, 0);

-- Volcando estructura para tabla tb_sastreria.tb_transicion
CREATE TABLE IF NOT EXISTS `tb_transicion` (
  `id_transaccion` int(10) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tipotransaccion` varchar(100) NOT NULL DEFAULT '0',
  `monto` float NOT NULL DEFAULT 0,
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_transaccion`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla tb_sastreria.tb_transicion: ~2 rows (aproximadamente)
INSERT INTO `tb_transicion` (`id_transaccion`, `fecha`, `tipotransaccion`, `monto`, `estado`) VALUES
	(1, '2024-02-11 05:00:00', 'venta de chaqueta de cuero', 150, 1),
	(2, '2024-02-12 21:53:26', 'venta', 40, 0);

-- Volcando estructura para tabla tb_sastreria.tb_usuario
CREATE TABLE IF NOT EXISTS `tb_usuario` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `estado` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla tb_sastreria.tb_usuario: ~1 rows (aproximadamente)
INSERT INTO `tb_usuario` (`id`, `usuario`, `password`, `estado`) VALUES
	(1, 'kevin', '12345', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
