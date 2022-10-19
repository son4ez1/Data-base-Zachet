-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: tyresticheskaya_company
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
-- Table structure for table `otel`
--

DROP TABLE IF EXISTS `otel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otel` (
  `id_otelya` int NOT NULL AUTO_INCREMENT,
  `zvezda` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id_otelya`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otel`
--

LOCK TABLES `otel` WRITE;
/*!40000 ALTER TABLE `otel` DISABLE KEYS */;
/*!40000 ALTER TABLE `otel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pitanie`
--

DROP TABLE IF EXISTS `pitanie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pitanie` (
  `id_Pitanie` int NOT NULL AUTO_INCREMENT,
  `tip_pitania` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Pitanie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pitanie`
--

LOCK TABLES `pitanie` WRITE;
/*!40000 ALTER TABLE `pitanie` DISABLE KEYS */;
/*!40000 ALTER TABLE `pitanie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip_tyrov`
--

DROP TABLE IF EXISTS `tip_tyrov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tip_tyrov` (
  `id_Tip_tyrov` int NOT NULL AUTO_INCREMENT,
  `Klassifikaciya` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Tip_tyrov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip_tyrov`
--

LOCK TABLES `tip_tyrov` WRITE;
/*!40000 ALTER TABLE `tip_tyrov` DISABLE KEYS */;
/*!40000 ALTER TABLE `tip_tyrov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tyri`
--

DROP TABLE IF EXISTS `tyri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tyri` (
  `id_Tyri` int NOT NULL AUTO_INCREMENT,
  `Uslugi` varchar(128) NOT NULL,
  `Dliteinost` varchar(45) NOT NULL,
  `Price` varchar(45) NOT NULL,
  `Nazvanie` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Tyri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tyri`
--

LOCK TABLES `tyri` WRITE;
/*!40000 ALTER TABLE `tyri` DISABLE KEYS */;
/*!40000 ALTER TABLE `tyri` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-19 13:45:11
