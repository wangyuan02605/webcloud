-- MySQL dump 10.13  Distrib 8.0.28, for Linux (aarch64)
--
-- Host: localhost    Database: PearAdminFlask
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `admin_admin_log`
--

DROP TABLE IF EXISTS `admin_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `create_time` datetime DEFAULT NULL,
  `success` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1616 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_admin_log`
--

LOCK TABLES `admin_admin_log` WRITE;
/*!40000 ALTER TABLE `admin_admin_log` DISABLE KEYS */;
INSERT INTO `admin_admin_log` VALUES (1485,'POST',1,'/passport/login','admin','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:05:08',1),(1486,'GET',1,'/admin/user/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:05:18',1),(1487,'GET',1,'/admin/user/data','{&#39;limit&#39;: &#39;10&#39;, &#39;page&#39;: &#39;1&#39;}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:05:18',1),(1488,'GET',1,'/dept/tree','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:05:18',1),(1489,'GET',1,'/admin/role/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:05:20',1),(1490,'GET',1,'/admin/role/data','{&#39;limit&#39;: &#39;10&#39;, &#39;page&#39;: &#39;1&#39;}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:05:20',1),(1491,'GET',1,'/admin/role/add','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:05:22',1),(1492,'POST',1,'/admin/role/save','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:05:42',1),(1493,'GET',1,'/admin/role/data','{&#39;limit&#39;: &#39;10&#39;, &#39;page&#39;: &#39;1&#39;}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:05:44',1),(1494,'GET',1,'/admin/role/add','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:05:45',1),(1495,'POST',1,'/admin/role/save','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:09:22',1),(1496,'GET',1,'/admin/role/data','{&#39;limit&#39;: &#39;10&#39;, &#39;page&#39;: &#39;1&#39;}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:09:23',1),(1497,'GET',1,'/admin/power/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:09:29',1),(1498,'POST',1,'/admin/power/data','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:09:29',1),(1499,'GET',1,'/admin/power/add','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:09:31',1),(1500,'GET',1,'/admin/power/selectParent','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:09:31',1),(1501,'POST',1,'/admin/power/save','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:09:53',1),(1502,'POST',1,'/admin/power/data','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:09:55',1),(1503,'GET',1,'/admin/power/add','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:09:58',1),(1504,'GET',1,'/admin/power/selectParent','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:09:58',1),(1505,'POST',1,'/admin/power/save','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:10:39',1),(1506,'POST',1,'/admin/power/data','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:10:40',1),(1507,'GET',1,'/admin/role/power/3','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:10:48',1),(1508,'GET',1,'/admin/role/getRolePower/3','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:10:48',1),(1509,'PUT',1,'/admin/role/saveRolePower','{&#39;roleId&#39;: &#39;3&#39;, &#39;powerIds&#39;: &#39;57,58&#39;}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:10:51',1),(1510,'GET',1,'/admin/role/power/4','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:10:53',1),(1511,'GET',1,'/admin/role/getRolePower/4','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:10:53',1),(1512,'PUT',1,'/admin/role/saveRolePower','{&#39;roleId&#39;: &#39;4&#39;, &#39;powerIds&#39;: &#39;57,58&#39;}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:10:57',1),(1513,'POST',9,'/passport/login','wangyuan','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:11:35',1),(1514,'GET',9,'/admin/user/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:11:37',0),(1515,'GET',9,'/admin/power/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:11:37',0),(1516,'GET',9,'/admin/role/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:11:37',0),(1517,'POST',1,'/passport/login','admin','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:34:25',1),(1518,'POST',10,'/passport/login','1','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-14 23:46:04',1),(1519,'POST',10,'/passport/login','1','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 09:17:31',1),(1520,'POST',11,'/passport/login','4','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.3 Safari/605.1.15','2022-03-15 22:01:43',1),(1521,'POST',1,'/passport/login','admin','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:09:41',1),(1522,'GET',1,'/admin/user/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:09:44',1),(1523,'GET',1,'/admin/user/data','{&#39;page&#39;: &#39;1&#39;, &#39;limit&#39;: &#39;10&#39;}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:09:44',1),(1524,'GET',1,'/dept/tree','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:09:44',1),(1525,'GET',1,'/admin/role/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:09:46',1),(1526,'GET',1,'/admin/role/data','{&#39;page&#39;: &#39;1&#39;, &#39;limit&#39;: &#39;10&#39;}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:09:46',1),(1527,'GET',1,'/admin/role/power/3','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:09:48',1),(1528,'GET',1,'/admin/role/getRolePower/3','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:09:48',1),(1529,'GET',1,'/admin/power/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:09:51',1),(1530,'POST',1,'/admin/power/data','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:09:52',1),(1531,'GET',1,'/admin/power/add','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:09:54',1),(1532,'GET',1,'/admin/power/selectParent','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:09:54',1),(1533,'GET',1,'/admin/power/add','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:10:35',1),(1534,'GET',1,'/admin/power/selectParent','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:10:36',1),(1535,'POST',1,'/admin/power/save','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:11:00',1),(1536,'POST',1,'/admin/power/data','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:11:01',1),(1537,'GET',1,'/admin/power/add','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:11:03',1),(1538,'GET',1,'/admin/power/selectParent','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:11:03',1),(1539,'POST',1,'/admin/power/save','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:11:46',1),(1540,'POST',1,'/admin/power/data','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:11:47',1),(1541,'GET',1,'/admin/role/power/4','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:11:53',1),(1542,'GET',1,'/admin/role/getRolePower/4','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:11:53',1),(1543,'PUT',1,'/admin/role/saveRolePower','{&#39;powerIds&#39;: &#39;57,58,59&#39;, &#39;roleId&#39;: &#39;4&#39;}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:11:55',1),(1544,'POST',11,'/passport/login','4','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:11',1),(1545,'GET',11,'/admin/user/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:13',0),(1546,'GET',11,'/admin/role/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:13',0),(1547,'GET',11,'/admin/power/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:13',0),(1548,'POST',1,'/passport/login','admin','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:25',1),(1549,'GET',1,'/admin/user/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:26',1),(1550,'GET',1,'/admin/role/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:26',1),(1551,'GET',1,'/admin/power/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:26',1),(1552,'POST',1,'/admin/power/data','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:26',1),(1553,'GET',1,'/admin/user/data','{&#39;page&#39;: &#39;1&#39;, &#39;limit&#39;: &#39;10&#39;}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:27',1),(1554,'GET',1,'/dept/tree','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:27',1),(1555,'GET',1,'/admin/role/data','{&#39;page&#39;: &#39;1&#39;, &#39;limit&#39;: &#39;10&#39;}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:27',1),(1556,'GET',1,'/admin/power/edit/60','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:34',1),(1557,'GET',1,'/admin/power/selectParent','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:34',1),(1558,'GET',1,'/admin/role/power/4','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:42',1),(1559,'GET',1,'/admin/role/getRolePower/4','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:42',1),(1560,'PUT',1,'/admin/role/saveRolePower','{&#39;powerIds&#39;: &#39;57,58,59,60&#39;, &#39;roleId&#39;: &#39;4&#39;}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:45',1),(1561,'POST',11,'/passport/login','4','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:56',1),(1562,'GET',11,'/admin/user/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:58',0),(1563,'GET',11,'/admin/power/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:58',0),(1564,'GET',11,'/admin/role/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:12:58',0),(1565,'POST',1,'/passport/login','admin','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:58:26',1),(1566,'GET',1,'/admin/role/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:58:30',1),(1567,'GET',1,'/admin/role/data','{&#39;limit&#39;: &#39;10&#39;, &#39;page&#39;: &#39;1&#39;}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:58:30',1),(1568,'GET',1,'/admin/power/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:58:32',1),(1569,'POST',1,'/admin/power/data','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:58:32',1),(1570,'GET',1,'/admin/power/add','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:58:33',1),(1571,'GET',1,'/admin/power/selectParent','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:58:33',1),(1572,'POST',1,'/admin/power/save','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:59:05',1),(1573,'POST',1,'/admin/power/data','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:59:06',1),(1574,'GET',1,'/admin/power/add','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:59:08',1),(1575,'GET',1,'/admin/power/selectParent','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:59:08',1),(1576,'POST',1,'/admin/power/save','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:59:54',1),(1577,'POST',1,'/admin/power/data','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 22:59:55',1),(1578,'GET',1,'/admin/user/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:00:01',1),(1579,'GET',1,'/admin/user/data','{&#39;limit&#39;: &#39;10&#39;, &#39;page&#39;: &#39;1&#39;}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:00:01',1),(1580,'GET',1,'/dept/tree','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:00:01',1),(1581,'GET',1,'/admin/role/power/3','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:00:04',1),(1582,'GET',1,'/admin/role/getRolePower/3','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:00:04',1),(1583,'PUT',1,'/admin/role/saveRolePower','{&#39;roleId&#39;: &#39;3&#39;, &#39;powerIds&#39;: &#39;57,58,61,62&#39;}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:00:08',1),(1584,'POST',10,'/passport/login','1','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:00:47',1),(1585,'GET',10,'/admin/power/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:00:49',0),(1586,'GET',10,'/admin/role/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:00:49',0),(1587,'GET',10,'/admin/user/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:00:49',0),(1588,'GET',10,'/admin/power/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:02:27',0),(1589,'GET',10,'/admin/role/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:02:27',0),(1590,'GET',10,'/admin/user/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:02:27',0),(1591,'GET',10,'/admin/user/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:05:33',0),(1592,'GET',10,'/admin/power/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:05:33',0),(1593,'GET',10,'/admin/role/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:05:33',0),(1594,'POST',1,'/passport/login','admin','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:05:53',1),(1595,'GET',1,'/admin/user/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:05:55',1),(1596,'GET',1,'/admin/power/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:05:55',1),(1597,'GET',1,'/admin/role/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:05:55',1),(1598,'POST',1,'/admin/power/data','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:05:55',1),(1599,'GET',1,'/admin/role/data','{&#39;limit&#39;: &#39;10&#39;, &#39;page&#39;: &#39;1&#39;}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:05:55',1),(1600,'GET',1,'/admin/user/data','{&#39;limit&#39;: &#39;10&#39;, &#39;page&#39;: &#39;1&#39;}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:05:55',1),(1601,'GET',1,'/dept/tree','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:05:55',1),(1602,'GET',1,'/admin/role/power/3','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:06:01',1),(1603,'GET',1,'/admin/role/getRolePower/3','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:06:01',1),(1604,'GET',1,'/admin/power/edit/62','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:06:11',1),(1605,'GET',1,'/admin/power/selectParent','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:06:11',1),(1606,'POST',10,'/passport/login','1','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:06:30',1),(1607,'GET',10,'/admin/power/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:06:31',0),(1608,'GET',10,'/admin/user/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:06:31',0),(1609,'GET',10,'/admin/role/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:06:31',0),(1610,'GET',10,'/admin/user/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:07:40',0),(1611,'GET',10,'/admin/power/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:07:40',0),(1612,'GET',10,'/admin/role/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:07:40',0),(1613,'GET',10,'/admin/power/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:16:33',0),(1614,'GET',10,'/admin/role/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:16:33',0),(1615,'GET',10,'/admin/user/','{}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','2022-03-15 23:16:33',0);
/*!40000 ALTER TABLE `admin_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_dept`
--

DROP TABLE IF EXISTS `admin_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_dept` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `parent_id` int DEFAULT NULL COMMENT '父级编号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '部门名称',
  `sort` int DEFAULT NULL COMMENT '排序',
  `leader` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `status` int DEFAULT NULL COMMENT '状态(1开启,0关闭)',
  `remark` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '备注',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详细地址',
  `create_at` datetime DEFAULT NULL COMMENT '创建时间',
  `update_at` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_dept`
--

LOCK TABLES `admin_dept` WRITE;
/*!40000 ALTER TABLE `admin_dept` DISABLE KEYS */;
INSERT INTO `admin_dept` VALUES (1,0,'总公司',1,'就眠仪式','12312345679','123qq.com',1,NULL,'这是总公司',NULL,'2021-06-01 17:23:20'),(4,1,'济南分公司',2,'就眠仪式','12312345678','1234qq.com',1,NULL,'这是济南','2021-06-01 17:24:33','2021-06-01 17:25:19'),(5,1,'唐山分公司',4,'mkg','12312345678','123@qq.com',1,NULL,'这是唐山','2021-06-01 17:25:15','2021-06-01 17:25:20'),(7,4,'济南分公司开发部',5,'就眠仪式','12312345678','123@qq.com',1,NULL,'测试','2021-06-01 17:27:39','2021-06-01 17:27:39'),(8,5,'唐山测试部',6,'mkg','12312345678','123@qq.com',1,NULL,'测试部','2021-06-01 17:28:27','2021-06-01 17:28:27');
/*!40000 ALTER TABLE `admin_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_dict_data`
--

DROP TABLE IF EXISTS `admin_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_dict_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_label` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '字典类型名称',
  `data_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '字典类型标识',
  `type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '字典类型描述',
  `is_default` int DEFAULT NULL COMMENT '是否默认',
  `enable` int DEFAULT NULL COMMENT '是否开启',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_dict_data`
--

LOCK TABLES `admin_dict_data` WRITE;
/*!40000 ALTER TABLE `admin_dict_data` DISABLE KEYS */;
INSERT INTO `admin_dict_data` VALUES (8,'男','boy','user_sex',NULL,1,'男 : body','2021-04-16 13:36:34','2021-04-16 14:05:06'),(9,'女','girl','user_sex',NULL,1,'女 : girl','2021-04-16 13:36:55','2021-04-16 13:36:55');
/*!40000 ALTER TABLE `admin_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_dict_type`
--

DROP TABLE IF EXISTS `admin_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_dict_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '字典类型名称',
  `type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '字典类型标识',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '字典类型描述',
  `enable` int DEFAULT NULL COMMENT '是否开启',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_dict_type`
--

LOCK TABLES `admin_dict_type` WRITE;
/*!40000 ALTER TABLE `admin_dict_type` DISABLE KEYS */;
INSERT INTO `admin_dict_type` VALUES (1,'用户性别','user_sex','用户性别',1,NULL,'2021-04-16 13:37:11');
/*!40000 ALTER TABLE `admin_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_photo`
--

DROP TABLE IF EXISTS `admin_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` char(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_photo`
--

LOCK TABLES `admin_photo` WRITE;
/*!40000 ALTER TABLE `admin_photo` DISABLE KEYS */;
INSERT INTO `admin_photo` VALUES (3,'6958819_pear-admin_1607443454_1.png','http://127.0.0.1:5000/_uploads/photos/6958819_pear-admin_1607443454_1.png','image/png','2204','2021-03-19 18:53:02'),(17,'1617291580000.jpg','http://127.0.0.1:5000/_uploads/photos/1617291580000.jpg','image/png','94211','2021-04-01 23:39:41');
/*!40000 ALTER TABLE `admin_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_power`
--

DROP TABLE IF EXISTS `admin_power`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_power` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '权限编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '权限名称',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '权限类型',
  `code` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '权限标识',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '权限路径',
  `open_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '打开方式',
  `parent_id` varchar(19) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '父类编号',
  `icon` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图标',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `enable` int DEFAULT NULL COMMENT '是否开启',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_power`
--

LOCK TABLES `admin_power` WRITE;
/*!40000 ALTER TABLE `admin_power` DISABLE KEYS */;
INSERT INTO `admin_power` VALUES (1,'系统管理','0','',NULL,NULL,'0','layui-icon layui-icon-set-fill',1,NULL,NULL,1),(3,'用户管理','1','admin:user:main','/admin/user/','_iframe','1','layui-icon layui-icon layui-icon layui-icon layui-icon-rate',1,NULL,NULL,1),(4,'权限管理','1','admin:power:main','/admin/power/','_iframe','1',NULL,2,NULL,NULL,1),(9,'角色管理','1','admin:role:main','/admin/role','_iframe','1','layui-icon layui-icon-username',2,'2021-03-16 22:24:58','2021-03-25 19:15:24',1),(12,'系统监控','1','admin:monitor:main','/admin/monitor','_iframe','1','layui-icon layui-icon-vercode',5,'2021-03-18 22:05:19','2021-03-25 19:15:27',1),(13,'日志管理','1','admin:log:main','/admin/log','_iframe','1','layui-icon layui-icon-read',4,'2021-03-18 22:37:10','2021-06-03 11:06:25',1),(17,'文件管理','0','','','','0','layui-icon layui-icon-camera',2,'2021-03-19 18:56:23','2021-03-25 19:15:08',1),(18,'图片上传','1','admin:file:main','/admin/file','_iframe','17','layui-icon layui-icon-camera',5,'2021-03-19 18:57:19','2021-03-25 19:15:13',1),(21,'权限增加','2','admin:power:add','','','4','layui-icon layui-icon-add-circle',1,'2021-03-22 19:43:52','2021-03-25 19:15:22',1),(22,'用户增加','2','admin:user:add','','','3','layui-icon layui-icon-add-circle',1,'2021-03-22 19:45:40','2021-03-25 19:15:17',1),(23,'用户编辑','2','admin:user:edit','','','3','layui-icon layui-icon-rate',2,'2021-03-22 19:46:15','2021-03-25 19:15:18',1),(24,'用户删除','2','admin:user:remove','','','3','layui-icon None',3,'2021-03-22 19:46:51','2021-03-25 19:15:18',1),(25,'权限编辑','2','admin:power:edit','','','4','layui-icon layui-icon-edit',2,'2021-03-22 19:47:36','2021-03-25 19:15:22',1),(26,'用户删除','2','admin:power:remove','','','4','layui-icon layui-icon-delete',3,'2021-03-22 19:48:17','2021-03-25 19:15:23',1),(27,'用户增加','2','admin:role:add','','','9','layui-icon layui-icon-add-circle',1,'2021-03-22 19:49:09','2021-03-25 19:15:24',1),(28,'角色编辑','2','admin:role:edit','','','9','layui-icon layui-icon-edit',2,'2021-03-22 19:49:41','2021-03-25 19:15:25',1),(29,'角色删除','2','admin:role:remove','','','9','layui-icon layui-icon-delete',3,'2021-03-22 19:50:15','2021-03-25 19:15:26',1),(30,'角色授权','2','admin:role:power','','','9','layui-icon layui-icon-component',4,'2021-03-22 19:50:54','2021-03-25 19:15:26',1),(31,'图片增加','2','admin:file:add','','','18','layui-icon layui-icon-add-circle',1,'2021-03-22 19:58:05','2021-03-25 19:15:28',1),(32,'图片删除','2','admin:file:delete','','','18','layui-icon layui-icon-delete',2,'2021-03-22 19:58:45','2021-03-25 19:15:29',1),(44,'数据字典','1','admin:dict:main','/admin/dict','_iframe','1','layui-icon layui-icon-console',6,'2021-04-16 13:59:49','2021-04-16 13:59:49',1),(45,'字典增加','2','admin:dict:add','','','44','layui-icon ',1,'2021-04-16 14:00:59','2021-04-16 14:00:59',1),(46,'字典修改','2','admin:dict:edit','','','44','layui-icon ',2,'2021-04-16 14:01:33','2021-04-16 14:01:33',1),(47,'字典删除','2','admin:dict:remove','','','44','layui-icon ',3,'2021-04-16 14:02:06','2021-04-16 14:02:06',1),(48,'部门管理','1','admin:dept:main','/dept','_iframe','1','layui-icon layui-icon-group',3,'2021-06-01 16:22:11','2021-07-07 13:49:39',1),(49,'部门增加','2','admin:dept:add','','','48','layui-icon None',1,'2021-06-01 17:35:52','2021-06-01 17:36:15',1),(50,'部门编辑','2','admin:dept:edit','','','48','layui-icon ',2,'2021-06-01 17:36:41','2021-06-01 17:36:41',1),(51,'部门删除','2','admin:dept:remove','','','48','layui-icon None',3,'2021-06-01 17:37:15','2021-06-01 17:37:26',1),(52,'定时任务','0','','','','0','layui-icon layui-icon-log',3,'2021-06-22 21:09:01','2021-06-22 21:09:01',1),(53,'任务管理','1','admin:task:main','/admin/task','_iframe','52','layui-icon ',1,'2021-06-22 21:15:00','2021-06-22 21:15:00',1),(54,'任务增加','2','admin:task:add','','','53','layui-icon ',1,'2021-06-22 22:20:54','2021-06-22 22:20:54',1),(55,'任务修改','2','admin:task:edit','','','53','layui-icon ',2,'2021-06-22 22:21:34','2021-06-22 22:21:34',1),(56,'任务删除','2','admin:task:remove','','','53','layui-icon ',3,'2021-06-22 22:22:18','2021-06-22 22:22:18',1),(57,'用户中心','0','','','','0','layui-icon layui-icon-user',4,'2022-03-14 23:09:53','2022-03-14 23:09:53',1),(58,'用户信息','1','','/admin/user/center','_iframe','57','layui-icon layui-icon-username',1,'2022-03-14 23:10:39','2022-03-14 23:10:39',1),(59,'招聘中心','0','','','','0','layui-icon layui-icon-template',5,'2022-03-15 22:11:00','2022-03-15 22:11:00',1),(60,'招聘管理','1','','/recruitment','_iframe','59','layui-icon layui-icon-user',1,'2022-03-15 22:11:46','2022-03-15 22:11:46',1),(61,'简历中心','0','','','','0','layui-icon layui-icon-template-1',6,'2022-03-15 22:59:05','2022-03-15 22:59:05',1),(62,'简历管理','1','','/resume/','_iframe','61','layui-icon layui-icon-read',1,'2022-03-15 22:59:54','2022-03-15 22:59:54',1);
/*!40000 ALTER TABLE `admin_power` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role`
--

DROP TABLE IF EXISTS `admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色名称',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色标识',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `enable` int DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role`
--

LOCK TABLES `admin_role` WRITE;
/*!40000 ALTER TABLE `admin_role` DISABLE KEYS */;
INSERT INTO `admin_role` VALUES (1,'管理员','admin',NULL,'管理员',1,NULL,NULL,1),(2,'普通用户','common',NULL,'只有查看，没有增删改权限',2,'2021-03-22 20:02:38','2021-04-01 22:29:56',1),(3,'学生用户','student',NULL,'',3,'2022-03-14 23:05:42','2022-03-14 23:05:42',1),(4,'企业用户','enterprise',NULL,'',4,'2022-03-14 23:09:22','2022-03-14 23:09:22',1);
/*!40000 ALTER TABLE `admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_power`
--

DROP TABLE IF EXISTS `admin_role_power`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role_power` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '标识',
  `power_id` int DEFAULT NULL COMMENT '用户编号',
  `role_id` int DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `power_id` (`power_id`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE,
  CONSTRAINT `admin_role_power_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`),
  CONSTRAINT `admin_role_power_ibfk_2` FOREIGN KEY (`power_id`) REFERENCES `admin_power` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_power`
--

LOCK TABLES `admin_role_power` WRITE;
/*!40000 ALTER TABLE `admin_role_power` DISABLE KEYS */;
INSERT INTO `admin_role_power` VALUES (265,1,2),(266,3,2),(267,4,2),(268,9,2),(269,12,2),(270,13,2),(271,17,2),(272,18,2),(273,44,2),(274,48,2),(334,1,1),(335,3,1),(336,4,1),(337,9,1),(338,12,1),(339,13,1),(340,17,1),(341,18,1),(342,21,1),(343,22,1),(344,23,1),(345,24,1),(346,25,1),(347,26,1),(348,27,1),(349,28,1),(350,29,1),(351,30,1),(352,31,1),(353,32,1),(354,44,1),(355,45,1),(356,46,1),(357,47,1),(358,48,1),(359,49,1),(360,50,1),(361,51,1),(362,52,1),(363,53,1),(364,54,1),(365,55,1),(366,56,1),(367,57,3),(368,58,3),(369,57,4),(370,58,4),(371,59,4),(372,60,4),(373,61,3),(374,62,3);
/*!40000 ALTER TABLE `admin_role_power` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user`
--

DROP TABLE IF EXISTS `admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password_hash` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '哈希密码',
  `create_at` datetime DEFAULT NULL COMMENT '创建时间',
  `update_at` datetime DEFAULT NULL COMMENT '创建时间',
  `enable` int DEFAULT NULL COMMENT '启用',
  `realname` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '真实名字',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '头像',
  `dept_id` int DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user`
--

LOCK TABLES `admin_user` WRITE;
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;
INSERT INTO `admin_user` VALUES (1,'admin','pbkdf2:sha256:150000$raM7mDSr$58fe069c3eac01531fc8af85e6fc200655dd2588090530084d182e6ec9d52c85',NULL,'2021-06-01 17:28:55',1,'超级管理','要是不能把握时机，就要终身蹭蹬，一事无成！','http://127.0.0.1:5000/_uploads/photos/1617291580000.jpg',1),(7,'test','pbkdf2:sha256:150000$cRS8bYNh$adb57e64d929863cf159f924f74d0634f1fecc46dba749f1bfaca03da6d2e3ac','2021-03-22 20:03:42','2021-06-01 17:29:47',1,'超级管理','要是不能把握时机，就要终身蹭蹬，一事无成','/static/admin/admin/images/avatar.jpg',1),(8,'wind','pbkdf2:sha256:150000$skME1obT$6a2c20cd29f89d7d2f21d9e373a7e3445f70ebce3ef1c3a555e42a7d17170b37','2021-06-01 17:30:39','2021-06-01 17:30:52',1,'风',NULL,'/static/admin/admin/images/avatar.jpg',7),(9,'wangyuan','pbkdf2:sha256:260000$jK6CuDOII1dsBSVW$3e9c218c0f90a0c5eecd115e7f7f5b1686db7e4cc952ca233247c5701531747f','2022-03-14 23:11:24','2022-03-14 23:11:24',1,NULL,NULL,'/static/admin/admin/images/avatar.jpg',NULL),(10,'1','pbkdf2:sha256:260000$05ZqV89Mph3V7PZx$04b18964c387d7fcd87c7d8f49b8e1abbf1efe1bee1d799b69f625c7fa51167e','2022-03-14 23:45:55','2022-03-14 23:45:55',1,NULL,NULL,'/static/admin/admin/images/avatar.jpg',NULL),(11,'4','pbkdf2:sha256:260000$1ouEIiEKGY9RPrLf$b3b2115a016ec81542b6a52d28159bd35e1907b121e58284c9f9130693f22e77','2022-03-15 22:01:31','2022-03-15 22:01:31',1,NULL,NULL,'/static/admin/admin/images/avatar.jpg',NULL);
/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_role`
--

DROP TABLE IF EXISTS `admin_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_user_role` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '标识',
  `user_id` int DEFAULT NULL COMMENT '用户编号',
  `role_id` int DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `admin_user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`id`),
  CONSTRAINT `admin_user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_role`
--

LOCK TABLES `admin_user_role` WRITE;
/*!40000 ALTER TABLE `admin_user_role` DISABLE KEYS */;
INSERT INTO `admin_user_role` VALUES (21,1,1),(22,7,2),(24,8,2),(25,9,3),(26,10,4),(27,11,4);
/*!40000 ALTER TABLE `admin_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version_num`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('ec50923574e4');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruitment`
--

DROP TABLE IF EXISTS `recruitment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recruitment` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '招聘信息ID',
  `info` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '信息',
  `remark` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `create_at` datetime DEFAULT NULL COMMENT '创建时间',
  `update_at` datetime DEFAULT NULL COMMENT '创建时间',
  `user_id` int DEFAULT NULL COMMENT '拥有者id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruitment`
--

LOCK TABLES `recruitment` WRITE;
/*!40000 ALTER TABLE `recruitment` DISABLE KEYS */;
INSERT INTO `recruitment` VALUES (5,'deada','deadea','2022-03-15 22:13:10','2022-03-15 22:13:10',11),(7,'ceac','ceac','2022-03-15 23:07:47','2022-03-15 23:07:47',10),(8,'awdad','dcea','2022-03-15 23:08:17','2022-03-15 23:08:17',10),(9,'dae','da','2022-03-15 23:08:43','2022-03-15 23:08:43',10),(10,'daeda','daedae','2022-03-15 23:08:47','2022-03-15 23:08:47',10),(11,'daeda','daeda','2022-03-15 23:08:51','2022-03-15 23:08:51',10),(12,'daeda','','2022-03-15 23:08:54','2022-03-15 23:08:54',10),(13,'caa','','2022-03-15 23:08:58','2022-03-15 23:08:58',10),(14,'cae','','2022-03-15 23:09:02','2022-03-15 23:09:02',10),(15,'caeae','','2022-03-15 23:09:05','2022-03-15 23:09:05',10),(16,'caaec','','2022-03-15 23:09:11','2022-03-15 23:09:11',10),(17,'caae','','2022-03-15 23:09:15','2022-03-15 23:09:15',10);
/*!40000 ALTER TABLE `recruitment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume`
--

DROP TABLE IF EXISTS `resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resume` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '简历信息ID',
  `user_id` int DEFAULT NULL COMMENT '拥有者id',
  `info` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '信息',
  `remark` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `create_at` datetime DEFAULT NULL COMMENT '创建时间',
  `update_at` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume`
--

LOCK TABLES `resume` WRITE;
/*!40000 ALTER TABLE `resume` DISABLE KEYS */;
INSERT INTO `resume` VALUES (1,10,'dae','dead','2022-03-15 23:07:26','2022-03-15 23:07:26');
/*!40000 ALTER TABLE `resume` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-16  3:16:48
