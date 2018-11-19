CREATE DATABASE  IF NOT EXISTS `kadinet` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `kadinet`;
-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: kadinet
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
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
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (95,'data','f','0','0컨텐츠임','bumzzang94','2018-11-19 19:50:09',0),(96,'data','f','1','1컨텐츠임','bumzzang94','2018-11-19 19:50:09',1),(97,'data','f','2','2컨텐츠임','bumzzang94','2018-11-19 19:50:09',2),(98,'data','f','3','3컨텐츠임','bumzzang94','2018-11-19 19:50:09',3),(99,'data','f','4','4컨텐츠임','bumzzang94','2018-11-19 19:50:09',4),(100,'data','f','5','5컨텐츠임','bumzzang94','2018-11-19 19:50:09',5),(101,'data','f','6','6컨텐츠임','bumzzang94','2018-11-19 19:50:09',6),(102,'data','f','7','7컨텐츠임','bumzzang94','2018-11-19 19:50:09',7),(103,'data','f','8','8컨텐츠임','bumzzang94','2018-11-19 19:50:09',8),(104,'data','f','9','9컨텐츠임','bumzzang94','2018-11-19 19:50:09',9),(105,'notice','f','0','0컨텐츠임','bumzzang94','2018-11-19 19:50:09',0),(106,'notice','t','1','1컨텐츠임','bumzzang94','2018-11-19 19:50:09',1),(107,'notice','f','2','2컨텐츠임','bumzzang94','2018-11-19 19:50:09',2),(108,'notice','f','3','3컨텐츠임','bumzzang94','2018-11-19 19:50:09',3),(109,'notice','f','4','4컨텐츠임','bumzzang94','2018-11-19 19:50:09',4),(110,'notice','f','5','5컨텐츠임','bumzzang94','2018-11-19 19:50:09',5),(111,'notice','f','6','6컨텐츠임','bumzzang94','2018-11-19 19:50:09',6),(112,'notice','f','7','7컨텐츠임','bumzzang94','2018-11-19 19:50:09',7),(113,'notice','f','8','8컨텐츠임','bumzzang94','2018-11-19 19:50:09',8),(114,'notice','f','9','9컨텐츠임','bumzzang94','2018-11-19 19:50:09',9),(115,'press','f','0','0컨텐츠임','bumzzang94','2018-11-19 19:50:09',0),(116,'press','f','1','1컨텐츠임','bumzzang94','2018-11-19 19:50:09',1),(117,'press','f','2','2컨텐츠임','bumzzang94','2018-11-19 19:50:09',2),(118,'press','f','3','3컨텐츠임','bumzzang94','2018-11-19 19:50:09',3),(119,'press','f','4','4컨텐츠임','bumzzang94','2018-11-19 19:50:09',4),(120,'press','f','5','5컨텐츠임','bumzzang94','2018-11-19 19:50:09',5),(121,'press','f','6','6컨텐츠임','bumzzang94','2018-11-19 19:50:09',6),(122,'press','f','7','7컨텐츠임','bumzzang94','2018-11-19 19:50:09',7),(123,'press','f','8','8컨텐츠임','bumzzang94','2018-11-19 19:50:09',8),(124,'press','f','9','9컨텐츠임','bumzzang94','2018-11-19 19:50:09',9),(125,'data','f','0','0컨텐츠임','bumzzang94','2018-11-19 19:50:38',0),(126,'data','f','1','1컨텐츠임','bumzzang94','2018-11-19 19:50:38',1),(127,'data','f','2','2컨텐츠임','bumzzang94','2018-11-19 19:50:38',2),(128,'data','f','3','3컨텐츠임','bumzzang94','2018-11-19 19:50:38',3),(129,'data','f','4','4컨텐츠임','bumzzang94','2018-11-19 19:50:38',4),(130,'data','f','5','5컨텐츠임','bumzzang94','2018-11-19 19:50:38',5),(131,'data','f','6','6컨텐츠임','bumzzang94','2018-11-19 19:50:38',6),(132,'data','f','7','7컨텐츠임','bumzzang94','2018-11-19 19:50:38',7),(133,'data','f','8','8컨텐츠임','bumzzang94','2018-11-19 19:50:38',8),(134,'data','f','9','9컨텐츠임','bumzzang94','2018-11-19 19:50:38',9),(135,'notice','f','0','0컨텐츠임','bumzzang94','2018-11-19 19:50:38',0),(136,'notice','f','1','1컨텐츠임','bumzzang94','2018-11-19 19:50:38',1),(137,'notice','f','2','2컨텐츠임','bumzzang94','2018-11-19 19:50:38',2),(138,'notice','f','3','3컨텐츠임','bumzzang94','2018-11-19 19:50:39',3),(139,'notice','f','4','4컨텐츠임','bumzzang94','2018-11-19 19:50:39',4),(140,'notice','f','5','5컨텐츠임','bumzzang94','2018-11-19 19:50:39',5),(141,'notice','f','6','6컨텐츠임','bumzzang94','2018-11-19 19:50:39',6),(142,'notice','f','7','7컨텐츠임','bumzzang94','2018-11-19 19:50:39',7),(143,'notice','f','8','8컨텐츠임','bumzzang94','2018-11-19 19:50:39',8),(144,'notice','t','9','9컨텐츠임','bumzzang94','2018-11-19 19:50:39',9),(145,'press','f','0','0컨텐츠임','bumzzang94','2018-11-19 19:50:39',0),(146,'press','f','1','1컨텐츠임','bumzzang94','2018-11-19 19:50:39',1),(147,'press','f','2','2컨텐츠임','bumzzang94','2018-11-19 19:50:39',2),(148,'press','f','3','3컨텐츠임','bumzzang94','2018-11-19 19:50:39',3),(149,'press','f','4','4컨텐츠임','bumzzang94','2018-11-19 19:50:39',4),(150,'press','f','5','5컨텐츠임','bumzzang94','2018-11-19 19:50:39',5),(151,'press','f','6','6컨텐츠임','bumzzang94','2018-11-19 19:50:39',6),(152,'press','f','7','7컨텐츠임','bumzzang94','2018-11-19 19:50:39',7),(153,'press','f','8','8컨텐츠임','bumzzang94','2018-11-19 19:50:39',8),(154,'press','f','9','9컨텐츠임','bumzzang94','2018-11-19 19:50:39',9),(155,'notice','f','0','asdf','bumzzang94','2018-11-19 19:50:39',1111);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_file`
--

DROP TABLE IF EXISTS `notice_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
INSERT INTO `notice_file` VALUES (1,155,1,'181011_기술지킴서비스_수기공모전_개최_공고문_및_기타양식.hwp','asdf','21212'),(2,155,2,'제3차_중소기업_기술보호_실무_역량강화_교육안내_181205.pdf','a','2'),(3,143,1,'file1','1','1'),(4,143,2,'file2','1','12');
/*!40000 ALTER TABLE `notice_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
INSERT INTO `user` VALUES ('bumzzang94','Parkjaebum2@','박재범','234@naver.com','01041572817','2018-11-19 18:36:28','2018-11-19 18:53:55','X','O','07049','서울 동작구 양녕로 153-9 (상도동, 약수선원)','234','1');
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

-- Dump completed on 2018-11-20  1:58:55
