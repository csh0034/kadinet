CREATE DATABASE  IF NOT EXISTS `kadinet` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `kadinet`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: kadinet
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
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `notice_no` int(15) NOT NULL AUTO_INCREMENT,
  `notice_category` varchar(20) NOT NULL,
  `notice_bool` varchar(10) NOT NULL,
  `notice_title` varchar(80) NOT NULL,
  `notice_content` text NOT NULL,
  `user_id` varchar(80) NOT NULL,
  `notice_regdate` datetime NOT NULL,
  `notice_hit` int(15) NOT NULL,
  PRIMARY KEY (`notice_no`),
  KEY `user_id_fk` (`user_id`),
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_file`
--

DROP TABLE IF EXISTS `notice_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice_file` (
  `file_no` int(15) NOT NULL,
  `notice_no` int(15) NOT NULL,
  `file_order` int(15) NOT NULL,
  `file_oriname` varchar(100) NOT NULL,
  `file_rename` varchar(100) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  PRIMARY KEY (`file_no`),
  KEY `notice_no_fk` (`notice_no`),
  CONSTRAINT `notice_no_fk` FOREIGN KEY (`notice_no`) REFERENCES `notice` (`notice_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_file`
--

LOCK TABLES `notice_file` WRITE;
/*!40000 ALTER TABLE `notice_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` varchar(80) NOT NULL,
  `user_pw` varchar(80) NOT NULL,
  `user_name` varchar(80) NOT NULL,
  `user_email` varchar(80) NOT NULL,
  `user_phone` varchar(40) NOT NULL,
  `user_regdate` datetime NOT NULL,
  `user_last_login` datetime NOT NULL,
  `user_email_receive` varchar(40) NOT NULL,
  `user_sms_receive` varchar(40) NOT NULL,
  `user_zip_code` varchar(10) NOT NULL,
  `user_addr1` varchar(80) NOT NULL,
  `user_addr2` varchar(80) NOT NULL,
  `user_authority` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2018-11-19 17:35:09
