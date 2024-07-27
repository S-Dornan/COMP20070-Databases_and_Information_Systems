-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dornan20385853
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `candidate_details`
--

DROP TABLE IF EXISTS `candidate_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_details` (
  `candidate_id` int NOT NULL AUTO_INCREMENT,
  `candidate_firstname` text NOT NULL,
  `candidate_surname` text NOT NULL,
  `candidate_address` text NOT NULL,
  `candidate_telephone` int NOT NULL,
  PRIMARY KEY (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_details`
--

LOCK TABLES `candidate_details` WRITE;
/*!40000 ALTER TABLE `candidate_details` DISABLE KEYS */;
INSERT INTO `candidate_details` VALUES (1,'John','Doe','67 Longmore Drive',812345678),(2,'Jane','Doe','68 Longmore Drive',823456789),(3,'Logan','Sargent','17 Las Vegas Blvd',12345678),(4,'Alex','Albon','12 Las Vegas Blvd',234567891),(5,'Max','Verstappen','1 Las Vegas Blvd',234567892),(6,'Lia','Block','First Floor, Williams Development Heights',345678910),(7,'Joe','Murphy','1 Molesworth Place',87777777),(8,'Alice','Quinn','17 Westland Row',15555422),(9,'Michael','Verstappen','1 Las Vegas Blvd',87777625),(10,'Mariah','Carey','25 Las Vegas Blvd',555025236),(11,'Hannah','Sargent','13A, First Floor, McLaren Heights',1111111111),(12,'Julie','Durnin','13B, Frst Floor, McLaren Heights',1111111111),(13,'Hannah','Moynihan','13B McLaren Heights',11111112),(14,'Úna','McGuire','12A Mclaren Drive, Las Vegas Blvd, Las Vegas',246665662);
/*!40000 ALTER TABLE `candidate_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_skills`
--

DROP TABLE IF EXISTS `candidate_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_skills` (
  `candidate_details-id` int NOT NULL,
  `skills_details-id` int NOT NULL,
  PRIMARY KEY (`candidate_details-id`,`skills_details-id`),
  KEY `Skills-ID_idx` (`skills_details-id`),
  CONSTRAINT `Candidate-ID` FOREIGN KEY (`candidate_details-id`) REFERENCES `candidate_details` (`candidate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Skill-ID` FOREIGN KEY (`skills_details-id`) REFERENCES `skills_details` (`skill_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_skills`
--

LOCK TABLES `candidate_skills` WRITE;
/*!40000 ALTER TABLE `candidate_skills` DISABLE KEYS */;
INSERT INTO `candidate_skills` VALUES (1,1),(2,1),(8,1),(1,2),(8,2),(1,3),(7,3),(8,3),(7,4),(8,5),(7,6),(2,7),(3,7),(10,7),(8,8),(5,9),(9,9),(10,9),(3,10),(4,10),(6,10),(8,10),(10,11);
/*!40000 ALTER TABLE `candidate_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_details`
--

DROP TABLE IF EXISTS `hospital_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_details` (
  `hospital_id` int NOT NULL AUTO_INCREMENT,
  `hospital_name` text,
  `hospital_address` text,
  `hospital_telephone` int DEFAULT NULL,
  PRIMARY KEY (`hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_details`
--

LOCK TABLES `hospital_details` WRITE;
/*!40000 ALTER TABLE `hospital_details` DISABLE KEYS */;
INSERT INTO `hospital_details` VALUES (1,'Beaumont Hospital','Beaumont Hospital PO Box 1297, Beaumont Road, Dublin 9.  ',18093000),(2,'Cappagh National Orthopaedic Hospital','Cappagh National Orthopaedic Hospital Finglas Dublin 11  ',18140400),(3,'Children\'s University Hospital Temple Street','University Hospital Temple Street Temple Street Dublin 1 ',18784200),(4,'Connolly Hospital  Blanchardstown','Connolly Hospital Blanchardstown Mill Rd, Abbotstown, Dublin 15. 15 X40D ',16465000),(5,'Coombe University Hospital','Coombe Women\'s and Infants University Hospital Dublin 8 ',14085200),(6,'Highfield Healthcare','Highfield Healthcare, Swords Rd, Whitehall, Dublin 9, D09 H343 ',18374444),(7,'Mater Misericordiae University Hospital','The Mater Misericordiae University Hospital Eccles Street Dublin 7 ',18032000),(8,'National Maternity Hospital, Holles Street','National Maternity Hospital Holles Street, Dublin 2 ',16373100),(9,'Our Lady\'s Hospital for Sick Children Crumlin','Our Lady\'s Hospital for Sick Children  Cooley Rd, Crumlin, Dublin, D12 N512 ',14096100),(10,'Peamount Healthcare','Peamount Healthcare Peamount Rd, Milltown, Newcastle, Co. Dublin ',16010300),(11,'Rotunda Hospital','Rotunda Hospital Parnell Square E, Rotunda, Dublin 1, D01 P5W9 ',18730700),(12,'Royal Victoria Eye and Ear Hospital','Rotunda Hospital Parnell Square E, Rotunda, Dublin 1, D01 P5W9 ',18730700),(13,'Saint Colmcilles Hospital Loughlinstown','St Colmcille\'s Hospital Bray Rd, Loughlinstown, Co. Dublin, D18 E365 ',12825800),(14,'Saint James\'s Hospital','St. James\'s Hospital James\'s Street, Dublin 8, D08 NHY1 ',14103000),(15,'Saint Josephs Hospital','Saint Josephs Hospital Springdale Rd, Edenmore, Dublin 5, D05 E261 ',18774900),(16,'Saint Luke\'s Hospital Rathgar','St. Luke\'s Hospital Highfield Road, Rathgar, Dublin 6. ',14065000),(17,'Saint Michael\'s Hospital Dun Laoghaire','Michael\'s Hospital Lower George\'s Street, Dun Laoghaire, Co. Dublin. A96 D628 ',12806901),(18,'Saint Vincent\'s University Hospital Elm Park','St. Vincent\'s University Hospital Elm Park, Dublin 4, D04 T6F4 ',12774000),(19,'Tallaght University Hospital','Tallaght University Hospital - Adelaide, Meath & National Children\'s Hospital Tallaght Dublin 24 D24 NR0A',14142000),(20,'Beacon Hospital','Beacon Hospital Sandyford, Dublin 18. D18 AK68 ',12936600),(21,'Blackrock Clinic','Blackrock Clinic Rock Road, Blackrock, Co. Dublin. A94E4X7 ',12832222),(22,'Bon Secours Hospital','Bon Secours Hospital Glasnevin Hill, Glasnevin, Dublin 9, D09 YN97 ',18065300),(23,'Clontarf Hospital','Clontarf Hospital Blackheath Park, Clontarf, Co. Dublin. D03 AY95 ',18332521),(24,'Hermitage Clinic','Hermitage Clinic Old Lucan Road, Dublin 20. D20 W722 ',16459000),(25,'Mater Private Hospital','Mater Private Hospital Dublin Eccles St, Dublin 7, D07 WKW8',18858888),(26,'Sports Surgery Clinic','SSC Sports Surgery Clinic Northwood Avenue, Santry Demesne, Dublin 9. D09 C523 ',15262000),(27,'St John of God Hospital','St John of God Hospital Stillorgan Rd, Blackrock, Dublin ',12771400),(28,'St Vincents Private Hospital','St Vincentâ€™s Private Hospital Merrion Rd, Dublin 4, D04 N2E0 ',12638000),(29,'St. Mary\'s Hospital','Shelbourne Road, Ballsbridge, Dublin 4',124568365),(30,'VHI Swiftcare','Dundrum Town Centre, Dublin 6',12887964);
/*!40000 ALTER TABLE `hospital_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_details`
--

DROP TABLE IF EXISTS `interview_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview_details` (
  `interview_id` int NOT NULL AUTO_INCREMENT,
  `interview_date` date NOT NULL,
  `interview-position_id` int NOT NULL,
  `interview-candidate_id` int NOT NULL,
  `candidate-hired` tinyint(1) NOT NULL,
  PRIMARY KEY (`interview_id`),
  KEY `Position-ID_idx` (`interview-position_id`),
  CONSTRAINT `Interview-ID` FOREIGN KEY (`interview-position_id`) REFERENCES `position_details` (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_details`
--

LOCK TABLES `interview_details` WRITE;
/*!40000 ALTER TABLE `interview_details` DISABLE KEYS */;
INSERT INTO `interview_details` VALUES (1,'2023-11-12',1,1,0),(2,'2023-11-13',10,8,1),(3,'2023-11-15',2,9,0),(4,'2023-11-13',1,5,1),(5,'2023-11-13',1,6,1),(6,'2023-11-13',1,1,0),(7,'2023-11-13',1,1,1),(8,'2023-11-16',12,8,0),(9,'2023-11-16',12,11,1),(10,'2023-11-16',12,12,1),(11,'2023-11-16',12,13,1),(12,'2023-11-12',1,1,0),(13,'2023-11-12',1,1,0);
/*!40000 ALTER TABLE `interview_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_details`
--

DROP TABLE IF EXISTS `position_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_details` (
  `position_id` int NOT NULL AUTO_INCREMENT,
  `position_name` text NOT NULL,
  `position_type` text NOT NULL,
  `hospital_details-id` int NOT NULL,
  PRIMARY KEY (`position_id`),
  KEY `Hospital-ID_idx` (`hospital_details-id`),
  CONSTRAINT `Hospital-ID` FOREIGN KEY (`hospital_details-id`) REFERENCES `hospital_details` (`hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_details`
--

LOCK TABLES `position_details` WRITE;
/*!40000 ALTER TABLE `position_details` DISABLE KEYS */;
INSERT INTO `position_details` VALUES (1,'Office Assistant','Temporary',1),(2,'Gastroeneterologist','Permanent',15),(3,'Consulting Robotic Surgeon','Permanent',23),(4,'General Services Manager','Pernament',14),(5,'Risk Manager','Permanent',23),(6,'IT Services Technician','Temporary',14),(7,'Paedeatric Anaestesiologist','Permanent',3),(8,'Paedeatric Orthopaedic Surgeon','Permanent',3),(9,'IT Support','Temporary',3),(10,'Consultant Teaching Surgeon (General)','Permanent',3),(11,'IT Support Staff','Temporary',2),(12,'IT Support Staff','Temporary',16),(14,'IT Support Staff','Temporary',16),(15,'Nurse','Permanent',14),(16,'Consultant','Temporary',1);
/*!40000 ALTER TABLE `position_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_skills`
--

DROP TABLE IF EXISTS `position_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_skills` (
  `position_details-id` int NOT NULL,
  `skills_details-id` int NOT NULL,
  PRIMARY KEY (`position_details-id`,`skills_details-id`),
  KEY `Skills-ID_idx` (`skills_details-id`),
  CONSTRAINT `Position-ID` FOREIGN KEY (`position_details-id`) REFERENCES `position_details` (`position_id`),
  CONSTRAINT `Skills-ID` FOREIGN KEY (`skills_details-id`) REFERENCES `skills_details` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_skills`
--

LOCK TABLES `position_skills` WRITE;
/*!40000 ALTER TABLE `position_skills` DISABLE KEYS */;
INSERT INTO `position_skills` VALUES (1,3),(5,3),(9,3),(1,4),(5,4),(9,4),(2,5),(9,6),(9,7),(11,7),(8,8),(10,8),(3,9),(10,10),(8,11),(10,11);
/*!40000 ALTER TABLE `position_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills_details`
--

DROP TABLE IF EXISTS `skills_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills_details` (
  `skill_id` int NOT NULL AUTO_INCREMENT,
  `skill_name` text NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills_details`
--

LOCK TABLES `skills_details` WRITE;
/*!40000 ALTER TABLE `skills_details` DISABLE KEYS */;
INSERT INTO `skills_details` VALUES (1,'Nursing'),(2,'Midwifery'),(3,'Administration'),(4,'Microsoft Office'),(5,'Gastroeneterology'),(6,'Technical Support'),(7,'Maintenance'),(8,'Paedeatrics'),(9,'Robotic Surgery'),(10,'General Practice'),(11,'Surgery'),(12,'SQL');
/*!40000 ALTER TABLE `skills_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dornan20385853'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_new_candidate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_new_candidate`(IN cand_firstname TEXT, IN cand_surname TEXT, IN cand_address TEXT, IN cand_telephone INT)
BEGIN
	INSERT INTO candidate_details(candidate_firstname, candidate_surname, candidate_address, candidate_telephone) VALUES(cand_firstname, cand_surname, cand_address, cand_telephone);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_new_hospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_new_hospital`(IN hosp_name TEXT, IN hosp_address text, IN hosp_telno INT)
BEGIN
	INSERT INTO hospital_details(hospital_name, hospital_address, hospital_telephone) VALUES(hosp_name, hosp_address, hosp_telno);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_new_interview` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_new_interview`(IN intvw_date DATE, IN intvw_pos_id INT, IN intvw_cand_id INT, IN hired TINYINT)
BEGIN
	INSERT INTO interview_details(`interview_date`, `interview-position_id`, `interview-candidate_id`, `candidate-hired`) VALUES(intvw_date, intvw_pos_id, intvw_cand_id, hired);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_new_position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_new_position`(IN pos_name TEXT, IN pos_type TEXT, IN hosp_details_id INT)
BEGIN
	INSERT INTO position_details(position_name, position_type, `hospital_details-id`) VALUES(pos_name, pos_type, hosp_details_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_new_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_new_skill`(IN skillname TEXT)
BEGIN
	INSERT INTO skills_details(`skill_name`) VALUES(skillname);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_new_skill_to_candidate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_new_skill_to_candidate`(IN candid INT, IN skillid INT)
BEGIN
	INSERT INTO candidate_skills(`candidate_details-id`, `skills_details-id`) VALUES(candid, skillid);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_new_skill_to_position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_new_skill_to_position`(IN posid INT, IN skillid INT)
BEGIN
	INSERT INTO position_skills(`position_details-id`, `skills_details-id`) VALUES(posid, skillid);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `candidates_interviewed_more_than_once` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `candidates_interviewed_more_than_once`()
BEGIN 
	SELECT candidate_details.candidate_id, candidate_details.candidate_firstname, candidate_details.candidate_surname, COUNT(interview_details.interview_id) AS num_interviews FROM dornan20385853.candidate_details
	JOIN dornan20385853.interview_details
	ON candidate_details.candidate_id = interview_details.`interview-candidate_id`
	GROUP BY candidate_details.candidate_id, candidate_details.candidate_firstname, candidate_details.candidate_surname
    HAVING COUNT(interview_details.interview_id) >= 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `count_candidates_hired` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `count_candidates_hired`(IN pos_id INT)
BEGIN 
	SELECT COUNT(DISTINCT candidate_id) FROM dornan20385853.candidate_details
    JOIN interview_details ON candidate_details.candidate_id = `interview_details`.`interview-candidate_id`
    WHERE `interview_details`.`interview-position_id` = pos_id AND `interview_details`.`candidate-hired` = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `count_nursing_positions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `count_nursing_positions`(IN skill_id INT)
BEGIN 
	SELECT COUNT(DISTINCT position_id) FROM dornan20385853.position_details 
    JOIN position_skills ON position_details.position_id = `position_skills`.`position_details-id`
    WHERE `position_skills`.`position_details-id` = skill_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_candidates_given_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_candidates_given_skills`(IN pos_id TEXT)
BEGIN 
	SELECT candidate_id, candidate_firstname, candidate_surname, candidate_address, candidate_telephone FROM dornan20385853.candidate_details 
    JOIN candidate_skills ON candidate_details.candidate_id = `candidate_skills`.`candidate_details-id`
    JOIN position_skills ON `candidate_skills`.`skills_details-id` = `position_skills`.`skills_details-id`
    WHERE `position_skills`.`position_details-id` = pos_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_candidates_hired` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_candidates_hired`(IN pos_id INT)
BEGIN 
	SELECT candidate_id, candidate_firstname, candidate_surname FROM dornan20385853.candidate_details 
    JOIN interview_details ON candidate_details.candidate_id = `interview_details`.`interview-candidate_id`
    WHERE `interview_details`.`interview-position_id` = pos_id AND `interview_details`.`candidate-hired` = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_candidates_surname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_candidates_surname`(IN surname TEXT)
BEGIN 
	SELECT * FROM dornan20385853.candidate_details WHERE candidate_surname LIKE CONCAT('%',surname,'%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_candidate_by_interview_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_candidate_by_interview_date`(IN intvw_date DATE)
BEGIN 
	SELECT DISTINCT `interview-candidate_id` FROM dornan20385853.interview_details WHERE `interview_date`=intvw_date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_hospital_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_hospital_id`(IN hosp_id int)
BEGIN 
	SELECT * FROM dornan20385853.hospital_details WHERE hospital_id=hosp_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_hospital_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_hospital_name`(IN hosp_name TEXT)
BEGIN 
	SELECT * FROM dornan20385853.hospital_details WHERE hospital_name LIKE CONCAT('%',hosp_name,'%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_interview_by_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_interview_by_date`(IN intvw_date DATE)
BEGIN 
	SELECT * FROM dornan20385853.interview_details WHERE `interview_date`=intvw_date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_positions_by_hospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_positions_by_hospital`(IN hosp_id int)
BEGIN 
	SELECT * FROM dornan20385853.position_details WHERE `hospital_details-id`=hosp_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_positions_given_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_positions_given_skills`(IN skill_id INT)
BEGIN 
	SELECT position_id, position_name, position_type, `hospital_details-id` FROM dornan20385853.position_details 
    JOIN position_skills ON position_details.position_id = `position_skills`.`position_details-id`
    WHERE `position_skills`.`position_details-id` = skill_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-22 15:51:06
