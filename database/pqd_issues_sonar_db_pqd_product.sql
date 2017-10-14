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
-- Table structure for table `pqd_product`
--

DROP TABLE IF EXISTS `pqd_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pqd_product` (
  `pqd_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `pqd_area_id` int(11) NOT NULL,
  `pqd_product_name` varchar(200) NOT NULL,
  `github_repo_name` varchar(200) DEFAULT NULL,
  `jira_project_id` int(11) DEFAULT NULL,
  `sonar_project_key` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pqd_product_id`),
  KEY `pqd_area_id_idx` (`pqd_area_id`),
  CONSTRAINT `pqd_area_id` FOREIGN KEY (`pqd_area_id`) REFERENCES `pqd_area` (`pqd_area_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pqd_product`
--

LOCK TABLES `pqd_product` WRITE;
/*!40000 ALTER TABLE `pqd_product` DISABLE KEYS */;
INSERT INTO `pqd_product` VALUES (1,1,'product_apim','product_apim',10251,'org.wso2.am:am-parent'),(2,8,'product-as','product-as',10000,'org.wso2.appserver:wso2appserver'),(3,6,'product-bps',NULL,10140,'org.wso2.bps:wso2bps-parent'),(4,2,'product-cep','product-cep',0,'org.wso2.cep:wso2cep-parent'),(5,2,'product-das','product-das',10800,'org.wso2.das:wso2das-parent'),(6,6,'product-dss',NULL,10090,'org.wso2.dss:dataservices-parent'),(7,6,'product-ei','product-ei',0,'org.wso2.ei:wso2ei-parent'),(8,6,'product-esb','product-esb',10023,'org.wso2.esb:esb-parent'),(9,7,'product-iots','product-iots',0,'org.wso2.iot:wso2iot-parent'),(10,5,'product-is','product-is',10041,'org.wso2.is:product-is'),(11,6,'product-mb',NULL,10200,'org.wso2.mb:mb-parent'),(12,2,'siddhi','siddhi',0,'org.wso2.siddhi:siddhi'),(13,3,'ballerina','ballerina',0,'org.ballerinalang:ballerina-parent'),(14,3,'carbon-transports','carbon-transports',0,'org.wso2.carbon.transport:org.wso2.carbon.transport.parent'),(15,1,'analytics-apim','analytics-apim',11105,'org.wso2.analytics.apim:analytics-apim'),(16,5,'analytics-is','analytics-is',11104,'org.wso2.analytics.is:wso2analytics-is-parent'),(17,6,'analytics-mb','analytics-mb',11118,'org.wso2.analytics.mb:wso2analytics-mb-parent'),(18,6,'analytics-esb','analytics-esb',11002,'org.wso2.analytics.esb:wso2esb-analytics-parent'),(19,3,'No Product',NULL,NULL,NULL),(20,4,'No Product',NULL,NULL,NULL),(21,6,'No Product',NULL,NULL,NULL),(22,8,'No Product',NULL,NULL,NULL),(23,9,'No Product',NULL,NULL,NULL),(24,10,'No Product',NULL,NULL,NULL);
/*!40000 ALTER TABLE `pqd_product` ENABLE KEYS */;
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
