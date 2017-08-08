-- MySQL dump 10.13  Distrib 5.6.36, for Win64 (x86_64)
--
-- Host: localhost    Database: dcone
-- ------------------------------------------------------
-- Server version	5.6.36

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
-- Table structure for table `dc_trade`
--

DROP TABLE IF EXISTS `dc_trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_trade` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `wid` int(11) NOT NULL,
  `volume` int(11) NOT NULL,
  `tradetime` varchar(50) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_trade`
--

LOCK TABLES `dc_trade` WRITE;
/*!40000 ALTER TABLE `dc_trade` DISABLE KEYS */;
INSERT INTO `dc_trade` VALUES (1,1,1000,'2017年8月2日 下午02时40分28秒'),(2,1,1000,'2017年8月2日 下午03时38分32秒'),(3,1,100,'2017年8月2日 下午03时49分41秒'),(4,1,100,'2017年8月7日 上午09时45分01秒');
/*!40000 ALTER TABLE `dc_trade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dc_user`
--

DROP TABLE IF EXISTS `dc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `itcode` varchar(16) NOT NULL,
  `username` varchar(32) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `itcode` (`itcode`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_user`
--

LOCK TABLES `dc_user` WRITE;
/*!40000 ALTER TABLE `dc_user` DISABLE KEYS */;
INSERT INTO `dc_user` VALUES (1,'00001','张三');
/*!40000 ALTER TABLE `dc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `dc_user_wallet`
--

DROP TABLE IF EXISTS `dc_user_wallet`;
/*!50001 DROP VIEW IF EXISTS `dc_user_wallet`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dc_user_wallet` AS SELECT 
 1 AS `uid`,
 1 AS `itcode`,
 1 AS `username`,
 1 AS `amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dc_wallet`
--

DROP TABLE IF EXISTS `dc_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_wallet` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_wallet`
--

LOCK TABLES `dc_wallet` WRITE;
/*!40000 ALTER TABLE `dc_wallet` DISABLE KEYS */;
INSERT INTO `dc_wallet` VALUES (1,1,2200);
/*!40000 ALTER TABLE `dc_wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lucky_money`
--

DROP TABLE IF EXISTS `lucky_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lucky_money` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `round` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`l_id`),
  UNIQUE KEY `round` (`round`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lucky_money`
--

LOCK TABLES `lucky_money` WRITE;
/*!40000 ALTER TABLE `lucky_money` DISABLE KEYS */;
INSERT INTO `lucky_money` VALUES (1,1,200000),(2,2,200000),(3,3,200000);
/*!40000 ALTER TABLE `lucky_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lucky_money_record`
--

DROP TABLE IF EXISTS `lucky_money_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lucky_money_record` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `wid` int(11) NOT NULL,
  `luck_number` int(11) NOT NULL,
  `round` int(11) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lucky_money_record`
--

LOCK TABLES `lucky_money_record` WRITE;
/*!40000 ALTER TABLE `lucky_money_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `lucky_money_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `dc_user_wallet`
--

/*!50001 DROP VIEW IF EXISTS `dc_user_wallet`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = gbk */;
/*!50001 SET character_set_results     = gbk */;
/*!50001 SET collation_connection      = gbk_chinese_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dc_user_wallet` AS select `dc_user`.`uid` AS `uid`,`dc_user`.`itcode` AS `itcode`,`dc_user`.`username` AS `username`,`dc_wallet`.`amount` AS `amount` from (`dc_user` join `dc_wallet`) where (`dc_user`.`uid` = `dc_wallet`.`uid`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-08 14:30:58
