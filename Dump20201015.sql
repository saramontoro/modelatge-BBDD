-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: mydb
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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `client_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `adreça` varchar(45) NOT NULL,
  `telefon` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `data_registre` datetime NOT NULL,
  `client_recomanacio` varchar(45) DEFAULT NULL,
  `venedor` varchar(45) NOT NULL,
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `id_client_UNIQUE` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Sara','Avenida dos 24','774657548','arroba90@hotmail.com','2020-12-31 12:32:11',NULL,'Naiara');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveidors`
--

DROP TABLE IF EXISTS `proveidors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveidors` (
  `proveidor_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `adreça` varchar(500) NOT NULL,
  `telefon` int NOT NULL,
  `fax` int NOT NULL,
  `nif` varchar(45) NOT NULL,
  PRIMARY KEY (`proveidor_id`),
  UNIQUE KEY `id_proveïdor_UNIQUE` (`proveidor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveidors`
--

LOCK TABLES `proveidors` WRITE;
/*!40000 ALTER TABLE `proveidors` DISABLE KEYS */;
INSERT INTO `proveidors` VALUES (1,'Ulleres guais','Passatge dels gots 2 09625',953728742,936264537,'B7834735');
/*!40000 ALTER TABLE `proveidors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ulleres`
--

DROP TABLE IF EXISTS `ulleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ulleres` (
  `ullera_id` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) NOT NULL,
  `graduacio_vidre_dret` decimal(5,2) NOT NULL,
  `graduacio_vidre_esquerra` decimal(5,2) NOT NULL,
  `tipus_montura` varchar(45) NOT NULL,
  `color_montura` varchar(45) NOT NULL,
  `color_vidre_dret` varchar(45) NOT NULL,
  `color_vidre_esquerra` varchar(45) NOT NULL,
  `preu` decimal(5,2) NOT NULL,
  `client_id` int NOT NULL,
  `proveidor_id` int NOT NULL,
  PRIMARY KEY (`ullera_id`),
  UNIQUE KEY `id_ullera_UNIQUE` (`ullera_id`),
  KEY `fk_Ulleres_Clients1_idx` (`client_id`),
  KEY `fk_Ulleres_Proveïdors1_idx` (`proveidor_id`),
  CONSTRAINT `fk_Ulleres_Clients1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ulleres_Proveïdors1` FOREIGN KEY (`proveidor_id`) REFERENCES `proveidors` (`proveidor_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ulleres`
--

LOCK TABLES `ulleres` WRITE;
/*!40000 ALTER TABLE `ulleres` DISABLE KEYS */;
INSERT INTO `ulleres` VALUES (1,'Rayban',2.25,1.75,'flotant','vermell','transparent','transparent',75.50,1,1);
/*!40000 ALTER TABLE `ulleres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-15 13:15:36
