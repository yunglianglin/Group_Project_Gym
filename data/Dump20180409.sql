-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: db_django
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add auth group',7,'add_authgroup'),(20,'Can change auth group',7,'change_authgroup'),(21,'Can delete auth group',7,'delete_authgroup'),(22,'Can add auth group permissions',8,'add_authgrouppermissions'),(23,'Can change auth group permissions',8,'change_authgrouppermissions'),(24,'Can delete auth group permissions',8,'delete_authgrouppermissions'),(25,'Can add auth permission',9,'add_authpermission'),(26,'Can change auth permission',9,'change_authpermission'),(27,'Can delete auth permission',9,'delete_authpermission'),(28,'Can add auth user',10,'add_authuser'),(29,'Can change auth user',10,'change_authuser'),(30,'Can delete auth user',10,'delete_authuser'),(31,'Can add auth user groups',11,'add_authusergroups'),(32,'Can change auth user groups',11,'change_authusergroups'),(33,'Can delete auth user groups',11,'delete_authusergroups'),(34,'Can add auth user user permissions',12,'add_authuseruserpermissions'),(35,'Can change auth user user permissions',12,'change_authuseruserpermissions'),(36,'Can delete auth user user permissions',12,'delete_authuseruserpermissions'),(37,'Can add django admin log',13,'add_djangoadminlog'),(38,'Can change django admin log',13,'change_djangoadminlog'),(39,'Can delete django admin log',13,'delete_djangoadminlog'),(40,'Can add django content type',14,'add_djangocontenttype'),(41,'Can change django content type',14,'change_djangocontenttype'),(42,'Can delete django content type',14,'delete_djangocontenttype'),(43,'Can add django migrations',15,'add_djangomigrations'),(44,'Can change django migrations',15,'change_djangomigrations'),(45,'Can delete django migrations',15,'delete_djangomigrations'),(46,'Can add django session',16,'add_djangosession'),(47,'Can change django session',16,'change_djangosession'),(48,'Can delete django session',16,'delete_djangosession'),(49,'Can add words',17,'add_words'),(50,'Can change words',17,'change_words'),(51,'Can delete words',17,'delete_words');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'gym','authgroup'),(8,'gym','authgrouppermissions'),(9,'gym','authpermission'),(10,'gym','authuser'),(11,'gym','authusergroups'),(12,'gym','authuseruserpermissions'),(13,'gym','djangoadminlog'),(14,'gym','djangocontenttype'),(15,'gym','djangomigrations'),(16,'gym','djangosession'),(17,'gym','words'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-04-08 13:12:26.973571'),(2,'auth','0001_initial','2018-04-08 13:12:33.546521'),(3,'admin','0001_initial','2018-04-08 13:12:34.946602'),(4,'admin','0002_logentry_remove_auto_add','2018-04-08 13:12:35.024756'),(5,'contenttypes','0002_remove_content_type_name','2018-04-08 13:12:36.008704'),(6,'auth','0002_alter_permission_name_max_length','2018-04-08 13:12:36.667393'),(7,'auth','0003_alter_user_email_max_length','2018-04-08 13:12:37.305660'),(8,'auth','0004_alter_user_username_opts','2018-04-08 13:12:37.368163'),(9,'auth','0005_alter_user_last_login_null','2018-04-08 13:12:38.075089'),(10,'auth','0006_require_contenttypes_0002','2018-04-08 13:12:38.137582'),(11,'auth','0007_alter_validators_add_error_messages','2018-04-08 13:12:38.168801'),(12,'auth','0008_alter_user_username_max_length','2018-04-08 13:12:39.224578'),(13,'auth','0009_alter_user_last_name_max_length','2018-04-08 13:12:40.187656'),(14,'gym','0001_initial','2018-04-08 13:12:40.250143'),(15,'sessions','0001_initial','2018-04-08 13:12:40.734549');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words`
--

DROP TABLE IF EXISTS `words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `words` (
  `word` text,
  `freq` bigint(20) DEFAULT NULL,
  `pub_date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES ('小姐',97,'2018-02-15'),('好奇',97,'2018-02-15'),('好看',93,'2018-02-15'),('運動',86,'2018-02-15'),('完全沒有',75,'2018-02-15'),('謝謝',74,'2018-02-15'),('小小',63,'2018-02-15'),('健身房',60,'2018-02-15'),('健身',60,'2018-02-15'),('好處',58,'2018-02-15'),('肌肉',58,'2018-02-15'),('訓練',56,'2018-02-15'),('動作',53,'2018-02-15'),('教練',51,'2018-02-15'),('最近',47,'2018-02-15'),('時間',47,'2018-02-15'),('巨巨',47,'2018-02-15'),('如題',46,'2018-02-15'),('目前',46,'2018-02-15'),('問題',46,'2018-02-15'),('有沒有',43,'2018-02-15'),('重訓',42,'2018-02-15'),('方式',40,'2018-02-15'),('姿勢',40,'2018-02-15'),('比較',39,'2018-02-15'),('希望',38,'2018-02-15'),('好多',37,'2018-02-15'),('器材',37,'2018-02-15'),('影片',37,'2018-02-15'),('轉讓',36,'2018-02-15'),('完全沒',36,'2018-02-15'),('小心',36,'2018-02-15'),('不知道',36,'2018-02-15'),('需要',34,'2018-02-15'),('發現',34,'2018-02-15'),('價格',32,'2018-02-15'),('之前',32,'2018-02-15'),('體重',32,'2018-02-15'),('重量',32,'2018-02-15'),('深蹲',32,'2018-02-15'),('使用',31,'2018-02-15'),('推薦',31,'2018-02-15'),('朋友',31,'2018-02-15'),('有點',30,'2018-02-15'),('小時',30,'2018-02-15'),('內容',29,'2018-02-15'),('會籍',27,'2018-02-15'),('辦理',27,'2018-02-15'),('媽媽',27,'2018-02-15'),('完全',27,'2018-02-15'),('之後',27,'2018-02-15'),('硬舉',27,'2018-02-15'),('乳清',27,'2018-02-15'),('存在',26,'2018-02-15'),('一次',25,'2018-02-15'),('聯絡',25,'2018-02-15'),('課程',25,'2018-02-15'),('健康',25,'2018-02-15'),('資訊',25,'2018-02-15'),('公斤',24,'2018-02-15'),('過年',24,'2018-02-15'),('身體',24,'2018-02-15'),('不太',24,'2018-02-15'),('啞鈴',24,'2018-02-15'),('受傷',24,'2018-02-15'),('台北',23,'2018-02-15'),('費用',23,'2018-02-15'),('交易',22,'2018-02-15'),('附近',22,'2018-02-15'),('學校',21,'2018-02-15'),('麻煩',21,'2018-02-15'),('兩個',21,'2018-02-15'),('工作',21,'2018-02-15'),('有氧',21,'2018-02-15'),('有人',21,'2018-02-15'),('脂肪',21,'2018-02-15'),('蛋白質',21,'2018-02-15'),('接觸',21,'2018-02-15'),('增加',21,'2018-02-15'),('建議',21,'2018-02-15'),('真的',21,'2018-02-15'),('感謝',20,'2018-02-15'),('左右',20,'2018-02-15'),('休息',20,'2018-02-15'),('臥推',20,'2018-02-15'),('針對',20,'2018-02-15'),('狀況',20,'2018-02-15'),('面交',20,'2018-02-15'),('完整',86,'2018-03-15'),('鼓勵',74,'2018-03-15'),('導致',74,'2018-03-15'),('完成',66,'2018-03-15'),('謝謝',56,'2018-03-15'),('好好',55,'2018-03-15'),('好想',53,'2018-03-15'),('好奇',51,'2018-03-15'),('小姐',50,'2018-03-15'),('好看',46,'2018-03-15'),('運動',45,'2018-03-15'),('完全沒有',41,'2018-03-15'),('希望',36,'2018-03-15'),('好處',35,'2018-03-15'),('小小',33,'2018-03-15'),('轉讓',31,'2018-03-15'),('方式',31,'2018-03-15'),('健身',31,'2018-03-15'),('健身房',31,'2018-03-15'),('如題',30,'2018-03-15'),('訓練',30,'2018-03-15'),('巨巨',27,'2018-03-15'),('最近',27,'2018-03-15'),('使用',26,'2018-03-15'),('教練',26,'2018-03-15'),('姿勢',25,'2018-03-15'),('會籍',24,'2018-03-15'),('目前',24,'2018-03-15'),('好多',23,'2018-03-15'),('影片',23,'2018-03-15'),('重訓',23,'2018-03-15'),('價格',22,'2018-03-15'),('問題',22,'2018-03-15'),('時間',22,'2018-03-15'),('會員',21,'2018-03-15'),('名稱',21,'2018-03-15'),('左右',21,'2018-03-15'),('聯絡',20,'2018-03-15'),('地點',20,'2018-03-15'),('比較',20,'2018-03-15'),('器材',20,'2018-03-15'),('完全沒有',95,'2018-01-15'),('運動',88,'2018-01-15'),('小小',81,'2018-01-15'),('好處',79,'2018-01-15'),('如題',71,'2018-01-15'),('方式',67,'2018-01-15'),('健身房',66,'2018-01-15'),('轉讓',63,'2018-01-15'),('使用',62,'2018-01-15'),('健身',62,'2018-01-15'),('巨巨',61,'2018-01-15'),('訓練',59,'2018-01-15'),('好多',58,'2018-01-15'),('教練',57,'2018-01-15'),('動作',57,'2018-01-15'),('姿勢',55,'2018-01-15'),('問題',51,'2018-01-15'),('會籍',50,'2018-01-15'),('小心',49,'2018-01-15'),('影片',47,'2018-01-15'),('聯絡',45,'2018-01-15'),('完全沒',45,'2018-01-15'),('最近',45,'2018-01-15'),('價格',43,'2018-01-15'),('時間',43,'2018-01-15'),('小時',41,'2018-01-15'),('肌肉',41,'2018-01-15'),('感謝',40,'2018-01-15'),('目前',40,'2018-01-15'),('意者',39,'2018-01-15'),('媽媽',38,'2018-01-15'),('朋友',38,'2018-01-15'),('面交',38,'2018-01-15'),('有人',37,'2018-01-15'),('需要',37,'2018-01-15'),('不知道',36,'2018-01-15'),('費用',35,'2018-01-15'),('有沒有',35,'2018-01-15'),('之前',35,'2018-01-15'),('課程',34,'2018-01-15'),('建議',34,'2018-01-15'),('存在',33,'2018-01-15'),('資訊',33,'2018-01-15'),('希望',33,'2018-01-15'),('深蹲',33,'2018-01-15'),('真的',33,'2018-01-15'),('會員',32,'2018-01-15'),('情況',32,'2018-01-15'),('身體',32,'2018-01-15'),('台北',31,'2018-01-15'),('地點',31,'2018-01-15'),('內容',31,'2018-01-15'),('乳清',31,'2018-01-15'),('有點',30,'2018-01-15'),('工作',30,'2018-01-15'),('器材',30,'2018-01-15'),('狀況',30,'2018-01-15'),('重訓',30,'2018-01-15'),('健康',30,'2018-01-15'),('比較',30,'2018-01-15'),('名稱',29,'2018-01-15'),('重量',29,'2018-01-15'),('交易',28,'2018-01-15'),('位置',27,'2018-01-15'),('公斤',27,'2018-01-15'),('體重',27,'2018-01-15'),('分享',26,'2018-01-15'),('期限',26,'2018-01-15'),('發現',25,'2018-01-15'),('完全',25,'2018-01-15'),('之後',25,'2018-01-15'),('改善',25,'2018-01-15'),('學校',25,'2018-01-15'),('分鐘',24,'2018-01-15'),('一次',24,'2018-01-15'),('好吃',24,'2018-01-15'),('活動',24,'2018-01-15'),('左右',24,'2018-01-15'),('全新',24,'2018-01-15'),('關係',23,'2018-01-15'),('推薦',23,'2018-01-15'),('辦理',22,'2018-01-15'),('針對',22,'2018-01-15'),('熱量',22,'2018-01-15'),('醫師',22,'2018-01-15'),('一直',22,'2018-01-15'),('休息',22,'2018-01-15'),('一起',22,'2018-01-15'),('附近',22,'2018-01-15'),('數量',21,'2018-01-15'),('月費',21,'2018-01-15'),('脂肪',21,'2018-01-15'),('有氧',21,'2018-01-15'),('晚上',21,'2018-01-15'),('直接',21,'2018-01-15'),('說明',20,'2018-01-15'),('減肥',20,'2018-01-15'),('疾病',20,'2018-01-15'),('一年',20,'2018-01-15');
/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-09 11:15:25
