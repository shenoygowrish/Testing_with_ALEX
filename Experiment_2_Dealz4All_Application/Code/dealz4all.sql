CREATE DATABASE  IF NOT EXISTS `dealz4all` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dealz4all`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: dealz4all
-- ------------------------------------------------------
-- Server version	5.6.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `ID` bigint(20) NOT NULL,
  `Name` varchar(225) DEFAULT NULL,
  `Age` varchar(225) DEFAULT NULL,
  `Address` varchar(225) DEFAULT NULL,
  `ContactNo` varchar(225) DEFAULT NULL,
  `ProductChoice` varchar(225) DEFAULT NULL,
  `ItemCode` varchar(225) DEFAULT NULL,
  `MultipleItems` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Login` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (4,'Chandan Kumar','12','23 Mayorstone Crescent','9894838872',NULL,'123',NULL,'root','root','2019-11-08 01:03:32','2019-11-08 01:03:32','ckc'),(5,'CHANDAN KUMAR CHANDAN','23','23 Mayorstone Crescent','9984234234',NULL,'123',NULL,'ckc','ckc','2019-11-08 01:20:15','2019-11-08 01:20:22','ckc'),(6,'Chandan','22','23 Mayorstone Crescent','9898989898',NULL,'123',NULL,'ckc','ckc','2019-11-09 12:04:26','2019-11-09 12:04:46','ckc'),(7,'CHANDAN KUMAR CHANDAN','22','23 Mayorstone','8948380872',NULL,'MC1',NULL,'root','root','2019-11-16 22:07:52','2019-11-16 22:07:59','chandan11a'),(8,'Some','22','44','9893289238',NULL,'MC1',NULL,'root','root','2019-11-23 18:21:45','2019-11-23 18:21:45','some'),(9,'Chandan','22','limerick','9894572932',NULL,'MC1',NULL,'chandan11a','chandan11a','2019-11-23 18:36:57','2019-11-23 18:36:57','chandan11a');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `ID` bigint(20) NOT NULL,
  `login` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `role` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'Admin123','Admin@123','root','root','2019-10-02 08:41:47','2019-10-02 08:41:51',1),(2,'Manager123','Man@123',NULL,NULL,'2019-10-02 08:53:47','2019-10-02 08:51:44',2),(3,'Customer123','123',NULL,NULL,'2019-10-22 11:14:04','2019-10-22 11:14:04',3),(4,'Hariom123','123',NULL,NULL,'2019-10-22 11:19:07','2019-10-22 11:19:07',3),(5,'ckc','ckc',NULL,NULL,'2019-11-08 01:03:59','2019-11-08 01:03:59',3),(6,'chandan11a','ckc',NULL,NULL,'2019-11-16 22:08:21','2019-11-16 22:08:21',3),(7,'some','some',NULL,NULL,'2019-11-23 18:21:56','2019-11-23 18:21:56',3),(8,'tanu','Tanu@123',NULL,NULL,'2019-11-23 19:33:50','2019-11-23 19:33:50',2);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `ID` bigint(20) NOT NULL,
  `Name` varchar(225) DEFAULT NULL,
  `emailId` varchar(225) DEFAULT NULL,
  `contactNo` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `Login` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (2,'Tanushree','ckchandan1810@gmail.com','9989483887','Mayorstone crescent','tanu','Admin123','Admin123','2019-11-23 19:32:40','2019-11-23 19:33:50');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `ID` bigint(20) NOT NULL,
  `paymentId` bigint(20) DEFAULT NULL,
  `customerId` bigint(20) DEFAULT NULL,
  `productId` bigint(20) DEFAULT NULL,
  `paymentDate` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,1,2,'2019-10-22',1500.9,NULL,NULL,'2019-10-22 11:14:05','2019-10-22 11:14:05','Customer123'),(2,2,2,1,'2019-10-22',166.2,NULL,NULL,'2019-10-22 11:15:26','2019-10-22 11:15:26','Customer123'),(3,3,3,1,'2019-10-22',166.2,NULL,NULL,'2019-10-22 11:19:08','2019-10-22 11:19:08','Hariom123'),(4,4,4,3,'2019-11-08',22,NULL,NULL,'2019-11-08 01:03:59','2019-11-08 01:03:59','ckc'),(5,5,5,3,'2019-11-08',22,NULL,NULL,'2019-11-08 01:20:42','2019-11-08 01:20:42','ckc'),(6,6,6,3,'2019-11-09',22,NULL,NULL,'2019-11-09 12:05:50','2019-11-09 12:05:50','ckc'),(7,7,7,4,'2019-11-16',3,NULL,NULL,'2019-11-16 22:08:21','2019-11-16 22:08:21','chandan11a'),(8,8,8,1,'2019-11-23',3,NULL,NULL,'2019-11-23 18:21:56','2019-11-23 18:21:56','some'),(9,9,9,1,'2019-11-23',3,NULL,NULL,'2019-11-23 18:37:08','2019-11-23 18:37:08','chandan11a');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `ID` bigint(20) NOT NULL,
  `productName` varchar(225) DEFAULT NULL,
  `productQuantity` varchar(225) DEFAULT NULL,
  `productChoice` varchar(225) DEFAULT NULL,
  `itemCode` varchar(225) DEFAULT NULL,
  `Image` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `price` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'McDonalds','1','Combo Offer','MC1','960x0.jpg','Admin123','Admin123','2019-11-23 16:58:47','2019-11-23 16:58:47',3),(2,'KFC Combo','10','KFC Cheetos','KFC1','kfcs-cheetos-sandwich-going-national.jpg','Admin123','Admin123','2019-11-23 18:50:55','2019-11-23 18:50:55',7);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-23 19:47:07
