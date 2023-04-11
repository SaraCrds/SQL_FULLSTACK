-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: phasequatre
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chambre`
--

DROP TABLE IF EXISTS `chambre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chambre` (
  `cha_id` int(11) NOT NULL AUTO_INCREMENT,
  `cha_hot_id` int(11) NOT NULL,
  `cha_numero` int(11) NOT NULL,
  `cha_capacite` int(11) NOT NULL,
  `cha_type` int(11) NOT NULL,
  PRIMARY KEY (`cha_id`),
  KEY `cha_hot_id` (`cha_hot_id`),
  CONSTRAINT `chambre_ibfk_1` FOREIGN KEY (`cha_hot_id`) REFERENCES `hotel` (`hot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chambre`
--

LOCK TABLES `chambre` WRITE;
/*!40000 ALTER TABLE `chambre` DISABLE KEYS */;
INSERT INTO `chambre` VALUES (1,1,1,2,1),(2,1,2,3,1),(3,1,3,2,1),(4,1,101,1,1),(5,1,102,2,1),(6,1,103,3,1),(7,1,201,2,1),(8,1,202,7,1),(9,1,203,1,1),(10,2,1,2,1),(11,2,2,2,1),(12,2,3,1,1),(13,2,101,2,1),(14,2,102,1,1),(15,2,103,3,1),(16,2,201,2,1),(17,2,202,4,1),(18,2,203,4,1),(19,3,1,3,1),(20,3,2,1,1),(21,3,3,2,1),(22,3,101,2,1),(23,3,102,2,1),(24,3,103,2,1),(25,3,201,2,1),(26,3,202,4,1),(27,3,203,4,1),(28,4,1,4,1),(29,4,2,2,1),(30,4,3,4,1),(31,4,101,1,1),(32,4,102,2,1),(33,4,103,2,1),(34,4,201,2,1),(35,4,202,2,1),(36,4,203,3,1),(37,5,1,3,1),(38,5,2,2,1),(39,5,3,2,1),(40,5,101,1,1),(41,5,102,4,1),(42,5,103,1,1),(43,5,201,2,1),(44,5,202,4,1),(45,5,203,4,1),(46,6,1,1,1),(47,6,2,1,1),(48,6,3,1,1),(49,6,101,1,1),(50,6,102,1,1),(51,6,103,1,1),(52,6,201,1,1),(53,6,202,1,1),(54,6,203,1,1),(55,7,1,1,1),(56,7,2,5,1),(57,7,3,5,1),(58,7,101,5,1),(59,7,102,5,1),(60,7,103,5,1),(61,7,201,5,1),(62,7,202,5,1),(63,7,203,5,1);
/*!40000 ALTER TABLE `chambre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `cli_nom` varchar(50) DEFAULT NULL,
  `cli_prenom` varchar(50) DEFAULT NULL,
  `cli_adresse` varchar(50) DEFAULT NULL,
  `cli_ville` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Doe','John','','LA'),(2,'Homme','Josh','','Palm Desert'),(3,'Paul','Weller','','Londre'),(4,'White','Jack','','Detroit'),(5,'Claypool','Les','','San Francisco'),(6,'Squire','Chris','','Londre'),(7,'Wood','Ronnie','','Londre');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel` (
  `hot_id` int(11) NOT NULL AUTO_INCREMENT,
  `hot_sta_id` int(11) NOT NULL,
  `hot_nom` varchar(50) NOT NULL,
  `hot_categorie` int(11) NOT NULL,
  `hot_adresse` varchar(50) NOT NULL,
  `hot_ville` varchar(50) NOT NULL,
  PRIMARY KEY (`hot_id`),
  KEY `hot_sta_id` (`hot_sta_id`),
  CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`hot_sta_id`) REFERENCES `station` (`sta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,1,'Le Magnifique',3,'rue du bas','Pralo'),(2,1,'Hotel du haut',1,'rue du haut','Pralo'),(3,2,'Le Narval',3,'place de la liberation','Vonten'),(4,2,'Les Pissenlis',4,'place du 14 juillet','Bretou'),(5,2,'RR Hotel',5,'place du bas','Bretou'),(6,2,'La Brique',2,'place du haut','Bretou'),(7,3,'Le Beau Rivage',3,'place du centre','Toras');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `res_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_cha_id` int(11) NOT NULL,
  `res_cli_id` int(11) NOT NULL,
  `res_date` datetime NOT NULL,
  `res_date_debut` datetime NOT NULL,
  `res_date_fin` datetime NOT NULL,
  `res_prix` decimal(6,2) NOT NULL,
  `res_arrhes` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`res_id`),
  KEY `res_cha_id` (`res_cha_id`),
  KEY `res_cli_id` (`res_cli_id`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`res_cha_id`) REFERENCES `chambre` (`cha_id`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`res_cli_id`) REFERENCES `client` (`cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,1,1,'2017-01-10 00:00:00','2017-07-01 00:00:00','2017-07-15 00:00:00',2400.00,800.00),(2,2,2,'2017-01-10 00:00:00','2017-07-01 00:00:00','2017-07-15 00:00:00',3400.00,100.00),(3,1,3,'2017-01-10 00:00:00','2017-07-01 00:00:00','2017-07-15 00:00:00',400.00,50.00),(4,2,4,'2017-01-10 00:00:00','2017-07-01 00:00:00','2017-07-15 00:00:00',7200.00,1800.00),(5,3,5,'2017-01-10 00:00:00','2017-07-01 00:00:00','2017-07-15 00:00:00',1400.00,450.00),(6,4,6,'2017-01-10 00:00:00','2017-07-01 00:00:00','2017-07-15 00:00:00',2400.00,780.00),(7,4,6,'2017-01-10 00:00:00','2017-07-01 00:00:00','2017-07-15 00:00:00',500.00,80.00),(8,4,1,'2017-01-10 00:00:00','2017-07-01 00:00:00','2017-07-15 00:00:00',40.00,0.00);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `station` (
  `sta_id` int(11) NOT NULL AUTO_INCREMENT,
  `sta_nom` varchar(50) NOT NULL,
  `sta_altitude` int(11) DEFAULT NULL,
  PRIMARY KEY (`sta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (1,'La Montagne',2500),(2,'Le Sud',200),(3,'La Plage',10);
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-04 12:20:44
