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
-- Table structure for table `sub_category`
--

DROP TABLE IF EXISTS `sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_category` (
  `sub_cat_id` int NOT NULL AUTO_INCREMENT,
  `sub_cat_name` varchar(100) NOT NULL,
  `sub_cat_pic_path` varchar(100) NOT NULL,
  `p_cat_id` int DEFAULT NULL,
  `total_products` int DEFAULT '0',
  PRIMARY KEY (`sub_cat_id`),
  KEY `p_cat_id` (`p_cat_id`),
  CONSTRAINT `sub_category_ibfk_1` FOREIGN KEY (`p_cat_id`) REFERENCES `parent_category` (`p_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_category`
--

LOCK TABLES `sub_category` WRITE;
/*!40000 ALTER TABLE `sub_category` DISABLE KEYS */;
INSERT INTO `sub_category` VALUES (8,'Jackets & Coats','img/cat_img/c1.jpg',1,1),(9,'Jeans','img/cat_img/c2.jpg',1,3),(10,'Shirts','img/cat_img/c3.jpg',1,3),(11,'Sweatshirts & Hoodies','img/cat_img/c4.jpg',1,3),(12,'Track Pants','img/cat_img/c5.jpg',1,3),(13,'T-shirts','img/cat_img/c6.jpg',1,2),(14,'Nehru Jackets','img/cat_img/c7.jpg',1,2),(15,'Trousers','img/cat_img/c8.jpg',1,2),(16,'Kurtas','img/cat_img/c9.jpg',2,2),(17,'Salwars ','img/cat_img/c10.jpg',2,0),(18,'Sarees','img/cat_img/c11.jpg',2,2),(19,'Dupattas','img/cat_img/c12.jpg',2,2),(20,'Blouses','img/cat_img/c13.jpg',2,2),(21,'Leggings','img/cat_img/c14.jpg',2,2),(22,'Skirts & Ghagras','img/cat_img/c15.jpg',2,2),(23,'frocks','img/cat_img/c16.jpg',2,2),(24,'jogger set','img/cat_img/c17.jpg',3,0),(25,'hoodie','img/cat_img/c18.jpg',3,0),(26,'flare dress','img/cat_img/c19.jpg',3,0),(27,'shorts','img/cat_img/c20.jpg',3,0),(28,'nightwear','img/cat_img/c21.jpg',3,0),(29,' tracksuit ','img/cat_img/c22.jpg',3,0);
/*!40000 ALTER TABLE `sub_category` ENABLE KEYS */;
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
