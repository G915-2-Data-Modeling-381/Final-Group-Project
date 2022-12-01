CREATE DATABASE  IF NOT EXISTS `MySQLTrigger` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `MySQLTrigger`;
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

--
-- Table structure for table `HumanResources.Employee`
--

DROP TABLE IF EXISTS `HumanResources.Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HumanResources.Employee` (
  `EmployeeId` int NOT NULL AUTO_INCREMENT,
  `EmployeeFullName` varchar(45) NOT NULL,
  `Department` varchar(50) NOT NULL DEFAULT 'Computer Science',
  `Salary` decimal(12,2) NOT NULL DEFAULT '0.00',
  `Note` varchar(200) DEFAULT 'Row Inserted',
  `TransactionNumber` int NOT NULL DEFAULT '1',
  `UserAuthenticatedKey` int NOT NULL DEFAULT '1',
  `SysStartTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `SysEndTime` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  PRIMARY KEY (`EmployeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HumanResources.Employee`
--

LOCK TABLES `HumanResources.Employee` WRITE;
/*!40000 ALTER TABLE `HumanResources.Employee` DISABLE KEYS */;
INSERT INTO `HumanResources.Employee` VALUES (1,'Peter Heller','Computer Science',100000.00,'Corrected wrong department',4,1,'2022-11-26 19:51:10','9999-12-31 00:00:00'),(2,'Mutley the dog','Slate Rock Quarry',0.00,'Fixed the name',3,1,'2022-11-26 22:51:11','9999-12-31 00:00:00'),(3,'Fred Flintstone','Slate Rock Quarry',15000.00,'Bulk load',2,1,'2022-11-26 22:46:34','9999-12-31 00:00:00'),(4,'Fred Flintstone','Slate Rock Quarry',15000.00,'Bulk load',2,1,'2022-11-26 22:46:34','9999-12-31 00:00:00'),(5,'Wilma Flintstone','Slate Rock Quarry',15000.00,'Bulk load',2,1,'2022-11-26 22:46:34','9999-12-31 00:00:00'),(6,'Snaggle Puss','Slate Rock Quarry',15000.00,'Bulk load',2,1,'2022-11-26 22:46:34','9999-12-31 00:00:00'),(7,'Mutley','Slate Rock Quarry',15000.00,'Bulk load',2,1,'2022-11-26 22:46:34','9999-12-31 00:00:00'),(8,'Dick Dastardly','Slate Rock Quarry',15000.00,'Bulk load',2,1,'2022-11-26 22:46:34','9999-12-31 00:00:00');
/*!40000 ALTER TABLE `HumanResources.Employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `HumanResources.UpdateHumanResourcesEmployeeTriggerHistory` AFTER UPDATE ON `HumanResources.Employee` FOR EACH ROW BEGIN 
	 insert
		into
		`Audit.HumanResourcesEmployeeTriggerHistory`
	( 	`EmployeeId`,
		`EmployeeFullName`,
		`Department`,
		`Salary`,
		`Note`,
		`TransactionNumber`,
		`UserAuthenticatedKey`,
		`SysStartTime`,
		`SysEndTime`,
		`AuditDateTimeStamp`,
		`DBAction`)
values(
		old.`EmployeeId`,
		old.`EmployeeFullName`,
		old.`Department`,
		old.`Salary`,
		coalesce(old.`Note`,concat('No note on Transaction : ',old.`TransactionNumber`)),
		old.`TransactionNumber`,
		old.`UserAuthenticatedKey`,
		old.`SysStartTime`,
		new.`SysStartTime`,  -- current row SysStartTime
		new.`SysStartTime`,  -- AuditDateTimeStamp
		'U'
	 );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `HumanResources.DeleteHumanResourcesEmployeeTriggerHistory` AFTER DELETE ON `HumanResources.Employee` FOR EACH ROW BEGIN 
	 insert
		into
		`Audit.HumanResourcesEmployeeTriggerHistory`
	( 	`EmployeeId`,
		`EmployeeFullName`,
		`Department`,
		`Salary`,
		`Note`,
		`TransactionNumber`,
		`UserAuthenticatedKey`,
		`SysStartTime`,
		`SysEndTime`,
		`AuditDateTimeStamp`,
		`DBAction`)
values(
		old.`EmployeeId`,
		old.`EmployeeFullName`,
		old.`Department`,
		old.`Salary`,
		'Row was deleted',
		old.`TransactionNumber`,
		old.`UserAuthenticatedKey`,
		old.`SysStartTime`,
		now(),  -- current row SysStartTime
		now(), 	-- AuditDateTimeStamp
		'D'
	 );
	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `HumanResources.uvw_FindAllRowsByHumanResourcesEmployeeId`
--

DROP TABLE IF EXISTS `HumanResources.uvw_FindAllRowsByHumanResourcesEmployeeId`;
/*!50001 DROP VIEW IF EXISTS `HumanResources.uvw_FindAllRowsByHumanResourcesEmployeeId`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `HumanResources.uvw_FindAllRowsByHumanResourcesEmployeeId` AS SELECT 
 1 AS `RecordType`,
 1 AS `EmployeeId`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `HumanResources.uvw_GetTransactionHistoryByPKY`
--

DROP TABLE IF EXISTS `HumanResources.uvw_GetTransactionHistoryByPKY`;
/*!50001 DROP VIEW IF EXISTS `HumanResources.uvw_GetTransactionHistoryByPKY`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `HumanResources.uvw_GetTransactionHistoryByPKY` AS SELECT 
 1 AS `RecordType`,
 1 AS `HumanResourcesEmployeeTriggerHistoryId`,
 1 AS `AuditDateTimeStamp`,
 1 AS `DBAction`,
 1 AS `EmployeeId`,
 1 AS `EmployeeFullName`,
 1 AS `Department`,
 1 AS `Salary`,
 1 AS `Note`,
 1 AS `TransactionNumber`,
 1 AS `UserAuthenticatedKey`,
 1 AS `SysStartTime`,
 1 AS `SysEndTime`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'MySQLTrigger'
--

--
-- Final view structure for view `HumanResources.uvw_FindAllRowsByHumanResourcesEmployeeId`
--

/*!50001 DROP VIEW IF EXISTS `HumanResources.uvw_FindAllRowsByHumanResourcesEmployeeId`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `HumanResources.uvw_FindAllRowsByHumanResourcesEmployeeId` AS select 'CurrentRow' AS `RecordType`,`HumanResources.Employee`.`EmployeeId` AS `EmployeeId` from `HumanResources.Employee` union select 'HistoryRow' AS `RecordType`,`Audit.HumanResourcesEmployeeTriggerHistory`.`EmployeeId` AS `EmployeeId` from `Audit.HumanResourcesEmployeeTriggerHistory` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `HumanResources.uvw_GetTransactionHistoryByPKY`
--

/*!50001 DROP VIEW IF EXISTS `HumanResources.uvw_GetTransactionHistoryByPKY`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `HumanResources.uvw_GetTransactionHistoryByPKY` AS select 'Current Row' AS `RecordType`,NULL AS `HumanResourcesEmployeeTriggerHistoryId`,NULL AS `AuditDateTimeStamp`,NULL AS `DBAction`,`HumanResources.Employee`.`EmployeeId` AS `EmployeeId`,`HumanResources.Employee`.`EmployeeFullName` AS `EmployeeFullName`,`HumanResources.Employee`.`Department` AS `Department`,`HumanResources.Employee`.`Salary` AS `Salary`,`HumanResources.Employee`.`Note` AS `Note`,`HumanResources.Employee`.`TransactionNumber` AS `TransactionNumber`,`HumanResources.Employee`.`UserAuthenticatedKey` AS `UserAuthenticatedKey`,`HumanResources.Employee`.`SysStartTime` AS `SysStartTime`,`HumanResources.Employee`.`SysEndTime` AS `SysEndTime` from `HumanResources.Employee` union select 'History Row' AS `RecordType`,`Audit.HumanResourcesEmployeeTriggerHistory`.`HumanResourcesEmployeeTriggerHistoryId` AS `HumanResourcesEmployeeTriggerHistoryId`,`Audit.HumanResourcesEmployeeTriggerHistory`.`AuditDateTimeStamp` AS `AuditDateTimeStamp`,`Audit.HumanResourcesEmployeeTriggerHistory`.`DBAction` AS `DBAction`,`Audit.HumanResourcesEmployeeTriggerHistory`.`EmployeeId` AS `EmployeeId`,`Audit.HumanResourcesEmployeeTriggerHistory`.`EmployeeFullName` AS `EmployeeFullName`,`Audit.HumanResourcesEmployeeTriggerHistory`.`Department` AS `Department`,`Audit.HumanResourcesEmployeeTriggerHistory`.`Salary` AS `Salary`,`Audit.HumanResourcesEmployeeTriggerHistory`.`Note` AS `Note`,`Audit.HumanResourcesEmployeeTriggerHistory`.`TransactionNumber` AS `TransactionNumber`,`Audit.HumanResourcesEmployeeTriggerHistory`.`UserAuthenticatedKey` AS `UserAuthenticatedKey`,`Audit.HumanResourcesEmployeeTriggerHistory`.`SysStartTime` AS `SysStartTime`,`Audit.HumanResourcesEmployeeTriggerHistory`.`SysEndTime` AS `SysEndTime` from `Audit.HumanResourcesEmployeeTriggerHistory` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-27  8:49:12
