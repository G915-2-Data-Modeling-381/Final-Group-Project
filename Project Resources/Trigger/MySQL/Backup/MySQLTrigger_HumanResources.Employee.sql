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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-27  8:47:06
