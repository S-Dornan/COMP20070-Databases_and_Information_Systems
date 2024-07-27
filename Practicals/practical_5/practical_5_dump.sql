-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: practical_5
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `coursecode` varchar(45) NOT NULL,
  `coursename` varchar(45) DEFAULT NULL,
  `duration` varchar(45) DEFAULT NULL,
  `coursecost` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`coursecode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('EXL20','Excel','9','200'),('PYN20','Introduction to Python','10','300'),('REL20','Relational databases','10','300'),('WEB20','Web design','10','200');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_taking_course`
--

DROP TABLE IF EXISTS `student_taking_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_taking_course` (
  `studentid` int NOT NULL,
  `coursecode` varchar(45) NOT NULL,
  PRIMARY KEY (`coursecode`,`studentid`),
  KEY `studentid_idx` (`studentid`),
  CONSTRAINT `coursecode` FOREIGN KEY (`coursecode`) REFERENCES `courses` (`coursecode`) ON UPDATE RESTRICT,
  CONSTRAINT `studentid` FOREIGN KEY (`studentid`) REFERENCES `students` (`studentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_taking_course`
--

LOCK TABLES `student_taking_course` WRITE;
/*!40000 ALTER TABLE `student_taking_course` DISABLE KEYS */;
INSERT INTO `student_taking_course` VALUES (11111,'EXL20'),(11111,'PYN20'),(11111,'WEB20'),(12222,'PYN20'),(12222,'WEB20'),(12345,'EXL20'),(12345,'PYN20'),(12345,'REL20'),(23000,'EXL20'),(23456,'PYN20'),(23456,'REL20'),(34567,'PYN20'),(34567,'REL20'),(45678,'REL20');
/*!40000 ALTER TABLE `student_taking_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `studentid` int NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`studentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (11111,'Frank','Murphy','4568777',NULL),(12222,'David','Honan','2888888','Dhonan@ucd.ie'),(12345,'Mary','Murphy','2888888','MMurphy@ucd.ie'),(23000,'Aoife','Byrne','987789','Abyrne@ucd.ie,'),(23456,'Brian','Smith','6498888','Bsmith@ucd.ie'),(34567,'Cora','Williams','1234567','Cwilliams@ucd.ie'),(45678,'Joe','Duffy','1234567','Jduffy@ucd.ie');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutors`
--

DROP TABLE IF EXISTS `tutors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutors` (
  `idtutors` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `telephonenumber` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `teachingcourse` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtutors`),
  KEY `teachingcourse_idx` (`teachingcourse`),
  CONSTRAINT `teachingcourse` FOREIGN KEY (`teachingcourse`) REFERENCES `courses` (`coursecode`) ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutors`
--

LOCK TABLES `tutors` WRITE;
/*!40000 ALTER TABLE `tutors` DISABLE KEYS */;
INSERT INTO `tutors` VALUES (1,'John','Doe','1234567','JDoe@ucd.ie','EXL20'),(2,'Jane','Doe','2345678','JDoe2@ucd.ie','REL20'),(3,'Joe','Duffy','3456789','JDuffy@ucd.ie','WEB20'),(4,'Fergal','Coburn','4567890','FCoburn@ucd.ie','EXL20');
/*!40000 ALTER TABLE `tutors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-31 16:13:29
