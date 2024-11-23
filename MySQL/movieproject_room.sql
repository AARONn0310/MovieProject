CREATE DATABASE  IF NOT EXISTS `movieproject` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `movieproject`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: movieproject
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `id` int NOT NULL AUTO_INCREMENT,
  `roomname` varchar(45) DEFAULT NULL,
  `roomusing` varchar(45) DEFAULT NULL,
  `movieid` int DEFAULT NULL,
  `roommovie` varchar(45) DEFAULT NULL,
  `playdate` date DEFAULT NULL,
  `playtime` time DEFAULT NULL,
  `session` varchar(45) NOT NULL,
  `seats` int DEFAULT NULL,
  PRIMARY KEY (`id`,`session`),
  KEY `movieRoom_fk_idx` (`movieid`),
  KEY `roomSeat_fk_idx` (`session`),
  CONSTRAINT `movieRoom_fk` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'A','ok',1,'小丑：雙重瘋狂','2024-10-10','09:00:00','a101009',NULL),(2,'A','ok',1,'小丑：雙重瘋狂','2024-10-10','15:00:00','a101015',NULL),(3,'B','ok',2,'JUNG KOOK：I AM STILL - THE PARTY EDITION','2024-10-10','09:00:00','b101009',NULL),(4,'B','ok',3,'台北追緝令','2024-10-10','14:00:00','b101014',NULL),(5,'A','ok',4,'變形金剛 : 源起','2024-10-11','10:00:00','a101110',NULL),(6,'A','ok',5,'飛鳥總動員','2024-10-11','16:00:00','a101116',NULL),(7,'B','ok',1,'小丑：雙重瘋狂','2024-10-10','19:00:00','b101019',NULL),(8,'A','ok',1,'小丑：雙重瘋狂','2024-11-11','13:01:00','A202411111301',100),(9,'A','ok',1,'小丑：雙重瘋狂','2024-10-19','16:45:00','A202410191645',30),(10,'B','ok',1,'小丑：雙重瘋狂','2024-10-19','11:30:00','B202410191130',25),(11,'B','ok',2,'JUNG KOOK：I AM STILL - THE PARTY EDITION','2024-10-19','11:30:00','',25),(12,'B','ok',3,'台北追緝令','2024-10-19','11:30:00','',25),(13,'B','ok',4,'變形金剛 : 源起','2024-10-19','11:30:00','',25),(14,'B','ok',3,'台北追緝令','2024-10-19','20:35:00','B202410192035',45),(15,'A','ok',3,'台北追緝令','2024-10-19','20:35:00','A202410192035',45),(16,'B','ok',4,'變形金剛 : 源起','2024-10-19','20:35:00','B202410192035',45),(17,'A','ok',5,'飛鳥總動員','2024-10-19','20:35:00','A202410192035',45),(18,'B','ok',5,'飛鳥總動員','2024-10-19','20:35:00','B202410192035',45),(19,'A','ok',1,'小丑：雙重瘋狂','2024-10-19','22:40:00','A202410192240',65);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-23 17:16:30
