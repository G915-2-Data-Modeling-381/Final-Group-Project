-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: MySQLTrigger
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
-- Table structure for table `Audit.HumanResourcesEmployeeTriggerHistory`
--

DROP TABLE IF EXISTS `Audit.HumanResourcesEmployeeTriggerHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Audit.HumanResourcesEmployeeTriggerHistory` (
  `HumanResourcesEmployeeTriggerHistoryId` int NOT NULL AUTO_INCREMENT,
  `AuditDateTimeStamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `DBAction` char(1) DEFAULT NULL,
  `EmployeeId` int NOT NULL,
  `EmployeeFullName` varchar(45) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Salary` int NOT NULL,
  `Note` varchar(200) DEFAULT NULL,
  `TransactionNumber` int DEFAULT '1',
  `UserAuthenticatedKey` int DEFAULT NULL,
  `SysStartTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `SysEndTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`HumanResourcesEmployeeTriggerHistoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Audit.HumanResourcesEmployeeTriggerHistory`
--

LOCK TABLES `Audit.HumanResourcesEmployeeTriggerHistory` WRITE;
/*!40000 ALTER TABLE `Audit.HumanResourcesEmployeeTriggerHistory` DISABLE KEYS */;
INSERT INTO `Audit.HumanResourcesEmployeeTriggerHistory` VALUES (1,'2022-11-26 18:08:53','U',1,'Peter Heller','Computer Science',95000,'Initial record insert',1,1,'2022-11-26 18:06:18','2022-11-26 18:08:53'),(2,'2022-11-26 19:51:05','U',1,'Peter Heller','Computer Science',100000,'More money',2,1,'2022-11-26 18:08:53','2022-11-26 19:51:05'),(3,'2022-11-26 19:51:10','U',1,'Peter Heller','Philosophy',100000,'No note on Transaction : 3',3,1,'2022-11-26 19:51:05','2022-11-26 19:51:10'),(4,'2022-11-26 22:46:34','U',2,'','Computer Science',0,'Row Inserted',1,1,'2022-11-26 22:38:02','2022-11-26 22:46:34'),(5,'2022-11-26 22:46:34','U',3,'Fred Flintstone','Computer Science',15000,'Initial record insert',1,1,'2022-11-26 22:39:15','2022-11-26 22:46:34'),(6,'2022-11-26 22:46:34','U',4,'Fred Flintstone','Computer Science',15000,'Initial record insert',1,1,'2022-11-26 22:40:46','2022-11-26 22:46:34'),(7,'2022-11-26 22:46:34','U',5,'Wilma Flintstone','Computer Science',15000,'Initial record insert',1,1,'2022-11-26 22:42:10','2022-11-26 22:46:34'),(8,'2022-11-26 22:46:34','U',6,'Snaggle Puss','Computer Science',15000,'Initial record insert',1,1,'2022-11-26 22:42:16','2022-11-26 22:46:34'),(9,'2022-11-26 22:46:34','U',7,'Mutley','Computer Science',15000,'Initial record insert',1,1,'2022-11-26 22:42:27','2022-11-26 22:46:34'),(10,'2022-11-26 22:46:34','U',8,'Dick Dastardly','Computer Science',15000,'Initial record insert',1,1,'2022-11-26 22:42:57','2022-11-26 22:46:34'),(11,'2022-11-26 22:51:11','U',2,'','Slate Rock Quarry',0,'Bulk load',2,1,'2022-11-26 22:46:34','2022-11-26 22:51:11');
/*!40000 ALTER TABLE `Audit.HumanResourcesEmployeeTriggerHistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-27  8:47:06
