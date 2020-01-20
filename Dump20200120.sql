-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: online-exam-system
-- ------------------------------------------------------
-- Server version	5.7.28-ndb-7.6.12-cluster-gpl

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
  `selected_choice` enum('A','B','C','D','E') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_id` (`exam_id`),
  KEY `student_id` (`student_id`),
  KEY `topic_id` (`topic_id`),
  CONSTRAINT `exam_records_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `exam_records_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `exam_records_ibfk_3` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_records`
--

LOCK TABLES `exam_records` WRITE;
/*!40000 ALTER TABLE `exam_records` DISABLE KEYS */;
INSERT INTO `exam_records` VALUES (2,'A','2020-01-17 07:44:27','2020-01-17 07:44:27',3,1,1),(3,'B','2020-01-17 07:45:03','2020-01-17 07:45:03',3,1,2),(4,'C','2020-01-17 07:45:10','2020-01-17 07:45:10',3,1,3),(5,'D','2020-01-17 07:45:15','2020-01-17 07:45:15',3,1,4),(6,'D','2020-01-17 07:45:19','2020-01-17 07:45:19',3,1,5),(7,'E','2020-01-17 07:45:25','2020-01-17 07:45:25',3,1,6),(8,'E','2020-01-17 07:45:35','2020-01-17 07:45:35',3,1,7),(9,'D','2020-01-17 07:45:43','2020-01-17 07:45:43',3,1,8),(10,'D','2020-01-17 07:45:53','2020-01-17 07:45:53',3,1,9),(11,'E','2020-01-17 07:46:09','2020-01-17 07:46:09',3,1,10),(12,'B','2020-01-17 07:54:53','2020-01-17 07:54:53',3,1,11),(13,'D','2020-01-17 07:55:00','2020-01-17 07:55:00',3,1,12),(14,'B','2020-01-17 07:55:05','2020-01-17 07:55:05',3,1,13),(15,'C','2020-01-17 07:55:22','2020-01-17 07:55:22',3,1,14),(16,'D','2020-01-17 07:55:33','2020-01-17 07:55:33',3,1,15),(17,'A','2020-01-17 07:55:41','2020-01-17 07:55:41',3,1,16),(18,'A','2020-01-17 07:56:04','2020-01-17 07:56:04',3,1,17),(19,'B','2020-01-17 07:56:16','2020-01-17 07:56:16',3,1,18),(20,'A','2020-01-17 07:56:24','2020-01-17 07:56:24',3,1,19),(21,'B','2020-01-17 07:56:32','2020-01-17 07:56:32',3,1,20),(22,'A','2020-01-17 07:56:53','2020-01-17 07:56:53',4,1,21),(23,'B','2020-01-20 06:05:28','2020-01-20 06:05:28',4,1,22),(24,'B','2020-01-20 06:05:37','2020-01-20 06:05:37',4,1,23),(25,'C','2020-01-20 06:05:45','2020-01-20 06:05:45',4,1,24),(26,'B','2020-01-20 06:05:51','2020-01-20 06:05:51',4,1,25),(27,'D','2020-01-20 06:05:59','2020-01-20 06:05:59',4,1,26),(28,'E','2020-01-20 06:06:37','2020-01-20 06:06:37',4,1,28),(29,'E','2020-01-20 06:06:43','2020-01-20 06:06:43',4,1,29),(30,'A','2020-01-20 06:06:53','2020-01-20 06:06:53',4,1,30),(31,'A','2020-01-20 06:08:26','2020-01-20 06:08:26',8,1,31),(32,'B','2020-01-20 06:08:37','2020-01-20 06:08:37',8,1,32),(33,'C','2020-01-20 06:09:59','2020-01-20 06:09:59',8,1,34),(34,'A','2020-01-20 06:10:08','2020-01-20 06:10:08',8,1,35),(35,'D','2020-01-20 06:10:15','2020-01-20 06:10:15',8,1,36),(36,'A','2020-01-20 06:10:33','2020-01-20 06:10:33',8,1,37),(37,'E','2020-01-20 06:10:43','2020-01-20 06:10:43',8,1,38),(38,'D','2020-01-20 06:10:51','2020-01-20 06:10:51',8,1,39),(39,'A','2020-01-20 06:11:00','2020-01-20 06:11:00',8,1,40),(40,'A','2020-01-20 06:11:07','2020-01-20 06:17:29',9,1,41),(41,'C','2020-01-20 06:11:13','2020-01-20 06:17:33',9,1,42),(42,'D','2020-01-20 06:11:23','2020-01-20 06:17:36',9,1,43),(43,'B','2020-01-20 06:11:31','2020-01-20 06:17:39',9,1,44),(44,'B','2020-01-20 06:11:37','2020-01-20 06:17:42',9,1,45),(45,'B','2020-01-20 06:11:42','2020-01-20 06:17:44',9,1,46),(46,'C','2020-01-20 06:11:49','2020-01-20 06:17:47',9,1,47),(47,'D','2020-01-20 06:11:59','2020-01-20 06:17:50',9,1,48),(48,'E','2020-01-20 06:12:20','2020-01-20 06:17:54',9,1,49),(49,'E','2020-01-20 06:12:24','2020-01-20 06:17:59',9,1,50),(51,'A','2020-01-20 06:21:25','2020-01-20 06:21:25',10,2,51),(52,'B','2020-01-20 06:21:35','2020-01-20 06:21:35',10,2,52),(53,'C','2020-01-20 06:21:42','2020-01-20 06:21:42',10,2,53),(54,'D','2020-01-20 06:21:50','2020-01-20 06:21:50',10,2,54),(55,'C','2020-01-20 06:21:58','2020-01-20 06:21:58',10,2,55),(56,'D','2020-01-20 06:24:36','2020-01-20 06:24:36',10,2,56),(57,'C','2020-01-20 06:24:49','2020-01-20 06:24:49',10,2,57),(58,'D','2020-01-20 06:25:01','2020-01-20 06:25:01',10,2,58),(59,'C','2020-01-20 06:25:13','2020-01-20 06:25:13',10,2,59),(60,'C','2020-01-20 06:25:20','2020-01-20 06:25:20',10,2,60),(61,'C','2020-01-20 06:27:01','2020-01-20 06:27:01',14,2,61),(62,'A','2020-01-20 06:27:15','2020-01-20 06:27:15',14,2,62),(63,'B','2020-01-20 06:27:28','2020-01-20 06:27:28',14,2,63),(64,'B','2020-01-20 06:27:42','2020-01-20 06:27:42',14,2,64),(65,'C','2020-01-20 06:29:30','2020-01-20 06:29:30',14,2,65),(66,'B','2020-01-20 06:29:41','2020-01-20 06:29:41',14,2,66),(67,'C','2020-01-20 06:29:51','2020-01-20 06:29:51',14,2,68),(68,'C','2020-01-20 06:29:57','2020-01-20 06:29:57',14,2,69),(69,'D','2020-01-20 06:30:04','2020-01-20 06:30:04',14,2,70),(70,'A','2020-01-20 06:33:53','2020-01-20 06:33:53',15,3,71),(71,'B','2020-01-20 06:34:01','2020-01-20 06:34:01',15,3,72),(72,'C','2020-01-20 06:34:08','2020-01-20 06:34:08',15,3,73),(73,'C','2020-01-20 06:34:14','2020-01-20 06:34:14',15,3,74),(74,'C','2020-01-20 06:34:19','2020-01-20 06:34:19',15,3,75),(75,'C','2020-01-20 06:34:24','2020-01-20 06:34:24',15,3,76),(76,'B','2020-01-20 06:34:36','2020-01-20 06:34:36',15,3,77),(77,'C','2020-01-20 06:34:46','2020-01-20 06:34:46',15,3,78),(78,'B','2020-01-20 06:34:54','2020-01-20 06:34:54',15,3,79),(79,'B','2020-01-20 06:35:15','2020-01-20 06:35:15',15,3,80),(80,'A','2020-01-20 06:37:03','2020-01-20 06:37:03',16,3,81),(81,'A','2020-01-20 06:37:07','2020-01-20 06:37:07',16,3,82),(82,'A','2020-01-20 06:37:11','2020-01-20 06:37:11',16,3,83),(83,'B','2020-01-20 06:37:22','2020-01-20 06:37:22',16,3,84),(84,'B','2020-01-20 06:37:29','2020-01-20 06:37:29',16,3,85),(85,'C','2020-01-20 06:37:36','2020-01-20 06:37:36',16,3,86),(86,'C','2020-01-20 06:37:42','2020-01-20 06:37:42',16,3,87),(87,'A','2020-01-20 06:37:50','2020-01-20 06:37:50',16,3,88),(88,'A','2020-01-20 06:37:57','2020-01-20 06:37:57',16,3,89),(89,'A','2020-01-20 06:38:03','2020-01-20 06:38:03',16,3,90),(90,'D','2020-01-20 06:39:41','2020-01-20 06:39:41',18,3,91),(91,'C','2020-01-20 06:39:53','2020-01-20 06:39:53',18,3,92),(92,'D','2020-01-20 06:39:59','2020-01-20 06:39:59',18,3,93),(93,'D','2020-01-20 06:40:08','2020-01-20 06:40:08',18,3,94),(94,'D','2020-01-20 06:40:11','2020-01-20 06:40:11',18,3,95),(95,'C','2020-01-20 06:40:39','2020-01-20 06:40:39',18,3,96),(96,'C','2020-01-20 06:40:47','2020-01-20 06:40:47',18,3,97),(97,'A','2020-01-20 06:40:54','2020-01-20 06:40:54',18,3,98),(98,'B','2020-01-20 06:41:03','2020-01-20 06:41:03',18,3,99),(99,'B','2020-01-20 06:41:17','2020-01-20 06:41:17',18,3,100),(100,'A','2020-01-20 06:42:03','2020-01-20 06:42:03',19,4,101),(101,'A','2020-01-20 06:42:06','2020-01-20 06:42:06',19,4,102),(102,'B','2020-01-20 06:42:13','2020-01-20 06:42:13',19,4,103),(103,'B','2020-01-20 06:42:19','2020-01-20 06:42:19',19,4,104),(104,'C','2020-01-20 06:42:24','2020-01-20 06:42:24',19,4,105),(105,'C','2020-01-20 06:42:31','2020-01-20 06:42:31',19,4,106),(106,'C','2020-01-20 06:42:34','2020-01-20 06:42:34',19,4,107),(107,'B','2020-01-20 06:42:46','2020-01-20 06:42:46',19,4,108),(108,'E','2020-01-20 06:43:04','2020-01-20 06:43:04',19,4,109),(109,'D','2020-01-20 06:43:14','2020-01-20 06:43:14',19,4,110);
/*!40000 ALTER TABLE `exam_records` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (3,'GATE','Engineering',100,'Don\'t cheat','2020-01-16 08:28:33','2020-01-16 08:28:33',1,NULL),(4,'JEE Main','Engineering',100,'Don\'t cheat','2020-01-16 08:28:52','2020-01-16 08:28:52',1,NULL),(5,'BITSAT','Engineering',100,'Don\'t cheat','2020-01-16 08:29:00','2020-01-16 08:29:00',1,NULL),(6,'VITEEE','Engineering',100,'Don\'t cheat','2020-01-16 08:29:07','2020-01-16 08:29:07',1,NULL),(7,'JEE Advanced','Engineering',100,'Don\'t cheat','2020-01-16 08:29:20','2020-01-16 08:29:20',1,NULL),(8,'CAT','BSchool',100,'Don\'t cheat','2020-01-16 08:29:37','2020-01-16 08:29:37',2,NULL),(9,'XAT','BSchool',100,'Don\'t cheat','2020-01-16 08:29:44','2020-01-16 08:29:44',2,NULL),(10,'CMAT','BSchool',100,'Don\'t cheat','2020-01-16 08:29:49','2020-01-16 08:29:49',2,NULL),(11,'MAT','BSchool',100,'Don\'t cheat','2020-01-16 08:29:55','2020-01-16 08:29:55',2,NULL),(12,'DU JAT','BSchool',100,'Don\'t cheat','2020-01-16 08:30:02','2020-01-16 08:30:02',2,NULL),(13,'CLAT PG','Law',100,'Don\'t cheat','2020-01-16 08:39:54','2020-01-16 08:39:54',1,NULL),(14,'AILET PG','Law',100,'Don\'t cheat','2020-01-16 08:40:17','2020-01-16 08:40:17',1,NULL),(15,'CLAT','Law',100,'Don\'t cheat','2020-01-16 08:40:23','2020-01-16 08:40:23',1,NULL),(16,'AILET','Law',100,'Don\'t cheat','2020-01-16 08:40:36','2020-01-16 08:40:36',1,NULL),(17,'DU LLB','Law',100,'Don\'t cheat','2020-01-16 08:40:59','2020-01-16 08:40:59',1,NULL),(18,'NEET PG','Medicine',100,'Don\'t cheat','2020-01-16 08:41:17','2020-01-16 08:41:17',1,NULL),(19,'NEET UG','Medicine',100,'Don\'t cheat','2020-01-16 08:41:24','2020-01-16 08:41:24',1,NULL),(20,'AIIMS MBBS','Medicine',100,'Don\'t cheat','2020-01-16 08:41:35','2020-01-16 08:41:35',1,NULL),(21,'AIIMS PG','Medicine',100,'Don\'t cheat','2020-01-16 08:41:42','2020-01-16 08:41:42',1,NULL),(22,'JIPMER MEDICAL','Medicine',100,'Don\'t cheat','2020-01-16 08:42:03','2020-01-16 08:42:03',1,NULL);
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'veezaa1234','1234','Vee','Zaa','M','2020-01-16 08:52:03','2020-01-16 08:52:03'),(2,'victoriaopen1986','1234','Victoria','Open','F','2020-01-20 06:20:29','2020-01-20 06:20:29'),(3,'madmax','1234','Mad','Max','M','2020-01-20 06:20:55','2020-01-20 06:20:55'),(4,'whoami','1234','What','Who','M','2020-01-20 06:21:17','2020-01-20 06:21:17');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'DavidYoyo2529','1234','David','Yoyo','M','2020-01-16 08:19:55','2020-01-16 08:19:55'),(2,'FelixYoyo2529','1234','Felix','Yoyo','M','2020-01-16 08:20:10','2020-01-16 08:20:10');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
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
  PRIMARY KEY (`id`),
  KEY `exam_id` (`exam_id`),
  KEY `examId` (`examId`),
  CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `topics_ibfk_2` FOREIGN KEY (`examId`) REFERENCES `exams` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,3,NULL,'Topic1','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-16 08:50:14','2020-01-16 08:50:14',NULL),(2,3,NULL,'Topic2','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-16 08:50:18','2020-01-16 08:50:18',NULL),(3,3,NULL,'Topic3','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-16 08:50:21','2020-01-16 08:50:21',NULL),(4,3,NULL,'Topic4','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-16 08:50:23','2020-01-16 08:50:23',NULL),(5,3,NULL,'Topic5','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-16 08:50:26','2020-01-16 08:50:26',NULL),(6,3,NULL,'Topic6','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-16 08:50:29','2020-01-16 08:50:29',NULL),(7,3,NULL,'Topic7','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-16 08:50:31','2020-01-16 08:50:31',NULL),(8,3,NULL,'Topic8','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-16 08:50:34','2020-01-16 08:50:34',NULL),(9,3,NULL,'Topic9','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-16 08:50:37','2020-01-16 08:50:37',NULL),(10,3,NULL,'Topic10','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-16 08:50:41','2020-01-16 08:50:41',NULL),(11,3,NULL,'Topic1','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:48:30','2020-01-17 06:48:30',NULL),(12,3,NULL,'Topic2','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:48:37','2020-01-17 06:48:37',NULL),(13,3,NULL,'Topic3','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:48:42','2020-01-17 06:48:42',NULL),(14,3,NULL,'Topic4','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:48:45','2020-01-17 06:48:45',NULL),(15,3,NULL,'Topic5','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:48:49','2020-01-17 06:48:49',NULL),(16,3,NULL,'Topic6','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:48:53','2020-01-17 06:48:53',NULL),(17,3,NULL,'Topic7','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:48:57','2020-01-17 06:48:57',NULL),(18,3,NULL,'Topic8','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:49:01','2020-01-17 06:49:01',NULL),(19,3,NULL,'Topic9','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:49:05','2020-01-17 06:49:05',NULL),(20,3,NULL,'Topic10','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:49:09','2020-01-17 06:49:09',NULL),(21,4,NULL,'Topic1','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','b','2020-01-17 06:54:46','2020-01-17 06:54:46',NULL),(22,4,NULL,'Topic2','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','b','2020-01-17 06:54:49','2020-01-17 06:54:49',NULL),(23,4,NULL,'Topic3','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','b','2020-01-17 06:54:53','2020-01-17 06:54:53',NULL),(24,4,NULL,'Topic4','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','b','2020-01-17 06:54:56','2020-01-17 06:54:56',NULL),(25,4,NULL,'Topic5','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','b','2020-01-17 06:55:00','2020-01-17 06:55:00',NULL),(26,4,NULL,'Topic6','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','b','2020-01-17 06:55:04','2020-01-17 06:55:04',NULL),(27,4,NULL,'Topic7','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','b','2020-01-17 06:55:07','2020-01-17 06:55:07',NULL),(28,4,NULL,'Topic8','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','b','2020-01-17 06:55:11','2020-01-17 06:55:11',NULL),(29,4,NULL,'Topic9','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','b','2020-01-17 06:55:14','2020-01-17 06:55:14',NULL),(30,4,NULL,'Topic10','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','b','2020-01-17 06:55:19','2020-01-17 06:55:19',NULL),(31,8,NULL,'Topic1','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','c','2020-01-17 06:55:30','2020-01-17 06:55:30',NULL),(32,8,NULL,'Topic2','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','c','2020-01-17 06:55:34','2020-01-17 06:55:34',NULL),(33,8,NULL,'Topic3','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','c','2020-01-17 06:55:36','2020-01-17 06:55:36',NULL),(34,8,NULL,'Topic4','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','c','2020-01-17 06:55:40','2020-01-17 06:55:40',NULL),(35,8,NULL,'Topic5','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','c','2020-01-17 06:55:43','2020-01-17 06:55:43',NULL),(36,8,NULL,'Topic6','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','c','2020-01-17 06:55:46','2020-01-17 06:55:46',NULL),(37,8,NULL,'Topic7','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','c','2020-01-17 06:55:48','2020-01-17 06:55:48',NULL),(38,8,NULL,'Topic8','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','c','2020-01-17 06:55:51','2020-01-17 06:55:51',NULL),(39,8,NULL,'Topic9','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','c','2020-01-17 06:55:54','2020-01-17 06:55:54',NULL),(40,8,NULL,'Topic10','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','c','2020-01-17 06:55:57','2020-01-17 06:55:57',NULL),(41,9,NULL,'Topic1','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','d','2020-01-17 06:56:08','2020-01-17 06:56:08',NULL),(42,9,NULL,'Topic2','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','d','2020-01-17 06:56:12','2020-01-17 06:56:12',NULL),(43,9,NULL,'Topic3','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','d','2020-01-17 06:56:15','2020-01-17 06:56:15',NULL),(44,9,NULL,'Topic4','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','d','2020-01-17 06:56:18','2020-01-17 06:56:18',NULL),(45,9,NULL,'Topic5','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','d','2020-01-17 06:56:23','2020-01-17 06:56:23',NULL),(46,9,NULL,'Topic6','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','d','2020-01-17 06:56:27','2020-01-17 06:56:27',NULL),(47,9,NULL,'Topic7','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','d','2020-01-17 06:56:31','2020-01-17 06:56:31',NULL),(48,9,NULL,'Topic8','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','d','2020-01-17 06:56:34','2020-01-17 06:56:34',NULL),(49,9,NULL,'Topic9','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','d','2020-01-17 06:56:37','2020-01-17 06:56:37',NULL),(50,9,NULL,'Topic10','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','d','2020-01-17 06:56:41','2020-01-17 06:56:41',NULL),(51,10,NULL,'Topic1','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','e','2020-01-17 06:56:52','2020-01-17 06:56:52',NULL),(52,10,NULL,'Topic2','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','e','2020-01-17 06:56:56','2020-01-17 06:56:56',NULL),(53,10,NULL,'Topic3','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','e','2020-01-17 06:56:59','2020-01-17 06:56:59',NULL),(54,10,NULL,'Topic4','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','e','2020-01-17 06:57:02','2020-01-17 06:57:02',NULL),(55,10,NULL,'Topic5','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','e','2020-01-17 06:57:05','2020-01-17 06:57:05',NULL),(56,10,NULL,'Topic6','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','e','2020-01-17 06:57:09','2020-01-17 06:57:09',NULL),(57,10,NULL,'Topic7','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','e','2020-01-17 06:57:20','2020-01-17 06:57:20',NULL),(58,10,NULL,'Topic8','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','e','2020-01-17 06:57:26','2020-01-17 06:57:26',NULL),(59,10,NULL,'Topic9','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','e','2020-01-17 06:57:30','2020-01-17 06:57:30',NULL),(60,10,NULL,'Topic10','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','e','2020-01-17 06:57:35','2020-01-17 06:57:35',NULL),(61,14,NULL,'Topic1','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:58:24','2020-01-17 06:58:24',NULL),(62,14,NULL,'Topic2','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:58:31','2020-01-17 06:58:31',NULL),(63,14,NULL,'Topic3','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:58:35','2020-01-17 06:58:35',NULL),(64,14,NULL,'Topic4','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:58:37','2020-01-17 06:58:37',NULL),(65,14,NULL,'Topic5','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:58:40','2020-01-17 06:58:40',NULL),(66,14,NULL,'Topic6','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:58:43','2020-01-17 06:58:43',NULL),(67,14,NULL,'Topic7','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:58:46','2020-01-17 06:58:46',NULL),(68,14,NULL,'Topic8','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:58:51','2020-01-17 06:58:51',NULL),(69,14,NULL,'Topic9','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:58:55','2020-01-17 06:58:55',NULL),(70,14,NULL,'Topic10','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:58:59','2020-01-17 06:58:59',NULL),(71,15,NULL,'Topic1','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:59:08','2020-01-17 06:59:08',NULL),(72,15,NULL,'Topic2','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:59:12','2020-01-17 06:59:12',NULL),(73,15,NULL,'Topic3','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:59:15','2020-01-17 06:59:15',NULL),(74,15,NULL,'Topic4','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:59:20','2020-01-17 06:59:20',NULL),(75,15,NULL,'Topic5','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:59:24','2020-01-17 06:59:24',NULL),(76,15,NULL,'Topic6','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:59:30','2020-01-17 06:59:30',NULL),(77,15,NULL,'Topic7','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:59:35','2020-01-17 06:59:35',NULL),(78,15,NULL,'Topic8','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:59:38','2020-01-17 06:59:38',NULL),(79,15,NULL,'Topic9','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:59:41','2020-01-17 06:59:41',NULL),(80,15,NULL,'Topic10','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:59:46','2020-01-17 06:59:46',NULL),(81,16,NULL,'Topic1','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:59:53','2020-01-17 06:59:53',NULL),(82,16,NULL,'Topic2','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:59:56','2020-01-17 06:59:56',NULL),(83,16,NULL,'Topic3','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 06:59:59','2020-01-17 06:59:59',NULL),(84,16,NULL,'Topic4','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:00:02','2020-01-17 07:00:02',NULL),(85,16,NULL,'Topic5','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:00:06','2020-01-17 07:00:06',NULL),(86,16,NULL,'Topic6','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:00:09','2020-01-17 07:00:09',NULL),(87,16,NULL,'Topic7','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:00:13','2020-01-17 07:00:13',NULL),(88,16,NULL,'Topic8','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:00:17','2020-01-17 07:00:17',NULL),(89,16,NULL,'Topic9','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:00:20','2020-01-17 07:00:20',NULL),(90,16,NULL,'Topic10','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:00:24','2020-01-17 07:00:24',NULL),(91,18,NULL,'Topic1','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:00:30','2020-01-17 07:00:30',NULL),(92,18,NULL,'Topic2','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:00:35','2020-01-17 07:00:35',NULL),(93,18,NULL,'Topic3','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:00:39','2020-01-17 07:00:39',NULL),(94,18,NULL,'Topic4','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:00:42','2020-01-17 07:00:42',NULL),(95,18,NULL,'Topic5','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:00:46','2020-01-17 07:00:46',NULL),(96,18,NULL,'Topic6','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:00:49','2020-01-17 07:00:49',NULL),(97,18,NULL,'Topic7','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:00:52','2020-01-17 07:00:52',NULL),(98,18,NULL,'Topic8','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:00:55','2020-01-17 07:00:55',NULL),(99,18,NULL,'Topic9','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:00:59','2020-01-17 07:00:59',NULL),(100,18,NULL,'Topic10','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:01:03','2020-01-17 07:01:03',NULL),(101,19,NULL,'Topic1','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:01:22','2020-01-17 07:01:22',NULL),(102,19,NULL,'Topic2','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:01:25','2020-01-17 07:01:25',NULL),(103,19,NULL,'Topic3','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:01:30','2020-01-17 07:01:30',NULL),(104,19,NULL,'Topic4','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:01:34','2020-01-17 07:01:34',NULL),(105,19,NULL,'Topic5','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:01:37','2020-01-17 07:01:37',NULL),(106,19,NULL,'Topic6','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:01:40','2020-01-17 07:01:40',NULL),(107,19,NULL,'Topic7','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:01:45','2020-01-17 07:01:45',NULL),(108,19,NULL,'Topic8','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:01:49','2020-01-17 07:01:49',NULL),(109,19,NULL,'Topic9','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:01:52','2020-01-17 07:01:52',NULL),(110,19,NULL,'Topic10','qwertyuiop','asdfghjkl','zxcvbnm','1234567890',',./;\'[]-=','a','2020-01-17 07:01:57','2020-01-17 07:01:57',NULL);
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-20 14:02:19
