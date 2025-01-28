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
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `img_id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `pro_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`img_id`),
  KEY `pro_id` (`pro_id`),
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (3,'img/product_img/p3.jpg',3,'2024-12-01 17:40:37'),(4,'img/product_img/p4.jpg',4,'2024-12-01 17:40:37'),(5,'img/product_img/p5.jpg',5,'2024-12-01 17:40:37'),(6,'img/product_img/p6.jpg',6,'2024-12-01 17:40:37'),(7,'img/product_img/p7.jpg',7,'2024-12-01 17:40:37'),(8,'img/product_img/p8.jpg',8,'2024-12-01 17:40:37'),(9,'img/product_img/p9.jpg',9,'2024-12-01 17:40:37'),(10,'img/product_img/p10.jpg',10,'2024-12-01 17:40:37'),(11,'img/product_img/p11.jpg',11,'2024-12-01 17:40:37'),(12,'img/product_img/p12.jpg',12,'2024-12-01 17:40:37'),(13,'img/product_img/p13.jpg',13,'2024-12-01 17:40:37'),(14,'img/product_img/p14.jpg',14,'2024-12-01 17:40:37'),(15,'img/product_img/p15.jpg',15,'2024-12-01 17:40:37'),(16,'img/product_img/p16.jpg',16,'2024-12-01 17:40:37'),(17,'img/product_img/p17.jpg',17,'2024-12-01 17:40:37'),(18,'img/product_img/p18.jpg',18,'2024-12-01 17:40:37'),(19,'img/product_img/p19.jpg',19,'2024-12-01 17:40:37'),(20,'img/product_img/p20.jpg',20,'2024-12-01 17:40:37'),(21,'img/product_img/p21.jpg',21,'2024-12-01 17:40:37'),(22,'img/product_img/p22.jpg',22,'2024-12-01 17:40:37'),(23,'img/product_img/p23.jpg',23,'2024-12-01 17:40:37'),(24,'img/product_img/p24.jpg',24,'2024-12-01 17:40:37'),(25,'img/product_img/p25.jpg',25,'2024-12-01 17:40:37'),(26,'img/product_img/p26.jpg',26,'2024-12-01 17:40:37'),(27,'img/product_img/p27.jpg',27,'2024-12-01 17:40:37'),(28,'img/product_img/p28.jpg',28,'2024-12-01 17:40:37'),(29,'img/product_img/p29.jpg',29,'2024-12-01 17:40:37'),(30,'img/product_img/p30.jpg',30,'2024-12-01 17:40:37'),(31,'img/product_img/p31.jpg',31,'2024-12-01 17:40:37'),(32,'img/product_img/p32.jpg',32,'2024-12-01 17:40:37'),(33,'img/product_img/p33.jpg',33,'2024-12-01 17:40:37'),(34,'img/product_img/p34.jpg',34,'2024-12-01 17:40:37'),(35,'img/product_img/p35.jpg',35,'2024-12-01 17:40:37');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
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
