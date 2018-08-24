-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: smart
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
  `user_id` int(11) NOT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `block` varchar(45) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `postal_code` bigint(20) NOT NULL,
  `latitudes` varchar(255) NOT NULL,
  `longitudes` varchar(255) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agriseed_crop_logic`
--

DROP TABLE IF EXISTS `agriseed_crop_logic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agriseed_crop_logic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crop_id` int(11) DEFAULT NULL,
  `land_type` varchar(45) DEFAULT NULL,
  `ph` varchar(45) DEFAULT NULL,
  `soil_type` varchar(45) DEFAULT NULL,
  `country_name` varchar(45) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agriseed_crop_logic`
--

LOCK TABLES `agriseed_crop_logic` WRITE;
/*!40000 ALTER TABLE `agriseed_crop_logic` DISABLE KEYS */;
/*!40000 ALTER TABLE `agriseed_crop_logic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agriseed_crop_seed`
--

DROP TABLE IF EXISTS `agriseed_crop_seed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agriseed_crop_seed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crop_id` int(11) DEFAULT NULL,
  `variety` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `seed_company` varchar(45) DEFAULT NULL,
  `seed_type` varchar(45) DEFAULT NULL,
  `season_id` int(45) DEFAULT NULL,
  `nursery_days` int(10) DEFAULT NULL,
  `plantation_days` int(10) DEFAULT NULL,
  `first_harvest_days` int(10) DEFAULT NULL,
  `harvest_cycle` int(10) DEFAULT NULL,
  `harvest_duration` int(10) DEFAULT NULL,
  `stagger` varchar(45) DEFAULT NULL,
  `staggering_cycle_period` int(10) DEFAULT NULL,
  `staggering_cycle` int(10) DEFAULT NULL,
  `perishable` varchar(45) DEFAULT NULL,
  `color1` varchar(45) DEFAULT NULL,
  `color2` varchar(45) DEFAULT NULL,
  `color3` varchar(45) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `sowing_month_from` date DEFAULT NULL,
  `sowing_month_to` date DEFAULT NULL,
  `productivity` int(45) DEFAULT NULL,
  `preferred_duration` int(10) DEFAULT NULL,
  `duration_desc` varchar(45) DEFAULT NULL,
  `dieseas_resistance` varchar(45) DEFAULT NULL,
  `pest_resistance` varchar(45) DEFAULT NULL,
  `seed_requirement` varchar(45) DEFAULT NULL,
  `land_unit` varchar(45) DEFAULT NULL,
  `seed_price` double(15,5) DEFAULT NULL,
  `germination` varchar(45) DEFAULT NULL,
  `how_to_appy` varchar(45) DEFAULT NULL,
  `country_name` varchar(45) NOT NULL DEFAULT '0',
  `state` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `block` varchar(45) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agriseed_crop_seed`
--

LOCK TABLES `agriseed_crop_seed` WRITE;
/*!40000 ALTER TABLE `agriseed_crop_seed` DISABLE KEYS */;
INSERT INTO `agriseed_crop_seed` VALUES (1,1,1,0,'dsds','adas',1,11,22,90,20,3,'yes',20,6,'yes','white',NULL,NULL,'Asoj-Paush',NULL,NULL,1200,22,NULL,NULL,NULL,NULL,NULL,312.77000,NULL,NULL,'0',NULL,NULL,NULL,0,NULL),(11,2,2,0,'Mahalaxmi','Hybrid',0,2,10,30,5,60,'1',0,3,'yes','Grey',NULL,NULL,'2','2018-08-16','2018-09-22',1000,120,'120','NA','Good',NULL,NULL,100.00000,'Y',NULL,'1','Odisha','adas','Hatadihi',27,'2018-08-17 20:36:59');
/*!40000 ALTER TABLE `agriseed_crop_seed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crop`
--

DROP TABLE IF EXISTS `crop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crop` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique Id and serial No of the Crop',
  `crop_name` varchar(50) DEFAULT NULL,
  `crop_icon_url` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Icon of the Crop',
  `created_by` varchar(20) DEFAULT NULL,
  `status` int(3) NOT NULL COMMENT 'Current status of the crop',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crop`
--

LOCK TABLES `crop` WRITE;
/*!40000 ALTER TABLE `crop` DISABLE KEYS */;
INSERT INTO `crop` VALUES (1,'Late','asd','2018-07-30 12:40:32','11',1),(2,'Alu (Potato)','asd','2018-07-30 12:40:32',NULL,1),(3,'Cauli(Cauliflower)- Early','asd','2018-07-30 12:40:32',NULL,1);
/*!40000 ALTER TABLE `crop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crop_activities_timeline`
--

DROP TABLE IF EXISTS `crop_activities_timeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crop_activities_timeline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crop_id` int(11) DEFAULT NULL,
  `variety_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `days_before_planting` int(3) DEFAULT NULL,
  `days_after_planting` int(3) DEFAULT NULL,
  `activity_duration` int(3) DEFAULT NULL,
  `country_name` varchar(45) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crop_activities_timeline`
--

LOCK TABLES `crop_activities_timeline` WRITE;
/*!40000 ALTER TABLE `crop_activities_timeline` DISABLE KEYS */;
INSERT INTO `crop_activities_timeline` VALUES (1,1,1,1,22,11,22,'india',11,NULL);
/*!40000 ALTER TABLE `crop_activities_timeline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crop_type`
--

DROP TABLE IF EXISTS `crop_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crop_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crop_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crop_type`
--

LOCK TABLES `crop_type` WRITE;
/*!40000 ALTER TABLE `crop_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `crop_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disease`
--

DROP TABLE IF EXISTS `disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disease` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disease_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease`
--

LOCK TABLES `disease` WRITE;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;
/*!40000 ALTER TABLE `disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farmer`
--

DROP TABLE IF EXISTS `farmer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `farmer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone_number` bigint(20) DEFAULT '0',
  `aadhar_number` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmer`
--

LOCK TABLES `farmer` WRITE;
/*!40000 ALTER TABLE `farmer` DISABLE KEYS */;
/*!40000 ALTER TABLE `farmer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `future_market_details`
--

DROP TABLE IF EXISTS `future_market_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `future_market_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `future_market_id` int(11) NOT NULL,
  `harvest_date` date DEFAULT NULL,
  `quantity` decimal(10,5) DEFAULT '0.00000',
  `unit` varchar(45) DEFAULT NULL,
  `buyer_id` int(11) NOT NULL,
  `booked_status` int(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `future_market_details`
--

LOCK TABLES `future_market_details` WRITE;
/*!40000 ALTER TABLE `future_market_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `future_market_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `land_details`
--

DROP TABLE IF EXISTS `land_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `land_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `farmer_id` int(11) NOT NULL,
  `area` double DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `ownership` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `latitudes` varchar(45) DEFAULT NULL,
  `longitudes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land_details`
--

LOCK TABLES `land_details` WRITE;
/*!40000 ALTER TABLE `land_details` DISABLE KEYS */;
INSERT INTO `land_details` VALUES (1,1,2,'acer','12','ada','aad',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `land_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pest`
--

DROP TABLE IF EXISTS `pest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pest_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pest`
--

LOCK TABLES `pest` WRITE;
/*!40000 ALTER TABLE `pest` DISABLE KEYS */;
/*!40000 ALTER TABLE `pest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protect_logic`
--

DROP TABLE IF EXISTS `protect_logic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protect_logic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crop_id` int(11) NOT NULL,
  `crop_type` int(11) DEFAULT NULL,
  `growth_stage` varchar(255) DEFAULT NULL,
  `symptoms_id` int(11) DEFAULT NULL,
  `diagnostic_survey` varchar(255) DEFAULT NULL,
  `survey_result` varchar(415) DEFAULT NULL,
  `disease_id` int(11) DEFAULT NULL,
  `pest_id` int(11) NOT NULL,
  `generic_medicine_id` int(11) NOT NULL,
  `curative_measure` varchar(255) DEFAULT NULL,
  `preventive_easure` varchar(255) DEFAULT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protect_logic`
--

LOCK TABLES `protect_logic` WRITE;
/*!40000 ALTER TABLE `protect_logic` DISABLE KEYS */;
INSERT INTO `protect_logic` VALUES (1,1,1,'Nursery',1,'Termites or white grubs (‘C’ Shaped larva )are found ','Termites or white grubs (‘C’ Shaped larva )are found ',1,1,1,'At final nursery bed preparation apply chlorpyriphos 1% dust @ 2.5g/m2','Drench the whole nursery plot with chlorpyriphos 20EC @ 10 ml /litre of water','1','2','2017-06-12'),(2,1,1,'Main Field',1,'Termites or white grubs (‘C’ Shaped larva )are found ','Termites or white grubs (‘C’ Shaped larva )are found ',1,1,1,'Seed treatment with bio-pesticide Trichoderma viridae @ 5g/kg seed or chemical Vitavax Power @ 2g/kg seed','Ensure lack of water stagnation & bright sunshine to nursery bed','1','2','2017-06-12');
/*!40000 ALTER TABLE `protect_logic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `season` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `season_name` varchar(45) DEFAULT NULL,
  `season_starts_from` date DEFAULT NULL,
  `season_starts_to` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
INSERT INTO `season` VALUES (1,'Hiude',NULL,NULL),(2,'Barkhe',NULL,NULL);
/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seed_recommendation`
--

DROP TABLE IF EXISTS `seed_recommendation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seed_recommendation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seed_id` varchar(45) DEFAULT NULL,
  `plataion_date` date DEFAULT NULL,
  `farmer_id` tinyint(1) NOT NULL DEFAULT '0',
  `land_id` int(11) NOT NULL DEFAULT '0',
  `created_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seed_recommendation`
--

LOCK TABLES `seed_recommendation` WRITE;
/*!40000 ALTER TABLE `seed_recommendation` DISABLE KEYS */;
/*!40000 ALTER TABLE `seed_recommendation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `symptoms`
--

DROP TABLE IF EXISTS `symptoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `symptoms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symptoms`
--

LOCK TABLES `symptoms` WRITE;
/*!40000 ALTER TABLE `symptoms` DISABLE KEYS */;
/*!40000 ALTER TABLE `symptoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variety`
--

DROP TABLE IF EXISTS `variety`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variety` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crop_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `duration` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variety`
--

LOCK TABLES `variety` WRITE;
/*!40000 ALTER TABLE `variety` DISABLE KEYS */;
INSERT INTO `variety` VALUES (1,1,'dasd',11,'2018-07-30 18:10:32',120),(2,2,'BARI ALU-21(PROVENTO)',11,'2018-07-30 18:10:32',120),(3,2,'BARI ALU -31(SAGITA)',11,'2018-07-30 18:10:32',120),(4,3,'Clarify',11,'2018-07-30 18:10:32',120),(5,3,'Cristof',11,'2018-07-30 18:10:32',120),(6,3,'Aerospace',11,'2018-07-30 18:10:32',120),(7,3,'Amerigo',11,'2018-07-30 18:10:32',120);
/*!40000 ALTER TABLE `variety` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-24  8:52:12
