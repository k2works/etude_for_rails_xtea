
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
  `CDBUMON` char(5) NOT NULL COMMENT '部門Ｃ',
  `TXBUMON` char(30) NOT NULL COMMENT '部門名',
  `NRKANRISYA` char(5) NOT NULL COMMENT '管理者№',
  `TXTEKIYO` varchar(300) DEFAULT NULL COMMENT '摘要',
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`CDBUMON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `AT011`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AT011` (
  `CDBUMON` char(5) NOT NULL COMMENT '部門Ｃ',
  `DTHAKKOUNENGETSU` char(6) NOT NULL COMMENT '発効年月',
  `CDJYOUIBUMON` char(5) NOT NULL COMMENT '上位部門Ｃ',
  `DTSIKKOUNENGETSU` char(6) NOT NULL COMMENT '失効年月',
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`CDBUMON`,`DTHAKKOUNENGETSU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `AT020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AT020` (
  `NRJYUGYOIN` char(5) NOT NULL COMMENT '従業員№',
  `TXKANA` char(30) NOT NULL COMMENT 'カナ名',
  `TXKANJI` char(30) NOT NULL COMMENT '漢字名',
  `KBKOYOU` char(5) NOT NULL COMMENT '雇用区分',
  `DTNYUSYA` date NOT NULL COMMENT '入社日',
  `DTTAISYA` date DEFAULT NULL COMMENT '退社日',
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`NRJYUGYOIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `AT021`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AT021` (
  `NRJYUGYOIN` char(5) NOT NULL COMMENT '従業員№',
  `DTSYOZOKUNENGETSU` char(6) NOT NULL COMMENT '所属開始年月',
  `CDBUMON` char(5) NOT NULL COMMENT '部門Ｃ',
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`NRJYUGYOIN`,`DTSYOZOKUNENGETSU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `BT010`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BT010` (
  `CS_CODE` char(20) NOT NULL COMMENT '顧客コード',
  `CS_NAME` char(30) NOT NULL COMMENT '顧客名',
  `CS_CREDIT` int(11) NOT NULL DEFAULT '0' COMMENT '与信限度額',
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`CS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `BT020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BT020` (
  `OD_NO` char(20) NOT NULL COMMENT '受注No',
  `CS_CODE` char(5) NOT NULL COMMENT '顧客コード',
  `OD_DATE` date NOT NULL COMMENT '受注日',
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`OD_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `BT021`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BT021` (
  `OD_NO` char(20) NOT NULL COMMENT '受注No',
  `OD_LINE_NO` char(20) NOT NULL COMMENT '行番号',
  `PD_CODE` char(5) NOT NULL COMMENT '商品コード',
  `OD_QUANTITY` int(11) NOT NULL DEFAULT '0' COMMENT '受注数',
  `OD_SHIP_DATE` date NOT NULL COMMENT '出荷日',
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`OD_NO`,`OD_LINE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `BT030`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BT030` (
  `PD_CODE` char(5) NOT NULL COMMENT '商品コード',
  `PD_NAME` char(30) NOT NULL COMMENT '商品名',
  `PURCHASE_PRICE` int(11) NOT NULL DEFAULT '0' COMMENT '購入単価',
  `SALES_PRICE` int(11) NOT NULL DEFAULT '0' COMMENT '販売単価',
  `PD_UNIT` char(4) NOT NULL COMMENT '扱い単位',
  `UPDCOUNTER` int(11) DEFAULT '0',
  PRIMARY KEY (`PD_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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


