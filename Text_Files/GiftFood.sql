-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: GiftFood
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add canteen',7,'add_canteen'),(26,'Can change canteen',7,'change_canteen'),(27,'Can delete canteen',7,'delete_canteen'),(28,'Can view canteen',7,'view_canteen'),(29,'Can add food category',8,'add_foodcategory'),(30,'Can change food category',8,'change_foodcategory'),(31,'Can delete food category',8,'delete_foodcategory'),(32,'Can view food category',8,'view_foodcategory'),(33,'Can add stall owner',9,'add_stallowner'),(34,'Can change stall owner',9,'change_stallowner'),(35,'Can delete stall owner',9,'delete_stallowner'),(36,'Can view stall owner',9,'view_stallowner'),(37,'Can add student',10,'add_student'),(38,'Can change student',10,'change_student'),(39,'Can delete student',10,'delete_student'),(40,'Can view student',10,'view_student'),(41,'Can add stall',11,'add_stall'),(42,'Can change stall',11,'change_stall'),(43,'Can delete stall',11,'delete_stall'),(44,'Can view stall',11,'view_stall'),(45,'Can add food',12,'add_food'),(46,'Can change food',12,'change_food'),(47,'Can delete food',12,'delete_food'),(48,'Can view food',12,'view_food'),(49,'Can add card info',13,'add_cardinfo'),(50,'Can change card info',13,'change_cardinfo'),(51,'Can delete card info',13,'delete_cardinfo'),(52,'Can view card info',13,'view_cardinfo'),(53,'Can add Token',14,'add_token'),(54,'Can change Token',14,'change_token'),(55,'Can delete Token',14,'delete_token'),(56,'Can view Token',14,'view_token'),(57,'Can add token',15,'add_tokenproxy'),(58,'Can change token',15,'change_tokenproxy'),(59,'Can delete token',15,'delete_tokenproxy'),(60,'Can view token',15,'view_tokenproxy'),(61,'Can add token',16,'add_token'),(62,'Can change token',16,'change_token'),(63,'Can delete token',16,'delete_token'),(64,'Can view token',16,'view_token'),(65,'Can add token payment',17,'add_tokenpayment'),(66,'Can change token payment',17,'change_tokenpayment'),(67,'Can delete token payment',17,'delete_tokenpayment'),(68,'Can view token payment',17,'view_tokenpayment'),(69,'Can add order',18,'add_order'),(70,'Can change order',18,'change_order'),(71,'Can delete order',18,'delete_order'),(72,'Can view order',18,'view_order');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_studentportal_user_id` FOREIGN KEY (`user_id`) REFERENCES `studentportal_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('7e9977d390f54e4a5dac61f3e911e2efc12af3a7','2021-04-19 05:30:12.133363',6);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_studentportal_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_studentportal_user_id` FOREIGN KEY (`user_id`) REFERENCES `studentportal_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(14,'authtoken','token'),(15,'authtoken','tokenproxy'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(7,'studentportal','canteen'),(13,'studentportal','cardinfo'),(12,'studentportal','food'),(8,'studentportal','foodcategory'),(18,'studentportal','order'),(11,'studentportal','stall'),(9,'studentportal','stallowner'),(10,'studentportal','student'),(16,'studentportal','token'),(17,'studentportal','tokenpayment'),(6,'studentportal','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-04-17 10:46:07.018068'),(2,'contenttypes','0002_remove_content_type_name','2021-04-17 10:46:07.168325'),(3,'auth','0001_initial','2021-04-17 10:46:07.344360'),(4,'auth','0002_alter_permission_name_max_length','2021-04-17 10:46:07.967832'),(5,'auth','0003_alter_user_email_max_length','2021-04-17 10:46:07.990294'),(6,'auth','0004_alter_user_username_opts','2021-04-17 10:46:08.011416'),(7,'auth','0005_alter_user_last_login_null','2021-04-17 10:46:08.021994'),(8,'auth','0006_require_contenttypes_0002','2021-04-17 10:46:08.029212'),(9,'auth','0007_alter_validators_add_error_messages','2021-04-17 10:46:08.044213'),(10,'auth','0008_alter_user_username_max_length','2021-04-17 10:46:08.056053'),(11,'auth','0009_alter_user_last_name_max_length','2021-04-17 10:46:08.065990'),(12,'auth','0010_alter_group_name_max_length','2021-04-17 10:46:08.086962'),(13,'auth','0011_update_proxy_permissions','2021-04-17 10:46:08.098704'),(14,'auth','0012_alter_user_first_name_max_length','2021-04-17 10:46:08.109313'),(15,'studentportal','0001_initial','2021-04-17 10:46:08.763364'),(16,'admin','0001_initial','2021-04-17 10:46:10.042763'),(17,'admin','0002_logentry_remove_auto_add','2021-04-17 10:46:10.301561'),(18,'admin','0003_logentry_add_action_flag_choices','2021-04-17 10:46:10.330228'),(19,'authtoken','0001_initial','2021-04-17 10:46:10.386061'),(20,'authtoken','0002_auto_20160226_1747','2021-04-17 10:46:10.663569'),(21,'authtoken','0003_tokenproxy','2021-04-17 10:46:10.676041'),(22,'sessions','0001_initial','2021-04-17 10:46:10.732076'),(23,'studentportal','0002_token','2021-04-17 10:46:20.403033'),(24,'studentportal','0003_auto_20210418_0518','2021-04-18 05:18:35.849095'),(25,'studentportal','0004_auto_20210418_0607','2021-04-18 06:07:08.138254'),(26,'studentportal','0005_auto_20210418_0632','2021-04-18 06:32:10.971697'),(27,'studentportal','0006_auto_20210418_0642','2021-04-18 06:42:53.656116'),(28,'studentportal','0007_auto_20210418_0709','2021-04-18 07:09:23.423084'),(29,'studentportal','0008_auto_20210418_0721','2021-04-18 07:21:52.632882'),(30,'studentportal','0009_auto_20210418_0722','2021-04-18 07:23:01.755395'),(31,'studentportal','0010_token_tokenpayment','2021-04-18 07:23:31.822949'),(32,'studentportal','0011_order','2021-04-18 07:38:34.467832'),(33,'studentportal','0012_auto_20210418_0759','2021-04-18 07:59:27.303160'),(34,'studentportal','0013_auto_20210418_0800','2021-04-18 08:00:03.994365'),(35,'studentportal','0014_auto_20210418_0807','2021-04-18 08:07:17.265011'),(36,'studentportal','0015_auto_20210418_0843','2021-04-18 08:44:02.640298'),(37,'studentportal','0016_cardinfo_tokenpayment','2021-04-18 08:45:00.955414');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_canteen`
--

DROP TABLE IF EXISTS `studentportal_canteen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_canteen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `canteenname` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `canteenname` (`canteenname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_canteen`
--

LOCK TABLES `studentportal_canteen` WRITE;
/*!40000 ALTER TABLE `studentportal_canteen` DISABLE KEYS */;
INSERT INTO `studentportal_canteen` VALUES (1,'Mahalla Ali IBN ABU Talib'),(3,'Mahalla Umar IBN Khattab'),(2,'Mahalla Uthman IBN Affan');
/*!40000 ALTER TABLE `studentportal_canteen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_cardinfo`
--

DROP TABLE IF EXISTS `studentportal_cardinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_cardinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `card_name` varchar(200) NOT NULL,
  `card_number` varchar(200) NOT NULL,
  `card_cvc` varchar(200) NOT NULL,
  `card_expiry` date NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`),
  CONSTRAINT `studentportal_cardin_student_id_81128ace_fk_studentpo` FOREIGN KEY (`student_id`) REFERENCES `studentportal_student` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_cardinfo`
--

LOCK TABLES `studentportal_cardinfo` WRITE;
/*!40000 ALTER TABLE `studentportal_cardinfo` DISABLE KEYS */;
INSERT INTO `studentportal_cardinfo` VALUES (1,'ATM','1502315011','dfasdf','2021-04-21',8);
/*!40000 ALTER TABLE `studentportal_cardinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_food`
--

DROP TABLE IF EXISTS `studentportal_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_food` (
  `id` int NOT NULL AUTO_INCREMENT,
  `food_name` varchar(200) NOT NULL,
  `price` int NOT NULL,
  `availability` tinyint(1) NOT NULL,
  `description` varchar(300) NOT NULL,
  `photo` varchar(400) NOT NULL,
  `food_category_id` int NOT NULL,
  `stall_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studentportal_food_food_category_id_7ca8370d_fk_studentpo` (`food_category_id`),
  KEY `studentportal_food_stall_id_42bed53d_fk_studentportal_stall_id` (`stall_id`),
  CONSTRAINT `studentportal_food_food_category_id_7ca8370d_fk_studentpo` FOREIGN KEY (`food_category_id`) REFERENCES `studentportal_foodcategory` (`id`),
  CONSTRAINT `studentportal_food_stall_id_42bed53d_fk_studentportal_stall_id` FOREIGN KEY (`stall_id`) REFERENCES `studentportal_stall` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_food`
--

LOCK TABLES `studentportal_food` WRITE;
/*!40000 ALTER TABLE `studentportal_food` DISABLE KEYS */;
INSERT INTO `studentportal_food` VALUES (1,'Biriyani',150,1,'Mid day meal','biriyani.jpg',2,1);
/*!40000 ALTER TABLE `studentportal_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_foodcategory`
--

DROP TABLE IF EXISTS `studentportal_foodcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_foodcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `food_category_type` smallint unsigned NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `studentportal_foodcategory_chk_1` CHECK ((`food_category_type` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_foodcategory`
--

LOCK TABLES `studentportal_foodcategory` WRITE;
/*!40000 ALTER TABLE `studentportal_foodcategory` DISABLE KEYS */;
INSERT INTO `studentportal_foodcategory` VALUES (1,1,'Morning meal'),(2,2,'Mid day meal'),(3,3,'Afternoon light meal'),(4,4,'Supper at night');
/*!40000 ALTER TABLE `studentportal_foodcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_order`
--

DROP TABLE IF EXISTS `studentportal_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token_name` varchar(100) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `pending` tinyint(1) NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `price` int NOT NULL,
  `created` date NOT NULL,
  `creator_id` int NOT NULL,
  `food_id` int NOT NULL,
  `food_category_id` int NOT NULL,
  `stall_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studentportal_order_creator_id_cde8b8c1_fk_studentpo` (`creator_id`),
  KEY `studentportal_order_food_id_f9f86eba_fk_studentportal_food_id` (`food_id`),
  KEY `studentportal_order_food_category_id_b4cdf30c_fk_studentpo` (`food_category_id`),
  KEY `studentportal_order_stall_id_4031483a_fk_studentportal_stall_id` (`stall_id`),
  CONSTRAINT `studentportal_order_creator_id_cde8b8c1_fk_studentpo` FOREIGN KEY (`creator_id`) REFERENCES `studentportal_student` (`user_id`),
  CONSTRAINT `studentportal_order_food_category_id_b4cdf30c_fk_studentpo` FOREIGN KEY (`food_category_id`) REFERENCES `studentportal_foodcategory` (`id`),
  CONSTRAINT `studentportal_order_food_id_f9f86eba_fk_studentportal_food_id` FOREIGN KEY (`food_id`) REFERENCES `studentportal_food` (`id`),
  CONSTRAINT `studentportal_order_stall_id_4031483a_fk_studentportal_stall_id` FOREIGN KEY (`stall_id`) REFERENCES `studentportal_stall` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_order`
--

LOCK TABLES `studentportal_order` WRITE;
/*!40000 ALTER TABLE `studentportal_order` DISABLE KEYS */;
INSERT INTO `studentportal_order` VALUES (1,'adsfadfs',1,1,1,100,'2021-04-18',8,1,1,1),(2,'MIOIDZJSTR',0,1,0,100,'2021-04-18',8,1,1,1);
/*!40000 ALTER TABLE `studentportal_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_stall`
--

DROP TABLE IF EXISTS `studentportal_stall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_stall` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stallname` varchar(200) NOT NULL,
  `stall_id` varchar(20) NOT NULL,
  `description` varchar(300) NOT NULL,
  `location` varchar(300) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `contact_person_phone` varchar(100) NOT NULL,
  `canteen_id` int NOT NULL,
  `owner_id` int NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `studentportal_stall_canteen_id_76d68eca_fk_studentpo` (`canteen_id`),
  KEY `studentportal_stall_owner_id_da22f35e_fk_studentpo` (`owner_id`),
  CONSTRAINT `studentportal_stall_canteen_id_76d68eca_fk_studentpo` FOREIGN KEY (`canteen_id`) REFERENCES `studentportal_canteen` (`id`),
  CONSTRAINT `studentportal_stall_owner_id_da22f35e_fk_studentpo` FOREIGN KEY (`owner_id`) REFERENCES `studentportal_stallowner` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_stall`
--

LOCK TABLES `studentportal_stall` WRITE;
/*!40000 ALTER TABLE `studentportal_stall` DISABLE KEYS */;
INSERT INTO `studentportal_stall` VALUES (1,'Allahar Daan Biriyani','bb34','Total boom boom','1st floor, 303 No shop','Haluk','00121131',1,7,'Screenshot_from_2021-03-01_15-51-58.png'),(2,'Allahr Daan Biriyani','Stall 10','Afternoon light meal','1st floor, shop No 303','mama','01365464645',3,7,'Screenshot_from_2021-03-09_16-48-53.png');
/*!40000 ALTER TABLE `studentportal_stall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_stallowner`
--

DROP TABLE IF EXISTS `studentportal_stallowner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_stallowner` (
  `user_id` int NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `studentportal_stallo_user_id_0c5110e9_fk_studentpo` FOREIGN KEY (`user_id`) REFERENCES `studentportal_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_stallowner`
--

LOCK TABLES `studentportal_stallowner` WRITE;
/*!40000 ALTER TABLE `studentportal_stallowner` DISABLE KEYS */;
INSERT INTO `studentportal_stallowner` VALUES (6,1),(7,1);
/*!40000 ALTER TABLE `studentportal_stallowner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_student`
--

DROP TABLE IF EXISTS `studentportal_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_student` (
  `user_id` int NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `is_needy` tinyint(1) NOT NULL,
  `photo` varchar(400) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `studentportal_student_user_id_3cc84282_fk_studentportal_user_id` FOREIGN KEY (`user_id`) REFERENCES `studentportal_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_student`
--

LOCK TABLES `studentportal_student` WRITE;
/*!40000 ALTER TABLE `studentportal_student` DISABLE KEYS */;
INSERT INTO `studentportal_student` VALUES (8,'01',1,'Screenshot_from_2021-03-03_06-52-59.png'),(9,'01',0,'Screenshot_from_2021-02-11_14-32-20.png');
/*!40000 ALTER TABLE `studentportal_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_token`
--

DROP TABLE IF EXISTS `studentportal_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token_name` varchar(100) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `pending` tinyint(1) NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `price` int NOT NULL,
  `created` date NOT NULL,
  `creator_id` int NOT NULL,
  `food_id` int NOT NULL,
  `food_category_id` int NOT NULL,
  `shop_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studentportal_token_creator_id_d3782fc2_fk_studentpo` (`creator_id`),
  KEY `studentportal_token_food_id_caa8a28c_fk_studentportal_food_id` (`food_id`),
  KEY `studentportal_token_food_category_id_ee67ef51_fk_studentpo` (`food_category_id`),
  KEY `studentportal_token_shop_id_e112509d_fk_studentportal_stall_id` (`shop_id`),
  CONSTRAINT `studentportal_token_creator_id_d3782fc2_fk_studentpo` FOREIGN KEY (`creator_id`) REFERENCES `studentportal_student` (`user_id`),
  CONSTRAINT `studentportal_token_food_category_id_ee67ef51_fk_studentpo` FOREIGN KEY (`food_category_id`) REFERENCES `studentportal_foodcategory` (`id`),
  CONSTRAINT `studentportal_token_food_id_caa8a28c_fk_studentportal_food_id` FOREIGN KEY (`food_id`) REFERENCES `studentportal_food` (`id`),
  CONSTRAINT `studentportal_token_shop_id_e112509d_fk_studentportal_stall_id` FOREIGN KEY (`shop_id`) REFERENCES `studentportal_stall` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_token`
--

LOCK TABLES `studentportal_token` WRITE;
/*!40000 ALTER TABLE `studentportal_token` DISABLE KEYS */;
INSERT INTO `studentportal_token` VALUES (1,'XIYWKMGUIT',0,1,0,100,'2021-04-18',8,1,1,1),(2,'LFMPENLXNV',0,1,0,1000,'2021-04-18',8,1,1,1),(3,'',0,0,0,100,'2021-04-18',8,1,1,1);
/*!40000 ALTER TABLE `studentportal_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_tokenpayment`
--

DROP TABLE IF EXISTS `studentportal_tokenpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_tokenpayment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cardinfo_id` int NOT NULL,
  `order_id` int NOT NULL,
  `payer_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`),
  KEY `studentportal_tokenp_cardinfo_id_d94bb68b_fk_studentpo` (`cardinfo_id`),
  KEY `studentportal_tokenp_payer_id_e9e01a2a_fk_studentpo` (`payer_id`),
  CONSTRAINT `studentportal_tokenp_cardinfo_id_d94bb68b_fk_studentpo` FOREIGN KEY (`cardinfo_id`) REFERENCES `studentportal_cardinfo` (`id`),
  CONSTRAINT `studentportal_tokenp_order_id_631f2639_fk_studentpo` FOREIGN KEY (`order_id`) REFERENCES `studentportal_order` (`id`),
  CONSTRAINT `studentportal_tokenp_payer_id_e9e01a2a_fk_studentpo` FOREIGN KEY (`payer_id`) REFERENCES `studentportal_student` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_tokenpayment`
--

LOCK TABLES `studentportal_tokenpayment` WRITE;
/*!40000 ALTER TABLE `studentportal_tokenpayment` DISABLE KEYS */;
INSERT INTO `studentportal_tokenpayment` VALUES (1,1,1,8);
/*!40000 ALTER TABLE `studentportal_tokenpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_user`
--

DROP TABLE IF EXISTS `studentportal_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_student` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_stall_owner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_user`
--

LOCK TABLES `studentportal_user` WRITE;
/*!40000 ALTER TABLE `studentportal_user` DISABLE KEYS */;
INSERT INTO `studentportal_user` VALUES (1,'pbkdf2_sha256$216000$drShUEWU7ca2$hMQQL9z8aNnePaybGyRk27mohIIU9tVH+xb8J7NdJZ0=',NULL,1,'admin','','','demo@email.com',1,'2021-04-18 04:40:45.147749',0,1,0),(6,'pbkdf2_sha256$216000$EL2hDPjjsEXR$FWRfg4qnYyfbwS7AwdgIaP+kC+NH2A5wX/KI/9KToUc=',NULL,0,'sakib1127','Sakib','Rahman','demo@email.com',1,'2021-04-18 05:03:01.059943',0,0,1),(7,'pbkdf2_sha256$216000$D4inf12X0xAe$YoWvCshsx5gBRR/OxnDLiBvYYpQK+UWtECq7Xmg0KLw=',NULL,0,'limon','Limon','Safayet','demo@email.com',1,'2021-04-18 05:10:38.160806',0,0,1),(8,'pbkdf2_sha256$216000$47EblGhtcmre$tV7F5/3pEyRE15V2v7G4bCSIEnF0AVD1KWPE4cCBxb8=',NULL,0,'istiak22','Istiak','Ahmed','demo@email.com',1,'2021-04-18 06:59:03.130956',1,0,0),(9,'pbkdf2_sha256$216000$fVWCJGiq6l8R$ovlu2YxX0Z8POQD5664fyfOiOnZWtkc4qfpLUBKblIE=',NULL,0,'limon28','Limon','Safayet','demo@email.com',1,'2021-04-18 09:23:44.616210',1,0,0);
/*!40000 ALTER TABLE `studentportal_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_user_groups`
--

DROP TABLE IF EXISTS `studentportal_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `studentportal_user_groups_user_id_group_id_05ae2219_uniq` (`user_id`,`group_id`),
  KEY `studentportal_user_groups_group_id_c84affbe_fk_auth_group_id` (`group_id`),
  CONSTRAINT `studentportal_user_g_user_id_d75bc96d_fk_studentpo` FOREIGN KEY (`user_id`) REFERENCES `studentportal_user` (`id`),
  CONSTRAINT `studentportal_user_groups_group_id_c84affbe_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_user_groups`
--

LOCK TABLES `studentportal_user_groups` WRITE;
/*!40000 ALTER TABLE `studentportal_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentportal_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_user_user_permissions`
--

DROP TABLE IF EXISTS `studentportal_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `studentportal_user_user__user_id_permission_id_d5db0cbf_uniq` (`user_id`,`permission_id`),
  KEY `studentportal_user_u_permission_id_d63b6574_fk_auth_perm` (`permission_id`),
  CONSTRAINT `studentportal_user_u_permission_id_d63b6574_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `studentportal_user_u_user_id_decdef93_fk_studentpo` FOREIGN KEY (`user_id`) REFERENCES `studentportal_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_user_user_permissions`
--

LOCK TABLES `studentportal_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `studentportal_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentportal_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-19 11:37:17
