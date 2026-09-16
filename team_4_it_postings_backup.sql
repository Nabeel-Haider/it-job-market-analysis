CREATE DATABASE  IF NOT EXISTS `it_postings` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `it_postings`;
-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: localhost    Database: it_postings
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `company_id` int NOT NULL,
  `company_size_start` int NOT NULL,
  `company_size_end` int DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,20,50),(2,80,100),(3,15,25),(4,5,50),(5,15,30),(6,6,10),(7,70,90),(8,1,10),(9,10,50),(10,75,100),(11,11,50),(12,5,10),(13,1,9),(14,50,100),(15,100,150),(16,501,1000),(17,2,10),(18,50,70),(19,5,15),(20,50,60),(21,20,30),(22,50,200),(23,10,20),(24,40,50),(25,51,100),(26,3,10),(27,250,280),(28,300,350),(29,5,20),(30,10,30),(31,15,20),(32,10,25),(33,120,130),(34,30,40),(35,45,50),(36,25,30),(37,500,600),(38,10,23),(39,11,25),(40,55,65),(41,90,100),(42,70,80),(43,60,70),(44,30,50),(45,25,50),(46,20,25),(47,25,40),(48,150,200),(49,200,250),(50,10,15),(51,15,50),(52,8,16),(53,35,45),(54,6700,7000),(55,300,400),(56,10,100),(57,100,250),(58,0,10),(59,40,60),(60,120,160),(61,250,300),(62,101,500),(63,100,200),(64,1001,5000),(65,400,500),(66,51,200),(67,60,80),(68,20,40),(69,130,150),(70,200,280),(71,13,25),(72,1,500);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `company_sizes`
--

DROP TABLE IF EXISTS `company_sizes`;
/*!50001 DROP VIEW IF EXISTS `company_sizes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `company_sizes` AS SELECT 
 1 AS `company_id`,
 1 AS `Number of Postings`,
 1 AS `Company Size`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `currency_id` int NOT NULL,
  `salary_currency` varchar(45) DEFAULT NULL,
  `currency_exchange_rate` decimal(11,10) DEFAULT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'gbp',0.1871869988),(2,'eur',0.2138351331),(3,'eur',0.2101502574),(4,'eur',0.2062578636),(5,'pln',0.0000000000),(6,'usd',0.2109278134),(7,'usd',0.2204212552),(8,'usd',0.2010601654);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencelevel`
--

DROP TABLE IF EXISTS `experiencelevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiencelevel` (
  `level_id` int NOT NULL,
  `experience_level` varchar(45) NOT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencelevel`
--

LOCK TABLES `experiencelevel` WRITE;
/*!40000 ALTER TABLE `experiencelevel` DISABLE KEYS */;
INSERT INTO `experiencelevel` VALUES (1,'senior'),(2,'mid'),(3,'junior');
/*!40000 ALTER TABLE `experiencelevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `high_earning_jobs`
--

DROP TABLE IF EXISTS `high_earning_jobs`;
/*!50001 DROP VIEW IF EXISTS `high_earning_jobs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `high_earning_jobs` AS SELECT 
 1 AS `posting_title`,
 1 AS `experience_level`,
 1 AS `median_salary`,
 1 AS `salary_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `jobcategories`
--

DROP TABLE IF EXISTS `jobcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobcategories` (
  `category_id` int NOT NULL,
  `category_type` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobcategories`
--

LOCK TABLES `jobcategories` WRITE;
/*!40000 ALTER TABLE `jobcategories` DISABLE KEYS */;
INSERT INTO `jobcategories` VALUES (1,'remote'),(2,'hybrid'),(3,'office');
/*!40000 ALTER TABLE `jobcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `location_id` int NOT NULL,
  `city` varchar(45) NOT NULL,
  `country_code` char(2) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Warszawa','PL'),(2,'Prague','CZ'),(3,'Bialystok','PL'),(4,'Amsterdam','NL'),(5,'Katowice','PL'),(6,'Londyn','GB'),(7,'Krakow','PL'),(8,'Poznan','PL'),(9,'Szczecin','PL'),(10,'Gliwice','PL'),(11,'Bydgoszcz','PL'),(12,'Gdansk','PL'),(13,'Lodz','PL'),(14,'Rzeszow','PL'),(15,'Zielona Gora','PL'),(16,'Suwalki','PL'),(17,'Kostrzyn','PL'),(18,'Wroclaw','PL'),(19,'Olsztyn','PL'),(20,'Gorzow Wielkopolski','PL'),(21,'Reykjavik','IS'),(22,'Lublin','PL'),(23,'Ustron','PL'),(24,'Wejherowo','PL'),(25,'Gdynia','PL'),(26,'Bielsko-Biala','PL'),(27,'Jelenia Gora','PL'),(28,'Sopot','PL'),(29,'Czestochowa','PL'),(30,'Berlin Center','US'),(31,'Balice','PL'),(32,'Bukareszt','RO'),(33,'Munchen','DE'),(34,'Tallin','EE'),(35,'Michalowice','PL'),(36,'Stockholm','SE'),(37,'Berlin','DE'),(38,'Wilno','LT'),(39,'Belchatow','PL'),(40,'Wieden','AT'),(41,'Legnica','PL');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `locations_offering_most_jobs`
--

DROP TABLE IF EXISTS `locations_offering_most_jobs`;
/*!50001 DROP VIEW IF EXISTS `locations_offering_most_jobs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `locations_offering_most_jobs` AS SELECT 
 1 AS `Location`,
 1 AS `Number of Postings`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `posting_salary`
--

DROP TABLE IF EXISTS `posting_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posting_salary` (
  `posting_id` int NOT NULL,
  `salary_id` int unsigned NOT NULL,
  `salary_start` float DEFAULT NULL,
  `salary_end` float DEFAULT NULL,
  PRIMARY KEY (`posting_id`,`salary_id`),
  KEY `fk_posting_salary_postings1_idx` (`posting_id`),
  KEY `fk_posting_salary_salaries1_idx` (`salary_id`),
  CONSTRAINT `fk_posting_salary_postings1` FOREIGN KEY (`posting_id`) REFERENCES `postings` (`posting_id`),
  CONSTRAINT `fk_posting_salary_salaries1` FOREIGN KEY (`salary_id`) REFERENCES `salaries` (`salary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posting_salary`
--

LOCK TABLES `posting_salary` WRITE;
/*!40000 ALTER TABLE `posting_salary` DISABLE KEYS */;
INSERT INTO `posting_salary` VALUES (1,5,12000,18000),(2,5,18000,22000),(3,5,19000,28000),(4,5,11000,17000),(5,5,15000,18000),(6,5,13000,19000),(7,5,13000,20000),(8,5,13000,22000),(9,5,13000,20000),(10,6,16593.3,21334.3),(11,6,16593.3,21334.3),(12,6,21334.3,30816.2),(13,6,18015.6,24415.9),(14,7,22683.8,29489),(15,6,28445.8,37927.7),(16,6,28445.8,37927.7),(17,7,18147.1,24952.2),(18,7,36294.1,40830.9),(19,6,37927.7,42668.6),(20,6,33186.7,42668.6),(21,6,33186.7,45039.1),(22,7,15878.7,27220.6),(23,7,15878.7,27220.6),(24,6,23704.8,33186.7),(25,6,20386.1,22756.6),(26,6,15455.5,26795.9),(27,6,28445.8,42668.6),(28,6,33186.7,42668.6),(29,8,13000,15500),(30,8,13000,15500),(31,8,12000,18000),(32,8,12000,18000),(33,8,12000,18000),(34,8,15600,18600),(35,8,10000,15000),(36,9,29740.6,40447.2),(37,9,29740.6,40447.2),(38,9,35688.8,45205.8),(39,9,35688.8,45205.8),(40,9,29740.6,40447.2),(41,10,14029.5,19173.7),(42,8,17000,22000),(43,8,10000,13000),(44,8,15000,21000),(45,8,17000,22000),(46,11,29841.8,32328.6),(47,8,5000,6500),(48,8,14000,18000),(49,8,14000,18000),(50,8,14000,18000),(51,8,5000,10000),(52,8,4500,9000),(53,9,19034,38068),(54,8,18000,24000),(55,8,24000,31500),(56,12,2700,4500),(57,12,5147,8151),(58,8,12300,17600),(59,8,16100,23200),(60,8,6000,8000),(61,8,6000,8000),(62,9,16178.9,25933.8),(63,9,30930.2,38068),(64,8,7000,9300),(65,8,7000,9300),(66,8,33000,39000),(67,8,35000,40000),(68,8,18000,22000),(69,8,25000,33000),(70,8,25000,35000),(71,8,14000,22000),(72,8,14000,22000),(73,8,18000,26000),(74,8,32000,40000),(75,11,24868.2,37799.6),(76,11,24868.2,37799.6),(77,8,23000,33100),(78,8,23000,33100),(79,12,4000,5000),(80,12,4000,5000),(81,10,18706,25720.8),(82,8,8000,10000),(83,8,18000,26000),(84,8,4000,8000),(85,8,9000,18000),(86,8,4000,8000),(87,8,13000,16000),(88,8,14000,20000),(89,8,5500,8000),(90,8,3500,7000),(91,8,12000,20000),(92,8,13000,15000),(93,8,12000,20000),(94,8,13000,15000),(95,8,5000,7000),(96,8,16000,20000),(97,8,18000,22000),(98,8,15000,30000),(99,13,14920.9,29841.8),(100,8,5700,9100),(101,8,5500,7000),(102,8,20000,22000),(103,8,20000,22000),(104,8,5000,6000),(105,8,10000,15000),(106,8,12000,20500),(107,8,8000,15000),(108,8,6000,10000),(109,8,8000,15000),(110,8,9000,11000),(111,8,10000,15000),(112,8,18000,22000),(113,8,8000,9000),(114,8,8000,8000),(115,8,25000,33000),(116,8,7500,15000),(117,8,7500,15000),(118,8,12000,18000),(119,8,12000,17000),(120,8,9500,14000),(121,8,12500,18000),(122,8,14000,19000),(123,8,16000,22000),(124,12,10000,15000),(125,8,5000,9000),(126,8,9000,18000),(127,9,15370,15370),(128,9,15370,15370),(129,9,23792.5,23792.5),(130,8,9500,14000),(131,8,10000,12000),(132,8,18000,24000),(133,8,21000,26000),(134,8,18000,24000),(135,8,22000,28000),(136,8,22000,28000),(137,8,13000,15000),(138,8,10000,16000),(139,8,5000,8000),(140,8,5000,8000),(141,8,4000,7000),(142,12,4000,6000),(143,8,6000,8000),(144,8,14000,22000),(145,8,8000,14000),(146,8,8000,16000),(147,8,14000,16000),(148,8,6500,8500),(149,8,10000,16000),(150,8,6000,8000);
/*!40000 ALTER TABLE `posting_salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posting_skill`
--

DROP TABLE IF EXISTS `posting_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posting_skill` (
  `posting_id` int NOT NULL,
  `skill_id` int NOT NULL,
  `skill_value` int NOT NULL,
  PRIMARY KEY (`posting_id`,`skill_id`),
  KEY `fk_posting_skill_postings1_idx` (`posting_id`),
  KEY `fk_posting_skill_skills1_idx` (`skill_id`),
  CONSTRAINT `fk_posting_skill_postings1` FOREIGN KEY (`posting_id`) REFERENCES `postings` (`posting_id`),
  CONSTRAINT `fk_posting_skill_skills1` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posting_skill`
--

LOCK TABLES `posting_skill` WRITE;
/*!40000 ALTER TABLE `posting_skill` DISABLE KEYS */;
INSERT INTO `posting_skill` VALUES (1,5,3),(1,94,4),(1,145,3),(2,103,5),(2,128,5),(2,216,0),(3,5,3),(3,41,3),(3,50,3),(4,32,3),(4,42,3),(4,170,3),(5,32,4),(5,279,4),(5,347,4),(6,38,3),(6,44,4),(6,216,0),(7,14,4),(7,38,4),(7,171,3),(8,78,4),(8,172,3),(8,280,3),(9,5,4),(9,81,4),(9,173,3),(10,3,5),(10,174,4),(10,175,4),(11,3,5),(11,175,4),(11,216,0),(12,7,4),(12,14,4),(12,176,4),(13,177,3),(13,214,4),(13,281,3),(14,6,3),(14,7,3),(14,321,3),(15,5,3),(15,23,4),(15,70,3),(16,165,3),(16,178,3),(16,321,4),(17,32,4),(17,48,4),(17,78,4),(18,38,4),(18,81,5),(18,106,3),(19,38,4),(19,81,5),(19,106,3),(20,179,4),(20,282,4),(20,348,5),(21,14,5),(21,38,5),(21,180,4),(22,20,3),(22,24,3),(22,349,3),(23,5,4),(23,44,4),(23,181,3),(24,5,4),(24,44,3),(24,214,4),(25,30,4),(25,52,4),(25,112,4),(26,38,3),(26,283,3),(26,350,3),(27,13,4),(27,38,4),(27,44,4),(28,1,4),(28,5,4),(28,32,3),(29,16,2),(29,32,2),(29,197,3),(30,16,2),(30,165,2),(30,197,3),(31,24,3),(31,66,3),(31,78,3),(32,33,3),(32,66,3),(32,78,3),(33,33,3),(33,66,3),(33,78,3),(34,20,3),(34,78,3),(34,197,3),(35,27,3),(35,67,3),(35,78,3),(36,5,4),(36,38,4),(36,78,3),(37,5,4),(37,38,4),(37,78,3),(38,5,3),(38,38,4),(38,44,4),(39,5,4),(39,14,4),(39,78,3),(40,5,4),(40,14,4),(40,38,3),(41,128,4),(41,216,0),(42,6,4),(42,20,4),(42,40,4),(43,182,4),(43,284,4),(43,351,4),(44,70,4),(44,216,0),(45,6,4),(45,20,4),(45,40,4),(46,52,1),(46,197,5),(46,261,3),(47,3,3),(47,186,4),(47,285,3),(48,32,4),(48,68,3),(48,183,1),(49,32,4),(49,68,3),(49,183,1),(50,74,4),(50,216,0),(51,3,4),(51,39,2),(51,184,2),(52,32,2),(52,52,1),(52,78,2),(53,50,4),(53,56,4),(53,143,4),(54,30,4),(54,52,4),(54,112,4),(55,5,4),(55,216,0),(56,78,1),(56,153,1),(56,226,1),(57,3,4),(57,50,3),(57,56,3),(58,88,3),(58,185,3),(58,345,3),(59,30,4),(59,57,4),(59,186,4),(60,32,1),(60,48,1),(60,314,2),(61,32,2),(61,52,1),(61,314,2),(62,49,4),(62,110,4),(62,222,4),(63,32,3),(63,52,4),(63,86,4),(64,3,4),(64,48,2),(64,66,2),(65,14,2),(65,48,2),(65,315,2),(66,32,4),(66,286,4),(66,352,4),(67,7,1),(67,14,1),(67,44,1),(68,23,4),(68,108,4),(68,187,4),(69,3,4),(69,38,4),(69,82,4),(70,14,4),(70,15,4),(70,214,4),(71,30,3),(71,52,3),(71,112,3),(72,88,3),(72,185,3),(72,345,3),(73,3,4),(73,29,4),(73,52,5),(74,35,5),(74,188,4),(74,216,0),(75,7,4),(75,63,4),(75,78,4),(76,7,4),(76,63,4),(76,78,4),(77,1,4),(77,6,3),(77,78,5),(78,1,4),(78,6,3),(78,78,5),(79,15,1),(79,78,2),(79,94,1),(80,94,2),(80,189,1),(80,252,1),(81,5,3),(81,14,3),(81,38,3),(82,3,3),(82,129,3),(82,190,1),(83,3,4),(83,5,5),(83,162,4),(84,2,2),(84,162,2),(84,260,2),(85,12,4),(85,21,3),(85,38,3),(86,12,2),(86,21,2),(86,38,2),(87,5,3),(87,14,3),(87,94,3),(88,191,3),(88,287,3),(88,353,3),(89,192,3),(89,216,0),(90,28,1),(90,216,0),(90,288,2),(91,193,3),(91,200,3),(91,216,0),(92,174,4),(92,207,5),(92,335,5),(93,193,3),(93,200,3),(93,216,0),(94,174,4),(94,207,5),(94,335,5),(95,3,3),(95,46,3),(95,49,3),(96,32,3),(96,194,2),(96,289,2),(97,3,5),(97,183,3),(97,289,3),(98,2,5),(98,14,5),(98,38,5),(99,108,4),(99,109,4),(99,195,4),(100,67,3),(100,190,3),(100,290,3),(101,49,3),(101,58,3),(101,291,3),(102,14,1),(102,87,4),(102,235,3),(103,88,4),(103,160,4),(103,196,3),(104,165,2),(104,182,3),(104,190,2),(105,5,3),(105,31,3),(105,94,3),(106,5,3),(106,44,3),(106,50,3),(107,197,3),(107,265,3),(107,275,3),(108,197,2),(108,265,2),(108,275,2),(109,197,2),(109,265,3),(109,354,3),(110,28,4),(110,119,4),(110,178,4),(111,198,2),(111,216,0),(112,6,4),(112,7,4),(112,20,4),(113,64,3),(113,123,3),(113,292,3),(114,3,4),(114,199,2),(114,216,0),(115,14,4),(115,38,4),(115,82,3),(116,74,3),(116,193,3),(116,200,2),(117,74,3),(117,193,3),(117,200,3),(118,32,3),(118,123,3),(118,293,3),(119,123,4),(119,201,4),(119,294,4),(120,42,1),(120,170,3),(120,224,3),(121,12,3),(121,70,3),(121,82,3),(122,108,3),(122,219,4),(122,295,4),(123,23,4),(123,43,3),(123,82,4),(124,70,2),(124,108,2),(124,296,2),(125,28,1),(125,58,1),(125,78,1),(126,29,2),(126,52,2),(126,66,2),(127,38,3),(127,82,3),(127,202,3),(128,61,3),(128,108,3),(128,197,3),(129,38,4),(129,82,4),(129,202,4),(130,5,3),(130,52,3),(130,203,2),(131,197,1),(131,216,0),(132,108,4),(132,197,4),(132,216,0),(133,197,4),(133,216,0),(134,197,4),(134,216,0),(135,197,4),(135,204,4),(135,297,4),(136,108,4),(136,197,4),(136,205,3),(137,50,3),(137,56,3),(137,110,4),(138,49,5),(138,206,5),(138,298,5),(139,178,4),(139,216,0),(140,178,4),(140,216,0),(141,28,2),(141,52,2),(141,58,2),(142,28,2),(142,178,2),(142,190,2),(143,3,3),(143,207,2),(143,355,3),(144,52,4),(144,170,4),(144,299,4),(145,98,3),(145,182,3),(145,208,3),(146,188,5),(146,209,5),(146,356,5),(147,3,3),(147,32,4),(147,210,3),(148,28,2),(148,58,3),(148,67,3),(149,28,4),(149,210,4),(149,300,4),(150,119,1),(150,190,3),(150,207,3);
/*!40000 ALTER TABLE `posting_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postings`
--

DROP TABLE IF EXISTS `postings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postings` (
  `posting_id` int NOT NULL AUTO_INCREMENT,
  `posting_title` varchar(60) NOT NULL,
  `published_date` date NOT NULL,
  `published_time` time NOT NULL,
  `is_remote_interview` tinyint NOT NULL,
  `company_id` int NOT NULL,
  `level_id` int NOT NULL,
  `category_id` int NOT NULL,
  `location_id` int NOT NULL,
  PRIMARY KEY (`posting_id`),
  KEY `fk_postings_companies1_idx` (`company_id`),
  KEY `fk_postings_experiencelevel1_idx` (`level_id`),
  KEY `fk_postings_jobcategories1_idx` (`category_id`),
  KEY `fk_postings_locations1_idx` (`location_id`),
  CONSTRAINT `fk_postings_companies1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`),
  CONSTRAINT `fk_postings_experiencelevel1` FOREIGN KEY (`level_id`) REFERENCES `experiencelevel` (`level_id`),
  CONSTRAINT `fk_postings_jobcategories1` FOREIGN KEY (`category_id`) REFERENCES `jobcategories` (`category_id`),
  CONSTRAINT `fk_postings_locations1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postings`
--

LOCK TABLES `postings` WRITE;
/*!40000 ALTER TABLE `postings` DISABLE KEYS */;
INSERT INTO `postings` VALUES (1,'Mid PHP Backend Developer','2022-10-25','09:00:14',1,39,2,1,3),(2,'Senior IT Project Manager','2022-10-27','15:00:00',1,11,1,1,18),(3,'Frontend Developer','2022-10-21','08:00:00',1,34,2,1,8),(4,'Analityk Systemowy','2022-10-03','12:00:14',1,34,2,1,8),(5,'Remote Senior Analytics Engineer','2022-10-02','11:00:11',0,62,1,1,1),(6,'Frontend Developer','2022-10-27','12:00:15',0,18,2,1,18),(7,'Node.js Developer','2022-10-27','11:00:13',1,18,2,1,18),(8,'Python Developer','2022-10-24','10:09:00',1,18,2,1,18),(9,'React Native Developer','2022-10-25','07:39:00',1,18,2,1,8),(10,'Implementation Manager','2022-10-27','12:28:00',1,63,2,1,18),(11,'Customer Success Manager','2022-10-27','12:25:00',1,63,2,1,18),(12,'Site Reliability Engineer','2022-10-27','11:00:00',1,63,2,1,18),(13,'Product Engineer (Ruby on Rails)','2022-10-26','07:58:00',0,9,1,1,1),(14,'DevOps Engineer','2022-11-14','17:00:10',1,4,2,1,7),(15,'.NET Full-stack Developer','2022-10-27','13:00:00',0,4,1,1,13),(16,'DevOps Engineer','2022-10-25','15:00:09',0,4,1,1,1),(17,'Senior QA Engineer Automation','2022-11-12','10:00:00',1,48,1,1,1),(18,'Senior React Native Developer','2022-11-13','12:00:13',1,1,1,1,3),(19,'Senior React Native Developer','2022-10-27','15:10:00',1,1,1,1,1),(20,'Senior iOS Developer [100REMOTE]','2022-10-27','08:00:11',1,1,1,1,3),(21,'Principal Backend (Node.jsDeveloper','2022-10-24','14:00:10',1,1,1,1,29),(22,'DevOps Engineer (AWS)','2022-11-11','12:00:13',0,6,2,3,1),(23,'FullStack Developer (React)','2022-11-11','11:00:12',1,6,2,3,1),(24,'Senior Fullstack Dev (Ruby-on-Rails)','2022-10-28','10:00:10',1,6,2,1,1),(25,'Senior Android Developer','2022-10-23','12:00:11',1,44,1,1,7),(26,'Solidity Engineer','2022-10-28','10:00:10',1,31,2,1,1),(27,'Senior Frontend Typescript Engineer','2022-10-26','21:00:09',1,14,1,1,30),(28,'Senior Backend Engineer','2022-10-24','13:00:00',1,14,1,1,1),(29,'C+Backend Developer','2022-10-28','13:56:00',0,64,2,1,12),(30,'C+Developer','2022-10-28','13:48:00',0,64,2,1,5),(31,'Performance Test Engineer','2022-10-27','12:49:00',1,64,2,1,5),(32,'Automation Test Engineer','2022-10-27','12:36:00',1,64,2,1,5),(33,'Agile Test Engineer','2022-10-28','08:55:00',1,64,2,1,8),(34,'Cloud Developer','2022-10-26','14:05:00',1,64,2,1,5),(35,'Automation Engineer','2022-10-03','08:00:14',1,64,2,2,31),(36,'Sr Backend Engineer (Python/TypeScript)','2022-10-27','08:42:00',0,55,1,1,32),(37,'Sr Backend Engineer (PythonTypeScript)','2022-10-26','16:55:00',0,55,1,1,33),(38,'Frontend Tech Lead (TypescriptReact)','2022-10-27','08:45:00',1,55,1,1,32),(39,'Backend Tech Lead (JavascriptPython)','2022-10-27','08:44:00',1,55,1,1,32),(40,'Senior Backend Engineer (NodeJS)','2022-10-27','08:40:00',1,55,1,1,34),(41,'Junior Technical Product Owner','2022-11-13','10:00:10',0,63,3,2,18),(42,'DevOps Engineer','2022-11-10','11:00:14',1,63,2,1,7),(43,'Junior Infrastructure Engineer','2022-10-28','13:00:09',1,63,3,2,18),(44,'CSoftware Engineer','2022-10-28','08:00:11',1,63,2,1,18),(45,'DevOps Engineer','2022-10-27','13:00:00',1,63,2,2,18),(46,'C+Developer for Google','2022-10-02','11:00:00',1,21,1,2,35),(47,'Specjalista dsprzetwarzania danych','2022-10-21','10:00:00',1,41,3,2,18),(48,'Business Intelligence Analyst','2022-10-27','14:00:10',1,22,2,2,1),(49,'Business Intelligence Analyst','2022-10-25','13:00:09',1,22,2,2,1),(50,'UX Designer eCommerce Department','2022-10-02','16:00:00',1,22,1,2,1),(51,'ARCHITEKT PROCESÃ“W BIZNESOWYCH','2022-10-28','12:00:13',0,11,2,1,8),(52,'Junior Data Engineer','2022-10-03','12:00:14',1,11,3,2,1),(53,'Full-stack engineer','2022-10-28','13:00:09',1,44,2,1,36),(54,'Senior Android Software Engineer','2022-10-03','13:00:09',1,65,1,1,8),(55,'Staff Software EngineerMonetisation','2022-10-02','10:00:09',1,65,1,1,8),(56,'Intern in Software Development','2022-10-02','10:00:09',1,31,3,3,7),(57,'Integration and Technical Consultant','2022-10-27','10:00:09',1,9,3,1,1),(58,'Mobile Software Engineer (iOS)','2022-11-13','15:00:10',0,64,2,2,12),(59,'Mobile Software Engineer (Android)','2022-10-27','13:00:09',0,64,1,2,1),(60,'Junior Data Scientist','2022-11-14','21:00:09',1,45,3,2,18),(61,'Junior Software Engineer','2022-11-14','21:00:09',1,45,3,2,18),(62,'QA Automation Engineer','2022-10-28','14:00:10',0,66,2,1,37),(63,'Head of Java Unit','2022-10-25','11:50:00',0,66,1,1,38),(64,'Junior Android Developer','2022-11-13','16:00:10',1,14,3,1,1),(65,'Junior Fullstack Developer (JavaScript+Node.js)','2022-10-26','16:00:09',1,14,3,1,1),(66,'Head Of Data Engineering','2022-10-25','11:00:13',1,14,1,2,1),(67,'Engineering Tech Lead','2022-11-14','08:02:00',1,4,1,2,1),(68,'Senior .NET Developer','2022-11-12','09:00:14',0,4,1,2,12),(69,'Engineering Team Lead','2022-11-11','15:00:10',0,4,1,2,8),(70,'Senior Software Engineer','2022-11-11','09:00:15',0,4,1,2,1),(71,'Android Developer','2022-10-02','09:00:00',1,4,2,2,12),(72,'iOS Developer','2022-10-02','07:00:00',1,4,2,2,12),(73,'Senior Java Developer','2022-10-02','09:00:14',1,23,1,1,1),(74,'Head of Product Management','2022-10-28','12:02:00',1,48,1,2,7),(75,'Data Engineer','2022-10-02','17:00:00',1,14,2,1,1),(76,'Data Engineer','2022-10-02','17:00:00',1,14,2,1,1),(77,'DevOps Engineer','2022-11-13','12:00:13',1,1,1,1,3),(78,'Senior/Lead DevOps Engineer','2022-10-27','09:38:00',1,1,1,1,1),(79,'Junior Full Stack Developer Remote','2022-11-12','10:00:09',1,36,3,1,7),(80,'Junior PHP Developer Remote','2022-10-03','05:45:00',1,36,3,1,1),(81,'Backend Engineer (NodeJS)','2022-11-14','14:00:10',1,21,2,2,8),(82,'Application Administrator','2022-10-25','11:00:13',0,6,3,2,1),(83,'Frontend Tech Lead','2022-10-17','16:46:00',1,7,1,1,10),(84,'Junior Flutter Developer','2022-10-02','15:00:10',1,14,3,3,9),(85,'Mid Vue.js Developer','2022-10-02','15:00:10',1,14,2,1,9),(86,'Junior Vue.js Developer','2022-10-02','15:00:10',1,14,3,2,9),(87,'Web Developer','2022-10-28','11:12:00',1,12,2,2,12),(88,'SAP Data Analyst','2022-10-28','14:00:10',0,11,2,2,1),(89,'Konsultant dswdroÅ¼en systemu ERP','2022-11-03','08:57:00',0,23,2,3,14),(90,'Junior Support Specialist','2022-10-22','12:00:11',0,32,3,2,7),(91,'Junior/Mid UX&UI Designer','2022-11-14','15:00:10',1,61,2,2,1),(92,'Senior IT Help Desk Specialist','2022-11-14','15:00:10',1,61,1,2,1),(93,'Junior/Mid UX&UI Designer','2022-11-14','10:00:09',1,61,2,2,1),(94,'Senior IT Help Desk Specialist','2022-10-03','12:00:14',1,61,1,2,1),(95,'Tester Specjalista dswsparcia','2022-11-14','09:39:00',1,3,3,2,7),(96,'Data Analyst','2022-11-14','15:07:54',1,49,2,2,1),(97,'Data Analyst (They/She/He)','2022-10-03','09:15:00',1,67,2,1,1),(98,'Senior Full Stack Engineer Tech Lead','2022-10-24','16:43:00',1,11,1,2,18),(99,'Unity Developer','2022-10-02','11:00:11',1,14,2,1,7),(100,'Administrator IT','2022-10-28','13:00:09',0,66,2,2,39),(101,'Software Tester','2022-11-02','11:37:30',1,2,2,1,18),(102,'Senior/Mid Backend Developer','2022-11-13','13:00:10',1,38,2,1,7),(103,'IOS Developer','2022-11-10','14:14:00',1,38,2,1,7),(104,'Junior IT Helpdesk Engineer','2022-10-25','14:00:10',1,1,3,3,8),(105,'PrestaShop Developer','2022-10-21','09:00:14',1,21,2,1,7),(106,'Frontend Developer','2022-10-25','11:00:13',1,8,2,1,1),(107,'C/C+Embedded Software Developer','2022-10-27','14:28:00',1,68,2,2,1),(108,'Junior C/C+Embedded Developer','2022-10-27','14:28:00',1,68,3,2,1),(109,'FPGA Developer','2022-10-27','14:28:00',1,68,2,2,1),(110,'IT Helpdesk Network Specialist','2022-10-27','10:00:00',1,11,2,2,27),(111,'Salesforce Developer','2022-11-14','08:18:00',1,32,3,2,18),(112,'DevOps Engineer (mid+/senior)','2022-11-09','12:47:00',1,61,2,1,12),(113,'Power BI Specialist','2022-10-02','08:00:15',0,62,2,2,12),(114,'Junior Software Engineer','2022-10-24','12:00:00',0,69,3,2,1),(115,'Fullstack Developer','2022-11-14','21:26:00',1,23,1,2,1),(116,'UI Designer Mid Regular','2022-10-25','15:00:09',1,49,2,2,1),(117,'Product Designer (UX/UIâ€“ Mid Regular','2022-10-25','15:00:09',1,49,2,2,1),(118,'Programista BI','2022-11-12','12:00:13',1,28,2,1,1),(119,'Starszy Administrator DWH/BI','2022-10-26','15:00:09',1,28,1,1,1),(120,'Analityk Systemowy Aplikacyjny','2022-10-24','13:00:09',1,28,2,2,1),(121,'Programista Fullstack','2022-10-26','12:24:00',1,28,2,1,18),(122,'Programista Xamarin','2022-10-25','14:00:10',1,28,2,1,7),(123,'Starszy Programista Fullstack','2022-10-02','11:00:11',1,70,1,1,1),(124,'Software Engineer','2022-10-28','13:23:00',1,12,2,2,18),(125,'Junior IT Administrator','2022-10-03','10:00:10',1,43,3,2,13),(126,'Java Developer','2022-11-09','07:25:00',0,11,3,2,7),(127,'Angular Frontend Developer','2022-10-27','09:00:14',1,11,2,1,6),(128,'Software Developer Visual Studio C++/C#','2022-10-27','09:00:14',1,11,2,1,40),(129,'Senior Angular Frontend Developer','2022-10-24','12:00:00',1,11,1,1,1),(130,'QA Engineer (junior/mid)','2022-10-03','11:00:13',0,23,2,3,1),(131,'Junior Software Engineer','2022-10-27','08:23:00',1,12,3,3,7),(132,'C+CEngineer','2022-10-26','08:00:13',1,12,2,1,1),(133,'Embedded Software Engineer','2022-10-25','18:00:10',1,12,2,1,7),(134,'C+Engineer','2022-10-25','18:00:10',1,12,2,1,7),(135,'C+Software Engineer (CAD/CAM)','2022-10-03','08:00:14',1,12,2,1,7),(136,'C+CEngineer','2022-10-03','08:00:14',1,12,2,1,7),(137,'QA Tester Software Tester','2022-10-24','10:00:09',1,38,2,1,7),(138,'QA Engineer - Koordynator testÃ³w','2022-10-27','17:00:09',1,71,2,2,1),(139,'Service Desk Specialist','2022-10-24','07:17:00',1,1,3,3,13),(140,'Specjalista dsIT','2022-10-03','09:00:12',1,1,3,3,13),(141,'Junior Java Developer','2022-11-13','14:00:10',1,61,3,2,13),(142,'Helpdesk Technician','2022-10-02','10:00:09',1,61,3,2,13),(143,'IT Support (German)','2022-10-25','05:43:00',1,72,3,1,7),(144,'Architekt rozwiÄ…zan','2022-10-25','10:00:09',0,16,1,1,12),(145,'Administrator SystemÃ³w Windows','2022-10-25','10:00:09',0,16,2,1,1),(146,'IT Manager','2022-10-28','14:00:10',1,38,2,3,1),(147,'System Engineer','2022-10-27','15:00:09',1,28,2,2,41),(148,'IT Engineer - Tech Supportâ€‹','2022-10-27','15:00:09',1,28,2,2,41),(149,'Technical Manager','2022-10-23','08:00:14',1,24,1,2,7),(150,'IT Support Specialist','2022-10-23','07:00:14',1,24,2,2,7);
/*!40000 ALTER TABLE `postings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `preferred_workplace_for_junior_roles`
--

DROP TABLE IF EXISTS `preferred_workplace_for_junior_roles`;
/*!50001 DROP VIEW IF EXISTS `preferred_workplace_for_junior_roles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `preferred_workplace_for_junior_roles` AS SELECT 
 1 AS `Workplace Type`,
 1 AS `Postings`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salaries` (
  `salary_id` int unsigned NOT NULL AUTO_INCREMENT,
  `salary_type` varchar(45) NOT NULL,
  `currency_id` int NOT NULL,
  PRIMARY KEY (`salary_id`),
  KEY `fk_Salaries_Currencies1_idx` (`currency_id`),
  CONSTRAINT `fk_Salaries_Currencies1` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaries`
--

LOCK TABLES `salaries` WRITE;
/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;
INSERT INTO `salaries` VALUES (1,'B2B',1),(2,'B2B',2),(3,'B2B',3),(4,'B2B',4),(5,'B2B',5),(6,'B2B',6),(7,'B2B',7),(8,'Permanent',5),(9,'Permanent',3),(10,'Permanent',2),(11,'Permanent',8),(12,'mandate',5),(13,'mandate',8);
/*!40000 ALTER TABLE `salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `skill_average`
--

DROP TABLE IF EXISTS `skill_average`;
/*!50001 DROP VIEW IF EXISTS `skill_average`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `skill_average` AS SELECT 
 1 AS `skill_name`,
 1 AS `average_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `skill_id` int NOT NULL,
  `skill_name` varchar(45) NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Amazon AWS'),(2,'REST API'),(3,'English'),(4,'Web Application Testing'),(5,'JavaScript'),(6,'Kubernetes'),(7,'AWS'),(8,'RPG'),(9,'Ruby'),(10,'OpenGL'),(11,'Microservice Architecture'),(12,'Vue.js'),(13,'PostgreSQL'),(14,'Node.js'),(15,'ReactJS'),(16,'MySQL'),(17,'Vue/React'),(18,'MVC'),(19,'Hibernate'),(20,'Docker'),(21,'Vuex'),(22,'.NET/.NETcore'),(23,'.Net'),(24,'CI/CD'),(25,'JEST/Cypress'),(26,'Team Leadership'),(27,'Jenkins'),(28,'Linux'),(29,'Spring'),(30,'Kotlin'),(31,'HTML5'),(32,'SQL'),(33,'pytest'),(34,'Django Rest Framework'),(35,'Product Management'),(36,'Next.js'),(37,'Manual Testing'),(38,'TypeScript'),(39,'CRM'),(40,'Ansible'),(41,'CSS3'),(42,'Enterprise Architect'),(43,'Entity Framework'),(44,'React'),(45,'GCP'),(46,'Communication Skills'),(47,'.Net Framework'),(48,'Git'),(49,'Testing'),(50,'HTML'),(51,'IT'),(52,'Java'),(53,'Web Services'),(54,'Looker'),(55,'Wireframes'),(56,'CSS'),(57,'Android'),(58,'JIRA'),(59,'Bootstrap'),(60,'windows services'),(61,'Visual Studio'),(62,'WinDbg'),(63,'ETL'),(64,'API'),(65,'MongoDB'),(66,'REST'),(67,'Powershell'),(68,'BigQuery'),(69,'Architecture'),(70,'.NET Core'),(71,'Architektura obiektowa'),(72,'JMS'),(73,'Cloud'),(74,'Figma'),(75,'Java 17'),(76,'Web Applications'),(77,'Postman'),(78,'Python'),(79,'API Testing'),(80,'RTOS'),(81,'React Native'),(82,'Angular'),(83,'E-commerce'),(84,'Spring Boot'),(85,'Apple metal'),(86,'Software Development'),(87,'Golang'),(88,'Swift'),(89,'Gradle'),(90,'Scipting'),(91,'TailwindCSS'),(92,'DirectX'),(93,'Monitoring Tools'),(94,'PHP'),(95,'planning'),(96,'Espress'),(97,'Outsourcing'),(98,'MS Exchange'),(99,'Bash'),(100,'Microsoft Azure'),(101,'SQL Server'),(102,'Nest.js'),(103,'Project Management'),(104,'Firewall'),(105,'Swagger'),(106,'GraphQL'),(107,'Embedded C'),(108,'C#'),(109,'Unity'),(110,'Test Automation'),(111,'JPA'),(112,'Android SDK'),(113,'product owner'),(114,'RWD'),(115,'Django / Twisted / Flask'),(116,'Symfony'),(117,'Sales'),(118,'Clickup'),(119,'Mac OS'),(120,'Solid'),(121,'iOS SDK'),(122,'ASP.NET MVC'),(123,'Power BI'),(124,'WebService'),(125,'Scrum'),(126,'T-SQL'),(127,'JRuby'),(128,'Agile'),(129,'MS Office'),(130,'Unit Testing'),(131,'vanilla'),(132,'Networking'),(133,'SOA'),(134,'Router'),(135,'shoper'),(136,'SciPy'),(137,'Waterfall'),(138,'DWH'),(139,'SSRS'),(140,'Confluence'),(141,'MS SQL Server'),(142,'Business Analysis'),(143,'JS'),(144,'SVN'),(145,'Symfony 4'),(146,'Doctrine 2'),(147,'Qt'),(148,'JBoss'),(149,'Spring MVC'),(150,'MySQL / NoSQL'),(151,'Google Cloud Platform'),(152,'ECMAScript'),(153,'Django'),(154,'IT Security'),(155,'Groovy'),(156,'PKI'),(157,'Angielski'),(158,'Prometheus'),(159,'IIS'),(160,'SwiftUI'),(161,'DDD'),(162,'GitHub'),(163,'Elasticsearch'),(164,'Gatsby'),(165,'Azure'),(166,'Telco'),(167,'gRPC'),(168,'MicroPython'),(169,'3GPP'),(170,'UML'),(171,'Express.js'),(172,'Falcon'),(173,'Redux'),(174,'Customer Support'),(175,'B2B Saas'),(176,'Terraform'),(177,'Turbo'),(178,'Windows'),(179,'Fastlane'),(180,'Software Architecture'),(181,'Backend'),(182,'Windows Server'),(183,'Data Studio'),(184,'SRM'),(185,'Objective-C'),(186,'Analytical Thinking'),(187,'Web Development'),(188,'People Management'),(189,'Yii'),(190,'Active Directory'),(191,'SAP'),(192,'ERP'),(193,'UI'),(194,'qlik'),(195,'Unity 3D'),(196,'WebSocket'),(197,'C++'),(198,'Salesforce'),(199,'Programming'),(200,'UX'),(201,'SSAS'),(202,'RxJS'),(203,'mochaJS'),(204,'CAM'),(205,'WIN'),(206,'Test planning'),(207,'IT Support'),(208,'MS SQL'),(209,'Team Management'),(210,'NGINX'),(211,'Angular 12'),(212,'Machine Learning'),(213,'PL1'),(214,'Ruby on Rails'),(215,'Security frameworks'),(216,'unknown'),(217,'Javascipr/Typescript'),(218,'React/Vue'),(219,'MVVM'),(220,'Symfony 5.4'),(221,'Redis'),(222,'QA'),(223,'Apex'),(224,'BPMN'),(225,'SCSS'),(226,'Rails'),(227,'PM'),(228,'UX Research'),(229,'web platform'),(230,'SASS'),(231,'.NET MVC'),(232,'CPU'),(233,'Grafana'),(234,'Google Cloud'),(235,'NoSQL'),(236,'backup'),(237,'Quality Assurance'),(238,'TDD'),(239,'Cypress'),(240,'Automated Testing'),(241,'UX Design'),(242,'Cybersecurity'),(243,'Java 8'),(244,'Software Design'),(245,'Containers'),(246,'Time Management'),(247,'MS 365'),(248,'EF Core'),(249,'Analiza Biznesowa'),(250,'Network Administration'),(251,'Ubuntu'),(252,'Laravel'),(253,'MarTech'),(254,'Analityczne MyÅ›lenie'),(255,'.NET 5.0'),(256,'Business Intelligence'),(257,'Shopware 6'),(258,'WAF'),(259,'Behave'),(260,'Flutter'),(261,'Microservices'),(262,'WordPress'),(263,'NumPy'),(264,'PHP 7'),(265,'Embedded'),(266,'Java EE'),(267,'Linux / Unix'),(268,'Amazon Web Services'),(269,'OOP'),(270,'Flask'),(271,'DLP'),(272,'DoÅ›wiadczenie komercyjne'),(273,'GitLab'),(274,'WooCommerce'),(275,'C'),(276,'AngularJS'),(277,'5G/4G'),(278,'Google Tag Manger'),(279,'Snowflake'),(280,'fastapi'),(281,'Sidekiq'),(282,'CocoaPods'),(283,'IPFS'),(284,'Linux networking'),(285,'MS Excel'),(286,'Java or Python'),(287,'FICO'),(288,'Customer Service'),(289,'Tableau'),(290,'Microsoft Windows Server'),(291,'Testing Mobile Apps'),(292,'SaaS'),(293,'PL/SQL'),(294,'SSIS'),(295,'Bitbucket'),(296,'.Net 5'),(297,'CAD'),(298,'Test Cases'),(299,'ArchiMate'),(300,'Apache'),(301,'Elixir'),(302,'Angular Material'),(303,'Shopify'),(304,'Cobol'),(305,'PHP 7.x'),(306,'PrestaShop'),(307,'Android Studio'),(308,'PHP 8'),(309,'NodeJS'),(310,'Python 3'),(311,'English in speech'),(312,'Kafka / Confluent ecosystem'),(313,'product management experience'),(314,'Python 3.x'),(315,'JavaScript/TypeScript'),(316,'Roadmap'),(317,'VANILLA JS'),(318,'Go'),(319,'.NET C#'),(320,'Tableau Desktop'),(321,'DevOps'),(322,'Polish'),(323,'R'),(324,'Management'),(325,'Spark'),(326,'PlayCanvas'),(327,'JavaScript (on backend)'),(328,'C/C++'),(329,'React.JS'),(330,'Relational Databases'),(331,'Linux OS'),(332,'BizTalk'),(333,'openFrameworks'),(334,'Windows 10'),(335,'IP networks'),(336,'Selenium'),(337,'BI'),(338,'GNU/Linux'),(339,'.Net6'),(340,'Apache Kafka'),(341,'Java 11'),(342,'PHP 7/8'),(343,'Ceph'),(344,'ASP.NET Web API'),(345,'iOS'),(346,'Google Analytics'),(347,'DBT'),(348,'RxSwift'),(349,'AW'),(350,'Solidity'),(351,'Network Protocols'),(352,'Big Data'),(353,'Data'),(354,'Verilog'),(355,'German'),(356,'it infrastructure');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `skills_by_experience_level`
--

DROP TABLE IF EXISTS `skills_by_experience_level`;
/*!50001 DROP VIEW IF EXISTS `skills_by_experience_level`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `skills_by_experience_level` AS SELECT 
 1 AS `Skill Name`,
 1 AS `Level of Experience`,
 1 AS `Popularity`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `company_sizes`
--

/*!50001 DROP VIEW IF EXISTS `company_sizes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `company_sizes` AS select `postings`.`company_id` AS `company_id`,count(`postings`.`company_id`) AS `Number of Postings`,(case when ((`companies`.`company_size_end` - `companies`.`company_size_start`) <= 10) then 'Small Company' when ((`companies`.`company_size_end` - `companies`.`company_size_start`) <= 50) then 'Medium Company' else 'Large Company' end) AS `Company Size` from (`postings` join `companies` on((`postings`.`company_id` = `companies`.`company_id`))) group by `postings`.`company_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `high_earning_jobs`
--

/*!50001 DROP VIEW IF EXISTS `high_earning_jobs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `high_earning_jobs` AS select `postings`.`posting_title` AS `posting_title`,`experiencelevel`.`experience_level` AS `experience_level`,(`posting_salary`.`salary_end` - `posting_salary`.`salary_start`) AS `median_salary`,`salaries`.`salary_type` AS `salary_type` from (((`experiencelevel` join `postings` on((`experiencelevel`.`level_id` = `postings`.`level_id`))) join `posting_salary` on((`postings`.`posting_id` = `posting_salary`.`posting_id`))) join `salaries` on((`posting_salary`.`salary_id` = `salaries`.`salary_id`))) where ((`posting_salary`.`salary_end` - `posting_salary`.`salary_start`) > (select avg((`posting_salary`.`salary_end` - `posting_salary`.`salary_start`)) from `posting_salary`)) order by `experiencelevel`.`experience_level` desc,(`posting_salary`.`salary_end` - `posting_salary`.`salary_start`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `locations_offering_most_jobs`
--

/*!50001 DROP VIEW IF EXISTS `locations_offering_most_jobs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `locations_offering_most_jobs` AS select concat(`locations`.`city`,', ',`locations`.`country_code`) AS `Location`,count(`postings`.`posting_id`) AS `Number of Postings` from (`locations` join `postings` on((`locations`.`location_id` = `postings`.`location_id`))) group by `Location` order by count(`postings`.`posting_id`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `preferred_workplace_for_junior_roles`
--

/*!50001 DROP VIEW IF EXISTS `preferred_workplace_for_junior_roles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `preferred_workplace_for_junior_roles` AS select `jobcategories`.`category_type` AS `Workplace Type`,count(`postings`.`posting_id`) AS `Postings` from (((select `postings`.`posting_id` AS `posting_id` from `postings` where (`postings`.`level_id` = 3)) `junior_postings` join `postings` on((`junior_postings`.`posting_id` = `postings`.`posting_id`))) join `jobcategories` on((`postings`.`category_id` = `jobcategories`.`category_id`))) group by `jobcategories`.`category_type` order by `Postings` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `skill_average`
--

/*!50001 DROP VIEW IF EXISTS `skill_average`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `skill_average` AS select `skills`.`skill_name` AS `skill_name`,avg(`posting_skill`.`skill_value`) AS `average_value` from (`skills` join `posting_skill` on((`skills`.`skill_id` = `posting_skill`.`skill_id`))) group by `skills`.`skill_name` having ((`average_value` >= 3) and (count(`posting_skill`.`posting_id`) >= 5)) order by `average_value` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `skills_by_experience_level`
--

/*!50001 DROP VIEW IF EXISTS `skills_by_experience_level`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `skills_by_experience_level` AS select `skills`.`skill_name` AS `Skill Name`,`experiencelevel`.`experience_level` AS `Level of Experience`,count(`postings`.`posting_id`) AS `Popularity` from (((`postings` join `posting_skill` on((`postings`.`posting_id` = `posting_skill`.`posting_id`))) join `skills` on((`posting_skill`.`skill_id` = `skills`.`skill_id`))) join `experiencelevel` on((`postings`.`level_id` = `experiencelevel`.`level_id`))) group by `skills`.`skill_name`,`experiencelevel`.`experience_level` having (`Popularity` > 2) order by `Popularity` desc */;
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

-- Dump completed on 2024-05-12 23:42:49
