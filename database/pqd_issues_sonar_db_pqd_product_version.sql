CREATE DATABASE  IF NOT EXISTS `pqd_issues_sonar_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pqd_issues_sonar_db`;
-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: pqd_issues_sonar_db
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

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
-- Table structure for table `pqd_product_version`
--

DROP TABLE IF EXISTS `pqd_product_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pqd_product_version` (
  `pqd_product_version_id` int(11) NOT NULL AUTO_INCREMENT,
  `pqd_product_id` int(11) NOT NULL,
  `pqd_product_version` varchar(45) NOT NULL,
  PRIMARY KEY (`pqd_product_version_id`),
  KEY `fk_pqd_product_version_pqd_product1_idx` (`pqd_product_id`),
  CONSTRAINT `pqd_product_id` FOREIGN KEY (`pqd_product_id`) REFERENCES `pqd_product` (`pqd_product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pqd_product_version`
--

LOCK TABLES `pqd_product_version` WRITE;
/*!40000 ALTER TABLE `pqd_product_version` DISABLE KEYS */;
INSERT INTO `pqd_product_version` VALUES (1,1,'2.1.0'),(2,2,'4.0.0'),(3,3,'4.0.0'),(4,4,'2.1.0'),(5,12,'4.0.0'),(6,5,'3.1.0'),(7,6,'3.0.0'),(8,7,'6.0.0'),(9,8,'5.1.0'),(10,9,'3.1.0'),(11,10,'5.2.0'),(12,11,'3.2.0'),(13,13,'3.4.0'),(14,14,'6.0.20');
/*!40000 ALTER TABLE `pqd_product_version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-13 13:08:46
