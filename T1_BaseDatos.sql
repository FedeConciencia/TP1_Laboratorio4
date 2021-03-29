-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: tp1_laboratorio4
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `idEmpresa` int NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(128) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `horarioAtencion` varchar(256) NOT NULL,
  `quienesSomos` varchar(1024) NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  `domicilio` varchar(256) NOT NULL,
  `email` varchar(75) NOT NULL,
  PRIMARY KEY (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (8,'Diario ElOtro SA','422332632','Lunes a Viernes 8Hs a 18Hs','Una empresa de periodismo Alternativo',-32.8689239,-68.8154645,'Las Heras 2020','elotro@gmail.com'),(9,'Diario Uno SA','424324632','Lunes a Sabados 9Hs a 17hs','Una empresa que Informa',-32.8912063,-68.8567977,'Godoy Cruz 10','diarioUno@gmail.com'),(10,'Diario Los Andes SA','435624632','Lunes a jueves 10Hs a 17Hs','Una empresa pionera del Periodismo en Mendoza',-32.9507705,-68.8361425,'Marias 21','losAndes@gmail.com');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticia`
--

DROP TABLE IF EXISTS `noticia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noticia` (
  `idNoticia` int NOT NULL AUTO_INCREMENT,
  `tituloNoticia` varchar(128) NOT NULL,
  `resumenNoticia` varchar(1024) NOT NULL,
  `imagenNoticia` varchar(128) NOT NULL,
  `contenidoHtml` mediumtext NOT NULL,
  `publicada` varchar(1) NOT NULL,
  `fechaPublicacion` date NOT NULL,
  `idEmpresa` int NOT NULL,
  PRIMARY KEY (`idNoticia`),
  KEY `idEmpresa_FK1_idx` (`idEmpresa`),
  CONSTRAINT `idEmpresa_FK1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticia`
--

LOCK TABLES `noticia` WRITE;
/*!40000 ALTER TABLE `noticia` DISABLE KEYS */;
INSERT INTO `noticia` VALUES (10,'Gano Platense','El calamar vence 2-0 a River Plate','imagenes/platense.jpg','contenido HTML','Y','2020-06-06',8),(11,'Gano Boca Juniors','Boca vence 11-0 a San Lorenzo','imagenes/boca.jpg','<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Contenido ingresado desde el editor de texto.</p>\r\n</body>\r\n</html>','Y','2021-02-05',8),(12,'Gano Gimnasia','Gimnasia vence 16-0 a Independiente','imagenes/gimnasia.jpg','contenido HTML','Y','2019-01-07',8);
/*!40000 ALTER TABLE `noticia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-28 16:51:28
