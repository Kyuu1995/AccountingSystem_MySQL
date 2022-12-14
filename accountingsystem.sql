CREATE DATABASE  IF NOT EXISTS `accountingsystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `accountingsystem`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: accountingsystem
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `account_no` int NOT NULL AUTO_INCREMENT,
  `type_no` enum('1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `item_no` int NOT NULL,
  `amount` int NOT NULL,
  `notes` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_no` int NOT NULL,
  PRIMARY KEY (`account_no`),
  KEY `fk_account_user_data_idx` (`user_no`),
  KEY `fk_account_item1_idx` (`type_no`,`item_no`),
  CONSTRAINT `fk_account_item1` FOREIGN KEY (`type_no`, `item_no`) REFERENCES `item` (`type_no`, `item_no`),
  CONSTRAINT `fk_account_user_data` FOREIGN KEY (`user_no`) REFERENCES `user` (`user_no`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'1','2022-05-05',1,35000,'',1),(2,'2','2022-05-05',2,8000,'??????',1),(3,'2','2022-05-07',1,1000,'??????',1),(4,'2','2022-05-15',6,1200,'??????',1),(5,'2','2022-05-18',4,800,'KTV',1),(6,'2','2022-05-30',5,2000,'??????',1),(7,'2','2022-05-31',3,1000,'??????',1),(8,'1','2022-05-05',1,38000,'',2),(9,'2','2022-05-07',2,1000,'??????',2),(10,'2','2022-05-09',6,15000,'??????',2),(11,'2','2022-05-11',1,600,'??????',2),(12,'2','2022-05-15',5,970,'?????????',2),(13,'2','2022-05-20',1,175,'?????????',2),(14,'2','2022-05-26',4,360,'??????',2),(15,'2','2022-05-30',3,1000,'??????',2),(16,'2','2022-05-31',6,200,'??????',2),(17,'1','2022-06-05',1,38000,'',2),(18,'1','2022-06-05',2,3000,'',2),(19,'2','2022-06-07',2,8000,'??????',2),(20,'2','2022-06-09',6,15000,'??????',2),(21,'2','2022-06-14',3,1000,'??????',2),(22,'2','2022-06-17',1,360,'??????',2),(23,'2','2022-06-22',6,2200,'?????????',2),(24,'2','2022-06-30',3,500,'ETC',2),(25,'1','2022-06-05',1,37000,'??????1000',1),(26,'1','2022-06-10',4,20000,'??????',1),(27,'2','2022-06-05',1,500,'??????',1),(28,'2','2022-06-08',2,8000,'??????',1),(29,'2','2022-06-11',6,1200,'??????',1),(30,'2','2022-06-15',4,2700,'Disney+',1),(31,'2','2022-06-21',4,320,'??????',1),(32,'2','2022-06-23',3,1000,'??????',1),(33,'2','2022-06-30',6,2000,'??????',1),(34,'1','2022-07-05',1,37000,'',1),(35,'2','2022-07-02',1,1200,'??????',1),(36,'2','2022-07-04',3,1000,'??????',1),(37,'2','2022-07-09',2,8000,'??????',1),(38,'2','2022-07-19',5,500,'????????????',1),(39,'2','2022-07-22',6,1000,'?????????',1),(40,'2','2022-07-30',6,1250,'???',1),(41,'1','2022-07-03',1,38000,'',2),(42,'2','2022-07-05',2,9000,'??????',2),(43,'2','2022-07-09',6,15000,'??????',2),(44,'2','2022-07-13',1,750,'??????',2),(45,'2','2022-07-17',3,1200,'??????',2),(46,'2','2022-07-19',5,2400,'??????',2),(47,'2','2022-07-27',4,600,'?????????',2),(48,'1','2022-08-05',1,40000,'??????2000',2),(49,'2','2022-08-06',2,1100,'??????',2),(50,'2','2022-08-09',6,15000,'??????',2),(51,'2','2022-08-10',2,9000,'??????',2),(52,'2','2022-08-18',3,1000,'??????',2),(53,'2','2022-08-26',1,300,'??????',2),(54,'2','2022-08-30',4,700,'KTV',2),(55,'1','2022-08-05',1,37000,'',1),(56,'2','2022-08-05',2,8000,'??????',1),(57,'2','2022-08-08',2,900,'??????',1),(58,'2','2022-08-17',3,1000,'??????',1),(59,'2','2022-08-27',1,600,'??????',1),(60,'2','2022-08-31',4,10000,'????????????(????????????)',1),(61,'1','2022-09-05',1,38000,'??????1000',1),(62,'2','2022-09-01',1,500,'??????',1),(63,'2','2022-09-03',1,600,'??????',1),(64,'2','2022-09-05',2,9000,'??????',1),(65,'2','2022-09-05',5,200,'??????',1);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `type_no` enum('1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_no` int NOT NULL,
  `item_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_no`,`item_no`),
  CONSTRAINT `fk_item_type1` FOREIGN KEY (`type_no`) REFERENCES `type` (`type_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('1',1,'??????'),('1',2,'??????'),('1',3,'??????'),('1',4,'??????'),('1',5,'??????'),('1',6,'??????'),('1',7,'??????'),('1',8,'??????'),('2',1,'??????'),('2',2,'??????'),('2',3,'??????'),('2',4,'??????'),('2',5,'??????'),('2',6,'??????');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `type_no` enum('1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_name` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES ('1','??????'),('2','??????');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_no` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('???','???') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_no`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'kyuu1995','f7d63bbdc0fda6d3c6ae9c061a86910d','Kyuu','kyuu19950212@gmail.com','???'),(2,'annie1996','afdec7005cc9f14302cd0474fd0f3c96','Annie','annie19961031@gmail.com','???'),(3,'jenny1998','69a829ce4f4e0d631ca634a866590a60','Jenny','jenny19980412@gmail.com','???'),(4,'peter1993','6ace73484d45f4c2ba13ec972dad64be','Peter','peter19930512@gmail.com','???');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-06  8:40:10
