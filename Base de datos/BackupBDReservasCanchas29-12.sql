-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: reservadecanchas
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `canchas`
--

DROP TABLE IF EXISTS `canchas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canchas` (
  `idCancha` int NOT NULL AUTO_INCREMENT,
  `tipoCancha` varchar(30) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `cantidadPorEquipo` varchar(10) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `precio` decimal(10,0) NOT NULL,
  `type` varchar(25) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `imagenes` varchar(500) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `suelo` varchar(45) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `medidas` varchar(45) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idCancha`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canchas`
--

LOCK TABLES `canchas` WRITE;
/*!40000 ALTER TABLE `canchas` DISABLE KEYS */;
INSERT INTO `canchas` VALUES (1,'Cancha Cesped Sintético','5',1700,'futbol','/Reserva_Canchas/images/futbol5_2.jpg',NULL,NULL),(2,'Cancha de Cemento',NULL,3500,'padel','/Reserva_Canchas/images/PaddleCemento.jpg','Cemento','20mts x 10mts'),(3,'Cancha Piso','5',2500,'futbol','/Reserva_Canchas/images/futbol5_2.jpg',NULL,NULL),(4,'Cancha Piso','7',3000,'futbol','/Reserva_Canchas/images/futbol5_2.jpg',NULL,NULL),(5,'Cancha Césped y Caucho',NULL,5000,'padel','/Reserva_Canchas/images/PaddleCemento.jpg','Cesped','20mts x 10mts'),(6,'Cancha Césped y Arena',NULL,5500,'padel','/Reserva_Canchas/images/PaddleCemento.jpg','Arena','20mts x 10mts');
/*!40000 ALTER TABLE `canchas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `idReserva` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `totalReserva` decimal(10,0) NOT NULL,
  `idUsuario` int NOT NULL,
  `idCancha` int NOT NULL,
  PRIMARY KEY (`idReserva`),
  KEY `idUsuario_idx` (`idUsuario`),
  KEY `idCancha_idx` (`idCancha`),
  CONSTRAINT `idCancha` FOREIGN KEY (`idCancha`) REFERENCES `canchas` (`idCancha`),
  CONSTRAINT `idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (2,'2022-12-21','11:00:00',3500,1,2),(9,'2022-12-29','15:00:00',5000,1,5),(10,'2022-12-29','14:00:00',2500,1,3),(11,'2022-12-29','18:00:00',1700,4,1),(12,'2022-12-30','20:00:00',5000,5,5),(13,'2022-12-30','16:00:00',5000,4,5),(14,'2022-12-29','19:00:00',2500,7,3),(15,'2022-12-29','15:00:00',2500,8,3),(16,'2022-12-29','17:00:00',5000,8,5);
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `apellido` varchar(30) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `clave` varchar(30) COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'tomas','rulitos','pancho@tomas.com','123456'),(4,'Paola Andre','Blanco','andrea9328@gmail.com','prueba123'),(5,'tomas','perez','ptomas@gmail.com','prueba123'),(6,'tomas','pedro','pedro@gmail.com','prueba123'),(7,'grabacion','prueba ','grabacion@gmail.com','Prueba123456789'),(8,'prueba','usuario','prueba123@gmail.com','Prueba123456789');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-29 18:20:32
