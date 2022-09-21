-- MySQL dump 10.13  Distrib 5.7.34, for Win64 (x86_64)
--
-- Host: localhost    Database: db_example
-- ------------------------------------------------------
-- Server version	5.7.34-log

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
-- Table structure for table `boards`
--

DROP TABLE IF EXISTS `boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards` (
  `boardnum` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `count` bigint(20) DEFAULT '0',
  `content` text NOT NULL,
  `password` varchar(20) NOT NULL,
  `certificate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`boardnum`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards`
--

LOCK TABLES `boards` WRITE;
/*!40000 ALTER TABLE `boards` DISABLE KEYS */;
INSERT INTO `boards` VALUES (1,'makapakamoo','','2022-05-30 02:32:57',0,'moo ooo o oo o','1',''),(2,'makapakamoo','','2022-05-30 02:34:20',0,'moo ooo o oo o','1',''),(3,'makapakamoo','','2022-05-30 02:35:35',0,'moo ooo o oo o','1',''),(4,'title','','2022-05-31 01:53:09',0,'content','pass',''),(5,'title','','2022-05-31 01:57:17',0,'32523433','pass',''),(6,'6','6','2022-06-15 06:57:08',0,'6','6',''),(7,'6','6','2022-06-15 06:57:10',0,'6','6',''),(8,'6','6','2022-06-15 06:57:28',0,'6','6',''),(9,'6','6','2022-06-15 06:57:35',0,'6','6',''),(10,'10','10','2022-06-15 06:58:03',0,'10','10',''),(11,'11','11','2022-06-15 10:23:49',0,'11','11',''),(13,'13','13','2022-06-15 11:16:14',0,'13','13',''),(16,'tremore','asdcdascs','2022-06-23 11:15:14',0,'martingarrix','4c7659d5','2'),(17,'clap','asdcdascs','2022-06-23 11:20:47',0,'bambambabmam','3c4aae6d','2'),(18,'asdf','asdcdascs','2022-06-23 11:26:23',0,'fvhgfhdfgbvc','780de2f0','2'),(19,'sail','asdcdascs','2022-06-23 11:32:33',0,'awolnation','12315c1d','2'),(20,'xzvzxcv','asdcdascs','2022-06-23 11:36:39',0,'sdfasdfwqer','51d280ff','2'),(21,'asdfsdvxcvfdhgd','asdcdascs','2022-06-23 11:40:01',0,'rytrywrewtfdgs','28bb71a9','2'),(22,'nmjhkgh','asdcdascs','2022-06-23 11:41:39',0,'ktriytujghjfh','6803dc65','2'),(23,'erqwer','asdcdascs','2022-06-23 11:46:30',0,'n cvbncbvfgfdgd','297f3b1a','2'),(24,'sbbnvb5etr','asdcdascs','2022-06-23 11:47:09',0,'gtrvbgfdb4','ca9d82a','2'),(25,'j,nbmthn','asdcdascs','2022-06-23 11:51:48',0,'yhtryhgfngv','804ae82','2'),(26,'etbregbegr','asdcdascs','2022-06-23 11:53:20',0,'etrbtfbrdrg','31061f20','2'),(27,'cwqssfvc','asdcdascs','2022-06-23 11:56:49',0,'cwqewcdaws','54451b24','2'),(28,'gfnhgfb','asdcdascs','2022-06-23 11:58:04',0,'ebtregfbdgf','47cdbf81','2'),(29,'gnhbrbg','asdcdascs','2022-06-23 12:05:34',0,'rbgrebtrgetg','2a0b94b','2'),(30,'vsfvv','asdcdascs','2022-06-23 12:12:22',0,'werfqwfqw','2e6d39c1','2'),(31,'gfberv','asdcdascs','2022-06-23 12:19:46',0,'vfevefvwevf','23d7f809','2'),(32,'gdsvfew','asdcdascs','2022-06-23 12:24:41',0,'rwecwcscwsedcwe','48f03a85','2'),(33,'cwdfdqwedewq','asdcdascs','2022-06-23 12:25:58',0,'qcqwcdqwd','2d63ba95','2'),(34,'fqwfrw','asdcdascs','2022-06-23 12:27:51',0,'fsvxvbgsdbfd','10a5225f','2'),(35,'gfsbgbf','asdcdascs','2022-06-23 12:28:56',0,'vdsvgsdb','7bfbe58e','2'),(36,'egwev','asdcdascs','2022-06-23 12:29:57',0,'vfewtre','6a10b829','2'),(37,'edq','asdcdascs','2022-06-23 12:30:43',0,'wqcqwerq','27e13929','2'),(38,'fqw','asdcdascs','2022-06-23 12:31:51',0,'wqefqwefwe','5f27dd0d','2'),(39,'rtbgrbetr','asdcdascs','2022-06-23 12:33:06',0,'rgbrebtre','43d00c47','2'),(40,'gjfdnbjini','asdcdascs','2022-06-23 12:34:55',0,'infidbjnisd','4461483b','2'),(41,'jnjin','asdcdascs','2022-06-23 12:35:52',0,'gbgbeffffvfdsvf','51e1805c','2'),(45,'I','hate','2022-06-24 11:17:57',0,'disguesting','pass','not'),(46,'I','hate','2022-06-24 11:18:08',0,'disguesting','pass','not'),(47,'I','hate','2022-06-24 11:18:09',0,'disguesting','pass','not'),(48,'I','hate','2022-06-24 11:18:09',0,'disguesting','pass','not'),(49,'I','hate','2022-06-24 11:18:09',0,'disguesting','pass','not'),(50,'I','hate','2022-06-24 11:18:09',0,'disguesting','pass','not'),(51,'I','hate','2022-06-24 11:18:10',0,'disguesting','pass','not'),(52,'I','hate','2022-06-24 11:18:10',0,'disguesting','pass','not'),(53,'I','hate','2022-06-24 11:18:10',0,'disguesting','pass','not'),(54,'I','hate','2022-06-24 11:18:10',0,'disguesting','pass','not'),(55,'I','hate','2022-06-24 11:18:10',0,'disguesting','pass','not'),(56,'I','hate','2022-06-24 11:18:10',0,'disguesting','pass','not'),(57,'I','hate','2022-06-24 11:18:10',0,'disguesting','pass','not'),(58,'I','hate','2022-06-24 11:18:11',0,'disguesting','pass','not'),(59,'I','hate','2022-06-24 11:18:11',0,'disguesting','pass','not'),(60,'I','hate','2022-06-24 11:18:11',0,'disguesting','pass','not'),(61,'I','hate','2022-06-24 11:18:11',0,'disguesting','pass','not'),(62,'I','hate','2022-06-24 11:18:11',0,'disguesting','pass','not'),(63,'I','hate','2022-06-24 11:18:16',0,'disguesting','pass','not'),(64,'I','hate','2022-06-24 11:18:17',0,'disguesting','pass','not'),(65,'I','hate','2022-06-24 11:18:17',0,'disguesting','pass','not'),(66,'I','hate','2022-06-24 11:18:17',0,'disguesting','pass','not'),(67,'I','hate','2022-06-24 11:18:18',0,'disguesting','pass','not'),(68,'I','hate','2022-06-24 11:18:18',0,'disguesting','pass','not'),(69,'I','hate','2022-06-24 11:18:18',0,'disguesting','pass','not'),(70,'I','hate','2022-06-24 11:18:21',0,'disguesting','pass','not'),(71,'I','hate','2022-06-24 11:18:21',0,'disguesting','pass','not'),(72,'I','hate','2022-06-24 11:18:22',0,'disguesting','pass','not'),(73,'I','hate','2022-06-24 11:18:22',0,'disguesting','pass','not'),(74,'I','hate','2022-06-24 11:18:22',0,'disguesting','pass','not'),(75,'I','hate','2022-06-24 11:18:22',0,'disguesting','pass','not'),(76,'I','hate','2022-06-24 11:18:22',0,'disguesting','pass','not'),(77,'I','hate','2022-06-24 11:18:22',0,'disguesting','pass','not'),(78,'I','hate','2022-06-24 11:18:23',0,'disguesting','pass','not'),(79,'I','hate','2022-06-24 11:18:23',0,'disguesting','pass','not'),(80,'I','hate','2022-06-24 11:18:23',0,'disguesting','pass','not'),(81,'I','hate','2022-06-24 11:18:23',0,'disguesting','pass','not'),(82,'I','hate','2022-06-24 11:18:23',0,'disguesting','pass','not'),(83,'I','hate','2022-06-24 11:18:23',0,'disguesting','pass','not'),(84,'I','hate','2022-06-24 11:18:24',0,'disguesting','pass','not'),(85,'I','hate','2022-06-24 11:18:24',0,'disguesting','pass','not'),(86,'I','hate','2022-06-24 11:18:24',0,'disguesting','pass','not'),(87,'I','hate','2022-06-24 11:18:24',0,'disguesting','pass','not'),(88,'I','hate','2022-06-24 11:18:24',0,'disguesting','pass','not'),(89,'I','hate','2022-06-24 11:18:24',0,'disguesting','pass','not'),(90,'I','hate','2022-06-24 11:18:24',0,'disguesting','pass','not'),(91,'I','hate','2022-06-24 11:18:25',0,'disguesting','pass','not'),(92,'I','hate','2022-06-24 11:18:25',0,'disguesting','pass','not'),(93,'I','hate','2022-06-24 11:18:25',0,'disguesting','pass','not'),(94,'I','hate','2022-06-24 11:18:28',0,'disguesting','pass','not'),(95,'I','hate','2022-06-24 11:18:28',0,'disguesting','pass','not'),(96,'I','hate','2022-06-24 11:18:28',0,'disguesting','pass','not'),(97,'I','hate','2022-06-24 11:18:28',0,'disguesting','pass','not'),(98,'I','hate','2022-06-24 11:18:29',0,'disguesting','pass','not'),(99,'I','hate','2022-06-24 11:18:29',0,'disguesting','pass','not'),(100,'I','hate','2022-06-24 11:18:29',0,'disguesting','pass','not'),(101,'I','hate','2022-06-24 11:18:29',0,'disguesting','pass','not'),(102,'I','hate','2022-06-24 11:18:29',0,'disguesting','pass','not'),(103,'I','hate','2022-06-24 11:18:29',0,'disguesting','pass','not'),(104,'I','hate','2022-06-24 11:18:29',0,'disguesting','pass','not'),(105,'I','hate','2022-06-24 11:18:30',0,'disguesting','pass','not'),(106,'I','hate','2022-06-24 11:18:30',0,'disguesting','pass','not'),(107,'I','hate','2022-06-24 11:18:30',0,'disguesting','pass','not'),(108,'I','hate','2022-06-24 11:18:30',0,'disguesting','pass','not'),(109,'I','hate','2022-06-24 11:18:30',0,'disguesting','pass','not'),(110,'I','hate','2022-06-24 11:18:30',0,'disguesting','pass','not'),(111,'I','hate','2022-06-24 11:18:30',0,'disguesting','pass','not'),(112,'I','hate','2022-06-24 11:18:31',0,'disguesting','pass','not'),(113,'I','hate','2022-06-24 11:18:31',0,'disguesting','pass','not'),(114,'I','hate','2022-06-24 11:18:31',345,'disguesting','pass','not'),(115,'I','hate','2022-06-24 11:18:31',3,'disguesting','pass','not'),(116,'I','hate','2022-06-24 11:18:31',1,'disguesting','pass','not'),(117,'I','hate','2022-06-24 11:18:31',0,'disguesting','pass','not'),(118,'I','hate','2022-06-24 11:18:46',5,'disguesting','pass','not'),(119,'','','2022-07-03 06:31:32',0,'','',NULL),(120,'','','2022-07-03 06:33:13',0,'','',NULL),(121,'','','2022-07-03 06:33:17',0,'','',NULL),(122,'','','2022-07-03 06:34:22',1,'','',NULL),(123,'','','2022-07-03 06:35:12',0,'','',NULL),(124,'ewrqw','fsdfda','2022-07-04 04:13:36',3,'sgfweqreqw','vzxcvxc',NULL),(125,'asdfew','qwer','2022-07-04 04:17:29',2,'hhndnbcn','1234',NULL),(126,'rggfdsb','vcxbsdfg','2022-07-04 04:19:20',1,'sfdgsd','tqwrwe',NULL),(127,'34534','retfd','2022-07-04 04:20:25',2,'dgsdg','fbxcb',NULL),(128,'rrfqwf','vxcvas','2022-07-04 04:21:28',1,'asdfsdavzxc','wqerwqer',NULL),(129,'2rvf','xczv','2022-07-04 04:22:44',0,'svxcv','afwqf',NULL),(130,'2rvf','xczv','2022-07-04 04:22:50',0,'svxcv','afwqf',NULL),(131,'2rvf','xczv','2022-07-04 04:22:51',0,'svxcv','afwqf',NULL),(132,'2rvf','xczv','2022-07-04 04:24:31',0,'svxcv','afwqf',NULL),(133,'2rvf','xczv','2022-07-04 04:26:34',0,'svxcv','afwqf',NULL),(134,'2rvf','xczv','2022-07-04 04:26:38',0,'svxcv','afwqf',NULL),(135,'2rvf','xczv','2022-07-04 04:27:19',1,'svxcv','afwqf',NULL),(136,'regrewf','trbtgb','2022-07-04 04:27:37',0,'rgebrgeb','tgb4etbr',NULL),(137,'regrewf','trbtgb','2022-07-04 04:29:22',2,'rgebrgeb','tgb4etbr',NULL),(138,'xcvasd','fwqerwqe','2022-07-04 04:29:37',0,'sadfasdceq','fsvxc',NULL),(139,'xcvasd','fwqerwqe','2022-07-04 04:30:43',1,'sadfasdceq','fsvxc',NULL),(140,'tjr','yhryh','2022-07-04 04:30:54',1,'hrnhrtnhrty','rtyhrrnhn',NULL),(141,'yumtyjmjty','jytmtyjmt','2022-07-04 04:39:34',0,'yumujtjjmhmbn','yjmhjm',NULL),(142,'yumtyjmjty','jytmtyjmt','2022-07-04 04:41:59',1,'yumujtjjmhmbn','yjmhjm',NULL),(143,'tnhn','trhytn','2022-07-04 04:42:30',1,'fghjgfhmbmvb','fhjrtyjgnbv',NULL),(144,'rgbdv','rewvfdv','2022-07-04 04:43:39',0,'vqvxcv','evvxvvfve',NULL),(145,'rgbdv','rewvfdv','2022-07-04 04:44:59',1,'vqvxcv','evvxvvfve',NULL),(146,'cwqdcwqc','cq','2022-07-04 04:45:10',0,'dcqwdccscdsdc','dcwqcq',NULL),(147,'gbwev','fevev','2022-07-04 04:47:35',2,'vwevwevfwfe','vwevfwe',NULL),(148,'dwfqwd','qwfweq','2022-07-04 04:49:09',0,'wfeqwd','dwqvcqdw',NULL),(149,'dwfqwd','qwfweq','2022-07-04 04:50:32',1,'wfeqwd','dwqvcqdw',NULL),(150,'cwqdc','wqdc','2022-07-04 04:50:40',1,'wvfs','cwc',NULL),(151,'fdd','cqwcq','2022-07-04 04:52:17',2,'wcqwewqffbxcv','cqwcdwc',NULL),(152,'qwvfcdv','vfdv','2022-07-04 04:52:42',1,'qrevqwrvfbvbxvd','revqqrxdvf',NULL),(153,'h4trnht','hgbnt4ebng','2022-07-06 07:57:07',17,'hentrnggfnhnfg','brenehnh',NULL);
/*!40000 ALTER TABLE `boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `certificate` varchar(20) NOT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('1','asdcdascs','1','2'),('aaaa','aaaa','aaaa','LLLL'),('aaaaaa','aaaaaa','aaaaaa','LLLLLL'),('aaaaaaaaaaa','bbbbbbbbbbbbb','ccccccccc','LLLLLLLLLLL'),('aaaab','aaaaa','aaaa','LLLLM'),('asdfas','asdfㄴㄻㄴㅇㄹ','aaaaadzxcv','L^OQL^'),('asdsas','ㅁㄴㅇㄹㅍㅊ튜asd','asdfasa','L^O^L^'),('bbbbb','bbbbb','bbbbb','MMMMM'),('bbbbbb','bbbbbb','bbbbb','MMMMMM'),('cccc','cccc','cccc','NNNN'),('ccccc','ccccc','cccc','NNNNN'),('cccccc','cccccc','bbbbb','NNNNNN'),('ccccccc','ccccccc','cccccc','NNNNNNN'),('dddd','dddd','dddd','OOOO'),('ddddd','ddddd','ddddd','OOOOO'),('dddddd','dddddd','dddddd','OOOOOO'),('ffff','ffffz','ffff','QQQQ');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-21 22:53:24
