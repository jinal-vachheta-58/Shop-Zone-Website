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
-- Table structure for table `delivery_person`
--

DROP TABLE IF EXISTS `delivery_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_person` (
  `dp_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `order_area1` varchar(100) DEFAULT NULL,
  `order_area2` varchar(100) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `total_delivery` int DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`dp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_person`
--

LOCK TABLES `delivery_person` WRITE;
/*!40000 ALTER TABLE `delivery_person` DISABLE KEYS */;
INSERT INTO `delivery_person` VALUES (1,'jinal','jinal@gmail.com','1234','380007','380013','2024-06-23',2,12000.00),(6,'nimesh','nimesh@gmail.com','123','380006','380016','2025-01-04',0,12000.00),(7,'yogesh','yogesh@gmail.com','123','380024','380022','2025-01-04',0,12000.00),(8,'kishan','kishan@gmail.com','123','380015','380009','2025-01-04',0,12000.00),(9,'kamal','kamal@gmail.com','123','380028','380054','2025-01-04',0,12000.00),(10,'kamal','kamal@gmail.com','123','380028','380054','2025-01-04',0,12000.00),(16,'deep','deep@gmail.com','123','380022','380004','2025-01-04',0,12000.00),(17,'fenil','fenil@gmail.com','123','380016','380026','2025-01-04',0,12000.00),(18,'heet','heet@gmail.com','123','380019','380001','2025-01-04',0,12000.00),(19,'lemin','lemin@gmail.com','123','380009','380008','2025-01-04',0,12000.00),(20,'aman','aman@gmail.com','123','380004','380001','2025-01-04',0,12000.00),(21,'umang','umang@gmail.com','123','380004','380006','2025-01-04',0,12000.00),(22,'jay','jay@gmail.com','123','380027','380001','2025-01-04',0,12000.00),(23,'PARIN','parin@gmail.com','123','380001','380050','2025-01-04',0,12000.00),(24,'neel','neel@gmail.com','123','380004','380022','2025-01-04',0,12000.00),(25,'dev','dev@gmail.com','123','380021','380009','2025-01-04',0,12000.00),(26,'rohit','rohit@gmail.com','123','380004','382405','2025-01-04',0,12000.00),(27,'himmat','himmat@gmail.com','123','380001','380018','2025-01-04',0,12000.00),(28,'suraj','suraj@gmail.com','123','380014','380052','2025-01-04',0,12000.00);
/*!40000 ALTER TABLE `delivery_person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-28 13:03:53
