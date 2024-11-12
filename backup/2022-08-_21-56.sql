-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: hms
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `addresss_line1` varchar(45) DEFAULT NULL,
  `address_line2` varchar(45) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `city_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_address_city1_idx` (`city_id`),
  CONSTRAINT `fk_address_city1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'122/ 2 Dekatana','Geta Kanda Road','11456',1),(2,'324/ Katulanda ','Biyagama','1234',2),(3,'342/2 Dompe','Dompe','3422',3),(4,'324/4 Ibbagamuwa','Kurunegala','5456',4),(5,'453/5 Jambugas Road','Malwana','1235',5),(6,'43/6B Kolonnawa','Kolonnawa','3453',6),(7,'435/3 Katulanda','Katulanda','4543',4),(8,'34/2 B','Dekatana','1544',1),(9,'123/3','Piliyandala','3434',7);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_type`
--

DROP TABLE IF EXISTS `blood_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_blood-type_status1_idx` (`status_id`),
  CONSTRAINT `fk_blood-type_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_type`
--

LOCK TABLES `blood_type` WRITE;
/*!40000 ALTER TABLE `blood_type` DISABLE KEYS */;
INSERT INTO `blood_type` VALUES (1,'None',1),(2,'A+',1),(3,'A-',1),(4,'B+',1),(5,'B-',1),(6,'O+',1);
/*!40000 ALTER TABLE `blood_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check_out`
--

DROP TABLE IF EXISTS `check_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `check_out` (
  `idcheck_out` int NOT NULL,
  PRIMARY KEY (`idcheck_out`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_out`
--

LOCK TABLES `check_out` WRITE;
/*!40000 ALTER TABLE `check_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `check_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Dekatana'),(2,'Biyagama'),(3,'Dompe'),(4,'Kurunegala'),(5,'Malwana'),(6,'Kolonnawa'),(7,'Colombo');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_charge`
--

DROP TABLE IF EXISTS `doctor_charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_charge` (
  `code` varchar(20) NOT NULL,
  `charge` double DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`code`),
  KEY `fk_doctor_charge_status1_idx` (`status_id`),
  CONSTRAINT `fk_doctor_charge_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_charge`
--

LOCK TABLES `doctor_charge` WRITE;
/*!40000 ALTER TABLE `doctor_charge` DISABLE KEYS */;
INSERT INTO `doctor_charge` VALUES ('DCC1',1000,1),('DCC2',2500,1);
/*!40000 ALTER TABLE `doctor_charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drug`
--

DROP TABLE IF EXISTS `drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug` (
  `drug_id` varchar(20) NOT NULL,
  `name` varchar(145) DEFAULT NULL,
  `description` text,
  `cost` double DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `mfd` date DEFAULT NULL,
  `exd` date DEFAULT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`drug_id`),
  KEY `fk_drug_status1_idx` (`status_id`),
  CONSTRAINT `fk_drug_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug`
--

LOCK TABLES `drug` WRITE;
/*!40000 ALTER TABLE `drug` DISABLE KEYS */;
INSERT INTO `drug` VALUES ('DrugID1','C Vitamin','good for health',10,962,'2021-08-07','2023-08-22',1),('DrugID2','ventolin','for Difficulty breathing',3000,147,'2022-08-04','2022-08-25',1),('DrugID3','Panadol','for heat',10,972,'2022-08-04','2023-08-13',1);
/*!40000 ALTER TABLE `drug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'Male'),(2,'Female');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grn`
--

DROP TABLE IF EXISTS `grn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grn` (
  `grn_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`grn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grn`
--

LOCK TABLES `grn` WRITE;
/*!40000 ALTER TABLE `grn` DISABLE KEYS */;
/*!40000 ALTER TABLE `grn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grn_item`
--

DROP TABLE IF EXISTS `grn_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grn_item` (
  `grn_iid` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`grn_iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grn_item`
--

LOCK TABLES `grn_item` WRITE;
/*!40000 ALTER TABLE `grn_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `grn_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian`
--

DROP TABLE IF EXISTS `guardian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guardian` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nic` varchar(16) DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian`
--

LOCK TABLES `guardian` WRITE;
/*!40000 ALTER TABLE `guardian` DISABLE KEYS */;
INSERT INTO `guardian` VALUES (1,'198514759910','Sunil Karunanaya','0754514215'),(2,'199634235523','Ravi Gunawardana','0756454645'),(3,'199545925541','Kurunarathna gunasekara','0754542145'),(4,'199523653359','Ranathunga Gunadasa','0752545414');
/*!40000 ALTER TABLE `guardian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `invoice_id` varchar(20) NOT NULL,
  `RID` varchar(20) DEFAULT NULL,
  `patient_nic` varchar(20) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `nettotal` double DEFAULT NULL,
  `payment` double DEFAULT NULL,
  `payment_type_id` int NOT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `FK_RECIEPT_ID_idx` (`RID`),
  KEY `FK_R_ID_idx` (`RID`),
  KEY `FK_NIC_idx` (`patient_nic`),
  KEY `FK_USERTYPE_idx` (`user`),
  KEY `FK_U_TYPE_idx` (`user`),
  KEY `fk_invoice_payment_type1_idx` (`payment_type_id`),
  CONSTRAINT `fk_invoice_payment_type1` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`id`),
  CONSTRAINT `FK_NIC` FOREIGN KEY (`patient_nic`) REFERENCES `patient` (`nic`),
  CONSTRAINT `FK_R_ID` FOREIGN KEY (`RID`) REFERENCES `opd_reception` (`RID`),
  CONSTRAINT `FK_U_TYPE` FOREIGN KEY (`user`) REFERENCES `system_user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES ('IID1','RID1','199923424523','yasiru','2022-07-09 02:45:27',5760,60,5700,6000,1),('IID2','RID3','199534693320','manula','2022-07-11 02:43:34',5500,0,5500,6000,2),('IID3','RID2','200145902514','manula','2022-07-20 09:35:46',2700,200,2500,3000,2);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_drug`
--

DROP TABLE IF EXISTS `invoice_drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_drug` (
  `invoice_d` int NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(20) DEFAULT NULL,
  `drug_id` varchar(20) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `unitt_price` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`invoice_d`),
  KEY `FK_DCODE_idx` (`drug_id`),
  KEY `FK_IID_idx` (`invoice_id`),
  CONSTRAINT `FK_DCODE` FOREIGN KEY (`drug_id`) REFERENCES `drug` (`drug_id`),
  CONSTRAINT `FK_IID` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_drug`
--

LOCK TABLES `invoice_drug` WRITE;
/*!40000 ALTER TABLE `invoice_drug` DISABLE KEYS */;
INSERT INTO `invoice_drug` VALUES (6,'IID1','DrugID2',1,3000,3000),(7,'IID1','DrugID3',25,10,250),(8,'IID1','DrugID1',1,10,10),(9,'IID2','DrugID2',1,3000,3000),(10,'IID3','DrugID1',20,10,200);
/*!40000 ALTER TABLE `invoice_drug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipd`
--

DROP TABLE IF EXISTS `ipd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipd` (
  `patient_id` varchar(20) NOT NULL,
  `room_no` varchar(20) DEFAULT NULL,
  `date_of_adm` date DEFAULT NULL,
  `date_of_dis` date DEFAULT NULL,
  `lab_no` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`patient_id`),
  KEY `fk-lab_no_idx` (`lab_no`),
  KEY `fk_room_no_idx` (`room_no`),
  CONSTRAINT `fk-lab_no` FOREIGN KEY (`lab_no`) REFERENCES `laboratory` (`lab_no`),
  CONSTRAINT `fk_room_no` FOREIGN KEY (`room_no`) REFERENCES `room` (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipd`
--

LOCK TABLES `ipd` WRITE;
/*!40000 ALTER TABLE `ipd` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipd_doc_patient`
--

DROP TABLE IF EXISTS `ipd_doc_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipd_doc_patient` (
  `idipd_doc_patient` int NOT NULL AUTO_INCREMENT,
  `patient_nic` varchar(20) DEFAULT NULL,
  `symptoms` text,
  `doc` varchar(100) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`idipd_doc_patient`),
  KEY `fk_pnic_idx` (`patient_nic`),
  KEY `fk_dusername_idx` (`doc`),
  KEY `fk_ipd_doc_patient_status1_idx` (`status_id`),
  CONSTRAINT `fk_dusername` FOREIGN KEY (`doc`) REFERENCES `system_user` (`username`),
  CONSTRAINT `fk_ipd_doc_patient_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  CONSTRAINT `fk_pnic` FOREIGN KEY (`patient_nic`) REFERENCES `patient` (`nic`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipd_doc_patient`
--

LOCK TABLES `ipd_doc_patient` WRITE;
/*!40000 ALTER TABLE `ipd_doc_patient` DISABLE KEYS */;
INSERT INTO `ipd_doc_patient` VALUES (2,'199923424523','cough\nDifficulty breathing\ncoldness','tharumanthi','2022-07-07 03:24:57',2),(3,'199534693320','Heart case','manula','2022-07-11 01:05:07',2),(4,'200145902514','brain tumor','manula','2022-07-20 09:26:01',2);
/*!40000 ALTER TABLE `ipd_doc_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipd_doctor`
--

DROP TABLE IF EXISTS `ipd_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipd_doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `PARID` varchar(20) NOT NULL,
  `symptoms` varchar(450) DEFAULT NULL,
  `treatment` varchar(20) DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`PARID`),
  KEY `FK_ipd_doctor_system_user` (`doctor`),
  CONSTRAINT `FK_ipd_doctor_system_user` FOREIGN KEY (`doctor`) REFERENCES `system_user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipd_doctor`
--

LOCK TABLES `ipd_doctor` WRITE;
/*!40000 ALTER TABLE `ipd_doctor` DISABLE KEYS */;
INSERT INTO `ipd_doctor` VALUES (1,'PARID1','cough\nDifficulty breathing\ncoldness','PARID1','tharumanthi','2022-07-07 04:05:53'),(2,'PARID2','heart case','PARID2','manula','2022-07-11 01:34:07'),(3,'PARID2','heart case\nuna\nhathiya\n','PARID2','manula','2022-07-11 03:13:32'),(4,'PARID3','brain tumor','PARID3','manula','2022-07-20 09:59:38');
/*!40000 ALTER TABLE `ipd_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipd_invoice`
--

DROP TABLE IF EXISTS `ipd_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipd_invoice` (
  `invoice_id` varchar(20) NOT NULL,
  `PARID` varchar(20) DEFAULT NULL,
  `patient_nic` varchar(20) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `discharge_date` datetime DEFAULT NULL,
  `room_charge` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `nettotal` double DEFAULT NULL,
  `payment` double DEFAULT NULL,
  `payment_type_id` int NOT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `fk_parid_idx` (`PARID`),
  KEY `fk_p_nic_idx` (`patient_nic`),
  KEY `fk_username_idx` (`user`),
  KEY `fk_ipd_invoice_payment_type1_idx` (`payment_type_id`),
  CONSTRAINT `fk_ipd_invoice_payment_type1` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`id`),
  CONSTRAINT `fk_p_nic` FOREIGN KEY (`patient_nic`) REFERENCES `patient` (`nic`),
  CONSTRAINT `fk_parid` FOREIGN KEY (`PARID`) REFERENCES `ipd_p_a_registration` (`PARID`),
  CONSTRAINT `fk_username` FOREIGN KEY (`user`) REFERENCES `system_user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipd_invoice`
--

LOCK TABLES `ipd_invoice` WRITE;
/*!40000 ALTER TABLE `ipd_invoice` DISABLE KEYS */;
INSERT INTO `ipd_invoice` VALUES ('IPDIID1','PARID2','199534693320','manula','2022-07-11 05:17:02',2000,5660,60,5600,6000,2),('IPDIID2','PARID3','200145902514','manula','2022-07-20 10:03:42',2000,2530,30,2500,2500,1);
/*!40000 ALTER TABLE `ipd_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipd_invoice_drug`
--

DROP TABLE IF EXISTS `ipd_invoice_drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipd_invoice_drug` (
  `invoice_d` int NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(20) DEFAULT NULL,
  `drug_id` varchar(20) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `unitt_price` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`invoice_d`),
  KEY `fk_d_code_idx` (`drug_id`),
  KEY `fk_i_i_d_idx` (`invoice_id`),
  CONSTRAINT `fk_d_code` FOREIGN KEY (`drug_id`) REFERENCES `drug` (`drug_id`),
  CONSTRAINT `fk_i_i_d` FOREIGN KEY (`invoice_id`) REFERENCES `ipd_invoice` (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipd_invoice_drug`
--

LOCK TABLES `ipd_invoice_drug` WRITE;
/*!40000 ALTER TABLE `ipd_invoice_drug` DISABLE KEYS */;
INSERT INTO `ipd_invoice_drug` VALUES (3,'IPDIID1','DrugID2',1,3000,3000),(4,'IPDIID1','DrugID1',10,10,100),(5,'IPDIID1','DrugID1',1,10,10),(6,'IPDIID1','DrugID1',1,10,10),(7,'IPDIID1','DrugID1',1,10,10),(8,'IPDIID1','DrugID3',1,10,10),(9,'IPDIID1','DrugID3',1,10,10),(10,'IPDIID1','DrugID3',1,10,10),(11,'IPDIID2','DrugID1',1,10,10),(12,'IPDIID2','DrugID1',1,10,10),(13,'IPDIID2','DrugID1',1,10,10);
/*!40000 ALTER TABLE `ipd_invoice_drug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipd_p_a_registration`
--

DROP TABLE IF EXISTS `ipd_p_a_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipd_p_a_registration` (
  `PARID` varchar(20) NOT NULL,
  `NIC` varchar(20) DEFAULT NULL,
  `doctor_sid` varchar(20) DEFAULT NULL,
  `dcharge` varchar(20) DEFAULT NULL,
  `room_type` varchar(20) DEFAULT NULL,
  `Advance` double DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `guardian_id` int NOT NULL,
  PRIMARY KEY (`PARID`),
  KEY `fk_patient_nic_idx` (`NIC`),
  KEY `fk_doc_username_idx` (`doctor_sid`),
  KEY `fk_room_type_idx` (`room_type`),
  KEY `fk_user_idx` (`user`),
  KEY `fk_d_charge_idx` (`dcharge`),
  KEY `fk_ipd_p_a_registration_guardian1_idx` (`guardian_id`),
  CONSTRAINT `fk_d_charge` FOREIGN KEY (`dcharge`) REFERENCES `doctor_charge` (`code`),
  CONSTRAINT `fk_doc_username` FOREIGN KEY (`doctor_sid`) REFERENCES `stuff` (`sid`),
  CONSTRAINT `fk_enter_username` FOREIGN KEY (`user`) REFERENCES `system_user` (`username`),
  CONSTRAINT `fk_ipd_p_a_registration_guardian1` FOREIGN KEY (`guardian_id`) REFERENCES `guardian` (`id`),
  CONSTRAINT `fk_patient_nic` FOREIGN KEY (`NIC`) REFERENCES `patient` (`nic`),
  CONSTRAINT `fk_room_type` FOREIGN KEY (`room_type`) REFERENCES `room` (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipd_p_a_registration`
--

LOCK TABLES `ipd_p_a_registration` WRITE;
/*!40000 ALTER TABLE `ipd_p_a_registration` DISABLE KEYS */;
INSERT INTO `ipd_p_a_registration` VALUES ('PARID1','199923424523','SID2','DCC2','RTID1',5000,'wenura','2022-07-07 03:46:06',0,1),('PARID2','199534693320','SID1','DCC2','RTID1',2000,'manula','2022-07-11 01:11:38',0,2),('PARID3','200145902514','SID1','DCC2','RTID1',2000,'manula','2022-07-20 09:39:45',0,3),('PARID4','200145902514','SID1','DCC2','RTID1',2500,'manula','2022-07-20 09:55:14',3,4);
/*!40000 ALTER TABLE `ipd_p_a_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipd_treatment`
--

DROP TABLE IF EXISTS `ipd_treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipd_treatment` (
  `IPDTID` int NOT NULL,
  `PARID` varchar(20) NOT NULL,
  `treatment` varchar(20) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `times` varchar(20) DEFAULT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`IPDTID`,`PARID`),
  KEY `fk_p_a_rid_idx` (`PARID`),
  KEY `fk-drug_id_idx` (`treatment`),
  KEY `fk_treatment_times_idx` (`times`),
  KEY `fk_ipd_treatment_status1_idx` (`status_id`),
  CONSTRAINT `fk-drug_id` FOREIGN KEY (`treatment`) REFERENCES `drug` (`drug_id`),
  CONSTRAINT `fk_ipd_treatment_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  CONSTRAINT `fk_p_a_rid` FOREIGN KEY (`PARID`) REFERENCES `ipd_p_a_registration` (`PARID`),
  CONSTRAINT `fk_treatment_times` FOREIGN KEY (`times`) REFERENCES `treatment_times` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipd_treatment`
--

LOCK TABLES `ipd_treatment` WRITE;
/*!40000 ALTER TABLE `ipd_treatment` DISABLE KEYS */;
INSERT INTO `ipd_treatment` VALUES (1,'PARID1','DrugID1',1,'TCID1',1),(2,'PARID2','DrugID2',1,'TCID1',2),(3,'PARID2','DrugID1',10,'TCID1',2),(4,'PARID2','DrugID1',1,'TCID1',2),(5,'PARID2','DrugID1',1,'TCID2',2),(6,'PARID2','DrugID1',1,'TCID3',2),(7,'PARID2','DrugID3',1,'TCID1',2),(8,'PARID2','DrugID3',1,'TCID2',2),(9,'PARID2','DrugID3',1,'TCID3',2),(10,'PARID3','DrugID1',1,'TCID1',2),(11,'PARID3','DrugID1',1,'TCID3',2),(12,'PARID3','DrugID1',1,'TCID2',2);
/*!40000 ALTER TABLE `ipd_treatment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratory`
--

DROP TABLE IF EXISTS `laboratory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratory` (
  `lab_no` varchar(20) NOT NULL,
  `patient_id` varchar(20) DEFAULT NULL,
  `doctor_id` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  PRIMARY KEY (`lab_no`),
  KEY `FK_patient_id_idx` (`patient_id`),
  KEY `fk_doctor_id_idx` (`doctor_id`),
  CONSTRAINT `fk_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`nic`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratory`
--

LOCK TABLES `laboratory` WRITE;
/*!40000 ALTER TABLE `laboratory` DISABLE KEYS */;
/*!40000 ALTER TABLE `laboratory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opd_doctor`
--

DROP TABLE IF EXISTS `opd_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opd_doctor` (
  `Reciept_id` varchar(20) NOT NULL,
  `symptoms` text,
  `treatment` varchar(20) NOT NULL DEFAULT '',
  `doctor` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`Reciept_id`),
  KEY `fk_doctor_idx` (`doctor`),
  KEY `fk_opd_doctor_treatment1_idx` (`treatment`) USING BTREE,
  CONSTRAINT `fk_doctor` FOREIGN KEY (`doctor`) REFERENCES `system_user` (`username`),
  CONSTRAINT `fk_opd_doctor_treatment1` FOREIGN KEY (`treatment`) REFERENCES `treatment` (`Receipt_id`),
  CONSTRAINT `fk_Reciept_id` FOREIGN KEY (`Reciept_id`) REFERENCES `opd_reception` (`RID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opd_doctor`
--

LOCK TABLES `opd_doctor` WRITE;
/*!40000 ALTER TABLE `opd_doctor` DISABLE KEYS */;
INSERT INTO `opd_doctor` VALUES ('RID1','cough\nDifficulty breathing\ncoldness','RID1','tharumanthi','2022-07-07 03:19:42'),('RID2','brain tumor','RID2','manula','2022-07-20 09:27:09'),('RID3','Heart Case','RID3','manula','2022-07-11 00:58:06');
/*!40000 ALTER TABLE `opd_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opd_reception`
--

DROP TABLE IF EXISTS `opd_reception`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opd_reception` (
  `RID` varchar(20) NOT NULL,
  `patient_id` varchar(20) NOT NULL,
  `doctor_id` varchar(20) NOT NULL,
  `doctor_charge` varchar(20) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `stat` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`RID`),
  KEY `fk_patient_id_idx` (`patient_id`),
  KEY `fk_doctor_id_idx` (`doctor_id`),
  KEY `fk_dcharge_idx` (`doctor_charge`),
  KEY `fk_user_idx` (`user`),
  CONSTRAINT `fk_dcharge` FOREIGN KEY (`doctor_charge`) REFERENCES `doctor_charge` (`code`),
  CONSTRAINT `fk_did` FOREIGN KEY (`doctor_id`) REFERENCES `stuff` (`sid`),
  CONSTRAINT `fk_pid` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`nic`),
  CONSTRAINT `fk_user` FOREIGN KEY (`user`) REFERENCES `system_user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opd_reception`
--

LOCK TABLES `opd_reception` WRITE;
/*!40000 ALTER TABLE `opd_reception` DISABLE KEYS */;
INSERT INTO `opd_reception` VALUES ('RID1','199923424523','SID2','DCC2','2022-07-07 01:29:30','wenura',0),('RID2','200145902514','SID2','DCC2','2022-07-07 02:05:48','wenura',0),('RID3','199534693320','SID2','DCC2','2022-07-11 00:53:51','manula',0),('RID4','200145902514','SID2','DCC2','2022-07-20 09:20:42','manula',3);
/*!40000 ALTER TABLE `opd_reception` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `nic` varchar(20) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `fname` varchar(65) DEFAULT NULL,
  `lname` varchar(65) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address_id` int NOT NULL,
  `gender_id` int NOT NULL,
  `blood-type_id` int NOT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`nic`),
  KEY `fk_patient_address1_idx` (`address_id`),
  KEY `fk_patient_gender1_idx` (`gender_id`),
  KEY `fk_patient_blood-type1_idx` (`blood-type_id`),
  KEY `fk_patient_status1_idx` (`status_id`),
  CONSTRAINT `fk_patient_address1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `fk_patient_blood-type1` FOREIGN KEY (`blood-type_id`) REFERENCES `blood_type` (`id`),
  CONSTRAINT `fk_patient_gender1` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  CONSTRAINT `fk_patient_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('199534693320','0754353443','Lahiru','Perera','1995-07-14',9,1,1,1),('199923424523','0754201545','Poorna','Weerakoon','1999-02-11',3,1,6,1),('200145902514','0754214245','Pasindu','Madushan','2001-03-14',2,1,2,1);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_type`
--

DROP TABLE IF EXISTS `payment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_type`
--

LOCK TABLES `payment_type` WRITE;
/*!40000 ALTER TABLE `payment_type` DISABLE KEYS */;
INSERT INTO `payment_type` VALUES (1,'Card'),(2,'Cash');
/*!40000 ALTER TABLE `payment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_no` varchar(20) NOT NULL,
  `facilitie` varchar(450) DEFAULT NULL,
  `room_type` varchar(45) DEFAULT NULL,
  `dayprice` double DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`room_no`),
  KEY `fk_room_status1_idx` (`status_id`),
  CONSTRAINT `fk_room_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES ('RTID1','AC\nFull HD TV','first class',2000,50,1),('RTID2','Ac\nTv','second class',1500,20,1);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_type`
--

DROP TABLE IF EXISTS `staff_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_type`
--

LOCK TABLES `staff_type` WRITE;
/*!40000 ALTER TABLE `staff_type` DISABLE KEYS */;
INSERT INTO `staff_type` VALUES (1,'Super Admin'),(2,'Doctor'),(3,'Receptionist'),(4,'pharmacist'),(5,'cashier'),(6,'pharmacist and cashier'),(7,'Admin'),(8,'nurse');
/*!40000 ALTER TABLE `staff_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Active'),(2,'Inactive');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuff`
--

DROP TABLE IF EXISTS `stuff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stuff` (
  `sid` varchar(20) NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender_id` int NOT NULL,
  `address_id` int NOT NULL,
  `qualification` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `status_id` int NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `fk_stuff_gender1_idx` (`gender_id`),
  KEY `fk_stuff_address1_idx` (`address_id`),
  KEY `fk_stuff_status1_idx` (`status_id`),
  CONSTRAINT `fk_stuff_address1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `fk_stuff_gender1` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  CONSTRAINT `fk_stuff_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuff`
--

LOCK TABLES `stuff` WRITE;
/*!40000 ALTER TABLE `stuff` DISABLE KEYS */;
INSERT INTO `stuff` VALUES ('SID1','Manula','Kavishka','0752452541','2002-07-01',1,1,'Phd',1),('SID2','Tharushi','Piumanthi','0754215454','2003-01-25',2,4,'PHD',1),('SID3','Wenura','Patali','0787524684','2001-03-14',1,5,'Advance Lavel',1),('SID4','Nipuni','Gunawardhana','0754245255','1998-07-11',2,6,'Diploma',1),('SID5','Yasiru','Menuwan','0752545643','2001-07-07',1,7,'Advance Lavel',1),('SID6','Gayan','pradip','0754568752','2001-07-17',1,8,'Diploma',1);
/*!40000 ALTER TABLE `stuff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stufftypeimg`
--

DROP TABLE IF EXISTS `stufftypeimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stufftypeimg` (
  `id` int NOT NULL,
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK__staff_type` FOREIGN KEY (`id`) REFERENCES `staff_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stufftypeimg`
--

LOCK TABLES `stufftypeimg` WRITE;
/*!40000 ALTER TABLE `stufftypeimg` DISABLE KEYS */;
INSERT INTO `stufftypeimg` VALUES (1,'C:\\Users\\User\\Desktop\\HMS Final Project\\HMS\\Image\\mad.png'),(2,'C:\\Users\\User\\Desktop\\HMS Final Project\\HMS\\Image\\doc.png'),(3,'C:\\Users\\User\\Desktop\\HMS Final Project\\HMS\\Image\\rec.png'),(4,'C:\\Users\\User\\Desktop\\HMS Final Project\\HMS\\Image\\ph.png'),(5,'C:\\Users\\User\\Desktop\\HMS Final Project\\HMS\\Image\\cas.png'),(6,'C:\\Users\\User\\Desktop\\HMS Final Project\\HMS\\Image\\def.png'),(7,'C:\\Users\\User\\Desktop\\HMS Final Project\\HMS\\Image\\ad.png'),(8,'C:\\Users\\User\\Desktop\\HMS Final Project\\HMS\\Image\\nur.png');
/*!40000 ALTER TABLE `stufftypeimg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_user`
--

DROP TABLE IF EXISTS `system_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_user` (
  `username` varchar(100) NOT NULL,
  `sid` varchar(20) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `staff_type_id` int NOT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`username`),
  KEY `fk_sid_idx` (`sid`),
  KEY `fk_system_user_status1_idx` (`status_id`),
  KEY `fk_system_user_staff_type1_idx` (`staff_type_id`),
  CONSTRAINT `fk_sid` FOREIGN KEY (`sid`) REFERENCES `stuff` (`sid`),
  CONSTRAINT `fk_system_user_staff_type1` FOREIGN KEY (`staff_type_id`) REFERENCES `staff_type` (`id`),
  CONSTRAINT `fk_system_user_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user`
--

LOCK TABLES `system_user` WRITE;
/*!40000 ALTER TABLE `system_user` DISABLE KEYS */;
INSERT INTO `system_user` VALUES ('drmanula','SID1','81dc9bdb52d04dc20036dbd8313ed055',2,1),('gayan','SID6','81dc9bdb52d04dc20036dbd8313ed055',6,1),('kavishka','SID1','81dc9bdb52d04dc20036dbd8313ed055',7,1),('manula','SID1','81dc9bdb52d04dc20036dbd8313ed055',1,1),('nipuni','SID4','81dc9bdb52d04dc20036dbd8313ed055',4,1),('tharumanthi','SID2','81dc9bdb52d04dc20036dbd8313ed055',2,1),('tharushi','SID2','81dc9bdb52d04dc20036dbd8313ed055',8,1),('wenura','SID3','81dc9bdb52d04dc20036dbd8313ed055',3,1),('yasiru','SID5','81dc9bdb52d04dc20036dbd8313ed055',5,1);
/*!40000 ALTER TABLE `system_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment`
--

DROP TABLE IF EXISTS `treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatment` (
  `TID` int NOT NULL,
  `Receipt_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `treatment` varchar(20) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`TID`,`Receipt_id`),
  KEY `fk_tm_idx` (`treatment`),
  KEY `fk_treatment_status1_idx` (`status_id`),
  KEY `fk_rid` (`Receipt_id`),
  CONSTRAINT `fk_rid` FOREIGN KEY (`Receipt_id`) REFERENCES `opd_reception` (`RID`),
  CONSTRAINT `fk_tm` FOREIGN KEY (`treatment`) REFERENCES `drug` (`drug_id`),
  CONSTRAINT `fk_treatment_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment`
--

LOCK TABLES `treatment` WRITE;
/*!40000 ALTER TABLE `treatment` DISABLE KEYS */;
INSERT INTO `treatment` VALUES (1,'RID1','DrugID2',1,2),(2,'RID1','DrugID3',25,2),(3,'RID1','DrugID1',1,2),(4,'RID3','DrugID2',1,2),(5,'RID2','DrugID1',20,2);
/*!40000 ALTER TABLE `treatment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment_times`
--

DROP TABLE IF EXISTS `treatment_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatment_times` (
  `code` varchar(20) NOT NULL,
  `time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment_times`
--

LOCK TABLES `treatment_times` WRITE;
/*!40000 ALTER TABLE `treatment_times` DISABLE KEYS */;
INSERT INTO `treatment_times` VALUES ('TCID1','morning'),('TCID2','afternoon'),('TCID3','night'),('TCID4','for 2 hours'),('TCID5','3 Times');
/*!40000 ALTER TABLE `treatment_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertype` (
  `code` varchar(10) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertype`
--

LOCK TABLES `usertype` WRITE;
/*!40000 ALTER TABLE `usertype` DISABLE KEYS */;
INSERT INTO `usertype` VALUES ('9','Sub Admin');
/*!40000 ALTER TABLE `usertype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-09 21:56:11
