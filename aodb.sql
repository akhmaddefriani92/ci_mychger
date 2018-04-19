-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: aodb
-- ------------------------------------------------------
-- Server version	5.5.46-0+deb7u1-log

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
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `AddressINX` int(4) NOT NULL AUTO_INCREMENT,
  `GatewayINX` int(4) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `CCPINX` varchar(30) DEFAULT NULL,
  `AddressType` varchar(20) DEFAULT NULL,
  `Inuse` varchar(10) DEFAULT NULL,
  `Activated` varchar(10) DEFAULT NULL,
  `Used` varchar(10) DEFAULT NULL,
  `Deletef` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`AddressINX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Airlines`
--

DROP TABLE IF EXISTS `Airlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Airlines` (
  `AirlinesINX` int(4) NOT NULL AUTO_INCREMENT,
  `Name` char(126) DEFAULT NULL,
  `AirlinesCode` char(14) DEFAULT NULL,
  `MBpp` char(3) DEFAULT NULL,
  `Comment` char(126) DEFAULT NULL,
  `Contact` char(100) DEFAULT NULL,
  `Address` char(120) DEFAULT NULL,
  `Phone1` char(40) DEFAULT NULL,
  `Phone2` char(40) DEFAULT NULL,
  `FaxNbr` char(40) DEFAULT NULL,
  `HpNbr` char(40) DEFAULT NULL,
  `Email` char(100) DEFAULT NULL,
  `Deletef` char(1) DEFAULT NULL,
  PRIMARY KEY (`AirlinesINX`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Airlines`
--

LOCK TABLES `Airlines` WRITE;
/*!40000 ALTER TABLE `Airlines` DISABLE KEYS */;
INSERT INTO `Airlines` VALUES (22,'Garuda','GA','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'-','0'),(23,'Mandala','RI','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'-','0'),(24,'AIRASIA','QZ','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'-','0'),(25,'Lion Air','JT','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(26,'PylotDCS','DS','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(27,'Indonesia Air Transport','I8','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','1'),(28,'Kalstar','KD','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'-','0'),(29,'trigana','TN','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(30,'MasWings','MH','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(31,'Citylink','QG','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(32,'Merpati','MZ','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(33,'firefly','FY','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(34,'airasia ak','AK','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(35,'WINGS AIR','IW','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(36,'TIGER AIR','TR','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(37,'Xpress Air','XN','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(38,'SILK AIR','MI','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(39,'susi air','SI','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(40,'JATAYU','JZ','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(41,'SRIWIJAYA','SJ','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(42,'NAM AIR','NM','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(43,'airasia int','qz','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','1'),(44,'Batik Air','ID','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(45,'Airfast','FS','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(46,'Pelita Air','PAS','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(47,'Transnusa','8B','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(48,'Travira','TV','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(49,'transnusa','8bap','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(50,'ALL FLIGHT','HLP','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','0'),(52,'JetStar','3K','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0');
/*!40000 ALTER TABLE `Airlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AppSetting`
--

DROP TABLE IF EXISTS `AppSetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AppSetting` (
  `Setting` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AppSetting`
--

LOCK TABLES `AppSetting` WRITE;
/*!40000 ALTER TABLE `AppSetting` DISABLE KEYS */;
INSERT INTO `AppSetting` VALUES ('TRAVSYSEXE=C:\\Program Files\\Travsys\\CCP32;RECORDPATH=C:\\;AUTORECORD=off;FrameMode=Off;ODBCPass=mcojaya;RunAddOn=True;DirW=c:\\;LANOK=c:\\LAN_OK.v.2.0\\LAN_ENABLED.BAT;WIFIOK=c:\\LAN_OK.v.2.0\\WIFI_ENABLED.BAT;DIRLANWIFI=c:\\LAN_OK.v.2.0;HlpDeskServer=172.16.20.162\\osticket;OTHERCONDITION=True');
/*!40000 ALTER TABLE `AppSetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApplAddon`
--

DROP TABLE IF EXISTS `ApplAddon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApplAddon` (
  `idx` int(4) NOT NULL AUTO_INCREMENT,
  `AirCode` varchar(2) DEFAULT NULL,
  `AppName` varchar(50) DEFAULT NULL,
  `AppPath` varchar(100) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApplAddon`
--

LOCK TABLES `ApplAddon` WRITE;
/*!40000 ALTER TABLE `ApplAddon` DISABLE KEYS */;
INSERT INTO `ApplAddon` VALUES (41,'MI','Restart.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\Tools\\AmadeusService\\Restart.exe','A'),(42,'JT','Stop.exe','D:\\Master\\Program Airlines\\AirlinePrinterDriver\\Tools\\AmadeusService\\Stop.exe','A'),(43,'3K','RegInject.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\BoardingPass\\Citilink\\PrinterReg\\RegInject.exe','X'),(44,'OD','Stop.exe','D:\\Master\\Program Airlines\\AirlinePrinterDriver\\Tools\\AmadeusService\\stop.exe','A'),(45,'JT','BoardingPassJT.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\BoardingPass\\LionAir\\BoardingPassJT.exe','A'),(46,'JT','BagtagJT.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\Bagtag\\LionAir\\BagtagJT.exe','A'),(47,'OD','BoardingPassOD.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\BoardingPass\\Malindo\\BoardingPassOD.exe','A'),(48,'MI','BagtagMI.exe','D:\\master\\program airlines\\AirlinePrinterDriver\\Bagtag\\Silkair\\BagtagMI.exe','A'),(49,'HL','BagtagOD.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\Bagtag\\Malindo\\BagtagOD.exe','A'),(50,'QG','CitilinkTCP.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\BoardingPass\\Citilink\\CitilinkTCP.exe','A'),(51,'QG','BagtagQG.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\Bagtag\\Citilink\\BagtagQG.exe','A'),(52,'AK','APR.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\BoardingPass\\AirAsia\\APR.exe','A'),(53,'QZ','Stop.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\Tools\\AmadeusService\\Stop.exe','A'),(54,'SI','Stop.exe','D:\\Master\\Program Airlines\\AirlinePrinterDriver\\Tools\\AmadeusService\\Stop.exe','A'),(55,'SI','BagtagSI.exe','D:\\Master\\Program Airlines\\AirlinePrinterDriver\\Bagtag\\Susiair\\BagtagSI.exe','A'),(56,'SJ','Stop.exe','D:\\Master\\Program Airlines\\AirlinePrinterDriver\\Tools\\AmadeusService\\Stop.exe','A'),(57,'SJ','BagtagSJ.exe','D:\\Master\\Program Airlines\\AirlinePrinterDriver\\Bagtag\\Sriwijaya\\BagtagSJ.exe','X'),(58,'IN','Stop.exe','D:\\Master\\Program Airlines\\AirlinePrinterDriver\\Tools\\AmadeusService\\Stop.exe','A'),(59,'IW','BoardingPassJT.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\BoardingPass\\LionAir\\BoardingPassJT.exe','A'),(60,'IN','BagtagIN.exe','D:\\Master\\Program Airlines\\AirlinePrinterDriver\\Bagtag\\Nam\\BagtagNM.exe','X'),(61,'XN','Stop.exe','D:\\Master\\Program Airlines\\AirlinePrinterDriver\\Tools\\AmadeusService\\Stop.exe','A'),(62,'XN','EBTexpress.exe','D:\\Master\\Program Airlines\\AirlinePrinterDriver\\BoardingPass\\Xpress\\EBTexpress.exe','A'),(63,'GA','BoardingPassGA.exe','D:\\master\\program airlines\\AirlinePrinterDriver\\BoardingPass\\Garuda\\NONIER\\BoardingPassGA.exe','A'),(64,'MI','BoardingPassMI.exe','D:\\master\\program airlines\\AirlinePrinterDriver\\BoardingPass\\SilkAir\\BoardingPassMI.exe','A'),(65,'GA','restart.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\Tools\\AmadeusService\\restart.exe','A'),(66,'IW','Stop.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\Tools\\AmadeusService\\Stop.exe','A'),(67,'AK','Stop.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\Tools\\AmadeusService\\Stop.exe','A'),(68,'QZ','APR.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\BoardingPass\\AirAsia\\APR.exe','A'),(69,'IW','BagtagJT.exe','D:\\master\\program airlines\\AirlinePrinterDriver\\Bagtag\\LionAir\\BagtagJT.exe','A'),(70,'QG','RegInject.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\BoardingPass\\Citilink\\PrinterReg\\RegInject.exe','X'),(71,'QZ','BagtagQZ.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\Bagtag\\AirAsia\\BagtagQZ.exe','A'),(72,'AK','BagtagQZ.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\Bagtag\\AirAsia\\BagtagQZ.exe','A'),(73,'3K','BagtagVF.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\Bagtag\\Valuair\\BagtagVF.exe','A'),(74,'FY','BagtagFY.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\Bagtag\\Firefly\\BagtagFY.exe','A'),(75,'GA','BagtagGA.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\Bagtag\\Garuda\\BagtagGA.exe','A'),(76,'ID','Stop.exe','D:\\Master\\Program Airlines\\AirlinePrinterDriver\\Tools\\AmadeusService\\stop.exe','A'),(77,'ID','BoardingPassID.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\BoardingPass\\Batik\\BoardingPassID.exe','A'),(78,'ID','BagtagID.exe','D:\\master\\Program Airlines\\AirlinePrinterDriver\\Bagtag\\Batik\\BagtagID.exe','A');
/*!40000 ALTER TABLE `ApplAddon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CCPProtocol`
--

DROP TABLE IF EXISTS `CCPProtocol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CCPProtocol` (
  `INX` int(4) NOT NULL AUTO_INCREMENT,
  `CCPProtocol` varchar(100) DEFAULT NULL,
  `Deletef` varchar(10) DEFAULT NULL,
  `Font` varchar(30) DEFAULT NULL,
  `ARow` int(4) DEFAULT NULL,
  `ACol` int(10) DEFAULT NULL,
  `AColor1` varchar(20) DEFAULT NULL,
  `AColor2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`INX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CCPProtocol`
--

LOCK TABLES `CCPProtocol` WRITE;
/*!40000 ALTER TABLE `CCPProtocol` DISABLE KEYS */;
/*!40000 ALTER TABLE `CCPProtocol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `City`
--

DROP TABLE IF EXISTS `City`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `City` (
  `City` varchar(6) DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `City`
--

LOCK TABLES `City` WRITE;
/*!40000 ALTER TABLE `City` DISABLE KEYS */;
INSERT INTO `City` VALUES ('AMQ','AMBON'),('BDO','BANDUNG'),('BPN','BALIKPAPAN'),('BDJ','BANJARMASIN'),('KNO','KUALANAMU'),('DPS','DENPASAR'),('DJB','JAMBI'),('JKT','JAKARTA'),('JOG','YOGYAKARTA'),('UPG','MAKASSAR'),('MDC','MENADO'),('MES','MEDAN'),('JHB','NULL'),('PKU','PEKANBARU'),('SRG','SEMARANG'),('SUB','SURABAYA'),('KOE','KUPANG'),('TKG','TANJUNGKARANG'),('KUL','KUALALUMPUR'),('PLM','PALEMBANG'),('WGP','WAINGAPU'),('PLW','PALU'),('BKS','BENGKULU'),('KDI','KENDARI'),('TIM','TIMIKA'),('AMI','AMPENAN'),('NSW','NUSAWIRU'),('CXP','CILACAP'),('MKZ','MALAKA'),('BIK','BIAK'),('PKY','PALANGKARAYA'),('MKW','MANOKWARI'),('NBX','NABIRE'),('TRK','TARAKAN'),('LBJ','LABUHANBAJO'),('TMC','TAMBULAKA'),('AGD','ANGGI'),('AHI','AMAHAI'),('ARD','ALOR'),('ARJ','ARSO'),('BEJ','BERAU'),('BJW','BAJAWA'),('BTJ','BANDA ACEH'),('BUI','BOKONDINI'),('BUW','BAU BAU'),('BWN','BANDARSERIBEGAWAN'),('BXD','BADE'),('CBN','CIREBON'),('DOB','DOBO'),('DTD','DATADAWAI'),('DUM','DUMAI'),('ELR','ELELIM'),('EWI','ENAROTALI'),('FKQ','FAKFAK'),('KAZ','KAO'),('KNG','KAIMANA'),('KOX','KOKONAO'),('KTG','KETAPANG'),('KWB','KARIMUNJAWA'),('LAH','LABUHAN'),('LBW','LONGBAWAN'),('LHI','LEREH'),('LKA','LARANTUKA'),('LPU','LONGAPUNG'),('LUV','LANGGUR'),('LUW','LUWUK'),('LOW','LEWOLEBA'),('LYK','LUYUK'),('MAL','MANGOLE'),('MIU','MAMUJU'),('MLG','MALANG'),('MNA','MELANGGUANE'),('MPT','MALIANA'),('MTW','MUARATEWE'),('MUF','MUTING'),('MXB','MASAMBA'),('NAH','NAHA'),('NAM','NAMLEA'),('NDA','BANDANAIRA'),('NNX','NUNUKAN'),('NTI','BINTUNI'),('DJJ','DJAYAPURA'),('SOQ','SORONG'),('SWQ','SUMBAWA'),('BMU','BIMA'),('DIL','DILLI'),('SIN','SINGAPORE'),('GTO','GORONTALO'),('AEG','AEKGODANG'),('OEC','OECCUSI'),('ONI','MOANAMANI'),('OTI','MOROTAI'),('PGK','PANGKALPINANG'),('PKN','PANGKALANBUN'),('PUM','POMALAA'),('PWL','PURWOKERTO'),('RAQ','RAHA'),('RGY','RENGAT'),('RSK','RANSIKI'),('RTG','RUTENG'),('RUF','YURUF'),('SMQ','SAMPIT'),('SQN','SANANA'),('SQR','SOROAKO'),('SRI','SAMARINDA'),('TAX','TALIABU'),('TJS','TANJUNGSELOR'),('TLI','TOLITOLI'),('TMY','TIOM'),('TNJ','TANJUNGPINANG'),('TTR','TANAHTORAJA'),('TWU','TAWAU'),('UAI','SUAI'),('UBR','UBRUK'),('UOL','BUOL'),('WIQ','VIQUEQUE'),('WAR','WARIS'),('WET','WAGHETE'),('WRR','WERUR'),('ZEG','ZENGGO'),('ZRI','SERUI'),('BCH','BAUCAU'),('PHE','PORTHEDLAND'),('KCH','KUCHING'),('MEL','MELBOURNE'),('AYW','AYAWASI'),('BXB','BABO'),('BXM','BATOM'),('DRH','DEBRA'),('EWE','EWER'),('FOO','NUMFOOR'),('GBE','GEBE'),('GLX','GALELA'),('ILA','ILAGA'),('INX','INANWATAN'),('IUL','ILU'),('KBF','KARUBAGA'),('KBX','KAMBUAYA'),('KEA','KEISAH'),('KEI','KEPI'),('KEQ','KEBAR'),('KMM','KIMAN'),('KMR','KAMUR'),('MDP','MINDIPTANAH'),('NKD','SINAK'),('NRE','NAMROLE'),('OBD','OBANO'),('OKL','OKSIBIL'),('OKQ','OKABA'),('RDE','MERDEY'),('RTI','ROTE'),('SAU','SABU'),('SEH','SENGGEH'),('SXK','SAUMLAKI'),('TMH','TANAHMERAH'),('TXM','TEMINABUAN'),('UGU','ZUGAPA'),('WHI','WAHAI'),('WSR','WASIOR'),('ZRM','SARMI'),('ABU','ATAMBUA'),('GNS','GUNUNGSITOLI'),('SOC','SOLO'),('BTH','RIAU'),('SBQ','SIBOLGA'),('TTE','TERNATE'),('TJQ','TANJUNGPANDAN'),('MOF','MAUMERE'),('ENE','ENDE'),('MKQ','MERAUKE'),('WMX','WAMENA'),('DRW','DARWIN'),('PNK','PONTIANAK'),('SIQ','SINGKEP'),('PSJ','POSO'),('PDG','PADANG'),('CGK','CENGKARENG'),('PSU','PUTUSIBAU'),('JED','JEDDAH'),('MED','MADINAH'),('JBB','JEMBER'),('FLZ','SIBOLGA'),('LOP','LOMBOK'),('PVG','SHANGHAI'),('SQT','SILANGIT'),('SHA','SHANGHAI'),('HND','HANEDAKUKO'),('HLP','HALIM P. KUSUMA'),('PEN','PENANG');
/*!40000 ALTER TABLE `City` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Counter`
--

DROP TABLE IF EXISTS `Counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Counter` (
  `IPAddress` varchar(100) NOT NULL,
  `Counter` int(4) NOT NULL DEFAULT '0',
  `IPDisplay` char(100) DEFAULT NULL,
  `MRL` char(100) DEFAULT NULL,
  `Status` int(4) DEFAULT NULL,
  `DateStatus` date DEFAULT NULL,
  PRIMARY KEY (`IPAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Counter`
--

LOCK TABLES `Counter` WRITE;
/*!40000 ALTER TABLE `Counter` DISABLE KEYS */;
INSERT INTO `Counter` VALUES ('192.168.1.239',4,'10.10.10.80','A04',0,'2017-03-08'),('192.168.1.94',9,'10.10.10.80','A09',0,'2017-03-08'),('192.168.19.11',1,'192.168.1.161','A3',0,'2017-03-01');
/*!40000 ALTER TABLE `Counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Flight`
--

DROP TABLE IF EXISTS `Flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Flight` (
  `FlightID` int(4) NOT NULL AUTO_INCREMENT,
  `FlightNo` char(16) DEFAULT NULL,
  `AirlinesINX` int(4) DEFAULT NULL,
  `Destination` char(15) DEFAULT NULL,
  `STD` char(8) DEFAULT NULL,
  `Via` char(15) DEFAULT NULL,
  `Via2` char(15) DEFAULT NULL,
  `Boarding` char(8) DEFAULT NULL,
  `Gate` int(4) DEFAULT NULL,
  `Deletef` char(1) DEFAULT NULL,
  `Ket` char(10) DEFAULT NULL,
  `ETD` char(8) DEFAULT NULL,
  PRIMARY KEY (`FlightID`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Flight`
--

LOCK TABLES `Flight` WRITE;
/*!40000 ALTER TABLE `Flight` DISABLE KEYS */;
INSERT INTO `Flight` VALUES (4,'ID 6596',0,'SURABAYA','1100','','','1100',0,'','',NULL),(5,'QG 610',0,'SEMARANG','0800','','','0800',0,'','',NULL),(6,'JT0711',25,'CENGKARENG','1100','','','1100',0,'0','',NULL),(9,'AK489',34,'CENGKARENG','0740','','','0740',0,'0','',NULL),(12,'GA 0123',22,'CENGKARENG','02:00',NULL,NULL,'',NULL,'0',NULL,NULL),(13,'QG 659',12,'KUALANAMU','02:00',NULL,NULL,'',NULL,'0',NULL,NULL),(14,'QG 6592',31,'KUALANAMU','02:00',NULL,NULL,'1001',NULL,'1',NULL,NULL),(15,'QG 614',31,'CENGKARENG','1100',NULL,NULL,'',NULL,'0',NULL,NULL),(16,'GA 283',22,'GORONTALO','2000',NULL,NULL,'',NULL,'0','',NULL),(17,'GA 0100',22,'PALEMBANG','1200',NULL,NULL,'',NULL,'0',NULL,NULL),(18,'AK0395',34,'KUALA LUMPUR','1940',NULL,NULL,'',NULL,'1',NULL,NULL),(19,'AK104',34,'PENANG','1535',NULL,NULL,'',NULL,'1',NULL,NULL),(20,'AK298',34,'PENANG','1845',NULL,NULL,'',NULL,'0',NULL,NULL),(21,'AK393',34,'KUALA LUMPUR','1755',NULL,NULL,'',NULL,'0',NULL,NULL),(22,'AK395',34,'KUALA LUMPUR','2000',NULL,NULL,'',NULL,'0',NULL,NULL),(23,'AK397',34,'ATAMBUA','0805',NULL,NULL,'',NULL,'0',NULL,NULL),(24,'GA0121',22,'JAKARTA','0',NULL,NULL,'',NULL,'0',NULL,NULL),(25,'GA0121',22,'JAKARTA','1605',NULL,NULL,'',NULL,'1',NULL,NULL),(26,'GA0123',22,'JAKARTA','0730',NULL,NULL,'',NULL,'1','',NULL),(27,'GA0123',22,'CENGKARENG','0730',NULL,NULL,'',NULL,'0','',NULL),(28,'GA0181',22,'CENGKARENG','0520',NULL,NULL,'',NULL,'0','',NULL),(29,'GA0181',22,'JAKARTA','0520',NULL,NULL,'',NULL,'1','',NULL),(30,'GA0183',22,'CENGKARENG','0900',NULL,NULL,'',NULL,'0',NULL,NULL),(31,'GA0183',22,'JAKARTA','0905',NULL,NULL,'',NULL,'1',NULL,NULL),(32,'GA0185',22,'JAKARTA','1115',NULL,NULL,'',NULL,'1',NULL,NULL),(33,'GA0185',22,'CENGKARENG','1115',NULL,NULL,'',NULL,'0',NULL,NULL),(34,'GA0187',22,'CENGKARENG','1220',NULL,NULL,'',NULL,'0',NULL,NULL),(35,'GA0187',22,'JAKARTA','1220',NULL,NULL,'',NULL,'1',NULL,NULL),(36,'GA0189',22,'JAKARTA','1405',NULL,NULL,'',NULL,'0',NULL,NULL),(37,'GA0191',22,'JAKARTA','1700',NULL,NULL,'',NULL,'0',NULL,NULL),(38,'GA0193',22,'JAKARTA','1835',NULL,NULL,'',NULL,'0',NULL,NULL),(39,'GA0195',22,'JAKARTA','2035',NULL,NULL,'',NULL,'0',NULL,NULL),(40,'GA0197',22,'JAKARTA','1010',NULL,NULL,'',NULL,'0',NULL,NULL),(41,'GA0260',22,'PADANG','1035',NULL,NULL,'',NULL,'0',NULL,NULL),(42,'GA0262',22,'PADANG','1450',NULL,NULL,'',NULL,'0',NULL,NULL),(43,'GA0263',22,'JAKARTA','730',NULL,NULL,'',NULL,'0',NULL,NULL),(44,'GA0266',22,'DENPASAR','0630',NULL,NULL,'',NULL,'0','',NULL),(45,'GA0266',22,'PALEMBANG','0630',NULL,NULL,'',NULL,'0','',NULL),(46,'GA0268',22,'PALEMBANG','1455',NULL,NULL,'',NULL,'0','',NULL),(47,'GA0270',22,'ATAMBUA','0920',NULL,NULL,'',NULL,'0',NULL,NULL),(48,'GA0850',22,'SINGAPORE','1330',NULL,NULL,'',NULL,'0','',NULL),(49,'GA7112',22,'ATAMBUA','0850',NULL,NULL,'',NULL,'0',NULL,NULL),(50,'GA7116',22,'ATAMBUA','0710',NULL,NULL,'',NULL,'0',NULL,NULL),(53,'GA7134',22,'SIBOLGA','0800',NULL,NULL,'',NULL,'0',NULL,NULL),(54,'GA7136',22,'SILANGIT','1320',NULL,NULL,'',NULL,'0',NULL,NULL),(55,'ID6881',44,'JAKARTA','500',NULL,NULL,'',NULL,'0',NULL,NULL),(56,'ID6885',44,'JAKARTA','1100',NULL,NULL,'',NULL,'0',NULL,NULL),(57,'ID6887',44,'JAKARTA','2000',NULL,NULL,'',NULL,'0',NULL,NULL),(58,'ID6891',44,'JAKARTA','1800',NULL,NULL,'',NULL,'0',NULL,NULL),(59,'ID7010',44,'HALIM P. KUSUMA','1105',NULL,NULL,'',NULL,'0','',NULL),(60,'ID7012',44,'HALIM P. KUSUMA','1245',NULL,NULL,'',NULL,'0',NULL,NULL),(61,'ID7014',44,'HALIM P. KUSUMA','0915',NULL,NULL,'',NULL,'0',NULL,NULL),(62,'ID7016',44,'HALIM P. KUSUMA','1855',NULL,NULL,'',NULL,'0',NULL,NULL),(63,'IW0000',35,'ALL FLIGHT','0',NULL,NULL,'',NULL,'0',NULL,NULL),(64,'IW1216',35,'BANDA ACEH','1815',NULL,NULL,'',NULL,'0',NULL,NULL),(65,'IW1239',35,'DUMAI','1200',NULL,NULL,'',NULL,'0',NULL,NULL),(66,'IW1240',35,'SIMEULUE','1320',NULL,NULL,'',NULL,'0',NULL,NULL),(69,'IW1252',35,'MEULABOH','1045',NULL,NULL,'',NULL,'0',NULL,NULL),(70,'IW1254',35,'SIBOLGA','1315',NULL,NULL,'',NULL,'0',NULL,NULL),(71,'IW1256',35,'SIBOLGA','1020',NULL,NULL,'',NULL,'0',NULL,NULL),(72,'IW1258',35,'SIBOLGA','0800',NULL,NULL,'',NULL,'0',NULL,NULL),(78,'IW1296',35,'SILANGIT','750',NULL,NULL,'',NULL,'0',NULL,NULL),(79,'IW1410',35,'TAKENGON','800',NULL,NULL,'',NULL,'0',NULL,NULL),(80,'JT0000',25,'ALL FLIGHT','0',NULL,NULL,'',NULL,'0',NULL,NULL),(81,'JT0001',25,'VIP','0',NULL,NULL,'',NULL,'0',NULL,NULL),(82,'JT0124',25,'PENANG','800',NULL,NULL,'',NULL,'0','',NULL),(83,'JT0131',25,'PADANG','1300',NULL,NULL,'',NULL,'0',NULL,NULL),(84,'JT0132',25,'PENANG','940',NULL,NULL,'',NULL,'0',NULL,NULL),(85,'JT0136',25,'PENANG','1615',NULL,NULL,'',NULL,'0',NULL,NULL),(86,'JT0140',25,'PEKAN BARU','1240',NULL,NULL,'',NULL,'0','',NULL),(87,'JT0196',25,'BANDA ACEH','700',NULL,NULL,'',NULL,'0',NULL,NULL),(88,'JT0197',25,'JAKARTA','1150',NULL,NULL,'',NULL,'0',NULL,NULL),(89,'JT0201',25,'JAKARTA','1250',NULL,NULL,'',NULL,'0',NULL,NULL),(90,'JT0205',25,'JAKARTA','2010',NULL,NULL,'',NULL,'0',NULL,NULL),(91,'JT0207',25,'JAKARTA','840',NULL,NULL,'',NULL,'0',NULL,NULL),(92,'JT0231',25,'PADANG','600',NULL,NULL,'',NULL,'0',NULL,NULL),(93,'JT0295',25,'PEKAN BARU','1640',NULL,NULL,'',NULL,'0',NULL,NULL),(94,'JT0303',25,'JAKARTA','1150',NULL,NULL,'',NULL,'0',NULL,NULL),(95,'JT0305',25,'JAKARTA','1910',NULL,NULL,'',NULL,'0',NULL,NULL),(96,'JT0306',25,'BANDA ACEH','1440',NULL,NULL,'',NULL,'0',NULL,NULL),(97,'JT0383',25,'JAKARTA','1550',NULL,NULL,'',NULL,'0',NULL,NULL),(98,'JT0385',25,'JAKARTA','1745',NULL,NULL,'',NULL,'0',NULL,NULL),(99,'JT0387',25,'JAKARTA','1350',NULL,NULL,'',NULL,'0',NULL,NULL),(100,'JT0396',25,'BANDA ACEH','2025',NULL,NULL,'',NULL,'0',NULL,NULL),(101,'JT0397',25,'JAKARTA','750',NULL,NULL,'',NULL,'0',NULL,NULL),(102,'JT0399',25,'JAKARTA','1520',NULL,NULL,'',NULL,'0',NULL,NULL),(103,'JT0902',25,'DENPASAR','1315',NULL,NULL,'',NULL,'0',NULL,NULL),(104,'JT0904',25,'DENPASAR','630',NULL,NULL,'',NULL,'0',NULL,NULL),(105,'JT0913',25,'BANDUNG','630',NULL,NULL,'',NULL,'0',NULL,NULL),(106,'JT0932',25,'BALIKPAPAN','1255',NULL,NULL,'',NULL,'0',NULL,NULL),(107,'JT0948',25,'SURABAYA','1420',NULL,NULL,'',NULL,'0',NULL,NULL),(108,'JT0957',25,'BATAM','820',NULL,NULL,'',NULL,'0',NULL,NULL),(109,'JT0959',25,'BATAM','1130',NULL,NULL,'',NULL,'0',NULL,NULL),(110,'JT0960',25,'DENPASAR','900',NULL,NULL,'',NULL,'0',NULL,NULL),(111,'JT0970',25,'SURABAYA','700',NULL,NULL,'',NULL,'0',NULL,NULL),(112,'JT0972',25,'SURABAYA','1255',NULL,NULL,'',NULL,'0',NULL,NULL),(113,'JT0977',25,'BATAM','1450',NULL,NULL,'',NULL,'0',NULL,NULL),(114,'JT0978',25,'SURABAYA','1850',NULL,NULL,'',NULL,'0',NULL,NULL),(115,'JT0982',25,'SURABAYA','830',NULL,NULL,'',NULL,'0',NULL,NULL),(116,'JT0988',25,'BATAM','1000',NULL,NULL,'',NULL,'0',NULL,NULL),(117,'MH0861',30,'KUALA LUMPUR','910',NULL,NULL,'',NULL,'0',NULL,NULL),(118,'MH0865',30,'KUALA LUMPUR','1700',NULL,NULL,'',NULL,'0',NULL,NULL),(119,'MI0233',38,'SINGAPORE','840',NULL,NULL,'',NULL,'0',NULL,NULL),(120,'MI0237',38,'SINGAPORE','2005',NULL,NULL,'',NULL,'0',NULL,NULL),(122,'QG0143',31,'HALIM P','1100',NULL,NULL,'',NULL,'0',NULL,NULL),(123,'QG141',31,'HALIM P. KUSUMA','1850',NULL,NULL,'',NULL,'0',NULL,NULL),(124,'QG143',31,'HALIM P','1125',NULL,NULL,'',NULL,'0',NULL,NULL),(125,'QG831',31,'JAKARTA','840',NULL,NULL,'',NULL,'0','',NULL),(126,'QG833',31,'JAKARTA','1910',NULL,NULL,'',NULL,'0','',NULL),(127,'QG835',31,'JAKARTA','2035',NULL,NULL,'',NULL,'0',NULL,NULL),(128,'QG837',31,'JAKARTA','1000',NULL,NULL,'',NULL,'0',NULL,NULL),(129,'QG882',31,'BATAM','1515',NULL,NULL,'',NULL,'0',NULL,NULL),(130,'QG884',31,'BATAM','1300',NULL,NULL,'',NULL,'0',NULL,NULL),(131,'QG927',31,'BANDUNG','1205',NULL,NULL,'',NULL,'0',NULL,NULL),(132,'QG978',31,'PEKAN BARU','750',NULL,NULL,'',NULL,'0',NULL,NULL),(133,'QG992',31,'BANDA ACEH','1540',NULL,NULL,'',NULL,'0',NULL,NULL),(134,'QZ0104',24,'PENANG','1545',NULL,NULL,'',NULL,'0',NULL,NULL),(135,'QZ102',24,'PENANG','1945',NULL,NULL,'',NULL,'0',NULL,NULL),(136,'QZ104',24,'PENANG','1545',NULL,NULL,'',NULL,'0',NULL,NULL),(137,'QZ106',24,'ATAMBUA','0900',NULL,NULL,'',NULL,'0',NULL,NULL),(138,'QZ122',24,'KUALA LUMPUR','1225',NULL,NULL,'',NULL,'0',NULL,NULL),(139,'QZ124',24,'KUALA LUMPUR','1535',NULL,NULL,'',NULL,'0',NULL,NULL),(140,'QZ154',24,'BANGKOK','1345',NULL,NULL,'',NULL,'0',NULL,NULL),(141,'QZ8040',24,'PALEMBANG','1320',NULL,NULL,'',NULL,'0',NULL,NULL),(142,'QZ8074',24,'YOGYAKARTA','600',NULL,NULL,'',NULL,'0',NULL,NULL),(143,'SI0100',39,'TELO ISLAND','1200',NULL,NULL,'',NULL,'0',NULL,NULL),(144,'SI0140',39,'SIMELUE','700',NULL,NULL,'',NULL,'0',NULL,NULL),(145,'SI0172',39,'SILANGIT','800',NULL,NULL,'',NULL,'0',NULL,NULL),(146,'SJ0011',41,'JAKARTA','1200',NULL,NULL,'',NULL,'0',NULL,NULL),(147,'SJ0015',41,'JAKARTA','1405',NULL,NULL,'',NULL,'0',NULL,NULL),(148,'SJ0017',41,'JAKARTA','1840',NULL,NULL,'',NULL,'0','',NULL),(149,'SJ0021',41,'PADANG','1305',NULL,NULL,'',NULL,'0','',NULL),(150,'SJ0102',41,'ATAMBUA','0900',NULL,NULL,'',NULL,'0','',NULL),(151,'SJ1700',41,'JAKARTA','2245',NULL,NULL,'',NULL,'0',NULL,NULL),(152,'SJ2014',41,'MALAKA','1620',NULL,NULL,'',NULL,'0',NULL,NULL),(153,'DA 001',24,'DENPASAR','02:00',NULL,NULL,'10:00',NULL,'0',NULL,NULL);
/*!40000 ALTER TABLE `Flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FunctionName`
--

DROP TABLE IF EXISTS `FunctionName`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FunctionName` (
  `FunctionINX` int(4) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Deletef` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`FunctionINX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FunctionName`
--

LOCK TABLES `FunctionName` WRITE;
/*!40000 ALTER TABLE `FunctionName` DISABLE KEYS */;
/*!40000 ALTER TABLE `FunctionName` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GUILink`
--

DROP TABLE IF EXISTS `GUILink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GUILink` (
  `GuiID1` varchar(60) DEFAULT NULL,
  `GuiID2` varchar(60) DEFAULT NULL,
  `GuiID3` varchar(60) DEFAULT NULL,
  `GuiID4` varchar(60) DEFAULT NULL,
  `GuiID5` varchar(60) DEFAULT NULL,
  `Deletef` char(1) DEFAULT NULL,
  `IPAddress` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GUILink`
--

LOCK TABLES `GUILink` WRITE;
/*!40000 ALTER TABLE `GUILink` DISABLE KEYS */;
INSERT INTO `GUILink` VALUES ('GONOW-NEW','NAVITAIRE-NEW','CALCULATOR','MOZILA','NOGUI','0',35),('SICI','CALCULATOR','NOGUI','NOGUI','NOGUI','0',38),('GONOW -QG','NAV_CITYLINK','CALCULATOR','NOGUI','NOGUI','0',39),('GONOW-NEW','NAVITAIRE-NEW','CALCULATOR','MOZILA','NOGUI','0',41),('TRANSNUSA','CALCULATOR','TRANSNUSA','NOGUI','NOGUI','0',47),('NOGUI','CALCULATOR','NOGUI','NOGUI','NOGUI','0',50),('NOGUI','CALCULATOR','NOGUI','NOGUI','NOGUI','0',52),('AIRFAST','CALCULATOR','MOZILA','NOGUI','NOGUI','0',54),('AIRFAST','CALCULATOR','MOZILA','NOGUI','NOGUI','0',56),('AIRFAST','CALCULATOR','MOZILA','NOGUI','NOGUI','0',57),('AIRFAST','CALCULATOR','MOZILA','NOGUI','NOGUI','0',58),('AIRFAST','CALCULATOR','MOZILA','NOGUI','NOGUI','0',60),('AIRFAST','CALCULATOR','MOZILA','NOGUI','NOGUI','0',61),('AIRFAST','CALCULATOR','MOZILA','NOGUI','NOGUI','0',62),('AIRFAST','CALCULATOR','MOZILA','NOGUI','NOGUI','0',63),('AIRFAST','CALCULATOR','MOZILA','NOGUI','NOGUI','0',64),('AIRFAST','CALCULATOR','MOZILA','NOGUI','NOGUI','0',65),('AIRFAST','CALCULATOR','MOZILA','NOGUI','NOGUI','0',66),('AIRFAST','CALCULATOR','MOZILA','NOGUI','NOGUI','0',67),('AIRFAST','CALCULATOR','MOZILA','NOGUI','NOGUI','0',68),('AIRFAST','CALCULATOR','MOZILA','NOGUI','NOGUI','0',71),('AIRFAST','CALCULATOR','MOZILA','NOGUI','NOGUI','0',72),('AIRFAST','CALCULATOR','MOZILA','NOGUI','NOGUI','0',76),('AIRFAST','CALCULATOR','MOZILA','NOGUI','NOGUI','0',78),('ID_SABRE','CALCULATOR','BATIK','NOGUI','NOGUI','0',116),('Airlines','NoGui','NoGui','NoGui','NoGui','0',151),('AIRLINES','FLIGHTVIEW','AIRLINES','AIRLINES','AIRLINES','1',117),('NOGUI','NOGUI','NOGUI','NOGUI','NOGUI','1',177),('GA_AMA','NOGUI','NOGUI','NOGUI','NOGUI','0',262),('GA_AMA','NOGUI','NOGUI','NOGUI','NOGUI','0',264),('JTCI_12','NOGUI','NOGUI','NOGUI','NOGUI','0',266),('JTCI','NOGUI','NOGUI','NOGUI','NOGUI','0',265),('NAV_AK','NOGUI','NOGUI','NOGUI','NOGUI','0',270),('NOGUI','NOGUI','NOGUI','NOGUI','NOGUI','0',266),('NOGUI','NOGUI','NOGUI','NOGUI','NOGUI','0',266),('JTCI','JTCI_12','NOGUI','NOGUI','NOGUI','0',263),('BATIK','NOGUI','NOGUI','NOGUI','NOGUI','0',267),('SJCI','MOZILA','CALCULATOR','NOGUI','NOGUI','0',268),('AIRLINES','NOGUI','NOGUI','NOGUI','NOGUI','',261),('AIRLINES','FLIGHTVIEW','NOGUI','NOGUI','NOGUI','',266),('NOGUI','NOGUI','NOGUI','NOGUI','NOGUI','0',269),('NOGUI','NOGUI','NOGUI','NOGUI','NOGUI','0',260),('NOGUI','NOGUI','NOGUI','NOGUI','NOGUI','0',260),('NOGUI','NOGUI','NOGUI','NOGUI','NOGUI','0',260),('NOGUI','NOGUI','NOGUI','NOGUI','NOGUI','0',260),('NOGUI','NOGUI','NOGUI','NOGUI','NOGUI','0',260),('NOGUI','NOGUI','NOGUI','NOGUI','NOGUI','0',260),('NOGUI','NOGUI','NOGUI','NOGUI','NOGUI','0',260),('NOGUI','NOGUI','NOGUI','NOGUI','NOGUI','0',184);
/*!40000 ALTER TABLE `GUILink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GUIs`
--

DROP TABLE IF EXISTS `GUIs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GUIs` (
  `GuiID` char(62) DEFAULT NULL,
  `GuiFileName` char(254) DEFAULT NULL,
  `Comment` char(126) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GUIs`
--

LOCK TABLES `GUIs` WRITE;
/*!40000 ALTER TABLE `GUIs` DISABLE KEYS */;
INSERT INTO `GUIs` VALUES ('NoGUI','None',''),('Airlines','Airlines.sbx','Airline List'),('FlightView','c:\\Progra~1\\Flight~1\\My Flight\\viewfltninv.exe',''),('QPlex','c:\\progra~1\\intern~1\\iexplore.exe http://10.10.12.50/q/','mz qplex'),('Affinity','c:\\progra~1\\affinity\\affini~1\\system\\alcte.exe','Garuda'),('MIPrintSrv','c:\\vtm\\vtm.exe','Silk Air'),('LDCS','c:\\PylotDCS\\latmdi.exe','Ldcs'),('DCSAdam','C:\\Program Files\\DCS_MySQL_Daerah\\MySQL DCS.exe','Adam Air'),('AKci','C:\\Minisoft\\WS92\\WS92_32.exe','Air Asia'),('MITE','c:\\vtm\\sq_start.cmd','Silk Air'),('NAVITAIRE','C:\\Minisoft\\WS92\\WS92_32.exe','punya ak'),('MANDALAci','C:\\Program Files\\Navitaire\\TerminalEmulator\\4.0\\Tiger prodr3x\\NavitaireTE.Client.Wpf.exe','TIGER AIR'),('JTci','C:\\Sabre Interact\\Airport\\v6.3\\app\\QikDesktop.exe','sabre'),('Rici','C:\\Minisoft\\MS320\\MS320W32.exe','Mandala Check-In'),('PylotDCS','c:\\PylotDCS\\PylotDCS_chk.exe',''),('DCSTransit','c:\\program files\\dcs_mysql_daerah\\TransitCheck-In.exe',''),('BATAVIASABRE','C:\\Program Files\\The Sabre Group\\Sabre32\\Sv32.exe','sabre'),('GAGate','c:\\GaTEmu\\GaTEmu.exe','gate GARUDA'),('kpci','c:\\Program Files\\Internet Explorer\\IEXPLORE.exe https://resv.flykalstar.com/main.asp','kalstar'),('TNCI','c:\\Program Files\\Internet Explorer\\IEXPLORE.exe http://202.137.16.60/erest/','trigana chek-in'),('SJCILI','c:\\program files\\sita\\liaison\\liaison.exe','liaison'),('klci','c:\\Program Files\\Internet Explorer\\IEXPLORE.exe https://resv.flykalstar.com/main.asp','kalstar'),('i8ci','c:\\Program Files\\Internet Explorer\\IEXPLORE.exe http://lips-iat.asyst.co.id/lipsweb/login.jsp','iat'),('KDCI','c:\\PylotDCS\\PylotDCS_chk.exe','KUDAAIR'),('nav_citylink','C:\\Program Files\\Navitaire\\NavitaireTE\\4.1\\Citilink prodr3x\\NavitaireTE_UI\\NavitaireTE.Client.Wpf.exe','cityl'),('nav_airasia','C:\\Program Files\\Navitaire\\TerminalEmulator\\4.1\\AirAsia prodr3x\\NavitaireTE_UI\\NavitaireTE.Client.Wpf.exe','Air Asia Navitaire'),('MZ_TNA','\"D:\\master\\program airlines\\mz\\punyamz\\avantik_2013\\AVANTIK_MNA.EXE\"','merpati'),('JTCI_12','C:\\Sabre Interact\\Airport\\v6.3\\app\\QikDesktop.exe','interact sabre'),('GA_ama','D:\\Amadeus_GA\\AmadeusGA.bat','Amadeus GA'),('BAGMANU','D:\\master\\program airlines\\PAKET BPASS\\Bagtag Manual.exe','BAGTAG MANUAL'),('scaner','D:\\scanBP\\scanBP\\scan&sendkeys.exe','gagate'),('APR','D:\\master\\program airlines\\PAKET BPASS\\APR.exe','APR'),('SICI','D:\\master\\Program Airlines\\SUSIAir\\susiair\\3\\AVANTIK_SSA_PROD_341009c.exe','SUSI AIR'),('IWci','C:\\Sabre Interact\\Airport\\v5.4\\app\\QikDesktop.exe','wings'),('gonow -qg','C:\\Program Files\\Citilink\\prodr3x\\GoNow\\1.8.0.10182\\Native GoNow\\GoNow.exe','gonow-qg'),('id_sabre','C:\\Sabre Interact\\Airport\\v6.3\\app\\QikDesktop.exe','batik sabre'),('SJCI','C:\\Program Files\\Mozilla Firefox\\Firefox.exe https://checkin.sriwijayaair.int/SJ-CheckIn/login.php?action=in','SJ Mozilla'),('transnusa','c:\\Program Files\\Internet Explorer\\IEXPLORE.exe http://182.23.64.236:801/trans/asp/login.asp','transnusa live'),('trans test','c:\\Program Files\\Internet Explorer\\IEXPLORE.exe http://qa.electra-indonesia.com:7005/esmarttrialtn/asp/login.asp','transnusa test'),('Travira','c:\\Program Files\\Internet Explorer\\IEXPLORE.exe https://www.v-pobintl.com/pobintl','travira'),('BTP MANUAL','D:\\master\\Program Airlines\\AirlinePrinterDriver\\Bagtag\\Bagtag Manual\\BagTag_Manual.exe','BAGTAG MANUAL LION AIR'),('excell','C:\\Program Files\\Microsoft Office\\Office12\\EXCEL.EXE','microsoft excell'),('ALLoffice','C:\\Program Files\\LibreOffice 4\\program\\soffice.exe',''),('airfast','C:\\Program Files\\Vedaleon Technologies\\Airfast on VeRSE\\VeRSE.exe',''),('batik','C:\\Program Files\\Mozilla Firefox\\Firefox.exe http://fms.lionair.co.id/filemanagement/','Batik'),('nav_firefly','C:\\Program Files\\Navitaire\\NavitaireTE\\4.1\\Firefly\\NavitaireTE_UI\\NavitaireTE.Client.Wpf.exe','nav_firefly'),('MI_ama','D:\\Amadeus_SQ_MI\\Amadeus.bat','Amadeus MI'),('NAV_AK','C:\\Program Files\\Navitaire\\NavitaireTE\\4.1\\AirAsia prodr3x\\NavitaireTE_UI\\NavitaireTE.Client.Wpf.exe','AK PUNYA'),('Mozila','C:\\Program Files\\Mozilla Firefox\\firefox.exe','Mozila FIrefox'),('Chat Local','C:\\Program Files\\LAN Messenger\\lmc.exe','Chat ke Ruang Control'),('Chrome','C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe http://nms.citilink.co.id:8080/loadsheet','Citilink loadsheet'),('Tes Print Batik','C:\\Program Files\\Microsoft\\BP PrinterSetup\\BP Installation.exe',''),('xnci','C:\\Program Files\\Internet Explorer\\iexplore.exe http://xpressdcs.cloudapp.net/Checkin.application#Checkin.application','Checkin Xpress'),('Start MI','D:\\Amadeus_SQ_MI\\1A-PM\\bin\\start.bat','Start Amadeus'),('Stop MI','D:\\Amadeus_SQ_MI\\1A-PM\\bin\\stop.bat','Stop Amadeus'),('ScanGA','D:\\master\\program airlines\\scanBP\\Scan.bat','scan amadeus garuda'),('notepad','C:\\Windows\\system32\\notepad.exe','Notepad'),('stikynot','C:\\Windows\\system32\\stikynot.exe','stikynot'),('GoNow-NEW','C:\\Program Files\\Citilink2017\\prodr3x\\GoNow\\1.8.0.82\\Native GoNow\\GoNow.exe','GoNow New Host'),('NAVITAIRE-NEW','C:\\Program Files\\Navitaire2017\\NavitaireTE\\4.1\\Citilink prodr3x\\NavitaireTE_UI\\NavitaireTE.Client.Wpf.exe','Navitaire New Host'),('bpas','D:\\master\\program airlines\\PAKET BPASS\\BPass\\BPass.exe','bpprint'),('IW','D:\\masterprogram \\airlinesPAKET \\BPASSLionBagtagBagtagJT.exe','wingBagtag'),('Calculator','c:\\windows\\system32\\calc.exe','');
/*!40000 ALTER TABLE `GUIs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatewayIP`
--

DROP TABLE IF EXISTS `GatewayIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatewayIP` (
  `GatewayINX` int(4) NOT NULL AUTO_INCREMENT,
  `GatewayIP` varchar(50) DEFAULT NULL,
  `Deletef` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`GatewayINX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatewayIP`
--

LOCK TABLES `GatewayIP` WRITE;
/*!40000 ALTER TABLE `GatewayIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatewayIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GetAddress`
--

DROP TABLE IF EXISTS `GetAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GetAddress` (
  `IPAddress` varchar(40) DEFAULT NULL,
  `AirlinesINX` int(4) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `CrtAddress1` int(4) DEFAULT NULL,
  `CRT1` varchar(100) DEFAULT NULL,
  `Inuse` varchar(10) DEFAULT NULL,
  `Activated` varchar(10) DEFAULT NULL,
  `CRTGW1` varchar(40) DEFAULT NULL,
  `Deletef` varchar(10) DEFAULT NULL,
  `CrtScript1` int(4) DEFAULT NULL,
  `CrtAddress2` int(4) DEFAULT NULL,
  `CRT2` varchar(50) DEFAULT NULL,
  `InuseCRT2` varchar(10) DEFAULT NULL,
  `ActiveCRT2` varchar(10) DEFAULT NULL,
  `CRTGW2` varchar(40) DEFAULT NULL,
  `DelGW2` varchar(10) DEFAULT NULL,
  `CrtScript2` int(4) DEFAULT NULL,
  `SessionFile` varchar(100) DEFAULT NULL,
  `PrtAddress1` int(4) DEFAULT NULL,
  `PRT1` varchar(40) DEFAULT NULL,
  `InusePRT1` varchar(10) DEFAULT NULL,
  `ActivePRT1` varchar(10) DEFAULT NULL,
  `PRTGW1` varchar(40) DEFAULT NULL,
  `DelPRTGW1` varchar(40) DEFAULT NULL,
  `PrtScript1` int(4) DEFAULT NULL,
  `PrtAddress2` int(4) DEFAULT NULL,
  `PRT2` varchar(40) DEFAULT NULL,
  `InusePRT2` varchar(10) DEFAULT NULL,
  `ActivePRT2` varchar(10) DEFAULT NULL,
  `PRTGW2` varchar(40) DEFAULT NULL,
  `DelPRTGW2` varchar(10) DEFAULT NULL,
  `PrtScript2` int(10) DEFAULT NULL,
  `DEV1` varchar(10) DEFAULT NULL,
  `DEV2` varchar(10) DEFAULT NULL,
  `SessName` varchar(100) DEFAULT NULL,
  `SCR1` varchar(100) DEFAULT NULL,
  `DelSCR1` varchar(10) DEFAULT NULL,
  `SCR2` varchar(100) DEFAULT NULL,
  `DelSCR2` varchar(10) DEFAULT NULL,
  `SCR3` varchar(100) DEFAULT NULL,
  `DelSCR3` varchar(10) DEFAULT NULL,
  `SCR4` varchar(100) DEFAULT NULL,
  `DelSCR4` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GetAddress`
--

LOCK TABLES `GetAddress` WRITE;
/*!40000 ALTER TABLE `GetAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `GetAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `GroupName` varchar(30) DEFAULT NULL,
  `Comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IPAddress`
--

DROP TABLE IF EXISTS `IPAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IPAddress` (
  `IPAddressINX` int(4) NOT NULL AUTO_INCREMENT,
  `IPAddress` varchar(30) DEFAULT NULL,
  `AirlinesINX` int(4) NOT NULL,
  `FunctionINX` int(4) DEFAULT NULL,
  `CrtAddress1` int(4) DEFAULT NULL,
  `CrtScript1` int(4) DEFAULT NULL,
  `CrtAddress2` int(4) DEFAULT NULL,
  `CrtScript2` int(4) DEFAULT NULL,
  `SessionFile` char(100) DEFAULT NULL,
  `PrtAddress1` int(4) DEFAULT NULL,
  `PrtScript1` int(4) DEFAULT NULL,
  `PrtAddress2` int(4) DEFAULT NULL,
  `PrtScript2` int(4) DEFAULT NULL,
  `Deletef` char(4) DEFAULT NULL,
  `CrtAddress3` int(4) DEFAULT NULL,
  `CrtScript3` int(4) DEFAULT NULL,
  `CrtAddress4` int(4) DEFAULT NULL,
  `CrtScript4` int(4) DEFAULT NULL,
  PRIMARY KEY (`IPAddressINX`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPAddress`
--

LOCK TABLES `IPAddress` WRITE;
/*!40000 ALTER TABLE `IPAddress` DISABLE KEYS */;
INSERT INTO `IPAddress` VALUES (35,'192.168.19.27',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(36,'192.168.19.27',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(37,'192.168.19.27',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(38,'192.168.19.31',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(39,'192.168.19.32',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(40,'192.168.19.32',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(41,'192.168.19.34',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(42,'192.168.19.34',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(43,'192.168.19.34',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(44,'192.168.19.36',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(45,'192.168.19.36',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(46,'192.168.19.36',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(47,'192.168.19.12',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(48,'192.168.19.12',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(49,'192.168.19.12',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(50,'192.168.19.30',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(51,'192.168.19.27',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(52,'192.168.19.26',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(53,'192.168.19.26',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(54,'192.168.19.11',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(55,'192.168.19.12',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(56,'192.168.19.13',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(57,'192.168.19.14',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(58,'192.168.19.15',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(59,'192.168.19.16',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(60,'192.168.19.17',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(61,'192.168.19.18',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(62,'192.168.19.19',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(63,'192.168.19.20',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(64,'192.168.19.21',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(65,'192.168.19.22',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(66,'192.168.19.23',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(67,'192.168.19.24',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(68,'192.168.19.25',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(69,'192.168.19.26',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(70,'192.168.19.27',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(71,'192.168.19.28',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(72,'192.168.19.29',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(73,'192.168.19.30',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(74,'192.168.19.31',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(75,'192.168.19.32',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(76,'192.168.19.33',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(77,'192.168.19.34',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(78,'192.168.19.35',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(79,'192.168.19.36',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(80,'192.168.19.22',41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(81,'192.168.19.12',41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(82,'192.168.19.20',41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(83,'192.168.19.32',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(84,'192.168.19.19',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(85,'192.168.19.19',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(86,'192.168.19.13',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(87,'192.168.19.20',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(88,'192.168.19.13',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(89,'192.168.19.18',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(90,'192.168.19.20',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(91,'192.168.19.20',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(92,'192.168.19.14',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(93,'192.168.19.14',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(94,'192.168.19.14',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(95,'192.168.19.30',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(96,'192.168.19.27',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(97,'192.168.19.25',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(98,'192.168.19.25',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(99,'192.168.19.30',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(100,'192.168.19.25',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(101,'192.168.19.27',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(102,'192.168.19.31',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(103,'192.168.19.31',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(104,'192.168.19.31',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(105,'192.168.19.32',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(106,'192.168.19.32',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(107,'192.168.19.33',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(108,'192.168.19.33',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(109,'192.168.19.33',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(110,'192.168.19.34',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(111,'192.168.19.15',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(112,'192.168.19.35',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(113,'192.168.19.15',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(114,'192.168.19.35',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(115,'192.168.19.19',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(116,'192.168.19.229',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(117,'192.168.19.229',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL),(118,'192.168.19.229',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(119,'192.168.19.11',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(120,'192.168.19.11',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(121,'192.168.19.11',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(122,'192.168.19.23',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(123,'192.168.19.23',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(124,'192.168.19.23',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(125,'192.168.19.24',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(126,'192.168.19.17',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(127,'192.168.19.24',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(128,'192.168.19.24',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(129,'192.168.19.17',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(130,'192.168.19.17',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(131,'192.168.19.19',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(132,'192.168.19.13',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(133,'192.168.19.18',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(134,'192.168.19.18',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(135,'192.168.19.26',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(136,'192.168.19.28',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(137,'192.168.19.28',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(138,'192.168.19.28',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(139,'192.168.19.32',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(140,'192.168.19.34',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(141,'192.168.19.34',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(142,'192.168.19.35',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(143,'192.168.19.15',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(144,'192.168.19.36',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(145,'192.168.19.36',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(146,'192.168.19.36',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(147,'192.168.19.16',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(148,'192.168.19.16',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(149,'192.168.19.16',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(150,'192.168.19.22',25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL),(151,'192.168.19.231',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL),(152,'192.168.19.22',41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S',NULL,NULL,NULL,NULL),(153,'192.168.19.28',41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(154,'192.168.19.21',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(155,'192.168.19.26',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(156,'192.168.19.26',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(157,'192.168.19.26',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(158,'192.168.19.28',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(159,'192.168.19.28',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(160,'192.168.19.28',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(161,'192.168.19.29',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(162,'192.168.19.29',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(163,'192.168.19.29',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(164,'192.168.19.30',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(165,'192.168.19.30',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(166,'192.168.19.30',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(167,'192.168.19.33',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(168,'192.168.19.33',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(169,'192.168.19.33',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(170,'192.168.19.35',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(171,'192.168.19.35',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(172,'192.168.19.35',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(173,'192.168.19.12',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(174,'192.168.19.12',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(175,'192.168.19.12',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(176,'192.168.19.16',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(177,'192.168.19.16',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(178,'192.168.19.16',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(179,'192.168.19.18',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(180,'192.168.19.18',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(181,'192.168.19.18',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(182,'192.168.19.11',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(183,'192.168.19.11',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(184,'192.168.19.11',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(185,'192.168.19.13',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(186,'192.168.19.13',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(187,'192.168.19.13',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(188,'192.168.19.14',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(189,'192.168.19.14',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(190,'192.168.19.14',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(191,'192.168.19.15',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(192,'192.168.19.15',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(193,'192.168.19.15',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(194,'192.168.19.17',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(195,'192.168.19.17',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(196,'192.168.19.17',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(197,'192.168.19.19',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(198,'192.168.19.19',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(199,'192.168.19.19',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(200,'192.168.19.20',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(201,'192.168.19.20',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(202,'192.168.19.20',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(203,'192.168.19.21',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(204,'192.168.19.21',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(205,'192.168.19.21',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(206,'192.168.19.22',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(207,'192.168.19.22',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(208,'192.168.19.22',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(209,'192.168.19.23',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(210,'192.168.19.23',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(211,'192.168.19.23',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(212,'192.168.19.24',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(213,'192.168.19.24',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(214,'192.168.19.24',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(215,'192.168.19.25',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(216,'192.168.19.25',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(217,'192.168.19.25',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(218,'192.168.19.31',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(219,'192.168.19.31',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(220,'192.168.19.229',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(221,'192.168.19.229',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(222,'192.168.19.33',25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(223,'192.168.19.11',25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(224,'192.168.19.11',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(225,'192.168.19.33',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(226,'192.168.19.28',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(227,'192.168.19.29',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(228,'192.168.19.21',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(229,'192.168.19.21',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(230,'192.168.19.21',41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(231,'192.168.19.29',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(232,'192.168.19.29',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(233,'192.168.19.22',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(234,'192.168.19.22',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(235,'192.168.19.22',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(236,'192.168.19.21',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(237,'192.168.19.22',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(238,'192.168.19.23',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(239,'192.168.19.24',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(240,'192.168.19.25',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(241,'192.168.19.26',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(242,'192.168.19.27',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(243,'192.168.19.29',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(244,'192.168.19.30',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(245,'192.168.19.31',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(246,'192.168.19.32',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(247,'192.168.19.34',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(248,'192.168.19.35',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(249,'192.168.19.36',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'-',NULL,NULL,NULL,NULL),(250,'192.168.19.20',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(251,'192.168.19.12',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(252,'192.168.19.13',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(253,'192.168.19.14',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(254,'192.168.19.15',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(255,'192.168.19.16',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(256,'192.168.19.17',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(257,'192.168.19.18',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(258,'192.168.19.21',41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S',NULL,NULL,NULL,NULL),(259,'192.168.19.33',41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(260,'191.191.1910',49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL),(261,'192.168.1.238',22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(262,'192.168.1.239',22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(263,'192.168.1.239',25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(264,'192.168.1.94',22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(265,'192.168.1.94',25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(266,'192.168.1.94',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(267,'192.168.1.239',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(268,'192.168.1.239',41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(269,'192.168.1.239',43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(270,'192.168.1.239',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `IPAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewGetAddress`
--

DROP TABLE IF EXISTS `NewGetAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewGetAddress` (
  `IPAddress` varchar(40) DEFAULT NULL,
  `AirlinesINX` int(4) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `CrtAddress1` int(4) DEFAULT NULL,
  `CRT1` varchar(100) DEFAULT NULL,
  `Inuse` varchar(10) DEFAULT NULL,
  `Activated` varchar(10) DEFAULT NULL,
  `CRTGW1` varchar(40) DEFAULT NULL,
  `Deletef` varchar(10) DEFAULT NULL,
  `CrtScript1` int(4) DEFAULT NULL,
  `CrtAddress2` int(4) DEFAULT NULL,
  `Crt2` varchar(100) DEFAULT NULL,
  `InuseCRT2` varchar(10) DEFAULT NULL,
  `ActiveCRT2` varchar(10) DEFAULT NULL,
  `CRTGW2` varchar(40) DEFAULT NULL,
  `DelGW2` varchar(10) DEFAULT NULL,
  `CrtScript2` int(4) DEFAULT NULL,
  `SessionFile` varchar(100) DEFAULT NULL,
  `PrtAddress1` int(4) DEFAULT NULL,
  `PRT1` varchar(100) DEFAULT NULL,
  `InusePRT1` varchar(100) DEFAULT NULL,
  `ActivePRT1` varchar(10) DEFAULT NULL,
  `PRTGW1` varchar(40) DEFAULT NULL,
  `DelPRTGW1` varchar(10) DEFAULT NULL,
  `PrtScript1` int(4) DEFAULT NULL,
  `PrtAddress2` int(4) DEFAULT NULL,
  `PRT2` varchar(100) DEFAULT NULL,
  `InusePRT2` varchar(10) DEFAULT NULL,
  `ActivePRT2` varchar(10) DEFAULT NULL,
  `PRTGW2` varchar(40) DEFAULT NULL,
  `DelPRTGW2` varchar(10) DEFAULT NULL,
  `PrtScript2` int(4) DEFAULT NULL,
  `DEV1` varchar(10) DEFAULT NULL,
  `DEV2` varchar(10) DEFAULT NULL,
  `SessName` varchar(100) DEFAULT NULL,
  `SCR1` varchar(100) DEFAULT NULL,
  `DelSCR1` varchar(10) DEFAULT NULL,
  `SCR2` varchar(100) DEFAULT NULL,
  `DelSCR2` varchar(10) DEFAULT NULL,
  `SCR3` varchar(100) DEFAULT NULL,
  `DelSCR3` varchar(10) DEFAULT NULL,
  `SCR4` varchar(100) DEFAULT NULL,
  `DelSCR4` varchar(10) DEFAULT NULL,
  `CRTINX1` int(4) DEFAULT NULL,
  `CRTINX2` int(4) DEFAULT NULL,
  `PRTINX2` int(4) DEFAULT NULL,
  `PRTINX1` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewGetAddress`
--

LOCK TABLES `NewGetAddress` WRITE;
/*!40000 ALTER TABLE `NewGetAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewGetAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewGuiLinks`
--

DROP TABLE IF EXISTS `NewGuiLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewGuiLinks` (
  `IPAddress` varchar(40) DEFAULT NULL,
  `AirlinesINX` int(4) DEFAULT NULL,
  `GuiID1` varchar(60) DEFAULT NULL,
  `GuiFileName` varchar(250) DEFAULT NULL,
  `Comment` varchar(200) DEFAULT NULL,
  `GuiID2` varchar(60) DEFAULT NULL,
  `GuiFileName2` varchar(250) DEFAULT NULL,
  `Comment2` varchar(200) DEFAULT NULL,
  `GuiID3` varchar(60) DEFAULT NULL,
  `GuiFileName3` varchar(250) DEFAULT NULL,
  `Comment3` varchar(200) DEFAULT NULL,
  `GuiID4` varchar(60) DEFAULT NULL,
  `GuiFileName4` varchar(250) DEFAULT NULL,
  `Comment4` varchar(200) DEFAULT NULL,
  `GuiID5` varchar(60) DEFAULT NULL,
  `GuiFileName5` varchar(250) DEFAULT NULL,
  `Comment5` varchar(200) DEFAULT NULL,
  `Deletef` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewGuiLinks`
--

LOCK TABLES `NewGuiLinks` WRITE;
/*!40000 ALTER TABLE `NewGuiLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewGuiLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `News`
--

DROP TABLE IF EXISTS `News`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `News` (
  `Nolnx` int(8) NOT NULL AUTO_INCREMENT,
  `Title` varchar(200) DEFAULT NULL,
  `Content` varchar(2000) DEFAULT NULL,
  `BeginDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Nolnx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `News`
--

LOCK TABLES `News` WRITE;
/*!40000 ALTER TABLE `News` DISABLE KEYS */;
/*!40000 ALTER TABLE `News` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Script`
--

DROP TABLE IF EXISTS `Script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Script` (
  `ScriptINX` int(4) NOT NULL AUTO_INCREMENT,
  `ScriptName` varchar(100) DEFAULT NULL,
  `Deletef` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ScriptINX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Script`
--

LOCK TABLES `Script` WRITE;
/*!40000 ALTER TABLE `Script` DISABLE KEYS */;
/*!40000 ALTER TABLE `Script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserLogin`
--

DROP TABLE IF EXISTS `UserLogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserLogin` (
  `LoginINX` bigint(8) NOT NULL AUTO_INCREMENT,
  `UserID` int(4) DEFAULT NULL,
  `LoginTime` datetime DEFAULT NULL,
  `LogoutTime` datetime DEFAULT NULL,
  `FlightNo` varchar(8) DEFAULT NULL,
  `Arrival` char(30) DEFAULT NULL,
  `FlightVia` char(8) DEFAULT NULL,
  `Via` char(30) DEFAULT NULL,
  `Boarding` varchar(4) DEFAULT NULL,
  `IPAddress` varchar(15) DEFAULT NULL,
  `CK` char(1) DEFAULT NULL,
  `Addtion` char(10) DEFAULT NULL,
  PRIMARY KEY (`LoginINX`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserLogin`
--

LOCK TABLES `UserLogin` WRITE;
/*!40000 ALTER TABLE `UserLogin` DISABLE KEYS */;
INSERT INTO `UserLogin` VALUES (1,29,'2017-03-09 15:54:45','2017-03-09 15:56:18','jt0711',NULL,NULL,NULL,NULL,'192.168.1.94','2',NULL),(2,21,'2017-03-09 15:58:05','2017-03-09 16:07:51','GA0123',NULL,NULL,NULL,NULL,'192.168.1.94','2',NULL),(3,21,'2017-03-09 16:08:27','2017-03-09 16:08:52','GA0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(4,21,'2017-03-09 16:13:46','2017-03-09 16:14:39','ga0850',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(5,28,'2017-03-09 16:11:32','2017-03-09 16:12:40','id7010',NULL,NULL,NULL,NULL,'192.168.1.94','2',NULL),(6,24,'2017-03-09 16:21:19','2017-03-09 16:24:23','sj0102',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(7,29,'2017-03-09 16:20:22','2017-03-09 16:21:41','jt0140',NULL,NULL,NULL,NULL,'192.168.1.94','2',NULL),(8,21,'2017-03-09 16:50:08','2017-03-09 16:51:55','GA0181',NULL,NULL,NULL,NULL,'192.168.1.94','2',NULL),(9,21,'2017-03-09 16:52:04','2017-03-09 16:53:38','GA0123',NULL,NULL,NULL,NULL,'192.168.1.94','2',NULL),(10,29,'2017-03-09 16:56:00','2017-03-09 16:56:27','JT0711',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(11,21,'2017-03-20 09:23:06','2017-03-20 09:52:05','ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(12,21,'2017-03-20 09:55:16','2017-03-20 09:55:29','ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(13,21,'2017-03-20 09:56:09',NULL,'ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','1',NULL),(14,21,'2017-03-20 09:57:47','2017-03-20 09:58:00','ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(15,21,'2017-03-20 09:58:44','2017-03-20 09:58:55','ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(16,21,'2017-03-20 10:00:09','2017-03-20 10:00:28','ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(17,21,'2017-03-20 10:24:28','2017-03-20 10:36:55','ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(18,21,'2017-03-20 10:44:42','2017-03-20 10:46:27','ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(19,21,'2017-03-20 10:46:32','2017-03-20 10:48:02','ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(20,21,'2017-03-20 10:48:09','2017-03-20 10:49:04','ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(21,21,'2017-03-20 10:49:21','2017-03-20 10:49:39','ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(22,21,'2017-03-20 10:52:03','2017-03-20 10:52:13','ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(23,21,'2017-03-20 10:52:58','2017-03-20 10:54:00','ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(24,21,'2017-03-20 10:54:08','2017-03-20 10:54:20','ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(25,21,'2017-03-20 10:55:14',NULL,'ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','1',NULL),(26,21,'2017-03-20 13:13:53','2017-03-20 13:15:23','ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(27,21,'2017-03-20 13:19:37','2017-03-20 13:30:22','ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(28,21,'2017-03-20 17:21:01','2017-03-20 17:22:00','GA0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(29,21,'2017-03-21 08:45:49','2017-03-21 08:47:11','GA0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(30,24,'2017-03-21 08:48:33','2017-03-21 08:48:52','sj0017',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(31,29,'2017-03-21 08:57:46','2017-03-21 08:58:11','JT0711',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(32,24,'2017-03-21 09:00:26','2017-03-21 09:00:56','sj0017',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(33,24,'2017-03-21 09:19:08','2017-03-21 09:19:56','SJ0017',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(34,24,'2017-03-21 09:20:15','2017-03-21 09:20:31','sj0021',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(35,21,'2017-03-21 14:18:00','2017-03-21 14:19:54','ga 283',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(36,21,'2017-03-21 14:20:38','2017-03-21 14:52:24','ga0266',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(37,21,'2017-03-21 15:29:45','2017-03-21 16:36:50','ga0123',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL),(38,21,'2017-03-22 08:16:48','2017-03-22 08:17:27','ga0181',NULL,NULL,NULL,NULL,'192.168.1.239','2',NULL);
/*!40000 ALTER TABLE `UserLogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserLogut`
--

DROP TABLE IF EXISTS `UserLogut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserLogut` (
  `LogoutINX` int(4) NOT NULL AUTO_INCREMENT,
  `LogoutTime` datetime DEFAULT NULL,
  `IPAddress` varchar(30) DEFAULT NULL,
  `CK` char(1) DEFAULT NULL,
  PRIMARY KEY (`LogoutINX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserLogut`
--

LOCK TABLES `UserLogut` WRITE;
/*!40000 ALTER TABLE `UserLogut` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserLogut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `UserName` char(60) DEFAULT NULL,
  `FullName` char(60) DEFAULT NULL,
  `Password` char(24) DEFAULT NULL,
  `AirlinesINX` int(4) DEFAULT NULL,
  `Deletef` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (2,'admin','the admin','admin',50,'0'),(5,'zoro','Roronoa Zorro','zorro',48,'0'),(6,'riap','riap','riap',23,'0'),(7,'mzap','mzap','mzzap',32,'0'),(8,'akap','akap','akap',34,'0'),(9,'siap','siap','siap',39,'0'),(10,'iwap','iwap','iwao',35,'1'),(11,'miap','miap','MIAP',38,'0'),(12,'fyap','fyap','FYAP',33,'0'),(13,'bayu_w','bayu widodo','8ayu_w',32,'1'),(14,'tober_s','tober siregar','to8er_s',32,'1'),(15,'iwap','iwap','iwao',35,'1'),(16,'xnap','xnap','xnap',37,'0'),(17,'qgap','qgap','qgap',31,'0'),(18,'iwap','iwap','iwap',35,'0'),(19,'yayuk','yayuk','y4yuk',32,'1'),(20,'mhap','mhap','MHAP2',30,'1'),(21,'gaap','garuda indonesia','gaap',22,'0'),(22,'qzap','qzap','qzap',24,'0'),(23,'gaap','gaap','GAAP',22,'1'),(24,'sjap','sjap','sjap',41,'0'),(25,'i7ap','i7ap','i7ap',27,'1'),(26,'i7ap','i7ap','i7ap',27,'1'),(27,'i8ap','i8ap','i8ap',27,'0'),(28,'idap','idap','IDAP',44,'0'),(29,'jtap','jtap','jtap',25,'0'),(30,'erp','erp','erp',26,'1'),(31,'i8ap','i8ap','i8ap',27,'1'),(32,'MZ1','MZ1','mzzap',32,'1'),(33,'ctap','ctap','ctap',31,'1'),(34,'ga_ap','ga_ap','ga_ap',22,'0'),(35,'esap','esap','esap',25,'1'),(36,'esap','esap','esap',25,'1'),(37,'aap','admin','kuadmin',34,'0'),(38,'mhap','mhap','mhap',30,'0'),(46,'test','test','test',27,'0');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `getaddressnew`
--

DROP TABLE IF EXISTS `getaddressnew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `getaddressnew` (
  `IPAddress` varchar(40) DEFAULT NULL,
  `AirlinesINX` int(4) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `CrtAddress1` int(4) DEFAULT NULL,
  `CRT1` varchar(100) DEFAULT NULL,
  `Inuse` varchar(10) DEFAULT NULL,
  `Activated` varchar(10) DEFAULT NULL,
  `CRTGW1` varchar(40) DEFAULT NULL,
  `Deletef` varchar(10) DEFAULT NULL,
  `CrtScript1` int(4) DEFAULT NULL,
  `CrtAddress2` int(4) DEFAULT NULL,
  `CRT2` varchar(50) DEFAULT NULL,
  `InuseCRT2` varchar(10) DEFAULT NULL,
  `ActiveCRT2` varchar(10) DEFAULT NULL,
  `CRTGW2` varchar(40) DEFAULT NULL,
  `DelGW2` varchar(10) DEFAULT NULL,
  `CrtScript2` int(4) DEFAULT NULL,
  `SessionFile` varchar(100) DEFAULT NULL,
  `PrtAddress1` int(4) DEFAULT NULL,
  `PRT1` varchar(40) DEFAULT NULL,
  `InusePRT1` varchar(10) DEFAULT NULL,
  `ActivePRT1` varchar(10) DEFAULT NULL,
  `PRTGW1` varchar(40) DEFAULT NULL,
  `DelPRTGW1` varchar(40) DEFAULT NULL,
  `PrtScript1` int(4) DEFAULT NULL,
  `PrtAddress2` int(4) DEFAULT NULL,
  `PRT2` varchar(40) DEFAULT NULL,
  `InusePRT2` varchar(10) DEFAULT NULL,
  `ActivePRT2` varchar(10) DEFAULT NULL,
  `PRTGW2` varchar(40) DEFAULT NULL,
  `DelPRTGW2` varchar(10) DEFAULT NULL,
  `PrtScript2` int(10) DEFAULT NULL,
  `DEV1` varchar(10) DEFAULT NULL,
  `DEV2` varchar(10) DEFAULT NULL,
  `SessName` varchar(100) DEFAULT NULL,
  `SCR1` varchar(100) DEFAULT NULL,
  `DelSCR1` varchar(10) DEFAULT NULL,
  `SCR2` varchar(100) DEFAULT NULL,
  `DelSCR2` varchar(10) DEFAULT NULL,
  `SCR3` varchar(100) DEFAULT NULL,
  `DelSCR3` varchar(10) DEFAULT NULL,
  `SCR4` varchar(100) DEFAULT NULL,
  `DelSCR4` varchar(10) DEFAULT NULL,
  `CCPCRT1` varchar(10) DEFAULT NULL,
  `CCPCRT2` varchar(10) DEFAULT NULL,
  `CrtAddress3` int(10) DEFAULT NULL,
  `CrtScript3` int(10) DEFAULT NULL,
  `CrtAddress4` int(10) DEFAULT NULL,
  `CrtScript4` int(10) DEFAULT NULL,
  `GatewayIP` varchar(40) DEFAULT NULL,
  `Expr1` varchar(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `CCPINX` varchar(10) DEFAULT NULL,
  `Expr2` varchar(10) DEFAULT NULL,
  `Expr3` varchar(10) DEFAULT NULL,
  `Expr4` varchar(40) DEFAULT NULL,
  `Expr5` varchar(10) DEFAULT NULL,
  `Expr6` varchar(100) DEFAULT NULL,
  `Expr7` varchar(10) DEFAULT NULL,
  `Expr8` varchar(10) DEFAULT NULL,
  `Expr9` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `getaddressnew`
--

LOCK TABLES `getaddressnew` WRITE;
/*!40000 ALTER TABLE `getaddressnew` DISABLE KEYS */;
/*!40000 ALTER TABLE `getaddressnew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iklan`
--

DROP TABLE IF EXISTS `iklan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iklan` (
  `iklan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iklan`
--

LOCK TABLES `iklan` WRITE;
/*!40000 ALTER TABLE `iklan` DISABLE KEYS */;
/*!40000 ALTER TABLE `iklan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kota`
--

DROP TABLE IF EXISTS `kota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kota` (
  `Kode` char(3) DEFAULT NULL,
  `Nama` char(50) DEFAULT NULL,
  `Tipe` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kota`
--

LOCK TABLES `kota` WRITE;
/*!40000 ALTER TABLE `kota` DISABLE KEYS */;
INSERT INTO `kota` VALUES ('DPS','DENPASAR','0'),('SUB','SURABAYA','1'),('CGK','JAKARTA','1'),('PLM','PALEMBANG','1'),('KNO','MEDAN','1'),('SRG','SEMARANG','1'),('PNK','PONTIANAK','1'),('PKU','PEKANBARU','1'),('HLP','JAKARTA','1'),('BDO','BANDUNG','1'),('JOG','YOGYAKARTA','1'),('SOC','SOLO','0'),('KDI','KENDARI','1'),('GTO','GORONTALO','1'),('LOP','LOMBOK','0');
/*!40000 ALTER TABLE `kota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kota2`
--

DROP TABLE IF EXISTS `kota2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kota2` (
  `Kode` char(3) DEFAULT NULL,
  `Nama` char(50) DEFAULT NULL,
  `Tipe` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kota2`
--

LOCK TABLES `kota2` WRITE;
/*!40000 ALTER TABLE `kota2` DISABLE KEYS */;
INSERT INTO `kota2` VALUES ('DPS','DENPASAR','0'),('SUB','SURABAYA','1'),('CGK','JAKARTA','1'),('PLM','PALEMBANG','1'),('KNO','MEDAN','1'),('SRG','SEMARANG','1'),('PNK','PONTIANAK','1'),('PKU','PEKANBARU','1'),('HLP','JAKARTA','1'),('BDO','BANDUNG','1'),('JOG','YOGYAKARTA','1'),('SOC','SOLO','0'),('KDI','KENDARI','1'),('GTO','GORONTALO','1'),('LOP','LOMBOK','0');
/*!40000 ALTER TABLE `kota2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuchger`
--

DROP TABLE IF EXISTS `menuchger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menuchger` (
  `navi_menu` varchar(20) NOT NULL,
  `navi_link` varchar(30) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `no` int(3) DEFAULT NULL,
  PRIMARY KEY (`navi_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuchger`
--

LOCK TABLES `menuchger` WRITE;
/*!40000 ALTER TABLE `menuchger` DISABLE KEYS */;
INSERT INTO `menuchger` VALUES ('AIRLINES','airlines.php',0,6),('APPLADDON','appl.php',0,8),('COUNTER','counter.php',0,7),('DASHBOARD','dashboard.php',0,0),('FLIGHT','flight.php',0,1),('GUILINK','guilink.php',0,5),('GUIS','gui.php',0,4),('IPADDRESS','ipaddress.php',0,7),('KOTA','kota.php',0,2),('LOGO KIOS','logo_kios.php',0,9),('USERS','users.php',0,3);
/*!40000 ALTER TABLE `menuchger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuchger2`
--

DROP TABLE IF EXISTS `menuchger2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menuchger2` (
  `navi_menu` varchar(20) NOT NULL,
  `navi_link` varchar(30) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `no` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuchger2`
--

LOCK TABLES `menuchger2` WRITE;
/*!40000 ALTER TABLE `menuchger2` DISABLE KEYS */;
INSERT INTO `menuchger2` VALUES ('FLIGHT','Flight',0,1),('CITY','City',0,2),('USERS','Users',0,3),('GUIS','Guis',0,4),('GUILINK','GUILink',0,5),('AIRLINES','Airlines',0,6),('IPADDRESS','IPAddress',0,7),('APPLADDON','ApplAddon',0,8),('LOGO KIOS','logo_kios.php',1,9),('COUNTER','Counter',0,10),('DASHBOARD','Dashboard',0,11);
/*!40000 ALTER TABLE `menuchger2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prtconfig`
--

DROP TABLE IF EXISTS `prtconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prtconfig` (
  `prtINX` int(4) NOT NULL AUTO_INCREMENT,
  `addressINX` int(4) DEFAULT NULL,
  `port` int(4) DEFAULT NULL,
  `speed` int(4) DEFAULT NULL,
  `parity` varchar(10) DEFAULT NULL,
  `databits` int(4) DEFAULT NULL,
  `Deletef` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`prtINX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prtconfig`
--

LOCK TABLES `prtconfig` WRITE;
/*!40000 ALTER TABLE `prtconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `prtconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serverkios`
--

DROP TABLE IF EXISTS `serverkios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serverkios` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(30) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serverkios`
--

LOCK TABLES `serverkios` WRITE;
/*!40000 ALTER TABLE `serverkios` DISABLE KEYS */;
INSERT INTO `serverkios` VALUES (1,'172.16.20.6:1435','sa','hello');
/*!40000 ALTER TABLE `serverkios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-14 14:03:05
