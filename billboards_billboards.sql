-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: billboards
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `billboards`
--

DROP TABLE IF EXISTS `billboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billboards` (
  `b_id` int NOT NULL AUTO_INCREMENT,
  `b_cost` int NOT NULL,
  `b_size` int NOT NULL,
  `b_adress` varchar(45) NOT NULL,
  `b_place` varchar(45) NOT NULL,
  `b_quality` varchar(45) NOT NULL,
  `ow_id` int NOT NULL,
  `b_setdate` date NOT NULL,
  PRIMARY KEY (`b_id`),
  KEY `owner_to_billboard_idx` (`ow_id`),
  CONSTRAINT `owner_to_board` FOREIGN KEY (`ow_id`) REFERENCES `owner` (`ow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billboards`
--

LOCK TABLES `billboards` WRITE;
/*!40000 ALTER TABLE `billboards` DISABLE KEYS */;
INSERT INTO `billboards` VALUES (1,100,10,'Измайловский пр-т 73а','На здании','Хорошее',1,'2022-02-28'),(2,200,20,'Большие Каменщики 10','У дороги','Приемлемое',2,'2020-04-28'),(3,500,20,'Рублевское ш. 112','У дороги','Хорошее',1,'2022-03-12');
/*!40000 ALTER TABLE `billboards` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-08 16:43:45
