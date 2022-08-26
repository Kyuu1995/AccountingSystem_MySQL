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
-- Table structure for table `expenditure`
--

DROP TABLE IF EXISTS `expenditure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenditure` (
  `expenditure_no` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `item_no` enum('1','2','3','4','5','6') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `notes` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_no` int NOT NULL,
  PRIMARY KEY (`expenditure_no`),
  KEY `fk_income_item_income_idx` (`item_no`),
  KEY `fk_expenditure_user_data1_idx` (`user_no`),
  CONSTRAINT `fk_expenditure_user_data1` FOREIGN KEY (`user_no`) REFERENCES `user_data` (`user_no`),
  CONSTRAINT `fk_income_item_income` FOREIGN KEY (`item_no`) REFERENCES `item_expenditure` (`item_expenditure_no`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenditure`
--

LOCK TABLES `expenditure` WRITE;
/*!40000 ALTER TABLE `expenditure` DISABLE KEYS */;
INSERT INTO `expenditure` VALUES (1,'2022-05-14','1',85,'便當',1),(2,'2022-05-14','3',100,'加油',1),(3,'2022-05-15','2',6000,'房租',1),(4,'2022-05-15','3',120,'加油',1),(5,'2022-05-16','1',200,'拉麵',1),(6,'2022-05-17','5',50000,'電腦',1),(7,'2022-05-17','4',170,'電影',1),(8,'2022-05-17','5',1200,'衣服',1),(9,'2022-05-19','3',320,'火車',1),(10,'2022-05-19','4',3000,'手遊',1),(11,'2022-05-20','1',300,'牛排',1);
/*!40000 ALTER TABLE `expenditure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income` (
  `income_no` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `item_no` enum('1','2','3','4','5','6','7','8') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `notes` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_no` int NOT NULL,
  PRIMARY KEY (`income_no`),
  KEY `fk_expenditure_item_expenditure1_idx` (`item_no`),
  KEY `fk_income_user_data1_idx` (`user_no`),
  CONSTRAINT `fk_expenditure_item_expenditure1` FOREIGN KEY (`item_no`) REFERENCES `item_income` (`item_income_no`),
  CONSTRAINT `fk_income_user_data1` FOREIGN KEY (`user_no`) REFERENCES `user_data` (`user_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (1,'2022-08-05','1',36000,NULL,1),(2,'2022-08-15','8',10,'撿到錢',1),(3,'2022-08-26','8',2000,'中發票',1);
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_expenditure`
--

DROP TABLE IF EXISTS `item_expenditure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_expenditure` (
  `item_expenditure_no` enum('1','2','3','4','5','6') COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_expenditure_name` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`item_expenditure_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_expenditure`
--

LOCK TABLES `item_expenditure` WRITE;
/*!40000 ALTER TABLE `item_expenditure` DISABLE KEYS */;
INSERT INTO `item_expenditure` VALUES ('1','食物'),('2','居住'),('3','交通'),('4','娛樂'),('5','物品'),('6','其他');
/*!40000 ALTER TABLE `item_expenditure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_income`
--

DROP TABLE IF EXISTS `item_income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_income` (
  `item_income_no` enum('1','2','3','4','5','6','7','8') COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_income_name` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`item_income_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_income`
--

LOCK TABLES `item_income` WRITE;
/*!40000 ALTER TABLE `item_income` DISABLE KEYS */;
INSERT INTO `item_income` VALUES ('1','薪水'),('2','獎金'),('3','分紅'),('4','股票'),('5','基金'),('6','期貨'),('7','保險'),('8','其他');
/*!40000 ALTER TABLE `item_income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_data`
--

DROP TABLE IF EXISTS `user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_data` (
  `user_no` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('男','女') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_no`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_data`
--

LOCK TABLES `user_data` WRITE;
/*!40000 ALTER TABLE `user_data` DISABLE KEYS */;
INSERT INTO `user_data` VALUES (1,'annie1996','annie1996','Annie','annie19961031@gmail.com','女'),(2,'kyuu1995','kyuu1995','Kyuu','kyuu19950212@gmail.com','男');
/*!40000 ALTER TABLE `user_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-26 16:26:29
