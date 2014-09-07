-- MySQL dump 10.13  Distrib 5.1.53, for Win64 (unknown)
--
-- Host: localhost    Database: firewall
-- ------------------------------------------------------
-- Server version	5.1.53-community

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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `viewIcon` varchar(45) DEFAULT NULL,
  `viewModel` varchar(45) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `tier` smallint(6) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `coolDown` smallint(6) DEFAULT NULL,
  `effectValue` smallint(6) DEFAULT NULL,
  `effectDissipation` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Laser 1','nothink','light_weapon_1.awd',1,0,100,1000,100,10),(2,'Laser 2','nothink','light_weapon_2.awd',1,1,500,1000,150,15),(3,'Laser Cannon 1','nothink','weapon_laser_stand.awd',0,0,250,3000,200,150),(4,'Laser 3','nothink','light_weapon_3.awd',1,2,1000,900,150,20),(7,'Laser Cannon 2','nothink','weapon_beam_stand.awd',0,1,500,3000,300,185);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `email` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `nickname` varchar(25) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `money_game` int(11) DEFAULT '300',
  `money_real` int(11) DEFAULT '0',
  `exptolevel` int(11) DEFAULT '1000',
  `level` int(11) DEFAULT '1',
  `isAdmin` bit(1) DEFAULT b'0',
  `inventory` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `email` (`email`),
  KEY `nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'r','r','testnickname',NULL,3500,1000,NULL,NULL,'\0','3 3 1'),(3,'test2@mail.ru','testpwd2','testnickname2',NULL,0,0,NULL,NULL,'\0','\'\''),(4,'t','t','Asfel',NULL,30861,1111,1000,1,'\0','3 3 1 1 1 4 3 7 7 7 7 7 4 4 4'),(5,'temik','temik','temik',NULL,200,0,1000,1,'\0','\'\''),(6,'asfel','asfel','Asfel',NULL,200,0,1000,1,'\0','\'\''),(7,'alex','Alex010358','Alex',NULL,200,0,1000,1,'\0','\'\''),(8,'niks','niks010358','niks',NULL,200,0,1000,1,'\0','\'\'');
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

-- Dump completed on 2014-09-07 19:37:06
