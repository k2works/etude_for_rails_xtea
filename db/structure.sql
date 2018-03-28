
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
DROP TABLE IF EXISTS `AT010`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AT010` (
  `CDBUMON` varchar(5) NOT NULL,
  `TXBUMON` varchar(30) NOT NULL,
  `NRKANRISYA` varchar(5) NOT NULL,
  `TXTEKIYO` varchar(300) DEFAULT NULL,
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`CDBUMON`)
) ENGINE=InnoDB DEFAULT CHARSET=sjis;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `AT011`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AT011` (
  `CDBUMON` varchar(5) NOT NULL,
  `DTHAKKOUNENGETSU` varchar(6) NOT NULL,
  `CDJYOUIBUMON` varchar(5) NOT NULL,
  `DTSIKKOUNENGETSU` varchar(6) NOT NULL,
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`CDBUMON`,`DTHAKKOUNENGETSU`)
) ENGINE=InnoDB DEFAULT CHARSET=sjis;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `AT020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AT020` (
  `NRJYUGYOIN` varchar(5) NOT NULL,
  `TXKANA` varchar(30) NOT NULL,
  `TXKANJI` varchar(30) NOT NULL,
  `KBKOYOU` varchar(5) NOT NULL,
  `DTNYUSYA` date NOT NULL,
  `DTTAISYA` date DEFAULT NULL,
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`NRJYUGYOIN`)
) ENGINE=InnoDB DEFAULT CHARSET=sjis;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `AT021`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AT021` (
  `NRJYUGYOIN` varchar(5) NOT NULL,
  `DTSYOZOKUNENGETSU` varchar(6) NOT NULL,
  `CDBUMON` varchar(5) NOT NULL,
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`NRJYUGYOIN`,`DTSYOZOKUNENGETSU`)
) ENGINE=InnoDB DEFAULT CHARSET=sjis;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `CUSTOMERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMERS` (
  `CODE` varchar(20) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `CREDIT` int(11) NOT NULL DEFAULT '0',
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=sjis;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ORDERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ORDERS` (
  `NO` varchar(20) NOT NULL,
  `CODE` varchar(5) NOT NULL,
  `DATE` date NOT NULL,
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`NO`)
) ENGINE=InnoDB DEFAULT CHARSET=sjis;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ORDER_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ORDER_DETAILS` (
  `ORDERS_NO` varchar(20) NOT NULL,
  `ROW_NO` varchar(20) NOT NULL,
  `PRODUCTS_CODE` varchar(5) NOT NULL,
  `QUANTITY` int(11) NOT NULL DEFAULT '0',
  `SHIP_DATE` date NOT NULL,
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`ORDERS_NO`,`ROW_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=sjis;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `PRODUCTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCTS` (
  `CODE` varchar(5) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `PURCHASE_PRICE` int(11) NOT NULL DEFAULT '0',
  `SALES_PRICE` int(11) NOT NULL DEFAULT '0',
  `UNIT` varchar(4) NOT NULL,
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=sjis;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ZT010`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ZT010` (
  `IDVARIANT` char(20) NOT NULL,
  `TXNAME` char(10) NOT NULL,
  `TXTYPE` char(10) NOT NULL,
  `TXVALUE` char(100) NOT NULL,
  `TXREMARKS` varchar(500) DEFAULT NULL,
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`IDVARIANT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ZT020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ZT020` (
  `IDUSER` char(5) NOT NULL,
  `TXNAME` char(30) NOT NULL,
  `TXPASSWORD` char(50) NOT NULL,
  `DTVALID` date NOT NULL,
  `DTEXPIRE` date NOT NULL,
  `TXEMAIL` char(40) DEFAULT NULL,
  `TXMENUS` char(30) NOT NULL,
  `NREMPLOYEE` char(5) DEFAULT NULL,
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`IDUSER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ZT021`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ZT021` (
  `IDUSER` char(5) NOT NULL,
  `IDFUNCTION` char(20) NOT NULL,
  `IDFILTER` char(40) NOT NULL,
  `TXVALUE` char(50) DEFAULT NULL,
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`IDUSER`,`IDFUNCTION`,`IDFILTER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ZT030`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ZT030` (
  `IDNUMBER` char(20) NOT NULL,
  `TXPREFIX` char(4) DEFAULT NULL,
  `NRNUMDIGIT` smallint(6) NOT NULL DEFAULT '0',
  `NRCURRENT` int(11) NOT NULL DEFAULT '0',
  `FGWITHCD` char(1) NOT NULL,
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`IDNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ZT040`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ZT040` (
  `IDUSERKUBUN` char(20) NOT NULL,
  `KBUSERKUBUN` char(5) NOT NULL,
  `TXUSERKUBUN` char(20) NOT NULL,
  `SQLIST` char(5) DEFAULT NULL,
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`IDUSERKUBUN`,`KBUSERKUBUN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ZT050`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ZT050` (
  `NRSESSION` char(7) NOT NULL,
  `DTLOGIN` datetime NOT NULL,
  `DTLOGOUT` datetime DEFAULT NULL,
  `IDUSER` char(5) NOT NULL,
  `TXIPADDRESS` char(20) NOT NULL,
  `VLVERSION` char(10) NOT NULL,
  `KBSESSIONSTATUS` char(3) NOT NULL,
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`NRSESSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ZT051`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ZT051` (
  `NRSESSION` char(7) NOT NULL,
  `SQPROGRAM` smallint(6) NOT NULL DEFAULT '0',
  `IDMENU` char(2) NOT NULL,
  `IDPROGRAM` char(10) NOT NULL,
  `TXPROGRAM` char(30) NOT NULL,
  `DTSTART` datetime NOT NULL,
  `DTEND` datetime DEFAULT NULL,
  `KBPROGRAMSTATUS` char(2) DEFAULT NULL,
  `TXERRORLOG` longtext,
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`NRSESSION`,`SQPROGRAM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ZT060`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ZT060` (
  `DTSTART` date NOT NULL,
  `KBKAZEI` char(1) NOT NULL,
  `VLTAXRATE` decimal(3,2) NOT NULL DEFAULT '0.00',
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`DTSTART`,`KBKAZEI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ZT070`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ZT070` (
  `KBCALENDAR` char(2) NOT NULL,
  `DTOFF` date NOT NULL,
  `TXOFF` char(20) DEFAULT NULL,
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`KBCALENDAR`,`DTOFF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ZT080`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ZT080` (
  `KBCURRENCY` char(5) NOT NULL,
  `DTNEND` smallint(6) NOT NULL DEFAULT '0',
  `VLRATEB` decimal(10,3) NOT NULL DEFAULT '0.000',
  `VLRATEM` decimal(10,3) NOT NULL DEFAULT '0.000',
  `VLRATES` decimal(10,3) NOT NULL DEFAULT '0.000',
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`KBCURRENCY`,`DTNEND`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ZT081`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ZT081` (
  `KBCURRENCY` char(5) NOT NULL,
  `DTNEND` smallint(6) NOT NULL DEFAULT '0',
  `DTMSEQ` smallint(6) NOT NULL DEFAULT '0',
  `VLRATEB` decimal(10,3) NOT NULL DEFAULT '0.000',
  `VLRATEM` decimal(10,3) NOT NULL DEFAULT '0.000',
  `VLRATES` decimal(10,3) NOT NULL DEFAULT '0.000',
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`KBCURRENCY`,`DTNEND`,`DTMSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

INSERT INTO `schema_migrations` (version) VALUES
('20180328015548'),
('20180328063150');


