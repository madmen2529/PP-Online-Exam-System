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
-- Table structure for table `exam_records`
--

DROP TABLE IF EXISTS `exam_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `choice_a` varchar(255) DEFAULT NULL,
  `choice_b` varchar(255) DEFAULT NULL,
  `choice_c` varchar(255) DEFAULT NULL,
  `choice_d` varchar(255) DEFAULT NULL,
  `choice_e` varchar(255) DEFAULT NULL,
  `correct_choice` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `examId` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `studentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_id` (`exam_id`),
  KEY `examId` (`examId`),
  KEY `student_id` (`student_id`),
  KEY `studentId` (`studentId`),
  CONSTRAINT `exam_records_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `exam_records_ibfk_2` FOREIGN KEY (`examId`) REFERENCES `exams` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `exam_records_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `exam_records_ibfk_4` FOREIGN KEY (`studentId`) REFERENCES `students` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_records`
--

LOCK TABLES `exam_records` WRITE;
/*!40000 ALTER TABLE `exam_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_records` ENABLE KEYS */;
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
