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
-- Dumping data for table `HumanResources.Employee`
--

LOCK TABLES `HumanResources.Employee` WRITE;
/*!40000 ALTER TABLE `HumanResources.Employee` DISABLE KEYS */;
INSERT INTO `HumanResources.Employee` VALUES (1,'Peter Heller','Computer Science',100000.00,'Corrected wrong department',4,1,'2022-11-26 19:51:10','9999-12-31 00:00:00'),(2,'Mutley the dog','Slate Rock Quarry',0.00,'Fixed the name',3,1,'2022-11-26 22:51:11','9999-12-31 00:00:00'),(3,'Fred Flintstone','Slate Rock Quarry',15000.00,'Bulk load',2,1,'2022-11-26 22:46:34','9999-12-31 00:00:00'),(4,'Fred Flintstone','Slate Rock Quarry',15000.00,'Bulk load',2,1,'2022-11-26 22:46:34','9999-12-31 00:00:00'),(5,'Wilma Flintstone','Slate Rock Quarry',15000.00,'Bulk load',2,1,'2022-11-26 22:46:34','9999-12-31 00:00:00'),(6,'Snaggle Puss','Slate Rock Quarry',15000.00,'Bulk load',2,1,'2022-11-26 22:46:34','9999-12-31 00:00:00'),(7,'Mutley','Slate Rock Quarry',15000.00,'Bulk load',2,1,'2022-11-26 22:46:34','9999-12-31 00:00:00'),(8,'Dick Dastardly','Slate Rock Quarry',15000.00,'Bulk load',2,1,'2022-11-26 22:46:34','9999-12-31 00:00:00');
/*!40000 ALTER TABLE `HumanResources.Employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-27  8:51:16
