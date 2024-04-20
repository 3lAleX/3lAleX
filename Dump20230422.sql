-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: ymont
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `num_telefono` bigint NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Gustavo Gil ','Ignacion altamirano #19',3221811500),(2,'Aimee Paulina','Ignacio altamirano #21',3221811500),(3,'Alex Gutierrez','Ignacio Conmonfort #21',322181199),(4,'Angel Espinoza','Punta de mita',322111111),(5,'Aaron Monroy','Nuevo Nayarit',322322111),(6,'Diego Cardona','Guayabitos',3221815511),(14,'Diego Guillen','Valle Dorado',3221819000),(15,'Gansito','Pitillal',322322322),(16,'Hector','Valle Dorado',322222222),(17,'Gustavo','Mita',3222222);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprar`
--

DROP TABLE IF EXISTS `comprar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprar` (
  `folio` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `id_cliente` int NOT NULL,
  `total` int NOT NULL,
  `id_empleado` int NOT NULL,
  PRIMARY KEY (`folio`,`id`,`id_cliente`),
  KEY `id` (`id`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `comprar_ibfk_1` FOREIGN KEY (`id`) REFERENCES `mueble` (`id`),
  CONSTRAINT `comprar_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprar`
--

LOCK TABLES `comprar` WRITE;
/*!40000 ALTER TABLE `comprar` DISABLE KEYS */;
INSERT INTO `comprar` VALUES (7,4,3,800,3),(8,9,1,7200,1),(9,8,5,1800,5),(16,5,1,2700,1),(17,4,2,4000,2),(18,9,3,800,3),(19,6,2,1650,2),(20,4,2,800,2),(21,8,3,600,2),(22,8,3,600,2),(23,6,3,1100,3),(24,6,2,1100,2),(25,1,3,600,3),(26,1,2,600,3),(27,5,1,2700,2),(28,5,1,5400,2),(29,5,1,5400,2),(30,8,3,2400,2),(31,6,3,4400,2),(32,10,3,12000,1),(33,1,3,10200,1),(34,1,3,36000,1),(35,1,3,36000,1),(36,1,3,36000,1),(37,1,3,36000,1),(38,10,3,30000,1),(39,1,3,36000,1),(40,10,3,30000,1),(41,10,3,30000,1),(42,10,3,30000,1),(43,10,3,30000,1),(44,10,3,30000,1),(45,1,3,600,2),(46,1,2,600,2),(47,1,2,600,1),(48,1,3,1200,2),(49,1,2,1800,1),(50,1,3,600,2),(51,1,3,1800,2),(52,1,3,1800,2),(53,1,3,1800,2),(54,1,1,1200,1),(55,1,1,1200,1),(56,1,1,3000,2),(57,1,4,7200,2),(58,1,4,7200,2),(59,1,4,7200,2),(60,1,4,1800,2),(61,1,4,1800,2),(62,1,4,1800,2),(63,1,4,1200,2),(64,1,4,1200,2),(65,1,2,3000,1),(66,7,14,11600,1),(67,2,14,11600,1),(68,7,14,11600,1),(69,1,14,11600,1),(70,3,14,11600,1),(71,5,14,11600,1),(72,11,15,10800,1),(73,2,15,10800,1),(74,5,15,10800,1),(75,4,1,800,2),(76,14,5,200,1),(77,7,15,6500,2),(78,11,15,6500,2),(79,4,5,4000,1),(80,4,5,4000,1),(81,4,5,4000,1),(82,4,5,4000,1),(83,4,5,4000,1);
/*!40000 ALTER TABLE `comprar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `RFC` varchar(13) NOT NULL,
  `puesto` varchar(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Administrador','Administrador','Administrador','Administrador','12345',NULL,1),(2,'GIPG','Cajero','Gustavo Gil Paredes','cajero','12345',NULL,1),(3,'APMA','Cajero','Aimee Paulina','sadkilla','12345',NULL,1),(4,'AGMG','Repartidor','Alex Gutierrez','alex','12345',NULL,1),(5,'AGEP','Cajero','Angel Espinoza','angel','12345',NULL,1),(6,'GPGP','Repartidor','Repartidor','repartidor','repartidor',NULL,1),(91,'ERPM','Cajero','Aaron Monroy','aaaron','12345',NULL,1),(92,'AMAPA','Cajero','Hector','hector','12345',NULL,1),(93,'GGGG','Cajero','AAaa','aaaa','12345',NULL,0);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mueble`
--

DROP TABLE IF EXISTS `mueble`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mueble` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `tipo` varchar(40) NOT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `precio` int NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `existencia` int NOT NULL,
  `color` varchar(25) NOT NULL,
  `estado` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mueble`
--

LOCK TABLES `mueble` WRITE;
/*!40000 ALTER TABLE `mueble` DISABLE KEYS */;
INSERT INTO `mueble` VALUES (1,'Mesa de madera','Mesas','Imagenes',600,'P01',13,'Cafe',1),(2,'Mesa basica circular','Mesas','Imagenes',600,'P02',100,'Blanco',1),(3,'Mesa tablon','Mesas','Imagenes',500,'P03',98,'Blanco',1),(4,'Mesa principal P','Mesas','Imagenes',800,'P04',294,'Blanco',1),(5,'Mesa principal G','Mesas','Imagenes',900,'P05',495,'Blanco',1),(6,'Silla tiffany','Sillas','Imagenes',550,'P06',600,'Blanco',1),(7,'Silla básica negra','Sillas','Imagenes',500,'P07',789,'Negro',1),(8,'Silla cross back','Sillas','Imagenes',600,'P07',500,' Blanca',1),(9,'Silla savant','Sillas','Imagenes',800,'P08',100,'Cafe oscuro',1),(10,'Sillón king negro','Sillon','Imagenes',3000,'P10',30,'Negro',1),(11,'Sillón queen blanco','Sillon','Imagenes',2500,'P11',25,'Blanco',1),(13,'Cuchara plata','Cubiertos','Iimagenes',50,'P13',600,'Plateado',1),(14,'Tenedor plata','Cubiertos','imagenes',50,'P14',596,'Plateado',1),(15,'Cuchillo','Cubiertos','imagenes',50,'P15',600,'Plateado',1);
/*!40000 ALTER TABLE `mueble` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_empleado` int DEFAULT NULL,
  `mueble_nombre` varchar(30) NOT NULL,
  `cantidad` int NOT NULL,
  `precio` int NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `hora` varchar(20) DEFAULT NULL,
  `folio` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`folio`),
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (3,'Mesa principal P',1,800,'15-04-2023','15:30:00',1),(1,'Silla savant',9,7200,'22-04-2023','12:30:00',2),(5,'Silla cross back',3,1800,'11-04-2023','17:46:12',3),(2,'4',4,4000,'4','4',4),(3,'1',1,600,'21/04/2023','12:18 p. m.',5),(2,'5',5,2700,'21/04/2023','02:03 p. m.',6),(2,'5',5,5400,'21/04/2023','02:04 p. m.',7),(2,'5',5,5400,'21/04/2023','02:04 p. m.',8),(2,'8',8,600,'21/04/2023','03:05 p. m.',9),(2,'6',6,550,'21/04/2023','03:17 p. m.',10),(1,'10',10,3000,'21/04/2023','03:49 p. m.',11),(2,'Mesa de madera',1,600,'21/04/2023','05:13 p. m.',12),(2,'Mesa de madera',1,600,'21/04/2023','05:13 p. m.',13),(2,'Mesa de madera',1,600,'21/04/2023','05:13 p. m.',14),(2,'Mesa de madera',1,600,'21/04/2023','05:13 p. m.',15),(1,'Mesa de madera',1,600,'21/04/2023','09:14 p. m.',16),(1,'Mesa de madera',1,600,'21/04/2023','09:14 p. m.',17),(2,'Mesa de madera',5,600,'21/04/2023','09:24 p. m.',18),(2,'Mesa de madera',4,600,'21/04/2023','09:31 p. m.',19),(2,'Mesa de madera',4,600,'21/04/2023','09:32 p. m.',20),(2,'Mesa de madera',4,600,'21/04/2023','09:32 p. m.',21),(2,'Mesa de madera',1,600,'21/04/2023','09:39 p. m.',22),(2,'Mesa de madera',1,600,'21/04/2023','09:39 p. m.',23),(2,'Mesa de madera',1,600,'21/04/2023','09:39 p. m.',24),(2,'Mesa de madera',1,600,'21/04/2023','09:49 p. m.',25),(2,'Mesa de madera',1,600,'21/04/2023','09:49 p. m.',26),(1,'Mesa de madera',5,600,'21/04/2023','10:34 p. m.',27),(1,'Silla básica negra',6,500,'22/04/2023','11:04 a. m.',28),(1,'Mesa basica circular',6,600,'22/04/2023','11:04 a. m.',29),(1,'Silla básica negra',2,500,'22/04/2023','11:04 a. m.',30),(1,'Mesa de madera',2,600,'22/04/2023','11:04 a. m.',31),(1,'Mesa tablon',2,500,'22/04/2023','11:04 a. m.',32),(1,'Mesa principal G',2,900,'22/04/2023','11:04 a. m.',33),(1,'Sillón queen blanco',3,2500,'22/04/2023','11:46 a. m.',34),(1,'Mesa basica circular',1,600,'22/04/2023','11:46 a. m.',35),(1,'Mesa principal G',3,900,'22/04/2023','11:46 a. m.',36),(2,'Mesa principal P',1,800,'22/04/2023','11:57 a. m.',37),(1,'Tenedor plata',4,50,'22/04/2023','02:54 p. m.',38),(2,'Silla básica negra',3,500,'22/04/2023','07:46 p. m.',39),(2,'Sillón queen blanco',2,2500,'22/04/2023','07:46 p. m.',40),(1,'Mesa principal P',1,800,'22/04/2023','07:52 p. m.',41),(1,'Mesa principal P',1,800,'22/04/2023','07:52 p. m.',42),(1,'Mesa principal P',1,800,'22/04/2023','07:52 p. m.',43),(1,'Mesa principal P',1,800,'22/04/2023','07:52 p. m.',44),(1,'Mesa principal P',1,800,'22/04/2023','07:52 p. m.',45);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-22 19:55:59


/*"SELECT usuario, pass, puesto, estado,id_empleado FROM empleado WHERE usuario

INSERT INTO cliente (nombre, direccion, num_telefono)" "VALUES (@nombre, @direccion, @num_telefono)"

"select id, nombre, precio from mueble where id

INSERT INTO comprar (id, id_cliente, total, id_empleado) VALUES ({0},{1},{2},{3}


string consulta2 = string.Format("INSERT INTO ventas (id_empleado, mueble_nombre, cantidad,precio,fecha,hora) VALUES ({0},'{1}',{2},{3},'{4}','{5}')"


"UPDATE mueble SET existencia = existencia - {0} WHERE id = {1}"

"SELECT * FROM mueble"

SELECT id, nombre, tipo, imagen, precio, codigo, existencia, color, estado FROM mueble WHERE nombre = '{0}'"

UPDATE mueble SET nombre=@nombre, tipo=@tipo, imagen=@imagen," " precio=@precio, codigo=@codigo, existencia=@existencia, color=@color, estado=@estado WHERE id=@id"

UPDATE mueble SET nombre=@nombre, tipo=@tipo, imagen=@imagen," " precio=@precio, codigo=@codigo, existencia=@existencia, color=@color, estado=@estado WHERE id=@id"

SELECT * FROM empleado

"SELECT * FROM empleado WHERE nombre = '{0}'

UPDATE empleado SET RFC=@RFC, puesto=@puesto, nombre=@nombre, usuario=@usuario, pass=@pass," "fecha_entrega=@fecha_entrega, estado=@estado WHERE id_empleado=@id_empleado"

"UPDATE empleado SET estado=@estado WHERE id_empleado=@id_empleado

("SELECT * FROM cliente");

"SELECT id_cliente, nombre, direccion, num_telefono FROM cliente WHERE nombre = '{0}'

"UPDATE cliente SET nombre=@nombre, direccion=@direccion, num_telefono=@num_telefono WHERE id_cliente=@id_cliente

"SELECT * FROM ventas"

"select * from ventas where fecha >='{0}' and fecha <= '{1}'",

"select * from ventas where id_empleado ='{0}'"

"select * from comprar"

"select * from ventas where id_empleado = '{0}' and fecha >= '{1}' and fecha <= '{2}'",*/









