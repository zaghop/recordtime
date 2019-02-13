-- MySQL dump 10.13  Distrib 5.6.25-73.1, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db225778_recordtime
-- ------------------------------------------------------
-- Server version	5.6.25-73.1

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
-- Current Database: `db225778_recordtime`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db225778_recordtime` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db225778_recordtime`;

--
-- Table structure for table `tblactivitylog`
--

DROP TABLE IF EXISTS `tblactivitylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblactivitylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `staffid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staffid` (`staffid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblactivitylog`
--

INSERT INTO `tblactivitylog` VALUES (1,'New Department Added [TSS, ID: 1]','2017-10-01 15:32:09',' ');
INSERT INTO `tblactivitylog` VALUES (2,'New Client Created [TAs From Staff: 1]','2017-10-01 15:32:35',' ');
INSERT INTO `tblactivitylog` VALUES (3,'Contact Created [D P]','2017-10-01 15:33:12',' ');
INSERT INTO `tblactivitylog` VALUES (4,'New Ticket Created [ID: 1]','2017-10-01 15:33:36',' ');
INSERT INTO `tblactivitylog` VALUES (5,'New Ticket Reply [ReplyID: 1]','2017-10-01 15:35:30',' ');

--
-- Table structure for table `tblannouncements`
--

DROP TABLE IF EXISTS `tblannouncements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblannouncements` (
  `announcementid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `message` text,
  `showtousers` int(11) NOT NULL,
  `showtostaff` int(11) NOT NULL,
  `showname` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `userid` varchar(100) NOT NULL,
  PRIMARY KEY (`announcementid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblannouncements`
--


--
-- Table structure for table `tblclients`
--

DROP TABLE IF EXISTS `tblclients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclients` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(100) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT '0',
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT '0',
  `longitude` varchar(300) DEFAULT NULL,
  `latitude` varchar(300) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT '0',
  `show_primary_contact` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `country` (`country`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclients`
--

INSERT INTO `tblclients` VALUES (1,'TAs','','',0,'','','','a','','2017-10-01 15:32:35',1,NULL,'','','','',0,'','','','',0,'','','',0,0);

--
-- Table structure for table `tblcommentlikes`
--

DROP TABLE IF EXISTS `tblcommentlikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcommentlikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcommentlikes`
--


--
-- Table structure for table `tblcontactpermissions`
--

DROP TABLE IF EXISTS `tblcontactpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontactpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontactpermissions`
--

INSERT INTO `tblcontactpermissions` VALUES (1,1,1);
INSERT INTO `tblcontactpermissions` VALUES (2,2,1);
INSERT INTO `tblcontactpermissions` VALUES (3,3,1);
INSERT INTO `tblcontactpermissions` VALUES (4,4,1);
INSERT INTO `tblcontactpermissions` VALUES (5,5,1);
INSERT INTO `tblcontactpermissions` VALUES (6,6,1);

--
-- Table structure for table `tblcontacts`
--

DROP TABLE IF EXISTS `tblcontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL DEFAULT '1',
  `firstname` varchar(300) NOT NULL,
  `lastname` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `datecreated` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `profile_image` varchar(300) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `is_primary` (`is_primary`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontacts`
--

INSERT INTO `tblcontacts` VALUES (1,1,1,'D','P','durvesh@digital24x7.com','','','2017-10-01 15:33:12','$2a$08$JM33KIuOlzJpefM9kyjdQu7et7K26yWwndACanUQ1joGCovTw/rOu',NULL,NULL,NULL,NULL,NULL,1,NULL,'');

--
-- Table structure for table `tblcontractrenewals`
--

DROP TABLE IF EXISTS `tblcontractrenewals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontractrenewals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contractid` int(11) NOT NULL,
  `old_start_date` date NOT NULL,
  `new_start_date` date NOT NULL,
  `old_end_date` date DEFAULT NULL,
  `new_end_date` date DEFAULT NULL,
  `old_value` decimal(11,2) DEFAULT NULL,
  `new_value` decimal(11,2) DEFAULT NULL,
  `date_renewed` datetime NOT NULL,
  `renewed_by` varchar(100) NOT NULL,
  `renewed_by_staff_id` int(11) NOT NULL DEFAULT '0',
  `is_on_old_expiry_notified` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontractrenewals`
--


--
-- Table structure for table `tblcontracts`
--

DROP TABLE IF EXISTS `tblcontracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontracts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `description` text,
  `subject` varchar(300) DEFAULT NULL,
  `client` int(11) NOT NULL,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL,
  `contract_type` int(11) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `isexpirynotified` int(11) NOT NULL DEFAULT '0',
  `contract_value` decimal(11,2) DEFAULT NULL,
  `trash` tinyint(1) DEFAULT '0',
  `not_visible_to_client` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `client` (`client`),
  KEY `contract_type` (`contract_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontracts`
--


--
-- Table structure for table `tblcontracttypes`
--

DROP TABLE IF EXISTS `tblcontracttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontracttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontracttypes`
--


--
-- Table structure for table `tblcountries`
--

DROP TABLE IF EXISTS `tblcountries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcountries` (
  `country_id` int(5) NOT NULL AUTO_INCREMENT,
  `iso2` char(2) DEFAULT NULL,
  `short_name` varchar(80) NOT NULL DEFAULT '',
  `long_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` varchar(6) DEFAULT NULL,
  `un_member` varchar(12) DEFAULT NULL,
  `calling_code` varchar(8) DEFAULT NULL,
  `cctld` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcountries`
--

INSERT INTO `tblcountries` VALUES (1,'AF','Afghanistan','Islamic Republic of Afghanistan','AFG','004','yes','93','.af');
INSERT INTO `tblcountries` VALUES (2,'AX','Aland Islands','&Aring;land Islands','ALA','248','no','358','.ax');
INSERT INTO `tblcountries` VALUES (3,'AL','Albania','Republic of Albania','ALB','008','yes','355','.al');
INSERT INTO `tblcountries` VALUES (4,'DZ','Algeria','People\'s Democratic Republic of Algeria','DZA','012','yes','213','.dz');
INSERT INTO `tblcountries` VALUES (5,'AS','American Samoa','American Samoa','ASM','016','no','1+684','.as');
INSERT INTO `tblcountries` VALUES (6,'AD','Andorra','Principality of Andorra','AND','020','yes','376','.ad');
INSERT INTO `tblcountries` VALUES (7,'AO','Angola','Republic of Angola','AGO','024','yes','244','.ao');
INSERT INTO `tblcountries` VALUES (8,'AI','Anguilla','Anguilla','AIA','660','no','1+264','.ai');
INSERT INTO `tblcountries` VALUES (9,'AQ','Antarctica','Antarctica','ATA','010','no','672','.aq');
INSERT INTO `tblcountries` VALUES (10,'AG','Antigua and Barbuda','Antigua and Barbuda','ATG','028','yes','1+268','.ag');
INSERT INTO `tblcountries` VALUES (11,'AR','Argentina','Argentine Republic','ARG','032','yes','54','.ar');
INSERT INTO `tblcountries` VALUES (12,'AM','Armenia','Republic of Armenia','ARM','051','yes','374','.am');
INSERT INTO `tblcountries` VALUES (13,'AW','Aruba','Aruba','ABW','533','no','297','.aw');
INSERT INTO `tblcountries` VALUES (14,'AU','Australia','Commonwealth of Australia','AUS','036','yes','61','.au');
INSERT INTO `tblcountries` VALUES (15,'AT','Austria','Republic of Austria','AUT','040','yes','43','.at');
INSERT INTO `tblcountries` VALUES (16,'AZ','Azerbaijan','Republic of Azerbaijan','AZE','031','yes','994','.az');
INSERT INTO `tblcountries` VALUES (17,'BS','Bahamas','Commonwealth of The Bahamas','BHS','044','yes','1+242','.bs');
INSERT INTO `tblcountries` VALUES (18,'BH','Bahrain','Kingdom of Bahrain','BHR','048','yes','973','.bh');
INSERT INTO `tblcountries` VALUES (19,'BD','Bangladesh','People\'s Republic of Bangladesh','BGD','050','yes','880','.bd');
INSERT INTO `tblcountries` VALUES (20,'BB','Barbados','Barbados','BRB','052','yes','1+246','.bb');
INSERT INTO `tblcountries` VALUES (21,'BY','Belarus','Republic of Belarus','BLR','112','yes','375','.by');
INSERT INTO `tblcountries` VALUES (22,'BE','Belgium','Kingdom of Belgium','BEL','056','yes','32','.be');
INSERT INTO `tblcountries` VALUES (23,'BZ','Belize','Belize','BLZ','084','yes','501','.bz');
INSERT INTO `tblcountries` VALUES (24,'BJ','Benin','Republic of Benin','BEN','204','yes','229','.bj');
INSERT INTO `tblcountries` VALUES (25,'BM','Bermuda','Bermuda Islands','BMU','060','no','1+441','.bm');
INSERT INTO `tblcountries` VALUES (26,'BT','Bhutan','Kingdom of Bhutan','BTN','064','yes','975','.bt');
INSERT INTO `tblcountries` VALUES (27,'BO','Bolivia','Plurinational State of Bolivia','BOL','068','yes','591','.bo');
INSERT INTO `tblcountries` VALUES (28,'BQ','Bonaire, Sint Eustatius and Saba','Bonaire, Sint Eustatius and Saba','BES','535','no','599','.bq');
INSERT INTO `tblcountries` VALUES (29,'BA','Bosnia and Herzegovina','Bosnia and Herzegovina','BIH','070','yes','387','.ba');
INSERT INTO `tblcountries` VALUES (30,'BW','Botswana','Republic of Botswana','BWA','072','yes','267','.bw');
INSERT INTO `tblcountries` VALUES (31,'BV','Bouvet Island','Bouvet Island','BVT','074','no','NONE','.bv');
INSERT INTO `tblcountries` VALUES (32,'BR','Brazil','Federative Republic of Brazil','BRA','076','yes','55','.br');
INSERT INTO `tblcountries` VALUES (33,'IO','British Indian Ocean Territory','British Indian Ocean Territory','IOT','086','no','246','.io');
INSERT INTO `tblcountries` VALUES (34,'BN','Brunei','Brunei Darussalam','BRN','096','yes','673','.bn');
INSERT INTO `tblcountries` VALUES (35,'BG','Bulgaria','Republic of Bulgaria','BGR','100','yes','359','.bg');
INSERT INTO `tblcountries` VALUES (36,'BF','Burkina Faso','Burkina Faso','BFA','854','yes','226','.bf');
INSERT INTO `tblcountries` VALUES (37,'BI','Burundi','Republic of Burundi','BDI','108','yes','257','.bi');
INSERT INTO `tblcountries` VALUES (38,'KH','Cambodia','Kingdom of Cambodia','KHM','116','yes','855','.kh');
INSERT INTO `tblcountries` VALUES (39,'CM','Cameroon','Republic of Cameroon','CMR','120','yes','237','.cm');
INSERT INTO `tblcountries` VALUES (40,'CA','Canada','Canada','CAN','124','yes','1','.ca');
INSERT INTO `tblcountries` VALUES (41,'CV','Cape Verde','Republic of Cape Verde','CPV','132','yes','238','.cv');
INSERT INTO `tblcountries` VALUES (42,'KY','Cayman Islands','The Cayman Islands','CYM','136','no','1+345','.ky');
INSERT INTO `tblcountries` VALUES (43,'CF','Central African Republic','Central African Republic','CAF','140','yes','236','.cf');
INSERT INTO `tblcountries` VALUES (44,'TD','Chad','Republic of Chad','TCD','148','yes','235','.td');
INSERT INTO `tblcountries` VALUES (45,'CL','Chile','Republic of Chile','CHL','152','yes','56','.cl');
INSERT INTO `tblcountries` VALUES (46,'CN','China','People\'s Republic of China','CHN','156','yes','86','.cn');
INSERT INTO `tblcountries` VALUES (47,'CX','Christmas Island','Christmas Island','CXR','162','no','61','.cx');
INSERT INTO `tblcountries` VALUES (48,'CC','Cocos (Keeling) Islands','Cocos (Keeling) Islands','CCK','166','no','61','.cc');
INSERT INTO `tblcountries` VALUES (49,'CO','Colombia','Republic of Colombia','COL','170','yes','57','.co');
INSERT INTO `tblcountries` VALUES (50,'KM','Comoros','Union of the Comoros','COM','174','yes','269','.km');
INSERT INTO `tblcountries` VALUES (51,'CG','Congo','Republic of the Congo','COG','178','yes','242','.cg');
INSERT INTO `tblcountries` VALUES (52,'CK','Cook Islands','Cook Islands','COK','184','some','682','.ck');
INSERT INTO `tblcountries` VALUES (53,'CR','Costa Rica','Republic of Costa Rica','CRI','188','yes','506','.cr');
INSERT INTO `tblcountries` VALUES (54,'CI','Cote d\'ivoire (Ivory Coast)','Republic of C&ocirc;te D\'Ivoire (Ivory Coast)','CIV','384','yes','225','.ci');
INSERT INTO `tblcountries` VALUES (55,'HR','Croatia','Republic of Croatia','HRV','191','yes','385','.hr');
INSERT INTO `tblcountries` VALUES (56,'CU','Cuba','Republic of Cuba','CUB','192','yes','53','.cu');
INSERT INTO `tblcountries` VALUES (57,'CW','Curacao','Cura&ccedil;ao','CUW','531','no','599','.cw');
INSERT INTO `tblcountries` VALUES (58,'CY','Cyprus','Republic of Cyprus','CYP','196','yes','357','.cy');
INSERT INTO `tblcountries` VALUES (59,'CZ','Czech Republic','Czech Republic','CZE','203','yes','420','.cz');
INSERT INTO `tblcountries` VALUES (60,'CD','Democratic Republic of the Congo','Democratic Republic of the Congo','COD','180','yes','243','.cd');
INSERT INTO `tblcountries` VALUES (61,'DK','Denmark','Kingdom of Denmark','DNK','208','yes','45','.dk');
INSERT INTO `tblcountries` VALUES (62,'DJ','Djibouti','Republic of Djibouti','DJI','262','yes','253','.dj');
INSERT INTO `tblcountries` VALUES (63,'DM','Dominica','Commonwealth of Dominica','DMA','212','yes','1+767','.dm');
INSERT INTO `tblcountries` VALUES (64,'DO','Dominican Republic','Dominican Republic','DOM','214','yes','1+809, 8','.do');
INSERT INTO `tblcountries` VALUES (65,'EC','Ecuador','Republic of Ecuador','ECU','218','yes','593','.ec');
INSERT INTO `tblcountries` VALUES (66,'EG','Egypt','Arab Republic of Egypt','EGY','818','yes','20','.eg');
INSERT INTO `tblcountries` VALUES (67,'SV','El Salvador','Republic of El Salvador','SLV','222','yes','503','.sv');
INSERT INTO `tblcountries` VALUES (68,'GQ','Equatorial Guinea','Republic of Equatorial Guinea','GNQ','226','yes','240','.gq');
INSERT INTO `tblcountries` VALUES (69,'ER','Eritrea','State of Eritrea','ERI','232','yes','291','.er');
INSERT INTO `tblcountries` VALUES (70,'EE','Estonia','Republic of Estonia','EST','233','yes','372','.ee');
INSERT INTO `tblcountries` VALUES (71,'ET','Ethiopia','Federal Democratic Republic of Ethiopia','ETH','231','yes','251','.et');
INSERT INTO `tblcountries` VALUES (72,'FK','Falkland Islands (Malvinas)','The Falkland Islands (Malvinas)','FLK','238','no','500','.fk');
INSERT INTO `tblcountries` VALUES (73,'FO','Faroe Islands','The Faroe Islands','FRO','234','no','298','.fo');
INSERT INTO `tblcountries` VALUES (74,'FJ','Fiji','Republic of Fiji','FJI','242','yes','679','.fj');
INSERT INTO `tblcountries` VALUES (75,'FI','Finland','Republic of Finland','FIN','246','yes','358','.fi');
INSERT INTO `tblcountries` VALUES (76,'FR','France','French Republic','FRA','250','yes','33','.fr');
INSERT INTO `tblcountries` VALUES (77,'GF','French Guiana','French Guiana','GUF','254','no','594','.gf');
INSERT INTO `tblcountries` VALUES (78,'PF','French Polynesia','French Polynesia','PYF','258','no','689','.pf');
INSERT INTO `tblcountries` VALUES (79,'TF','French Southern Territories','French Southern Territories','ATF','260','no',NULL,'.tf');
INSERT INTO `tblcountries` VALUES (80,'GA','Gabon','Gabonese Republic','GAB','266','yes','241','.ga');
INSERT INTO `tblcountries` VALUES (81,'GM','Gambia','Republic of The Gambia','GMB','270','yes','220','.gm');
INSERT INTO `tblcountries` VALUES (82,'GE','Georgia','Georgia','GEO','268','yes','995','.ge');
INSERT INTO `tblcountries` VALUES (83,'DE','Germany','Federal Republic of Germany','DEU','276','yes','49','.de');
INSERT INTO `tblcountries` VALUES (84,'GH','Ghana','Republic of Ghana','GHA','288','yes','233','.gh');
INSERT INTO `tblcountries` VALUES (85,'GI','Gibraltar','Gibraltar','GIB','292','no','350','.gi');
INSERT INTO `tblcountries` VALUES (86,'GR','Greece','Hellenic Republic','GRC','300','yes','30','.gr');
INSERT INTO `tblcountries` VALUES (87,'GL','Greenland','Greenland','GRL','304','no','299','.gl');
INSERT INTO `tblcountries` VALUES (88,'GD','Grenada','Grenada','GRD','308','yes','1+473','.gd');
INSERT INTO `tblcountries` VALUES (89,'GP','Guadaloupe','Guadeloupe','GLP','312','no','590','.gp');
INSERT INTO `tblcountries` VALUES (90,'GU','Guam','Guam','GUM','316','no','1+671','.gu');
INSERT INTO `tblcountries` VALUES (91,'GT','Guatemala','Republic of Guatemala','GTM','320','yes','502','.gt');
INSERT INTO `tblcountries` VALUES (92,'GG','Guernsey','Guernsey','GGY','831','no','44','.gg');
INSERT INTO `tblcountries` VALUES (93,'GN','Guinea','Republic of Guinea','GIN','324','yes','224','.gn');
INSERT INTO `tblcountries` VALUES (94,'GW','Guinea-Bissau','Republic of Guinea-Bissau','GNB','624','yes','245','.gw');
INSERT INTO `tblcountries` VALUES (95,'GY','Guyana','Co-operative Republic of Guyana','GUY','328','yes','592','.gy');
INSERT INTO `tblcountries` VALUES (96,'HT','Haiti','Republic of Haiti','HTI','332','yes','509','.ht');
INSERT INTO `tblcountries` VALUES (97,'HM','Heard Island and McDonald Islands','Heard Island and McDonald Islands','HMD','334','no','NONE','.hm');
INSERT INTO `tblcountries` VALUES (98,'HN','Honduras','Republic of Honduras','HND','340','yes','504','.hn');
INSERT INTO `tblcountries` VALUES (99,'HK','Hong Kong','Hong Kong','HKG','344','no','852','.hk');
INSERT INTO `tblcountries` VALUES (100,'HU','Hungary','Hungary','HUN','348','yes','36','.hu');
INSERT INTO `tblcountries` VALUES (101,'IS','Iceland','Republic of Iceland','ISL','352','yes','354','.is');
INSERT INTO `tblcountries` VALUES (102,'IN','India','Republic of India','IND','356','yes','91','.in');
INSERT INTO `tblcountries` VALUES (103,'ID','Indonesia','Republic of Indonesia','IDN','360','yes','62','.id');
INSERT INTO `tblcountries` VALUES (104,'IR','Iran','Islamic Republic of Iran','IRN','364','yes','98','.ir');
INSERT INTO `tblcountries` VALUES (105,'IQ','Iraq','Republic of Iraq','IRQ','368','yes','964','.iq');
INSERT INTO `tblcountries` VALUES (106,'IE','Ireland','Ireland','IRL','372','yes','353','.ie');
INSERT INTO `tblcountries` VALUES (107,'IM','Isle of Man','Isle of Man','IMN','833','no','44','.im');
INSERT INTO `tblcountries` VALUES (108,'IL','Israel','State of Israel','ISR','376','yes','972','.il');
INSERT INTO `tblcountries` VALUES (109,'IT','Italy','Italian Republic','ITA','380','yes','39','.jm');
INSERT INTO `tblcountries` VALUES (110,'JM','Jamaica','Jamaica','JAM','388','yes','1+876','.jm');
INSERT INTO `tblcountries` VALUES (111,'JP','Japan','Japan','JPN','392','yes','81','.jp');
INSERT INTO `tblcountries` VALUES (112,'JE','Jersey','The Bailiwick of Jersey','JEY','832','no','44','.je');
INSERT INTO `tblcountries` VALUES (113,'JO','Jordan','Hashemite Kingdom of Jordan','JOR','400','yes','962','.jo');
INSERT INTO `tblcountries` VALUES (114,'KZ','Kazakhstan','Republic of Kazakhstan','KAZ','398','yes','7','.kz');
INSERT INTO `tblcountries` VALUES (115,'KE','Kenya','Republic of Kenya','KEN','404','yes','254','.ke');
INSERT INTO `tblcountries` VALUES (116,'KI','Kiribati','Republic of Kiribati','KIR','296','yes','686','.ki');
INSERT INTO `tblcountries` VALUES (117,'XK','Kosovo','Republic of Kosovo','---','---','some','381','');
INSERT INTO `tblcountries` VALUES (118,'KW','Kuwait','State of Kuwait','KWT','414','yes','965','.kw');
INSERT INTO `tblcountries` VALUES (119,'KG','Kyrgyzstan','Kyrgyz Republic','KGZ','417','yes','996','.kg');
INSERT INTO `tblcountries` VALUES (120,'LA','Laos','Lao People\'s Democratic Republic','LAO','418','yes','856','.la');
INSERT INTO `tblcountries` VALUES (121,'LV','Latvia','Republic of Latvia','LVA','428','yes','371','.lv');
INSERT INTO `tblcountries` VALUES (122,'LB','Lebanon','Republic of Lebanon','LBN','422','yes','961','.lb');
INSERT INTO `tblcountries` VALUES (123,'LS','Lesotho','Kingdom of Lesotho','LSO','426','yes','266','.ls');
INSERT INTO `tblcountries` VALUES (124,'LR','Liberia','Republic of Liberia','LBR','430','yes','231','.lr');
INSERT INTO `tblcountries` VALUES (125,'LY','Libya','Libya','LBY','434','yes','218','.ly');
INSERT INTO `tblcountries` VALUES (126,'LI','Liechtenstein','Principality of Liechtenstein','LIE','438','yes','423','.li');
INSERT INTO `tblcountries` VALUES (127,'LT','Lithuania','Republic of Lithuania','LTU','440','yes','370','.lt');
INSERT INTO `tblcountries` VALUES (128,'LU','Luxembourg','Grand Duchy of Luxembourg','LUX','442','yes','352','.lu');
INSERT INTO `tblcountries` VALUES (129,'MO','Macao','The Macao Special Administrative Region','MAC','446','no','853','.mo');
INSERT INTO `tblcountries` VALUES (130,'MK','Macedonia','The Former Yugoslav Republic of Macedonia','MKD','807','yes','389','.mk');
INSERT INTO `tblcountries` VALUES (131,'MG','Madagascar','Republic of Madagascar','MDG','450','yes','261','.mg');
INSERT INTO `tblcountries` VALUES (132,'MW','Malawi','Republic of Malawi','MWI','454','yes','265','.mw');
INSERT INTO `tblcountries` VALUES (133,'MY','Malaysia','Malaysia','MYS','458','yes','60','.my');
INSERT INTO `tblcountries` VALUES (134,'MV','Maldives','Republic of Maldives','MDV','462','yes','960','.mv');
INSERT INTO `tblcountries` VALUES (135,'ML','Mali','Republic of Mali','MLI','466','yes','223','.ml');
INSERT INTO `tblcountries` VALUES (136,'MT','Malta','Republic of Malta','MLT','470','yes','356','.mt');
INSERT INTO `tblcountries` VALUES (137,'MH','Marshall Islands','Republic of the Marshall Islands','MHL','584','yes','692','.mh');
INSERT INTO `tblcountries` VALUES (138,'MQ','Martinique','Martinique','MTQ','474','no','596','.mq');
INSERT INTO `tblcountries` VALUES (139,'MR','Mauritania','Islamic Republic of Mauritania','MRT','478','yes','222','.mr');
INSERT INTO `tblcountries` VALUES (140,'MU','Mauritius','Republic of Mauritius','MUS','480','yes','230','.mu');
INSERT INTO `tblcountries` VALUES (141,'YT','Mayotte','Mayotte','MYT','175','no','262','.yt');
INSERT INTO `tblcountries` VALUES (142,'MX','Mexico','United Mexican States','MEX','484','yes','52','.mx');
INSERT INTO `tblcountries` VALUES (143,'FM','Micronesia','Federated States of Micronesia','FSM','583','yes','691','.fm');
INSERT INTO `tblcountries` VALUES (144,'MD','Moldava','Republic of Moldova','MDA','498','yes','373','.md');
INSERT INTO `tblcountries` VALUES (145,'MC','Monaco','Principality of Monaco','MCO','492','yes','377','.mc');
INSERT INTO `tblcountries` VALUES (146,'MN','Mongolia','Mongolia','MNG','496','yes','976','.mn');
INSERT INTO `tblcountries` VALUES (147,'ME','Montenegro','Montenegro','MNE','499','yes','382','.me');
INSERT INTO `tblcountries` VALUES (148,'MS','Montserrat','Montserrat','MSR','500','no','1+664','.ms');
INSERT INTO `tblcountries` VALUES (149,'MA','Morocco','Kingdom of Morocco','MAR','504','yes','212','.ma');
INSERT INTO `tblcountries` VALUES (150,'MZ','Mozambique','Republic of Mozambique','MOZ','508','yes','258','.mz');
INSERT INTO `tblcountries` VALUES (151,'MM','Myanmar (Burma)','Republic of the Union of Myanmar','MMR','104','yes','95','.mm');
INSERT INTO `tblcountries` VALUES (152,'NA','Namibia','Republic of Namibia','NAM','516','yes','264','.na');
INSERT INTO `tblcountries` VALUES (153,'NR','Nauru','Republic of Nauru','NRU','520','yes','674','.nr');
INSERT INTO `tblcountries` VALUES (154,'NP','Nepal','Federal Democratic Republic of Nepal','NPL','524','yes','977','.np');
INSERT INTO `tblcountries` VALUES (155,'NL','Netherlands','Kingdom of the Netherlands','NLD','528','yes','31','.nl');
INSERT INTO `tblcountries` VALUES (156,'NC','New Caledonia','New Caledonia','NCL','540','no','687','.nc');
INSERT INTO `tblcountries` VALUES (157,'NZ','New Zealand','New Zealand','NZL','554','yes','64','.nz');
INSERT INTO `tblcountries` VALUES (158,'NI','Nicaragua','Republic of Nicaragua','NIC','558','yes','505','.ni');
INSERT INTO `tblcountries` VALUES (159,'NE','Niger','Republic of Niger','NER','562','yes','227','.ne');
INSERT INTO `tblcountries` VALUES (160,'NG','Nigeria','Federal Republic of Nigeria','NGA','566','yes','234','.ng');
INSERT INTO `tblcountries` VALUES (161,'NU','Niue','Niue','NIU','570','some','683','.nu');
INSERT INTO `tblcountries` VALUES (162,'NF','Norfolk Island','Norfolk Island','NFK','574','no','672','.nf');
INSERT INTO `tblcountries` VALUES (163,'KP','North Korea','Democratic People\'s Republic of Korea','PRK','408','yes','850','.kp');
INSERT INTO `tblcountries` VALUES (164,'MP','Northern Mariana Islands','Northern Mariana Islands','MNP','580','no','1+670','.mp');
INSERT INTO `tblcountries` VALUES (165,'NO','Norway','Kingdom of Norway','NOR','578','yes','47','.no');
INSERT INTO `tblcountries` VALUES (166,'OM','Oman','Sultanate of Oman','OMN','512','yes','968','.om');
INSERT INTO `tblcountries` VALUES (167,'PK','Pakistan','Islamic Republic of Pakistan','PAK','586','yes','92','.pk');
INSERT INTO `tblcountries` VALUES (168,'PW','Palau','Republic of Palau','PLW','585','yes','680','.pw');
INSERT INTO `tblcountries` VALUES (169,'PS','Palestine','State of Palestine (or Occupied Palestinian Territory)','PSE','275','some','970','.ps');
INSERT INTO `tblcountries` VALUES (170,'PA','Panama','Republic of Panama','PAN','591','yes','507','.pa');
INSERT INTO `tblcountries` VALUES (171,'PG','Papua New Guinea','Independent State of Papua New Guinea','PNG','598','yes','675','.pg');
INSERT INTO `tblcountries` VALUES (172,'PY','Paraguay','Republic of Paraguay','PRY','600','yes','595','.py');
INSERT INTO `tblcountries` VALUES (173,'PE','Peru','Republic of Peru','PER','604','yes','51','.pe');
INSERT INTO `tblcountries` VALUES (174,'PH','Phillipines','Republic of the Philippines','PHL','608','yes','63','.ph');
INSERT INTO `tblcountries` VALUES (175,'PN','Pitcairn','Pitcairn','PCN','612','no','NONE','.pn');
INSERT INTO `tblcountries` VALUES (176,'PL','Poland','Republic of Poland','POL','616','yes','48','.pl');
INSERT INTO `tblcountries` VALUES (177,'PT','Portugal','Portuguese Republic','PRT','620','yes','351','.pt');
INSERT INTO `tblcountries` VALUES (178,'PR','Puerto Rico','Commonwealth of Puerto Rico','PRI','630','no','1+939','.pr');
INSERT INTO `tblcountries` VALUES (179,'QA','Qatar','State of Qatar','QAT','634','yes','974','.qa');
INSERT INTO `tblcountries` VALUES (180,'RE','Reunion','R&eacute;union','REU','638','no','262','.re');
INSERT INTO `tblcountries` VALUES (181,'RO','Romania','Romania','ROU','642','yes','40','.ro');
INSERT INTO `tblcountries` VALUES (182,'RU','Russia','Russian Federation','RUS','643','yes','7','.ru');
INSERT INTO `tblcountries` VALUES (183,'RW','Rwanda','Republic of Rwanda','RWA','646','yes','250','.rw');
INSERT INTO `tblcountries` VALUES (184,'BL','Saint Barthelemy','Saint Barth&eacute;lemy','BLM','652','no','590','.bl');
INSERT INTO `tblcountries` VALUES (185,'SH','Saint Helena','Saint Helena, Ascension and Tristan da Cunha','SHN','654','no','290','.sh');
INSERT INTO `tblcountries` VALUES (186,'KN','Saint Kitts and Nevis','Federation of Saint Christopher and Nevis','KNA','659','yes','1+869','.kn');
INSERT INTO `tblcountries` VALUES (187,'LC','Saint Lucia','Saint Lucia','LCA','662','yes','1+758','.lc');
INSERT INTO `tblcountries` VALUES (188,'MF','Saint Martin','Saint Martin','MAF','663','no','590','.mf');
INSERT INTO `tblcountries` VALUES (189,'PM','Saint Pierre and Miquelon','Saint Pierre and Miquelon','SPM','666','no','508','.pm');
INSERT INTO `tblcountries` VALUES (190,'VC','Saint Vincent and the Grenadines','Saint Vincent and the Grenadines','VCT','670','yes','1+784','.vc');
INSERT INTO `tblcountries` VALUES (191,'WS','Samoa','Independent State of Samoa','WSM','882','yes','685','.ws');
INSERT INTO `tblcountries` VALUES (192,'SM','San Marino','Republic of San Marino','SMR','674','yes','378','.sm');
INSERT INTO `tblcountries` VALUES (193,'ST','Sao Tome and Principe','Democratic Republic of S&atilde;o Tom&eacute; and Pr&iacute;ncipe','STP','678','yes','239','.st');
INSERT INTO `tblcountries` VALUES (194,'SA','Saudi Arabia','Kingdom of Saudi Arabia','SAU','682','yes','966','.sa');
INSERT INTO `tblcountries` VALUES (195,'SN','Senegal','Republic of Senegal','SEN','686','yes','221','.sn');
INSERT INTO `tblcountries` VALUES (196,'RS','Serbia','Republic of Serbia','SRB','688','yes','381','.rs');
INSERT INTO `tblcountries` VALUES (197,'SC','Seychelles','Republic of Seychelles','SYC','690','yes','248','.sc');
INSERT INTO `tblcountries` VALUES (198,'SL','Sierra Leone','Republic of Sierra Leone','SLE','694','yes','232','.sl');
INSERT INTO `tblcountries` VALUES (199,'SG','Singapore','Republic of Singapore','SGP','702','yes','65','.sg');
INSERT INTO `tblcountries` VALUES (200,'SX','Sint Maarten','Sint Maarten','SXM','534','no','1+721','.sx');
INSERT INTO `tblcountries` VALUES (201,'SK','Slovakia','Slovak Republic','SVK','703','yes','421','.sk');
INSERT INTO `tblcountries` VALUES (202,'SI','Slovenia','Republic of Slovenia','SVN','705','yes','386','.si');
INSERT INTO `tblcountries` VALUES (203,'SB','Solomon Islands','Solomon Islands','SLB','090','yes','677','.sb');
INSERT INTO `tblcountries` VALUES (204,'SO','Somalia','Somali Republic','SOM','706','yes','252','.so');
INSERT INTO `tblcountries` VALUES (205,'ZA','South Africa','Republic of South Africa','ZAF','710','yes','27','.za');
INSERT INTO `tblcountries` VALUES (206,'GS','South Georgia and the South Sandwich Islands','South Georgia and the South Sandwich Islands','SGS','239','no','500','.gs');
INSERT INTO `tblcountries` VALUES (207,'KR','South Korea','Republic of Korea','KOR','410','yes','82','.kr');
INSERT INTO `tblcountries` VALUES (208,'SS','South Sudan','Republic of South Sudan','SSD','728','yes','211','.ss');
INSERT INTO `tblcountries` VALUES (209,'ES','Spain','Kingdom of Spain','ESP','724','yes','34','.es');
INSERT INTO `tblcountries` VALUES (210,'LK','Sri Lanka','Democratic Socialist Republic of Sri Lanka','LKA','144','yes','94','.lk');
INSERT INTO `tblcountries` VALUES (211,'SD','Sudan','Republic of the Sudan','SDN','729','yes','249','.sd');
INSERT INTO `tblcountries` VALUES (212,'SR','Suriname','Republic of Suriname','SUR','740','yes','597','.sr');
INSERT INTO `tblcountries` VALUES (213,'SJ','Svalbard and Jan Mayen','Svalbard and Jan Mayen','SJM','744','no','47','.sj');
INSERT INTO `tblcountries` VALUES (214,'SZ','Swaziland','Kingdom of Swaziland','SWZ','748','yes','268','.sz');
INSERT INTO `tblcountries` VALUES (215,'SE','Sweden','Kingdom of Sweden','SWE','752','yes','46','.se');
INSERT INTO `tblcountries` VALUES (216,'CH','Switzerland','Swiss Confederation','CHE','756','yes','41','.ch');
INSERT INTO `tblcountries` VALUES (217,'SY','Syria','Syrian Arab Republic','SYR','760','yes','963','.sy');
INSERT INTO `tblcountries` VALUES (218,'TW','Taiwan','Republic of China (Taiwan)','TWN','158','former','886','.tw');
INSERT INTO `tblcountries` VALUES (219,'TJ','Tajikistan','Republic of Tajikistan','TJK','762','yes','992','.tj');
INSERT INTO `tblcountries` VALUES (220,'TZ','Tanzania','United Republic of Tanzania','TZA','834','yes','255','.tz');
INSERT INTO `tblcountries` VALUES (221,'TH','Thailand','Kingdom of Thailand','THA','764','yes','66','.th');
INSERT INTO `tblcountries` VALUES (222,'TL','Timor-Leste (East Timor)','Democratic Republic of Timor-Leste','TLS','626','yes','670','.tl');
INSERT INTO `tblcountries` VALUES (223,'TG','Togo','Togolese Republic','TGO','768','yes','228','.tg');
INSERT INTO `tblcountries` VALUES (224,'TK','Tokelau','Tokelau','TKL','772','no','690','.tk');
INSERT INTO `tblcountries` VALUES (225,'TO','Tonga','Kingdom of Tonga','TON','776','yes','676','.to');
INSERT INTO `tblcountries` VALUES (226,'TT','Trinidad and Tobago','Republic of Trinidad and Tobago','TTO','780','yes','1+868','.tt');
INSERT INTO `tblcountries` VALUES (227,'TN','Tunisia','Republic of Tunisia','TUN','788','yes','216','.tn');
INSERT INTO `tblcountries` VALUES (228,'TR','Turkey','Republic of Turkey','TUR','792','yes','90','.tr');
INSERT INTO `tblcountries` VALUES (229,'TM','Turkmenistan','Turkmenistan','TKM','795','yes','993','.tm');
INSERT INTO `tblcountries` VALUES (230,'TC','Turks and Caicos Islands','Turks and Caicos Islands','TCA','796','no','1+649','.tc');
INSERT INTO `tblcountries` VALUES (231,'TV','Tuvalu','Tuvalu','TUV','798','yes','688','.tv');
INSERT INTO `tblcountries` VALUES (232,'UG','Uganda','Republic of Uganda','UGA','800','yes','256','.ug');
INSERT INTO `tblcountries` VALUES (233,'UA','Ukraine','Ukraine','UKR','804','yes','380','.ua');
INSERT INTO `tblcountries` VALUES (234,'AE','United Arab Emirates','United Arab Emirates','ARE','784','yes','971','.ae');
INSERT INTO `tblcountries` VALUES (235,'GB','United Kingdom','United Kingdom of Great Britain and Nothern Ireland','GBR','826','yes','44','.uk');
INSERT INTO `tblcountries` VALUES (236,'US','United States','United States of America','USA','840','yes','1','.us');
INSERT INTO `tblcountries` VALUES (237,'UM','United States Minor Outlying Islands','United States Minor Outlying Islands','UMI','581','no','NONE','NONE');
INSERT INTO `tblcountries` VALUES (238,'UY','Uruguay','Eastern Republic of Uruguay','URY','858','yes','598','.uy');
INSERT INTO `tblcountries` VALUES (239,'UZ','Uzbekistan','Republic of Uzbekistan','UZB','860','yes','998','.uz');
INSERT INTO `tblcountries` VALUES (240,'VU','Vanuatu','Republic of Vanuatu','VUT','548','yes','678','.vu');
INSERT INTO `tblcountries` VALUES (241,'VA','Vatican City','State of the Vatican City','VAT','336','no','39','.va');
INSERT INTO `tblcountries` VALUES (242,'VE','Venezuela','Bolivarian Republic of Venezuela','VEN','862','yes','58','.ve');
INSERT INTO `tblcountries` VALUES (243,'VN','Vietnam','Socialist Republic of Vietnam','VNM','704','yes','84','.vn');
INSERT INTO `tblcountries` VALUES (244,'VG','Virgin Islands, British','British Virgin Islands','VGB','092','no','1+284','.vg');
INSERT INTO `tblcountries` VALUES (245,'VI','Virgin Islands, US','Virgin Islands of the United States','VIR','850','no','1+340','.vi');
INSERT INTO `tblcountries` VALUES (246,'WF','Wallis and Futuna','Wallis and Futuna','WLF','876','no','681','.wf');
INSERT INTO `tblcountries` VALUES (247,'EH','Western Sahara','Western Sahara','ESH','732','no','212','.eh');
INSERT INTO `tblcountries` VALUES (248,'YE','Yemen','Republic of Yemen','YEM','887','yes','967','.ye');
INSERT INTO `tblcountries` VALUES (249,'ZM','Zambia','Republic of Zambia','ZMB','894','yes','260','.zm');
INSERT INTO `tblcountries` VALUES (250,'ZW','Zimbabwe','Republic of Zimbabwe','ZWE','716','yes','263','.zw');

--
-- Table structure for table `tblcurrencies`
--

DROP TABLE IF EXISTS `tblcurrencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcurrencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcurrencies`
--

INSERT INTO `tblcurrencies` VALUES (1,'$','USD',1);
INSERT INTO `tblcurrencies` VALUES (2,'€','EUR',0);

--
-- Table structure for table `tblcustomeradmins`
--

DROP TABLE IF EXISTS `tblcustomeradmins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomeradmins` (
  `staff_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_assigned` text NOT NULL,
  KEY `customer_id` (`customer_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomeradmins`
--


--
-- Table structure for table `tblcustomerfiles_shares`
--

DROP TABLE IF EXISTS `tblcustomerfiles_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomerfiles_shares` (
  `file_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomerfiles_shares`
--


--
-- Table structure for table `tblcustomergroups_in`
--

DROP TABLE IF EXISTS `tblcustomergroups_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomergroups_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomergroups_in`
--


--
-- Table structure for table `tblcustomersgroups`
--

DROP TABLE IF EXISTS `tblcustomersgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomersgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(600) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomersgroups`
--


--
-- Table structure for table `tblcustomfields`
--

DROP TABLE IF EXISTS `tblcustomfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldto` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL,
  `options` mediumtext,
  `field_order` int(11) DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `only_admin` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_table` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_client_portal` int(11) NOT NULL DEFAULT '0',
  `disalow_client_to_edit` int(11) NOT NULL DEFAULT '0',
  `bs_column` int(11) NOT NULL DEFAULT '12',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomfields`
--


--
-- Table structure for table `tblcustomfieldsvalues`
--

DROP TABLE IF EXISTS `tblcustomfieldsvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomfieldsvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `fieldto` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `relid` (`relid`),
  KEY `fieldid` (`fieldid`),
  KEY `fieldto` (`fieldto`),
  KEY `relid_2` (`relid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomfieldsvalues`
--


--
-- Table structure for table `tbldepartments`
--

DROP TABLE IF EXISTS `tbldepartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldepartments` (
  `departmentid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `imap_username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `host` varchar(150) DEFAULT NULL,
  `password` mediumtext,
  `encryption` varchar(3) DEFAULT NULL,
  `delete_after_import` int(11) NOT NULL DEFAULT '0',
  `calendar_id` mediumtext,
  `hidefromclient` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`departmentid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` VALUES (1,'TSS','','','','','',0,'',0);

--
-- Table structure for table `tbldismissedannouncements`
--

DROP TABLE IF EXISTS `tbldismissedannouncements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldismissedannouncements` (
  `dismissedannouncementid` int(11) NOT NULL AUTO_INCREMENT,
  `announcementid` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`dismissedannouncementid`),
  KEY `announcementid` (`announcementid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldismissedannouncements`
--


--
-- Table structure for table `tblemaillists`
--

DROP TABLE IF EXISTS `tblemaillists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemaillists` (
  `listid` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `creator` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL,
  PRIMARY KEY (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblemaillists`
--


--
-- Table structure for table `tblemailtemplates`
--

DROP TABLE IF EXISTS `tblemailtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemailtemplates` (
  `emailtemplateid` int(11) NOT NULL AUTO_INCREMENT,
  `type` mediumtext NOT NULL,
  `slug` varchar(100) NOT NULL,
  `language` varchar(40) DEFAULT NULL,
  `name` mediumtext NOT NULL,
  `subject` mediumtext NOT NULL,
  `message` text NOT NULL,
  `fromname` mediumtext NOT NULL,
  `fromemail` varchar(100) DEFAULT NULL,
  `plaintext` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL,
  PRIMARY KEY (`emailtemplateid`)
) ENGINE=MyISAM AUTO_INCREMENT=885 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblemailtemplates`
--

INSERT INTO `tblemailtemplates` VALUES (1,'client','new-client-created','english','New Contact Added/Registered (Welcome Email)','Welcome aboard','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><br /></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank you for registering on the {companyname} CRM System.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We just wanted to say welcome.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us if you need any help.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click here to view your profile: <a href=\"{crm_url}\">{crm_url}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">(This is an automated email, so please don\'t reply to this email address)</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (2,'invoice','invoice-send-to-client','english','Send Invoice to Customer','Invoice with number {invoice_number} created','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We have prepared the following invoice for you: #&nbsp;{invoice_number}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Invoice status:&nbsp;<strong style=\"font-family: Helvetica, Arial, sans-serif;\">{invoice_status}</strong></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span>&nbsp;</div>\r\n<div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span></div>\r\n</div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us for more information.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}<br /><br /></span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (3,'ticket','new-ticket-opened-admin','english','New Ticket Opened (Opened by Staff, Sent to Customer)','New Support Ticket Opened','<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi&nbsp;{contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">New support ticket has been opened.</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: <span style=\"background-color: inherit;\">{ticket_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; color: #000000; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; color: #000000; font-size: 12pt; background-color: inherit;\">{ticket_message}<br /><br />You can view the ticket on the following link:&nbsp;<a href=\"{ticket_url}\">#{ticket_id}</a><br /></span></div>\r\n<div>&nbsp;</div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (4,'ticket','ticket-reply','english','Ticket Reply (Sent to Customer)','New Ticket Reply','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi&nbsp;<span style=\"background-color: inherit;\">{contact_firstname} </span>{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You have a new ticket reply to ticket #{ticket_id}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: <span style=\"background-color: inherit;\">{ticket_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}<br /><br />You can view the ticket on the following link:&nbsp;<a href=\"{ticket_url}\">#{ticket_id}</a><br /></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (5,'ticket','ticket-autoresponse','english','New Ticket Opened - Autoresponse','New Support Ticket Opened','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi&nbsp;{contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: {ticket_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: {ticket_priority}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}<br /><br /><span>You can view the ticket on the following link:&nbsp;</span><a href=\"{ticket_url}\">#{ticket_id}</a><br /></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (6,'invoice','invoice-payment-recorded','english','Invoice Payment Recorded (Sent to Customer)','Invoice Payment Recorded','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Payment recorded for invoice&nbsp;# {invoice_number}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (7,'invoice','invoice-overdue-notice','english','Invoice Overdue Notice','Invoice Overdue Notice - {invoice_number}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">This is an overdue notice for invoice # {invoice_number}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">This invoice was due: {invoice_duedate}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span>&nbsp;</div>\r\n<div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span></div>\r\n</div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (8,'invoice','invoice-already-send','english','Invoice Already Sent to Customer','On your command here is the invoice','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi <span style=\"background-color: inherit;\">{contact_firstname} {contact_lastname}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">At your request, here is the invoice with number #{invoice_number}</span></div>\r\n<div>\r\n<div>&nbsp;</div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span></div>\r\n</div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us for more information.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (9,'ticket','new-ticket-created-staff','english','New Ticket Created (Opened by Customer, Sent to Staff Members)','New Ticket Created','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A new support ticket has been opened.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: <span style=\"background-color: inherit;\">{ticket_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}<br /><br />You can view the ticket on the following link:&nbsp;<a href=\"{ticket_url}\">#{ticket_id}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (10,'estimate','estimate-send-to-client','english','Send Estimate to Customer','Estimate # {estimate_number} created','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please find the attached estimate # {estimate_number}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Estimate status:&nbsp;<strong>{estimate_status}<br /><br /></strong>You can view the estimate on the following link:&nbsp;<a href=\"{estimate_link}\">{estimate_number}</a><br /></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We look forward to your communication.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (11,'ticket','ticket-reply-to-admin','english','Ticket Reply (Sent to Staff)','New Support Ticket Reply','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A new support ticket reply from {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: <span style=\"background-color: inherit;\">{ticket_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (12,'estimate','estimate-already-send','english','Estimate Already Sent to Customer','Estimate # {estimate_number} ','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank you for your estimate request.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the estimate on the following link:&nbsp;<a href=\"{estimate_link}\">{estimate_number}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us for more information.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (13,'contract','contract-expiration','english','Contract Expiration','Contract Expiration Reminder','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {client_company}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: {contract_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Description: {contract_description}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Date Start: {contract_datestart}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Date End: {contract_dateend}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Value: {contract_contract_value}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us for more information.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (14,'tasks','task-assigned','english','New Task Assigned (Sent to Staff)','New Task Assigned to You - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You have been assigned a new task:</span></div>\r\n<div></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Name: <span style=\"background-color: #ffffff;\">{task_name}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: <span style=\"background-color: #ffffff;\">{task_duedate}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: #ffffff;\">{task_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (15,'tasks','task-added-as-follower','english','Staff Member Added as Follower on Task','You are added as follower on task - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname} <span style=\"background-color: #ffffff;\">{staff_lastname}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You have been added as follower on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Name: {task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Description: {task_description}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: {task_priority}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Start date: {task_startdate}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: {task_duedate}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div>&nbsp;</div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (16,'tasks','task-commented','english','New Comment on Task (Sent to Staff)','New Comment on Task - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A comment has been made on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Name: &nbsp;{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Description: &nbsp;{task_description}<br />Comment: {task_comment}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click on the following link to view: <a href=\"{comment_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (17,'tasks','task-marked-as-finished','english','Task Marked as Finished (Sent to Staff)','Task Marked as Finished - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} marked the following task as complete:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span>{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: <span style=\"background-color: #ffffff;\">{task_duedate}<br /></span></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (18,'tasks','task-added-attachment','english','New Attachment on Task (Sent to Staff)','New Attachment on Task - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} added an attachment on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span>{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (19,'tasks','task-unmarked-as-finished','english','Task Unmarked as Finished (Sent to Staff)','Task UN-marked as finished - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} <span style=\"background-color: inherit;\">marked the </span>following task as <strong>in-complete / unfinished</strong></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span><span style=\"background-color: inherit;\">{task_name}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: {task_duedate}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (20,'estimate','estimate-declined-to-staff','english','Estimate Declined (Sent to Staff)','Customer Declined Estimate','<div><span style=\"font-size: 12pt;\">Hi</span></div>\r\n<div><span style=\"font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt;\">Customer ({client_company}) declined estimate with number <span style=\"background-color: inherit;\">{estimate_number}</span></span></div>\r\n<div><span style=\"font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt;\">You can view the estimate on the following link:&nbsp;<a href=\"{estimate_link}\">{estimate_number}</a></span></div>\r\n<div><span style=\"font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (21,'estimate','estimate-accepted-to-staff','english','Estimate Accepted (Sent to Staff)','Customer Accepted Estimate','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Customer ({client_company}) accepted estimate with number <span style=\"background-color: inherit;\">{estimate_number}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the estimate on the following link:&nbsp;<a href=\"{estimate_link}\">{estimate_number}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (22,'proposals','proposal-client-accepted','english','Customer Action - Accepted (Sent to Staff)','Customer Accepted Proposal','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Client {proposal_proposal_to} accepted the following proposal:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: {proposal_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Total: {proposal_total}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">View the proposal on the following link: <a href=\"{proposal_link}\">{proposal_subject}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (23,'proposals','proposal-send-to-customer','english','Send Proposal to Customer','Proposal','<div>Dear {proposal_proposal_to}</div>\r\n<div>&nbsp;</div>\r\n<div>Please find our attached proposal.</div>\r\n<div>&nbsp;</div>\r\n<div>This proposal is valid until: {proposal_open_till}</div>\r\n<div>You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_subject}</a></div>\r\n<div>&nbsp;</div>\r\n<div>Please don\'t hesitate to comment online if you have any questions.</div>\r\n<div>&nbsp;</div>\r\n<div>We look forward to your communication.</div>\r\n<div>&nbsp;</div>\r\n<div>Kind regards</div>\r\n<div>&nbsp;</div>\r\n<div>{email_signature}</div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (24,'proposals','proposal-client-declined','english','Customer Action - Declined (Sent to Staff)','Client Declined Proposal','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Customer {proposal_proposal_to} declined the proposal {proposal_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">View the proposal on the following link <a href=\"{proposal_link}\">{proposal_subject}</a>&nbsp;or from the admin area.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div>&nbsp;</div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (25,'proposals','proposal-client-thank-you','english','Thank You Email (Sent to Customer After Accept)','Thank for you accepting proposal','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {proposal_proposal_to}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank for for accepting the proposal.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We look forward to doing business with you.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We will contact you as soon as possible</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (26,'proposals','proposal-comment-to-client','english','New Comment  (Sent to Customer Contacts)','New Proposal Comment','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {proposal_proposal_to}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A new comment has been made on the following proposal: {proposal_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_subject}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (27,'proposals','proposal-comment-to-admin','english','New Comment (Sent to Staff) ','New Proposal Comment','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hello</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A new <strong>comment</strong> has been made to the proposal <span style=\"background-color: inherit;\">{proposal_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_subject}</a><span style=\"background-color: inherit;\">&nbsp;or from the admin area.</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (28,'estimate','estimate-thank-you-to-customer','english','Thank You Email (Sent to Customer After Accept)','Thank for you accepting estimate','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank for for accepting the estimate.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We look forward to doing business with you.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We will contact you as soon as possible.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (29,'tasks','task-deadline-notification','english','Task Deadline Reminder - Sent to Assigned Members','Task Deadline Reminder','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">This is an automated email from {companyname}.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">The task {task_name} deadline is on {task_duedate}. This task is still not finished.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (30,'contract','send-contract','english','Send Contract to Customer','Contract - {contract_subject}','<p>Hi&nbsp;{client_company}</p>\r\n<p>Please find the {contract_subject}&nbsp;attached.</p>\r\n<p>Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (31,'invoice','invoice-payment-recorded-to-staff','english','Invoice Payment Recorded (Sent to Staff)','New Invoice Payment','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Customer recorded payment for invoice # {invoice_number}</span></div>\r\n<div>&nbsp;</div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (32,'ticket','auto-close-ticket','english','Auto Close Ticket','Ticket Auto Closed','<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi&nbsp;{contact_firstname}&nbsp;{contact_lastname}</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ticket&nbsp;{ticket_subject} has been auto close due to inactivity.</span></p>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ticket #: <span style=\"background-color: inherit;\">{ticket_id}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (33,'project','new-project-discussion-created-to-staff','english','New Project Discussion (Sent to Project Members)','New Project Discussion Created','<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New project discussion created from&nbsp;{discussion_creator}</p>\r\n<p>Subject:&nbsp;{discussion_subject}</p>\r\n<p>Description:&nbsp;{discussion_description}</p>\r\n<p>You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (34,'project','new-project-discussion-created-to-customer','english','New Project Discussion (Sent to Customer Contacts)','New Project Discussion Created','<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New project discussion created from&nbsp;{discussion_creator}</p>\r\n<p>Subject:&nbsp;{discussion_subject}</p>\r\n<p>Description:&nbsp;{discussion_description}</p>\r\n<p>You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (35,'project','new-project-file-uploaded-to-customer','english','New Project File Uploaded (Sent to Customer Contacts)','New Project File Uploaded','<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New project&nbsp;file is uploaded on&nbsp;{project_name} from&nbsp;{file_creator}</p>\r\n<p>You can view the project on the following link: <a href=\"{project_link}\">{project_name}</a><br />To view&nbsp;the file in our CRM&nbsp;you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (36,'project','new-project-file-uploaded-to-staff','english','New Project File Uploaded (Sent to Project Members)','New Project File Uploaded','<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New project&nbsp;file is uploaded on&nbsp;{project_name} from&nbsp;{file_creator}</p>\r\n<p>You can view the project on the following link: <a href=\"{project_link}\">{project_name}</a><br />To view&nbsp;the file you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (37,'project','new-project-discussion-comment-to-customer','english','New Discussion Comment  (Sent to Customer Contacts)','New Discussion Comment','<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New discussion comment has been made on {discussion_subject} from&nbsp;{comment_creator}</p>\r\n<p>Discussion subject:&nbsp;{discussion_subject}</p>\r\n<p>Comment:&nbsp;{discussion_comment}</p>\r\n<p>You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (38,'project','new-project-discussion-comment-to-staff','english','New Discussion Comment (Sent to Project Members)','New Discussion Comment','<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New discussion comment has been made on {discussion_subject} from&nbsp;{comment_creator}</p>\r\n<p>Discussion subject:&nbsp;{discussion_subject}</p>\r\n<p>Comment:&nbsp;{discussion_comment}</p>\r\n<p>You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (39,'project','staff-added-as-project-member','english','Staff Added as Project Member','New project assigned to you','<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New project has been assigned to you.</p>\r\n<p>You can view the project on the following link <a href=\"{project_link}\">{project_name}</a></p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (40,'estimate','estimate-expiry-reminder','english','Estimate Expiration Reminder','Estimate Expiration Reminder','<p>Hello&nbsp;{client_company}</p>\r\n<p>The estimate with&nbsp;{estimate_number} will expire on&nbsp;{estimate_expirydate}</p>\r\n<p>You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></p>\r\n<p>Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (41,'proposals','proposal-expiry-reminder','english','Proposal Expiration Reminder','Proposal Expiration Reminder','<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hello&nbsp;{proposal_proposal_to}</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">The proposal {proposal_subject} will expire on&nbsp;{proposal_open_till}</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_subject}</a></span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Regards,</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></p>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (42,'staff','new-staff-created','english','New Staff Created (Welcome Email)','You are added as staff member','Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />You are added as member on our CRM.<br /><br />Please use the following&nbsp;logic credentials:<br /><br />Email:&nbsp;{staff_email}<br />Password:&nbsp;{password}<br /><br />Click <a href=\"{admin_url}\">here</a> to login in the dashboard.<br /><br />Best Regards,<br />{email_signature}','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (43,'client','contact-forgot-password','english','Forgot Password','Create New Password','<h2>Create a new password</h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a {companyname}&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (44,'client','contact-password-reseted','english','Password Reset - Confirmation','Your password has been changed','<strong>You have changed your password.<br /></strong><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {contact_email}<br />If this wasnt you, please contact us.<br /><br />{email_signature}','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (45,'client','contact-set-password','english','Set New Password','Set new password on {companyname} ','<h2>Setup your new password on {companyname}</h2>\r\nPlease use the following link to setup your new password.<br /><br />Keep it in your records so you don\'t forget it.<br /><br /> Please set your new password in 48 hours. After that you wont be able to set your password. <br /><br />You can login at: {crm_url}<br /> Your email address for login: {contact_email}<br /> <br /><a href=\"{set_password_url}\">Set New Password</a><br /> <br />{email_signature}','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (46,'staff','staff-forgot-password','english','Forgot Password','Create New Password','<h2>Create a new password</h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a {companyname}&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (47,'staff','staff-password-reseted','english','Password Reset - Confirmation','Your password has been changed','<strong>You have changed your password.<br /></strong><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {staff_email}<br /> If this wasnt you, please contact us.<br /><br />{email_signature}','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (48,'project','assigned-to-project','english','New Project Created (Sent to Customer Contacts)','New Project Created','<p>Hello&nbsp;{contact_firstname}</p>\r\n<p>New project is assigned to your company.<br />Project Name:&nbsp;{project_name}</p>\r\n<p>You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>We are looking forward hearing from you.</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (49,'tasks','task-marked-as-finished-to-contacts','english','Task Marked as Finished (Sent to customer contacts)','Task Marked as Finished - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} marked the following task as complete:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span>{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: <span style=\"background-color: #ffffff;\">{task_duedate}<br /></span></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (50,'tasks','task-added-attachment-to-contacts','english','New Attachment on Task (Sent to Customer Contacts)','New Attachment on Task - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} added an attachment on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span>{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (51,'tasks','task-commented-to-contacts','english','New Comment on Task (Sent to Customer Contacts)','New Comment on Task - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A comment has been made on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Name: &nbsp;{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Description: &nbsp;{task_description}<br />Comment: {task_comment}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click on the following link to view: <a href=\"{comment_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (52,'leads','new-lead-assigned','english','New Lead Assigned to Staff Member','New lead assigned to you','<p>Hello {lead_assigned}<br /><br />New lead is assigned to you.<br />You can view the lead on the following link: <a href=\"{lead_link}\">{lead_name}<br /><br /></a>Kind Regards,<br />{email_signature}</p>','{companyname} | CRM','',0,1,0);
INSERT INTO `tblemailtemplates` VALUES (53,'client','new-client-created','catalan','New Contact Added/Registered (Welcome Email) [catalan]','Welcome aboard','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (54,'invoice','invoice-send-to-client','catalan','Send Invoice to Customer [catalan]','Invoice with number {invoice_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (55,'ticket','new-ticket-opened-admin','catalan','New Ticket Opened (Opened by Staff, Sent to Customer) [catalan]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (56,'ticket','ticket-reply','catalan','Ticket Reply (Sent to Customer) [catalan]','New Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (57,'ticket','ticket-autoresponse','catalan','New Ticket Opened - Autoresponse [catalan]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (58,'invoice','invoice-payment-recorded','catalan','Invoice Payment Recorded (Sent to Customer) [catalan]','Invoice Payment Recorded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (59,'invoice','invoice-overdue-notice','catalan','Invoice Overdue Notice [catalan]','Invoice Overdue Notice - {invoice_number}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (60,'invoice','invoice-already-send','catalan','Invoice Already Sent to Customer [catalan]','On your command here is the invoice','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (61,'ticket','new-ticket-created-staff','catalan','New Ticket Created (Opened by Customer, Sent to Staff Members) [catalan]','New Ticket Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (62,'estimate','estimate-send-to-client','catalan','Send Estimate to Customer [catalan]','Estimate # {estimate_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (63,'ticket','ticket-reply-to-admin','catalan','Ticket Reply (Sent to Staff) [catalan]','New Support Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (64,'estimate','estimate-already-send','catalan','Estimate Already Sent to Customer [catalan]','Estimate # {estimate_number} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (65,'contract','contract-expiration','catalan','Contract Expiration [catalan]','Contract Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (66,'tasks','task-assigned','catalan','New Task Assigned (Sent to Staff) [catalan]','New Task Assigned to You - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (67,'tasks','task-added-as-follower','catalan','Staff Member Added as Follower on Task [catalan]','You are added as follower on task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (68,'tasks','task-commented','catalan','New Comment on Task (Sent to Staff) [catalan]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (69,'tasks','task-marked-as-finished','catalan','Task Marked as Finished (Sent to Staff) [catalan]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (70,'tasks','task-added-attachment','catalan','New Attachment on Task (Sent to Staff) [catalan]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (71,'tasks','task-unmarked-as-finished','catalan','Task Unmarked as Finished (Sent to Staff) [catalan]','Task UN-marked as finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (72,'estimate','estimate-declined-to-staff','catalan','Estimate Declined (Sent to Staff) [catalan]','Customer Declined Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (73,'estimate','estimate-accepted-to-staff','catalan','Estimate Accepted (Sent to Staff) [catalan]','Customer Accepted Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (74,'proposals','proposal-client-accepted','catalan','Customer Action - Accepted (Sent to Staff) [catalan]','Customer Accepted Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (75,'proposals','proposal-send-to-customer','catalan','Send Proposal to Customer [catalan]','Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (76,'proposals','proposal-client-declined','catalan','Customer Action - Declined (Sent to Staff) [catalan]','Client Declined Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (77,'proposals','proposal-client-thank-you','catalan','Thank You Email (Sent to Customer After Accept) [catalan]','Thank for you accepting proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (78,'proposals','proposal-comment-to-client','catalan','New Comment  (Sent to Customer Contacts) [catalan]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (79,'proposals','proposal-comment-to-admin','catalan','New Comment (Sent to Staff)  [catalan]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (80,'estimate','estimate-thank-you-to-customer','catalan','Thank You Email (Sent to Customer After Accept) [catalan]','Thank for you accepting estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (81,'tasks','task-deadline-notification','catalan','Task Deadline Reminder - Sent to Assigned Members [catalan]','Task Deadline Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (82,'contract','send-contract','catalan','Send Contract to Customer [catalan]','Contract - {contract_subject}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (83,'invoice','invoice-payment-recorded-to-staff','catalan','Invoice Payment Recorded (Sent to Staff) [catalan]','New Invoice Payment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (84,'ticket','auto-close-ticket','catalan','Auto Close Ticket [catalan]','Ticket Auto Closed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (85,'project','new-project-discussion-created-to-staff','catalan','New Project Discussion (Sent to Project Members) [catalan]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (86,'project','new-project-discussion-created-to-customer','catalan','New Project Discussion (Sent to Customer Contacts) [catalan]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (87,'project','new-project-file-uploaded-to-customer','catalan','New Project File Uploaded (Sent to Customer Contacts) [catalan]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (88,'project','new-project-file-uploaded-to-staff','catalan','New Project File Uploaded (Sent to Project Members) [catalan]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (89,'project','new-project-discussion-comment-to-customer','catalan','New Discussion Comment  (Sent to Customer Contacts) [catalan]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (90,'project','new-project-discussion-comment-to-staff','catalan','New Discussion Comment (Sent to Project Members) [catalan]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (91,'project','staff-added-as-project-member','catalan','Staff Added as Project Member [catalan]','New project assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (92,'estimate','estimate-expiry-reminder','catalan','Estimate Expiration Reminder [catalan]','Estimate Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (93,'proposals','proposal-expiry-reminder','catalan','Proposal Expiration Reminder [catalan]','Proposal Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (94,'staff','new-staff-created','catalan','New Staff Created (Welcome Email) [catalan]','You are added as staff member','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (95,'client','contact-forgot-password','catalan','Forgot Password [catalan]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (96,'client','contact-password-reseted','catalan','Password Reset - Confirmation [catalan]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (97,'client','contact-set-password','catalan','Set New Password [catalan]','Set new password on {companyname} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (98,'staff','staff-forgot-password','catalan','Forgot Password [catalan]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (99,'staff','staff-password-reseted','catalan','Password Reset - Confirmation [catalan]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (100,'project','assigned-to-project','catalan','New Project Created (Sent to Customer Contacts) [catalan]','New Project Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (101,'tasks','task-marked-as-finished-to-contacts','catalan','Task Marked as Finished (Sent to customer contacts) [catalan]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (102,'tasks','task-added-attachment-to-contacts','catalan','New Attachment on Task (Sent to Customer Contacts) [catalan]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (103,'tasks','task-commented-to-contacts','catalan','New Comment on Task (Sent to Customer Contacts) [catalan]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (104,'leads','new-lead-assigned','catalan','New Lead Assigned to Staff Member [catalan]','New lead assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (105,'client','new-client-created','chinese','New Contact Added/Registered (Welcome Email) [chinese]','Welcome aboard','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (106,'invoice','invoice-send-to-client','chinese','Send Invoice to Customer [chinese]','Invoice with number {invoice_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (107,'ticket','new-ticket-opened-admin','chinese','New Ticket Opened (Opened by Staff, Sent to Customer) [chinese]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (108,'ticket','ticket-reply','chinese','Ticket Reply (Sent to Customer) [chinese]','New Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (109,'ticket','ticket-autoresponse','chinese','New Ticket Opened - Autoresponse [chinese]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (110,'invoice','invoice-payment-recorded','chinese','Invoice Payment Recorded (Sent to Customer) [chinese]','Invoice Payment Recorded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (111,'invoice','invoice-overdue-notice','chinese','Invoice Overdue Notice [chinese]','Invoice Overdue Notice - {invoice_number}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (112,'invoice','invoice-already-send','chinese','Invoice Already Sent to Customer [chinese]','On your command here is the invoice','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (113,'ticket','new-ticket-created-staff','chinese','New Ticket Created (Opened by Customer, Sent to Staff Members) [chinese]','New Ticket Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (114,'estimate','estimate-send-to-client','chinese','Send Estimate to Customer [chinese]','Estimate # {estimate_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (115,'ticket','ticket-reply-to-admin','chinese','Ticket Reply (Sent to Staff) [chinese]','New Support Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (116,'estimate','estimate-already-send','chinese','Estimate Already Sent to Customer [chinese]','Estimate # {estimate_number} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (117,'contract','contract-expiration','chinese','Contract Expiration [chinese]','Contract Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (118,'tasks','task-assigned','chinese','New Task Assigned (Sent to Staff) [chinese]','New Task Assigned to You - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (119,'tasks','task-added-as-follower','chinese','Staff Member Added as Follower on Task [chinese]','You are added as follower on task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (120,'tasks','task-commented','chinese','New Comment on Task (Sent to Staff) [chinese]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (121,'tasks','task-marked-as-finished','chinese','Task Marked as Finished (Sent to Staff) [chinese]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (122,'tasks','task-added-attachment','chinese','New Attachment on Task (Sent to Staff) [chinese]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (123,'tasks','task-unmarked-as-finished','chinese','Task Unmarked as Finished (Sent to Staff) [chinese]','Task UN-marked as finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (124,'estimate','estimate-declined-to-staff','chinese','Estimate Declined (Sent to Staff) [chinese]','Customer Declined Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (125,'estimate','estimate-accepted-to-staff','chinese','Estimate Accepted (Sent to Staff) [chinese]','Customer Accepted Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (126,'proposals','proposal-client-accepted','chinese','Customer Action - Accepted (Sent to Staff) [chinese]','Customer Accepted Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (127,'proposals','proposal-send-to-customer','chinese','Send Proposal to Customer [chinese]','Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (128,'proposals','proposal-client-declined','chinese','Customer Action - Declined (Sent to Staff) [chinese]','Client Declined Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (129,'proposals','proposal-client-thank-you','chinese','Thank You Email (Sent to Customer After Accept) [chinese]','Thank for you accepting proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (130,'proposals','proposal-comment-to-client','chinese','New Comment  (Sent to Customer Contacts) [chinese]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (131,'proposals','proposal-comment-to-admin','chinese','New Comment (Sent to Staff)  [chinese]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (132,'estimate','estimate-thank-you-to-customer','chinese','Thank You Email (Sent to Customer After Accept) [chinese]','Thank for you accepting estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (133,'tasks','task-deadline-notification','chinese','Task Deadline Reminder - Sent to Assigned Members [chinese]','Task Deadline Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (134,'contract','send-contract','chinese','Send Contract to Customer [chinese]','Contract - {contract_subject}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (135,'invoice','invoice-payment-recorded-to-staff','chinese','Invoice Payment Recorded (Sent to Staff) [chinese]','New Invoice Payment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (136,'ticket','auto-close-ticket','chinese','Auto Close Ticket [chinese]','Ticket Auto Closed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (137,'project','new-project-discussion-created-to-staff','chinese','New Project Discussion (Sent to Project Members) [chinese]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (138,'project','new-project-discussion-created-to-customer','chinese','New Project Discussion (Sent to Customer Contacts) [chinese]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (139,'project','new-project-file-uploaded-to-customer','chinese','New Project File Uploaded (Sent to Customer Contacts) [chinese]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (140,'project','new-project-file-uploaded-to-staff','chinese','New Project File Uploaded (Sent to Project Members) [chinese]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (141,'project','new-project-discussion-comment-to-customer','chinese','New Discussion Comment  (Sent to Customer Contacts) [chinese]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (142,'project','new-project-discussion-comment-to-staff','chinese','New Discussion Comment (Sent to Project Members) [chinese]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (143,'project','staff-added-as-project-member','chinese','Staff Added as Project Member [chinese]','New project assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (144,'estimate','estimate-expiry-reminder','chinese','Estimate Expiration Reminder [chinese]','Estimate Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (145,'proposals','proposal-expiry-reminder','chinese','Proposal Expiration Reminder [chinese]','Proposal Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (146,'staff','new-staff-created','chinese','New Staff Created (Welcome Email) [chinese]','You are added as staff member','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (147,'client','contact-forgot-password','chinese','Forgot Password [chinese]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (148,'client','contact-password-reseted','chinese','Password Reset - Confirmation [chinese]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (149,'client','contact-set-password','chinese','Set New Password [chinese]','Set new password on {companyname} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (150,'staff','staff-forgot-password','chinese','Forgot Password [chinese]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (151,'staff','staff-password-reseted','chinese','Password Reset - Confirmation [chinese]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (152,'project','assigned-to-project','chinese','New Project Created (Sent to Customer Contacts) [chinese]','New Project Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (153,'tasks','task-marked-as-finished-to-contacts','chinese','Task Marked as Finished (Sent to customer contacts) [chinese]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (154,'tasks','task-added-attachment-to-contacts','chinese','New Attachment on Task (Sent to Customer Contacts) [chinese]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (155,'tasks','task-commented-to-contacts','chinese','New Comment on Task (Sent to Customer Contacts) [chinese]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (156,'leads','new-lead-assigned','chinese','New Lead Assigned to Staff Member [chinese]','New lead assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (157,'client','new-client-created','dutch','New Contact Added/Registered (Welcome Email) [dutch]','Welcome aboard','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (158,'invoice','invoice-send-to-client','dutch','Send Invoice to Customer [dutch]','Invoice with number {invoice_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (159,'ticket','new-ticket-opened-admin','dutch','New Ticket Opened (Opened by Staff, Sent to Customer) [dutch]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (160,'ticket','ticket-reply','dutch','Ticket Reply (Sent to Customer) [dutch]','New Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (161,'ticket','ticket-autoresponse','dutch','New Ticket Opened - Autoresponse [dutch]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (162,'invoice','invoice-payment-recorded','dutch','Invoice Payment Recorded (Sent to Customer) [dutch]','Invoice Payment Recorded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (163,'invoice','invoice-overdue-notice','dutch','Invoice Overdue Notice [dutch]','Invoice Overdue Notice - {invoice_number}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (164,'invoice','invoice-already-send','dutch','Invoice Already Sent to Customer [dutch]','On your command here is the invoice','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (165,'ticket','new-ticket-created-staff','dutch','New Ticket Created (Opened by Customer, Sent to Staff Members) [dutch]','New Ticket Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (166,'estimate','estimate-send-to-client','dutch','Send Estimate to Customer [dutch]','Estimate # {estimate_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (167,'ticket','ticket-reply-to-admin','dutch','Ticket Reply (Sent to Staff) [dutch]','New Support Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (168,'estimate','estimate-already-send','dutch','Estimate Already Sent to Customer [dutch]','Estimate # {estimate_number} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (169,'contract','contract-expiration','dutch','Contract Expiration [dutch]','Contract Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (170,'tasks','task-assigned','dutch','New Task Assigned (Sent to Staff) [dutch]','New Task Assigned to You - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (171,'tasks','task-added-as-follower','dutch','Staff Member Added as Follower on Task [dutch]','You are added as follower on task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (172,'tasks','task-commented','dutch','New Comment on Task (Sent to Staff) [dutch]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (173,'tasks','task-marked-as-finished','dutch','Task Marked as Finished (Sent to Staff) [dutch]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (174,'tasks','task-added-attachment','dutch','New Attachment on Task (Sent to Staff) [dutch]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (175,'tasks','task-unmarked-as-finished','dutch','Task Unmarked as Finished (Sent to Staff) [dutch]','Task UN-marked as finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (176,'estimate','estimate-declined-to-staff','dutch','Estimate Declined (Sent to Staff) [dutch]','Customer Declined Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (177,'estimate','estimate-accepted-to-staff','dutch','Estimate Accepted (Sent to Staff) [dutch]','Customer Accepted Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (178,'proposals','proposal-client-accepted','dutch','Customer Action - Accepted (Sent to Staff) [dutch]','Customer Accepted Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (179,'proposals','proposal-send-to-customer','dutch','Send Proposal to Customer [dutch]','Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (180,'proposals','proposal-client-declined','dutch','Customer Action - Declined (Sent to Staff) [dutch]','Client Declined Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (181,'proposals','proposal-client-thank-you','dutch','Thank You Email (Sent to Customer After Accept) [dutch]','Thank for you accepting proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (182,'proposals','proposal-comment-to-client','dutch','New Comment  (Sent to Customer Contacts) [dutch]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (183,'proposals','proposal-comment-to-admin','dutch','New Comment (Sent to Staff)  [dutch]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (184,'estimate','estimate-thank-you-to-customer','dutch','Thank You Email (Sent to Customer After Accept) [dutch]','Thank for you accepting estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (185,'tasks','task-deadline-notification','dutch','Task Deadline Reminder - Sent to Assigned Members [dutch]','Task Deadline Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (186,'contract','send-contract','dutch','Send Contract to Customer [dutch]','Contract - {contract_subject}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (187,'invoice','invoice-payment-recorded-to-staff','dutch','Invoice Payment Recorded (Sent to Staff) [dutch]','New Invoice Payment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (188,'ticket','auto-close-ticket','dutch','Auto Close Ticket [dutch]','Ticket Auto Closed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (189,'project','new-project-discussion-created-to-staff','dutch','New Project Discussion (Sent to Project Members) [dutch]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (190,'project','new-project-discussion-created-to-customer','dutch','New Project Discussion (Sent to Customer Contacts) [dutch]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (191,'project','new-project-file-uploaded-to-customer','dutch','New Project File Uploaded (Sent to Customer Contacts) [dutch]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (192,'project','new-project-file-uploaded-to-staff','dutch','New Project File Uploaded (Sent to Project Members) [dutch]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (193,'project','new-project-discussion-comment-to-customer','dutch','New Discussion Comment  (Sent to Customer Contacts) [dutch]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (194,'project','new-project-discussion-comment-to-staff','dutch','New Discussion Comment (Sent to Project Members) [dutch]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (195,'project','staff-added-as-project-member','dutch','Staff Added as Project Member [dutch]','New project assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (196,'estimate','estimate-expiry-reminder','dutch','Estimate Expiration Reminder [dutch]','Estimate Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (197,'proposals','proposal-expiry-reminder','dutch','Proposal Expiration Reminder [dutch]','Proposal Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (198,'staff','new-staff-created','dutch','New Staff Created (Welcome Email) [dutch]','You are added as staff member','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (199,'client','contact-forgot-password','dutch','Forgot Password [dutch]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (200,'client','contact-password-reseted','dutch','Password Reset - Confirmation [dutch]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (201,'client','contact-set-password','dutch','Set New Password [dutch]','Set new password on {companyname} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (202,'staff','staff-forgot-password','dutch','Forgot Password [dutch]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (203,'staff','staff-password-reseted','dutch','Password Reset - Confirmation [dutch]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (204,'project','assigned-to-project','dutch','New Project Created (Sent to Customer Contacts) [dutch]','New Project Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (205,'tasks','task-marked-as-finished-to-contacts','dutch','Task Marked as Finished (Sent to customer contacts) [dutch]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (206,'tasks','task-added-attachment-to-contacts','dutch','New Attachment on Task (Sent to Customer Contacts) [dutch]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (207,'tasks','task-commented-to-contacts','dutch','New Comment on Task (Sent to Customer Contacts) [dutch]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (208,'leads','new-lead-assigned','dutch','New Lead Assigned to Staff Member [dutch]','New lead assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (209,'client','new-client-created','french','New Contact Added/Registered (Welcome Email) [french]','Welcome aboard','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (210,'invoice','invoice-send-to-client','french','Send Invoice to Customer [french]','Invoice with number {invoice_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (211,'ticket','new-ticket-opened-admin','french','New Ticket Opened (Opened by Staff, Sent to Customer) [french]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (212,'ticket','ticket-reply','french','Ticket Reply (Sent to Customer) [french]','New Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (213,'ticket','ticket-autoresponse','french','New Ticket Opened - Autoresponse [french]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (214,'invoice','invoice-payment-recorded','french','Invoice Payment Recorded (Sent to Customer) [french]','Invoice Payment Recorded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (215,'invoice','invoice-overdue-notice','french','Invoice Overdue Notice [french]','Invoice Overdue Notice - {invoice_number}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (216,'invoice','invoice-already-send','french','Invoice Already Sent to Customer [french]','On your command here is the invoice','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (217,'ticket','new-ticket-created-staff','french','New Ticket Created (Opened by Customer, Sent to Staff Members) [french]','New Ticket Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (218,'estimate','estimate-send-to-client','french','Send Estimate to Customer [french]','Estimate # {estimate_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (219,'ticket','ticket-reply-to-admin','french','Ticket Reply (Sent to Staff) [french]','New Support Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (220,'estimate','estimate-already-send','french','Estimate Already Sent to Customer [french]','Estimate # {estimate_number} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (221,'contract','contract-expiration','french','Contract Expiration [french]','Contract Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (222,'tasks','task-assigned','french','New Task Assigned (Sent to Staff) [french]','New Task Assigned to You - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (223,'tasks','task-added-as-follower','french','Staff Member Added as Follower on Task [french]','You are added as follower on task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (224,'tasks','task-commented','french','New Comment on Task (Sent to Staff) [french]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (225,'tasks','task-marked-as-finished','french','Task Marked as Finished (Sent to Staff) [french]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (226,'tasks','task-added-attachment','french','New Attachment on Task (Sent to Staff) [french]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (227,'tasks','task-unmarked-as-finished','french','Task Unmarked as Finished (Sent to Staff) [french]','Task UN-marked as finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (228,'estimate','estimate-declined-to-staff','french','Estimate Declined (Sent to Staff) [french]','Customer Declined Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (229,'estimate','estimate-accepted-to-staff','french','Estimate Accepted (Sent to Staff) [french]','Customer Accepted Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (230,'proposals','proposal-client-accepted','french','Customer Action - Accepted (Sent to Staff) [french]','Customer Accepted Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (231,'proposals','proposal-send-to-customer','french','Send Proposal to Customer [french]','Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (232,'proposals','proposal-client-declined','french','Customer Action - Declined (Sent to Staff) [french]','Client Declined Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (233,'proposals','proposal-client-thank-you','french','Thank You Email (Sent to Customer After Accept) [french]','Thank for you accepting proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (234,'proposals','proposal-comment-to-client','french','New Comment  (Sent to Customer Contacts) [french]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (235,'proposals','proposal-comment-to-admin','french','New Comment (Sent to Staff)  [french]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (236,'estimate','estimate-thank-you-to-customer','french','Thank You Email (Sent to Customer After Accept) [french]','Thank for you accepting estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (237,'tasks','task-deadline-notification','french','Task Deadline Reminder - Sent to Assigned Members [french]','Task Deadline Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (238,'contract','send-contract','french','Send Contract to Customer [french]','Contract - {contract_subject}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (239,'invoice','invoice-payment-recorded-to-staff','french','Invoice Payment Recorded (Sent to Staff) [french]','New Invoice Payment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (240,'ticket','auto-close-ticket','french','Auto Close Ticket [french]','Ticket Auto Closed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (241,'project','new-project-discussion-created-to-staff','french','New Project Discussion (Sent to Project Members) [french]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (242,'project','new-project-discussion-created-to-customer','french','New Project Discussion (Sent to Customer Contacts) [french]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (243,'project','new-project-file-uploaded-to-customer','french','New Project File Uploaded (Sent to Customer Contacts) [french]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (244,'project','new-project-file-uploaded-to-staff','french','New Project File Uploaded (Sent to Project Members) [french]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (245,'project','new-project-discussion-comment-to-customer','french','New Discussion Comment  (Sent to Customer Contacts) [french]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (246,'project','new-project-discussion-comment-to-staff','french','New Discussion Comment (Sent to Project Members) [french]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (247,'project','staff-added-as-project-member','french','Staff Added as Project Member [french]','New project assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (248,'estimate','estimate-expiry-reminder','french','Estimate Expiration Reminder [french]','Estimate Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (249,'proposals','proposal-expiry-reminder','french','Proposal Expiration Reminder [french]','Proposal Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (250,'staff','new-staff-created','french','New Staff Created (Welcome Email) [french]','You are added as staff member','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (251,'client','contact-forgot-password','french','Forgot Password [french]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (252,'client','contact-password-reseted','french','Password Reset - Confirmation [french]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (253,'client','contact-set-password','french','Set New Password [french]','Set new password on {companyname} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (254,'staff','staff-forgot-password','french','Forgot Password [french]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (255,'staff','staff-password-reseted','french','Password Reset - Confirmation [french]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (256,'project','assigned-to-project','french','New Project Created (Sent to Customer Contacts) [french]','New Project Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (257,'tasks','task-marked-as-finished-to-contacts','french','Task Marked as Finished (Sent to customer contacts) [french]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (258,'tasks','task-added-attachment-to-contacts','french','New Attachment on Task (Sent to Customer Contacts) [french]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (259,'tasks','task-commented-to-contacts','french','New Comment on Task (Sent to Customer Contacts) [french]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (260,'leads','new-lead-assigned','french','New Lead Assigned to Staff Member [french]','New lead assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (261,'client','new-client-created','german','New Contact Added/Registered (Welcome Email) [german]','Welcome aboard','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (262,'invoice','invoice-send-to-client','german','Send Invoice to Customer [german]','Invoice with number {invoice_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (263,'ticket','new-ticket-opened-admin','german','New Ticket Opened (Opened by Staff, Sent to Customer) [german]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (264,'ticket','ticket-reply','german','Ticket Reply (Sent to Customer) [german]','New Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (265,'ticket','ticket-autoresponse','german','New Ticket Opened - Autoresponse [german]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (266,'invoice','invoice-payment-recorded','german','Invoice Payment Recorded (Sent to Customer) [german]','Invoice Payment Recorded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (267,'invoice','invoice-overdue-notice','german','Invoice Overdue Notice [german]','Invoice Overdue Notice - {invoice_number}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (268,'invoice','invoice-already-send','german','Invoice Already Sent to Customer [german]','On your command here is the invoice','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (269,'ticket','new-ticket-created-staff','german','New Ticket Created (Opened by Customer, Sent to Staff Members) [german]','New Ticket Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (270,'estimate','estimate-send-to-client','german','Send Estimate to Customer [german]','Estimate # {estimate_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (271,'ticket','ticket-reply-to-admin','german','Ticket Reply (Sent to Staff) [german]','New Support Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (272,'estimate','estimate-already-send','german','Estimate Already Sent to Customer [german]','Estimate # {estimate_number} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (273,'contract','contract-expiration','german','Contract Expiration [german]','Contract Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (274,'tasks','task-assigned','german','New Task Assigned (Sent to Staff) [german]','New Task Assigned to You - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (275,'tasks','task-added-as-follower','german','Staff Member Added as Follower on Task [german]','You are added as follower on task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (276,'tasks','task-commented','german','New Comment on Task (Sent to Staff) [german]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (277,'tasks','task-marked-as-finished','german','Task Marked as Finished (Sent to Staff) [german]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (278,'tasks','task-added-attachment','german','New Attachment on Task (Sent to Staff) [german]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (279,'tasks','task-unmarked-as-finished','german','Task Unmarked as Finished (Sent to Staff) [german]','Task UN-marked as finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (280,'estimate','estimate-declined-to-staff','german','Estimate Declined (Sent to Staff) [german]','Customer Declined Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (281,'estimate','estimate-accepted-to-staff','german','Estimate Accepted (Sent to Staff) [german]','Customer Accepted Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (282,'proposals','proposal-client-accepted','german','Customer Action - Accepted (Sent to Staff) [german]','Customer Accepted Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (283,'proposals','proposal-send-to-customer','german','Send Proposal to Customer [german]','Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (284,'proposals','proposal-client-declined','german','Customer Action - Declined (Sent to Staff) [german]','Client Declined Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (285,'proposals','proposal-client-thank-you','german','Thank You Email (Sent to Customer After Accept) [german]','Thank for you accepting proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (286,'proposals','proposal-comment-to-client','german','New Comment  (Sent to Customer Contacts) [german]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (287,'proposals','proposal-comment-to-admin','german','New Comment (Sent to Staff)  [german]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (288,'estimate','estimate-thank-you-to-customer','german','Thank You Email (Sent to Customer After Accept) [german]','Thank for you accepting estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (289,'tasks','task-deadline-notification','german','Task Deadline Reminder - Sent to Assigned Members [german]','Task Deadline Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (290,'contract','send-contract','german','Send Contract to Customer [german]','Contract - {contract_subject}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (291,'invoice','invoice-payment-recorded-to-staff','german','Invoice Payment Recorded (Sent to Staff) [german]','New Invoice Payment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (292,'ticket','auto-close-ticket','german','Auto Close Ticket [german]','Ticket Auto Closed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (293,'project','new-project-discussion-created-to-staff','german','New Project Discussion (Sent to Project Members) [german]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (294,'project','new-project-discussion-created-to-customer','german','New Project Discussion (Sent to Customer Contacts) [german]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (295,'project','new-project-file-uploaded-to-customer','german','New Project File Uploaded (Sent to Customer Contacts) [german]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (296,'project','new-project-file-uploaded-to-staff','german','New Project File Uploaded (Sent to Project Members) [german]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (297,'project','new-project-discussion-comment-to-customer','german','New Discussion Comment  (Sent to Customer Contacts) [german]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (298,'project','new-project-discussion-comment-to-staff','german','New Discussion Comment (Sent to Project Members) [german]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (299,'project','staff-added-as-project-member','german','Staff Added as Project Member [german]','New project assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (300,'estimate','estimate-expiry-reminder','german','Estimate Expiration Reminder [german]','Estimate Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (301,'proposals','proposal-expiry-reminder','german','Proposal Expiration Reminder [german]','Proposal Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (302,'staff','new-staff-created','german','New Staff Created (Welcome Email) [german]','You are added as staff member','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (303,'client','contact-forgot-password','german','Forgot Password [german]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (304,'client','contact-password-reseted','german','Password Reset - Confirmation [german]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (305,'client','contact-set-password','german','Set New Password [german]','Set new password on {companyname} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (306,'staff','staff-forgot-password','german','Forgot Password [german]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (307,'staff','staff-password-reseted','german','Password Reset - Confirmation [german]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (308,'project','assigned-to-project','german','New Project Created (Sent to Customer Contacts) [german]','New Project Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (309,'tasks','task-marked-as-finished-to-contacts','german','Task Marked as Finished (Sent to customer contacts) [german]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (310,'tasks','task-added-attachment-to-contacts','german','New Attachment on Task (Sent to Customer Contacts) [german]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (311,'tasks','task-commented-to-contacts','german','New Comment on Task (Sent to Customer Contacts) [german]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (312,'leads','new-lead-assigned','german','New Lead Assigned to Staff Member [german]','New lead assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (313,'client','new-client-created','indonesia','New Contact Added/Registered (Welcome Email) [indonesia]','Welcome aboard','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (314,'invoice','invoice-send-to-client','indonesia','Send Invoice to Customer [indonesia]','Invoice with number {invoice_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (315,'ticket','new-ticket-opened-admin','indonesia','New Ticket Opened (Opened by Staff, Sent to Customer) [indonesia]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (316,'ticket','ticket-reply','indonesia','Ticket Reply (Sent to Customer) [indonesia]','New Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (317,'ticket','ticket-autoresponse','indonesia','New Ticket Opened - Autoresponse [indonesia]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (318,'invoice','invoice-payment-recorded','indonesia','Invoice Payment Recorded (Sent to Customer) [indonesia]','Invoice Payment Recorded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (319,'invoice','invoice-overdue-notice','indonesia','Invoice Overdue Notice [indonesia]','Invoice Overdue Notice - {invoice_number}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (320,'invoice','invoice-already-send','indonesia','Invoice Already Sent to Customer [indonesia]','On your command here is the invoice','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (321,'ticket','new-ticket-created-staff','indonesia','New Ticket Created (Opened by Customer, Sent to Staff Members) [indonesia]','New Ticket Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (322,'estimate','estimate-send-to-client','indonesia','Send Estimate to Customer [indonesia]','Estimate # {estimate_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (323,'ticket','ticket-reply-to-admin','indonesia','Ticket Reply (Sent to Staff) [indonesia]','New Support Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (324,'estimate','estimate-already-send','indonesia','Estimate Already Sent to Customer [indonesia]','Estimate # {estimate_number} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (325,'contract','contract-expiration','indonesia','Contract Expiration [indonesia]','Contract Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (326,'tasks','task-assigned','indonesia','New Task Assigned (Sent to Staff) [indonesia]','New Task Assigned to You - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (327,'tasks','task-added-as-follower','indonesia','Staff Member Added as Follower on Task [indonesia]','You are added as follower on task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (328,'tasks','task-commented','indonesia','New Comment on Task (Sent to Staff) [indonesia]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (329,'tasks','task-marked-as-finished','indonesia','Task Marked as Finished (Sent to Staff) [indonesia]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (330,'tasks','task-added-attachment','indonesia','New Attachment on Task (Sent to Staff) [indonesia]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (331,'tasks','task-unmarked-as-finished','indonesia','Task Unmarked as Finished (Sent to Staff) [indonesia]','Task UN-marked as finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (332,'estimate','estimate-declined-to-staff','indonesia','Estimate Declined (Sent to Staff) [indonesia]','Customer Declined Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (333,'estimate','estimate-accepted-to-staff','indonesia','Estimate Accepted (Sent to Staff) [indonesia]','Customer Accepted Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (334,'proposals','proposal-client-accepted','indonesia','Customer Action - Accepted (Sent to Staff) [indonesia]','Customer Accepted Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (335,'proposals','proposal-send-to-customer','indonesia','Send Proposal to Customer [indonesia]','Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (336,'proposals','proposal-client-declined','indonesia','Customer Action - Declined (Sent to Staff) [indonesia]','Client Declined Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (337,'proposals','proposal-client-thank-you','indonesia','Thank You Email (Sent to Customer After Accept) [indonesia]','Thank for you accepting proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (338,'proposals','proposal-comment-to-client','indonesia','New Comment  (Sent to Customer Contacts) [indonesia]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (339,'proposals','proposal-comment-to-admin','indonesia','New Comment (Sent to Staff)  [indonesia]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (340,'estimate','estimate-thank-you-to-customer','indonesia','Thank You Email (Sent to Customer After Accept) [indonesia]','Thank for you accepting estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (341,'tasks','task-deadline-notification','indonesia','Task Deadline Reminder - Sent to Assigned Members [indonesia]','Task Deadline Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (342,'contract','send-contract','indonesia','Send Contract to Customer [indonesia]','Contract - {contract_subject}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (343,'invoice','invoice-payment-recorded-to-staff','indonesia','Invoice Payment Recorded (Sent to Staff) [indonesia]','New Invoice Payment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (344,'ticket','auto-close-ticket','indonesia','Auto Close Ticket [indonesia]','Ticket Auto Closed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (345,'project','new-project-discussion-created-to-staff','indonesia','New Project Discussion (Sent to Project Members) [indonesia]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (346,'project','new-project-discussion-created-to-customer','indonesia','New Project Discussion (Sent to Customer Contacts) [indonesia]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (347,'project','new-project-file-uploaded-to-customer','indonesia','New Project File Uploaded (Sent to Customer Contacts) [indonesia]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (348,'project','new-project-file-uploaded-to-staff','indonesia','New Project File Uploaded (Sent to Project Members) [indonesia]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (349,'project','new-project-discussion-comment-to-customer','indonesia','New Discussion Comment  (Sent to Customer Contacts) [indonesia]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (350,'project','new-project-discussion-comment-to-staff','indonesia','New Discussion Comment (Sent to Project Members) [indonesia]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (351,'project','staff-added-as-project-member','indonesia','Staff Added as Project Member [indonesia]','New project assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (352,'estimate','estimate-expiry-reminder','indonesia','Estimate Expiration Reminder [indonesia]','Estimate Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (353,'proposals','proposal-expiry-reminder','indonesia','Proposal Expiration Reminder [indonesia]','Proposal Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (354,'staff','new-staff-created','indonesia','New Staff Created (Welcome Email) [indonesia]','You are added as staff member','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (355,'client','contact-forgot-password','indonesia','Forgot Password [indonesia]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (356,'client','contact-password-reseted','indonesia','Password Reset - Confirmation [indonesia]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (357,'client','contact-set-password','indonesia','Set New Password [indonesia]','Set new password on {companyname} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (358,'staff','staff-forgot-password','indonesia','Forgot Password [indonesia]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (359,'staff','staff-password-reseted','indonesia','Password Reset - Confirmation [indonesia]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (360,'project','assigned-to-project','indonesia','New Project Created (Sent to Customer Contacts) [indonesia]','New Project Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (361,'tasks','task-marked-as-finished-to-contacts','indonesia','Task Marked as Finished (Sent to customer contacts) [indonesia]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (362,'tasks','task-added-attachment-to-contacts','indonesia','New Attachment on Task (Sent to Customer Contacts) [indonesia]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (363,'tasks','task-commented-to-contacts','indonesia','New Comment on Task (Sent to Customer Contacts) [indonesia]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (364,'leads','new-lead-assigned','indonesia','New Lead Assigned to Staff Member [indonesia]','New lead assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (365,'client','new-client-created','italian','New Contact Added/Registered (Welcome Email) [italian]','Welcome aboard','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (366,'invoice','invoice-send-to-client','italian','Send Invoice to Customer [italian]','Invoice with number {invoice_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (367,'ticket','new-ticket-opened-admin','italian','New Ticket Opened (Opened by Staff, Sent to Customer) [italian]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (368,'ticket','ticket-reply','italian','Ticket Reply (Sent to Customer) [italian]','New Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (369,'ticket','ticket-autoresponse','italian','New Ticket Opened - Autoresponse [italian]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (370,'invoice','invoice-payment-recorded','italian','Invoice Payment Recorded (Sent to Customer) [italian]','Invoice Payment Recorded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (371,'invoice','invoice-overdue-notice','italian','Invoice Overdue Notice [italian]','Invoice Overdue Notice - {invoice_number}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (372,'invoice','invoice-already-send','italian','Invoice Already Sent to Customer [italian]','On your command here is the invoice','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (373,'ticket','new-ticket-created-staff','italian','New Ticket Created (Opened by Customer, Sent to Staff Members) [italian]','New Ticket Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (374,'estimate','estimate-send-to-client','italian','Send Estimate to Customer [italian]','Estimate # {estimate_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (375,'ticket','ticket-reply-to-admin','italian','Ticket Reply (Sent to Staff) [italian]','New Support Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (376,'estimate','estimate-already-send','italian','Estimate Already Sent to Customer [italian]','Estimate # {estimate_number} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (377,'contract','contract-expiration','italian','Contract Expiration [italian]','Contract Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (378,'tasks','task-assigned','italian','New Task Assigned (Sent to Staff) [italian]','New Task Assigned to You - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (379,'tasks','task-added-as-follower','italian','Staff Member Added as Follower on Task [italian]','You are added as follower on task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (380,'tasks','task-commented','italian','New Comment on Task (Sent to Staff) [italian]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (381,'tasks','task-marked-as-finished','italian','Task Marked as Finished (Sent to Staff) [italian]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (382,'tasks','task-added-attachment','italian','New Attachment on Task (Sent to Staff) [italian]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (383,'tasks','task-unmarked-as-finished','italian','Task Unmarked as Finished (Sent to Staff) [italian]','Task UN-marked as finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (384,'estimate','estimate-declined-to-staff','italian','Estimate Declined (Sent to Staff) [italian]','Customer Declined Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (385,'estimate','estimate-accepted-to-staff','italian','Estimate Accepted (Sent to Staff) [italian]','Customer Accepted Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (386,'proposals','proposal-client-accepted','italian','Customer Action - Accepted (Sent to Staff) [italian]','Customer Accepted Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (387,'proposals','proposal-send-to-customer','italian','Send Proposal to Customer [italian]','Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (388,'proposals','proposal-client-declined','italian','Customer Action - Declined (Sent to Staff) [italian]','Client Declined Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (389,'proposals','proposal-client-thank-you','italian','Thank You Email (Sent to Customer After Accept) [italian]','Thank for you accepting proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (390,'proposals','proposal-comment-to-client','italian','New Comment  (Sent to Customer Contacts) [italian]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (391,'proposals','proposal-comment-to-admin','italian','New Comment (Sent to Staff)  [italian]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (392,'estimate','estimate-thank-you-to-customer','italian','Thank You Email (Sent to Customer After Accept) [italian]','Thank for you accepting estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (393,'tasks','task-deadline-notification','italian','Task Deadline Reminder - Sent to Assigned Members [italian]','Task Deadline Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (394,'contract','send-contract','italian','Send Contract to Customer [italian]','Contract - {contract_subject}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (395,'invoice','invoice-payment-recorded-to-staff','italian','Invoice Payment Recorded (Sent to Staff) [italian]','New Invoice Payment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (396,'ticket','auto-close-ticket','italian','Auto Close Ticket [italian]','Ticket Auto Closed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (397,'project','new-project-discussion-created-to-staff','italian','New Project Discussion (Sent to Project Members) [italian]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (398,'project','new-project-discussion-created-to-customer','italian','New Project Discussion (Sent to Customer Contacts) [italian]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (399,'project','new-project-file-uploaded-to-customer','italian','New Project File Uploaded (Sent to Customer Contacts) [italian]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (400,'project','new-project-file-uploaded-to-staff','italian','New Project File Uploaded (Sent to Project Members) [italian]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (401,'project','new-project-discussion-comment-to-customer','italian','New Discussion Comment  (Sent to Customer Contacts) [italian]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (402,'project','new-project-discussion-comment-to-staff','italian','New Discussion Comment (Sent to Project Members) [italian]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (403,'project','staff-added-as-project-member','italian','Staff Added as Project Member [italian]','New project assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (404,'estimate','estimate-expiry-reminder','italian','Estimate Expiration Reminder [italian]','Estimate Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (405,'proposals','proposal-expiry-reminder','italian','Proposal Expiration Reminder [italian]','Proposal Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (406,'staff','new-staff-created','italian','New Staff Created (Welcome Email) [italian]','You are added as staff member','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (407,'client','contact-forgot-password','italian','Forgot Password [italian]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (408,'client','contact-password-reseted','italian','Password Reset - Confirmation [italian]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (409,'client','contact-set-password','italian','Set New Password [italian]','Set new password on {companyname} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (410,'staff','staff-forgot-password','italian','Forgot Password [italian]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (411,'staff','staff-password-reseted','italian','Password Reset - Confirmation [italian]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (412,'project','assigned-to-project','italian','New Project Created (Sent to Customer Contacts) [italian]','New Project Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (413,'tasks','task-marked-as-finished-to-contacts','italian','Task Marked as Finished (Sent to customer contacts) [italian]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (414,'tasks','task-added-attachment-to-contacts','italian','New Attachment on Task (Sent to Customer Contacts) [italian]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (415,'tasks','task-commented-to-contacts','italian','New Comment on Task (Sent to Customer Contacts) [italian]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (416,'leads','new-lead-assigned','italian','New Lead Assigned to Staff Member [italian]','New lead assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (417,'client','new-client-created','japanese','New Contact Added/Registered (Welcome Email) [japanese]','Welcome aboard','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (418,'invoice','invoice-send-to-client','japanese','Send Invoice to Customer [japanese]','Invoice with number {invoice_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (419,'ticket','new-ticket-opened-admin','japanese','New Ticket Opened (Opened by Staff, Sent to Customer) [japanese]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (420,'ticket','ticket-reply','japanese','Ticket Reply (Sent to Customer) [japanese]','New Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (421,'ticket','ticket-autoresponse','japanese','New Ticket Opened - Autoresponse [japanese]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (422,'invoice','invoice-payment-recorded','japanese','Invoice Payment Recorded (Sent to Customer) [japanese]','Invoice Payment Recorded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (423,'invoice','invoice-overdue-notice','japanese','Invoice Overdue Notice [japanese]','Invoice Overdue Notice - {invoice_number}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (424,'invoice','invoice-already-send','japanese','Invoice Already Sent to Customer [japanese]','On your command here is the invoice','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (425,'ticket','new-ticket-created-staff','japanese','New Ticket Created (Opened by Customer, Sent to Staff Members) [japanese]','New Ticket Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (426,'estimate','estimate-send-to-client','japanese','Send Estimate to Customer [japanese]','Estimate # {estimate_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (427,'ticket','ticket-reply-to-admin','japanese','Ticket Reply (Sent to Staff) [japanese]','New Support Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (428,'estimate','estimate-already-send','japanese','Estimate Already Sent to Customer [japanese]','Estimate # {estimate_number} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (429,'contract','contract-expiration','japanese','Contract Expiration [japanese]','Contract Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (430,'tasks','task-assigned','japanese','New Task Assigned (Sent to Staff) [japanese]','New Task Assigned to You - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (431,'tasks','task-added-as-follower','japanese','Staff Member Added as Follower on Task [japanese]','You are added as follower on task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (432,'tasks','task-commented','japanese','New Comment on Task (Sent to Staff) [japanese]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (433,'tasks','task-marked-as-finished','japanese','Task Marked as Finished (Sent to Staff) [japanese]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (434,'tasks','task-added-attachment','japanese','New Attachment on Task (Sent to Staff) [japanese]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (435,'tasks','task-unmarked-as-finished','japanese','Task Unmarked as Finished (Sent to Staff) [japanese]','Task UN-marked as finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (436,'estimate','estimate-declined-to-staff','japanese','Estimate Declined (Sent to Staff) [japanese]','Customer Declined Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (437,'estimate','estimate-accepted-to-staff','japanese','Estimate Accepted (Sent to Staff) [japanese]','Customer Accepted Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (438,'proposals','proposal-client-accepted','japanese','Customer Action - Accepted (Sent to Staff) [japanese]','Customer Accepted Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (439,'proposals','proposal-send-to-customer','japanese','Send Proposal to Customer [japanese]','Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (440,'proposals','proposal-client-declined','japanese','Customer Action - Declined (Sent to Staff) [japanese]','Client Declined Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (441,'proposals','proposal-client-thank-you','japanese','Thank You Email (Sent to Customer After Accept) [japanese]','Thank for you accepting proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (442,'proposals','proposal-comment-to-client','japanese','New Comment  (Sent to Customer Contacts) [japanese]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (443,'proposals','proposal-comment-to-admin','japanese','New Comment (Sent to Staff)  [japanese]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (444,'estimate','estimate-thank-you-to-customer','japanese','Thank You Email (Sent to Customer After Accept) [japanese]','Thank for you accepting estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (445,'tasks','task-deadline-notification','japanese','Task Deadline Reminder - Sent to Assigned Members [japanese]','Task Deadline Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (446,'contract','send-contract','japanese','Send Contract to Customer [japanese]','Contract - {contract_subject}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (447,'invoice','invoice-payment-recorded-to-staff','japanese','Invoice Payment Recorded (Sent to Staff) [japanese]','New Invoice Payment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (448,'ticket','auto-close-ticket','japanese','Auto Close Ticket [japanese]','Ticket Auto Closed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (449,'project','new-project-discussion-created-to-staff','japanese','New Project Discussion (Sent to Project Members) [japanese]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (450,'project','new-project-discussion-created-to-customer','japanese','New Project Discussion (Sent to Customer Contacts) [japanese]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (451,'project','new-project-file-uploaded-to-customer','japanese','New Project File Uploaded (Sent to Customer Contacts) [japanese]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (452,'project','new-project-file-uploaded-to-staff','japanese','New Project File Uploaded (Sent to Project Members) [japanese]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (453,'project','new-project-discussion-comment-to-customer','japanese','New Discussion Comment  (Sent to Customer Contacts) [japanese]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (454,'project','new-project-discussion-comment-to-staff','japanese','New Discussion Comment (Sent to Project Members) [japanese]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (455,'project','staff-added-as-project-member','japanese','Staff Added as Project Member [japanese]','New project assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (456,'estimate','estimate-expiry-reminder','japanese','Estimate Expiration Reminder [japanese]','Estimate Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (457,'proposals','proposal-expiry-reminder','japanese','Proposal Expiration Reminder [japanese]','Proposal Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (458,'staff','new-staff-created','japanese','New Staff Created (Welcome Email) [japanese]','You are added as staff member','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (459,'client','contact-forgot-password','japanese','Forgot Password [japanese]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (460,'client','contact-password-reseted','japanese','Password Reset - Confirmation [japanese]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (461,'client','contact-set-password','japanese','Set New Password [japanese]','Set new password on {companyname} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (462,'staff','staff-forgot-password','japanese','Forgot Password [japanese]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (463,'staff','staff-password-reseted','japanese','Password Reset - Confirmation [japanese]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (464,'project','assigned-to-project','japanese','New Project Created (Sent to Customer Contacts) [japanese]','New Project Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (465,'tasks','task-marked-as-finished-to-contacts','japanese','Task Marked as Finished (Sent to customer contacts) [japanese]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (466,'tasks','task-added-attachment-to-contacts','japanese','New Attachment on Task (Sent to Customer Contacts) [japanese]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (467,'tasks','task-commented-to-contacts','japanese','New Comment on Task (Sent to Customer Contacts) [japanese]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (468,'leads','new-lead-assigned','japanese','New Lead Assigned to Staff Member [japanese]','New lead assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (469,'client','new-client-created','persian','New Contact Added/Registered (Welcome Email) [persian]','Welcome aboard','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (470,'invoice','invoice-send-to-client','persian','Send Invoice to Customer [persian]','Invoice with number {invoice_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (471,'ticket','new-ticket-opened-admin','persian','New Ticket Opened (Opened by Staff, Sent to Customer) [persian]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (472,'ticket','ticket-reply','persian','Ticket Reply (Sent to Customer) [persian]','New Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (473,'ticket','ticket-autoresponse','persian','New Ticket Opened - Autoresponse [persian]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (474,'invoice','invoice-payment-recorded','persian','Invoice Payment Recorded (Sent to Customer) [persian]','Invoice Payment Recorded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (475,'invoice','invoice-overdue-notice','persian','Invoice Overdue Notice [persian]','Invoice Overdue Notice - {invoice_number}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (476,'invoice','invoice-already-send','persian','Invoice Already Sent to Customer [persian]','On your command here is the invoice','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (477,'ticket','new-ticket-created-staff','persian','New Ticket Created (Opened by Customer, Sent to Staff Members) [persian]','New Ticket Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (478,'estimate','estimate-send-to-client','persian','Send Estimate to Customer [persian]','Estimate # {estimate_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (479,'ticket','ticket-reply-to-admin','persian','Ticket Reply (Sent to Staff) [persian]','New Support Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (480,'estimate','estimate-already-send','persian','Estimate Already Sent to Customer [persian]','Estimate # {estimate_number} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (481,'contract','contract-expiration','persian','Contract Expiration [persian]','Contract Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (482,'tasks','task-assigned','persian','New Task Assigned (Sent to Staff) [persian]','New Task Assigned to You - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (483,'tasks','task-added-as-follower','persian','Staff Member Added as Follower on Task [persian]','You are added as follower on task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (484,'tasks','task-commented','persian','New Comment on Task (Sent to Staff) [persian]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (485,'tasks','task-marked-as-finished','persian','Task Marked as Finished (Sent to Staff) [persian]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (486,'tasks','task-added-attachment','persian','New Attachment on Task (Sent to Staff) [persian]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (487,'tasks','task-unmarked-as-finished','persian','Task Unmarked as Finished (Sent to Staff) [persian]','Task UN-marked as finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (488,'estimate','estimate-declined-to-staff','persian','Estimate Declined (Sent to Staff) [persian]','Customer Declined Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (489,'estimate','estimate-accepted-to-staff','persian','Estimate Accepted (Sent to Staff) [persian]','Customer Accepted Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (490,'proposals','proposal-client-accepted','persian','Customer Action - Accepted (Sent to Staff) [persian]','Customer Accepted Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (491,'proposals','proposal-send-to-customer','persian','Send Proposal to Customer [persian]','Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (492,'proposals','proposal-client-declined','persian','Customer Action - Declined (Sent to Staff) [persian]','Client Declined Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (493,'proposals','proposal-client-thank-you','persian','Thank You Email (Sent to Customer After Accept) [persian]','Thank for you accepting proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (494,'proposals','proposal-comment-to-client','persian','New Comment  (Sent to Customer Contacts) [persian]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (495,'proposals','proposal-comment-to-admin','persian','New Comment (Sent to Staff)  [persian]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (496,'estimate','estimate-thank-you-to-customer','persian','Thank You Email (Sent to Customer After Accept) [persian]','Thank for you accepting estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (497,'tasks','task-deadline-notification','persian','Task Deadline Reminder - Sent to Assigned Members [persian]','Task Deadline Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (498,'contract','send-contract','persian','Send Contract to Customer [persian]','Contract - {contract_subject}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (499,'invoice','invoice-payment-recorded-to-staff','persian','Invoice Payment Recorded (Sent to Staff) [persian]','New Invoice Payment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (500,'ticket','auto-close-ticket','persian','Auto Close Ticket [persian]','Ticket Auto Closed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (501,'project','new-project-discussion-created-to-staff','persian','New Project Discussion (Sent to Project Members) [persian]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (502,'project','new-project-discussion-created-to-customer','persian','New Project Discussion (Sent to Customer Contacts) [persian]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (503,'project','new-project-file-uploaded-to-customer','persian','New Project File Uploaded (Sent to Customer Contacts) [persian]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (504,'project','new-project-file-uploaded-to-staff','persian','New Project File Uploaded (Sent to Project Members) [persian]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (505,'project','new-project-discussion-comment-to-customer','persian','New Discussion Comment  (Sent to Customer Contacts) [persian]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (506,'project','new-project-discussion-comment-to-staff','persian','New Discussion Comment (Sent to Project Members) [persian]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (507,'project','staff-added-as-project-member','persian','Staff Added as Project Member [persian]','New project assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (508,'estimate','estimate-expiry-reminder','persian','Estimate Expiration Reminder [persian]','Estimate Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (509,'proposals','proposal-expiry-reminder','persian','Proposal Expiration Reminder [persian]','Proposal Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (510,'staff','new-staff-created','persian','New Staff Created (Welcome Email) [persian]','You are added as staff member','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (511,'client','contact-forgot-password','persian','Forgot Password [persian]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (512,'client','contact-password-reseted','persian','Password Reset - Confirmation [persian]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (513,'client','contact-set-password','persian','Set New Password [persian]','Set new password on {companyname} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (514,'staff','staff-forgot-password','persian','Forgot Password [persian]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (515,'staff','staff-password-reseted','persian','Password Reset - Confirmation [persian]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (516,'project','assigned-to-project','persian','New Project Created (Sent to Customer Contacts) [persian]','New Project Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (517,'tasks','task-marked-as-finished-to-contacts','persian','Task Marked as Finished (Sent to customer contacts) [persian]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (518,'tasks','task-added-attachment-to-contacts','persian','New Attachment on Task (Sent to Customer Contacts) [persian]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (519,'tasks','task-commented-to-contacts','persian','New Comment on Task (Sent to Customer Contacts) [persian]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (520,'leads','new-lead-assigned','persian','New Lead Assigned to Staff Member [persian]','New lead assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (521,'client','new-client-created','polish','New Contact Added/Registered (Welcome Email) [polish]','Welcome aboard','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (522,'invoice','invoice-send-to-client','polish','Send Invoice to Customer [polish]','Invoice with number {invoice_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (523,'ticket','new-ticket-opened-admin','polish','New Ticket Opened (Opened by Staff, Sent to Customer) [polish]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (524,'ticket','ticket-reply','polish','Ticket Reply (Sent to Customer) [polish]','New Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (525,'ticket','ticket-autoresponse','polish','New Ticket Opened - Autoresponse [polish]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (526,'invoice','invoice-payment-recorded','polish','Invoice Payment Recorded (Sent to Customer) [polish]','Invoice Payment Recorded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (527,'invoice','invoice-overdue-notice','polish','Invoice Overdue Notice [polish]','Invoice Overdue Notice - {invoice_number}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (528,'invoice','invoice-already-send','polish','Invoice Already Sent to Customer [polish]','On your command here is the invoice','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (529,'ticket','new-ticket-created-staff','polish','New Ticket Created (Opened by Customer, Sent to Staff Members) [polish]','New Ticket Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (530,'estimate','estimate-send-to-client','polish','Send Estimate to Customer [polish]','Estimate # {estimate_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (531,'ticket','ticket-reply-to-admin','polish','Ticket Reply (Sent to Staff) [polish]','New Support Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (532,'estimate','estimate-already-send','polish','Estimate Already Sent to Customer [polish]','Estimate # {estimate_number} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (533,'contract','contract-expiration','polish','Contract Expiration [polish]','Contract Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (534,'tasks','task-assigned','polish','New Task Assigned (Sent to Staff) [polish]','New Task Assigned to You - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (535,'tasks','task-added-as-follower','polish','Staff Member Added as Follower on Task [polish]','You are added as follower on task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (536,'tasks','task-commented','polish','New Comment on Task (Sent to Staff) [polish]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (537,'tasks','task-marked-as-finished','polish','Task Marked as Finished (Sent to Staff) [polish]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (538,'tasks','task-added-attachment','polish','New Attachment on Task (Sent to Staff) [polish]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (539,'tasks','task-unmarked-as-finished','polish','Task Unmarked as Finished (Sent to Staff) [polish]','Task UN-marked as finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (540,'estimate','estimate-declined-to-staff','polish','Estimate Declined (Sent to Staff) [polish]','Customer Declined Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (541,'estimate','estimate-accepted-to-staff','polish','Estimate Accepted (Sent to Staff) [polish]','Customer Accepted Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (542,'proposals','proposal-client-accepted','polish','Customer Action - Accepted (Sent to Staff) [polish]','Customer Accepted Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (543,'proposals','proposal-send-to-customer','polish','Send Proposal to Customer [polish]','Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (544,'proposals','proposal-client-declined','polish','Customer Action - Declined (Sent to Staff) [polish]','Client Declined Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (545,'proposals','proposal-client-thank-you','polish','Thank You Email (Sent to Customer After Accept) [polish]','Thank for you accepting proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (546,'proposals','proposal-comment-to-client','polish','New Comment  (Sent to Customer Contacts) [polish]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (547,'proposals','proposal-comment-to-admin','polish','New Comment (Sent to Staff)  [polish]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (548,'estimate','estimate-thank-you-to-customer','polish','Thank You Email (Sent to Customer After Accept) [polish]','Thank for you accepting estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (549,'tasks','task-deadline-notification','polish','Task Deadline Reminder - Sent to Assigned Members [polish]','Task Deadline Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (550,'contract','send-contract','polish','Send Contract to Customer [polish]','Contract - {contract_subject}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (551,'invoice','invoice-payment-recorded-to-staff','polish','Invoice Payment Recorded (Sent to Staff) [polish]','New Invoice Payment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (552,'ticket','auto-close-ticket','polish','Auto Close Ticket [polish]','Ticket Auto Closed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (553,'project','new-project-discussion-created-to-staff','polish','New Project Discussion (Sent to Project Members) [polish]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (554,'project','new-project-discussion-created-to-customer','polish','New Project Discussion (Sent to Customer Contacts) [polish]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (555,'project','new-project-file-uploaded-to-customer','polish','New Project File Uploaded (Sent to Customer Contacts) [polish]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (556,'project','new-project-file-uploaded-to-staff','polish','New Project File Uploaded (Sent to Project Members) [polish]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (557,'project','new-project-discussion-comment-to-customer','polish','New Discussion Comment  (Sent to Customer Contacts) [polish]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (558,'project','new-project-discussion-comment-to-staff','polish','New Discussion Comment (Sent to Project Members) [polish]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (559,'project','staff-added-as-project-member','polish','Staff Added as Project Member [polish]','New project assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (560,'estimate','estimate-expiry-reminder','polish','Estimate Expiration Reminder [polish]','Estimate Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (561,'proposals','proposal-expiry-reminder','polish','Proposal Expiration Reminder [polish]','Proposal Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (562,'staff','new-staff-created','polish','New Staff Created (Welcome Email) [polish]','You are added as staff member','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (563,'client','contact-forgot-password','polish','Forgot Password [polish]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (564,'client','contact-password-reseted','polish','Password Reset - Confirmation [polish]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (565,'client','contact-set-password','polish','Set New Password [polish]','Set new password on {companyname} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (566,'staff','staff-forgot-password','polish','Forgot Password [polish]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (567,'staff','staff-password-reseted','polish','Password Reset - Confirmation [polish]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (568,'project','assigned-to-project','polish','New Project Created (Sent to Customer Contacts) [polish]','New Project Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (569,'tasks','task-marked-as-finished-to-contacts','polish','Task Marked as Finished (Sent to customer contacts) [polish]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (570,'tasks','task-added-attachment-to-contacts','polish','New Attachment on Task (Sent to Customer Contacts) [polish]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (571,'tasks','task-commented-to-contacts','polish','New Comment on Task (Sent to Customer Contacts) [polish]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (572,'leads','new-lead-assigned','polish','New Lead Assigned to Staff Member [polish]','New lead assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (573,'client','new-client-created','portuguese','New Contact Added/Registered (Welcome Email) [portuguese]','Welcome aboard','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (574,'invoice','invoice-send-to-client','portuguese','Send Invoice to Customer [portuguese]','Invoice with number {invoice_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (575,'ticket','new-ticket-opened-admin','portuguese','New Ticket Opened (Opened by Staff, Sent to Customer) [portuguese]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (576,'ticket','ticket-reply','portuguese','Ticket Reply (Sent to Customer) [portuguese]','New Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (577,'ticket','ticket-autoresponse','portuguese','New Ticket Opened - Autoresponse [portuguese]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (578,'invoice','invoice-payment-recorded','portuguese','Invoice Payment Recorded (Sent to Customer) [portuguese]','Invoice Payment Recorded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (579,'invoice','invoice-overdue-notice','portuguese','Invoice Overdue Notice [portuguese]','Invoice Overdue Notice - {invoice_number}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (580,'invoice','invoice-already-send','portuguese','Invoice Already Sent to Customer [portuguese]','On your command here is the invoice','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (581,'ticket','new-ticket-created-staff','portuguese','New Ticket Created (Opened by Customer, Sent to Staff Members) [portuguese]','New Ticket Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (582,'estimate','estimate-send-to-client','portuguese','Send Estimate to Customer [portuguese]','Estimate # {estimate_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (583,'ticket','ticket-reply-to-admin','portuguese','Ticket Reply (Sent to Staff) [portuguese]','New Support Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (584,'estimate','estimate-already-send','portuguese','Estimate Already Sent to Customer [portuguese]','Estimate # {estimate_number} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (585,'contract','contract-expiration','portuguese','Contract Expiration [portuguese]','Contract Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (586,'tasks','task-assigned','portuguese','New Task Assigned (Sent to Staff) [portuguese]','New Task Assigned to You - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (587,'tasks','task-added-as-follower','portuguese','Staff Member Added as Follower on Task [portuguese]','You are added as follower on task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (588,'tasks','task-commented','portuguese','New Comment on Task (Sent to Staff) [portuguese]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (589,'tasks','task-marked-as-finished','portuguese','Task Marked as Finished (Sent to Staff) [portuguese]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (590,'tasks','task-added-attachment','portuguese','New Attachment on Task (Sent to Staff) [portuguese]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (591,'tasks','task-unmarked-as-finished','portuguese','Task Unmarked as Finished (Sent to Staff) [portuguese]','Task UN-marked as finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (592,'estimate','estimate-declined-to-staff','portuguese','Estimate Declined (Sent to Staff) [portuguese]','Customer Declined Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (593,'estimate','estimate-accepted-to-staff','portuguese','Estimate Accepted (Sent to Staff) [portuguese]','Customer Accepted Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (594,'proposals','proposal-client-accepted','portuguese','Customer Action - Accepted (Sent to Staff) [portuguese]','Customer Accepted Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (595,'proposals','proposal-send-to-customer','portuguese','Send Proposal to Customer [portuguese]','Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (596,'proposals','proposal-client-declined','portuguese','Customer Action - Declined (Sent to Staff) [portuguese]','Client Declined Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (597,'proposals','proposal-client-thank-you','portuguese','Thank You Email (Sent to Customer After Accept) [portuguese]','Thank for you accepting proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (598,'proposals','proposal-comment-to-client','portuguese','New Comment  (Sent to Customer Contacts) [portuguese]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (599,'proposals','proposal-comment-to-admin','portuguese','New Comment (Sent to Staff)  [portuguese]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (600,'estimate','estimate-thank-you-to-customer','portuguese','Thank You Email (Sent to Customer After Accept) [portuguese]','Thank for you accepting estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (601,'tasks','task-deadline-notification','portuguese','Task Deadline Reminder - Sent to Assigned Members [portuguese]','Task Deadline Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (602,'contract','send-contract','portuguese','Send Contract to Customer [portuguese]','Contract - {contract_subject}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (603,'invoice','invoice-payment-recorded-to-staff','portuguese','Invoice Payment Recorded (Sent to Staff) [portuguese]','New Invoice Payment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (604,'ticket','auto-close-ticket','portuguese','Auto Close Ticket [portuguese]','Ticket Auto Closed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (605,'project','new-project-discussion-created-to-staff','portuguese','New Project Discussion (Sent to Project Members) [portuguese]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (606,'project','new-project-discussion-created-to-customer','portuguese','New Project Discussion (Sent to Customer Contacts) [portuguese]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (607,'project','new-project-file-uploaded-to-customer','portuguese','New Project File Uploaded (Sent to Customer Contacts) [portuguese]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (608,'project','new-project-file-uploaded-to-staff','portuguese','New Project File Uploaded (Sent to Project Members) [portuguese]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (609,'project','new-project-discussion-comment-to-customer','portuguese','New Discussion Comment  (Sent to Customer Contacts) [portuguese]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (610,'project','new-project-discussion-comment-to-staff','portuguese','New Discussion Comment (Sent to Project Members) [portuguese]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (611,'project','staff-added-as-project-member','portuguese','Staff Added as Project Member [portuguese]','New project assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (612,'estimate','estimate-expiry-reminder','portuguese','Estimate Expiration Reminder [portuguese]','Estimate Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (613,'proposals','proposal-expiry-reminder','portuguese','Proposal Expiration Reminder [portuguese]','Proposal Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (614,'staff','new-staff-created','portuguese','New Staff Created (Welcome Email) [portuguese]','You are added as staff member','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (615,'client','contact-forgot-password','portuguese','Forgot Password [portuguese]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (616,'client','contact-password-reseted','portuguese','Password Reset - Confirmation [portuguese]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (617,'client','contact-set-password','portuguese','Set New Password [portuguese]','Set new password on {companyname} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (618,'staff','staff-forgot-password','portuguese','Forgot Password [portuguese]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (619,'staff','staff-password-reseted','portuguese','Password Reset - Confirmation [portuguese]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (620,'project','assigned-to-project','portuguese','New Project Created (Sent to Customer Contacts) [portuguese]','New Project Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (621,'tasks','task-marked-as-finished-to-contacts','portuguese','Task Marked as Finished (Sent to customer contacts) [portuguese]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (622,'tasks','task-added-attachment-to-contacts','portuguese','New Attachment on Task (Sent to Customer Contacts) [portuguese]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (623,'tasks','task-commented-to-contacts','portuguese','New Comment on Task (Sent to Customer Contacts) [portuguese]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (624,'leads','new-lead-assigned','portuguese','New Lead Assigned to Staff Member [portuguese]','New lead assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (625,'client','new-client-created','portuguese_br','New Contact Added/Registered (Welcome Email) [portuguese_br]','Welcome aboard','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (626,'invoice','invoice-send-to-client','portuguese_br','Send Invoice to Customer [portuguese_br]','Invoice with number {invoice_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (627,'ticket','new-ticket-opened-admin','portuguese_br','New Ticket Opened (Opened by Staff, Sent to Customer) [portuguese_br]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (628,'ticket','ticket-reply','portuguese_br','Ticket Reply (Sent to Customer) [portuguese_br]','New Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (629,'ticket','ticket-autoresponse','portuguese_br','New Ticket Opened - Autoresponse [portuguese_br]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (630,'invoice','invoice-payment-recorded','portuguese_br','Invoice Payment Recorded (Sent to Customer) [portuguese_br]','Invoice Payment Recorded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (631,'invoice','invoice-overdue-notice','portuguese_br','Invoice Overdue Notice [portuguese_br]','Invoice Overdue Notice - {invoice_number}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (632,'invoice','invoice-already-send','portuguese_br','Invoice Already Sent to Customer [portuguese_br]','On your command here is the invoice','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (633,'ticket','new-ticket-created-staff','portuguese_br','New Ticket Created (Opened by Customer, Sent to Staff Members) [portuguese_br]','New Ticket Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (634,'estimate','estimate-send-to-client','portuguese_br','Send Estimate to Customer [portuguese_br]','Estimate # {estimate_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (635,'ticket','ticket-reply-to-admin','portuguese_br','Ticket Reply (Sent to Staff) [portuguese_br]','New Support Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (636,'estimate','estimate-already-send','portuguese_br','Estimate Already Sent to Customer [portuguese_br]','Estimate # {estimate_number} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (637,'contract','contract-expiration','portuguese_br','Contract Expiration [portuguese_br]','Contract Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (638,'tasks','task-assigned','portuguese_br','New Task Assigned (Sent to Staff) [portuguese_br]','New Task Assigned to You - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (639,'tasks','task-added-as-follower','portuguese_br','Staff Member Added as Follower on Task [portuguese_br]','You are added as follower on task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (640,'tasks','task-commented','portuguese_br','New Comment on Task (Sent to Staff) [portuguese_br]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (641,'tasks','task-marked-as-finished','portuguese_br','Task Marked as Finished (Sent to Staff) [portuguese_br]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (642,'tasks','task-added-attachment','portuguese_br','New Attachment on Task (Sent to Staff) [portuguese_br]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (643,'tasks','task-unmarked-as-finished','portuguese_br','Task Unmarked as Finished (Sent to Staff) [portuguese_br]','Task UN-marked as finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (644,'estimate','estimate-declined-to-staff','portuguese_br','Estimate Declined (Sent to Staff) [portuguese_br]','Customer Declined Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (645,'estimate','estimate-accepted-to-staff','portuguese_br','Estimate Accepted (Sent to Staff) [portuguese_br]','Customer Accepted Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (646,'proposals','proposal-client-accepted','portuguese_br','Customer Action - Accepted (Sent to Staff) [portuguese_br]','Customer Accepted Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (647,'proposals','proposal-send-to-customer','portuguese_br','Send Proposal to Customer [portuguese_br]','Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (648,'proposals','proposal-client-declined','portuguese_br','Customer Action - Declined (Sent to Staff) [portuguese_br]','Client Declined Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (649,'proposals','proposal-client-thank-you','portuguese_br','Thank You Email (Sent to Customer After Accept) [portuguese_br]','Thank for you accepting proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (650,'proposals','proposal-comment-to-client','portuguese_br','New Comment  (Sent to Customer Contacts) [portuguese_br]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (651,'proposals','proposal-comment-to-admin','portuguese_br','New Comment (Sent to Staff)  [portuguese_br]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (652,'estimate','estimate-thank-you-to-customer','portuguese_br','Thank You Email (Sent to Customer After Accept) [portuguese_br]','Thank for you accepting estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (653,'tasks','task-deadline-notification','portuguese_br','Task Deadline Reminder - Sent to Assigned Members [portuguese_br]','Task Deadline Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (654,'contract','send-contract','portuguese_br','Send Contract to Customer [portuguese_br]','Contract - {contract_subject}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (655,'invoice','invoice-payment-recorded-to-staff','portuguese_br','Invoice Payment Recorded (Sent to Staff) [portuguese_br]','New Invoice Payment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (656,'ticket','auto-close-ticket','portuguese_br','Auto Close Ticket [portuguese_br]','Ticket Auto Closed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (657,'project','new-project-discussion-created-to-staff','portuguese_br','New Project Discussion (Sent to Project Members) [portuguese_br]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (658,'project','new-project-discussion-created-to-customer','portuguese_br','New Project Discussion (Sent to Customer Contacts) [portuguese_br]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (659,'project','new-project-file-uploaded-to-customer','portuguese_br','New Project File Uploaded (Sent to Customer Contacts) [portuguese_br]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (660,'project','new-project-file-uploaded-to-staff','portuguese_br','New Project File Uploaded (Sent to Project Members) [portuguese_br]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (661,'project','new-project-discussion-comment-to-customer','portuguese_br','New Discussion Comment  (Sent to Customer Contacts) [portuguese_br]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (662,'project','new-project-discussion-comment-to-staff','portuguese_br','New Discussion Comment (Sent to Project Members) [portuguese_br]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (663,'project','staff-added-as-project-member','portuguese_br','Staff Added as Project Member [portuguese_br]','New project assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (664,'estimate','estimate-expiry-reminder','portuguese_br','Estimate Expiration Reminder [portuguese_br]','Estimate Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (665,'proposals','proposal-expiry-reminder','portuguese_br','Proposal Expiration Reminder [portuguese_br]','Proposal Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (666,'staff','new-staff-created','portuguese_br','New Staff Created (Welcome Email) [portuguese_br]','You are added as staff member','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (667,'client','contact-forgot-password','portuguese_br','Forgot Password [portuguese_br]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (668,'client','contact-password-reseted','portuguese_br','Password Reset - Confirmation [portuguese_br]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (669,'client','contact-set-password','portuguese_br','Set New Password [portuguese_br]','Set new password on {companyname} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (670,'staff','staff-forgot-password','portuguese_br','Forgot Password [portuguese_br]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (671,'staff','staff-password-reseted','portuguese_br','Password Reset - Confirmation [portuguese_br]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (672,'project','assigned-to-project','portuguese_br','New Project Created (Sent to Customer Contacts) [portuguese_br]','New Project Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (673,'tasks','task-marked-as-finished-to-contacts','portuguese_br','Task Marked as Finished (Sent to customer contacts) [portuguese_br]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (674,'tasks','task-added-attachment-to-contacts','portuguese_br','New Attachment on Task (Sent to Customer Contacts) [portuguese_br]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (675,'tasks','task-commented-to-contacts','portuguese_br','New Comment on Task (Sent to Customer Contacts) [portuguese_br]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (676,'leads','new-lead-assigned','portuguese_br','New Lead Assigned to Staff Member [portuguese_br]','New lead assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (677,'client','new-client-created','russian','New Contact Added/Registered (Welcome Email) [russian]','Welcome aboard','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (678,'invoice','invoice-send-to-client','russian','Send Invoice to Customer [russian]','Invoice with number {invoice_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (679,'ticket','new-ticket-opened-admin','russian','New Ticket Opened (Opened by Staff, Sent to Customer) [russian]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (680,'ticket','ticket-reply','russian','Ticket Reply (Sent to Customer) [russian]','New Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (681,'ticket','ticket-autoresponse','russian','New Ticket Opened - Autoresponse [russian]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (682,'invoice','invoice-payment-recorded','russian','Invoice Payment Recorded (Sent to Customer) [russian]','Invoice Payment Recorded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (683,'invoice','invoice-overdue-notice','russian','Invoice Overdue Notice [russian]','Invoice Overdue Notice - {invoice_number}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (684,'invoice','invoice-already-send','russian','Invoice Already Sent to Customer [russian]','On your command here is the invoice','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (685,'ticket','new-ticket-created-staff','russian','New Ticket Created (Opened by Customer, Sent to Staff Members) [russian]','New Ticket Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (686,'estimate','estimate-send-to-client','russian','Send Estimate to Customer [russian]','Estimate # {estimate_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (687,'ticket','ticket-reply-to-admin','russian','Ticket Reply (Sent to Staff) [russian]','New Support Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (688,'estimate','estimate-already-send','russian','Estimate Already Sent to Customer [russian]','Estimate # {estimate_number} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (689,'contract','contract-expiration','russian','Contract Expiration [russian]','Contract Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (690,'tasks','task-assigned','russian','New Task Assigned (Sent to Staff) [russian]','New Task Assigned to You - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (691,'tasks','task-added-as-follower','russian','Staff Member Added as Follower on Task [russian]','You are added as follower on task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (692,'tasks','task-commented','russian','New Comment on Task (Sent to Staff) [russian]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (693,'tasks','task-marked-as-finished','russian','Task Marked as Finished (Sent to Staff) [russian]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (694,'tasks','task-added-attachment','russian','New Attachment on Task (Sent to Staff) [russian]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (695,'tasks','task-unmarked-as-finished','russian','Task Unmarked as Finished (Sent to Staff) [russian]','Task UN-marked as finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (696,'estimate','estimate-declined-to-staff','russian','Estimate Declined (Sent to Staff) [russian]','Customer Declined Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (697,'estimate','estimate-accepted-to-staff','russian','Estimate Accepted (Sent to Staff) [russian]','Customer Accepted Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (698,'proposals','proposal-client-accepted','russian','Customer Action - Accepted (Sent to Staff) [russian]','Customer Accepted Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (699,'proposals','proposal-send-to-customer','russian','Send Proposal to Customer [russian]','Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (700,'proposals','proposal-client-declined','russian','Customer Action - Declined (Sent to Staff) [russian]','Client Declined Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (701,'proposals','proposal-client-thank-you','russian','Thank You Email (Sent to Customer After Accept) [russian]','Thank for you accepting proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (702,'proposals','proposal-comment-to-client','russian','New Comment  (Sent to Customer Contacts) [russian]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (703,'proposals','proposal-comment-to-admin','russian','New Comment (Sent to Staff)  [russian]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (704,'estimate','estimate-thank-you-to-customer','russian','Thank You Email (Sent to Customer After Accept) [russian]','Thank for you accepting estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (705,'tasks','task-deadline-notification','russian','Task Deadline Reminder - Sent to Assigned Members [russian]','Task Deadline Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (706,'contract','send-contract','russian','Send Contract to Customer [russian]','Contract - {contract_subject}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (707,'invoice','invoice-payment-recorded-to-staff','russian','Invoice Payment Recorded (Sent to Staff) [russian]','New Invoice Payment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (708,'ticket','auto-close-ticket','russian','Auto Close Ticket [russian]','Ticket Auto Closed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (709,'project','new-project-discussion-created-to-staff','russian','New Project Discussion (Sent to Project Members) [russian]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (710,'project','new-project-discussion-created-to-customer','russian','New Project Discussion (Sent to Customer Contacts) [russian]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (711,'project','new-project-file-uploaded-to-customer','russian','New Project File Uploaded (Sent to Customer Contacts) [russian]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (712,'project','new-project-file-uploaded-to-staff','russian','New Project File Uploaded (Sent to Project Members) [russian]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (713,'project','new-project-discussion-comment-to-customer','russian','New Discussion Comment  (Sent to Customer Contacts) [russian]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (714,'project','new-project-discussion-comment-to-staff','russian','New Discussion Comment (Sent to Project Members) [russian]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (715,'project','staff-added-as-project-member','russian','Staff Added as Project Member [russian]','New project assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (716,'estimate','estimate-expiry-reminder','russian','Estimate Expiration Reminder [russian]','Estimate Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (717,'proposals','proposal-expiry-reminder','russian','Proposal Expiration Reminder [russian]','Proposal Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (718,'staff','new-staff-created','russian','New Staff Created (Welcome Email) [russian]','You are added as staff member','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (719,'client','contact-forgot-password','russian','Forgot Password [russian]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (720,'client','contact-password-reseted','russian','Password Reset - Confirmation [russian]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (721,'client','contact-set-password','russian','Set New Password [russian]','Set new password on {companyname} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (722,'staff','staff-forgot-password','russian','Forgot Password [russian]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (723,'staff','staff-password-reseted','russian','Password Reset - Confirmation [russian]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (724,'project','assigned-to-project','russian','New Project Created (Sent to Customer Contacts) [russian]','New Project Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (725,'tasks','task-marked-as-finished-to-contacts','russian','Task Marked as Finished (Sent to customer contacts) [russian]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (726,'tasks','task-added-attachment-to-contacts','russian','New Attachment on Task (Sent to Customer Contacts) [russian]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (727,'tasks','task-commented-to-contacts','russian','New Comment on Task (Sent to Customer Contacts) [russian]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (728,'leads','new-lead-assigned','russian','New Lead Assigned to Staff Member [russian]','New lead assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (729,'client','new-client-created','spanish','New Contact Added/Registered (Welcome Email) [spanish]','Welcome aboard','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (730,'invoice','invoice-send-to-client','spanish','Send Invoice to Customer [spanish]','Invoice with number {invoice_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (731,'ticket','new-ticket-opened-admin','spanish','New Ticket Opened (Opened by Staff, Sent to Customer) [spanish]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (732,'ticket','ticket-reply','spanish','Ticket Reply (Sent to Customer) [spanish]','New Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (733,'ticket','ticket-autoresponse','spanish','New Ticket Opened - Autoresponse [spanish]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (734,'invoice','invoice-payment-recorded','spanish','Invoice Payment Recorded (Sent to Customer) [spanish]','Invoice Payment Recorded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (735,'invoice','invoice-overdue-notice','spanish','Invoice Overdue Notice [spanish]','Invoice Overdue Notice - {invoice_number}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (736,'invoice','invoice-already-send','spanish','Invoice Already Sent to Customer [spanish]','On your command here is the invoice','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (737,'ticket','new-ticket-created-staff','spanish','New Ticket Created (Opened by Customer, Sent to Staff Members) [spanish]','New Ticket Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (738,'estimate','estimate-send-to-client','spanish','Send Estimate to Customer [spanish]','Estimate # {estimate_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (739,'ticket','ticket-reply-to-admin','spanish','Ticket Reply (Sent to Staff) [spanish]','New Support Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (740,'estimate','estimate-already-send','spanish','Estimate Already Sent to Customer [spanish]','Estimate # {estimate_number} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (741,'contract','contract-expiration','spanish','Contract Expiration [spanish]','Contract Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (742,'tasks','task-assigned','spanish','New Task Assigned (Sent to Staff) [spanish]','New Task Assigned to You - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (743,'tasks','task-added-as-follower','spanish','Staff Member Added as Follower on Task [spanish]','You are added as follower on task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (744,'tasks','task-commented','spanish','New Comment on Task (Sent to Staff) [spanish]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (745,'tasks','task-marked-as-finished','spanish','Task Marked as Finished (Sent to Staff) [spanish]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (746,'tasks','task-added-attachment','spanish','New Attachment on Task (Sent to Staff) [spanish]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (747,'tasks','task-unmarked-as-finished','spanish','Task Unmarked as Finished (Sent to Staff) [spanish]','Task UN-marked as finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (748,'estimate','estimate-declined-to-staff','spanish','Estimate Declined (Sent to Staff) [spanish]','Customer Declined Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (749,'estimate','estimate-accepted-to-staff','spanish','Estimate Accepted (Sent to Staff) [spanish]','Customer Accepted Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (750,'proposals','proposal-client-accepted','spanish','Customer Action - Accepted (Sent to Staff) [spanish]','Customer Accepted Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (751,'proposals','proposal-send-to-customer','spanish','Send Proposal to Customer [spanish]','Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (752,'proposals','proposal-client-declined','spanish','Customer Action - Declined (Sent to Staff) [spanish]','Client Declined Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (753,'proposals','proposal-client-thank-you','spanish','Thank You Email (Sent to Customer After Accept) [spanish]','Thank for you accepting proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (754,'proposals','proposal-comment-to-client','spanish','New Comment  (Sent to Customer Contacts) [spanish]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (755,'proposals','proposal-comment-to-admin','spanish','New Comment (Sent to Staff)  [spanish]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (756,'estimate','estimate-thank-you-to-customer','spanish','Thank You Email (Sent to Customer After Accept) [spanish]','Thank for you accepting estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (757,'tasks','task-deadline-notification','spanish','Task Deadline Reminder - Sent to Assigned Members [spanish]','Task Deadline Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (758,'contract','send-contract','spanish','Send Contract to Customer [spanish]','Contract - {contract_subject}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (759,'invoice','invoice-payment-recorded-to-staff','spanish','Invoice Payment Recorded (Sent to Staff) [spanish]','New Invoice Payment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (760,'ticket','auto-close-ticket','spanish','Auto Close Ticket [spanish]','Ticket Auto Closed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (761,'project','new-project-discussion-created-to-staff','spanish','New Project Discussion (Sent to Project Members) [spanish]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (762,'project','new-project-discussion-created-to-customer','spanish','New Project Discussion (Sent to Customer Contacts) [spanish]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (763,'project','new-project-file-uploaded-to-customer','spanish','New Project File Uploaded (Sent to Customer Contacts) [spanish]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (764,'project','new-project-file-uploaded-to-staff','spanish','New Project File Uploaded (Sent to Project Members) [spanish]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (765,'project','new-project-discussion-comment-to-customer','spanish','New Discussion Comment  (Sent to Customer Contacts) [spanish]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (766,'project','new-project-discussion-comment-to-staff','spanish','New Discussion Comment (Sent to Project Members) [spanish]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (767,'project','staff-added-as-project-member','spanish','Staff Added as Project Member [spanish]','New project assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (768,'estimate','estimate-expiry-reminder','spanish','Estimate Expiration Reminder [spanish]','Estimate Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (769,'proposals','proposal-expiry-reminder','spanish','Proposal Expiration Reminder [spanish]','Proposal Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (770,'staff','new-staff-created','spanish','New Staff Created (Welcome Email) [spanish]','You are added as staff member','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (771,'client','contact-forgot-password','spanish','Forgot Password [spanish]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (772,'client','contact-password-reseted','spanish','Password Reset - Confirmation [spanish]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (773,'client','contact-set-password','spanish','Set New Password [spanish]','Set new password on {companyname} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (774,'staff','staff-forgot-password','spanish','Forgot Password [spanish]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (775,'staff','staff-password-reseted','spanish','Password Reset - Confirmation [spanish]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (776,'project','assigned-to-project','spanish','New Project Created (Sent to Customer Contacts) [spanish]','New Project Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (777,'tasks','task-marked-as-finished-to-contacts','spanish','Task Marked as Finished (Sent to customer contacts) [spanish]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (778,'tasks','task-added-attachment-to-contacts','spanish','New Attachment on Task (Sent to Customer Contacts) [spanish]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (779,'tasks','task-commented-to-contacts','spanish','New Comment on Task (Sent to Customer Contacts) [spanish]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (780,'leads','new-lead-assigned','spanish','New Lead Assigned to Staff Member [spanish]','New lead assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (781,'client','new-client-created','swedish','New Contact Added/Registered (Welcome Email) [swedish]','Welcome aboard','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (782,'invoice','invoice-send-to-client','swedish','Send Invoice to Customer [swedish]','Invoice with number {invoice_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (783,'ticket','new-ticket-opened-admin','swedish','New Ticket Opened (Opened by Staff, Sent to Customer) [swedish]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (784,'ticket','ticket-reply','swedish','Ticket Reply (Sent to Customer) [swedish]','New Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (785,'ticket','ticket-autoresponse','swedish','New Ticket Opened - Autoresponse [swedish]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (786,'invoice','invoice-payment-recorded','swedish','Invoice Payment Recorded (Sent to Customer) [swedish]','Invoice Payment Recorded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (787,'invoice','invoice-overdue-notice','swedish','Invoice Overdue Notice [swedish]','Invoice Overdue Notice - {invoice_number}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (788,'invoice','invoice-already-send','swedish','Invoice Already Sent to Customer [swedish]','On your command here is the invoice','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (789,'ticket','new-ticket-created-staff','swedish','New Ticket Created (Opened by Customer, Sent to Staff Members) [swedish]','New Ticket Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (790,'estimate','estimate-send-to-client','swedish','Send Estimate to Customer [swedish]','Estimate # {estimate_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (791,'ticket','ticket-reply-to-admin','swedish','Ticket Reply (Sent to Staff) [swedish]','New Support Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (792,'estimate','estimate-already-send','swedish','Estimate Already Sent to Customer [swedish]','Estimate # {estimate_number} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (793,'contract','contract-expiration','swedish','Contract Expiration [swedish]','Contract Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (794,'tasks','task-assigned','swedish','New Task Assigned (Sent to Staff) [swedish]','New Task Assigned to You - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (795,'tasks','task-added-as-follower','swedish','Staff Member Added as Follower on Task [swedish]','You are added as follower on task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (796,'tasks','task-commented','swedish','New Comment on Task (Sent to Staff) [swedish]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (797,'tasks','task-marked-as-finished','swedish','Task Marked as Finished (Sent to Staff) [swedish]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (798,'tasks','task-added-attachment','swedish','New Attachment on Task (Sent to Staff) [swedish]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (799,'tasks','task-unmarked-as-finished','swedish','Task Unmarked as Finished (Sent to Staff) [swedish]','Task UN-marked as finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (800,'estimate','estimate-declined-to-staff','swedish','Estimate Declined (Sent to Staff) [swedish]','Customer Declined Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (801,'estimate','estimate-accepted-to-staff','swedish','Estimate Accepted (Sent to Staff) [swedish]','Customer Accepted Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (802,'proposals','proposal-client-accepted','swedish','Customer Action - Accepted (Sent to Staff) [swedish]','Customer Accepted Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (803,'proposals','proposal-send-to-customer','swedish','Send Proposal to Customer [swedish]','Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (804,'proposals','proposal-client-declined','swedish','Customer Action - Declined (Sent to Staff) [swedish]','Client Declined Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (805,'proposals','proposal-client-thank-you','swedish','Thank You Email (Sent to Customer After Accept) [swedish]','Thank for you accepting proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (806,'proposals','proposal-comment-to-client','swedish','New Comment  (Sent to Customer Contacts) [swedish]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (807,'proposals','proposal-comment-to-admin','swedish','New Comment (Sent to Staff)  [swedish]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (808,'estimate','estimate-thank-you-to-customer','swedish','Thank You Email (Sent to Customer After Accept) [swedish]','Thank for you accepting estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (809,'tasks','task-deadline-notification','swedish','Task Deadline Reminder - Sent to Assigned Members [swedish]','Task Deadline Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (810,'contract','send-contract','swedish','Send Contract to Customer [swedish]','Contract - {contract_subject}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (811,'invoice','invoice-payment-recorded-to-staff','swedish','Invoice Payment Recorded (Sent to Staff) [swedish]','New Invoice Payment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (812,'ticket','auto-close-ticket','swedish','Auto Close Ticket [swedish]','Ticket Auto Closed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (813,'project','new-project-discussion-created-to-staff','swedish','New Project Discussion (Sent to Project Members) [swedish]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (814,'project','new-project-discussion-created-to-customer','swedish','New Project Discussion (Sent to Customer Contacts) [swedish]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (815,'project','new-project-file-uploaded-to-customer','swedish','New Project File Uploaded (Sent to Customer Contacts) [swedish]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (816,'project','new-project-file-uploaded-to-staff','swedish','New Project File Uploaded (Sent to Project Members) [swedish]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (817,'project','new-project-discussion-comment-to-customer','swedish','New Discussion Comment  (Sent to Customer Contacts) [swedish]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (818,'project','new-project-discussion-comment-to-staff','swedish','New Discussion Comment (Sent to Project Members) [swedish]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (819,'project','staff-added-as-project-member','swedish','Staff Added as Project Member [swedish]','New project assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (820,'estimate','estimate-expiry-reminder','swedish','Estimate Expiration Reminder [swedish]','Estimate Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (821,'proposals','proposal-expiry-reminder','swedish','Proposal Expiration Reminder [swedish]','Proposal Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (822,'staff','new-staff-created','swedish','New Staff Created (Welcome Email) [swedish]','You are added as staff member','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (823,'client','contact-forgot-password','swedish','Forgot Password [swedish]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (824,'client','contact-password-reseted','swedish','Password Reset - Confirmation [swedish]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (825,'client','contact-set-password','swedish','Set New Password [swedish]','Set new password on {companyname} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (826,'staff','staff-forgot-password','swedish','Forgot Password [swedish]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (827,'staff','staff-password-reseted','swedish','Password Reset - Confirmation [swedish]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (828,'project','assigned-to-project','swedish','New Project Created (Sent to Customer Contacts) [swedish]','New Project Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (829,'tasks','task-marked-as-finished-to-contacts','swedish','Task Marked as Finished (Sent to customer contacts) [swedish]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (830,'tasks','task-added-attachment-to-contacts','swedish','New Attachment on Task (Sent to Customer Contacts) [swedish]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (831,'tasks','task-commented-to-contacts','swedish','New Comment on Task (Sent to Customer Contacts) [swedish]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (832,'leads','new-lead-assigned','swedish','New Lead Assigned to Staff Member [swedish]','New lead assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (833,'client','new-client-created','turkish','New Contact Added/Registered (Welcome Email) [turkish]','Welcome aboard','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (834,'invoice','invoice-send-to-client','turkish','Send Invoice to Customer [turkish]','Invoice with number {invoice_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (835,'ticket','new-ticket-opened-admin','turkish','New Ticket Opened (Opened by Staff, Sent to Customer) [turkish]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (836,'ticket','ticket-reply','turkish','Ticket Reply (Sent to Customer) [turkish]','New Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (837,'ticket','ticket-autoresponse','turkish','New Ticket Opened - Autoresponse [turkish]','New Support Ticket Opened','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (838,'invoice','invoice-payment-recorded','turkish','Invoice Payment Recorded (Sent to Customer) [turkish]','Invoice Payment Recorded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (839,'invoice','invoice-overdue-notice','turkish','Invoice Overdue Notice [turkish]','Invoice Overdue Notice - {invoice_number}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (840,'invoice','invoice-already-send','turkish','Invoice Already Sent to Customer [turkish]','On your command here is the invoice','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (841,'ticket','new-ticket-created-staff','turkish','New Ticket Created (Opened by Customer, Sent to Staff Members) [turkish]','New Ticket Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (842,'estimate','estimate-send-to-client','turkish','Send Estimate to Customer [turkish]','Estimate # {estimate_number} created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (843,'ticket','ticket-reply-to-admin','turkish','Ticket Reply (Sent to Staff) [turkish]','New Support Ticket Reply','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (844,'estimate','estimate-already-send','turkish','Estimate Already Sent to Customer [turkish]','Estimate # {estimate_number} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (845,'contract','contract-expiration','turkish','Contract Expiration [turkish]','Contract Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (846,'tasks','task-assigned','turkish','New Task Assigned (Sent to Staff) [turkish]','New Task Assigned to You - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (847,'tasks','task-added-as-follower','turkish','Staff Member Added as Follower on Task [turkish]','You are added as follower on task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (848,'tasks','task-commented','turkish','New Comment on Task (Sent to Staff) [turkish]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (849,'tasks','task-marked-as-finished','turkish','Task Marked as Finished (Sent to Staff) [turkish]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (850,'tasks','task-added-attachment','turkish','New Attachment on Task (Sent to Staff) [turkish]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (851,'tasks','task-unmarked-as-finished','turkish','Task Unmarked as Finished (Sent to Staff) [turkish]','Task UN-marked as finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (852,'estimate','estimate-declined-to-staff','turkish','Estimate Declined (Sent to Staff) [turkish]','Customer Declined Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (853,'estimate','estimate-accepted-to-staff','turkish','Estimate Accepted (Sent to Staff) [turkish]','Customer Accepted Estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (854,'proposals','proposal-client-accepted','turkish','Customer Action - Accepted (Sent to Staff) [turkish]','Customer Accepted Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (855,'proposals','proposal-send-to-customer','turkish','Send Proposal to Customer [turkish]','Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (856,'proposals','proposal-client-declined','turkish','Customer Action - Declined (Sent to Staff) [turkish]','Client Declined Proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (857,'proposals','proposal-client-thank-you','turkish','Thank You Email (Sent to Customer After Accept) [turkish]','Thank for you accepting proposal','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (858,'proposals','proposal-comment-to-client','turkish','New Comment  (Sent to Customer Contacts) [turkish]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (859,'proposals','proposal-comment-to-admin','turkish','New Comment (Sent to Staff)  [turkish]','New Proposal Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (860,'estimate','estimate-thank-you-to-customer','turkish','Thank You Email (Sent to Customer After Accept) [turkish]','Thank for you accepting estimate','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (861,'tasks','task-deadline-notification','turkish','Task Deadline Reminder - Sent to Assigned Members [turkish]','Task Deadline Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (862,'contract','send-contract','turkish','Send Contract to Customer [turkish]','Contract - {contract_subject}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (863,'invoice','invoice-payment-recorded-to-staff','turkish','Invoice Payment Recorded (Sent to Staff) [turkish]','New Invoice Payment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (864,'ticket','auto-close-ticket','turkish','Auto Close Ticket [turkish]','Ticket Auto Closed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (865,'project','new-project-discussion-created-to-staff','turkish','New Project Discussion (Sent to Project Members) [turkish]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (866,'project','new-project-discussion-created-to-customer','turkish','New Project Discussion (Sent to Customer Contacts) [turkish]','New Project Discussion Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (867,'project','new-project-file-uploaded-to-customer','turkish','New Project File Uploaded (Sent to Customer Contacts) [turkish]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (868,'project','new-project-file-uploaded-to-staff','turkish','New Project File Uploaded (Sent to Project Members) [turkish]','New Project File Uploaded','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (869,'project','new-project-discussion-comment-to-customer','turkish','New Discussion Comment  (Sent to Customer Contacts) [turkish]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (870,'project','new-project-discussion-comment-to-staff','turkish','New Discussion Comment (Sent to Project Members) [turkish]','New Discussion Comment','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (871,'project','staff-added-as-project-member','turkish','Staff Added as Project Member [turkish]','New project assigned to you','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (872,'estimate','estimate-expiry-reminder','turkish','Estimate Expiration Reminder [turkish]','Estimate Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (873,'proposals','proposal-expiry-reminder','turkish','Proposal Expiration Reminder [turkish]','Proposal Expiration Reminder','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (874,'staff','new-staff-created','turkish','New Staff Created (Welcome Email) [turkish]','You are added as staff member','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (875,'client','contact-forgot-password','turkish','Forgot Password [turkish]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (876,'client','contact-password-reseted','turkish','Password Reset - Confirmation [turkish]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (877,'client','contact-set-password','turkish','Set New Password [turkish]','Set new password on {companyname} ','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (878,'staff','staff-forgot-password','turkish','Forgot Password [turkish]','Create New Password','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (879,'staff','staff-password-reseted','turkish','Password Reset - Confirmation [turkish]','Your password has been changed','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (880,'project','assigned-to-project','turkish','New Project Created (Sent to Customer Contacts) [turkish]','New Project Created','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (881,'tasks','task-marked-as-finished-to-contacts','turkish','Task Marked as Finished (Sent to customer contacts) [turkish]','Task Marked as Finished - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (882,'tasks','task-added-attachment-to-contacts','turkish','New Attachment on Task (Sent to Customer Contacts) [turkish]','New Attachment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (883,'tasks','task-commented-to-contacts','turkish','New Comment on Task (Sent to Customer Contacts) [turkish]','New Comment on Task - {task_name}','','{companyname} | CRM',NULL,0,1,0);
INSERT INTO `tblemailtemplates` VALUES (884,'leads','new-lead-assigned','turkish','New Lead Assigned to Staff Member [turkish]','New lead assigned to you','','{companyname} | CRM',NULL,0,1,0);

--
-- Table structure for table `tblestimates`
--

DROP TABLE IF EXISTS `tblestimates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblestimates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `total_tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `total` decimal(11,2) NOT NULL,
  `adjustment` decimal(11,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `discount_percent` decimal(11,2) DEFAULT '0.00',
  `discount_total` decimal(11,2) DEFAULT '0.00',
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` text,
  `reference_no` varchar(100) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  KEY `currency` (`currency`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblestimates`
--


--
-- Table structure for table `tblevents`
--

DROP TABLE IF EXISTS `tblevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblevents` (
  `eventid` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext NOT NULL,
  `description` text,
  `userid` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT '0',
  `color` varchar(10) DEFAULT NULL,
  `isstartnotified` tinyint(1) NOT NULL DEFAULT '0',
  `reminder_before` int(11) NOT NULL DEFAULT '0',
  `reminder_before_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`eventid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblevents`
--


--
-- Table structure for table `tblexpenses`
--

DROP TABLE IF EXISTS `tblexpenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblexpenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `currency` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) NOT NULL DEFAULT '0',
  `reference_no` varchar(100) DEFAULT NULL,
  `note` text,
  `expense_name` varchar(500) DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `billable` int(11) DEFAULT '0',
  `invoiceid` int(11) DEFAULT NULL,
  `paymentmode` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_ends_on` date DEFAULT NULL,
  `custom_recurring` int(11) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `create_invoice_billable` tinyint(1) DEFAULT NULL,
  `send_invoice_to_customer` tinyint(1) NOT NULL,
  `recurring_from` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  KEY `project_id` (`project_id`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblexpenses`
--


--
-- Table structure for table `tblexpensescategories`
--

DROP TABLE IF EXISTS `tblexpensescategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblexpensescategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblexpensescategories`
--


--
-- Table structure for table `tblfiles`
--

DROP TABLE IF EXISTS `tblfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `file_name` varchar(600) NOT NULL,
  `filetype` varchar(40) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `attachment_key` varchar(32) DEFAULT NULL,
  `external` varchar(40) DEFAULT NULL,
  `external_link` text,
  `thumbnail_link` text COMMENT 'For external usage',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfiles`
--


--
-- Table structure for table `tblformquestionboxes`
--

DROP TABLE IF EXISTS `tblformquestionboxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblformquestionboxes` (
  `boxid` int(11) NOT NULL AUTO_INCREMENT,
  `boxtype` varchar(10) NOT NULL,
  `questionid` int(11) NOT NULL,
  PRIMARY KEY (`boxid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblformquestionboxes`
--


--
-- Table structure for table `tblformquestionboxesdescription`
--

DROP TABLE IF EXISTS `tblformquestionboxesdescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblformquestionboxesdescription` (
  `questionboxdescriptionid` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `boxid` mediumtext NOT NULL,
  `questionid` int(11) NOT NULL,
  PRIMARY KEY (`questionboxdescriptionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblformquestionboxesdescription`
--


--
-- Table structure for table `tblformquestions`
--

DROP TABLE IF EXISTS `tblformquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblformquestions` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `question` mediumtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `question_order` int(11) NOT NULL,
  PRIMARY KEY (`questionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblformquestions`
--


--
-- Table structure for table `tblformresults`
--

DROP TABLE IF EXISTS `tblformresults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblformresults` (
  `resultid` int(11) NOT NULL AUTO_INCREMENT,
  `boxid` int(11) NOT NULL,
  `boxdescriptionid` int(11) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `questionid` int(11) NOT NULL,
  `answer` text,
  `resultsetid` int(11) NOT NULL,
  PRIMARY KEY (`resultid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblformresults`
--


--
-- Table structure for table `tblgoals`
--

DROP TABLE IF EXISTS `tblgoals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblgoals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `goal_type` int(11) NOT NULL,
  `contract_type` int(11) NOT NULL DEFAULT '0',
  `achievement` int(11) NOT NULL,
  `notify_when_fail` tinyint(1) NOT NULL DEFAULT '1',
  `notify_when_achieve` tinyint(1) NOT NULL DEFAULT '1',
  `notified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgoals`
--


--
-- Table structure for table `tblinvoicepaymentrecords`
--

DROP TABLE IF EXISTS `tblinvoicepaymentrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinvoicepaymentrecords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoiceid` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `paymentmode` varchar(40) DEFAULT NULL,
  `paymentmethod` varchar(200) DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext,
  PRIMARY KEY (`id`),
  KEY `invoiceid` (`invoiceid`),
  KEY `paymentmethod` (`paymentmethod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblinvoicepaymentrecords`
--


--
-- Table structure for table `tblinvoicepaymentsmodes`
--

DROP TABLE IF EXISTS `tblinvoicepaymentsmodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinvoicepaymentsmodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `invoices_only` int(11) NOT NULL DEFAULT '0',
  `expenses_only` int(11) NOT NULL DEFAULT '0',
  `selected_by_default` int(11) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblinvoicepaymentsmodes`
--

INSERT INTO `tblinvoicepaymentsmodes` VALUES (1,'Bank',NULL,0,0,0,1,1);

--
-- Table structure for table `tblinvoices`
--

DROP TABLE IF EXISTS `tblinvoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinvoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `total_tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `total` decimal(11,2) NOT NULL,
  `adjustment` decimal(11,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `status` int(11) DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `last_overdue_reminder` date DEFAULT NULL,
  `cancel_overdue_reminders` int(11) NOT NULL DEFAULT '0',
  `allowed_payment_modes` mediumtext,
  `token` mediumtext,
  `discount_percent` decimal(11,2) DEFAULT '0.00',
  `discount_total` decimal(11,2) DEFAULT '0.00',
  `discount_type` varchar(30) NOT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `recurring_ends_on` date DEFAULT NULL,
  `is_recurring_from` int(11) DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `terms` text,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_invoice` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `currency` (`currency`),
  KEY `clientid` (`clientid`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblinvoices`
--


--
-- Table structure for table `tblitems`
--

DROP TABLE IF EXISTS `tblitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `long_description` text,
  `rate` decimal(11,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) DEFAULT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tax` (`tax`),
  KEY `tax2` (`tax2`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblitems`
--


--
-- Table structure for table `tblitems_groups`
--

DROP TABLE IF EXISTS `tblitems_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblitems_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblitems_groups`
--


--
-- Table structure for table `tblitems_in`
--

DROP TABLE IF EXISTS `tblitems_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblitems_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `description` mediumtext NOT NULL,
  `long_description` mediumtext,
  `qty` decimal(11,2) NOT NULL,
  `rate` decimal(11,2) NOT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblitems_in`
--


--
-- Table structure for table `tblitemsrelated`
--

DROP TABLE IF EXISTS `tblitemsrelated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblitemsrelated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(30) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblitemsrelated`
--


--
-- Table structure for table `tblitemstax`
--

DROP TABLE IF EXISTS `tblitemstax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblitemstax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `taxrate` decimal(11,2) NOT NULL,
  `taxname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblitemstax`
--


--
-- Table structure for table `tblknowledgebase`
--

DROP TABLE IF EXISTS `tblknowledgebase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblknowledgebase` (
  `articleid` int(11) NOT NULL AUTO_INCREMENT,
  `articlegroup` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `description` text NOT NULL,
  `slug` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `datecreated` datetime NOT NULL,
  `article_order` int(11) NOT NULL DEFAULT '0',
  `staff_article` int(11) NOT NULL DEFAULT '0',
  `views` int(11) DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblknowledgebase`
--


--
-- Table structure for table `tblknowledgebasearticleanswers`
--

DROP TABLE IF EXISTS `tblknowledgebasearticleanswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblknowledgebasearticleanswers` (
  `articleanswerid` int(11) NOT NULL AUTO_INCREMENT,
  `articleid` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`articleanswerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblknowledgebasearticleanswers`
--


--
-- Table structure for table `tblknowledgebasegroups`
--

DROP TABLE IF EXISTS `tblknowledgebasegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblknowledgebasegroups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `description` mediumtext,
  `active` tinyint(4) NOT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `group_order` int(11) DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblknowledgebasegroups`
--


--
-- Table structure for table `tblleadactivitylog`
--

DROP TABLE IF EXISTS `tblleadactivitylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblleadactivitylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leadid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `additional_data` varchar(600) DEFAULT NULL,
  `date` datetime NOT NULL,
  `staffid` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblleadactivitylog`
--


--
-- Table structure for table `tblleads`
--

DROP TABLE IF EXISTS `tblleads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblleads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(300) DEFAULT NULL,
  `description` text,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(15) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `assigned` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `from_form_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `lastcontact` datetime DEFAULT NULL,
  `dateassigned` date DEFAULT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `leadorder` int(11) DEFAULT '1',
  `phonenumber` varchar(50) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `lost` tinyint(1) NOT NULL DEFAULT '0',
  `junk` int(11) NOT NULL DEFAULT '0',
  `last_lead_status` int(11) NOT NULL DEFAULT '0',
  `is_imported_from_email_integration` tinyint(1) NOT NULL DEFAULT '0',
  `email_integration_uid` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `default_language` varchar(40) DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `assigned` (`assigned`),
  KEY `source` (`source`),
  KEY `lastcontact` (`lastcontact`),
  KEY `leadorder` (`leadorder`),
  KEY `dateadded` (`dateadded`),
  KEY `from_form_id` (`from_form_id`),
  KEY `from_form_id_2` (`from_form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblleads`
--


--
-- Table structure for table `tblleadsemailintegrationemails`
--

DROP TABLE IF EXISTS `tblleadsemailintegrationemails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblleadsemailintegrationemails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` mediumtext,
  `body` mediumtext,
  `dateadded` datetime NOT NULL,
  `leadid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblleadsemailintegrationemails`
--


--
-- Table structure for table `tblleadsintegration`
--

DROP TABLE IF EXISTS `tblleadsintegration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblleadsintegration` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'the ID always must be 1',
  `active` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `imap_server` varchar(100) NOT NULL,
  `password` mediumtext NOT NULL,
  `check_every` int(11) NOT NULL DEFAULT '5',
  `responsible` int(11) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `last_run` varchar(50) DEFAULT NULL,
  `notify_lead_imported` tinyint(1) NOT NULL DEFAULT '1',
  `notify_lead_contact_more_times` tinyint(1) NOT NULL DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `mark_public` int(11) NOT NULL DEFAULT '0',
  `only_loop_on_unseen_emails` tinyint(1) NOT NULL DEFAULT '1',
  `delete_after_import` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblleadsintegration`
--

INSERT INTO `tblleadsintegration` VALUES (1,0,'','','',10,0,0,0,'tls','inbox','',1,1,'roles','',0,1,0);

--
-- Table structure for table `tblleadssources`
--

DROP TABLE IF EXISTS `tblleadssources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblleadssources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblleadssources`
--

INSERT INTO `tblleadssources` VALUES (1,'Google');
INSERT INTO `tblleadssources` VALUES (2,'Facebook');

--
-- Table structure for table `tblleadsstatus`
--

DROP TABLE IF EXISTS `tblleadsstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblleadsstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `isdefault` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblleadsstatus`
--

INSERT INTO `tblleadsstatus` VALUES (1,'Customer',1000,'#7cb342',1);

--
-- Table structure for table `tbllistemails`
--

DROP TABLE IF EXISTS `tbllistemails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbllistemails` (
  `emailid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbllistemails`
--


--
-- Table structure for table `tblmaillistscustomfields`
--

DROP TABLE IF EXISTS `tblmaillistscustomfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmaillistscustomfields` (
  `customfieldid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `fieldname` varchar(150) NOT NULL,
  `fieldslug` varchar(100) NOT NULL,
  PRIMARY KEY (`customfieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmaillistscustomfields`
--


--
-- Table structure for table `tblmaillistscustomfieldvalues`
--

DROP TABLE IF EXISTS `tblmaillistscustomfieldvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmaillistscustomfieldvalues` (
  `customfieldvalueid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `customfieldid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`customfieldvalueid`),
  KEY `listid` (`listid`),
  KEY `customfieldid` (`customfieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmaillistscustomfieldvalues`
--


--
-- Table structure for table `tblmigrations`
--

DROP TABLE IF EXISTS `tblmigrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmigrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmigrations`
--

INSERT INTO `tblmigrations` VALUES (171);

--
-- Table structure for table `tblmilestones`
--

DROP TABLE IF EXISTS `tblmilestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmilestones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) NOT NULL,
  `description` text,
  `description_visible_to_customer` tinyint(1) DEFAULT '0',
  `due_date` date NOT NULL,
  `project_id` int(11) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `datecreated` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmilestones`
--


--
-- Table structure for table `tblnotes`
--

DROP TABLE IF EXISTS `tblnotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `description` text,
  `date_contacted` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnotes`
--


--
-- Table structure for table `tblnotifications`
--

DROP TABLE IF EXISTS `tblnotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblnotifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isread` int(11) NOT NULL DEFAULT '0',
  `isread_inline` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `description` text NOT NULL,
  `fromuserid` int(11) NOT NULL,
  `fromclientid` int(11) NOT NULL DEFAULT '0',
  `from_fullname` varchar(100) NOT NULL,
  `touserid` int(11) NOT NULL,
  `fromcompany` int(11) DEFAULT NULL,
  `link` mediumtext,
  `additional_data` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnotifications`
--


--
-- Table structure for table `tbloptions`
--

DROP TABLE IF EXISTS `tbloptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=250 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloptions`
--

INSERT INTO `tbloptions` VALUES (1,'dateformat','Y-m-d|%Y-%m-%d');
INSERT INTO `tbloptions` VALUES (2,'companyname','Recordtime');
INSERT INTO `tbloptions` VALUES (3,'services','1');
INSERT INTO `tbloptions` VALUES (4,'maximum_allowed_ticket_attachments','4');
INSERT INTO `tbloptions` VALUES (5,'ticket_attachments_file_extensions','.jpg,.png,.pdf,.doc');
INSERT INTO `tbloptions` VALUES (6,'staff_access_only_assigned_departments','1');
INSERT INTO `tbloptions` VALUES (7,'use_knowledge_base','1');
INSERT INTO `tbloptions` VALUES (8,'smtp_email','');
INSERT INTO `tbloptions` VALUES (9,'smtp_password','');
INSERT INTO `tbloptions` VALUES (10,'smtp_port','');
INSERT INTO `tbloptions` VALUES (11,'smtp_host','');
INSERT INTO `tbloptions` VALUES (12,'smtp_email_charset','utf-8');
INSERT INTO `tbloptions` VALUES (13,'default_timezone','Asia/Kolkata');
INSERT INTO `tbloptions` VALUES (14,'website_default_theme','recordtime');
INSERT INTO `tbloptions` VALUES (15,'company_logo','logo.png');
INSERT INTO `tbloptions` VALUES (16,'tables_pagination_limit','25');
INSERT INTO `tbloptions` VALUES (17,'main_domain','');
INSERT INTO `tbloptions` VALUES (18,'allow_registration','0');
INSERT INTO `tbloptions` VALUES (19,'knowledge_base_without_registration','1');
INSERT INTO `tbloptions` VALUES (20,'email_signature','');
INSERT INTO `tbloptions` VALUES (21,'default_staff_role','1');
INSERT INTO `tbloptions` VALUES (22,'newsfeed_maximum_files_upload','10');
INSERT INTO `tbloptions` VALUES (23,'newsfeed_maximum_file_size','5');
INSERT INTO `tbloptions` VALUES (24,'contract_expiration_before','4');
INSERT INTO `tbloptions` VALUES (25,'invoice_prefix','INV-');
INSERT INTO `tbloptions` VALUES (26,'decimal_separator','.');
INSERT INTO `tbloptions` VALUES (27,'thousand_separator',',');
INSERT INTO `tbloptions` VALUES (28,'currency_placement','before');
INSERT INTO `tbloptions` VALUES (29,'invoice_company_name','');
INSERT INTO `tbloptions` VALUES (30,'invoice_company_address','');
INSERT INTO `tbloptions` VALUES (31,'invoice_company_city','');
INSERT INTO `tbloptions` VALUES (32,'invoice_company_country_code','');
INSERT INTO `tbloptions` VALUES (33,'invoice_company_postal_code','');
INSERT INTO `tbloptions` VALUES (34,'invoice_company_phonenumber','');
INSERT INTO `tbloptions` VALUES (35,'view_invoice_only_logged_in','0');
INSERT INTO `tbloptions` VALUES (36,'invoice_number_format','1');
INSERT INTO `tbloptions` VALUES (37,'next_invoice_number','1');
INSERT INTO `tbloptions` VALUES (38,'cron_send_invoice_overdue_reminder','1');
INSERT INTO `tbloptions` VALUES (39,'active_language','english');
INSERT INTO `tbloptions` VALUES (40,'invoice_number_decrement_on_delete','1');
INSERT INTO `tbloptions` VALUES (41,'automatically_send_invoice_overdue_reminder_after','1');
INSERT INTO `tbloptions` VALUES (42,'automatically_resend_invoice_overdue_reminder_after','3');
INSERT INTO `tbloptions` VALUES (43,'expenses_auto_operations_hour','21');
INSERT INTO `tbloptions` VALUES (44,'survey_send_emails_per_cron_run','100');
INSERT INTO `tbloptions` VALUES (45,'delete_only_on_last_invoice','1');
INSERT INTO `tbloptions` VALUES (46,'delete_only_on_last_estimate','1');
INSERT INTO `tbloptions` VALUES (47,'create_invoice_from_recurring_only_on_paid_invoices','0');
INSERT INTO `tbloptions` VALUES (48,'allow_payment_amount_to_be_modified','1');
INSERT INTO `tbloptions` VALUES (49,'send_renewed_invoice_from_recurring_to_email','1');
INSERT INTO `tbloptions` VALUES (50,'rtl_support_client','0');
INSERT INTO `tbloptions` VALUES (51,'limit_top_search_bar_results_to','10');
INSERT INTO `tbloptions` VALUES (52,'estimate_prefix','EST-');
INSERT INTO `tbloptions` VALUES (53,'next_estimate_number','1');
INSERT INTO `tbloptions` VALUES (54,'estimate_number_decrement_on_delete','1');
INSERT INTO `tbloptions` VALUES (55,'estimate_number_format','1');
INSERT INTO `tbloptions` VALUES (56,'estimate_auto_convert_to_invoice_on_client_accept','1');
INSERT INTO `tbloptions` VALUES (57,'exclude_estimate_from_client_area_with_draft_status','1');
INSERT INTO `tbloptions` VALUES (58,'rtl_support_admin','0');
INSERT INTO `tbloptions` VALUES (59,'last_cron_run','');
INSERT INTO `tbloptions` VALUES (60,'show_sale_agent_on_estimates','1');
INSERT INTO `tbloptions` VALUES (61,'show_sale_agent_on_invoices','1');
INSERT INTO `tbloptions` VALUES (62,'predefined_terms_invoice','');
INSERT INTO `tbloptions` VALUES (63,'predefined_terms_estimate','');
INSERT INTO `tbloptions` VALUES (64,'default_task_priority','2');
INSERT INTO `tbloptions` VALUES (65,'dropbox_app_key','');
INSERT INTO `tbloptions` VALUES (66,'show_expense_reminders_on_calendar','1');
INSERT INTO `tbloptions` VALUES (67,'only_show_contact_tickets','1');
INSERT INTO `tbloptions` VALUES (68,'predefined_clientnote_invoice','');
INSERT INTO `tbloptions` VALUES (69,'predefined_clientnote_estimate','');
INSERT INTO `tbloptions` VALUES (70,'custom_pdf_logo_image_url','');
INSERT INTO `tbloptions` VALUES (71,'favicon','favicon.ico');
INSERT INTO `tbloptions` VALUES (72,'auto_backup_enabled','0');
INSERT INTO `tbloptions` VALUES (73,'invoice_due_after','30');
INSERT INTO `tbloptions` VALUES (74,'google_api_key','');
INSERT INTO `tbloptions` VALUES (75,'google_calendar_main_calendar','');
INSERT INTO `tbloptions` VALUES (76,'default_tax','a:0:{}');
INSERT INTO `tbloptions` VALUES (77,'show_invoices_on_calendar','1');
INSERT INTO `tbloptions` VALUES (78,'show_estimates_on_calendar','1');
INSERT INTO `tbloptions` VALUES (79,'show_contracts_on_calendar','1');
INSERT INTO `tbloptions` VALUES (80,'show_tasks_on_calendar','1');
INSERT INTO `tbloptions` VALUES (81,'show_customer_reminders_on_calendar','1');
INSERT INTO `tbloptions` VALUES (82,'auto_backup_every','7');
INSERT INTO `tbloptions` VALUES (83,'last_auto_backup','');
INSERT INTO `tbloptions` VALUES (84,'output_client_pdfs_from_admin_area_in_client_language','0');
INSERT INTO `tbloptions` VALUES (85,'show_lead_reminders_on_calendar','1');
INSERT INTO `tbloptions` VALUES (86,'aside_menu_active','{\"aside_menu_active\":[{\"name\":\"als_dashboard\",\"url\":\"\\/\",\"permission\":\"\",\"icon\":\"fa fa-tachometer\",\"id\":\"dashboard\"},{\"name\":\"als_clients\",\"url\":\"clients\",\"permission\":\"customers\",\"icon\":\"fa fa-users\",\"id\":\"customers\"},{\"name\":\"als_sales\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-balance-scale\",\"id\":\"sales\",\"children\":[{\"name\":\"proposals\",\"url\":\"proposals\",\"permission\":\"proposals\",\"icon\":\"\",\"id\":\"child-proposals\"},{\"name\":\"estimates\",\"url\":\"estimates\\/list_estimates\",\"permission\":\"estimates\",\"icon\":\"\",\"id\":\"child-estimates\"},{\"name\":\"invoices\",\"url\":\"invoices\\/list_invoices\",\"permission\":\"invoices\",\"icon\":\"\",\"id\":\"child-invoices\"},{\"name\":\"payments\",\"url\":\"payments\",\"permission\":\"payments\",\"icon\":\"\",\"id\":\"child-payments\"},{\"name\":\"items\",\"url\":\"invoice_items\",\"permission\":\"items\",\"icon\":\"\",\"id\":\"child-items\"}]},{\"name\":\"als_expenses\",\"url\":\"expenses\\/list_expenses\",\"permission\":\"expenses\",\"icon\":\"fa fa-heartbeat\",\"id\":\"expenses\"},{\"name\":\"als_contracts\",\"url\":\"contracts\",\"permission\":\"contracts\",\"icon\":\"fa fa-file\",\"id\":\"contracts\"},{\"name\":\"projects\",\"url\":\"projects\",\"permission\":\"\",\"icon\":\"fa fa-bars\",\"id\":\"projects\"},{\"name\":\"als_tasks\",\"url\":\"tasks\\/list_tasks\",\"permission\":\"\",\"icon\":\"fa fa-tasks\",\"id\":\"tasks\"},{\"name\":\"support\",\"url\":\"tickets\",\"permission\":\"\",\"icon\":\"fa fa-ticket\",\"id\":\"tickets\"},{\"name\":\"als_leads\",\"url\":\"leads\",\"permission\":\"is_staff_member\",\"icon\":\"fa fa-tty\",\"id\":\"leads\"},{\"name\":\"als_kb\",\"url\":\"#\",\"permission\":\"knowledge_base\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"knowledge-base\",\"children\":[{\"name\":\"als_all_articles\",\"url\":\"knowledge_base\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-all-articles\"},{\"name\":\"als_kb_groups\",\"url\":\"knowledge_base\\/manage_groups\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-groups\"}]},{\"name\":\"als_utilities\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-cogs\",\"id\":\"utilities\",\"children\":[{\"name\":\"als_media\",\"url\":\"utilities\\/media\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-media\"},{\"name\":\"bulk_pdf_exporter\",\"url\":\"utilities\\/bulk_pdf_exporter\",\"permission\":\"bulk_pdf_exporter\",\"icon\":\"\",\"id\":\"child-bulk-pdf-exporter\"},{\"name\":\"als_calendar_submenu\",\"url\":\"utilities\\/calendar\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-calendar\"},{\"name\":\"als_goals_tracking\",\"url\":\"goals\",\"permission\":\"goals\",\"icon\":\"\",\"id\":\"child-goals-tracking\"},{\"name\":\"als_surveys\",\"url\":\"surveys\",\"permission\":\"surveys\",\"icon\":\"\",\"id\":\"child-surveys\"},{\"name\":\"als_announcements_submenu\",\"url\":\"announcements\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-announcements\"},{\"name\":\"utility_backup\",\"url\":\"utilities\\/backup\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-database-backup\"},{\"name\":\"als_activity_log_submenu\",\"url\":\"utilities\\/activity_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-activity-log\"},{\"name\":\"ticket_pipe_log\",\"url\":\"utilities\\/pipe_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-pipe-log\"}]},{\"name\":\"als_reports\",\"url\":\"#\",\"permission\":\"reports\",\"icon\":\"fa fa-area-chart\",\"id\":\"reports\",\"children\":[{\"name\":\"als_reports_sales_submenu\",\"url\":\"reports\\/sales\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-sales\"},{\"name\":\"als_reports_expenses\",\"url\":\"reports\\/expenses\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses\"},{\"name\":\"als_expenses_vs_income\",\"url\":\"reports\\/expenses_vs_income\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses-vs-income\"},{\"name\":\"als_reports_leads_submenu\",\"url\":\"reports\\/leads\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-leads\"},{\"name\":\"als_kb_articles_submenu\",\"url\":\"reports\\/knowledge_base_articles\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-kb-articles\"}]}]}');
INSERT INTO `tbloptions` VALUES (87,'estimate_expiry_reminder_enabled','1');
INSERT INTO `tbloptions` VALUES (88,'send_estimate_expiry_reminder_before','4');
INSERT INTO `tbloptions` VALUES (89,'leads_default_source','');
INSERT INTO `tbloptions` VALUES (90,'leads_default_status','');
INSERT INTO `tbloptions` VALUES (91,'proposal_expiry_reminder_enabled','1');
INSERT INTO `tbloptions` VALUES (92,'send_proposal_expiry_reminder_before','4');
INSERT INTO `tbloptions` VALUES (93,'default_contact_permissions','a:6:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";}');
INSERT INTO `tbloptions` VALUES (94,'pdf_logo_width','150');
INSERT INTO `tbloptions` VALUES (95,'aside_menu_inactive','{\"aside_menu_inactive\":[]}');
INSERT INTO `tbloptions` VALUES (96,'setup_menu_active','{\"setup_menu_active\":[{\"name\":\"als_staff\",\"url\":\"staff\",\"permission\":\"staff\",\"icon\":\"\",\"id\":\"staff\"},{\"name\":\"clients\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"customers\",\"children\":[{\"name\":\"customer_groups\",\"url\":\"clients\\/groups\",\"permission\":\"\",\"icon\":\"\",\"id\":\"groups\"}]},{\"name\":\"support\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"\",\"id\":\"tickets\",\"children\":[{\"name\":\"acs_departments\",\"url\":\"departments\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"departments\"},{\"name\":\"acs_ticket_predefined_replies_submenu\",\"url\":\"tickets\\/predefined_replies\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"predefined-replies\"},{\"name\":\"acs_ticket_priority_submenu\",\"url\":\"tickets\\/priorities\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-priority\"},{\"name\":\"acs_ticket_statuses_submenu\",\"url\":\"tickets\\/statuses\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-statuses\"},{\"name\":\"acs_ticket_services_submenu\",\"url\":\"tickets\\/services\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"services\"},{\"name\":\"spam_filters\",\"url\":\"tickets\\/spam_filters\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"spam-filters\"}]},{\"name\":\"acs_leads\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"leads\",\"children\":[{\"name\":\"acs_leads_sources_submenu\",\"url\":\"leads\\/sources\",\"permission\":\"\",\"icon\":\"\",\"id\":\"sources\"},{\"name\":\"acs_leads_statuses_submenu\",\"url\":\"leads\\/statuses\",\"permission\":\"\",\"icon\":\"\",\"id\":\"statuses\"},{\"name\":\"leads_email_integration\",\"url\":\"leads\\/email_integration\",\"permission\":\"\",\"icon\":\"\",\"id\":\"email-integration\"},{\"name\":\"web_to_lead\",\"url\":\"leads\\/forms\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"web-to-lead\"}]},{\"name\":\"acs_finance\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"finance\",\"children\":[{\"name\":\"acs_sales_taxes_submenu\",\"url\":\"taxes\",\"permission\":\"\",\"icon\":\"\",\"id\":\"taxes\"},{\"name\":\"acs_sales_currencies_submenu\",\"url\":\"currencies\",\"permission\":\"\",\"icon\":\"\",\"id\":\"currencies\"},{\"name\":\"acs_sales_payment_modes_submenu\",\"url\":\"paymentmodes\",\"permission\":\"\",\"icon\":\"\",\"id\":\"payment-modes\"},{\"name\":\"acs_expense_categories\",\"url\":\"expenses\\/categories\",\"permission\":\"\",\"icon\":\"\",\"id\":\"expenses-categories\"}]},{\"name\":\"acs_contracts\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"contracts\",\"children\":[{\"name\":\"acs_contract_types\",\"url\":\"contracts\\/types\",\"permission\":\"\",\"icon\":\"\",\"id\":\"contract-types\"}]},{\"name\":\"acs_email_templates\",\"url\":\"emails\",\"permission\":\"email_templates\",\"icon\":\"\",\"id\":\"email-templates\"},{\"name\":\"asc_custom_fields\",\"url\":\"custom_fields\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"custom-fields\"},{\"name\":\"acs_roles\",\"url\":\"roles\",\"permission\":\"roles\",\"icon\":\"\",\"id\":\"roles\"},{\"name\":\"menu_builder\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"menu-builder\",\"children\":[{\"name\":\"main_menu\",\"url\":\"utilities\\/main_menu\",\"permission\":\"\",\"icon\":\"\",\"id\":\"organize-sidebar\"},{\"name\":\"setup_menu\",\"url\":\"utilities\\/setup_menu\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"setup-menu\"}]},{\"name\":\"theme_style\",\"url\":\"utilities\\/theme_style\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"theme-style\"},{\"name\":\"acs_settings\",\"url\":\"settings\",\"permission\":\"settings\",\"icon\":\"\",\"id\":\"settings\"}]}');
INSERT INTO `tbloptions` VALUES (97,'access_tickets_to_none_staff_members','0');
INSERT INTO `tbloptions` VALUES (98,'setup_menu_inactive','{\"setup_menu_inactive\":[]}');
INSERT INTO `tbloptions` VALUES (99,'customer_default_country','');
INSERT INTO `tbloptions` VALUES (100,'view_estimate_only_logged_in','0');
INSERT INTO `tbloptions` VALUES (101,'show_status_on_pdf_ei','1');
INSERT INTO `tbloptions` VALUES (102,'email_piping_only_replies','0');
INSERT INTO `tbloptions` VALUES (103,'email_piping_only_registered','0');
INSERT INTO `tbloptions` VALUES (104,'default_view_calendar','month');
INSERT INTO `tbloptions` VALUES (105,'email_piping_default_priority','2');
INSERT INTO `tbloptions` VALUES (106,'total_to_words_lowercase','0');
INSERT INTO `tbloptions` VALUES (107,'show_tax_per_item','1');
INSERT INTO `tbloptions` VALUES (108,'last_survey_send_cron','');
INSERT INTO `tbloptions` VALUES (109,'total_to_words_enabled','0');
INSERT INTO `tbloptions` VALUES (110,'receive_notification_on_new_ticket','1');
INSERT INTO `tbloptions` VALUES (111,'autoclose_tickets_after','0');
INSERT INTO `tbloptions` VALUES (112,'media_max_file_size_upload','10');
INSERT INTO `tbloptions` VALUES (113,'client_staff_add_edit_delete_task_comments_first_hour','0');
INSERT INTO `tbloptions` VALUES (114,'show_projects_on_calendar','1');
INSERT INTO `tbloptions` VALUES (115,'leads_kanban_limit','50');
INSERT INTO `tbloptions` VALUES (116,'tasks_reminder_notification_before','2');
INSERT INTO `tbloptions` VALUES (117,'pdf_font','freesans');
INSERT INTO `tbloptions` VALUES (118,'pdf_table_heading_color','#323a45');
INSERT INTO `tbloptions` VALUES (119,'pdf_table_heading_text_color','#ffffff');
INSERT INTO `tbloptions` VALUES (120,'pdf_font_size','10');
INSERT INTO `tbloptions` VALUES (121,'default_leads_kanban_sort','leadorder');
INSERT INTO `tbloptions` VALUES (122,'default_leads_kanban_sort_type','asc');
INSERT INTO `tbloptions` VALUES (123,'allowed_files','.gif,.png,.jpeg,.jpg,.pdf,.doc,.txt,.docx,.xls,.zip,.rar,.xls,.mp4');
INSERT INTO `tbloptions` VALUES (124,'show_all_tasks_for_project_member','1');
INSERT INTO `tbloptions` VALUES (125,'email_protocol','smtp');
INSERT INTO `tbloptions` VALUES (126,'calendar_first_day','0');
INSERT INTO `tbloptions` VALUES (127,'recaptcha_secret_key','');
INSERT INTO `tbloptions` VALUES (128,'show_help_on_setup_menu','1');
INSERT INTO `tbloptions` VALUES (129,'show_proposals_on_calendar','1');
INSERT INTO `tbloptions` VALUES (130,'smtp_encryption','');
INSERT INTO `tbloptions` VALUES (131,'recaptcha_site_key','');
INSERT INTO `tbloptions` VALUES (132,'smtp_username','');
INSERT INTO `tbloptions` VALUES (133,'auto_stop_tasks_timers_on_new_timer','0');
INSERT INTO `tbloptions` VALUES (134,'notification_when_customer_pay_invoice','1');
INSERT INTO `tbloptions` VALUES (135,'theme_style','[]');
INSERT INTO `tbloptions` VALUES (136,'calendar_invoice_color','#FF6F00');
INSERT INTO `tbloptions` VALUES (137,'calendar_estimate_color','#FF6F00');
INSERT INTO `tbloptions` VALUES (138,'calendar_proposal_color','#84c529');
INSERT INTO `tbloptions` VALUES (139,'new_task_auto_assign_current_member','1');
INSERT INTO `tbloptions` VALUES (140,'calendar_reminder_color','#03A9F4');
INSERT INTO `tbloptions` VALUES (141,'calendar_contract_color','#B72974');
INSERT INTO `tbloptions` VALUES (142,'calendar_project_color','#B72974');
INSERT INTO `tbloptions` VALUES (143,'update_info_message','');
INSERT INTO `tbloptions` VALUES (144,'show_estimate_reminders_on_calendar','1');
INSERT INTO `tbloptions` VALUES (145,'show_invoice_reminders_on_calendar','1');
INSERT INTO `tbloptions` VALUES (146,'show_proposal_reminders_on_calendar','1');
INSERT INTO `tbloptions` VALUES (147,'proposal_due_after','7');
INSERT INTO `tbloptions` VALUES (148,'allow_customer_to_change_ticket_status','0');
INSERT INTO `tbloptions` VALUES (149,'lead_lock_after_convert_to_customer','0');
INSERT INTO `tbloptions` VALUES (150,'default_proposals_pipeline_sort','pipeline_order');
INSERT INTO `tbloptions` VALUES (151,'default_proposals_pipeline_sort_type','asc');
INSERT INTO `tbloptions` VALUES (152,'default_estimates_pipeline_sort','pipeline_order');
INSERT INTO `tbloptions` VALUES (153,'default_estimates_pipeline_sort_type','asc');
INSERT INTO `tbloptions` VALUES (154,'use_recaptcha_customers_area','0');
INSERT INTO `tbloptions` VALUES (155,'remove_decimals_on_zero','0');
INSERT INTO `tbloptions` VALUES (156,'remove_tax_name_from_item_table','0');
INSERT INTO `tbloptions` VALUES (157,'pdf_format_invoice','A4-PORTRAIT');
INSERT INTO `tbloptions` VALUES (158,'pdf_format_estimate','A4-PORTRAIT');
INSERT INTO `tbloptions` VALUES (159,'pdf_format_proposal','A4-PORTRAIT');
INSERT INTO `tbloptions` VALUES (160,'pdf_format_payment','A4-PORTRAIT');
INSERT INTO `tbloptions` VALUES (161,'pdf_format_contract','A4-PORTRAIT');
INSERT INTO `tbloptions` VALUES (162,'auto_check_for_new_notifications','0');
INSERT INTO `tbloptions` VALUES (163,'swap_pdf_info','0');
INSERT INTO `tbloptions` VALUES (164,'exclude_invoice_from_client_area_with_draft_status','1');
INSERT INTO `tbloptions` VALUES (165,'cron_has_run_from_cli','0');
INSERT INTO `tbloptions` VALUES (166,'hide_cron_is_required_message','0');
INSERT INTO `tbloptions` VALUES (167,'auto_assign_customer_admin_after_lead_convert','1');
INSERT INTO `tbloptions` VALUES (168,'show_transactions_on_invoice_pdf','1');
INSERT INTO `tbloptions` VALUES (169,'show_pay_link_to_invoice_pdf','1');
INSERT INTO `tbloptions` VALUES (170,'tasks_kanban_limit','50');
INSERT INTO `tbloptions` VALUES (171,'purchase_key','');
INSERT INTO `tbloptions` VALUES (172,'estimates_pipeline_limit','50');
INSERT INTO `tbloptions` VALUES (173,'proposals_pipeline_limit','50');
INSERT INTO `tbloptions` VALUES (174,'proposal_number_prefix','PRO-');
INSERT INTO `tbloptions` VALUES (175,'number_padding_prefixes','6');
INSERT INTO `tbloptions` VALUES (176,'show_page_number_on_pdf','0');
INSERT INTO `tbloptions` VALUES (177,'calendar_events_limit','4');
INSERT INTO `tbloptions` VALUES (178,'show_setup_menu_item_only_on_hover','0');
INSERT INTO `tbloptions` VALUES (179,'company_requires_vat_number_field','1');
INSERT INTO `tbloptions` VALUES (180,'company_is_required','1');
INSERT INTO `tbloptions` VALUES (181,'allow_contact_to_delete_files','0');
INSERT INTO `tbloptions` VALUES (182,'company_vat','');
INSERT INTO `tbloptions` VALUES (183,'di','1506850880');
INSERT INTO `tbloptions` VALUES (184,'invoice_auto_operations_hour','21');
INSERT INTO `tbloptions` VALUES (185,'use_minified_files','1');
INSERT INTO `tbloptions` VALUES (186,'only_own_files_contacts','0');
INSERT INTO `tbloptions` VALUES (187,'allow_primary_contact_to_view_edit_billing_and_shipping','0');
INSERT INTO `tbloptions` VALUES (188,'estimate_due_after','7');
INSERT INTO `tbloptions` VALUES (189,'delete_backups_older_then','0');
INSERT INTO `tbloptions` VALUES (190,'staff_members_open_tickets_to_all_contacts','1');
INSERT INTO `tbloptions` VALUES (191,'contract_expiry_reminder_enabled','1');
INSERT INTO `tbloptions` VALUES (192,'time_format','24');
INSERT INTO `tbloptions` VALUES (193,'delete_activity_log_older_then','2');
INSERT INTO `tbloptions` VALUES (194,'disable_language','0');
INSERT INTO `tbloptions` VALUES (195,'company_state','');
INSERT INTO `tbloptions` VALUES (196,'paymentmethod_stripe_active','0');
INSERT INTO `tbloptions` VALUES (197,'paymentmethod_stripe_label','Stripe');
INSERT INTO `tbloptions` VALUES (198,'paymentmethod_stripe_api_secret_key','');
INSERT INTO `tbloptions` VALUES (199,'paymentmethod_stripe_api_publishable_key','');
INSERT INTO `tbloptions` VALUES (200,'paymentmethod_stripe_currencies','USD,CAD');
INSERT INTO `tbloptions` VALUES (201,'paymentmethod_stripe_default_selected','1');
INSERT INTO `tbloptions` VALUES (202,'paymentmethod_stripe_test_mode_enabled','1');
INSERT INTO `tbloptions` VALUES (203,'paymentmethod_two_checkout_active','0');
INSERT INTO `tbloptions` VALUES (204,'paymentmethod_two_checkout_label','2Checkout');
INSERT INTO `tbloptions` VALUES (205,'paymentmethod_two_checkout_account_number','');
INSERT INTO `tbloptions` VALUES (206,'paymentmethod_two_checkout_private_key','');
INSERT INTO `tbloptions` VALUES (207,'paymentmethod_two_checkout_publishable_key','');
INSERT INTO `tbloptions` VALUES (208,'paymentmethod_two_checkout_currencies','USD,EUR');
INSERT INTO `tbloptions` VALUES (209,'paymentmethod_two_checkout_default_selected','1');
INSERT INTO `tbloptions` VALUES (210,'paymentmethod_two_checkout_test_mode_enabled','1');
INSERT INTO `tbloptions` VALUES (211,'paymentmethod_paypal_active','0');
INSERT INTO `tbloptions` VALUES (212,'paymentmethod_paypal_label','Paypal');
INSERT INTO `tbloptions` VALUES (213,'paymentmethod_paypal_username','');
INSERT INTO `tbloptions` VALUES (214,'paymentmethod_paypal_password','');
INSERT INTO `tbloptions` VALUES (215,'paymentmethod_paypal_signature','');
INSERT INTO `tbloptions` VALUES (216,'paymentmethod_paypal_currencies','EUR,USD');
INSERT INTO `tbloptions` VALUES (217,'paymentmethod_paypal_default_selected','1');
INSERT INTO `tbloptions` VALUES (218,'paymentmethod_paypal_test_mode_enabled','1');
INSERT INTO `tbloptions` VALUES (219,'paymentmethod_paypal_braintree_active','0');
INSERT INTO `tbloptions` VALUES (220,'paymentmethod_paypal_braintree_label','Braintree');
INSERT INTO `tbloptions` VALUES (221,'paymentmethod_paypal_braintree_merchant_id','');
INSERT INTO `tbloptions` VALUES (222,'paymentmethod_paypal_braintree_api_public_key','');
INSERT INTO `tbloptions` VALUES (223,'paymentmethod_paypal_braintree_api_private_key','');
INSERT INTO `tbloptions` VALUES (224,'paymentmethod_paypal_braintree_currencies','USD');
INSERT INTO `tbloptions` VALUES (225,'paymentmethod_paypal_braintree_default_selected','1');
INSERT INTO `tbloptions` VALUES (226,'paymentmethod_paypal_braintree_test_mode_enabled','1');
INSERT INTO `tbloptions` VALUES (227,'paymentmethod_authorize_sim_active','0');
INSERT INTO `tbloptions` VALUES (228,'paymentmethod_authorize_sim_label','Authorize.net');
INSERT INTO `tbloptions` VALUES (229,'paymentmethod_authorize_sim_api_login_id','');
INSERT INTO `tbloptions` VALUES (230,'paymentmethod_authorize_sim_api_transaction_key','');
INSERT INTO `tbloptions` VALUES (231,'paymentmethod_authorize_sim_api_secret_key','');
INSERT INTO `tbloptions` VALUES (232,'paymentmethod_authorize_sim_currencies','USD');
INSERT INTO `tbloptions` VALUES (233,'paymentmethod_authorize_sim_default_selected','1');
INSERT INTO `tbloptions` VALUES (234,'paymentmethod_authorize_sim_test_mode_enabled','0');
INSERT INTO `tbloptions` VALUES (235,'paymentmethod_authorize_sim_developer_mode_enabled','1');
INSERT INTO `tbloptions` VALUES (236,'paymentmethod_mollie_active','0');
INSERT INTO `tbloptions` VALUES (237,'paymentmethod_mollie_label','Mollie');
INSERT INTO `tbloptions` VALUES (238,'paymentmethod_mollie_api_key','');
INSERT INTO `tbloptions` VALUES (239,'paymentmethod_mollie_currencies','EUR');
INSERT INTO `tbloptions` VALUES (240,'paymentmethod_mollie_default_selected','1');
INSERT INTO `tbloptions` VALUES (241,'paymentmethod_mollie_test_mode_enabled','1');
INSERT INTO `tbloptions` VALUES (242,'paymentmethod_authorize_aim_active','0');
INSERT INTO `tbloptions` VALUES (243,'paymentmethod_authorize_aim_label','Authorize.net');
INSERT INTO `tbloptions` VALUES (244,'paymentmethod_authorize_aim_api_login_id','');
INSERT INTO `tbloptions` VALUES (245,'paymentmethod_authorize_aim_api_transaction_key','');
INSERT INTO `tbloptions` VALUES (246,'paymentmethod_authorize_aim_currencies','USD');
INSERT INTO `tbloptions` VALUES (247,'paymentmethod_authorize_aim_default_selected','1');
INSERT INTO `tbloptions` VALUES (248,'paymentmethod_authorize_aim_test_mode_enabled','0');
INSERT INTO `tbloptions` VALUES (249,'paymentmethod_authorize_aim_developer_mode_enabled','1');

--
-- Table structure for table `tblpermissions`
--

DROP TABLE IF EXISTS `tblpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpermissions` (
  `permissionid` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `shortname` mediumtext NOT NULL,
  PRIMARY KEY (`permissionid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpermissions`
--

INSERT INTO `tblpermissions` VALUES (1,'Contracts','contracts');
INSERT INTO `tblpermissions` VALUES (2,'Tasks','tasks');
INSERT INTO `tblpermissions` VALUES (3,'Reports','reports');
INSERT INTO `tblpermissions` VALUES (4,'Settings','settings');
INSERT INTO `tblpermissions` VALUES (5,'Projects','projects');
INSERT INTO `tblpermissions` VALUES (6,'Surveys','surveys');
INSERT INTO `tblpermissions` VALUES (7,'Staff','staff');
INSERT INTO `tblpermissions` VALUES (8,'Customers','customers');
INSERT INTO `tblpermissions` VALUES (9,'Email Templates','email_templates');
INSERT INTO `tblpermissions` VALUES (10,'Roles','roles');
INSERT INTO `tblpermissions` VALUES (11,'Estimates','estimates');
INSERT INTO `tblpermissions` VALUES (12,'Knowledge base','knowledge_base');
INSERT INTO `tblpermissions` VALUES (13,'Proposals','proposals');
INSERT INTO `tblpermissions` VALUES (14,'Goals','goals');
INSERT INTO `tblpermissions` VALUES (15,'Expenses','expenses');
INSERT INTO `tblpermissions` VALUES (16,'Bulk PDF Exporter','bulk_pdf_exporter');
INSERT INTO `tblpermissions` VALUES (17,'Payments','payments');
INSERT INTO `tblpermissions` VALUES (18,'Invoices','invoices');
INSERT INTO `tblpermissions` VALUES (19,'Items','items');

--
-- Table structure for table `tblpinnedprojects`
--

DROP TABLE IF EXISTS `tblpinnedprojects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpinnedprojects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpinnedprojects`
--


--
-- Table structure for table `tblpostcomments`
--

DROP TABLE IF EXISTS `tblpostcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpostcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpostcomments`
--


--
-- Table structure for table `tblpostlikes`
--

DROP TABLE IF EXISTS `tblpostlikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpostlikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpostlikes`
--


--
-- Table structure for table `tblposts`
--

DROP TABLE IF EXISTS `tblposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblposts` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `creator` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `visibility` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `pinned` int(11) NOT NULL,
  `datepinned` datetime DEFAULT NULL,
  PRIMARY KEY (`postid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblposts`
--


--
-- Table structure for table `tblpredefinedreplies`
--

DROP TABLE IF EXISTS `tblpredefinedreplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpredefinedreplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpredefinedreplies`
--


--
-- Table structure for table `tblpriorities`
--

DROP TABLE IF EXISTS `tblpriorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpriorities` (
  `priorityid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`priorityid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpriorities`
--

INSERT INTO `tblpriorities` VALUES (1,'Low');
INSERT INTO `tblpriorities` VALUES (2,'Medium');
INSERT INTO `tblpriorities` VALUES (3,'High');

--
-- Table structure for table `tblprojectactivity`
--

DROP TABLE IF EXISTS `tblprojectactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprojectactivity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `fullname` varchar(100) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `description_key` varchar(500) NOT NULL COMMENT 'Language file key',
  `additional_data` text,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprojectactivity`
--


--
-- Table structure for table `tblprojectdiscussioncomments`
--

DROP TABLE IF EXISTS `tblprojectdiscussioncomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprojectdiscussioncomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discussion_id` int(11) NOT NULL,
  `discussion_type` varchar(10) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `fullname` varchar(300) DEFAULT NULL,
  `file_name` varchar(300) DEFAULT NULL,
  `file_mime_type` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprojectdiscussioncomments`
--


--
-- Table structure for table `tblprojectdiscussions`
--

DROP TABLE IF EXISTS `tblprojectdiscussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprojectdiscussions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `show_to_customer` tinyint(1) NOT NULL DEFAULT '0',
  `datecreated` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprojectdiscussions`
--


--
-- Table structure for table `tblprojectfiles`
--

DROP TABLE IF EXISTS `tblprojectfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprojectfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` mediumtext NOT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `description` text,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `visible_to_customer` tinyint(1) DEFAULT '0',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `external` varchar(40) DEFAULT NULL,
  `external_link` text,
  `thumbnail_link` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprojectfiles`
--


--
-- Table structure for table `tblprojectmembers`
--

DROP TABLE IF EXISTS `tblprojectmembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprojectmembers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprojectmembers`
--


--
-- Table structure for table `tblprojectnotes`
--

DROP TABLE IF EXISTS `tblprojectnotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprojectnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprojectnotes`
--


--
-- Table structure for table `tblprojects`
--

DROP TABLE IF EXISTS `tblprojects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprojects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(600) NOT NULL,
  `description` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `clientid` int(11) NOT NULL,
  `billing_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date DEFAULT NULL,
  `project_created` date NOT NULL,
  `date_finished` datetime DEFAULT NULL,
  `progress` int(11) DEFAULT '0',
  `progress_from_tasks` int(11) NOT NULL DEFAULT '1',
  `project_cost` decimal(11,2) DEFAULT NULL,
  `project_rate_per_hour` decimal(11,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprojects`
--


--
-- Table structure for table `tblprojectsettings`
--

DROP TABLE IF EXISTS `tblprojectsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprojectsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprojectsettings`
--


--
-- Table structure for table `tblproposalcomments`
--

DROP TABLE IF EXISTS `tblproposalcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproposalcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext,
  `proposalid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproposalcomments`
--


--
-- Table structure for table `tblproposals`
--

DROP TABLE IF EXISTS `tblproposals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproposals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(500) DEFAULT NULL,
  `content` longtext,
  `addedfrom` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `total_tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `adjustment` decimal(11,2) DEFAULT NULL,
  `discount_percent` decimal(11,2) NOT NULL,
  `discount_total` decimal(11,2) NOT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `currency` int(11) NOT NULL,
  `open_till` date DEFAULT NULL,
  `date` date NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(40) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `proposal_to` varchar(600) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(50) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL,
  `estimate_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproposals`
--


--
-- Table structure for table `tblreminders`
--

DROP TABLE IF EXISTS `tblreminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblreminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `date` datetime NOT NULL,
  `isnotified` int(11) NOT NULL DEFAULT '0',
  `rel_id` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `notify_by_email` int(11) NOT NULL DEFAULT '1',
  `creator` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblreminders`
--


--
-- Table structure for table `tblrolepermissions`
--

DROP TABLE IF EXISTS `tblrolepermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblrolepermissions` (
  `rolepermissionid` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL,
  `can_view` tinyint(1) NOT NULL DEFAULT '0',
  `can_view_own` tinyint(1) NOT NULL DEFAULT '0',
  `can_edit` tinyint(1) DEFAULT '0',
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  `permissionid` int(11) NOT NULL,
  PRIMARY KEY (`rolepermissionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrolepermissions`
--


--
-- Table structure for table `tblroles`
--

DROP TABLE IF EXISTS `tblroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblroles` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblroles`
--

INSERT INTO `tblroles` VALUES (1,'Employee');

--
-- Table structure for table `tblsalesactivity`
--

DROP TABLE IF EXISTS `tblsalesactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsalesactivity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_type` varchar(20) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `additional_data` varchar(600) DEFAULT NULL,
  `staffid` varchar(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsalesactivity`
--


--
-- Table structure for table `tblservices`
--

DROP TABLE IF EXISTS `tblservices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblservices` (
  `serviceid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`serviceid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblservices`
--


--
-- Table structure for table `tblsessions`
--

DROP TABLE IF EXISTS `tblsessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsessions`
--

INSERT INTO `tblsessions` VALUES ('100efc114873fd0570945b852fe1b5dd2caf6366','64.233.172.242',1542037861,'__ci_last_regenerate|i:1542037857;');
INSERT INTO `tblsessions` VALUES ('1973d7066497c66724d0d5f3f85896cafd4fd5ac','66.249.65.160',1542054662,'__ci_last_regenerate|i:1542054662;');
INSERT INTO `tblsessions` VALUES ('1cc842b4ec3917aa1de52d34779ba4a023b2c9e3','106.120.173.94',1542088671,'__ci_last_regenerate|i:1542088671;');
INSERT INTO `tblsessions` VALUES ('1da25acd90b8357585a3952dec61f2be93de21f2','157.55.39.215',1542082985,'__ci_last_regenerate|i:1542082985;');
INSERT INTO `tblsessions` VALUES ('293499d42fa66b394e9d7e50ac00ce1fe73a37d5','158.174.122.218',1542095263,'__ci_last_regenerate|i:1542095253;');
INSERT INTO `tblsessions` VALUES ('3e9c63cd8f140107886f691a82ce6403fd8b11d7','66.249.65.123',1542074322,'__ci_last_regenerate|i:1542074322;');
INSERT INTO `tblsessions` VALUES ('3fc55795a9ef27906380cf19408d16acc4933659','66.249.65.121',1542036414,'__ci_last_regenerate|i:1542036413;');
INSERT INTO `tblsessions` VALUES ('4021e50838212ff8233c4014f1607865515c575c','5.196.87.2',1542065160,'__ci_last_regenerate|i:1542065160;');
INSERT INTO `tblsessions` VALUES ('494d24cd2d3beb5dec128361661de52e380dcb98','66.249.65.173',1542051040,'__ci_last_regenerate|i:1542051040;');
INSERT INTO `tblsessions` VALUES ('4a46e048f3eadf3b455b7fbbafaae6087212ca48','106.38.241.128',1542061534,'__ci_last_regenerate|i:1542061534;');
INSERT INTO `tblsessions` VALUES ('5727d895be32b23c5657be8aca94e2be3b644655','153.232.82.223',1542054995,'__ci_last_regenerate|i:1542054995;');
INSERT INTO `tblsessions` VALUES ('68a5b186626d7e7321b5c0edac1a59d79a0467ab','42.236.99.65',1542078421,'__ci_last_regenerate|i:1542078421;');
INSERT INTO `tblsessions` VALUES ('6c7a0125ee860dfa5fe8b7dd832ec329e42349cb','157.55.39.215',1542058435,'__ci_last_regenerate|i:1542058435;');
INSERT INTO `tblsessions` VALUES ('7190c5d1a45d2512edaf1d0b342af62fb15de995','157.55.39.159',1542055147,'__ci_last_regenerate|i:1542055147;');
INSERT INTO `tblsessions` VALUES ('7ec56ad2498a7df2d39fc0610fdd50536402f74e','35.195.126.72',1542040521,'__ci_last_regenerate|i:1542040515;');
INSERT INTO `tblsessions` VALUES ('852e3c9f6913376db53f6002efe56586db0ebcb1','94.130.206.199',1542064952,'__ci_last_regenerate|i:1542064890;');
INSERT INTO `tblsessions` VALUES ('97363ab2abc955cbb5a095449d9db35054ff2c54','206.189.4.244',1542040477,'__ci_last_regenerate|i:1542040477;');
INSERT INTO `tblsessions` VALUES ('9f913a326c18ec628cf42500313b7f652cda0a2c','157.55.39.159',1542096128,'__ci_last_regenerate|i:1542096128;');
INSERT INTO `tblsessions` VALUES ('a75e7a6a87a85b1ba77318b22e350b0d4dd4f8ee','66.249.65.163',1542047655,'__ci_last_regenerate|i:1542047655;');
INSERT INTO `tblsessions` VALUES ('ae22c17eb202b19c360db7b7b26b542e68aab6a7','66.249.65.115',1542050990,'__ci_last_regenerate|i:1542050990;');
INSERT INTO `tblsessions` VALUES ('b0ad5b950bdcedfcb872819550920a4ed957f8f3','157.55.39.215',1542042138,'__ci_last_regenerate|i:1542042136;');
INSERT INTO `tblsessions` VALUES ('bac4b4061e4ac17549b7e0bc6f267aa6839fbd24','42.236.99.166',1542078438,'__ci_last_regenerate|i:1542078438;');
INSERT INTO `tblsessions` VALUES ('c049b4b9d14a75759b218f2a2663698c57adc405','93.158.161.23',1542092545,'__ci_last_regenerate|i:1542092545;');
INSERT INTO `tblsessions` VALUES ('d03cd27b0356bac4bd47d484545eb196164e4056','66.249.65.125',1542039993,'__ci_last_regenerate|i:1542039993;');
INSERT INTO `tblsessions` VALUES ('d958c85edcc22f1c08f882d509bea58caad209bf','157.55.39.159',1542061571,'__ci_last_regenerate|i:1542061570;');
INSERT INTO `tblsessions` VALUES ('dd7f11f617a999df3ad30395bfd1f09c38b05d05','180.76.15.145',1542097064,'__ci_last_regenerate|i:1542097064;');
INSERT INTO `tblsessions` VALUES ('e1e27a9512f53f28db964afe977bcfb4c68b6273','97.70.124.27',1542076368,'__ci_last_regenerate|i:1542076368;');
INSERT INTO `tblsessions` VALUES ('e656024e2ba92a682645ef82edd9167c741b6579','99.187.229.113',1542073863,'__ci_last_regenerate|i:1542073862;');
INSERT INTO `tblsessions` VALUES ('f5cde30746c41bbd50ebdd194988876f09b9c1ca','66.249.65.115',1542045675,'__ci_last_regenerate|i:1542045675;');
INSERT INTO `tblsessions` VALUES ('fca2e74e17f85fadd28bd280d00c2e594c1db978','66.249.65.177',1542054544,'__ci_last_regenerate|i:1542054543;');

--
-- Table structure for table `tblstaff`
--

DROP TABLE IF EXISTS `tblstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstaff` (
  `staffid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `facebook` mediumtext,
  `linkedin` mediumtext,
  `phonenumber` varchar(30) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `datecreated` datetime NOT NULL,
  `profile_image` varchar(300) DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `role` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `default_language` varchar(40) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `media_path_slug` varchar(300) DEFAULT NULL,
  `is_not_staff` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(11,2) NOT NULL DEFAULT '0.00',
  `email_signature` text,
  PRIMARY KEY (`staffid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` VALUES (1,'durvesh@intorque.net','','',NULL,NULL,NULL,NULL,'$2a$08$DuGMojt/bEZ6kI465bhIGuCw4zl6GiYVcTjJD8G.MY0wKShtARpWy','2017-10-01 11:41:20',NULL,'::1','2017-10-01 15:11:41',NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,0,0.00,NULL);

--
-- Table structure for table `tblstaffdepartments`
--

DROP TABLE IF EXISTS `tblstaffdepartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstaffdepartments` (
  `staffdepartmentid` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL,
  PRIMARY KEY (`staffdepartmentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstaffdepartments`
--


--
-- Table structure for table `tblstaffpermissions`
--

DROP TABLE IF EXISTS `tblstaffpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstaffpermissions` (
  `staffpermid` int(11) NOT NULL AUTO_INCREMENT,
  `permissionid` int(11) NOT NULL,
  `can_view` tinyint(1) NOT NULL DEFAULT '0',
  `can_view_own` tinyint(1) NOT NULL DEFAULT '0',
  `can_edit` tinyint(1) NOT NULL DEFAULT '0',
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  `staffid` int(11) NOT NULL,
  PRIMARY KEY (`staffpermid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstaffpermissions`
--


--
-- Table structure for table `tblstafftaskassignees`
--

DROP TABLE IF EXISTS `tblstafftaskassignees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstafftaskassignees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `assigned_from` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `taskid` (`taskid`),
  KEY `staffid` (`staffid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstafftaskassignees`
--


--
-- Table structure for table `tblstafftaskcomments`
--

DROP TABLE IF EXISTS `tblstafftaskcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstafftaskcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `taskid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `file_id` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `file_id` (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstafftaskcomments`
--


--
-- Table structure for table `tblstafftasks`
--

DROP TABLE IF EXISTS `tblstafftasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstafftasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext,
  `description` text,
  `priority` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `startdate` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `datefinished` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_ends_on` date DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `billable` tinyint(1) NOT NULL DEFAULT '0',
  `billed` tinyint(1) NOT NULL DEFAULT '0',
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(11,2) NOT NULL DEFAULT '0.00',
  `milestone` int(11) DEFAULT '0',
  `kanban_order` int(11) NOT NULL DEFAULT '0',
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `visible_to_client` tinyint(1) NOT NULL DEFAULT '0',
  `deadline_notified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`),
  KEY `milestone` (`milestone`),
  KEY `kanban_order` (`kanban_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstafftasks`
--


--
-- Table structure for table `tblstafftasksfollowers`
--

DROP TABLE IF EXISTS `tblstafftasksfollowers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstafftasksfollowers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstafftasksfollowers`
--


--
-- Table structure for table `tblsurveyresultsets`
--

DROP TABLE IF EXISTS `tblsurveyresultsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsurveyresultsets` (
  `resultsetid` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `useragent` varchar(150) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`resultsetid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsurveyresultsets`
--


--
-- Table structure for table `tblsurveys`
--

DROP TABLE IF EXISTS `tblsurveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsurveys` (
  `surveyid` int(11) NOT NULL AUTO_INCREMENT,
  `subject` mediumtext NOT NULL,
  `slug` mediumtext NOT NULL,
  `description` text NOT NULL,
  `viewdescription` text,
  `datecreated` datetime NOT NULL,
  `redirect_url` varchar(100) DEFAULT NULL,
  `send` tinyint(1) NOT NULL DEFAULT '0',
  `onlyforloggedin` int(11) DEFAULT '0',
  `fromname` varchar(100) DEFAULT NULL,
  `iprestrict` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `hash` varchar(32) NOT NULL,
  PRIMARY KEY (`surveyid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsurveys`
--


--
-- Table structure for table `tblsurveysemailsendcron`
--

DROP TABLE IF EXISTS `tblsurveysemailsendcron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsurveysemailsendcron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emailid` int(11) DEFAULT NULL,
  `listid` varchar(11) DEFAULT NULL,
  `log_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsurveysemailsendcron`
--


--
-- Table structure for table `tblsurveysendlog`
--

DROP TABLE IF EXISTS `tblsurveysendlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsurveysendlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `iscronfinished` int(11) NOT NULL DEFAULT '0',
  `send_to_mail_lists` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsurveysendlog`
--


--
-- Table structure for table `tbltags`
--

DROP TABLE IF EXISTS `tbltags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltags`
--


--
-- Table structure for table `tbltags_in`
--

DROP TABLE IF EXISTS `tbltags_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltags_in` (
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `tag_order` int(11) NOT NULL DEFAULT '0',
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`),
  KEY `tag_id` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltags_in`
--


--
-- Table structure for table `tbltaskchecklists`
--

DROP TABLE IF EXISTS `tbltaskchecklists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltaskchecklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `finished` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `finished_from` int(11) DEFAULT '0',
  `list_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltaskchecklists`
--


--
-- Table structure for table `tbltaskstimers`
--

DROP TABLE IF EXISTS `tbltaskstimers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltaskstimers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `start_time` varchar(64) NOT NULL,
  `end_time` varchar(64) DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `hourly_rate` decimal(11,2) NOT NULL DEFAULT '0.00',
  `note` text,
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltaskstimers`
--


--
-- Table structure for table `tbltaxes`
--

DROP TABLE IF EXISTS `tbltaxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltaxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `taxrate` decimal(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltaxes`
--


--
-- Table structure for table `tblticketattachments`
--

DROP TABLE IF EXISTS `tblticketattachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketattachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `replyid` int(11) DEFAULT NULL,
  `file_name` mediumtext NOT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketattachments`
--

INSERT INTO `tblticketattachments` VALUES (1,1,NULL,'contact-page.jpg','image/jpeg','2017-10-01 15:33:36');
INSERT INTO `tblticketattachments` VALUES (2,1,1,'reserv.jpg','image/jpeg','2017-10-01 15:35:30');

--
-- Table structure for table `tblticketpipelog`
--

DROP TABLE IF EXISTS `tblticketpipelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketpipelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `email_to` varchar(500) NOT NULL,
  `name` varchar(200) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` mediumtext NOT NULL,
  `email` varchar(300) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketpipelog`
--


--
-- Table structure for table `tblticketreplies`
--

DROP TABLE IF EXISTS `tblticketreplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketreplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `name` text,
  `email` text,
  `date` datetime NOT NULL,
  `message` text,
  `attachment` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `ip` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketreplies`
--

INSERT INTO `tblticketreplies` VALUES (1,1,0,0,NULL,NULL,'2017-10-01 15:35:30','Hello&nbsp;',NULL,1,'::1');

--
-- Table structure for table `tbltickets`
--

DROP TABLE IF EXISTS `tbltickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltickets` (
  `ticketid` int(11) NOT NULL AUTO_INCREMENT,
  `adminreplying` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `email` text,
  `name` text,
  `department` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `service` int(11) DEFAULT NULL,
  `ticketkey` varchar(32) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message` text,
  `admin` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `lastreply` datetime DEFAULT NULL,
  `clientread` int(11) NOT NULL DEFAULT '0',
  `adminread` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) DEFAULT NULL,
  `assigned` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticketid`),
  KEY `service` (`service`),
  KEY `department` (`department`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `priority` (`priority`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltickets`
--

INSERT INTO `tbltickets` VALUES (1,0,1,1,NULL,NULL,1,3,2,0,'a6b6c8cd0e341eb4685f06a1277c44e3','Testttt','Test Descrrn ,n ,m n , nm',1,'2017-10-01 15:33:36',0,'2017-10-01 15:35:30',0,1,'::1',1);

--
-- Table structure for table `tblticketsspamcontrol`
--

DROP TABLE IF EXISTS `tblticketsspamcontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketsspamcontrol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(40) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketsspamcontrol`
--


--
-- Table structure for table `tblticketstatus`
--

DROP TABLE IF EXISTS `tblticketstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketstatus` (
  `ticketstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `isdefault` int(11) NOT NULL DEFAULT '0',
  `statuscolor` varchar(7) DEFAULT NULL,
  `statusorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketstatusid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketstatus`
--

INSERT INTO `tblticketstatus` VALUES (3,'Answered',1,'#0000ff',3);
INSERT INTO `tblticketstatus` VALUES (4,'On Hold',1,'#c0c0c0',4);
INSERT INTO `tblticketstatus` VALUES (2,'In progress',1,'#84c529',2);
INSERT INTO `tblticketstatus` VALUES (5,'Closed',1,'#03a9f4',5);
INSERT INTO `tblticketstatus` VALUES (1,'Open',1,'#ff2d42',1);

--
-- Table structure for table `tbltodoitems`
--

DROP TABLE IF EXISTS `tbltodoitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltodoitems` (
  `todoid` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `datefinished` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`todoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltodoitems`
--


--
-- Table structure for table `tbluserautologin`
--

DROP TABLE IF EXISTS `tbluserautologin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluserautologin` (
  `key_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(150) NOT NULL,
  `last_ip` varchar(40) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `staff` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluserautologin`
--

INSERT INTO `tbluserautologin` VALUES ('ddf79a392164b95e5b877eda1b2da773',1,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','::1','2017-10-01 09:41:41',1);

--
-- Table structure for table `tblvault`
--

DROP TABLE IF EXISTS `tblvault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblvault` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `server_address` varchar(400) NOT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(300) NOT NULL,
  `password` text NOT NULL,
  `description` text,
  `creator` int(11) NOT NULL,
  `creator_name` varchar(100) DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `last_updated` datetime DEFAULT NULL,
  `last_updated_from` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblvault`
--


--
-- Table structure for table `tblviewstracking`
--

DROP TABLE IF EXISTS `tblviewstracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblviewstracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `view_ip` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblviewstracking`
--


--
-- Table structure for table `tblwebtolead`
--

DROP TABLE IF EXISTS `tblwebtolead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblwebtolead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_key` varchar(32) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `notify_lead_imported` int(11) NOT NULL DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `responsible` int(11) NOT NULL DEFAULT '0',
  `name` varchar(400) NOT NULL,
  `form_data` mediumtext,
  `recaptcha` int(11) NOT NULL DEFAULT '0',
  `submit_btn_name` varchar(40) DEFAULT NULL,
  `success_submit_msg` text,
  `language` varchar(40) DEFAULT NULL,
  `allow_duplicate` int(11) NOT NULL DEFAULT '1',
  `mark_public` int(11) NOT NULL DEFAULT '0',
  `track_duplicate_field` varchar(20) DEFAULT NULL,
  `track_duplicate_field_and` varchar(20) DEFAULT NULL,
  `create_task_on_duplicate` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblwebtolead`
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-13  1:33:21
