-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: farmchalo
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `block` varchar(45) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `postal_code` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `latitudes` varchar(255) DEFAULT NULL,
  `longitudes` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'L-84 Nandan Vihar','Patia','Patia','adas','Bhubaneswar','Odisha','India',751024,27,'','','1','2018-08-13 00:00:00');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisement`
--

DROP TABLE IF EXISTS `advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advertisement_name` varchar(45) DEFAULT NULL,
  `advertisement_for` varchar(45) DEFAULT NULL,
  `advertisement_type` int(11) DEFAULT NULL,
  `advertisement_desc` varchar(45) DEFAULT NULL,
  `advertisement_image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisement`
--

LOCK TABLES `advertisement` WRITE;
/*!40000 ALTER TABLE `advertisement` DISABLE KEYS */;
INSERT INTO `advertisement` VALUES (1,'aaa','Product',4,' aaa','maxresdefault.jpg');
/*!40000 ALTER TABLE `advertisement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agriplan_activities`
--

DROP TABLE IF EXISTS `agriplan_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agriplan_activities` (
  `activity_id` int(11) NOT NULL COMMENT 'Unique identification id of an activity',
  `activity_name` varchar(100) NOT NULL COMMENT 'Name of the activity',
  `activity_description` varchar(4000) NOT NULL DEFAULT 'No Description Found' COMMENT 'Description of the activity',
  `created_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agriplan_activities`
--

LOCK TABLES `agriplan_activities` WRITE;
/*!40000 ALTER TABLE `agriplan_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `agriplan_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agriplan_crop_activities`
--

DROP TABLE IF EXISTS `agriplan_crop_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agriplan_crop_activities` (
  `crop_activity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique Id',
  `crop_id` int(11) NOT NULL COMMENT 'Unique identification id of crop',
  `activity_id` int(11) NOT NULL COMMENT 'Unique identification id of Activity',
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`crop_activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agriplan_crop_activities`
--

LOCK TABLES `agriplan_crop_activities` WRITE;
/*!40000 ALTER TABLE `agriplan_crop_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `agriplan_crop_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agriplan_crop_activities_timeline`
--

DROP TABLE IF EXISTS `agriplan_crop_activities_timeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agriplan_crop_activities_timeline` (
  `timeline_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique Id and primary key',
  `crop_activity_id` int(11) NOT NULL COMMENT 'Foreign key referenced to crop_activities table',
  `variety_id` int(11) NOT NULL COMMENT 'Foreign key from table variety duration',
  `activity_Id` int(11) NOT NULL COMMENT 'Serial no of activity scheduled',
  `days_before_planting` int(5) NOT NULL COMMENT 'Number of days before the farmer plant the crop',
  `days_after_planting` int(5) NOT NULL COMMENT 'Number of days after the farmer plant the crop',
  `activity_duration` int(5) NOT NULL COMMENT 'duration of each activity',
  `created_by` int(11) DEFAULT NULL,
  `cropid` int(45) DEFAULT '0',
  `status` int(3) DEFAULT NULL COMMENT 'Status of the Crop Activities Timeline',
  `created_at` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`timeline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agriplan_crop_activities_timeline`
--

LOCK TABLES `agriplan_crop_activities_timeline` WRITE;
/*!40000 ALTER TABLE `agriplan_crop_activities_timeline` DISABLE KEYS */;
/*!40000 ALTER TABLE `agriplan_crop_activities_timeline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agriplan_crop_variety`
--

DROP TABLE IF EXISTS `agriplan_crop_variety`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agriplan_crop_variety` (
  `variety_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'crop variety Id',
  `crop_id` int(11) NOT NULL COMMENT 'link to crop_list table with crop_id primary key',
  `variety_name` varchar(100) NOT NULL COMMENT 'Variety Name',
  `duration` int(11) NOT NULL COMMENT 'Duration',
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`variety_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agriplan_crop_variety`
--

LOCK TABLES `agriplan_crop_variety` WRITE;
/*!40000 ALTER TABLE `agriplan_crop_variety` DISABLE KEYS */;
/*!40000 ALTER TABLE `agriplan_crop_variety` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agriplan_need`
--

DROP TABLE IF EXISTS `agriplan_need`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agriplan_need` (
  `need_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Activity need id',
  `need_name` varchar(100) NOT NULL COMMENT 'Need Name',
  `activity_id` int(11) NOT NULL COMMENT 'Unique identification id of activity',
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`need_id`),
  KEY `Activity_Id` (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agriplan_need`
--

LOCK TABLES `agriplan_need` WRITE;
/*!40000 ALTER TABLE `agriplan_need` DISABLE KEYS */;
/*!40000 ALTER TABLE `agriplan_need` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agriplan_services`
--

DROP TABLE IF EXISTS `agriplan_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agriplan_services` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Service Id',
  `need_id` int(11) NOT NULL COMMENT 'Need Id mapped to activity_need',
  `type` int(11) DEFAULT NULL,
  `product_or_service_id` int(11) DEFAULT NULL,
  `Unit` varchar(45) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `advance` decimal(10,0) DEFAULT NULL,
  `mrp` decimal(10,0) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agriplan_services`
--

LOCK TABLES `agriplan_services` WRITE;
/*!40000 ALTER TABLE `agriplan_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `agriplan_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agriseed_crop_logic`
--

DROP TABLE IF EXISTS `agriseed_crop_logic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agriseed_crop_logic` (
  `crop_logic_id` int(11) NOT NULL AUTO_INCREMENT,
  `soil_type_id` int(11) DEFAULT NULL,
  `land_type` varchar(45) DEFAULT NULL,
  `ph_value` varchar(45) DEFAULT NULL,
  `crop_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_date_time` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `updated_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`crop_logic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agriseed_crop_logic`
--

LOCK TABLES `agriseed_crop_logic` WRITE;
/*!40000 ALTER TABLE `agriseed_crop_logic` DISABLE KEYS */;
/*!40000 ALTER TABLE `agriseed_crop_logic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agriseed_recommendation`
--

DROP TABLE IF EXISTS `agriseed_recommendation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agriseed_recommendation` (
  `recommendation_id` int(11) NOT NULL AUTO_INCREMENT,
  `farmer_id` int(11) DEFAULT NULL,
  `land_id` int(11) DEFAULT NULL,
  `soil_type_id` int(11) DEFAULT NULL,
  `season` varchar(45) DEFAULT NULL,
  `ph_quantitative_value` int(11) DEFAULT NULL,
  `ph_qualitative_value` varchar(45) DEFAULT NULL,
  `crop_name` varchar(45) DEFAULT NULL,
  `showing_date` datetime DEFAULT NULL,
  `duration_days` int(11) DEFAULT NULL,
  `me_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_date_time` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `updated_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`recommendation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agriseed_recommendation`
--

LOCK TABLES `agriseed_recommendation` WRITE;
/*!40000 ALTER TABLE `agriseed_recommendation` DISABLE KEYS */;
/*!40000 ALTER TABLE `agriseed_recommendation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agriseed_soil_type`
--

DROP TABLE IF EXISTS `agriseed_soil_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agriseed_soil_type` (
  `soil_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `soil_type` varchar(200) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`soil_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agriseed_soil_type`
--

LOCK TABLES `agriseed_soil_type` WRITE;
/*!40000 ALTER TABLE `agriseed_soil_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `agriseed_soil_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_facilitator`
--

DROP TABLE IF EXISTS `business_facilitator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_facilitator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_name` varchar(45) DEFAULT NULL,
  `area_of_intrest` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `block` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `noofconsumer` varchar(45) DEFAULT NULL,
  `noofmicroentreprenure` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_facilitator`
--

LOCK TABLES `business_facilitator` WRITE;
/*!40000 ALTER TABLE `business_facilitator` DISABLE KEYS */;
INSERT INTO `business_facilitator` VALUES (1,'eKutirFairFood','asdsa','manas.rana@ekutirsb.com11','8456890025','dsad',1,2,2,'dasd','751024','paradeep','22','22',0,0,'2018-07-17 16:14:30','manas','manas',NULL,NULL),(2,'eKutirFairFood','22','man349as.rana@ekutirsb.com','8456890025','123456',1,2,1,'2asdsa','751024','paradeep','11','33',0,0,'2018-07-19 18:18:40','manas','manas',NULL,NULL);
/*!40000 ALTER TABLE `business_facilitator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_focus`
--

DROP TABLE IF EXISTS `business_focus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_focus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_focus_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_focus`
--

LOCK TABLES `business_focus` WRITE;
/*!40000 ALTER TABLE `business_focus` DISABLE KEYS */;
INSERT INTO `business_focus` VALUES (1,'Sanitation'),(2,'Agriculture'),(3,'Hygiene');
/*!40000 ALTER TABLE `business_focus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_description` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `img_url` mediumblob,
  `low_score` int(3) DEFAULT NULL,
  `medium_score` int(3) DEFAULT NULL,
  `high_score` int(3) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_master`
--

DROP TABLE IF EXISTS `country_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_master` (
  `id` int(11) NOT NULL,
  `country_name` varchar(45) NOT NULL,
  `country_code` varchar(45) NOT NULL,
  `country_currency` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`country_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_master`
--

LOCK TABLES `country_master` WRITE;
/*!40000 ALTER TABLE `country_master` DISABLE KEYS */;
INSERT INTO `country_master` VALUES (1,'India','dasd','Rupee'),(2,'Nepal','asaa','Rupee'),(3,'Haiti','aaa','Gourde'),(4,'South Africa','as','Rand');
/*!40000 ALTER TABLE `country_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crop`
--

DROP TABLE IF EXISTS `crop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crop` (
  `crop_Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique Id and serial No of the Crop',
  `crop_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `crop_icon_url` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Icon of the Crop',
  `created_by` varchar(20) DEFAULT NULL,
  `status` int(3) NOT NULL COMMENT 'Current status of the crop',
  PRIMARY KEY (`crop_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crop`
--

LOCK TABLES `crop` WRITE;
/*!40000 ALTER TABLE `crop` DISABLE KEYS */;
/*!40000 ALTER TABLE `crop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district_master`
--

DROP TABLE IF EXISTS `district_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district_master` (
  `id` int(11) NOT NULL,
  `district_name` varchar(45) NOT NULL,
  `district_code` varchar(45) DEFAULT NULL,
  `state_code` int(11) NOT NULL,
  `country_code` int(11) NOT NULL,
  PRIMARY KEY (`id`,`district_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district_master`
--

LOCK TABLES `district_master` WRITE;
/*!40000 ALTER TABLE `district_master` DISABLE KEYS */;
INSERT INTO `district_master` VALUES (1,'adas','1',2,3),(2,'asd','1',2,3);
/*!40000 ALTER TABLE `district_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES (1,'ananta.ojha@ekutirsb.com','2018-06-15 19:23:19'),(2,'kiran.rs@ekutirsb.com','2018-06-15 19:58:50'),(3,'mrrana876@gmail.com','2018-06-15 20:11:30'),(4,'kiran.rs@ekutirsb.com','2018-06-15 20:26:02'),(5,'ananta.ojha@yahoo.com','2018-06-15 20:28:23');
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license`
--

DROP TABLE IF EXISTS `license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `license` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) DEFAULT NULL,
  `license_type` varchar(45) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `expiring_date` date DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `paid` int(1) DEFAULT '0',
  `license_number` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `period` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license`
--

LOCK TABLES `license` WRITE;
/*!40000 ALTER TABLE `license` DISABLE KEYS */;
INSERT INTO `license` VALUES (1,'11','1',NULL,NULL,'800.0',1,'FACH9226482',NULL,NULL,0,'monthly','basic'),(2,'12','1',NULL,NULL,'800.0',1,'FACH4873419',NULL,NULL,0,'quaterly','pro'),(5,'15','1',NULL,NULL,'800.0',1,'FACH4664741',NULL,NULL,0,'monthly','basic'),(6,'19','1',NULL,NULL,'800.0',1,'FACH5374170',NULL,NULL,0,'yearly','basic'),(7,'20','1',NULL,NULL,'800.0',1,'FACH3171339',NULL,NULL,0,'yearly','basic'),(8,'21','1',NULL,NULL,'2100.0',0,'FACH1711454',NULL,NULL,0,'monthly','pro'),(9,'23','1',NULL,NULL,'300.0',0,'FACH81697',NULL,NULL,0,'0','0'),(12,'27','1',NULL,NULL,'0.0',0,'FACH776863',NULL,NULL,0,'yearly','basic'),(13,'28','1',NULL,NULL,'0.0',0,'FACH6372404',NULL,NULL,0,'yearly','basic'),(14,'15','2',NULL,NULL,'22',1,'FACH9226482',NULL,NULL,0,NULL,NULL),(15,'15','7',NULL,NULL,'3999.0',0,'SMFA266103',NULL,NULL,0,'yearly','basic'),(16,'15','5',NULL,NULL,'222.0',0,'SMFA389384',NULL,NULL,0,'yearly','pro'),(17,'15','6',NULL,NULL,'2112.0',0,'SMFA771405',NULL,NULL,0,'monthly','basic'),(18,'15','8',NULL,NULL,'12.0',0,'SMFA707180',NULL,NULL,0,'monthly','basic');
/*!40000 ALTER TABLE `license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_type`
--

DROP TABLE IF EXISTS `license_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `license_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role` int(11) DEFAULT NULL,
  `license_for` varchar(45) DEFAULT NULL,
  `license_type` varchar(45) DEFAULT NULL,
  `frequency` varchar(45) DEFAULT NULL,
  `price` double(10,5) DEFAULT NULL,
  `features1` varchar(45) DEFAULT NULL,
  `features2` varchar(45) DEFAULT NULL,
  `features3` varchar(45) DEFAULT NULL,
  `features4` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_type`
--

LOCK TABLES `license_type` WRITE;
/*!40000 ALTER TABLE `license_type` DISABLE KEYS */;
INSERT INTO `license_type` VALUES (1,2,'masterfranchise','basic','yearly',5000.00000,'sas','asc','cas','csac'),(2,2,'masterfranchise','pro','monthly',22100.00000,'dasd','asd','dasd','asd'),(5,2,'plan','pro','yearly',222.00000,'sada','sdasdas','as','dasd'),(6,2,'seed','basic','monthly',2112.00000,'asdsad','asdas','dasd','asdas'),(7,2,'score','basic','yearly',3999.00000,'A','B','C','D'),(8,2,'protect','basic','monthly',12.00000,'dd','cc','bb','aa'),(9,2,'nurture','basic','yearly',123.00000,'dd','ss','aa','qq');
/*!40000 ALTER TABLE `license_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `long_option`
--

DROP TABLE IF EXISTS `long_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `long_option` (
  `long_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `long_question_id` int(11) DEFAULT NULL,
  `long_option_description` varchar(200) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `long_option_weightage` int(11) DEFAULT NULL,
  `long_option_mapping_num` int(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`long_option_id`),
  KEY `long_idx` (`long_question_id`),
  CONSTRAINT `long_question_id` FOREIGN KEY (`long_question_id`) REFERENCES `long_question` (`long_question_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `long_option`
--

LOCK TABLES `long_option` WRITE;
/*!40000 ALTER TABLE `long_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `long_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `long_question`
--

DROP TABLE IF EXISTS `long_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `long_question` (
  `long_question_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `long_quesion_description` varchar(200) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`long_question_id`),
  KEY `FK_category_id_idx` (`category_id`),
  CONSTRAINT `FK_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `long_question`
--

LOCK TABLES `long_question` WRITE;
/*!40000 ALTER TABLE `long_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `long_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(45) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `user_type` int(1) DEFAULT '0',
  `userId` int(11) DEFAULT '0',
  `status` int(1) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'paradeeps','asasa',3,0,0,NULL),(2,'paradeep','dasdas',2,15,0,NULL),(3,'sasas','asasasas',3,15,0,'2018-07-20 00:00:00'),(4,'ssssssss','aaaaaaaaaaaa',3,15,0,'2018-07-20 00:00:00'),(5,'ssssssss','aaaaaaaaaaaa',5,15,0,'2018-07-20 00:00:00'),(6,'xzXzX','zxqwqqqqzxc',3,15,0,'2018-07-20 00:00:00'),(7,'','',0,15,0,'2018-08-18 00:00:00');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_superadmin`
--

DROP TABLE IF EXISTS `message_superadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_superadmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(45) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `user_type` int(1) DEFAULT '0',
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_superadmin`
--

LOCK TABLES `message_superadmin` WRITE;
/*!40000 ALTER TABLE `message_superadmin` DISABLE KEYS */;
INSERT INTO `message_superadmin` VALUES (1,'asdasdasdas','manas',0,'2018-07-13 00:00:00'),(2,'asdadadasdasd','sa',0,'2018-07-13 00:00:00'),(3,'asdsasadsadsadasdas','sasas',0,'2018-07-13 00:00:00'),(4,'asdasdasd','sasas',0,'2018-07-13 00:00:00'),(5,'asdasdasssssss','asdasdsadsadsa',0,'2018-07-13 00:00:00'),(6,'paradeep','dasd',0,'2018-07-13 00:00:00'),(7,'paradeeps','asasa',0,'2018-07-13 00:00:00'),(8,'E','cascsac',2,'2018-07-13 00:00:00'),(9,'D','asas',2,'2018-07-13 00:00:00'),(10,'C','asassasa',2,'2018-07-13 00:00:00'),(11,'manas','asxascascascascacas',4,'2018-07-20 18:12:38'),(12,'B','sadsa',2,'2018-07-20 18:12:58'),(13,'A','At W3Schools you will find a complete Bootstrap reference of all CSS classes, Components, and JavaScript plugins - all with \"Try it Yourself\" examples:',2,'2018-07-20 18:13:07'),(14,'A','At W3Schools you will find a complete Bootstrap reference of all CSS classes, Components, and JavaScript plugins - all with \"Try it Yourself\" examples:',3,'2018-07-20 18:13:15');
/*!40000 ALTER TABLE `message_superadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mf_m_tbl`
--

DROP TABLE IF EXISTS `mf_m_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mf_m_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_name` varchar(45) DEFAULT NULL,
  `org_type` varchar(45) DEFAULT NULL,
  `org_country` int(11) DEFAULT NULL,
  `org_state` int(11) DEFAULT NULL,
  `org_pincode` varchar(45) DEFAULT NULL,
  `org_address` varchar(45) DEFAULT NULL,
  `org_email` varchar(45) DEFAULT NULL,
  `org_url` varchar(45) DEFAULT NULL,
  `business_type` varchar(45) DEFAULT NULL,
  `total_turnover` varchar(45) DEFAULT NULL,
  `no_of_employee` varchar(45) DEFAULT NULL,
  `business_focus` varchar(45) DEFAULT NULL,
  `founder_detail` varchar(200) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `license_no` varchar(45) DEFAULT NULL,
  `license_type` varchar(45) DEFAULT NULL,
  `license_period` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `defaultpassword` varchar(45) DEFAULT NULL,
  `newpassword` varchar(45) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `licenstatus` varchar(45) DEFAULT NULL,
  `application` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mf_m_tbl`
--

LOCK TABLES `mf_m_tbl` WRITE;
/*!40000 ALTER TABLE `mf_m_tbl` DISABLE KEYS */;
INSERT INTO `mf_m_tbl` VALUES (1,'eKutirFairFood','profit',1,1,'751024','','manas.rana@ekutirsb.com','asas','commercial','22','oneToTen','Sanitation','sadasd','manas manas','madhu.gill@ekutirsb.com','08456890025','FACH9226482','basic','monthly',NULL,NULL,NULL,NULL,NULL,0,NULL,'Haat'),(2,'eKutirFairFood','profit',1,1,'751024','','manas.rana@ekutirsb.com','bdgfd','commercial','44','oneToTen','Agriculture','feerr','manas manas','manasghdg.rana@ekutirsb.com','08456890025','FACH4873419','pro','quaterly',NULL,NULL,NULL,NULL,NULL,0,NULL,'Haat'),(3,'eKutirFairFood','non-profit',1,1,'751024','','manas.rana@ekutirsb.com','dasd','commercial','22','oneToTen','Agriculture','dsadsada','manas Prasad manas','manas.rana@ekutirsb.com','08456890025','FACH3307816','pro','yearly',NULL,NULL,NULL,NULL,NULL,0,NULL,'Kheyti'),(4,'madhubusiness','profit',1,1,'110017','','madhu.gill@ekutirsb.com','xasxsax','commercial','22','oneToTen','Sanitation','xasxasx','manas Prasad manas','manas.rana@ekutirsb.com','8456890025','FACH4664741','basic','monthly',NULL,NULL,NULL,NULL,NULL,0,NULL,'Kheyti'),(5,'madhubusiness','profit',1,1,'110017','','madhu.gill@ekutirsb.com','xasxsax','commercial','22','oneToTen','Sanitation','xasxasx','manas Prasad manas','manttas.rana@ekutirsb.com','8456890025','FACH4664741','basic','monthly',NULL,NULL,NULL,NULL,NULL,0,NULL,'Kheyti'),(6,'eKutirFairFood','non-profit',1,2,'751024','','manas.rana@ekutirsb.com','xsaxsax','social','22','oneToTen','Sanitation','xsaxsax','manas Prasad manas','manas.rana876@ekutirsb.com','08456890025','FACH5374170','basic','yearly',NULL,NULL,NULL,NULL,NULL,0,NULL,'Haat'),(7,'eKutirFairFood','non-profit',1,2,'751024','','manas.rana@ekutirsb.com','asdas','commercial','11','oneToTen','Sanitation','dasdsadsa','manas Prasad manas','manas.rana11@ekutirsb.com','08456890025','FACH3171339','basic','yearly',NULL,NULL,NULL,NULL,NULL,0,NULL,'Haat'),(8,'eKutirFairFood','profit',1,2,'751024','','manas.rana@ekutirsb.com','asd','commercial','22','oneToTen','Sanitation','dasdsad','manas Prasad manas','man112as.rana@ekutirsb.com','08456890025','FACH1711454','pro','monthly',NULL,NULL,NULL,NULL,NULL,0,NULL,'Kheyti'),(9,'eKutirFairFood','profit',1,2,'751024','','manas.rana@ekutirsb.com','sasasa','social','22','oneToTen','Sanitation','xasxasxas','manas Prasad manas','ma4567nas.rana@ekutirsb.com','08456890025','FACH81697','0','0',NULL,NULL,NULL,NULL,NULL,0,NULL,'0'),(10,'Sribatsa_Foundation','profit',1,2,'751024','','sribatsa.mishra@ekutirsb.com','','social','100000','oneToTen','Agriculture','Sribatsa Mishra','Sribatsa Mishra','sribatsa.mishra@ekutirsb.com','8908543673','FACH2963943','basic','yearly',NULL,NULL,NULL,NULL,NULL,0,NULL,'Kheyti');
/*!40000 ALTER TABLE `mf_m_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `quantity` decimal(10,3) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `ordered_type` varchar(45) NOT NULL,
  `seller_ack_status` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `buycode` int(11) DEFAULT NULL,
  `return_code` int(4) DEFAULT NULL,
  `return_status` tinyint(2) DEFAULT NULL,
  `cancel_order_status` tinyint(4) DEFAULT NULL,
  `catalogue_status` int(11) NOT NULL DEFAULT '0',
  `impact_services_status` int(11) NOT NULL DEFAULT '0',
  `deliver_date_time` datetime DEFAULT NULL,
  `rating` decimal(3,2) NOT NULL DEFAULT '0.00',
  `comments` varchar(1000) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,1,4,4,2.000,100.00,'Click and Pick',1,1,1234,0,0,0,1,0,'2018-08-12 00:00:00',4.00,NULL,27,27,'2018-08-12 00:00:00',NULL,NULL),(2,1,4,4,2.000,100.00,'Click and Pick',2,2,1234,0,0,0,1,0,'2018-08-12 00:00:00',4.00,NULL,27,27,'2018-08-12 00:00:00',NULL,NULL),(3,1,4,4,2.000,100.00,'Click and Pick',0,2,1234,0,0,0,1,0,'2018-08-12 00:00:00',4.00,NULL,27,27,'2018-08-12 00:00:00',NULL,NULL),(4,1,4,4,2.000,100.00,'Click and Pick',1,0,1234,0,0,0,1,0,'2018-08-12 00:00:00',4.00,NULL,27,27,'2018-08-12 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_master`
--

DROP TABLE IF EXISTS `order_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_id` int(11) DEFAULT NULL,
  `date_time_of_order` datetime NOT NULL,
  `payment_mode` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `transaction_date_time` datetime DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `buyer_type` varchar(45) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_master`
--

LOCK TABLES `order_master` WRITE;
/*!40000 ALTER TABLE `order_master` DISABLE KEYS */;
INSERT INTO `order_master` VALUES (1,27,'2018-08-08 00:00:00','DC','1234','2018-08-08 00:00:00',100.00,1,NULL,1,27,'2018-08-08 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `order_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_category_id` int(11) DEFAULT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `product_features` varchar(1000) DEFAULT NULL,
  `how_to_use` varchar(250) DEFAULT NULL,
  `approve_status` int(1) DEFAULT '0',
  `product_image` varchar(1000) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (4,1,'Apple','Gives Instant Energy','Wash and Eat',1,'Koala.jpg','India','Odisha','adas',NULL,'2018-08-03 13:15:31'),(14,4,'Alu (Potato)','Good For Health','after soak',1,'maxresdefault.jpg',NULL,NULL,NULL,27,'2018-08-17 20:36:59');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_brand`
--

DROP TABLE IF EXISTS `product_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `brand_name` varchar(200) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `mrp` decimal(10,2) DEFAULT NULL,
  `advance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `warranty` varchar(10) DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `approve_status` int(1) DEFAULT '0',
  `country` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_brand`
--

LOCK TABLES `product_brand` WRITE;
/*!40000 ALTER TABLE `product_brand` DISABLE KEYS */;
INSERT INTO `product_brand` VALUES (4,4,'Green Apple','100',100.00,150.00,100.00,'2','2018-08-03 13:15:31',1,'India','Odisha','adas',27,'2018-08-03 13:15:31'),(5,4,'Red Apple','200',1.00,1.00,1.00,'1','2018-09-01 00:00:00',1,'India','Delhi','adas',27,'2018-08-03 15:47:38'),(6,4,'Blue Apple','100',1.00,1.00,1.00,'1','2018-10-05 00:00:00',1,'India','Odisha','adas',27,'2018-08-03 15:56:45'),(15,14,'Mahalaxmi','100',100.00,120.00,50.00,'2','2018-10-20 00:00:00',0,NULL,NULL,NULL,27,'2018-08-17 20:36:59');
/*!40000 ALTER TABLE `product_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) DEFAULT NULL,
  `category_image` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'Food',NULL),(2,'Vegetables',NULL),(3,'Pesticides',NULL),(4,'Seed',NULL);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Super Admin'),(2,'Master Franchise'),(3,'Supplier'),(4,'Business Facilitator');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `agriscore_id` int(11) NOT NULL AUTO_INCREMENT,
  `farmer_id` int(11) DEFAULT NULL,
  `risk_percentage` float DEFAULT NULL,
  `risk_score` float DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `flag_completed` int(1) DEFAULT '0',
  `recommendation_accepted` int(1) DEFAULT '0',
  `score_type` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`agriscore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_category` int(11) DEFAULT '0',
  `name` varchar(500) DEFAULT NULL,
  `contact_number` varchar(500) DEFAULT NULL,
  `service_description` varchar(500) DEFAULT NULL,
  `consumer_benifit` varchar(500) DEFAULT NULL,
  `when_to_use` varchar(500) DEFAULT NULL,
  `how_to_use` varchar(500) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `approve_status` int(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (2,1,'Pour water','8908543673','pour','Good benefit','use before plantation','add manual',NULL,NULL,NULL,1,27,'2018-08-06 11:01:35'),(3,1,'Pour water','8908543673','pour','Good benefit','use before plantation','Add ingredents as per instruction.',NULL,NULL,NULL,1,27,'2018-08-06 11:03:14'),(4,2,'Add Ingridients','7894561230','Ingridients','Get more products','after 10 days of plantation','add seed',NULL,NULL,NULL,1,27,'2018-08-06 11:11:22'),(5,2,'aaaa','7894561230','sdfdfghh','jhj','ikklui','uyui',NULL,NULL,NULL,0,27,'2018-08-06 11:43:22'),(6,1,'zxczxc','7894561230','dfffg','h','ghgjk','jhmj','India','Odisha',NULL,1,27,'2018-08-06 18:22:48');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_category`
--

DROP TABLE IF EXISTS `service_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) DEFAULT NULL,
  `category_image` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_category`
--

LOCK TABLES `service_category` WRITE;
/*!40000 ALTER TABLE `service_category` DISABLE KEYS */;
INSERT INTO `service_category` VALUES (1,'aa',NULL),(2,'bb',NULL);
/*!40000 ALTER TABLE `service_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceprovider_type`
--

DROP TABLE IF EXISTS `serviceprovider_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviceprovider_type` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `supplier_type_id` int(11) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceprovider_type`
--

LOCK TABLES `serviceprovider_type` WRITE;
/*!40000 ALTER TABLE `serviceprovider_type` DISABLE KEYS */;
INSERT INTO `serviceprovider_type` VALUES (1,'Logistics',3,'Logistic Supplier'),(2,'Skill Training',3,'Skill Training'),(3,'Warehouse & Cold Storage',3,'Warehouse & Cold Storage'),(4,'Special Project Coordinator',3,'Special Project Coordinator'),(5,'Brand Aggregator',3,'Brand Aggregator');
/*!40000 ALTER TABLE `serviceprovider_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `short_option`
--

DROP TABLE IF EXISTS `short_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `short_option` (
  `short_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `short_question_id` int(11) DEFAULT NULL,
  `short_option_description` varchar(100) DEFAULT NULL,
  `short_option_mapped` int(4) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `catego` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`short_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `short_option`
--

LOCK TABLES `short_option` WRITE;
/*!40000 ALTER TABLE `short_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `short_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `short_question`
--

DROP TABLE IF EXISTS `short_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `short_question` (
  `short_question_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `short_question_description` varchar(200) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`short_question_id`),
  KEY `FK_category_Id_idx` (`category_id`),
  CONSTRAINT `FK_short_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `short_question`
--

LOCK TABLES `short_question` WRITE;
/*!40000 ALTER TABLE `short_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `short_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_master`
--

DROP TABLE IF EXISTS `state_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state_master` (
  `id` int(11) NOT NULL,
  `state_name` varchar(45) NOT NULL,
  `state_code` varchar(45) NOT NULL,
  `country_code` int(11) NOT NULL,
  PRIMARY KEY (`id`,`state_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_master`
--

LOCK TABLES `state_master` WRITE;
/*!40000 ALTER TABLE `state_master` DISABLE KEYS */;
INSERT INTO `state_master` VALUES (1,'Delhi','DL',1),(2,'Odisha','OD',1),(3,'Province-1','asd',2),(4,'Province-2','asd',2),(5,'Bihar','BH',1),(6,'Andhra Pradesh','AP',1),(7,'West Bengal','WB',1);
/*!40000 ALTER TABLE `state_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_m_tbl`
--

DROP TABLE IF EXISTS `supplier_m_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_m_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_type` int(11) DEFAULT NULL,
  `supplier_name` varchar(45) DEFAULT NULL,
  `service_provider_type` varchar(45) DEFAULT NULL,
  `supplier_country` int(11) DEFAULT NULL,
  `supplier_state` int(11) DEFAULT NULL,
  `supplier_district` int(11) DEFAULT NULL,
  `supplier_pincode` varchar(45) DEFAULT NULL,
  `supplier_address` varchar(70) DEFAULT NULL,
  `supplier_email` varchar(45) DEFAULT NULL,
  `supplier_url` varchar(45) DEFAULT NULL,
  `business_type` varchar(45) DEFAULT NULL,
  `total_turnover` varchar(45) DEFAULT NULL,
  `no_of_employee` varchar(45) DEFAULT NULL,
  `business_focus` varchar(45) DEFAULT NULL,
  `business_description` varchar(200) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `secondary_name` varchar(45) DEFAULT NULL,
  `secondary_number` varchar(45) DEFAULT NULL,
  `license_no` varchar(45) DEFAULT NULL,
  `license_type` varchar(45) DEFAULT NULL,
  `license_period` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `defaultpassword` varchar(45) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `licenstatus` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_m_tbl`
--

LOCK TABLES `supplier_m_tbl` WRITE;
/*!40000 ALTER TABLE `supplier_m_tbl` DISABLE KEYS */;
INSERT INTO `supplier_m_tbl` VALUES (17,1,'Sribatsa Foundation',NULL,1,2,1,'751024','Bhubaneswar','sribatsa.mishra@ekutirsb.com','','commercial','100000',NULL,'Agriculture','Sribatsa Organization','Sribatsa','8908543673','Manas','4561237890','FACH776863','basic','yearly','SUPPLIER','0','farmchalo@123','2018-07-30 18:10:32',3,'0','special'),(20,1,'',NULL,1,2,2,'751024','Bhubaneswar','Siba@gmail.com','','commercial','10000',NULL,'Agriculture','Siba','Siba','7894561235','Siba','7894561230','FACH6372404','basic','yearly','SUPPLIER','0','farmchalo@123','2018-08-01 14:44:02',3,'0','normal'),(21,3,'--Select--','0',1,2,1,'7851024','Bhubaneswar','supply@svadha.com','','commercial','10000',NULL,'Agriculture','Sribatsa Orga','Sribatsa','7894561230','Manas','0123456789','FACH8171628','basic','yearly','SUPPLIER','0','farmchalo@123','2018-08-02 11:35:26',3,'0','normal');
/*!40000 ALTER TABLE `supplier_m_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_m_type`
--

DROP TABLE IF EXISTS `supplier_m_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_m_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_m_type`
--

LOCK TABLES `supplier_m_type` WRITE;
/*!40000 ALTER TABLE `supplier_m_type` DISABLE KEYS */;
INSERT INTO `supplier_m_type` VALUES (1,'Market Product Company','Market Product Company'),(2,'Market Product Distributors','Market Product Distributors'),(3,'Market Service Providers','Market Service Providers ');
/*!40000 ALTER TABLE `supplier_m_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_and_condition`
--

DROP TABLE IF EXISTS `term_and_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term_and_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `term_and_condition_category` varchar(45) DEFAULT NULL,
  `term_and_condition` varchar(45) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_and_condition`
--

LOCK TABLES `term_and_condition` WRITE;
/*!40000 ALTER TABLE `term_and_condition` DISABLE KEYS */;
INSERT INTO `term_and_condition` VALUES (30,1,1,'License','Good','Tulips.jpg'),(31,1,4,'License','azax','Penguins.jpg');
/*!40000 ALTER TABLE `term_and_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `role` int(11) DEFAULT NULL,
  `organisationName` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `block` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `latitude` decimal(10,5) DEFAULT '0.00000',
  `longitude` decimal(10,5) DEFAULT '0.00000',
  `pincode` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,'manas.rana@ekutirsb.com','manas manas',NULL,'08456890025','123',0,1,'madhubusiness','India','India','',NULL,'',20.28934,85.79501,110017,3),(11,'madhu.gill@ekutirsb.com','manas manas',NULL,'08456890025','1',1,2,'eKutirFairFood','India','Delhi','',NULL,'',20.28804,85.77433,751024,1),(12,'manasghdg.rana@ekutirsb.com','manas manas',NULL,'08456890025','8KRDob1TJf',1,2,'eKutirFairFood','India','Odisha','',NULL,'',20.27951,85.72584,751024,2),(15,'aa@g.com','manas Prasad manas',NULL,'8456890025','11',1,2,'madhubusiness','India','Odisha','',NULL,'',20.28532,85.63408,110017,5),(18,'manas.rana@ekutirsb.com11','manas',NULL,'8456890025','123',1,4,'eKutirFairFood','India','Odisha','',NULL,'',20.26938,85.57921,751024,1),(19,'bb@ekutirsb.com','manas Prasad manas',NULL,'08456890025','22',1,3,'eKutirFairFood','India','Odisha','',NULL,'',20.25180,85.26466,751024,6),(20,'manas.rana11@ekutirsb.com','manas Prasad manas',NULL,'08456890025','C4HJ?yN&Z7',1,2,'eKutirFairFood','India','Odisha','',NULL,'',20.33861,85.79741,751024,7),(21,'man112as.rana@ekutirsb.com','manas Prasad manas',NULL,'08456890025','=HVL/GKAAg',1,2,'eKutirFairFood','India','Odisha','',NULL,'',20.26938,85.57921,751024,8),(22,'man349as.rana@ekutirsb.com','manas',NULL,'8456890025','123456',1,4,'eKutirFairFood','India','Odisha','adas',NULL,'',20.36391,85.79741,751024,2),(23,'ma4567nas.rana@ekutirsb.com','manas Prasad manas',NULL,'08456890025','Yho3yqC@$n',1,2,'eKutirFairFood','India','Odisha','',NULL,'',20.36391,85.79741,751024,9),(27,'sribatsa.mishra@ekutirsb.com','Sribatsa Foundation',NULL,'8908543673','123',1,3,'Sribatsa Foundation','India','Odisha','Khurda','Patia','Bhubaneswar',20.36391,85.79741,751024,17),(28,'Siba@gmail.com','',NULL,'7894561235','p1l1IVL1kG',1,3,'','India','Odisha','asd',NULL,'',20.36391,85.79741,751024,20);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-24  8:38:46
