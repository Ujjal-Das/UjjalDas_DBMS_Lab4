-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: e-commerce
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `supplier_pricing`
--

DROP TABLE IF EXISTS `supplier_pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_pricing` (
  `PRICING_ID` int NOT NULL,
  `PRO_ID` int DEFAULT NULL,
  `SUPP_ID` int DEFAULT NULL,
  `SUPP_PRICE` int DEFAULT NULL,
  `DEFAULT_FLAG` int DEFAULT '0',
  PRIMARY KEY (`PRICING_ID`),
  KEY `PRO_ID` (`PRO_ID`),
  KEY `SUPP_ID` (`SUPP_ID`),
  CONSTRAINT `supplier_pricing_ibfk_1` FOREIGN KEY (`PRO_ID`) REFERENCES `product` (`PRO_ID`),
  CONSTRAINT `supplier_pricing_ibfk_2` FOREIGN KEY (`SUPP_ID`) REFERENCES `supplier` (`SUPP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_pricing`
--

LOCK TABLES `supplier_pricing` WRITE;
/*!40000 ALTER TABLE `supplier_pricing` DISABLE KEYS */;
INSERT INTO `supplier_pricing` VALUES (1,1,2,1500,0),(2,3,5,30000,0),(3,5,1,3000,0),(4,2,3,2500,0),(5,4,1,1000,0),(6,12,2,780,0),(7,12,4,789,0),(8,3,1,31000,0),(9,1,5,1450,0),(10,4,2,999,0),(11,7,3,549,0),(12,7,4,529,0),(13,6,2,105,0),(14,6,1,99,0),(15,2,5,2999,0),(16,5,2,2999,0);
/*!40000 ALTER TABLE `supplier_pricing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-04  0:01:10
