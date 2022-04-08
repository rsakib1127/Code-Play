-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: CareerCrew
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add course module',7,'add_coursemodule'),(26,'Can change course module',7,'change_coursemodule'),(27,'Can delete course module',7,'delete_coursemodule'),(28,'Can view course module',7,'view_coursemodule'),(29,'Can add live session',8,'add_livesession'),(30,'Can change live session',8,'change_livesession'),(31,'Can delete live session',8,'delete_livesession'),(32,'Can view live session',8,'view_livesession'),(33,'Can add material',9,'add_material'),(34,'Can change material',9,'change_material'),(35,'Can delete material',9,'delete_material'),(36,'Can view material',9,'view_material'),(37,'Can add student',10,'add_student'),(38,'Can change student',10,'change_student'),(39,'Can delete student',10,'delete_student'),(40,'Can view student',10,'view_student'),(41,'Can add teacher',11,'add_teacher'),(42,'Can change teacher',11,'change_teacher'),(43,'Can delete teacher',11,'delete_teacher'),(44,'Can view teacher',11,'view_teacher'),(45,'Can add purchased module',12,'add_purchasedmodule'),(46,'Can change purchased module',12,'change_purchasedmodule'),(47,'Can delete purchased module',12,'delete_purchasedmodule'),(48,'Can view purchased module',12,'view_purchasedmodule'),(49,'Can add course',13,'add_course'),(50,'Can change course',13,'change_course'),(51,'Can delete course',13,'delete_course'),(52,'Can view course',13,'view_course'),(53,'Can add Token',14,'add_token'),(54,'Can change Token',14,'change_token'),(55,'Can delete Token',14,'delete_token'),(56,'Can view Token',14,'view_token'),(57,'Can add token',15,'add_tokenproxy'),(58,'Can change token',15,'change_tokenproxy'),(59,'Can delete token',15,'delete_tokenproxy'),(60,'Can view token',15,'view_tokenproxy');
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
  CONSTRAINT `authtoken_token_user_id_35299eff_fk` FOREIGN KEY (`user_id`) REFERENCES `studentportal_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
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
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `studentportal_user` (`id`),
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(14,'authtoken','token'),(15,'authtoken','tokenproxy'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(13,'studentportal','course'),(7,'studentportal','coursemodule'),(8,'studentportal','livesession'),(9,'studentportal','material'),(12,'studentportal','purchasedmodule'),(10,'studentportal','student'),(11,'studentportal','teacher'),(6,'studentportal','user');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-04-28 03:08:57.911875'),(2,'contenttypes','0002_remove_content_type_name','2021-04-28 03:08:58.440303'),(3,'auth','0001_initial','2021-04-28 03:08:58.715422'),(4,'auth','0002_alter_permission_name_max_length','2021-04-28 03:08:59.622644'),(5,'auth','0003_alter_user_email_max_length','2021-04-28 03:08:59.642198'),(6,'auth','0004_alter_user_username_opts','2021-04-28 03:08:59.657311'),(7,'auth','0005_alter_user_last_login_null','2021-04-28 03:08:59.672166'),(8,'auth','0006_require_contenttypes_0002','2021-04-28 03:08:59.686736'),(9,'auth','0007_alter_validators_add_error_messages','2021-04-28 03:08:59.703617'),(10,'auth','0008_alter_user_username_max_length','2021-04-28 03:08:59.719869'),(11,'auth','0009_alter_user_last_name_max_length','2021-04-28 03:08:59.736774'),(12,'auth','0010_alter_group_name_max_length','2021-04-28 03:08:59.776840'),(13,'auth','0011_update_proxy_permissions','2021-04-28 03:08:59.793385'),(14,'auth','0012_alter_user_first_name_max_length','2021-04-28 03:08:59.813472'),(15,'studentportal','0001_initial','2021-04-28 03:09:01.112038'),(16,'admin','0001_initial','2021-04-28 03:09:04.290875'),(17,'admin','0002_logentry_remove_auto_add','2021-04-28 03:09:05.015852'),(18,'admin','0003_logentry_add_action_flag_choices','2021-04-28 03:09:05.033082'),(19,'authtoken','0001_initial','2021-04-28 03:09:05.157219'),(20,'authtoken','0002_auto_20160226_1747','2021-04-28 03:09:05.610465'),(21,'authtoken','0003_tokenproxy','2021-04-28 03:09:05.623753'),(22,'sessions','0001_initial','2021-04-28 03:09:05.712870'),(23,'studentportal','0002_auto_20210429_0530','2021-04-29 05:31:15.324868'),(24,'studentportal','0003_auto_20210429_0637','2021-04-29 06:37:28.881201');
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
-- Table structure for table `studentportal_course`
--

DROP TABLE IF EXISTS `studentportal_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) NOT NULL,
  `course_description` varchar(500) NOT NULL,
  `photo` varchar(400) NOT NULL,
  `price` int NOT NULL,
  `listening_module_id` int NOT NULL,
  `reading_module_id` int NOT NULL,
  `speaking_module_id` int NOT NULL,
  `writing_module_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studentportal_course_teacher_id_3fdfe386_fk_studentpo` (`teacher_id`),
  KEY `studentportal_course_listening_module_id_3020aee0_fk` (`listening_module_id`),
  KEY `studentportal_course_reading_module_id_72b9c38e_fk` (`reading_module_id`),
  KEY `studentportal_course_speaking_module_id_d6aa7148_fk` (`speaking_module_id`),
  KEY `studentportal_course_writing_module_id_85ca704c_fk` (`writing_module_id`),
  CONSTRAINT `studentportal_course_listening_module_id_3020aee0_fk` FOREIGN KEY (`listening_module_id`) REFERENCES `studentportal_coursemodule` (`id`),
  CONSTRAINT `studentportal_course_reading_module_id_72b9c38e_fk` FOREIGN KEY (`reading_module_id`) REFERENCES `studentportal_coursemodule` (`id`),
  CONSTRAINT `studentportal_course_speaking_module_id_d6aa7148_fk` FOREIGN KEY (`speaking_module_id`) REFERENCES `studentportal_coursemodule` (`id`),
  CONSTRAINT `studentportal_course_teacher_id_3fdfe386_fk_studentpo` FOREIGN KEY (`teacher_id`) REFERENCES `studentportal_teacher` (`user_id`),
  CONSTRAINT `studentportal_course_writing_module_id_85ca704c_fk` FOREIGN KEY (`writing_module_id`) REFERENCES `studentportal_coursemodule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_course`
--

LOCK TABLES `studentportal_course` WRITE;
/*!40000 ALTER TABLE `studentportal_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentportal_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_coursemodule`
--

DROP TABLE IF EXISTS `studentportal_coursemodule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_coursemodule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `module_type` smallint unsigned NOT NULL,
  `title` varchar(250) NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `upload_date` date NOT NULL,
  `price` int NOT NULL,
  `total_sell` int NOT NULL,
  `teacher_id` int NOT NULL,
  `object_type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studentportal_course_teacher_id_669d3799_fk_studentpo` (`teacher_id`),
  CONSTRAINT `studentportal_course_teacher_id_669d3799_fk_studentpo` FOREIGN KEY (`teacher_id`) REFERENCES `studentportal_teacher` (`user_id`),
  CONSTRAINT `studentportal_coursemodule_chk_1` CHECK ((`module_type` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_coursemodule`
--

LOCK TABLES `studentportal_coursemodule` WRITE;
/*!40000 ALTER TABLE `studentportal_coursemodule` DISABLE KEYS */;
INSERT INTO `studentportal_coursemodule` VALUES (1,1,'Listening Module Testing','basic_english_communication_skill_Z45SUzZ.png','basic_english_communication_skill_PyReQib.png','Testing Course Upload method','2021-04-28',100,2,2,'course_module'),(2,2,'Reading module Testing','basic_english_communication_skill_ZoEJtEx.png','basic_english_communication_skill_t3q4tpN.png','Testing Course Upload method','2021-04-28',120,0,2,'course_module'),(3,3,'Writing Module Testing','basic_english_communication_skill_38051g8.png','basic_english_communication_skill_kFMBpB2.png','Testing Course Upload method','2021-04-28',130,0,2,'course_module'),(4,4,'Speaking Module Testing','basic_english_communication_skill_vjfKa5Y.png','basic_english_communication_skill_bLAPmUw.png','Testing Course Upload method','2021-04-28',150,0,2,'course_module'),(6,3,'Writing Module Testing 2','basic_english_communication_skill_yjA61dX.png','basic_english_communication_skill_04C71kl.png','Testing Course Upload method','2021-04-29',100,0,3,'course_module'),(7,1,'Listening Module Test 2','basic_english_communication_skill_9ElPtGd.png','basic_english_communication_skill_rFsYjHc.png','Testing Course Upload method','2021-04-29',120,0,3,'course_module'),(8,1,'Listening Module Test 3','basic_english_communication_skill_BNiLbIP.png','basic_english_communication_skill_lZLCCFT.png','Testing Course Upload method','2021-04-29',120,0,2,'course_module'),(9,5,'Video Book Material','basic_english_communication_skill_NIhVB3m.png','basic_english_communication_skill_9qb7Wmx.png','Testing Course Upload method','2021-04-29',120,0,3,'course_module');
/*!40000 ALTER TABLE `studentportal_coursemodule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_livesession`
--

DROP TABLE IF EXISTS `studentportal_livesession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_livesession` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(800) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `timelength` varchar(20) NOT NULL,
  `photo` varchar(400) NOT NULL,
  `session_date` date NOT NULL,
  `conference_url` varchar(1500) NOT NULL,
  `price` int NOT NULL,
  `total_sell` int NOT NULL,
  `teacher_id` int NOT NULL,
  `object_type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studentportal_livese_teacher_id_84e03874_fk_studentpo` (`teacher_id`),
  CONSTRAINT `studentportal_livese_teacher_id_84e03874_fk_studentpo` FOREIGN KEY (`teacher_id`) REFERENCES `studentportal_teacher` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_livesession`
--

LOCK TABLES `studentportal_livesession` WRITE;
/*!40000 ALTER TABLE `studentportal_livesession` DISABLE KEYS */;
INSERT INTO `studentportal_livesession` VALUES (1,'Testing Session','Testing session description','1.00-2.00 pm','basic_english_communication_skill_jSWaYGc.png','2021-04-29','www.youtube.com',100,0,2,'live_session');
/*!40000 ALTER TABLE `studentportal_livesession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_material`
--

DROP TABLE IF EXISTS `studentportal_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_material` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` int NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `upload_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_material`
--

LOCK TABLES `studentportal_material` WRITE;
/*!40000 ALTER TABLE `studentportal_material` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentportal_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_purchasedmodule`
--

DROP TABLE IF EXISTS `studentportal_purchasedmodule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_purchasedmodule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` int NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `coursemodules_id` int DEFAULT NULL,
  `livesession_id` int DEFAULT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studentportal_purcha_student_id_f7b194f1_fk_studentpo` (`student_id`),
  KEY `studentportal_purchasedmodule_coursemodules_id_b474f8ae_fk` (`coursemodules_id`),
  KEY `studentportal_purchasedmodule_livesession_id_2f6c0175_fk` (`livesession_id`),
  CONSTRAINT `studentportal_purcha_student_id_f7b194f1_fk_studentpo` FOREIGN KEY (`student_id`) REFERENCES `studentportal_student` (`user_id`),
  CONSTRAINT `studentportal_purchasedmodule_coursemodules_id_b474f8ae_fk` FOREIGN KEY (`coursemodules_id`) REFERENCES `studentportal_coursemodule` (`id`),
  CONSTRAINT `studentportal_purchasedmodule_livesession_id_2f6c0175_fk` FOREIGN KEY (`livesession_id`) REFERENCES `studentportal_livesession` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_purchasedmodule`
--

LOCK TABLES `studentportal_purchasedmodule` WRITE;
/*!40000 ALTER TABLE `studentportal_purchasedmodule` DISABLE KEYS */;
INSERT INTO `studentportal_purchasedmodule` VALUES (1,100,1,1,NULL,1),(5,100,1,1,NULL,1),(6,100,1,1,NULL,1);
/*!40000 ALTER TABLE `studentportal_purchasedmodule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_student`
--

DROP TABLE IF EXISTS `studentportal_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_student` (
  `user_id` int NOT NULL,
  `birth_date` date NOT NULL,
  `photo` varchar(400) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `studentportal_student_user_id_3cc84282_fk` FOREIGN KEY (`user_id`) REFERENCES `studentportal_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_student`
--

LOCK TABLES `studentportal_student` WRITE;
/*!40000 ALTER TABLE `studentportal_student` DISABLE KEYS */;
INSERT INTO `studentportal_student` VALUES (1,'2021-04-27','basic_english_communication_skill_wTBoMRv.png');
/*!40000 ALTER TABLE `studentportal_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentportal_teacher`
--

DROP TABLE IF EXISTS `studentportal_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentportal_teacher` (
  `user_id` int NOT NULL,
  `photo` varchar(400) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `bio` varchar(1200) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `studentportal_teacher_user_id_39521eaa_fk` FOREIGN KEY (`user_id`) REFERENCES `studentportal_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_teacher`
--

LOCK TABLES `studentportal_teacher` WRITE;
/*!40000 ALTER TABLE `studentportal_teacher` DISABLE KEYS */;
INSERT INTO `studentportal_teacher` VALUES (2,'basic_english_communication_skill_dhM6zVb.png',0,'Testing Bio'),(3,'basic_english_communication_skill_hMyonpO.png',0,'Testing Bio');
/*!40000 ALTER TABLE `studentportal_teacher` ENABLE KEYS */;
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
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_student` tinyint(1) NOT NULL,
  `is_teacher` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentportal_user`
--

LOCK TABLES `studentportal_user` WRITE;
/*!40000 ALTER TABLE `studentportal_user` DISABLE KEYS */;
INSERT INTO `studentportal_user` VALUES (1,'pbkdf2_sha256$216000$ntm1PgH21uEi$ONT8kzgw3h9zOtomSMjWotnGincYcB2Id4fDZAHRpsc=',NULL,0,'istiak22','Sakib','Rahman','demo@email.com',0,1,'2021-04-28 03:10:04.788655',1,0,0),(2,'pbkdf2_sha256$216000$YLoCE2wY8iDK$e3LQ6WqrH84VqcrdjBW884okJFalRVSCauxpd/c91Rw=',NULL,0,'limon28','Limon','Safayet','demo@email.com',0,1,'2021-04-28 03:10:32.135037',0,1,0),(3,'pbkdf2_sha256$216000$U2PgLjiCRABi$Lt1d8pi99NSMgxUNPjPfyyRbKmkEdNyCnHr5L2SdZ6E=',NULL,0,'limon2811','Sakib','Safayet','demo@email.com',0,1,'2021-04-29 01:32:30.396444',0,1,0);
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
  CONSTRAINT `studentportal_user_u_permission_id_d63b6574_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
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

-- Dump completed on 2021-04-29 12:44:03
