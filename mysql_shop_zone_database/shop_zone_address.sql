-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop_zone
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `a_id` int NOT NULL AUTO_INCREMENT,
  `dp_id` int DEFAULT NULL,
  `area_name` varchar(50) DEFAULT NULL,
  `pin_code` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`a_id`),
  KEY `dp_id` (`dp_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`dp_id`) REFERENCES `delivery_person` (`dp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (8,NULL,'Ambawadi','380006'),(9,NULL,'Anandnagar','380007'),(10,NULL,'Asarwa Chakla','380016'),(11,NULL,'Asarwa Ext South','380024'),(12,NULL,'Ashram Road P.O','380009'),(13,NULL,'Azad Society','380015'),(14,NULL,'Bapunagar','380024'),(15,NULL,'Behrampura','380022'),(16,NULL,'Bhairavnath Road','380028'),(17,NULL,'Bodakdev','380054'),(18,NULL,'Calico Mills','380022'),(19,NULL,'Cantonment','380004'),(20,NULL,'Civil Hospital','380016'),(21,NULL,'Ctm Char Rasta','380026'),(22,NULL,'D Cabin','380019'),(23,NULL,'Dariapur Ahmedabad','380001'),(24,NULL,'Darpan Society','380009'),(25,NULL,'Daxini Society','380008'),(26,NULL,'Delhi Gate Ahmedabad','380004'),(27,NULL,'District Court Ahmedabad','380001'),(28,NULL,'Dudheshwar Tavdipura','380004'),(29,NULL,'Ellisbridge','380006'),(30,NULL,'Gandhi Ashram Ahmedabad','380027'),(31,NULL,'Gandhi Road Ahmedabad','380001'),(32,NULL,'Gheekanta Road','380001'),(33,NULL,'Ghodasar Ahmedabad','380050'),(34,NULL,'Girdharnagar','380004'),(35,NULL,'Gita Mandir Road','380022'),(36,NULL,'Gomtipur','380021'),(37,NULL,'Gujarat University','380009'),(38,NULL,'Gyaspur','382405'),(40,NULL,'I E Bapunagar','380024'),(41,NULL,'I I M','380015');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-28 13:03:52
