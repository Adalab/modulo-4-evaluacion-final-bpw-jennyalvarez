-- MySQL dump 10.13  Distrib 8.0.44, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: libreria
-- ------------------------------------------------------
-- Server version	9.5.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'a3369444-d67a-11f0-9699-2d13d9099f04:1-15,
ca1d265c-d66d-11f0-9b5a-383d8d09878c:1-38';

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `idbooks` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `author` varchar(45) NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`idbooks`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Cien Años de Soledad','Gabriel García Márquez',1967),(2,'El Principito','Antoine de Saint-Exupéry',1943),(3,'Don Quijote de la Mancha','Miguel de Cervantes',1605),(4,'Harry Potter y la Piedra Filosofal','J.K. Rowling',1997),(5,'El Hobbit','J.R.R. Tolkien',1937),(6,'1984','George Orwell',1949);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarias`
--

DROP TABLE IF EXISTS `usuarias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarias`
--

LOCK TABLES `usuarias` WRITE;
/*!40000 ALTER TABLE `usuarias` DISABLE KEYS */;
INSERT INTO `usuarias` VALUES (1,'test@mail.com',NULL,'$2b$10$qGsnO2WiuZVdaaAvnkP6DesFGrQQ4GsR6X.Hzib26q/9y9w/RSk9S'),(7,'test1767009466421@mail.com','Test Usuario','$2b$10$XQB.AnoXSb3edylQzPzqGuNobGuMetH9KoYkxdhYiVPklMm6KzlJu'),(8,'test1767009574561@mail.com','Test Usuario','$2b$10$T4p1Q18uKN0cAiPim7Bx1.q5oGuzTVdYTHP4P/IUL4h4O32RC5V.i'),(9,'test1767009671026@mail.com','Test Usuario','$2b$10$EFey5FESNkiOYYtJG1e5mOPWYjovygf1SZl0jIB8TQEbyEleZcwHS'),(10,'test1767009671182@mail.com','Test Usuario','$2b$10$2TeaMEp5TXY7gXSgYVVvG.JTvxvrJQrP8ACw/9thUs3.KwyUHbFGy'),(11,'test1767009671349@mail.com','Test Usuario','$2b$10$nHiOmNVHWYm78UMPef4.N.MgZnLG.m/OybMnOUrsGDnZmQrnLjp8e');
/*!40000 ALTER TABLE `usuarias` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-30  0:28:32
