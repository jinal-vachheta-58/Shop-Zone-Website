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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `p_id` int DEFAULT NULL,
  `c_id` int DEFAULT NULL,
  `dp_id` int DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  `num_of_items` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `p_id` (`p_id`),
  KEY `c_id` (`c_id`),
  KEY `dp_id` (`dp_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `payment` (`p_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`dp_id`) REFERENCES `delivery_person` (`dp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,27,14,1,'Processing',5,'2024-01-25','380007',NULL,'dzshxfn'),(2,28,14,1,'Order Placed',1,'2024-02-25','380007',NULL,'13/101, Ratnadeep apartment, near d.p. school '),(4,30,17,1,'Order Placed',4,'2024-03-26','380007',NULL,'j-101, Abhishek apartment ,near Ganesh collage, Nava Vadaj ,Ahmedabad , Gujarat'),(5,31,18,1,'Order Placed',2,'2024-05-26','380007',NULL,'202, vinay appartment, aanadnagar'),(6,32,18,1,'Order Placed',1,'2024-06-26','380007',NULL,'202, vinay appartment, aanadnagar'),(7,33,20,1,'delivered',2,'2024-10-27','380007',NULL,'401,tirupati appartment'),(9,35,20,1,'Order Placed',1,'2023-12-21','380007',NULL,'602'),(10,36,18,1,'Order Placed',4,'2025-01-04','380007',NULL,'j-101, Abhishek apartment ,near Ganesh collage, Nava Vadaj ,Ahmedabad , Gujarat');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
