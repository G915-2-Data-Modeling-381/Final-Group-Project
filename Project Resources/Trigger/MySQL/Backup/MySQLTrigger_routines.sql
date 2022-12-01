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

--
-- Dumping routines for database 'MySQLTrigger'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-27  8:47:06
