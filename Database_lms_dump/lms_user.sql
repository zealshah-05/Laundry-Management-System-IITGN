CREATE DATABASE  IF NOT EXISTS `lms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lms`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lms
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Email_id` varchar(80) NOT NULL,
  `Mobile_no` decimal(10,0) unsigned NOT NULL,
  `Password` varchar(24) NOT NULL,
  `ID_number` int unsigned NOT NULL,
  `Hostel_no` varchar(20) NOT NULL,
  PRIMARY KEY (`Email_id`),
  UNIQUE KEY `Email_id_UNIQUE` (`Email_id`),
  UNIQUE KEY `Mobile_no_UNIQUE` (`Mobile_no`),
  UNIQUE KEY `ID_number_UNIQUE` (`ID_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('alfred@comcast.net',9745220727,'3N9a8jsNLRSxJ7d',24110041,'L-102'),('aukjan@outlook.com',9745220719,'qqWjXGytV4zJvNJ',24110049,'L-104'),('blixem@comcast.net',9745220724,'YHxzj3d7CpkG3t5',24110044,'J-441'),('bryam@mac.com',9745220703,'JaUhDmaMFTr3vYz',24110065,'L-108'),('ccohen@yahoo.com',9745220710,'zTtaVAjpNXEfShk',24110058,'J-337'),('chrisk@sbcglobal.net',9745220717,'WVvHV3VPXsAwv3q',24110051,'K-774'),('cparis@sbcglobal.net',9745220723,'XM9DaUu3sa2Ag8b',24110045,'L-103'),('credmond@outlook.com',9745220683,'7MqrHhP9K6KKhZh',24110085,'L-111'),('dawnsong@sbcglobal.net',9745220699,'QJ8BDLz9bZZzb5y',24110069,'L-109'),('dsowsy@yahoo.ca',9745220704,'sG4qa3eVMb27Qsz',24110064,'J-446'),('esasaki@me.com',9745220682,'wg2GGmXvCZMfGkH',24110086,'J-342'),('gbacon@verizon.net',9745220716,'S7bkxb7xQYjTA4v',24110052,'J-443'),('geekoid@yahoo.com',9745220708,'vJexgZHWYxUWAdG',24110060,'J-124'),('gordonjcp@yahoo.com',9745220715,'kq4ytyYudyhj4Rz',24110053,'L-105'),('helger@gmail.com',9745220709,'g2TPgnT2NChdf7r',24110059,'K-776'),('hellfire@hotmail.com',9745220721,'H5nh7wfUEZ7ncYZ',24110047,'K-773'),('hoyer@aol.com',9745220706,'JCjQHSfH7gp8wUP',24110062,'J-338'),('isaacson@optonline.net',9745220696,'azXVMWH5cBAKN5Y',24110072,'J-448'),('ismail@optonline.net',9745220681,'dAH8utsbfrEAw38',24110087,'K-781'),('isotopian@optonline.net',9745220697,'XH4CeefGbWtyeX2',24110071,'K-779'),('jamuir@sbcglobal.net',9745220685,'SC2cCtwCBR3Fd8Y',24110083,'K-782'),('jeffcovey@outlook.com',9745220688,'exJ5xLN3u95G3Nq',24110080,'J-450'),('jespley@me.com',9745220714,'rWTFbR4ZeSnc6fK',24110054,'J-336'),('jhardin@icloud.com',9745220695,'nHYtBfcbjEZKa6k',24110073,'L-110'),('khris@msn.com',9745220689,'LVtsqZaQHHqa78K',24110079,'K-781'),('linuxhack@aol.com',9745220694,'4Pb3RFVbwTLydX3',24110074,'J-341'),('luvirini@optonline.net',9745220722,'2JumH3EfQvF5JFg',24110046,'J-334'),('mahbub@optonline.net',9745220729,'WzmwXEkqQCyYdcY',24110039,'K-771'),('matloff@gmail.com',9745220687,'nPbESkPpcLh4qQB',24110081,'L-112'),('metzzo@yahoo.com',9745220713,'LP7Z3RZ2wRJGVfq',24110055,'K-775'),('moxfulder@sbcglobal.net',9745220728,'3aQUs5PWHWWu9hF',24110040,'J-440'),('naupa@outlook.com',9745220701,'64eZeJKqrHaW4Mm',24110067,'K-778'),('nullchar@outlook.com',9745220711,'Nw5cLqDnbagy7zb',24110057,'L-106'),('parrt@aol.com',9745220726,'qyNfmfSRW4E25gf',24110042,'J-333'),('pemungkah@yahoo.ca',9745220705,'3pH9pYTujrTWCn8',24110063,'K-777'),('pjacklam@me.com',9745220700,'3ULQk9nFSKHpkse',24110068,'J-447'),('rfisher@comcast.net',9745220690,'29p5rruS8A5r3LX',24110078,'J-342'),('rgarton@hotmail.com',9745220684,'8ARfvBDsLkJBxaX',24110084,'J-451'),('rsteiner@outlook.com',9745220702,'Bu5hjZN2bP4LKkz',24110066,'J-339'),('saacson@mac.com',9745220730,'SJ48W759C3fwyVt',24110038,'J-332'),('seemant@yahoo.ca',9745220720,'neDcQrWbbxv3x9h',24110048,'J-442'),('sherzodr@gmail.com',9745220718,'jWWrTfgLufw4WR8',24110050,'J-335'),('simone@sbcglobal.net',9745220691,'Ybx82Zryu24veTs',24110077,'L-111'),('singh@mac.com',9745220698,'pg3mG2TDFxe3QLB',24110070,'J-340'),('tedrlord@sbcglobal.net',9745220693,'cdN8UVRrGWwUggV',24110075,'K-780'),('test@iitgn.ac.in',9714795078,'test123',22120054,'K-124'),('tlinden@yahoo.com',9745220692,'eQbDNArvJ2xP8GL',24110076,'J-449'),('zeal.shah@iitgn.ac.in',9714795075,'asd123',22120055,'J-124');
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

-- Dump completed on 2023-03-19 22:03:17
