-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: online-exam-system
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `description` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacherId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `teacherId` (`teacherId`),
  CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `exams_ibfk_2` FOREIGN KEY (`teacherId`) REFERENCES `teachers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (3,'GATE','Engineering',100,'Don\'t cheat','2020-01-16 08:28:33','2020-01-16 08:28:33',1,NULL),(4,'JEE Main','Engineering',100,'Don\'t cheat','2020-01-16 08:28:52','2020-01-16 08:28:52',1,NULL),(5,'BITSAT','Engineering',100,'Don\'t cheat','2020-01-16 08:29:00','2020-01-16 08:29:00',1,NULL),(6,'VITEEE','Engineering',100,'Don\'t cheat','2020-01-16 08:29:07','2020-01-16 08:29:07',1,NULL),(7,'JEE Advanced','Engineering',100,'Don\'t cheat','2020-01-16 08:29:20','2020-01-16 08:29:20',1,NULL),(8,'CAT','BSchool',100,'Don\'t cheat','2020-01-16 08:29:37','2020-01-16 08:29:37',2,NULL),(9,'XAT','BSchool',100,'Don\'t cheat','2020-01-16 08:29:44','2020-01-16 08:29:44',2,NULL),(10,'CMAT','BSchool',100,'Don\'t cheat','2020-01-16 08:29:49','2020-01-16 08:29:49',2,NULL),(11,'MAT','BSchool',100,'Don\'t cheat','2020-01-16 08:29:55','2020-01-16 08:29:55',2,NULL),(12,'DU JAT','BSchool',100,'Don\'t cheat','2020-01-16 08:30:02','2020-01-16 08:30:02',2,NULL),(13,'CLAT PG','Law',100,'Don\'t cheat','2020-01-16 08:39:54','2020-01-16 08:39:54',1,NULL),(14,'AILET PG','Law',100,'Don\'t cheat','2020-01-16 08:40:17','2020-01-16 08:40:17',1,NULL),(15,'CLAT','Law',100,'Don\'t cheat','2020-01-16 08:40:23','2020-01-16 08:40:23',1,NULL),(16,'AILET','Law',100,'Don\'t cheat','2020-01-16 08:40:36','2020-01-16 08:40:36',1,NULL),(17,'DU LLB','Law',100,'Don\'t cheat','2020-01-16 08:40:59','2020-01-16 08:40:59',1,NULL),(18,'NEET PG','Medicine',100,'Don\'t cheat','2020-01-16 08:41:17','2020-01-16 08:41:17',1,NULL),(19,'NEET UG','Medicine',100,'Don\'t cheat','2020-01-16 08:41:24','2020-01-16 08:41:24',1,NULL),(20,'AIIMS MBBS','Medicine',100,'Don\'t cheat','2020-01-16 08:41:35','2020-01-16 08:41:35',1,NULL),(21,'AIIMS PG','Medicine',100,'Don\'t cheat','2020-01-16 08:41:42','2020-01-16 08:41:42',1,NULL),(22,'JIPMER MEDICAL','Medicine',100,'Don\'t cheat','2020-01-16 08:42:03','2020-01-16 08:42:03',1,NULL);
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-16 16:02:59
