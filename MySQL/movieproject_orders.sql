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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `memberid` int DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `seat` varchar(45) DEFAULT NULL,
  `ticketType` varchar(45) DEFAULT NULL,
  `cinema` varchar(45) DEFAULT NULL,
  `cinemaRoom` varchar(45) DEFAULT NULL,
  `movieName` varchar(45) DEFAULT NULL,
  `movieType` varchar(45) DEFAULT NULL,
  `movieTime` varchar(45) DEFAULT NULL,
  `moviePrice` int DEFAULT NULL,
  `eatName` varchar(45) DEFAULT NULL,
  `eatPrice` int DEFAULT NULL,
  `totalPrice` int DEFAULT NULL,
  `session` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `roomOrder_fk_idx1` (`session`) /*!80000 INVISIBLE */,
  KEY `memberOrder_fk_idx` (`memberid`),
  CONSTRAINT `memberOrder_fk` FOREIGN KEY (`memberid`) REFERENCES `members` (`memberno`),
  CONSTRAINT `roomOrder_fk` FOREIGN KEY (`session`) REFERENCES `room` (`session`)
) ENGINE=InnoDB AUTO_INCREMENT=1081 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (928,NULL,'stan','A7',NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',300,NULL,0,0,NULL),(929,NULL,'stan','A8',NULL,NULL,NULL,'台北追緝令','2D','2024-09-25T00:00:00+08:00101',300,NULL,0,0,NULL),(930,NULL,'stan',NULL,NULL,NULL,NULL,'JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','2024-10-11T00:00:00+08:00112',300,NULL,0,0,NULL),(931,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',300,NULL,0,0,NULL),(932,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',300,NULL,0,0,NULL),(933,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',300,NULL,0,0,NULL),(934,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',300,NULL,0,0,NULL),(935,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',300,NULL,0,0,NULL),(936,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',300,NULL,0,0,NULL),(937,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',300,NULL,0,0,NULL),(938,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',300,NULL,0,0,NULL),(939,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',300,NULL,0,0,NULL),(940,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',300,NULL,0,0,NULL),(941,NULL,'Guest13',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',300,NULL,0,0,NULL),(942,NULL,'Guest14',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',300,NULL,0,0,NULL),(943,NULL,'Guest15','A45','12','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',600,'墨魚甜不辣,梅香脆果綠',91,691,'A202411111301'),(944,NULL,'Guest15','A46','13','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',600,'田字薯餅,起司奶蓋紅茶',94,694,'A202411111301'),(945,NULL,'Guest17',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',300,NULL,0,0,NULL),(946,NULL,'Guest18','A12',NULL,'秀太影院','B','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 10, 2024, 12:00:00 AM07:00:00 下午_+138',300,NULL,0,0,'b101019'),(947,NULL,'Guest18','A13','21','秀太影院','B','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 10, 2024, 12:00:00 AM07:00:00 下午_+138',300,NULL,0,300,'b101019'),(948,NULL,'Guest18','A14','21','秀太影院','B','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 10, 2024, 12:00:00 AM07:00:00 下午_+138',300,NULL,0,300,'b101019'),(949,NULL,'Guest18','A15','21','秀太影院','B','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 10, 2024, 12:00:00 AM07:00:00 下午_+138',300,NULL,0,300,'b101019'),(950,NULL,'Guest18','A2','21','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',300,NULL,0,300,'A202411111301'),(951,NULL,'Guest18','A20','21','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',300,NULL,0,300,'A202411111301'),(952,NULL,'Guest18','A21','21','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',300,NULL,0,300,'A202411111301'),(953,NULL,'Guest18','A22','21','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',300,NULL,0,300,'A202411111301'),(954,NULL,'Guest18',NULL,'12','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',600,'墨魚甜不辣,梅香脆果綠',91,691,'A202411111301'),(955,NULL,'Guest18',NULL,'13','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',600,'田字薯餅,起司奶蓋紅茶',94,694,'A202411111301'),(956,NULL,'Guest18',NULL,'13','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',600,'田字薯餅,起司奶蓋紅茶',94,694,'A202411111301'),(959,NULL,'Guest18',NULL,'14','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',600,'墨魚甜不辣,紅柚綠茶',97,697,'A202411111301'),(960,NULL,'Guest18',NULL,'21','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',300,NULL,0,300,'A202411111301'),(962,NULL,'Guest18',NULL,'22','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',280,NULL,0,280,'A202411111301'),(965,NULL,'Guest18',NULL,'23','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',244,NULL,0,244,'A202411111301'),(969,NULL,'Guest18',NULL,'24','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',150,NULL,0,150,'A202411111301'),(970,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',300,NULL,0,0,NULL),(971,NULL,'stan',NULL,NULL,NULL,NULL,'台北追緝令','2D','2024-09-24T16:00:00Z[UTC]101',300,NULL,0,0,NULL),(972,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-01T16:00:00Z[UTC]138',300,NULL,0,0,NULL),(973,NULL,'Guest37','A70','11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202411111301'),(974,NULL,'Guest37','A74','12','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',600,'墨魚甜不辣,梅香脆果綠',91,691,'A202411111301'),(976,NULL,'Guest37','A77','13','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',600,'田字薯餅,起司奶蓋紅茶',94,694,'A202411111301'),(979,NULL,'Guest37','A82','14','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',600,'墨魚甜不辣,紅柚綠茶',97,697,'A202411111301'),(980,NULL,'Guest37','A83','21','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',300,NULL,0,300,'A202411111301'),(982,NULL,'Guest37','A9','22','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',280,NULL,0,280,'A202411111301'),(985,NULL,'Guest37','A90','23','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',244,NULL,0,244,'A202411111301'),(989,NULL,'Guest37','A99','24','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',150,NULL,0,150,'A202411111301'),(990,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',320,NULL,0,0,NULL),(991,NULL,'stan',NULL,NULL,NULL,NULL,'JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','2024-10-11T00:00:00+08:00112',320,NULL,0,0,NULL),(992,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',320,NULL,0,0,NULL),(993,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',320,NULL,0,0,NULL),(994,NULL,'Guest49',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-01T16:00:00Z[UTC]138',300,NULL,0,0,NULL),(995,NULL,'Guest50',NULL,NULL,NULL,NULL,'變形金剛 : 源起','3D,4DX','2024-09-12T16:00:00Z[UTC]104',300,NULL,0,0,NULL),(996,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-01T16:00:00Z[UTC]138',300,NULL,0,0,NULL),(997,NULL,'stan',NULL,'11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM04:45:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202410191645'),(998,NULL,'stan',NULL,'11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202410192240'),(999,NULL,'stan',NULL,'11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202410192240'),(1000,NULL,'stan',NULL,'11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202410192240'),(1001,NULL,'Guest56','A60','11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202410192240'),(1002,NULL,'Guest56','A9','11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202410192240'),(1003,NULL,'Guest58','A52','12','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',600,'墨魚甜不辣,梅香脆果綠',91,691,'A202410192240'),(1004,NULL,'Guest58','A6','22','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',280,NULL,0,280,'A202410192240'),(1005,NULL,'Guest60',NULL,NULL,'秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 10, 2024, 12:00:00 AM09:00:00 上午_+138',300,NULL,0,0,'a101009'),(1006,NULL,'Guest61',NULL,'11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202410192240'),(1007,NULL,'Guest61',NULL,'11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202410192240'),(1008,NULL,'Guest63',NULL,NULL,'秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 10, 2024, 12:00:00 AM09:00:00 上午_+138',300,NULL,0,0,'a101009'),(1009,NULL,'Guest64',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-01T16:00:00Z[UTC]138',300,NULL,0,0,NULL),(1010,NULL,'Guest65','A15',NULL,'秀太影院','B','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM11:30:00 上午_+138',300,NULL,0,0,'B202410191130'),(1011,NULL,'Guest65','A6','21','秀太影院','B','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM11:30:00 上午_+138',300,NULL,0,300,'B202410191130'),(1012,NULL,'Guest65',NULL,'21','秀太影院','B','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM11:30:00 上午_+138',300,NULL,0,300,'B202410191130'),(1013,NULL,'Guest68','A15',NULL,'秀太影院','B','台北追緝令','2D','Oct 19, 2024, 12:00:00 AM11:30:00 上午_+101',300,NULL,0,0,''),(1014,NULL,'Guest68','A22','21','秀太影院','B','台北追緝令','2D','Oct 19, 2024, 12:00:00 AM11:30:00 上午_+101',300,NULL,0,300,''),(1015,NULL,'Guest68','A23','21','秀太影院','B','台北追緝令','2D','Oct 19, 2024, 12:00:00 AM11:30:00 上午_+101',300,NULL,0,300,''),(1018,NULL,'Guest68','A8','23','秀太影院','B','台北追緝令','2D','Oct 19, 2024, 12:00:00 AM11:30:00 上午_+101',244,NULL,0,244,''),(1019,NULL,'Guest68',NULL,'23','秀太影院','B','台北追緝令','2D','Oct 19, 2024, 12:00:00 AM11:30:00 上午_+101',244,NULL,0,244,''),(1020,NULL,'Guest73',NULL,'11','秀太影院','B','JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','Oct 10, 2024, 12:00:00 AM09:00:00 上午_+112',600,'地瓜球,紅柚綠茶',77,677,'b101009'),(1021,NULL,'Guest73',NULL,'11','秀太影院','B','JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','Oct 10, 2024, 12:00:00 AM09:00:00 上午_+112',600,'地瓜球,紅柚綠茶',77,677,'b101009'),(1022,NULL,'Guest73',NULL,'11','秀太影院','B','JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','Oct 10, 2024, 12:00:00 AM09:00:00 上午_+112',600,'地瓜球,紅柚綠茶',77,677,'b101009'),(1025,NULL,'Guest73',NULL,'12','秀太影院','B','JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','Oct 10, 2024, 12:00:00 AM09:00:00 上午_+112',600,'墨魚甜不辣,梅香脆果綠',91,691,'b101009'),(1026,NULL,'Guest73',NULL,'12','秀太影院','B','JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','Oct 10, 2024, 12:00:00 AM09:00:00 上午_+112',600,'墨魚甜不辣,梅香脆果綠',91,691,'b101009'),(1027,NULL,'Guest73',NULL,'11','秀太影院','B','JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','Oct 19, 2024, 12:00:00 AM11:30:00 上午_+112',600,'地瓜球,紅柚綠茶',77,677,''),(1028,NULL,'Guest73',NULL,'11','秀太影院','B','JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','Oct 19, 2024, 12:00:00 AM11:30:00 上午_+112',600,'地瓜球,紅柚綠茶',77,677,''),(1029,NULL,'Guest73',NULL,'11','秀太影院','B','JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','Oct 19, 2024, 12:00:00 AM11:30:00 上午_+112',600,'地瓜球,紅柚綠茶',77,677,''),(1032,NULL,'Guest73',NULL,'12','秀太影院','B','JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','Oct 19, 2024, 12:00:00 AM11:30:00 上午_+112',600,'墨魚甜不辣,梅香脆果綠',91,691,''),(1033,NULL,'Guest73',NULL,'12','秀太影院','B','JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','Oct 19, 2024, 12:00:00 AM11:30:00 上午_+112',600,'墨魚甜不辣,梅香脆果綠',91,691,''),(1034,NULL,'Guest73',NULL,'12','秀太影院','B','JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','Oct 19, 2024, 12:00:00 AM11:30:00 上午_+112',600,'墨魚甜不辣,梅香脆果綠',91,691,''),(1035,NULL,'Guest84','A61',NULL,'秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',300,NULL,0,0,'A202410192240'),(1036,NULL,'Guest84','A65','21','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',300,NULL,0,300,'A202410192240'),(1037,NULL,'Guest84',NULL,'21','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',300,NULL,0,300,'A202410192240'),(1038,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',320,NULL,0,0,NULL),(1039,NULL,'stan',NULL,NULL,NULL,NULL,'JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','2024-10-11T00:00:00+08:00112',320,NULL,0,0,NULL),(1040,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',320,NULL,0,0,NULL),(1041,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',320,NULL,0,0,NULL),(1042,NULL,'stan',NULL,NULL,NULL,NULL,'JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','2024-10-11T00:00:00+08:00112',320,NULL,0,0,NULL),(1043,NULL,'stan',NULL,NULL,NULL,NULL,'台北追緝令','2D','2024-09-25T00:00:00+08:00101',320,NULL,0,0,NULL),(1044,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',320,NULL,0,0,NULL),(1045,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',320,NULL,0,0,NULL),(1046,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',320,NULL,0,0,NULL),(1047,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',320,NULL,0,0,NULL),(1048,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',320,NULL,0,0,NULL),(1049,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-01T16:00:00Z[UTC]138',300,NULL,0,0,NULL),(1050,NULL,'stan',NULL,NULL,NULL,NULL,'台北追緝令','2D','2024-09-24T16:00:00Z[UTC]101',320,NULL,0,0,NULL),(1051,NULL,'stan',NULL,NULL,NULL,NULL,'台北追緝令','2D','2024-09-24T16:00:00Z[UTC]101',320,NULL,0,0,NULL),(1052,NULL,'stan',NULL,NULL,NULL,NULL,'台北追緝令','2D','2024-09-24T16:00:00Z[UTC]101',320,NULL,0,0,NULL),(1053,NULL,'Guest102',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-01T16:00:00Z[UTC]138',300,NULL,0,0,NULL),(1054,NULL,'Stanley',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-01T16:00:00Z[UTC]138',300,NULL,0,0,NULL),(1055,NULL,'Stanley',NULL,'11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 10, 2024, 12:00:00 AM09:00:00 上午_+138',600,'地瓜球,紅柚綠茶',77,677,'a101009'),(1056,NULL,'Stanley',NULL,'11','秀太影院','B','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 10, 2024, 12:00:00 AM07:00:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'b101019'),(1057,NULL,'Stanley','A38','11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202410192240'),(1058,NULL,'Stanley','A53','11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202410192240'),(1059,NULL,'Stanley',NULL,'11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202410192240'),(1060,NULL,'Stanley','A66','11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202411111301'),(1061,NULL,'Stanley','A58','11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202411111301'),(1062,NULL,'Stanley','A51','11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Nov 11, 2024, 12:00:00 AM01:01:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202411111301'),(1063,NULL,'Stanley','A9','11','秀太影院','B','JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','Oct 19, 2024, 12:00:00 AM11:30:00 上午_+112',600,'地瓜球,紅柚綠茶',77,677,''),(1064,NULL,'Stanley','A25','11','秀太影院','B','JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','Oct 19, 2024, 12:00:00 AM11:30:00 上午_+112',600,'地瓜球,紅柚綠茶',77,677,''),(1065,NULL,'Stanley','A24','11','秀太影院','B','JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','Oct 19, 2024, 12:00:00 AM11:30:00 上午_+112',600,'地瓜球,紅柚綠茶',77,677,''),(1066,NULL,'Guest115',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-02T00:00:00+08:00138',300,NULL,0,0,NULL),(1067,NULL,'Guest116','A45','11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202410192240'),(1068,NULL,'Guest116','A44','11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202410192240'),(1069,NULL,'Guest116','A44','11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202410192240'),(1070,NULL,'Stanley','A59','11','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',600,'地瓜球,紅柚綠茶',77,677,'A202410192240'),(1071,NULL,'Stanley','A58','12','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',600,'墨魚甜不辣,梅香脆果綠',91,691,'A202410192240'),(1072,NULL,'Stanley','A57','21','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',300,NULL,0,300,'A202410192240'),(1073,NULL,'Stanley','A51','21','秀太影院','A','小丑：雙重瘋狂','2D,3D,4DX,IMAX','Oct 19, 2024, 12:00:00 AM10:40:00 下午_+138',300,NULL,0,300,'A202410192240'),(1074,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-01T16:00:00Z[UTC]138',320,NULL,0,0,NULL),(1075,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-01T16:00:00Z[UTC]138',320,NULL,0,0,NULL),(1076,NULL,'stan',NULL,NULL,NULL,NULL,'台北追緝令','2D','2024-09-24T16:00:00Z[UTC]101',320,NULL,0,0,NULL),(1077,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-01T16:00:00Z[UTC]138',320,NULL,0,0,NULL),(1078,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-01T16:00:00Z[UTC]138',320,NULL,0,0,NULL),(1079,NULL,'stan',NULL,NULL,NULL,NULL,'小丑：雙重瘋狂','2D,3D,4DX,IMAX','2024-10-01T16:00:00Z[UTC]138',320,NULL,0,0,NULL),(1080,NULL,'Guest129',NULL,NULL,NULL,NULL,'JUNG KOOK：I AM STILL - THE PARTY EDITION','2D','2024-10-10Z112',300,NULL,0,0,NULL);
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

-- Dump completed on 2024-11-23 17:16:29