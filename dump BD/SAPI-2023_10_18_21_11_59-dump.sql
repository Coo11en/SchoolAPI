-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: 
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!50606 SET @OLD_INNODB_STATS_AUTO_RECALC=@@INNODB_STATS_AUTO_RECALC */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=OFF */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mysql`;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `columns_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`User`,`Db`,`Table_name`,`Column_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component` (
  `component_id` int unsigned NOT NULL AUTO_INCREMENT,
  `component_group_id` int unsigned NOT NULL,
  `component_urn` text NOT NULL,
  PRIMARY KEY (`component_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='Components';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
INSERT INTO `component` VALUES (1,1,'file://component_validate_password');
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`User`,`Db`),
  KEY `User` (`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('localhost','performance_schema','mysql.session','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N'),('localhost','sys','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_roles`
--

DROP TABLE IF EXISTS `default_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_roles` (
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `DEFAULT_ROLE_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '%',
  `DEFAULT_ROLE_USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`HOST`,`USER`,`DEFAULT_ROLE_HOST`,`DEFAULT_ROLE_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Default roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_roles`
--

LOCK TABLES `default_roles` WRITE;
/*!40000 ALTER TABLE `default_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_cost`
--

DROP TABLE IF EXISTS `engine_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine_cost` (
  `engine_name` varchar(64) NOT NULL,
  `device_type` int NOT NULL,
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'io_block_read_cost' then 1.0 when _utf8mb3'memory_block_read_cost' then 0.25 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`,`engine_name`,`device_type`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_cost`
--

LOCK TABLES `engine_cost` WRITE;
/*!40000 ALTER TABLE `engine_cost` DISABLE KEYS */;
INSERT INTO `engine_cost` (`engine_name`, `device_type`, `cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('default',0,'io_block_read_cost',NULL,'2023-09-01 20:38:51',NULL),('default',0,'memory_block_read_cost',NULL,'2023-09-01 20:38:51',NULL);
/*!40000 ALTER TABLE `engine_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `ret` tinyint NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_grants`
--

DROP TABLE IF EXISTS `global_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_grants` (
  `USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `PRIV` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `WITH_GRANT_OPTION` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`USER`,`HOST`,`PRIV`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Extended global grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_grants`
--

LOCK TABLES `global_grants` WRITE;
/*!40000 ALTER TABLE `global_grants` DISABLE KEYS */;
INSERT INTO `global_grants` VALUES ('debian-sys-maint','localhost','APPLICATION_PASSWORD_ADMIN','Y'),('debian-sys-maint','localhost','AUDIT_ADMIN','Y'),('debian-sys-maint','localhost','AUTHENTICATION_POLICY_ADMIN','Y'),('debian-sys-maint','localhost','BACKUP_ADMIN','Y'),('debian-sys-maint','localhost','BINLOG_ADMIN','Y'),('debian-sys-maint','localhost','BINLOG_ENCRYPTION_ADMIN','Y'),('debian-sys-maint','localhost','CLONE_ADMIN','Y'),('debian-sys-maint','localhost','CONNECTION_ADMIN','Y'),('debian-sys-maint','localhost','ENCRYPTION_KEY_ADMIN','Y'),('debian-sys-maint','localhost','FLUSH_OPTIMIZER_COSTS','Y'),('debian-sys-maint','localhost','FLUSH_STATUS','Y'),('debian-sys-maint','localhost','FLUSH_TABLES','Y'),('debian-sys-maint','localhost','FLUSH_USER_RESOURCES','Y'),('debian-sys-maint','localhost','GROUP_REPLICATION_ADMIN','Y'),('debian-sys-maint','localhost','GROUP_REPLICATION_STREAM','Y'),('debian-sys-maint','localhost','INNODB_REDO_LOG_ARCHIVE','Y'),('debian-sys-maint','localhost','INNODB_REDO_LOG_ENABLE','Y'),('debian-sys-maint','localhost','PASSWORDLESS_USER_ADMIN','Y'),('debian-sys-maint','localhost','PERSIST_RO_VARIABLES_ADMIN','Y'),('debian-sys-maint','localhost','REPLICATION_APPLIER','Y'),('debian-sys-maint','localhost','REPLICATION_SLAVE_ADMIN','Y'),('debian-sys-maint','localhost','RESOURCE_GROUP_ADMIN','Y'),('debian-sys-maint','localhost','RESOURCE_GROUP_USER','Y'),('debian-sys-maint','localhost','ROLE_ADMIN','Y'),('debian-sys-maint','localhost','SENSITIVE_VARIABLES_OBSERVER','Y'),('debian-sys-maint','localhost','SERVICE_CONNECTION_ADMIN','Y'),('debian-sys-maint','localhost','SESSION_VARIABLES_ADMIN','Y'),('debian-sys-maint','localhost','SET_USER_ID','Y'),('debian-sys-maint','localhost','SHOW_ROUTINE','Y'),('debian-sys-maint','localhost','SYSTEM_USER','Y'),('debian-sys-maint','localhost','SYSTEM_VARIABLES_ADMIN','Y'),('debian-sys-maint','localhost','TABLE_ENCRYPTION_ADMIN','Y'),('debian-sys-maint','localhost','TELEMETRY_LOG_ADMIN','Y'),('debian-sys-maint','localhost','XA_RECOVER_ADMIN','Y'),('mysql.infoschema','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.infoschema','localhost','FIREWALL_EXEMPT','N'),('mysql.infoschema','localhost','SYSTEM_USER','N'),('mysql.session','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.session','localhost','AUTHENTICATION_POLICY_ADMIN','N'),('mysql.session','localhost','BACKUP_ADMIN','N'),('mysql.session','localhost','CLONE_ADMIN','N'),('mysql.session','localhost','CONNECTION_ADMIN','N'),('mysql.session','localhost','FIREWALL_EXEMPT','N'),('mysql.session','localhost','PERSIST_RO_VARIABLES_ADMIN','N'),('mysql.session','localhost','SESSION_VARIABLES_ADMIN','N'),('mysql.session','localhost','SYSTEM_USER','N'),('mysql.session','localhost','SYSTEM_VARIABLES_ADMIN','N'),('mysql.sys','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.sys','localhost','FIREWALL_EXEMPT','N'),('mysql.sys','localhost','SYSTEM_USER','N'),('root','localhost','APPLICATION_PASSWORD_ADMIN','Y'),('root','localhost','AUDIT_ABORT_EXEMPT','Y'),('root','localhost','AUDIT_ADMIN','Y'),('root','localhost','AUTHENTICATION_POLICY_ADMIN','Y'),('root','localhost','BACKUP_ADMIN','Y'),('root','localhost','BINLOG_ADMIN','Y'),('root','localhost','BINLOG_ENCRYPTION_ADMIN','Y'),('root','localhost','CLONE_ADMIN','Y'),('root','localhost','CONNECTION_ADMIN','Y'),('root','localhost','ENCRYPTION_KEY_ADMIN','Y'),('root','localhost','FIREWALL_EXEMPT','Y'),('root','localhost','FLUSH_OPTIMIZER_COSTS','Y'),('root','localhost','FLUSH_STATUS','Y'),('root','localhost','FLUSH_TABLES','Y'),('root','localhost','FLUSH_USER_RESOURCES','Y'),('root','localhost','GROUP_REPLICATION_ADMIN','Y'),('root','localhost','GROUP_REPLICATION_STREAM','Y'),('root','localhost','INNODB_REDO_LOG_ARCHIVE','Y'),('root','localhost','INNODB_REDO_LOG_ENABLE','Y'),('root','localhost','PASSWORDLESS_USER_ADMIN','Y'),('root','localhost','PERSIST_RO_VARIABLES_ADMIN','Y'),('root','localhost','REPLICATION_APPLIER','Y'),('root','localhost','REPLICATION_SLAVE_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_USER','Y'),('root','localhost','ROLE_ADMIN','Y'),('root','localhost','SENSITIVE_VARIABLES_OBSERVER','Y'),('root','localhost','SERVICE_CONNECTION_ADMIN','Y'),('root','localhost','SESSION_VARIABLES_ADMIN','Y'),('root','localhost','SET_USER_ID','Y'),('root','localhost','SHOW_ROUTINE','Y'),('root','localhost','SYSTEM_USER','Y'),('root','localhost','SYSTEM_VARIABLES_ADMIN','Y'),('root','localhost','TABLE_ENCRYPTION_ADMIN','Y'),('root','localhost','TELEMETRY_LOG_ADMIN','Y'),('root','localhost','XA_RECOVER_ADMIN','Y');
/*!40000 ALTER TABLE `global_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gtid_executed`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `gtid_executed` (
  `source_uuid` char(36) NOT NULL COMMENT 'uuid of the source where the transaction was originally executed.',
  `interval_start` bigint NOT NULL COMMENT 'First number of interval.',
  `interval_end` bigint NOT NULL COMMENT 'Last number of interval.',
  PRIMARY KEY (`source_uuid`,`interval_start`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (0,'Contents',0,''),(1,'Help Metadata',0,''),(2,'Data Types',0,''),(3,'Administration',0,''),(4,'Functions',0,''),(5,'Enterprise Encryption Functions',4,''),(6,'Language Structure',0,''),(7,'Geographic Features',0,''),(8,'MBR',7,''),(9,'WKT',7,''),(10,'Comparison Operators',4,''),(11,'Logical Operators',4,''),(12,'Flow Control Functions',4,''),(13,'Numeric Functions',4,''),(14,'Date and Time Functions',4,''),(15,'String Functions',4,''),(16,'Cast Functions and Operators',4,''),(17,'XML',4,''),(18,'Bit Functions',4,''),(19,'Encryption Functions',4,''),(20,'Locking Functions',4,''),(21,'Information Functions',4,''),(22,'Spatial Functions',4,''),(23,'WKT Functions',22,''),(24,'WKB Functions',22,''),(25,'Geometry Constructors',22,''),(26,'Geometry Property Functions',22,''),(27,'Point Property Functions',22,''),(28,'LineString Property Functions',22,''),(29,'Polygon Property Functions',22,''),(30,'GeometryCollection Property Functions',22,''),(31,'Geometry Relation Functions',22,''),(32,'MBR Functions',22,''),(33,'GTID',4,''),(34,'Aggregate Functions and Modifiers',4,''),(35,'GROUP BY Functions and Modifiers',4,''),(36,'Window Functions',4,''),(37,'Performance Schema Functions',4,''),(38,'Internal Functions',4,''),(39,'Miscellaneous Functions',4,''),(40,'Data Definition',0,''),(41,'Data Manipulation',0,''),(42,'Transactions',0,''),(43,'Replication Statements',0,''),(44,'Prepared Statements',0,''),(45,'Compound Statements',0,''),(46,'Account Management',0,''),(47,'Table Maintenance',0,''),(48,'Loadable Functions',0,''),(49,'Components',0,''),(50,'Plugins',0,''),(51,'Utility',0,''),(52,'Storage Engines',0,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (108,'%'),(264,'&'),(422,'(JSON'),(86,'*'),(84,'+'),(85,'-'),(423,'->'),(425,'->>'),(87,'/'),(75,':='),(59,'<'),(266,'<<'),(58,'<='),(56,'<=>'),(57,'<>'),(55,'='),(61,'>'),(60,'>='),(267,'>>'),(90,'ABS'),(881,'ACCOUNT'),(91,'ACOS'),(659,'ACTION'),(49,'ADD'),(120,'ADDDATE'),(121,'ADDTIME'),(915,'ADMIN'),(270,'AES_DECRYPT'),(271,'AES_ENCRYPT'),(581,'AFTER'),(247,'AGAINST'),(936,'AGGREGATE'),(582,'ALGORITHM'),(695,'ALL'),(50,'ALTER'),(583,'ANALYZE'),(62,'AND'),(528,'ANY_VALUE'),(660,'ARCHIVE'),(254,'ARRAY'),(724,'AS'),(466,'ASC'),(185,'ASCII'),(92,'ASIN'),(776,'ASSIGN_GTIDS_TO_ANONYMOUS_TRANSACTIONS'),(6,'ASYMMETRIC_DECRYPT'),(13,'ASYMMETRIC_DERIVE'),(7,'ASYMMETRIC_ENCRYPT'),(8,'ASYMMETRIC_SIGN'),(9,'ASYMMETRIC_VERIFY'),(643,'AT'),(93,'ATAN'),(94,'ATAN2'),(882,'ATTRIBUTE'),(913,'AUTHENTICATION'),(745,'AUTOCOMMIT'),(584,'AUTOEXTEND_SIZE'),(585,'AUTO_INCREMENT'),(460,'AVG'),(586,'AVG_ROW_LENGTH'),(757,'BACKUP'),(771,'BEFORE'),(746,'BEGIN'),(288,'BENCHMARK'),(63,'BETWEEN'),(186,'BIN'),(253,'BINARY'),(563,'BINLOG'),(529,'BIN_TO_UUID'),(462,'BIT_AND'),(269,'BIT_COUNT'),(187,'BIT_LENGTH'),(463,'BIT_OR'),(464,'BIT_XOR'),(17,'BOOL'),(18,'BOOLEAN'),(230,'BOTH'),(647,'BTREE'),(467,'BY'),(42,'BYTE'),(971,'CACHE'),(689,'CALL'),(499,'CAN_ACCESS_COLUMN'),(500,'CAN_ACCESS_DATABASE'),(501,'CAN_ACCESS_TABLE'),(502,'CAN_ACCESS_USER'),(503,'CAN_ACCESS_VIEW'),(661,'CASCADE'),(76,'CASE'),(255,'CAST'),(862,'CATALOG_NAME'),(95,'CEIL'),(96,'CEILING'),(747,'CHAIN'),(883,'CHALLENGE_RESPONSE'),(587,'CHANGE'),(564,'CHANNEL'),(43,'CHAR'),(39,'CHARACTER'),(189,'CHARACTER_LENGTH'),(289,'CHARSET'),(188,'CHAR_LENGTH'),(588,'CHECK'),(589,'CHECKSUM'),(884,'CIPHER'),(863,'CLASS_ORIGIN'),(916,'CLIENT'),(944,'CLONE'),(697,'CLOSE'),(65,'COALESCE'),(965,'CODE'),(290,'COERCIBILITY'),(546,'COLLATE'),(291,'COLLATION'),(590,'COLUMN'),(591,'COLUMNS'),(864,'COLUMN_NAME'),(551,'COMMENT'),(748,'COMMIT'),(760,'COMMITTED'),(662,'COMPACT'),(552,'COMPLETION'),(940,'COMPONENT'),(272,'COMPRESS'),(663,'COMPRESSED'),(592,'COMPRESSION'),(190,'CONCAT'),(191,'CONCAT_WS'),(711,'CONCURRENT'),(859,'CONDITION'),(593,'CONNECTION'),(292,'CONNECTION_ID'),(749,'CONSISTENT'),(594,'CONSTRAINT'),(865,'CONSTRAINT_CATALOG'),(866,'CONSTRAINT_NAME'),(867,'CONSTRAINT_SCHEMA'),(860,'CONTINUE'),(97,'CONV'),(260,'CONVERT'),(122,'CONVERT_TZ'),(98,'COS'),(99,'COT'),(465,'COUNT'),(100,'CRC32'),(51,'CREATE'),(10,'CREATE_ASYMMETRIC_PRIV_KEY'),(11,'CREATE_ASYMMETRIC_PUB_KEY'),(14,'CREATE_DH_PARAMETERS'),(12,'CREATE_DIGEST'),(740,'CROSS'),(664,'CSV'),(484,'CUME_DIST'),(123,'CURDATE'),(885,'CURRENT'),(124,'CURRENT_DATE'),(293,'CURRENT_ROLE'),(125,'CURRENT_TIME'),(126,'CURRENT_TIMESTAMP'),(294,'CURRENT_USER'),(857,'CURSOR'),(868,'CURSOR_NAME'),(127,'CURTIME'),(595,'DATA'),(295,'DATABASE'),(949,'DATABASES'),(636,'DATAFILE'),(36,'DATE'),(128,'DATEDIFF'),(256,'DATETIME'),(129,'DATE_ADD'),(144,'DATE_FORMAT'),(130,'DATE_SUB'),(131,'DAY'),(145,'DAYNAME'),(146,'DAYOFMONTH'),(147,'DAYOFWEEK'),(148,'DAYOFYEAR'),(132,'DAY_HOUR'),(133,'DAY_MINUTE'),(134,'DAY_SECOND'),(848,'DEALLOCATE'),(28,'DEC'),(31,'DECIMAL'),(849,'DECLARE'),(2,'DEFAULT'),(839,'DEFAULT_AUTH'),(553,'DEFINER'),(653,'DEFINITION'),(101,'DEGREES'),(703,'DELAYED'),(596,'DELAY_KEY_WRITE'),(665,'DELETE'),(485,'DENSE_RANK'),(468,'DESC'),(982,'DESCRIBE'),(654,'DESCRIPTION'),(869,'DIAGNOSTICS'),(597,'DIRECTORY'),(554,'DISABLE'),(598,'DISCARD'),(461,'DISTINCT'),(725,'DISTINCTROW'),(88,'DIV'),(555,'DO'),(599,'DROP'),(739,'DUAL'),(726,'DUMPFILE'),(704,'DUPLICATE'),(666,'DYNAMIC'),(77,'ELSE'),(850,'ELSEIF'),(192,'ELT'),(556,'ENABLE'),(712,'ENCLOSED'),(547,'ENCRYPTION'),(78,'END'),(644,'ENDS'),(600,'ENGINE'),(950,'ENGINES'),(565,'ERROR'),(951,'ERRORS'),(239,'ESCAPE'),(713,'ESCAPED'),(557,'EVENT'),(963,'EVENTS'),(645,'EVERY'),(696,'EXCEPT'),(601,'EXCHANGE'),(847,'EXECUTE'),(642,'EXISTS'),(861,'EXIT'),(102,'EXP'),(248,'EXPANSION'),(886,'EXPIRE'),(983,'EXPLAIN'),(972,'EXPORT'),(193,'EXPORT_SET'),(934,'EXTENDED'),(682,'EXTENT_SIZE'),(149,'EXTRACT'),(424,'EXTRACTION)'),(261,'EXTRACTVALUE'),(887,'FACTOR'),(888,'FAILED_LOGIN_ATTEMPTS'),(15,'FALSE'),(932,'FAST'),(667,'FEDERATED'),(858,'FETCH'),(194,'FIELD'),(714,'FIELDS'),(917,'FILE'),(683,'FILE_BLOCK_SIZE'),(805,'FILTER'),(195,'FIND_IN_SET'),(889,'FINISH'),(602,'FIRST'),(486,'FIRST_VALUE'),(29,'FIXED'),(32,'FLOAT4'),(33,'FLOAT8'),(103,'FLOOR'),(973,'FLUSH'),(566,'FOR'),(741,'FORCE'),(603,'FOREIGN'),(196,'FORMAT'),(495,'FORMAT_BYTES'),(496,'FORMAT_PICO_TIME'),(296,'FOUND_ROWS'),(231,'FROM'),(197,'FROM_BASE64'),(150,'FROM_DAYS'),(151,'FROM_UNIXTIME'),(668,'FULL'),(604,'FULLTEXT'),(169,'FUNCTION'),(974,'GENERAL'),(336,'GEOMCOLLECTION'),(337,'GEOMETRYCOLLECTION'),(870,'GET'),(504,'GET_DD_COLUMN_PRIVILEGES'),(505,'GET_DD_CREATE_OPTIONS'),(506,'GET_DD_INDEX_SUB_PART_LENGTH'),(152,'GET_FORMAT'),(283,'GET_LOCK'),(761,'GLOBAL'),(918,'GRANT'),(952,'GRANTS'),(66,'GREATEST'),(576,'GROUP'),(530,'GROUPING'),(469,'GROUP_CONCAT'),(454,'GTID_SUBSET'),(455,'GTID_SUBTRACT'),(698,'HANDLER'),(727,'HAVING'),(669,'HEAP'),(5,'HELP'),(0,'HELP_DATE'),(1,'HELP_VERSION'),(198,'HEX'),(705,'HIGH_PRIORITY'),(890,'HISTORY'),(648,'HOST'),(953,'HOSTS'),(135,'HOUR'),(136,'HOUR_MINUTE'),(137,'HOUR_SECOND'),(297,'ICU_VERSION'),(722,'IDENTIFIED'),(81,'IF'),(82,'IFNULL'),(706,'IGNORE'),(777,'IGNORE_SERVER_IDS'),(605,'IMPORT'),(67,'IN'),(52,'INDEX'),(954,'INDEXES'),(533,'INET6_ATON'),(534,'INET6_NTOA'),(531,'INET_ATON'),(532,'INET_NTOA'),(715,'INFILE'),(914,'INITIAL'),(637,'INITIAL_SIZE'),(891,'INITIATE'),(426,'INLINE'),(742,'INNER'),(567,'INNODB'),(199,'INSERT'),(606,'INSERT_METHOD'),(941,'INSTALL'),(568,'INSTANCE'),(200,'INSTR'),(19,'INT1'),(22,'INT2'),(23,'INT3'),(25,'INT4'),(27,'INT8'),(26,'INTEGER'),(507,'INTERNAL_AUTO_INCREMENT'),(508,'INTERNAL_AVG_ROW_LENGTH'),(510,'INTERNAL_CHECKSUM'),(509,'INTERNAL_CHECK_TIME'),(511,'INTERNAL_DATA_FREE'),(512,'INTERNAL_DATA_LENGTH'),(513,'INTERNAL_DD_CHAR_LENGTH'),(514,'INTERNAL_GET_COMMENT_OR_ERROR'),(515,'INTERNAL_GET_ENABLED_ROLE_JSON'),(516,'INTERNAL_GET_HOSTNAME'),(517,'INTERNAL_GET_USERNAME'),(518,'INTERNAL_GET_VIEW_WARNING_OR_ERROR'),(519,'INTERNAL_INDEX_COLUMN_CARDINALITY'),(520,'INTERNAL_INDEX_LENGTH'),(521,'INTERNAL_IS_ENABLED_ROLE'),(522,'INTERNAL_IS_MANDATORY_ROLE'),(523,'INTERNAL_KEYS_DISABLED'),(524,'INTERNAL_MAX_DATA_LENGTH'),(525,'INTERNAL_TABLE_ROWS'),(526,'INTERNAL_UPDATE_TIME'),(710,'INTERSECT'),(68,'INTERVAL'),(707,'INTO'),(607,'INVISIBLE'),(840,'IO_THREAD'),(69,'IS'),(71,'ISNULL'),(762,'ISOLATION'),(892,'ISSUER'),(284,'IS_FREE_LOCK'),(535,'IS_IPV4'),(536,'IS_IPV4_COMPAT'),(537,'IS_IPV4_MAPPED'),(538,'IS_IPV6'),(285,'IS_USED_LOCK'),(539,'IS_UUID'),(527,'IS_VISIBLE_DD_OBJECT'),(851,'ITERATE'),(728,'JOIN'),(257,'JSON'),(416,'JSON_ARRAY'),(472,'JSON_ARRAYAGG'),(434,'JSON_ARRAY_APPEND'),(435,'JSON_ARRAY_INSERT'),(419,'JSON_CONTAINS'),(420,'JSON_CONTAINS_PATH'),(444,'JSON_DEPTH'),(421,'JSON_EXTRACT'),(436,'JSON_INSERT'),(428,'JSON_KEYS'),(445,'JSON_LENGTH'),(437,'JSON_MERGE'),(438,'JSON_MERGE_PATCH'),(439,'JSON_MERGE_PRESERVE'),(417,'JSON_OBJECT'),(473,'JSON_OBJECTAGG'),(429,'JSON_OVERLAPS'),(451,'JSON_PRETTY'),(418,'JSON_QUOTE'),(440,'JSON_REMOVE'),(441,'JSON_REPLACE'),(449,'JSON_SCHEMA_VALID'),(450,'JSON_SCHEMA_VALIDATION_REPORT'),(430,'JSON_SEARCH'),(442,'JSON_SET'),(452,'JSON_STORAGE_FREE'),(453,'JSON_STORAGE_SIZE'),(448,'JSON_TABLE'),(446,'JSON_TYPE'),(443,'JSON_UNQUOTE'),(447,'JSON_VALID'),(431,'JSON_VALUE'),(53,'KEY'),(569,'KEYRING'),(608,'KEYS'),(609,'KEY_BLOCK_SIZE'),(979,'KILL'),(487,'LAG'),(699,'LAST'),(153,'LAST_DAY'),(298,'LAST_INSERT_ID'),(488,'LAST_VALUE'),(201,'LCASE'),(489,'LEAD'),(232,'LEADING'),(72,'LEAST'),(852,'LEAVE'),(980,'LEAVES'),(202,'LEFT'),(203,'LENGTH'),(763,'LEVEL'),(223,'LIKE'),(690,'LIMIT'),(716,'LINES'),(338,'LINESTRING'),(104,'LN'),(717,'LOAD'),(204,'LOAD_FILE'),(718,'LOCAL'),(154,'LOCALTIME'),(155,'LOCALTIMESTAMP'),(205,'LOCATE'),(610,'LOCK'),(105,'LOG'),(107,'LOG10'),(106,'LOG2'),(577,'LOGFILE'),(772,'LOGS'),(47,'LONG'),(48,'LONGBINARY'),(853,'LOOP'),(206,'LOWER'),(691,'LOW_PRIORITY'),(207,'LPAD'),(208,'LTRIM'),(156,'MAKEDATE'),(157,'MAKETIME'),(209,'MAKE_SET'),(570,'MASTER'),(778,'MASTER_AUTO_POSITION'),(779,'MASTER_BIND'),(780,'MASTER_COMPRESSION_ALGORITHMS'),(781,'MASTER_CONNECT_RETRY'),(782,'MASTER_HEARTBEAT_PERIOD'),(783,'MASTER_HOST'),(784,'MASTER_LOG_FILE'),(785,'MASTER_LOG_POS'),(786,'MASTER_PASSWORD'),(787,'MASTER_PORT'),(458,'MASTER_POS_WAIT'),(788,'MASTER_RETRY_COUNT'),(789,'MASTER_SSL'),(790,'MASTER_SSL_CA'),(791,'MASTER_SSL_CERT'),(792,'MASTER_SSL_CIPHER'),(793,'MASTER_SSL_CRL'),(794,'MASTER_SSL_CRLPATH'),(795,'MASTER_SSL_KEY'),(796,'MASTER_SSL_VERIFY_SERVER_CERT'),(797,'MASTER_TLS_CIPHERSUITES'),(798,'MASTER_TLS_VERSION'),(799,'MASTER_USER'),(800,'MASTER_ZSTD_COMPRESSION_LEVEL'),(249,'MATCH'),(474,'MAX'),(893,'MAX_CONNECTIONS_PER_HOUR'),(894,'MAX_QUERIES_PER_HOUR'),(611,'MAX_ROWS'),(684,'MAX_SIZE'),(895,'MAX_UPDATES_PER_HOUR'),(896,'MAX_USER_CONNECTIONS'),(395,'MBRCONTAINS'),(396,'MBRCOVEREDBY'),(397,'MBRCOVERS'),(398,'MBRDISJOINT'),(399,'MBREQUALS'),(400,'MBRINTERSECTS'),(401,'MBROVERLAPS'),(402,'MBRTOUCHES'),(403,'MBRWITHIN'),(273,'MD5'),(933,'MEDIUM'),(432,'MEMBER'),(729,'MEMORY'),(670,'MERGE'),(871,'MESSAGE_TEXT'),(158,'MICROSECOND'),(210,'MID'),(24,'MIDDLEINT'),(475,'MIN'),(138,'MINUTE'),(139,'MINUTE_SECOND'),(612,'MIN_ROWS'),(89,'MOD'),(250,'MODE'),(613,'MODIFY'),(140,'MONTH'),(159,'MONTHNAME'),(671,'MRG_MYISAM'),(339,'MULTILINESTRING'),(340,'MULTIPOINT'),(341,'MULTIPOLYGON'),(955,'MUTEX'),(672,'MYISAM'),(872,'MYSQL_ERRNO'),(655,'NAME'),(948,'NAMES'),(540,'NAME_CONST'),(40,'NATIONAL'),(743,'NATURAL'),(41,'NCHAR'),(673,'NDB'),(674,'NDBCLUSTER'),(801,'NETWORK_NAMESPACE'),(897,'NEVER'),(700,'NEXT'),(571,'NO'),(685,'NODEGROUP'),(898,'NONE'),(64,'NOT'),(160,'NOW'),(931,'NO_WRITE_TO_BINLOG'),(490,'NTH_VALUE'),(491,'NTILE'),(70,'NULL'),(83,'NULLIF'),(873,'NUMBER'),(30,'NUMERIC'),(44,'NVARCHAR'),(211,'OCT'),(212,'OCTET_LENGTH'),(433,'OF'),(730,'OFFSET'),(899,'OLD'),(558,'ON'),(548,'ONLY'),(701,'OPEN'),(614,'OPTIMIZE'),(975,'OPTIMIZER_COSTS'),(919,'OPTION'),(900,'OPTIONAL'),(719,'OPTIONALLY'),(579,'OPTIONS'),(73,'OR'),(213,'ORD'),(470,'ORDER'),(656,'ORGANIZATION'),(744,'OUTER'),(731,'OUTFILE'),(649,'OWNER'),(615,'PACK_KEYS'),(616,'PARSER'),(675,'PARTIAL'),(617,'PARTITION'),(618,'PARTITIONING'),(619,'PASSWORD'),(901,'PASSWORD_LOCK_TIME'),(427,'PATH)'),(492,'PERCENT_RANK'),(161,'PERIOD_ADD'),(162,'PERIOD_DIFF'),(945,'PERSIST'),(946,'PERSIST_ONLY'),(109,'PI'),(942,'PLUGIN'),(966,'PLUGINS'),(841,'PLUGIN_DIR'),(342,'POINT'),(343,'POLYGON'),(650,'PORT'),(214,'POSITION'),(110,'POW'),(111,'POWER'),(34,'PRECISION'),(768,'PREPARE'),(559,'PRESERVE'),(702,'PREV'),(620,'PRIMARY'),(920,'PRIVILEGES'),(802,'PRIVILEGE_CHECKS_USER'),(578,'PROCEDURE'),(921,'PROCESS'),(956,'PROCESSLIST'),(967,'PROFILE'),(968,'PROFILES'),(925,'PROXY'),(497,'PS_CURRENT_THREAD_ID'),(498,'PS_THREAD_ID'),(773,'PURGE'),(163,'QUARTER'),(251,'QUERY'),(692,'QUICK'),(215,'QUOTE'),(112,'RADIANS'),(113,'RAND'),(902,'RANDOM'),(274,'RANDOM_BYTES'),(493,'RANK'),(549,'READ'),(35,'REAL'),(621,'REBUILD'),(769,'RECOVER'),(572,'REDO_LOG'),(676,'REDUNDANT'),(657,'REFERENCE'),(677,'REFERENCES'),(241,'REGEXP'),(243,'REGEXP_INSTR'),(244,'REGEXP_LIKE'),(245,'REGEXP_REPLACE'),(246,'REGEXP_SUBSTR'),(903,'REGISTRATION'),(976,'RELAY'),(969,'RELAYLOG'),(803,'RELAY_LOG_FILE'),(804,'RELAY_LOG_POS'),(750,'RELEASE'),(286,'RELEASE_ALL_LOCKS'),(287,'RELEASE_LOCK'),(573,'RELOAD'),(622,'REMOVE'),(560,'RENAME'),(623,'REORGANIZE'),(624,'REPAIR'),(216,'REPEAT'),(764,'REPEATABLE'),(217,'REPLACE'),(838,'REPLICA'),(970,'REPLICAS'),(806,'REPLICATE_DO_DB'),(807,'REPLICATE_DO_TABLE'),(808,'REPLICATE_IGNORE_DB'),(809,'REPLICATE_IGNORE_TABLE'),(810,'REPLICATE_REWRITE_DB'),(811,'REPLICATE_WILD_DO_TABLE'),(812,'REPLICATE_WILD_IGNORE_TABLE'),(813,'REPLICATION'),(904,'REQUIRE'),(774,'RESET'),(878,'RESIGNAL'),(928,'RESOURCE'),(981,'RESTART'),(680,'RESTRICT'),(905,'RETAIN'),(855,'RETURN'),(874,'RETURNED_SQLSTATE'),(937,'RETURNS'),(906,'REUSE'),(218,'REVERSE'),(926,'REVOKE'),(219,'RIGHT'),(242,'RLIKE'),(907,'ROLE'),(299,'ROLES_GRAPHML'),(574,'ROLLBACK'),(114,'ROUND'),(708,'ROW'),(723,'ROWS'),(300,'ROW_COUNT'),(625,'ROW_FORMAT'),(494,'ROW_NUMBER'),(220,'RPAD'),(221,'RTRIM'),(756,'SAVEPOINT'),(561,'SCHEDULE'),(301,'SCHEMA'),(957,'SCHEMAS'),(875,'SCHEMA_NAME'),(141,'SECOND'),(164,'SEC_TO_TIME'),(709,'SELECT'),(471,'SEPARATOR'),(3,'SERIAL'),(765,'SERIALIZABLE'),(580,'SERVER'),(766,'SESSION'),(302,'SESSION_USER'),(550,'SET'),(275,'SHA'),(276,'SHA1'),(277,'SHA2'),(732,'SHARE'),(958,'SHOW'),(922,'SHUTDOWN'),(115,'SIGN'),(880,'SIGNAL'),(258,'SIGNED'),(116,'SIN'),(562,'SLAVE'),(541,'SLEEP'),(977,'SLOW'),(751,'SNAPSHOT'),(651,'SOCKET'),(938,'SONAME'),(222,'SOUNDEX'),(224,'SOUNDS'),(814,'SOURCE'),(815,'SOURCE_AUTO_POSITION'),(816,'SOURCE_BIND'),(817,'SOURCE_COMPRESSION_ALGORITHMS'),(818,'SOURCE_CONNECT_RETRY'),(819,'SOURCE_HEARTBEAT_PERIOD'),(820,'SOURCE_HOST'),(821,'SOURCE_LOG_FILE'),(822,'SOURCE_LOG_POS'),(823,'SOURCE_PASSWORD'),(824,'SOURCE_PORT'),(459,'SOURCE_POS_WAIT'),(825,'SOURCE_RETRY_COUNT'),(826,'SOURCE_SSL'),(827,'SOURCE_SSL_CA'),(828,'SOURCE_SSL_CERT'),(829,'SOURCE_SSL_CIPHER'),(830,'SOURCE_SSL_CRL'),(831,'SOURCE_SSL_CRLPATH'),(832,'SOURCE_SSL_KEY'),(833,'SOURCE_SSL_VERIFY_SERVER_CERT'),(834,'SOURCE_TLS_CIPHERSUITES'),(835,'SOURCE_TLS_VERSION'),(836,'SOURCE_USER'),(837,'SOURCE_ZSTD_COMPRESSION_LEVEL'),(225,'SPACE'),(626,'SPATIAL'),(879,'SQLSTATE'),(842,'SQL_AFTER_GTIDS'),(843,'SQL_AFTER_MTS_GAPS'),(844,'SQL_BEFORE_GTIDS'),(733,'SQL_BIG_RESULT'),(734,'SQL_BUFFER_RESULT'),(735,'SQL_CALC_FOUND_ROWS'),(775,'SQL_LOG_BIN'),(736,'SQL_NO_CACHE'),(737,'SQL_SMALL_RESULT'),(845,'SQL_THREAD'),(117,'SQRT'),(908,'SSL'),(752,'START'),(720,'STARTING'),(646,'STARTS'),(278,'STATEMENT_DIGEST'),(279,'STATEMENT_DIGEST_TEXT'),(627,'STATS_AUTO_RECALC'),(628,'STATS_PERSISTENT'),(629,'STATS_SAMPLE_PAGES'),(959,'STATUS'),(476,'STD'),(477,'STDDEV'),(478,'STDDEV_POP'),(479,'STDDEV_SAMP'),(846,'STOP'),(964,'STORAGE'),(678,'STORED'),(738,'STRAIGHT_JOIN'),(240,'STRCMP'),(939,'STRING'),(165,'STR_TO_DATE'),(365,'ST_AREA'),(344,'ST_ASBINARY'),(408,'ST_ASGEOJSON'),(346,'ST_ASTEXT'),(345,'ST_ASWKB'),(347,'ST_ASWKT'),(373,'ST_BUFFER'),(374,'ST_BUFFER_STRATEGY'),(366,'ST_CENTROID'),(410,'ST_COLLECT'),(384,'ST_CONTAINS'),(375,'ST_CONVEXHULL'),(385,'ST_CROSSES'),(376,'ST_DIFFERENCE'),(349,'ST_DIMENSION'),(386,'ST_DISJOINT'),(387,'ST_DISTANCE'),(411,'ST_DISTANCE_SPHERE'),(359,'ST_ENDPOINT'),(350,'ST_ENVELOPE'),(388,'ST_EQUALS'),(367,'ST_EXTERIORRING'),(389,'ST_FRECHETDISTANCE'),(404,'ST_GEOHASH'),(306,'ST_GEOMCOLLFROMTEXT'),(321,'ST_GEOMCOLLFROMWKB'),(307,'ST_GEOMETRYCOLLECTIONFROMTEXT'),(322,'ST_GEOMETRYCOLLECTIONFROMWKB'),(308,'ST_GEOMETRYFROMTEXT'),(323,'ST_GEOMETRYFROMWKB'),(371,'ST_GEOMETRYN'),(351,'ST_GEOMETRYTYPE'),(409,'ST_GEOMFROMGEOJSON'),(309,'ST_GEOMFROMTEXT'),(324,'ST_GEOMFROMWKB'),(390,'ST_HAUSDORFFDISTANCE'),(368,'ST_INTERIORRINGN'),(377,'ST_INTERSECTION'),(391,'ST_INTERSECTS'),(360,'ST_ISCLOSED'),(352,'ST_ISEMPTY'),(353,'ST_ISSIMPLE'),(412,'ST_ISVALID'),(405,'ST_LATFROMGEOHASH'),(355,'ST_LATITUDE'),(361,'ST_LENGTH'),(310,'ST_LINEFROMTEXT'),(325,'ST_LINEFROMWKB'),(378,'ST_LINEINTERPOLATEPOINT'),(379,'ST_LINEINTERPOLATEPOINTS'),(311,'ST_LINESTRINGFROMTEXT'),(326,'ST_LINESTRINGFROMWKB'),(406,'ST_LONGFROMGEOHASH'),(356,'ST_LONGITUDE'),(413,'ST_MAKEENVELOPE'),(312,'ST_MLINEFROMTEXT'),(327,'ST_MLINEFROMWKB'),(314,'ST_MPOINTFROMTEXT'),(329,'ST_MPOINTFROMWKB'),(316,'ST_MPOLYFROMTEXT'),(331,'ST_MPOLYFROMWKB'),(313,'ST_MULTILINESTRINGFROMTEXT'),(328,'ST_MULTILINESTRINGFROMWKB'),(315,'ST_MULTIPOINTFROMTEXT'),(330,'ST_MULTIPOINTFROMWKB'),(317,'ST_MULTIPOLYGONFROMTEXT'),(332,'ST_MULTIPOLYGONFROMWKB'),(372,'ST_NUMGEOMETRIES'),(369,'ST_NUMINTERIORRING'),(370,'ST_NUMINTERIORRINGS'),(362,'ST_NUMPOINTS'),(392,'ST_OVERLAPS'),(380,'ST_POINTATDISTANCE'),(407,'ST_POINTFROMGEOHASH'),(318,'ST_POINTFROMTEXT'),(333,'ST_POINTFROMWKB'),(363,'ST_POINTN'),(319,'ST_POLYFROMTEXT'),(334,'ST_POLYFROMWKB'),(320,'ST_POLYGONFROMTEXT'),(335,'ST_POLYGONFROMWKB'),(414,'ST_SIMPLIFY'),(354,'ST_SRID'),(364,'ST_STARTPOINT'),(348,'ST_SWAPXY'),(381,'ST_SYMDIFFERENCE'),(393,'ST_TOUCHES'),(382,'ST_TRANSFORM'),(383,'ST_UNION'),(415,'ST_VALIDATE'),(394,'ST_WITHIN'),(357,'ST_X'),(358,'ST_Y'),(876,'SUBCLASS_ORIGIN'),(166,'SUBDATE'),(909,'SUBJECT'),(226,'SUBSTR'),(227,'SUBSTRING'),(228,'SUBSTRING_INDEX'),(167,'SUBTIME'),(480,'SUM'),(923,'SUPER'),(168,'SYSDATE'),(658,'SYSTEM'),(303,'SYSTEM_USER'),(54,'TABLE'),(759,'TABLES'),(630,'TABLESPACE'),(877,'TABLE_NAME'),(118,'TAN'),(688,'TEMPORARY'),(721,'TERMINATED'),(79,'THEN'),(929,'THREAD_PRIORITY'),(38,'TIME'),(170,'TIMEDIFF'),(37,'TIMESTAMP'),(171,'TIMESTAMPADD'),(172,'TIMESTAMPDIFF'),(259,'TIMEZONE'),(173,'TIME_FORMAT'),(174,'TIME_TO_SEC'),(575,'TLS'),(638,'TO'),(229,'TO_BASE64'),(175,'TO_DAYS'),(176,'TO_SECONDS'),(984,'TRADITIONAL'),(233,'TRAILING'),(753,'TRANSACTION'),(985,'TREE'),(687,'TRIGGER'),(960,'TRIGGERS'),(234,'TRIM'),(16,'TRUE'),(119,'TRUNCATE'),(631,'TYPE'),(235,'UCASE'),(910,'UNBOUNDED'),(767,'UNCOMMITTED'),(280,'UNCOMPRESS'),(281,'UNCOMPRESSED_LENGTH'),(639,'UNDO'),(236,'UNHEX'),(943,'UNINSTALL'),(632,'UNION'),(633,'UNIQUE'),(177,'UNIX_TIMESTAMP'),(927,'UNKNOWN'),(758,'UNLOCK'),(911,'UNREGISTER'),(20,'UNSIGNED'),(854,'UNTIL'),(681,'UPDATE'),(262,'UPDATEXML'),(634,'UPGRADE'),(237,'UPPER'),(924,'USAGE'),(686,'USE'),(304,'USER'),(978,'USER_RESOURCES'),(935,'USE_FRM'),(693,'USING'),(178,'UTC_DATE'),(179,'UTC_TIME'),(180,'UTC_TIMESTAMP'),(542,'UUID'),(543,'UUID_SHORT'),(544,'UUID_TO_BIN'),(282,'VALIDATE_PASSWORD_STRENGTH'),(4,'VALUE'),(545,'VALUES'),(45,'VARCHARACTER'),(947,'VARIABLE'),(961,'VARIABLES'),(483,'VARIANCE'),(46,'VARYING'),(481,'VAR_POP'),(482,'VAR_SAMP'),(930,'VCPU'),(305,'VERSION'),(641,'VIEW'),(679,'VIRTUAL'),(635,'VISIBLE'),(640,'WAIT'),(456,'WAIT_FOR_EXECUTED_GTID_SET'),(457,'WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS'),(962,'WARNINGS'),(181,'WEEK'),(182,'WEEKDAY'),(183,'WEEKOFYEAR'),(238,'WEIGHT_STRING'),(80,'WHEN'),(694,'WHERE'),(856,'WHILE'),(252,'WITH'),(754,'WORK'),(652,'WRAPPER'),(755,'WRITE'),(912,'X509'),(770,'XA'),(74,'XOR'),(142,'YEAR'),(184,'YEARWEEK'),(143,'YEAR_MONTH'),(21,'ZEROFILL'),(265,'^'),(263,'|'),(268,'~');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int unsigned NOT NULL,
  `help_keyword_id` int unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (0,0),(1,1),(2,2),(485,2),(502,2),(503,2),(510,2),(513,2),(514,2),(522,2),(523,2),(547,2),(554,2),(592,2),(610,2),(612,2),(618,2),(620,2),(2,3),(522,3),(2,4),(547,4),(554,4),(608,4),(609,4),(3,5),(700,5),(4,6),(5,7),(6,8),(7,9),(8,10),(9,11),(10,12),(11,13),(12,14),(13,15),(14,15),(13,16),(14,16),(16,17),(17,17),(16,18),(240,18),(16,19),(16,20),(20,20),(22,20),(23,20),(25,20),(26,20),(242,20),(16,21),(20,21),(22,21),(23,21),(25,21),(26,21),(18,22),(19,23),(19,24),(20,25),(20,26),(242,26),(630,26),(22,27),(23,28),(23,29),(522,29),(23,30),(24,31),(242,31),(630,31),(25,32),(26,33),(26,34),(26,35),(630,35),(28,36),(129,36),(131,36),(242,36),(30,37),(165,37),(31,38),(163,38),(242,38),(33,39),(35,39),(502,39),(503,39),(510,39),(513,39),(514,39),(522,39),(551,39),(552,39),(555,39),(638,39),(639,39),(641,39),(645,39),(33,40),(35,40),(33,41),(34,42),(34,43),(184,43),(242,43),(35,44),(35,45),(35,46),(44,47),(44,48),(53,49),(510,49),(511,49),(524,49),(610,49),(53,50),(502,50),(503,50),(504,50),(505,50),(506,50),(507,50),(508,50),(509,50),(510,50),(511,50),(512,50),(610,50),(615,50),(621,50),(53,51),(513,51),(514,51),(515,51),(516,51),(517,51),(518,51),(519,51),(520,51),(521,51),(522,51),(524,51),(525,51),(526,51),(611,51),(612,51),(622,51),(630,51),(641,51),(649,51),(650,51),(651,51),(652,51),(653,51),(654,51),(656,51),(53,52),(510,52),(516,52),(522,52),(530,52),(557,52),(641,52),(667,52),(689,52),(692,52),(53,53),(510,53),(522,53),(523,53),(547,53),(53,54),(510,54),(522,54),(535,54),(539,54),(540,54),(546,54),(548,54),(558,54),(625,54),(626,54),(627,54),(628,54),(629,54),(641,54),(654,54),(683,54),(54,55),(79,55),(55,56),(56,57),(57,58),(58,59),(59,60),(60,61),(61,62),(75,62),(61,63),(62,63),(62,64),(66,64),(69,64),(71,64),(74,64),(232,64),(234,64),(513,64),(514,64),(515,64),(521,64),(611,64),(612,64),(63,65),(510,65),(64,66),(65,67),(66,67),(240,67),(555,67),(644,67),(647,67),(648,67),(667,67),(677,67),(67,68),(131,68),(515,68),(610,68),(612,68),(68,69),(69,69),(70,69),(71,69),(70,70),(71,70),(523,70),(72,71),(73,72),(76,73),(521,73),(77,74),(78,75),(80,76),(593,76),(80,77),(593,77),(80,78),(572,78),(590,78),(593,78),(594,78),(597,78),(598,78),(600,78),(80,79),(593,79),(594,79),(80,80),(593,80),(81,81),(513,81),(514,81),(515,81),(521,81),(527,81),(528,81),(529,81),(533,81),(534,81),(535,81),(538,81),(594,81),(610,81),(611,81),(612,81),(613,81),(614,81),(617,81),(631,81),(694,81),(82,82),(83,83),(84,84),(85,85),(86,85),(87,86),(88,87),(89,88),(90,89),(109,89),(91,90),(92,91),(93,92),(94,93),(95,94),(96,95),(97,96),(98,97),(99,98),(100,99),(101,100),(102,101),(103,102),(104,103),(105,104),(106,105),(107,106),(108,107),(109,108),(110,109),(111,110),(112,111),(113,112),(114,113),(115,114),(116,115),(117,116),(118,117),(119,118),(120,119),(510,119),(540,119),(121,120),(122,121),(123,122),(124,123),(125,124),(126,125),(127,126),(128,127),(130,128),(131,129),(131,130),(133,130),(131,131),(134,131),(610,131),(612,131),(131,132),(131,133),(131,134),(131,135),(143,135),(131,136),(131,137),(131,138),(150,138),(131,139),(131,140),(151,140),(131,141),(157,141),(131,142),(179,142),(242,142),(131,143),(132,144),(135,145),(136,146),(137,147),(138,148),(139,149),(140,150),(141,151),(142,152),(144,153),(145,154),(146,155),(147,156),(148,157),(149,158),(152,159),(153,160),(154,161),(155,162),(156,163),(158,164),(159,165),(160,166),(161,167),(162,168),(163,169),(165,169),(214,169),(505,169),(518,169),(519,169),(531,169),(532,169),(630,169),(631,169),(641,169),(652,169),(664,169),(665,169),(164,170),(166,171),(167,172),(168,173),(169,174),(170,175),(171,176),(172,177),(173,178),(174,179),(175,180),(176,181),(177,182),(178,183),(180,184),(181,185),(182,186),(183,187),(185,188),(186,189),(187,190),(188,191),(189,192),(190,193),(191,194),(192,195),(193,196),(697,196),(698,196),(699,196),(194,197),(195,198),(196,199),(547,199),(548,199),(549,199),(197,200),(198,201),(199,202),(557,202),(200,203),(201,204),(202,205),(203,206),(204,207),(205,208),(206,209),(207,210),(208,211),(209,212),(210,213),(211,214),(212,215),(213,216),(598,216),(214,217),(521,217),(551,217),(552,217),(554,217),(610,217),(619,217),(215,218),(216,219),(557,219),(217,220),(218,221),(219,222),(220,223),(232,223),(641,223),(647,223),(648,223),(220,224),(221,225),(222,226),(223,227),(224,228),(225,229),(226,230),(226,231),(542,231),(546,231),(555,231),(641,231),(644,231),(647,231),(648,231),(667,231),(677,231),(226,232),(226,233),(226,234),(227,235),(228,236),(229,237),(230,238),(231,239),(233,240),(234,241),(235,242),(236,243),(237,244),(238,245),(239,246),(240,247),(240,248),(240,249),(240,250),(555,250),(240,251),(691,251),(240,252),(510,252),(516,252),(522,252),(610,252),(612,252),(615,252),(690,252),(241,253),(242,253),(573,253),(574,253),(642,253),(643,253),(690,253),(242,254),(242,255),(242,256),(242,257),(697,257),(698,257),(699,257),(242,258),(242,259),(243,260),(244,261),(245,262),(246,263),(247,264),(248,265),(249,266),(250,267),(251,268),(252,269),(253,270),(254,271),(255,272),(256,273),(257,274),(258,275),(258,276),(259,277),(260,278),(261,279),(262,280),(263,281),(264,282),(265,283),(266,284),(267,285),(268,286),(269,287),(270,288),(271,289),(638,289),(639,289),(272,290),(273,291),(641,291),(646,291),(274,292),(275,293),(276,294),(504,294),(515,294),(277,295),(502,295),(503,295),(513,295),(514,295),(520,295),(527,295),(528,295),(641,295),(649,295),(650,295),(278,296),(279,297),(280,298),(281,299),(282,300),(607,300),(283,301),(502,301),(503,301),(513,301),(514,301),(527,301),(528,301),(641,301),(649,301),(650,301),(284,302),(285,303),(286,304),(520,304),(582,304),(583,304),(610,304),(612,304),(614,304),(616,304),(617,304),(622,304),(656,304),(287,305),(288,306),(288,307),(289,308),(289,309),(290,310),(290,311),(291,312),(291,313),(292,314),(292,315),(293,316),(293,317),(294,318),(295,319),(295,320),(296,321),(296,322),(297,323),(297,324),(298,325),(298,326),(299,327),(299,328),(300,329),(300,330),(301,331),(301,332),(302,333),(303,334),(303,335),(304,336),(305,337),(306,338),(307,339),(308,340),(309,341),(310,342),(311,343),(312,344),(312,345),(313,346),(313,347),(314,348),(315,349),(316,350),(317,351),(318,352),(319,353),(320,354),(321,355),(322,356),(323,357),(324,358),(325,359),(326,360),(327,361),(328,362),(329,363),(330,364),(331,365),(332,366),(333,367),(334,368),(335,369),(335,370),(336,371),(337,372),(338,373),(339,374),(340,375),(341,376),(342,377),(343,378),(344,379),(345,380),(346,381),(347,382),(348,383),(349,384),(350,385),(351,386),(352,387),(353,388),(354,389),(355,390),(356,391),(357,392),(358,393),(359,394),(360,395),(361,396),(362,397),(363,398),(364,399),(365,400),(366,401),(367,402),(368,403),(369,404),(370,405),(371,406),(372,407),(373,408),(374,409),(375,410),(376,411),(377,412),(378,413),(379,414),(380,415),(381,416),(382,417),(383,418),(384,419),(385,420),(386,421),(387,422),(388,422),(387,423),(387,424),(388,425),(388,426),(388,427),(389,428),(390,429),(391,430),(392,431),(393,432),(393,433),(394,434),(395,435),(396,436),(397,437),(398,438),(399,439),(400,440),(401,441),(402,442),(403,443),(404,444),(405,445),(406,446),(407,447),(408,448),(409,449),(410,450),(411,451),(412,452),(413,453),(414,454),(415,455),(416,456),(417,457),(418,458),(419,459),(420,460),(420,461),(425,461),(426,461),(429,461),(430,461),(435,461),(544,461),(550,461),(555,461),(560,461),(421,462),(422,463),(423,464),(424,465),(425,465),(662,465),(687,465),(426,466),(555,466),(426,467),(510,467),(522,467),(542,467),(551,467),(552,467),(553,467),(555,467),(559,467),(610,467),(612,467),(426,468),(555,468),(697,468),(698,468),(699,468),(426,469),(426,470),(510,470),(542,470),(553,470),(555,470),(558,470),(559,470),(561,470),(426,471),(427,472),(428,473),(429,474),(430,475),(431,476),(432,477),(433,478),(434,479),(435,480),(436,481),(437,482),(438,483),(439,484),(440,485),(441,486),(442,487),(443,488),(444,489),(445,490),(446,491),(447,492),(448,493),(449,494),(450,495),(451,496),(452,497),(453,498),(454,499),(455,500),(456,501),(457,502),(458,503),(459,504),(460,505),(461,506),(462,507),(463,508),(464,509),(465,510),(466,511),(467,512),(468,513),(469,514),(470,515),(471,516),(472,517),(473,518),(474,519),(475,520),(476,521),(477,522),(478,523),(479,524),(480,525),(481,526),(482,527),(483,528),(484,529),(486,530),(487,531),(488,532),(489,533),(490,534),(491,535),(492,536),(493,537),(494,538),(495,539),(496,540),(497,541),(498,542),(499,543),(500,544),(501,545),(547,545),(554,545),(561,545),(502,546),(503,546),(510,546),(513,546),(514,546),(522,546),(502,547),(503,547),(510,547),(513,547),(514,547),(522,547),(502,548),(503,548),(562,548),(563,548),(564,548),(565,548),(571,548),(572,548),(502,549),(503,549),(545,549),(562,549),(563,549),(564,549),(565,549),(570,549),(571,549),(572,549),(690,549),(502,550),(503,550),(510,550),(513,550),(514,550),(522,550),(523,550),(547,550),(551,550),(552,550),(554,550),(555,550),(559,550),(562,550),(563,550),(564,550),(565,550),(576,550),(608,550),(609,550),(610,550),(618,550),(619,550),(620,550),(624,550),(637,550),(638,550),(639,550),(640,550),(641,550),(645,550),(504,551),(510,551),(515,551),(516,551),(522,551),(524,551),(610,551),(612,551),(504,552),(515,552),(504,553),(515,553),(504,554),(510,554),(515,554),(621,554),(622,554),(504,555),(515,555),(543,555),(600,555),(504,556),(510,556),(515,556),(621,556),(622,556),(504,557),(515,557),(529,557),(651,557),(504,558),(506,558),(515,558),(523,558),(557,558),(504,559),(515,559),(504,560),(510,560),(511,560),(539,560),(616,560),(504,561),(515,561),(504,562),(515,562),(581,562),(583,562),(585,562),(679,562),(681,562),(693,562),(506,563),(644,563),(688,563),(506,564),(577,564),(579,564),(580,564),(581,564),(582,564),(583,564),(584,564),(585,564),(677,564),(680,564),(681,564),(690,564),(506,565),(690,565),(506,566),(555,566),(577,566),(579,566),(580,566),(581,566),(582,566),(583,566),(584,566),(585,566),(602,566),(605,566),(606,566),(619,566),(624,566),(641,566),(677,566),(680,566),(681,566),(690,566),(697,566),(698,566),(699,566),(506,567),(522,567),(641,567),(506,568),(569,568),(506,569),(506,570),(573,570),(574,570),(575,570),(577,570),(642,570),(643,570),(668,570),(693,570),(506,571),(522,571),(523,571),(506,572),(506,573),(615,573),(506,574),(562,574),(563,574),(564,574),(565,574),(566,574),(567,574),(568,574),(572,574),(506,575),(507,576),(517,576),(524,576),(555,576),(621,576),(622,576),(623,576),(624,576),(507,577),(517,577),(524,577),(508,578),(518,578),(519,578),(531,578),(532,578),(641,578),(653,578),(672,578),(673,578),(509,579),(520,579),(509,580),(520,580),(533,580),(510,581),(510,582),(510,583),(625,583),(697,583),(698,583),(699,583),(510,584),(511,584),(522,584),(524,584),(510,585),(510,586),(522,586),(510,587),(577,587),(578,587),(579,587),(510,588),(522,588),(626,588),(510,589),(522,589),(627,589),(510,590),(510,591),(522,591),(551,591),(641,591),(647,591),(648,591),(510,592),(522,592),(510,593),(522,593),(691,593),(697,593),(698,593),(699,593),(510,594),(522,594),(510,595),(520,595),(522,595),(551,595),(510,596),(522,596),(510,597),(522,597),(510,598),(610,598),(510,599),(511,599),(527,599),(528,599),(529,599),(530,599),(531,599),(532,599),(533,599),(534,599),(535,599),(536,599),(537,599),(538,599),(588,599),(589,599),(610,599),(613,599),(614,599),(623,599),(631,599),(510,600),(511,600),(522,600),(524,600),(536,600),(641,600),(660,600),(690,600),(510,601),(510,602),(522,602),(545,602),(510,603),(520,603),(522,603),(523,603),(510,604),(516,604),(522,604),(510,605),(546,605),(551,605),(510,606),(522,606),(510,607),(516,607),(522,607),(510,608),(641,608),(667,608),(510,609),(522,609),(510,610),(555,610),(569,610),(570,610),(610,610),(612,610),(690,610),(510,611),(522,611),(510,612),(522,612),(510,613),(610,613),(510,614),(628,614),(510,615),(522,615),(510,616),(516,616),(522,616),(510,617),(522,617),(542,617),(547,617),(551,617),(554,617),(555,617),(557,617),(689,617),(692,617),(510,618),(510,619),(520,619),(582,619),(583,619),(610,619),(612,619),(619,619),(510,620),(510,621),(510,622),(510,623),(510,624),(629,624),(510,625),(522,625),(510,626),(516,626),(521,626),(534,626),(510,627),(522,627),(510,628),(522,628),(510,629),(522,629),(510,630),(511,630),(524,630),(536,630),(510,631),(622,631),(510,632),(553,632),(560,632),(510,633),(510,634),(626,634),(510,635),(516,635),(522,635),(511,636),(524,636),(511,637),(524,637),(511,638),(566,638),(567,638),(568,638),(573,638),(574,638),(577,638),(579,638),(619,638),(511,639),(524,639),(536,639),(606,639),(511,640),(524,640),(512,641),(526,641),(538,641),(513,642),(514,642),(515,642),(521,642),(527,642),(528,642),(529,642),(533,642),(534,642),(535,642),(538,642),(610,642),(611,642),(612,642),(613,642),(614,642),(617,642),(631,642),(694,642),(515,643),(515,644),(515,645),(515,646),(516,647),(520,648),(520,649),(520,650),(520,651),(520,652),(521,653),(521,654),(521,655),(521,656),(521,657),(534,657),(521,658),(534,658),(622,658),(522,659),(523,659),(522,660),(522,661),(523,661),(535,661),(538,661),(522,662),(522,663),(522,664),(551,664),(522,665),(523,665),(542,665),(522,666),(522,667),(522,668),(641,668),(647,668),(648,668),(674,668),(684,668),(522,669),(522,670),(522,671),(522,672),(522,673),(522,674),(522,675),(522,676),(522,677),(523,677),(615,677),(522,678),(522,679),(523,680),(535,680),(538,680),(523,681),(547,681),(555,681),(559,681),(524,682),(524,683),(524,684),(524,685),(524,686),(557,686),(701,686),(525,687),(537,687),(641,687),(535,688),(541,689),(542,690),(545,690),(553,690),(555,690),(558,690),(559,690),(561,690),(644,690),(677,690),(542,691),(547,691),(551,691),(552,691),(554,691),(559,691),(570,691),(542,692),(626,692),(629,692),(542,693),(557,693),(587,693),(666,693),(542,694),(545,694),(559,694),(647,694),(648,694),(667,694),(544,695),(550,695),(555,695),(560,695),(580,695),(581,695),(610,695),(615,695),(617,695),(618,695),(620,695),(689,695),(692,695),(544,696),(553,696),(620,696),(545,697),(601,697),(545,698),(606,698),(545,699),(545,700),(545,701),(604,701),(641,701),(669,701),(545,702),(547,703),(549,703),(554,703),(547,704),(547,705),(555,705),(547,706),(551,706),(552,706),(555,706),(557,706),(559,706),(617,706),(692,706),(547,707),(553,707),(554,707),(555,707),(692,707),(547,708),(561,708),(547,709),(548,709),(553,709),(554,709),(555,709),(697,709),(698,709),(699,709),(550,710),(553,710),(551,711),(552,711),(551,712),(551,713),(551,714),(641,714),(647,714),(648,714),(551,715),(552,715),(551,716),(552,716),(551,717),(692,717),(551,718),(552,718),(570,718),(625,718),(628,718),(629,718),(690,718),(551,719),(551,720),(551,721),(552,722),(610,722),(612,722),(552,723),(555,724),(557,724),(570,724),(610,724),(612,724),(615,724),(555,725),(555,726),(555,727),(555,728),(557,728),(555,729),(555,730),(555,731),(555,732),(555,733),(555,734),(555,735),(555,736),(555,737),(555,738),(557,738),(556,739),(557,740),(557,741),(621,741),(623,741),(557,742),(557,743),(557,744),(562,745),(563,745),(564,745),(565,745),(562,746),(563,746),(564,746),(565,746),(572,746),(590,746),(562,747),(563,747),(564,747),(565,747),(562,748),(563,748),(564,748),(565,748),(572,748),(562,749),(563,749),(564,749),(565,749),(572,749),(562,750),(563,750),(564,750),(565,750),(566,750),(567,750),(568,750),(572,750),(562,751),(563,751),(564,751),(565,751),(572,751),(562,752),(563,752),(564,752),(565,752),(572,752),(582,752),(583,752),(562,753),(563,753),(564,753),(565,753),(571,753),(562,754),(563,754),(564,754),(565,754),(562,755),(563,755),(564,755),(565,755),(570,755),(571,755),(572,755),(566,756),(567,756),(568,756),(569,757),(569,758),(570,758),(610,758),(612,758),(570,759),(641,759),(669,759),(684,759),(690,759),(571,760),(571,761),(637,761),(682,761),(686,761),(571,762),(571,763),(571,764),(571,765),(571,766),(637,766),(682,766),(686,766),(571,767),(572,768),(586,768),(588,768),(589,768),(572,769),(572,770),(573,771),(574,771),(573,772),(574,772),(641,772),(642,772),(643,772),(690,772),(573,773),(574,773),(575,774),(580,774),(581,774),(693,774),(694,774),(576,775),(577,776),(579,776),(577,777),(579,777),(577,778),(577,779),(577,780),(577,781),(577,782),(577,783),(577,784),(577,785),(577,786),(577,787),(577,788),(577,789),(577,790),(577,791),(577,792),(577,793),(577,794),(577,795),(577,796),(577,797),(577,798),(577,799),(577,800),(577,801),(579,801),(577,802),(579,802),(577,803),(579,803),(577,804),(579,804),(578,805),(578,806),(578,807),(578,808),(578,809),(578,810),(578,811),(578,812),(578,813),(579,813),(615,813),(579,814),(579,815),(579,816),(579,817),(579,818),(579,819),(579,820),(579,821),(579,822),(579,823),(579,824),(579,825),(579,826),(579,827),(579,828),(579,829),(579,830),(579,831),(579,832),(579,833),(579,834),(579,835),(579,836),(579,837),(580,838),(582,838),(584,838),(680,838),(693,838),(582,839),(583,839),(582,840),(583,840),(584,840),(585,840),(582,841),(583,841),(582,842),(583,842),(582,843),(583,843),(582,844),(583,844),(582,845),(583,845),(584,845),(585,845),(584,846),(585,846),(587,847),(615,847),(588,848),(589,848),(592,849),(602,849),(605,849),(606,849),(594,850),(595,851),(596,852),(597,853),(598,854),(599,855),(600,856),(602,857),(603,858),(605,859),(606,860),(606,861),(607,862),(608,862),(609,862),(607,863),(608,863),(609,863),(607,864),(608,864),(609,864),(607,865),(608,865),(609,865),(607,866),(608,866),(609,866),(607,867),(608,867),(609,867),(607,868),(608,868),(609,868),(607,869),(607,870),(607,871),(608,871),(609,871),(607,872),(608,872),(609,872),(607,873),(607,874),(607,875),(608,875),(609,875),(607,876),(608,876),(609,876),(607,877),(608,877),(609,877),(608,878),(608,879),(609,879),(609,880),(610,881),(612,881),(610,882),(612,882),(610,883),(610,884),(612,884),(610,885),(612,885),(619,885),(610,886),(612,886),(610,887),(610,888),(612,888),(610,889),(610,890),(612,890),(610,891),(610,892),(612,892),(610,893),(612,893),(610,894),(612,894),(610,895),(612,895),(610,896),(612,896),(610,897),(612,897),(610,898),(615,898),(618,898),(620,898),(610,899),(610,900),(612,900),(610,901),(612,901),(610,902),(612,902),(619,902),(610,903),(610,904),(612,904),(610,905),(619,905),(610,906),(612,906),(610,907),(611,907),(612,907),(613,907),(615,907),(618,907),(620,907),(610,908),(612,908),(610,909),(612,909),(610,910),(612,910),(610,911),(610,912),(612,912),(612,913),(612,914),(615,915),(615,916),(615,917),(615,918),(617,918),(615,919),(617,919),(615,920),(617,920),(671,920),(690,920),(615,921),(615,922),(696,922),(615,923),(615,924),(617,925),(617,926),(617,927),(621,928),(622,928),(623,928),(624,928),(621,929),(622,929),(621,930),(622,930),(625,931),(628,931),(629,931),(690,931),(626,932),(626,933),(629,934),(647,934),(648,934),(667,934),(684,934),(629,935),(630,936),(630,937),(630,938),(630,939),(632,940),(634,940),(632,941),(633,941),(633,942),(635,942),(641,942),(634,943),(635,943),(636,944),(637,945),(694,945),(637,946),(637,947),(640,948),(641,949),(658,949),(659,949),(641,950),(661,950),(641,951),(662,951),(641,952),(666,952),(641,953),(679,953),(690,953),(641,954),(641,955),(660,955),(641,956),(674,956),(641,957),(658,957),(659,957),(641,958),(642,958),(643,958),(644,958),(645,958),(646,958),(647,958),(648,958),(649,958),(650,958),(651,958),(652,958),(653,958),(654,958),(656,958),(658,958),(659,958),(660,958),(661,958),(662,958),(663,958),(664,958),(665,958),(666,958),(667,958),(668,958),(669,958),(670,958),(671,958),(672,958),(673,958),(674,958),(675,958),(676,958),(677,958),(678,958),(679,958),(680,958),(681,958),(682,958),(683,958),(684,958),(685,958),(686,958),(687,958),(641,959),(660,959),(665,959),(668,959),(673,959),(680,959),(681,959),(682,959),(683,959),(690,959),(641,960),(685,960),(641,961),(686,961),(641,962),(687,962),(644,963),(663,963),(677,963),(661,964),(664,965),(672,965),(670,966),(675,967),(676,968),(677,969),(678,970),(689,971),(692,971),(690,972),(690,973),(690,974),(690,975),(690,976),(690,977),(690,978),(691,979),(692,980),(695,981),(697,982),(698,982),(699,982),(697,983),(698,983),(699,983),(697,984),(698,984),(699,984),(697,985),(698,985),(699,985);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topic`
--

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
INSERT INTO `help_topic` VALUES (630,'CREATE FUNCTION LOADABLE FUNCTION',48,'Syntax:\nCREATE [AGGREGATE] FUNCTION [IF NOT EXISTS] function_name\n    RETURNS {STRING|INTEGER|REAL|DECIMAL}\n    SONAME shared_library_name\n\nThis statement loads the loadable function named function_name. (CREATE\nFUNCTION is also used to created stored functions; see [HELP CREATE\nPROCEDURE].)\n\nA loadable function is a way to extend MySQL with a new function that\nworks like a native (built-in) MySQL function such as ABS() or\nCONCAT(). See Adding a Loadable Function\n(https://dev.mysql.com/doc/extending-mysql/8.0/en/adding-loadable-funct\nion.html).\n\nfunction_name is the name that should be used in SQL statements to\ninvoke the function. The RETURNS clause indicates the type of the\nfunction\'s return value. DECIMAL is a legal value after RETURNS, but\ncurrently DECIMAL functions return string values and should be written\nlike STRING functions.\n\nIF NOT EXISTS prevents an error from occurring if there already exists\na loadable function with the same name. It does not prevent an error\nfrom occurring if there already exists a built-in function having the\nsame name. IF NOT EXISTS is supported for CREATE FUNCTION statements\nbeginning with MySQL 8.0.29. See also\nhttps://dev.mysql.com/doc/refman/8.0/en/function-resolution.html#functi\non-name-resolution.\n\nThe AGGREGATE keyword, if given, signifies that the function is an\naggregate (group) function. An aggregate function works exactly like a\nnative MySQL aggregate function such as SUM() or COUNT().\n\nshared_library_name is the base name of the shared library file\ncontaining the code that implements the function. The file must be\nlocated in the plugin directory. This directory is given by the value\nof the plugin_dir system variable. For more information, see\nhttps://dev.mysql.com/doc/refman/8.0/en/function-loading.html.\n\nCREATE FUNCTION requires the INSERT privilege for the mysql system\nschema because it adds a row to the mysql.func system table to register\nthe function.\n\nCREATE FUNCTION also adds the function to the Performance Schema\nuser_defined_functions table that provides runtime information about\ninstalled loadable functions. See\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-user-defined\n-functions-table.html.\n\n*Note*:\n\nLike the mysql.func system table, the Performance Schema\nuser_defined_functions table lists loadable functions installed using\nCREATE FUNCTION. Unlike the mysql.func table, the\nuser_defined_functions table also lists loadable functions installed\nautomatically by server components or plugins. This difference makes\nuser_defined_functions preferable to mysql.func for checking which\nloadable functions are installed.\n\nDuring the normal startup sequence, the server loads functions\nregistered in the mysql.func table. If the server is started with the\n--skip-grant-tables option, functions registered in the table are not\nloaded and are unavailable.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/create-function-loadable.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/create-function-loadable.html'),(631,'DROP FUNCTION LOADABLE FUNCTION',48,'Syntax:\nDROP FUNCTION [IF EXISTS] function_name\n\nThis statement drops the loadable function named function_name. (DROP\nFUNCTION is also used to drop stored functions; see [HELP DROP\nPROCEDURE].)\n\nDROP FUNCTION is the complement of CREATE FUNCTION. It requires the\nDELETE privilege for the mysql system schema because it removes the row\nfrom the mysql.func system table that registers the function.\n\nDROP FUNCTION also removes the function from the Performance Schema\nuser_defined_functions table that provides runtime information about\ninstalled loadable functions. See\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-user-defined\n-functions-table.html.\n\nDuring the normal startup sequence, the server loads functions\nregistered in the mysql.func table. Because DROP FUNCTION removes the\nmysql.func row for the dropped function, the server does not load the\nfunction during subsequent restarts.\n\nDROP FUNCTION cannot be used to drop a loadable function that is\ninstalled automatically by components or plugins rather than by using\nCREATE FUNCTION. Such a function is also dropped automatically, when\nthe component or plugin that installed it is uninstalled.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/drop-function-loadable.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/drop-function-loadable.html'),(632,'INSTALL COMPONENT',49,'Syntax:\nINSTALL COMPONENT component_name  [, component_name ...\n     [SET variable = expr [, variable = expr] ...] \n  \n  variable: {\n    {GLOBAL | @@GLOBAL.} [component_prefix.]system_var_name\n  | {PERSIST | @@PERSIST.} [component_prefix.]system_var_name\n}\n\nThis statement installs one or more components, which become active\nimmediately. A component provides services that are available to the\nserver and other components; see\nhttps://dev.mysql.com/doc/refman/8.0/en/components.html. INSTALL\nCOMPONENT requires the INSERT privilege for the mysql.component system\ntable because it adds a row to that table to register the component.\n\nExample:\n\nINSTALL COMPONENT \'file://component1\', \'file://component2\';\n\nA component is named using a URN that begins with file:// and indicates\nthe base name of the library file that implements the component,\nlocated in the directory named by the plugin_dir system variable.\nComponent names do not include any platform-dependent file name suffix\nsuch as .so or .dll. (These naming details are subject to change\nbecause component name interpretation is itself performed by a service\nand the component infrastructure makes it possible to replace the\ndefault service implementation with alternative implementations.)\n\nINSTALL COMPONENT (from 8.0.33) permits setting the values of component\nsystem variables when you install one or more components. The SET\nclause enables you to specify variable values precisely when they are\nneeded, without the inconvenience or limitations associated with other\nforms of assignment. Specifically, you can also set component variables\nwith these alternatives:\n\no At server startup using options on the command line or in an option\n  file, but doing so involves a server restart. The values do not take\n  effect until you install the component. You can specify an invalid\n  variable name for a component on the command line without triggering\n  an error.\n\no Dynamically while the server is running by means of the SET\n  statement, which enables you to modify operation of the server\n  without having to stop and restart it. Setting a read-only variable\n  is not permitted.\n\nThe optional SET clause applies a value, or values, only to the\ncomponent specified in the INSTALL COMPONENT statement, rather than to\nall subsequent installations of that component. SET GLOBAL|PERSIST\nworks for all types of variables, including read-only variables,\nwithout having to restart the server. A component system variable that\nyou set using INSTALL COMPONENT takes precedence over any conflicting\nvalue coming from the command line or an option file.\n\nExample:\n\nINSTALL COMPONENT \'file://component1\', \'file://component2\' \n    SET GLOBAL component1.var1 = 12 + 3, PERSIST component2.var2 = \'strings\';\n\nOmitting PERSIST or GLOBAL is equivalent to specifying GLOBAL.\n\nSpecifying PERSIST for any variable in SET silently executes SET\nPERSIST_ONLY immediately after INSTALL COMPONENT loads the components,\nbut before updating the mysql.component table. If SET PERSIST_ONLY\nfails, then the server unloads all of the previously loaded new\ncomponents without persisting anything to mysql.component.\n\nThe SET clause accepts only valid variable names of the component being\ninstalled and emits an error message for all invalid names. Subqueries,\nstored functions, and aggregate functions are not permitted as part of\nthe value expression. If you install a single component, it is not\nnecessary to prefix the variable name with the component name.\n\n*Note*:\n\nWhile specifying a variable value using the SET clause is similar to\nthat of the command line---it is available immediately at variable\nregistration---there is a distinct difference in how the SET clause\nhandles invalid numerical values for boolean variables. For example, if\nyou set a boolean variable to 11 (component1.boolvar = 11), you see the\nfollowing behavior:\n\no SET clause yields true\n\no Command line yields false (11 is neither ON nor 1)\n\nIf any error occurs, the statement fails and has no effect. For\nexample, this happens if a component name is erroneous, a named\ncomponent does not exist or is already installed, or component\ninitialization fails.\n\nA loader service handles component loading, which includes adding\ninstalled components to the mysql.component system table that serves as\na registry. For subsequent server restarts, any components listed in\nmysql.component are loaded by the loader service during the startup\nsequence. This occurs even if the server is started with the\n--skip-grant-tables option.\n\nIf a component depends on services not present in the registry and you\nattempt to install the component without also installing the component\nor components that provide the services on which it depends, an error\noccurs:\n\nERROR 3527 (HY000): Cannot satisfy dependency for service \'component_a\'\nrequired by component \'component_b\'.\n\nTo avoid this problem, either install all components in the same\nstatement, or install the dependent component after installing any\ncomponents on which it depends.\n\n*Note*:\n\nFor keyring components, do not use INSTALL COMPONENT. Instead,\nconfigure keyring component loading using a manifest file. See\nhttps://dev.mysql.com/doc/refman/8.0/en/keyring-component-installation.\nhtml.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/install-component.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/install-component.html'),(633,'INSTALL PLUGIN',50,'Syntax:\nINSTALL PLUGIN plugin_name SONAME \'shared_library_name\'\n\nThis statement installs a server plugin. It requires the INSERT\nprivilege for the mysql.plugin system table because it adds a row to\nthat table to register the plugin.\n\nplugin_name is the name of the plugin as defined in the plugin\ndescriptor structure contained in the library file (see Plugin Data\nStructures\n(https://dev.mysql.com/doc/extending-mysql/8.0/en/plugin-data-structure\ns.html)). Plugin names are not case-sensitive. For maximal\ncompatibility, plugin names should be limited to ASCII letters, digits,\nand underscore because they are used in C source files, shell command\nlines, M4 and Bourne shell scripts, and SQL environments.\n\nshared_library_name is the name of the shared library that contains the\nplugin code. The name includes the file name extension (for example,\nlibmyplugin.so, libmyplugin.dll, or libmyplugin.dylib).\n\nThe shared library must be located in the plugin directory (the\ndirectory named by the plugin_dir system variable). The library must be\nin the plugin directory itself, not in a subdirectory. By default,\nplugin_dir is the plugin directory under the directory named by the\npkglibdir configuration variable, but it can be changed by setting the\nvalue of plugin_dir at server startup. For example, set its value in a\nmy.cnf file:\n\n[mysqld]\nplugin_dir=/path/to/plugin/directory\n\nIf the value of plugin_dir is a relative path name, it is taken to be\nrelative to the MySQL base directory (the value of the basedir system\nvariable).\n\nINSTALL PLUGIN loads and initializes the plugin code to make the plugin\navailable for use. A plugin is initialized by executing its\ninitialization function, which handles any setup that the plugin must\nperform before it can be used. When the server shuts down, it executes\nthe deinitialization function for each plugin that is loaded so that\nthe plugin has a chance to perform any final cleanup.\n\nINSTALL PLUGIN also registers the plugin by adding a line that\nindicates the plugin name and library file name to the mysql.plugin\nsystem table. During the normal startup sequence, the server loads and\ninitializes plugins registered in mysql.plugin. This means that a\nplugin is installed with INSTALL PLUGIN only once, not every time the\nserver starts. If the server is started with the --skip-grant-tables\noption, plugins registered in the mysql.plugin table are not loaded and\nare unavailable.\n\nA plugin library can contain multiple plugins. For each of them to be\ninstalled, use a separate INSTALL PLUGIN statement. Each statement\nnames a different plugin, but all of them specify the same library\nname.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/install-plugin.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/install-plugin.html'),(634,'UNINSTALL COMPONENT',49,'Syntax:\nUNINSTALL COMPONENT component_name [, component_name ] ...\n\nThis statement deactivates and uninstalls one or more components. A\ncomponent provides services that are available to the server and other\ncomponents; see\nhttps://dev.mysql.com/doc/refman/8.0/en/components.html. UNINSTALL\nCOMPONENT is the complement of INSTALL COMPONENT. It requires the\nDELETE privilege for the mysql.component system table because it\nremoves the row from that table that registers the component. UNINSTALL\nCOMPONENT does not undo persisted variables, including the variables\npersisted using INSTALL COMPONENT ... SET PERSIST.\n\nExample:\n\nUNINSTALL COMPONENT \'file://component1\', \'file://component2\';\n\nFor information about component naming, see [HELP INSTALL COMPONENT].\n\nIf any error occurs, the statement fails and has no effect. For\nexample, this happens if a component name is erroneous, a named\ncomponent is not installed, or cannot be uninstalled because other\ninstalled components depend on it.\n\nA loader service handles component unloading, which includes removing\nuninstalled components from the mysql.component system table that\nserves as a registry. As a result, unloaded components are not loaded\nduring the startup sequence for subsequent server restarts.\n\n*Note*:\n\nThis statement has no effect for keyring components, which are loaded\nusing a manifest file and cannot be uninstalled. See\nhttps://dev.mysql.com/doc/refman/8.0/en/keyring-component-installation.\nhtml.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/uninstall-component.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/uninstall-component.html'),(635,'UNINSTALL PLUGIN',49,'Syntax:\nUNINSTALL PLUGIN plugin_name\n\nThis statement removes an installed server plugin. UNINSTALL PLUGIN is\nthe complement of INSTALL PLUGIN. It requires the DELETE privilege for\nthe mysql.plugin system table because it removes the row from that\ntable that registers the plugin.\n\nplugin_name must be the name of some plugin that is listed in the\nmysql.plugin table. The server executes the plugin\'s deinitialization\nfunction and removes the row for the plugin from the mysql.plugin\nsystem table, so that subsequent server restarts do not load and\ninitialize the plugin. UNINSTALL PLUGIN does not remove the plugin\'s\nshared library file.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/uninstall-plugin.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/uninstall-plugin.html'),(636,'CLONE',49,'Syntax:\nCLONE clone_action\n\nclone_action: {\n    LOCAL DATA DIRECTORY [=] \'clone_dir\';\n  | INSTANCE FROM \'user\'@\'host\':port\n    IDENTIFIED BY \'password\'\n    [DATA DIRECTORY [=] \'clone_dir\']\n    [REQUIRE [NO] SSL]\n}\n\nThe CLONE statement is used to clone data locally or from a remote\nMySQL server instance. To use CLONE syntax, the clone plugin must be\ninstalled. See\nhttps://dev.mysql.com/doc/refman/8.0/en/clone-plugin.html.\n\nCLONE LOCAL DATA DIRECTORY syntax clones data from the local MySQL data\ndirectory to a directory on the same server or node where the MySQL\nserver instance runs. The \'clone_dir\' directory is the full path of the\nlocal directory that data is cloned to. An absolute path is required.\nThe specified directory must not exist, but the specified path must be\nan existent path. The MySQL server requires the necessary write access\nto create the specified directory. For more information, see\nhttps://dev.mysql.com/doc/refman/8.0/en/clone-plugin-local.html.\n\nCLONE INSTANCE syntax clones data from a remote MySQL server instance\n(the donor) and transfers it to the MySQL instance where the cloning\noperation was initiated (the recipient).\n\no user is the clone user on the donor MySQL server instance.\n\no host is the hostname address of the donor MySQL server instance.\n  Internet Protocol version 6 (IPv6) address format is not supported.\n  An alias to the IPv6 address can be used instead. An IPv4 address can\n  be used as is.\n\no port is the port number of the donor MySQL server instance. (The X\n  Protocol port specified by mysqlx_port is not supported. Connecting\n  to the donor MySQL server instance through MySQL Router is also not\n  supported.)\n\no IDENTIFIED BY \'password\' specifies the password of the clone user on\n  the donor MySQL server instance.\n\no DATA DIRECTORY [=] \'clone_dir\' is an optional clause used to specify\n  a directory on the recipient for the data you are cloning. Use this\n  option if you do not want to remove existing data in the recipient\n  data directory. An absolute path is required, and the directory must\n  not exist. The MySQL server must have the necessary write access to\n  create the directory.\n\n  When the optional DATA DIRECTORY [=] \'clone_dir\' clause is not used,\n  a cloning operation removes existing data in the recipient data\n  directory, replaces it with the cloned data, and automatically\n  restarts the server afterward.\n\no [REQUIRE [NO] SSL] explicitly specifies whether an encrypted\n  connection is to be used or not when transferring cloned data over\n  the network. An error is returned if the explicit specification\n  cannot be satisfied. If an SSL clause is not specified, clone\n  attempts to establish an encrypted connection by default, falling\n  back to an insecure connection if the secure connection attempt\n  fails. A secure connection is required when cloning encrypted data\n  regardless of whether this clause is specified. For more information,\n  see\n  https://dev.mysql.com/doc/refman/8.0/en/clone-plugin-remote.html#clon\n  e-plugin-remote-ssl.\n\nFor additional information about cloning data from a remote MySQL\nserver instance, see\nhttps://dev.mysql.com/doc/refman/8.0/en/clone-plugin-remote.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/clone.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/clone.html'),(637,'SET',3,'Syntax:\nSET variable = expr [, variable = expr] ...\n\nvariable: {\n    user_var_name\n  | param_name\n  | local_var_name\n  | {GLOBAL | @@GLOBAL.} system_var_name\n  | {PERSIST | @@PERSIST.} system_var_name\n  | {PERSIST_ONLY | @@PERSIST_ONLY.} system_var_name\n  | [SESSION | @@SESSION. | @@] system_var_name\n}\n\nSET syntax for variable assignment enables you to assign values to\ndifferent types of variables that affect the operation of the server or\nclients:\n\no User-defined variables. See\n  https://dev.mysql.com/doc/refman/8.0/en/user-variables.html.\n\no Stored procedure and function parameters, and stored program local\n  variables. See\n  https://dev.mysql.com/doc/refman/8.0/en/stored-program-variables.html\n  .\n\no System variables. See\n  https://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html.\n  System variables also can be set at server startup, as described in\n  https://dev.mysql.com/doc/refman/8.0/en/using-system-variables.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/set-variable.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/set-variable.html'),(638,'SET CHARACTER SET',3,'Syntax:\nSET {CHARACTER SET | CHARSET}\n    {\'charset_name\' | DEFAULT}\n\nThis statement maps all strings sent between the server and the current\nclient with the given mapping. SET CHARACTER SET sets three session\nsystem variables: character_set_client and character_set_results are\nset to the given character set, and character_set_connection to the\nvalue of character_set_database. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html.\n\ncharset_name may be quoted or unquoted.\n\nThe default character set mapping can be restored by using the value\nDEFAULT. The default depends on the server configuration.\n\nSome character sets cannot be used as the client character set.\nAttempting to use them with SET CHARACTER SET produces an error. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html#charset\n-connection-impermissible-client-charset.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/set-character-set.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/set-character-set.html'),(639,'SET CHARSET',3,'Syntax:\nSET {CHARACTER SET | CHARSET}\n    {\'charset_name\' | DEFAULT}\n\nThis statement maps all strings sent between the server and the current\nclient with the given mapping. SET CHARACTER SET sets three session\nsystem variables: character_set_client and character_set_results are\nset to the given character set, and character_set_connection to the\nvalue of character_set_database. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html.\n\ncharset_name may be quoted or unquoted.\n\nThe default character set mapping can be restored by using the value\nDEFAULT. The default depends on the server configuration.\n\nSome character sets cannot be used as the client character set.\nAttempting to use them with SET CHARACTER SET produces an error. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html#charset\n-connection-impermissible-client-charset.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/set-character-set.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/set-character-set.html'),(640,'SET NAMES',3,'Syntax:\nSET NAMES {\'charset_name\'\n    [COLLATE \'collation_name\'] | DEFAULT}\n\nThis statement sets the three session system variables\ncharacter_set_client, character_set_connection, and\ncharacter_set_results to the given character set. Setting\ncharacter_set_connection to charset_name also sets collation_connection\nto the default collation for charset_name. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html.\n\nThe optional COLLATE clause may be used to specify a collation\nexplicitly. If given, the collation must one of the permitted\ncollations for charset_name.\n\ncharset_name and collation_name may be quoted or unquoted.\n\nThe default mapping can be restored by using a value of DEFAULT. The\ndefault depends on the server configuration.\n\nSome character sets cannot be used as the client character set.\nAttempting to use them with SET NAMES produces an error. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html#charset\n-connection-impermissible-client-charset.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/set-names.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/set-names.html'),(641,'SHOW',3,'SHOW has many forms that provide information about databases, tables,\ncolumns, or status information about the server. This section describes\nthose following:\n\nSHOW {BINARY | MASTER} LOGS\nSHOW BINLOG EVENTS [IN \'log_name\'] [FROM pos] [LIMIT [offset,] row_count]\nSHOW {CHARACTER SET | CHARSET} [like_or_where]\nSHOW COLLATION [like_or_where]\nSHOW [FULL] COLUMNS FROM tbl_name [FROM db_name] [like_or_where]\nSHOW CREATE DATABASE db_name\nSHOW CREATE EVENT event_name\nSHOW CREATE FUNCTION func_name\nSHOW CREATE PROCEDURE proc_name\nSHOW CREATE TABLE tbl_name\nSHOW CREATE TRIGGER trigger_name\nSHOW CREATE VIEW view_name\nSHOW DATABASES [like_or_where]\nSHOW ENGINE engine_name {STATUS | MUTEX}\nSHOW [STORAGE] ENGINES\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW EVENTS\nSHOW FUNCTION CODE func_name\nSHOW FUNCTION STATUS [like_or_where]\nSHOW GRANTS FOR user\nSHOW INDEX FROM tbl_name [FROM db_name]\nSHOW MASTER STATUS\nSHOW OPEN TABLES [FROM db_name] [like_or_where]\nSHOW PLUGINS\nSHOW PROCEDURE CODE proc_name\nSHOW PROCEDURE STATUS [like_or_where]\nSHOW PRIVILEGES\nSHOW [FULL] PROCESSLIST\nSHOW PROFILE [types] [FOR QUERY n] [OFFSET n] [LIMIT n]\nSHOW PROFILES\nSHOW RELAYLOG EVENTS [IN \'log_name\'] [FROM pos] [LIMIT [offset,] row_count]\nSHOW {REPLICAS | SLAVE HOSTS}\nSHOW {REPLICA | SLAVE} STATUS [FOR CHANNEL channel]\nSHOW [GLOBAL | SESSION] STATUS [like_or_where]\nSHOW TABLE STATUS [FROM db_name] [like_or_where]\nSHOW [FULL] TABLES [FROM db_name] [like_or_where]\nSHOW TRIGGERS [FROM db_name] [like_or_where]\nSHOW [GLOBAL | SESSION] VARIABLES [like_or_where]\nSHOW WARNINGS [LIMIT [offset,] row_count]\n\nlike_or_where: {\n    LIKE \'pattern\'\n  | WHERE expr\n}\n\nIf the syntax for a given SHOW statement includes a LIKE \'pattern\'\npart, \'pattern\' is a string that can contain the SQL % and _ wildcard\ncharacters. The pattern is useful for restricting statement output to\nmatching values.\n\nSeveral SHOW statements also accept a WHERE clause that provides more\nflexibility in specifying which rows to display. See\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nIn SHOW statement results, user names and host names are quoted using\nbackticks (`).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show.html'),(642,'SHOW BINARY LOGS',3,'Syntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [HELP PURGE BINARY LOGS], that shows\nhow to determine which logs can be purged. SHOW BINARY LOGS requires\nthe REPLICATION CLIENT privilege (or the deprecated SUPER privilege).\n\nEncrypted binary log files have a 512-byte file header that stores\ninformation required for encryption and decryption of the file. This is\nincluded in the file size displayed by SHOW BINARY LOGS. The Encrypted\ncolumn shows whether or not the binary log file is encrypted. Binary\nlog encryption is active if binlog_encryption=ON is set for the server.\nExisting binary log files are not encrypted or decrypted if binary log\nencryption is activated or deactivated while the server is running.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+-----------+\n| Log_name      | File_size | Encrypted |\n+---------------+-----------+-----------+\n| binlog.000015 |    724935 |       Yes |\n| binlog.000016 |    733481 |       Yes |\n+---------------+-----------+-----------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-binary-logs.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-binary-logs.html'),(643,'SHOW MASTER LOGS',3,'Syntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [HELP PURGE BINARY LOGS], that shows\nhow to determine which logs can be purged. SHOW BINARY LOGS requires\nthe REPLICATION CLIENT privilege (or the deprecated SUPER privilege).\n\nEncrypted binary log files have a 512-byte file header that stores\ninformation required for encryption and decryption of the file. This is\nincluded in the file size displayed by SHOW BINARY LOGS. The Encrypted\ncolumn shows whether or not the binary log file is encrypted. Binary\nlog encryption is active if binlog_encryption=ON is set for the server.\nExisting binary log files are not encrypted or decrypted if binary log\nencryption is activated or deactivated while the server is running.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+-----------+\n| Log_name      | File_size | Encrypted |\n+---------------+-----------+-----------+\n| binlog.000015 |    724935 |       Yes |\n| binlog.000016 |    733481 |       Yes |\n+---------------+-----------+-----------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-binary-logs.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-binary-logs.html'),(644,'SHOW BINLOG EVENTS',3,'Syntax:\nSHOW BINLOG EVENTS\n   [IN \'log_name\']\n   [FROM pos]\n   [LIMIT [offset,] row_count]\n\nShows the events in the binary log. If you do not specify \'log_name\',\nthe first binary log is displayed. SHOW BINLOG EVENTS requires the\nREPLICATION SLAVE privilege.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-binlog-events.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-binlog-events.html'),(645,'SHOW CHARACTER SET',3,'Syntax:\nSHOW {CHARACTER SET | CHARSET}\n    [LIKE \'pattern\' | WHERE expr]\n\nThe SHOW CHARACTER SET statement shows all available character sets.\nThe LIKE clause, if present, indicates which character set names to\nmatch. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html. For\nexample:\n\nmysql> SHOW CHARACTER SET LIKE \'latin%\';\n+---------+-----------------------------+-------------------+--------+\n| Charset | Description                 | Default collation | Maxlen |\n+---------+-----------------------------+-------------------+--------+\n| latin1  | cp1252 West European        | latin1_swedish_ci |      1 |\n| latin2  | ISO 8859-2 Central European | latin2_general_ci |      1 |\n| latin5  | ISO 8859-9 Turkish          | latin5_turkish_ci |      1 |\n| latin7  | ISO 8859-13 Baltic          | latin7_general_ci |      1 |\n+---------+-----------------------------+-------------------+--------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-character-set.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-character-set.html'),(646,'SHOW COLLATION',3,'Syntax:\nSHOW COLLATION\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement lists collations supported by the server. By default,\nthe output from SHOW COLLATION includes all available collations. The\nLIKE clause, if present, indicates which collation names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html. For\nexample:\n\nmysql> SHOW COLLATION WHERE Charset = \'latin1\';\n+-------------------+---------+----+---------+----------+---------+\n| Collation         | Charset | Id | Default | Compiled | Sortlen |\n+-------------------+---------+----+---------+----------+---------+\n| latin1_german1_ci | latin1  |  5 |         | Yes      |       1 |\n| latin1_swedish_ci | latin1  |  8 | Yes     | Yes      |       1 |\n| latin1_danish_ci  | latin1  | 15 |         | Yes      |       1 |\n| latin1_german2_ci | latin1  | 31 |         | Yes      |       2 |\n| latin1_bin        | latin1  | 47 |         | Yes      |       1 |\n| latin1_general_ci | latin1  | 48 |         | Yes      |       1 |\n| latin1_general_cs | latin1  | 49 |         | Yes      |       1 |\n| latin1_spanish_ci | latin1  | 94 |         | Yes      |       1 |\n+-------------------+---------+----+---------+----------+---------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-collation.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-collation.html'),(647,'SHOW COLUMNS',3,'Syntax:\nSHOW [EXTENDED] [FULL] {COLUMNS | FIELDS}\n    {FROM | IN} tbl_name\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW COLUMNS displays information about the columns in a given table.\nIt also works for views. SHOW COLUMNS displays information only for\nthose columns for which you have some privilege.\n\nmysql> SHOW COLUMNS FROM City;\n+-------------+----------+------+-----+---------+----------------+\n| Field       | Type     | Null | Key | Default | Extra          |\n+-------------+----------+------+-----+---------+----------------+\n| ID          | int(11)  | NO   | PRI | NULL    | auto_increment |\n| Name        | char(35) | NO   |     |         |                |\n| CountryCode | char(3)  | NO   | MUL |         |                |\n| District    | char(20) | NO   |     |         |                |\n| Population  | int(11)  | NO   |     | 0       |                |\n+-------------+----------+------+-----+---------+----------------+\n\nAn alternative to tbl_name FROM db_name syntax is db_name.tbl_name.\nThese two statements are equivalent:\n\nSHOW COLUMNS FROM mytable FROM mydb;\nSHOW COLUMNS FROM mydb.mytable;\n\nThe optional EXTENDED keyword causes the output to include information\nabout hidden columns that MySQL uses internally and are not accessible\nby users.\n\nThe optional FULL keyword causes the output to include the column\ncollation and comments, as well as the privileges you have for each\ncolumn.\n\nThe LIKE clause, if present, indicates which column names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nThe data types may differ from what you expect them to be based on a\nCREATE TABLE statement because MySQL sometimes changes data types when\nyou create or alter a table. The conditions under which this occurs are\ndescribed in\nhttps://dev.mysql.com/doc/refman/8.0/en/silent-column-changes.html.\n\nSHOW COLUMNS displays the following values for each table column:\n\no Field\n\n  The name of the column.\n\no Type\n\n  The column data type.\n\no Collation\n\n  The collation for nonbinary string columns, or NULL for other\n  columns. This value is displayed only if you use the FULL keyword.\n\no Null\n\n  The column nullability. The value is YES if NULL values can be stored\n  in the column, NO if not.\n\no Key\n\n  Whether the column is indexed:\n\n  o If Key is empty, the column either is not indexed or is indexed\n    only as a secondary column in a multiple-column, nonunique index.\n\n  o If Key is PRI, the column is a PRIMARY KEY or is one of the columns\n    in a multiple-column PRIMARY KEY.\n\n  o If Key is UNI, the column is the first column of a UNIQUE index. (A\n    UNIQUE index permits multiple NULL values, but you can tell whether\n    the column permits NULL by checking the Null field.)\n\n  o If Key is MUL, the column is the first column of a nonunique index\n    in which multiple occurrences of a given value are permitted within\n    the column.\n\n  If more than one of the Key values applies to a given column of a\n  table, Key displays the one with the highest priority, in the order\n  PRI, UNI, MUL.\n\n  A UNIQUE index may be displayed as PRI if it cannot contain NULL\n  values and there is no PRIMARY KEY in the table. A UNIQUE index may\n  display as MUL if several columns form a composite UNIQUE index;\n  although the combination of the columns is unique, each column can\n  still hold multiple occurrences of a given value.\n\no Default\n\n  The default value for the column. This is NULL if the column has an\n  explicit default of NULL, or if the column definition includes no\n  DEFAULT clause.\n\no Extra\n\n  Any additional information that is available about a given column.\n  The value is nonempty in these cases:\n\n  o auto_increment for columns that have the AUTO_INCREMENT attribute.\n\n  o on update CURRENT_TIMESTAMP for TIMESTAMP or DATETIME columns that\n    have the ON UPDATE CURRENT_TIMESTAMP attribute.\n\n  o VIRTUAL GENERATED or STORED GENERATED for generated columns.\n\n  o DEFAULT_GENERATED for columns that have an expression default\n    value.\n\no Privileges\n\n  The privileges you have for the column. This value is displayed only\n  if you use the FULL keyword.\n\no Comment\n\n  Any comment included in the column definition. This value is\n  displayed only if you use the FULL keyword.\n\nTable column information is also available from the INFORMATION_SCHEMA\nCOLUMNS table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-columns-tabl\ne.html. The extended information about hidden columns is available only\nusing SHOW EXTENDED COLUMNS; it cannot be obtained from the COLUMNS\ntable.\n\nYou can list a table\'s columns with the mysqlshow db_name tbl_name\ncommand.\n\nThe DESCRIBE statement provides information similar to SHOW COLUMNS.\nSee https://dev.mysql.com/doc/refman/8.0/en/describe.html.\n\nThe SHOW CREATE TABLE, SHOW TABLE STATUS, and SHOW INDEX statements\nalso provide information about tables. See [HELP SHOW].\n\nIn MySQL 8.0.30 and later, SHOW COLUMNS includes the table\'s generated\ninvisible primary key, if it has one, by default. You can cause this\ninformation to be suppressed in the statement\'s output by setting\nshow_gipk_in_create_table_and_information_schema = OFF. For more\ninformation, see\nhttps://dev.mysql.com/doc/refman/8.0/en/create-table-gipks.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-columns.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-columns.html'),(648,'SHOW FIELDS',3,'Syntax:\nSHOW [EXTENDED] [FULL] {COLUMNS | FIELDS}\n    {FROM | IN} tbl_name\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW COLUMNS displays information about the columns in a given table.\nIt also works for views. SHOW COLUMNS displays information only for\nthose columns for which you have some privilege.\n\nmysql> SHOW COLUMNS FROM City;\n+-------------+----------+------+-----+---------+----------------+\n| Field       | Type     | Null | Key | Default | Extra          |\n+-------------+----------+------+-----+---------+----------------+\n| ID          | int(11)  | NO   | PRI | NULL    | auto_increment |\n| Name        | char(35) | NO   |     |         |                |\n| CountryCode | char(3)  | NO   | MUL |         |                |\n| District    | char(20) | NO   |     |         |                |\n| Population  | int(11)  | NO   |     | 0       |                |\n+-------------+----------+------+-----+---------+----------------+\n\nAn alternative to tbl_name FROM db_name syntax is db_name.tbl_name.\nThese two statements are equivalent:\n\nSHOW COLUMNS FROM mytable FROM mydb;\nSHOW COLUMNS FROM mydb.mytable;\n\nThe optional EXTENDED keyword causes the output to include information\nabout hidden columns that MySQL uses internally and are not accessible\nby users.\n\nThe optional FULL keyword causes the output to include the column\ncollation and comments, as well as the privileges you have for each\ncolumn.\n\nThe LIKE clause, if present, indicates which column names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nThe data types may differ from what you expect them to be based on a\nCREATE TABLE statement because MySQL sometimes changes data types when\nyou create or alter a table. The conditions under which this occurs are\ndescribed in\nhttps://dev.mysql.com/doc/refman/8.0/en/silent-column-changes.html.\n\nSHOW COLUMNS displays the following values for each table column:\n\no Field\n\n  The name of the column.\n\no Type\n\n  The column data type.\n\no Collation\n\n  The collation for nonbinary string columns, or NULL for other\n  columns. This value is displayed only if you use the FULL keyword.\n\no Null\n\n  The column nullability. The value is YES if NULL values can be stored\n  in the column, NO if not.\n\no Key\n\n  Whether the column is indexed:\n\n  o If Key is empty, the column either is not indexed or is indexed\n    only as a secondary column in a multiple-column, nonunique index.\n\n  o If Key is PRI, the column is a PRIMARY KEY or is one of the columns\n    in a multiple-column PRIMARY KEY.\n\n  o If Key is UNI, the column is the first column of a UNIQUE index. (A\n    UNIQUE index permits multiple NULL values, but you can tell whether\n    the column permits NULL by checking the Null field.)\n\n  o If Key is MUL, the column is the first column of a nonunique index\n    in which multiple occurrences of a given value are permitted within\n    the column.\n\n  If more than one of the Key values applies to a given column of a\n  table, Key displays the one with the highest priority, in the order\n  PRI, UNI, MUL.\n\n  A UNIQUE index may be displayed as PRI if it cannot contain NULL\n  values and there is no PRIMARY KEY in the table. A UNIQUE index may\n  display as MUL if several columns form a composite UNIQUE index;\n  although the combination of the columns is unique, each column can\n  still hold multiple occurrences of a given value.\n\no Default\n\n  The default value for the column. This is NULL if the column has an\n  explicit default of NULL, or if the column definition includes no\n  DEFAULT clause.\n\no Extra\n\n  Any additional information that is available about a given column.\n  The value is nonempty in these cases:\n\n  o auto_increment for columns that have the AUTO_INCREMENT attribute.\n\n  o on update CURRENT_TIMESTAMP for TIMESTAMP or DATETIME columns that\n    have the ON UPDATE CURRENT_TIMESTAMP attribute.\n\n  o VIRTUAL GENERATED or STORED GENERATED for generated columns.\n\n  o DEFAULT_GENERATED for columns that have an expression default\n    value.\n\no Privileges\n\n  The privileges you have for the column. This value is displayed only\n  if you use the FULL keyword.\n\no Comment\n\n  Any comment included in the column definition. This value is\n  displayed only if you use the FULL keyword.\n\nTable column information is also available from the INFORMATION_SCHEMA\nCOLUMNS table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-columns-tabl\ne.html. The extended information about hidden columns is available only\nusing SHOW EXTENDED COLUMNS; it cannot be obtained from the COLUMNS\ntable.\n\nYou can list a table\'s columns with the mysqlshow db_name tbl_name\ncommand.\n\nThe DESCRIBE statement provides information similar to SHOW COLUMNS.\nSee https://dev.mysql.com/doc/refman/8.0/en/describe.html.\n\nThe SHOW CREATE TABLE, SHOW TABLE STATUS, and SHOW INDEX statements\nalso provide information about tables. See [HELP SHOW].\n\nIn MySQL 8.0.30 and later, SHOW COLUMNS includes the table\'s generated\ninvisible primary key, if it has one, by default. You can cause this\ninformation to be suppressed in the statement\'s output by setting\nshow_gipk_in_create_table_and_information_schema = OFF. For more\ninformation, see\nhttps://dev.mysql.com/doc/refman/8.0/en/create-table-gipks.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-columns.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-columns.html'),(649,'SHOW CREATE DATABASE',3,'Syntax:\nSHOW CREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name\n\nShows the CREATE DATABASE statement that creates the named database. If\nthe SHOW statement includes an IF NOT EXISTS clause, the output too\nincludes such a clause. SHOW CREATE SCHEMA is a synonym for SHOW CREATE\nDATABASE.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-database.html\n\n','mysql> SHOW CREATE DATABASE test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET utf8mb4\n                 COLLATE utf8mb4_0900_ai_ci */ /*!80014 DEFAULT ENCRYPTION=\'N\' */\n\nmysql> SHOW CREATE SCHEMA test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET utf8mb4\n                 COLLATE utf8mb4_0900_ai_ci */ /*!80014 DEFAULT ENCRYPTION=\'N\' */\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-database.html'),(650,'SHOW CREATE SCHEMA',3,'Syntax:\nSHOW CREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name\n\nShows the CREATE DATABASE statement that creates the named database. If\nthe SHOW statement includes an IF NOT EXISTS clause, the output too\nincludes such a clause. SHOW CREATE SCHEMA is a synonym for SHOW CREATE\nDATABASE.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-database.html\n\n','mysql> SHOW CREATE DATABASE test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET utf8mb4\n                 COLLATE utf8mb4_0900_ai_ci */ /*!80014 DEFAULT ENCRYPTION=\'N\' */\n\nmysql> SHOW CREATE SCHEMA test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET utf8mb4\n                 COLLATE utf8mb4_0900_ai_ci */ /*!80014 DEFAULT ENCRYPTION=\'N\' */\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-database.html'),(651,'SHOW CREATE EVENT',3,'Syntax:\nSHOW CREATE EVENT event_name\n\nThis statement displays the CREATE EVENT statement needed to re-create\na given event. It requires the EVENT privilege for the database from\nwhich the event is to be shown. For example (using the same event\ne_daily defined and then altered in [HELP SHOW EVENTS]):\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-event.html\n\n','mysql> SHOW CREATE EVENT myschema.e_daily\\G\n*************************** 1. row ***************************\n               Event: e_daily\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n           time_zone: SYSTEM\n        Create Event: CREATE DEFINER=`jon`@`ghidora` EVENT `e_daily`\n                        ON SCHEDULE EVERY 1 DAY\n                        STARTS CURRENT_TIMESTAMP + INTERVAL 6 HOUR\n                        ON COMPLETION NOT PRESERVE\n                        ENABLE\n                        COMMENT \'Saves total number of sessions then\n                                clears the table each day\'\n                        DO BEGIN\n                          INSERT INTO site_activity.totals (time, total)\n                            SELECT CURRENT_TIMESTAMP, COUNT(*)\n                              FROM site_activity.sessions;\n                          DELETE FROM site_activity.sessions;\n                        END\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-event.html'),(652,'SHOW CREATE FUNCTION',3,'Syntax:\nSHOW CREATE FUNCTION func_name\n\nThis statement is similar to SHOW CREATE PROCEDURE but for stored\nfunctions. See [HELP SHOW CREATE PROCEDURE].\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-function.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-create-function.html'),(653,'SHOW CREATE PROCEDURE',3,'Syntax:\nSHOW CREATE PROCEDURE proc_name\n\nThis statement is a MySQL extension. It returns the exact string that\ncan be used to re-create the named stored procedure. A similar\nstatement, SHOW CREATE FUNCTION, displays information about stored\nfunctions (see [HELP SHOW CREATE FUNCTION]).\n\nTo use either statement, you must be the user named as the routine\nDEFINER, have the SHOW_ROUTINE privilege, have the SELECT privilege at\nthe global level, or have the CREATE ROUTINE, ALTER ROUTINE, or EXECUTE\nprivilege granted at a scope that includes the routine. The value\ndisplayed for the Create Procedure or Create Function field is NULL if\nyou have only CREATE ROUTINE, ALTER ROUTINE, or EXECUTE.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-procedure.html\n\n','mysql> SHOW CREATE PROCEDURE test.citycount\\G\n*************************** 1. row ***************************\n           Procedure: citycount\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n    Create Procedure: CREATE DEFINER=`me`@`localhost`\n                      PROCEDURE `citycount`(IN country CHAR(3), OUT cities INT)\n                      BEGIN\n                        SELECT COUNT(*) INTO cities FROM world.city\n                        WHERE CountryCode = country;\n                      END\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nmysql> SHOW CREATE FUNCTION test.hello\\G\n*************************** 1. row ***************************\n            Function: hello\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n     Create Function: CREATE DEFINER=`me`@`localhost`\n                      FUNCTION `hello`(s CHAR(20))\n                      RETURNS char(50) CHARSET utf8mb4\n                      DETERMINISTIC\n                      RETURN CONCAT(\'Hello, \',s,\'!\')\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-procedure.html'),(654,'SHOW CREATE TABLE',3,'Syntax:\nSHOW CREATE TABLE tbl_name\n\nShows the CREATE TABLE statement that creates the named table. To use\nthis statement, you must have some privilege for the table. This\nstatement also works with views.\n\nAs of MySQL 8.0.16, MySQL implements CHECK constraints and SHOW CREATE\nTABLE displays them. All CHECK constraints are displayed as table\nconstraints. That is, a CHECK constraint originally specified as part\nof a column definition displays as a separate clause not part of the\ncolumn definition. Example:\n\nmysql> CREATE TABLE t1 (\n         i1 INT CHECK (i1 <> 0),      -- column constraint\n         i2 INT,\n         CHECK (i2 > i1),             -- table constraint\n         CHECK (i2 <> 0) NOT ENFORCED -- table constraint, not enforced\n       );\n\nmysql> SHOW CREATE TABLE t1\\G\n*************************** 1. row ***************************\n       Table: t1\nCreate Table: CREATE TABLE `t1` (\n  `i1` int DEFAULT NULL,\n  `i2` int DEFAULT NULL,\n  CONSTRAINT `t1_chk_1` CHECK ((`i1` <> 0)),\n  CONSTRAINT `t1_chk_2` CHECK ((`i2` > `i1`)),\n  CONSTRAINT `t1_chk_3` CHECK ((`i2` <> 0)) /*!80016 NOT ENFORCED */\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci\n\nSHOW CREATE TABLE quotes table and column names according to the value\nof the sql_quote_show_create option. See\nhttps://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html.\n\nWhen altering the storage engine of a table, table options that are not\napplicable to the new storage engine are retained in the table\ndefinition to enable reverting the table with its previously defined\noptions to the original storage engine, if necessary. For example, when\nchanging the storage engine from InnoDB to MyISAM, options specific to\nInnoDB, such as ROW_FORMAT=COMPACT, are retained, as shown here:\n\nmysql> CREATE TABLE t1 (c1 INT PRIMARY KEY) ROW_FORMAT=COMPACT ENGINE=InnoDB;\nmysql> ALTER TABLE t1 ENGINE=MyISAM;\nmysql> SHOW CREATE TABLE t1\\G\n*************************** 1. row ***************************\n       Table: t1\nCreate Table: CREATE TABLE `t1` (\n  `c1` int NOT NULL,\n  PRIMARY KEY (`c1`)\n) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT\n\nWhen creating a table with strict mode disabled, the storage engine\'s\ndefault row format is used if the specified row format is not\nsupported. The actual row format of the table is reported in the\nRow_format column in response to SHOW TABLE STATUS. SHOW CREATE TABLE\nshows the row format that was specified in the CREATE TABLE statement.\n\nIn MySQL 8.0.30 and later, SHOW CREATE TABLE includes the definition of\nthe table\'s generated invisible primary key, if it has such a key, by\ndefault. You can cause this information to be suppressed in the\nstatement\'s output by setting\nshow_gipk_in_create_table_and_information_schema = OFF. For more\ninformation, see\nhttps://dev.mysql.com/doc/refman/8.0/en/create-table-gipks.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-table.html\n\n','mysql> SHOW CREATE TABLE t\\G\n*************************** 1. row ***************************\n       Table: t\nCreate Table: CREATE TABLE `t` (\n  `id` int NOT NULL AUTO_INCREMENT,\n  `s` char(60) DEFAULT NULL,\n  PRIMARY KEY (`id`)\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-table.html'),(655,'SHOW CREATE TRIGGER',3,'Syntax:\nSHOW CREATE TRIGGER trigger_name\n\nThis statement shows the CREATE TRIGGER statement that creates the\nnamed trigger. This statement requires the TRIGGER privilege for the\ntable associated with the trigger.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-trigger.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-create-trigger.html'),(656,'SHOW CREATE USER',3,'Syntax:\nSHOW CREATE USER user\n\nThis statement shows the CREATE USER statement that creates the named\nuser. An error occurs if the user does not exist. The statement\nrequires the SELECT privilege for the mysql system schema, except to\nsee information for the current user. For the current user, the SELECT\nprivilege for the mysql.user system table is required for display of\nthe password hash in the IDENTIFIED AS clause; otherwise, the hash\ndisplays as <secret>.\n\nTo name the account, use the format described in\nhttps://dev.mysql.com/doc/refman/8.0/en/account-names.html. The host\nname part of the account name, if omitted, defaults to \'%\'. It is also\npossible to specify CURRENT_USER or CURRENT_USER() to refer to the\naccount associated with the current session.\n\nPassword hash values displayed in the IDENTIFIED WITH clause of output\nfrom SHOW CREATE USER may contain unprintable characters that have\nadverse effects on terminal displays and in other environments.\nEnabling the print_identified_with_as_hex system variable (available as\nof MySQL 8.0.17) causes SHOW CREATE USER to display such hash values as\nhexadecimal strings rather than as regular string literals. Hash values\nthat do not contain unprintable characters still display as regular\nstring literals, even with this variable enabled.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-user.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-create-user.html'),(657,'SHOW CREATE VIEW',3,'Syntax:\nSHOW CREATE VIEW view_name\n\nThis statement shows the CREATE VIEW statement that creates the named\nview.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-view.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-create-view.html'),(658,'SHOW DATABASES',3,'Syntax:\nSHOW {DATABASES | SCHEMAS}\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW DATABASES lists the databases on the MySQL server host. SHOW\nSCHEMAS is a synonym for SHOW DATABASES. The LIKE clause, if present,\nindicates which database names to match. The WHERE clause can be given\nto select rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nYou see only those databases for which you have some kind of privilege,\nunless you have the global SHOW DATABASES privilege. You can also get\nthis list using the mysqlshow command.\n\nIf the server was started with the --skip-show-database option, you\ncannot use this statement at all unless you have the SHOW DATABASES\nprivilege.\n\nMySQL implements databases as directories in the data directory, so\nthis statement simply lists directories in that location. However, the\noutput may include names of directories that do not correspond to\nactual databases.\n\nDatabase information is also available from the INFORMATION_SCHEMA\nSCHEMATA table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-schemata-tab\nle.html.\n\n*Caution*:\n\nBecause any static global privilege is considered a privilege for all\ndatabases, any static global privilege enables a user to see all\ndatabase names with SHOW DATABASES or by examining the SCHEMATA table\nof INFORMATION_SCHEMA, except databases that have been restricted at\nthe database level by partial revokes.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-databases.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-databases.html'),(659,'SHOW SCHEMAS',3,'Syntax:\nSHOW {DATABASES | SCHEMAS}\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW DATABASES lists the databases on the MySQL server host. SHOW\nSCHEMAS is a synonym for SHOW DATABASES. The LIKE clause, if present,\nindicates which database names to match. The WHERE clause can be given\nto select rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nYou see only those databases for which you have some kind of privilege,\nunless you have the global SHOW DATABASES privilege. You can also get\nthis list using the mysqlshow command.\n\nIf the server was started with the --skip-show-database option, you\ncannot use this statement at all unless you have the SHOW DATABASES\nprivilege.\n\nMySQL implements databases as directories in the data directory, so\nthis statement simply lists directories in that location. However, the\noutput may include names of directories that do not correspond to\nactual databases.\n\nDatabase information is also available from the INFORMATION_SCHEMA\nSCHEMATA table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-schemata-tab\nle.html.\n\n*Caution*:\n\nBecause any static global privilege is considered a privilege for all\ndatabases, any static global privilege enables a user to see all\ndatabase names with SHOW DATABASES or by examining the SCHEMATA table\nof INFORMATION_SCHEMA, except databases that have been restricted at\nthe database level by partial revokes.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-databases.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-databases.html'),(660,'SHOW ENGINE',3,'Syntax:\nSHOW ENGINE engine_name {STATUS | MUTEX}\n\nSHOW ENGINE displays operational information about a storage engine. It\nrequires the PROCESS privilege. The statement has these variants:\n\nSHOW ENGINE INNODB STATUS\nSHOW ENGINE INNODB MUTEX\nSHOW ENGINE PERFORMANCE_SCHEMA STATUS\n\nSHOW ENGINE INNODB STATUS displays extensive information from the\nstandard InnoDB Monitor about the state of the InnoDB storage engine.\nFor information about the standard monitor and other InnoDB Monitors\nthat provide information about InnoDB processing, see\nhttps://dev.mysql.com/doc/refman/8.0/en/innodb-monitors.html.\n\nSHOW ENGINE INNODB MUTEX displays InnoDB mutex and rw-lock statistics.\n\n*Note*:\n\nInnoDB mutexes and rwlocks can also be monitored using Performance\nSchema tables. See\nhttps://dev.mysql.com/doc/refman/8.0/en/monitor-innodb-mutex-waits-perf\normance-schema.html.\n\nMutex statistics collection is configured dynamically using the\nfollowing options:\n\no To enable the collection of mutex statistics, run:\n\nSET GLOBAL innodb_monitor_enable=\'latch\';\n\no To reset mutex statistics, run:\n\nSET GLOBAL innodb_monitor_reset=\'latch\';\n\no To disable the collection of mutex statistics, run:\n\nSET GLOBAL innodb_monitor_disable=\'latch\';\n\nCollection of mutex statistics for SHOW ENGINE INNODB MUTEX can also be\nenabled by setting innodb_monitor_enable=\'all\', or disabled by setting\ninnodb_monitor_disable=\'all\'.\n\nSHOW ENGINE INNODB MUTEX output has these columns:\n\no Type\n\n  Always InnoDB.\n\no Name\n\n  For mutexes, the Name field reports only the mutex name. For rwlocks,\n  the Name field reports the source file where the rwlock is\n  implemented, and the line number in the file where the rwlock is\n  created. The line number is specific to your version of MySQL.\n\no Status\n\n  The mutex status. This field reports the number of spins, waits, and\n  calls. Statistics for low-level operating system mutexes, which are\n  implemented outside of InnoDB, are not reported.\n\n  o spins indicates the number of spins.\n\n  o waits indicates the number of mutex waits.\n\n  o calls indicates how many times the mutex was requested.\n\nSHOW ENGINE INNODB MUTEX does not list mutexes and rw-locks for each\nbuffer pool block, as the amount of output would be overwhelming on\nsystems with a large buffer pool. SHOW ENGINE INNODB MUTEX does,\nhowever, print aggregate BUF_BLOCK_MUTEX spin, wait, and call values\nfor buffer pool block mutexes and rw-locks. SHOW ENGINE INNODB MUTEX\nalso does not list any mutexes or rw-locks that have never been waited\non (os_waits=0). Thus, SHOW ENGINE INNODB MUTEX only displays\ninformation about mutexes and rw-locks outside of the buffer pool that\nhave caused at least one OS-level wait.\n\nUse SHOW ENGINE PERFORMANCE_SCHEMA STATUS to inspect the internal\noperation of the Performance Schema code:\n\nmysql> SHOW ENGINE PERFORMANCE_SCHEMA STATUS\\G\n...\n*************************** 3. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.size\nStatus: 76\n*************************** 4. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.count\nStatus: 10000\n*************************** 5. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.memory\nStatus: 760000\n...\n*************************** 57. row ***************************\n  Type: performance_schema\n  Name: performance_schema.memory\nStatus: 26459600\n...\n\nThis statement is intended to help the DBA understand the effects that\ndifferent Performance Schema options have on memory requirements.\n\nName values consist of two parts, which name an internal buffer and a\nbuffer attribute, respectively. Interpret buffer names as follows:\n\no An internal buffer that is not exposed as a table is named within\n  parentheses. Examples: (pfs_cond_class).size,\n  (pfs_mutex_class).memory.\n\no An internal buffer that is exposed as a table in the\n  performance_schema database is named after the table, without\n  parentheses. Examples: events_waits_history.size,\n  mutex_instances.count.\n\no A value that applies to the Performance Schema as a whole begins with\n  performance_schema. Example: performance_schema.memory.\n\nBuffer attributes have these meanings:\n\no size is the size of the internal record used by the implementation,\n  such as the size of a row in a table. size values cannot be changed.\n\no count is the number of internal records, such as the number of rows\n  in a table. count values can be changed using Performance Schema\n  configuration options.\n\no For a table, tbl_name.memory is the product of size and count. For\n  the Performance Schema as a whole, performance_schema.memory is the\n  sum of all the memory used (the sum of all other memory values).\n\nIn some cases, there is a direct relationship between a Performance\nSchema configuration parameter and a SHOW ENGINE value. For example,\nevents_waits_history_long.count corresponds to\nperformance_schema_events_waits_history_long_size. In other cases, the\nrelationship is more complex. For example, events_waits_history.count\ncorresponds to performance_schema_events_waits_history_size (the number\nof rows per thread) multiplied by\nperformance_schema_max_thread_instances ( the number of threads).\n\nSHOW ENGINE NDB STATUS If the server has the NDB storage engine\nenabled, SHOW ENGINE NDB STATUS displays cluster status information\nsuch as the number of connected data nodes, the cluster connectstring,\nand cluster binary log epochs, as well as counts of various Cluster API\nobjects created by the MySQL Server when connected to the cluster.\nSample output from this statement is shown here:\n\nmysql> SHOW ENGINE NDB STATUS;\n+------------+-----------------------+--------------------------------------------------+\n| Type       | Name                  | Status                                           |\n+------------+-----------------------+--------------------------------------------------+\n| ndbcluster | connection            | cluster_node_id=7,\n  connected_host=198.51.100.103, connected_port=1186, number_of_data_nodes=4,\n  number_of_ready_data_nodes=3, connect_count=0                                         |\n| ndbcluster | NdbTransaction        | created=6, free=0, sizeof=212                    |\n| ndbcluster | NdbOperation          | created=8, free=8, sizeof=660                    |\n| ndbcluster | NdbIndexScanOperation | created=1, free=1, sizeof=744                    |\n| ndbcluster | NdbIndexOperation     | created=0, free=0, sizeof=664                    |\n| ndbcluster | NdbRecAttr            | created=1285, free=1285, sizeof=60               |\n| ndbcluster | NdbApiSignal          | created=16, free=16, sizeof=136                  |\n| ndbcluster | NdbLabel              | created=0, free=0, sizeof=196                    |\n| ndbcluster | NdbBranch             | created=0, free=0, sizeof=24                     |\n| ndbcluster | NdbSubroutine         | created=0, free=0, sizeof=68                     |\n| ndbcluster | NdbCall               | created=0, free=0, sizeof=16                     |\n| ndbcluster | NdbBlob               | created=1, free=1, sizeof=264                    |\n| ndbcluster | NdbReceiver           | created=4, free=0, sizeof=68                     |\n| ndbcluster | binlog                | latest_epoch=155467, latest_trans_epoch=148126,\n  latest_received_binlog_epoch=0, latest_handled_binlog_epoch=0,\n  latest_applied_binlog_epoch=0                                                         |\n+------------+-----------------------+--------------------------------------------------+\n\nThe Status column in each of these rows provides information about the\nMySQL server\'s connection to the cluster and about the cluster binary\nlog\'s status, respectively. The Status information is in the form of\ncomma-delimited set of name/value pairs.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-engine.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-engine.html'),(661,'SHOW ENGINES',3,'Syntax:\nSHOW [STORAGE] ENGINES\n\nSHOW ENGINES displays status information about the server\'s storage\nengines. This is particularly useful for checking whether a storage\nengine is supported, or to see what the default engine is.\n\nFor information about MySQL storage engines, see\nhttps://dev.mysql.com/doc/refman/8.0/en/innodb-storage-engine.html, and\nhttps://dev.mysql.com/doc/refman/8.0/en/storage-engines.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-engines.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-engines.html'),(662,'SHOW ERRORS',3,'Syntax:\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW COUNT(*) ERRORS\n\nSHOW ERRORS is a diagnostic statement that is similar to SHOW WARNINGS,\nexcept that it displays information only for errors, rather than for\nerrors, warnings, and notes.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\nhttps://dev.mysql.com/doc/refman/8.0/en/select.html.\n\nThe SHOW COUNT(*) ERRORS statement displays the number of errors. You\ncan also retrieve this number from the error_count variable:\n\nSHOW COUNT(*) ERRORS;\nSELECT @@error_count;\n\nSHOW ERRORS and error_count apply only to errors, not warnings or\nnotes. In other respects, they are similar to SHOW WARNINGS and\nwarning_count. In particular, SHOW ERRORS cannot display information\nfor more than max_error_count messages, and error_count can exceed the\nvalue of max_error_count if the number of errors exceeds\nmax_error_count.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-errors.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-errors.html'),(663,'SHOW EVENTS',3,'Syntax:\nSHOW EVENTS\n    [{FROM | IN} schema_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement displays information about Event Manager events, which\nare discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/event-scheduler.html. It\nrequires the EVENT privilege for the database from which the events are\nto be shown.\n\nIn its simplest form, SHOW EVENTS lists all of the events in the\ncurrent schema:\n\nmysql> SELECT CURRENT_USER(), SCHEMA();\n+----------------+----------+\n| CURRENT_USER() | SCHEMA() |\n+----------------+----------+\n| jon@ghidora    | myschema |\n+----------------+----------+\n1 row in set (0.00 sec)\n\nmysql> SHOW EVENTS\\G\n*************************** 1. row ***************************\n                  Db: myschema\n                Name: e_daily\n             Definer: jon@ghidora\n           Time zone: SYSTEM\n                Type: RECURRING\n          Execute at: NULL\n      Interval value: 1\n      Interval field: DAY\n              Starts: 2018-08-08 11:06:34\n                Ends: NULL\n              Status: ENABLED\n          Originator: 1\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nTo see events for a specific schema, use the FROM clause. For example,\nto see events for the test schema, use the following statement:\n\nSHOW EVENTS FROM test;\n\nThe LIKE clause, if present, indicates which event names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-events.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-events.html'),(664,'SHOW FUNCTION CODE',3,'Syntax:\nSHOW FUNCTION CODE func_name\n\nThis statement is similar to SHOW PROCEDURE CODE but for stored\nfunctions. See [HELP SHOW PROCEDURE CODE].\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-function-code.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-function-code.html'),(665,'SHOW FUNCTION STATUS',3,'Syntax:\nSHOW FUNCTION STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement is similar to SHOW PROCEDURE STATUS but for stored\nfunctions. See [HELP SHOW PROCEDURE STATUS].\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-function-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-function-status.html'),(666,'SHOW GRANTS',3,'Syntax:\nSHOW GRANTS\n    [FOR user_or_role\n        [USING role [, role] ...]]\n\nuser_or_role: {\n    user (see )\n  | role (see .\n}\n\nThis statement displays the privileges and roles that are assigned to a\nMySQL user account or role, in the form of GRANT statements that must\nbe executed to duplicate the privilege and role assignments.\n\n*Note*:\n\nTo display nonprivilege information for MySQL accounts, use the SHOW\nCREATE USER statement. See [HELP SHOW CREATE USER].\n\nSHOW GRANTS requires the SELECT privilege for the mysql system schema,\nexcept to display privileges and roles for the current user.\n\nTo name the account or role for SHOW GRANTS, use the same format as for\nthe GRANT statement (for example, \'jeffrey\'@\'localhost\'):\n\nmysql> SHOW GRANTS FOR \'jeffrey\'@\'localhost\';\n+------------------------------------------------------------------+\n| Grants for jeffrey@localhost                                     |\n+------------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `jeffrey`@`localhost`                      |\n| GRANT SELECT, INSERT, UPDATE ON `db1`.* TO `jeffrey`@`localhost` |\n+------------------------------------------------------------------+\n\nThe host part, if omitted, defaults to \'%\'. For additional information\nabout specifying account and role names, see\nhttps://dev.mysql.com/doc/refman/8.0/en/account-names.html, and\nhttps://dev.mysql.com/doc/refman/8.0/en/role-names.html.\n\nTo display the privileges granted to the current user (the account you\nare using to connect to the server), you can use any of the following\nstatements:\n\nSHOW GRANTS;\nSHOW GRANTS FOR CURRENT_USER;\nSHOW GRANTS FOR CURRENT_USER();\n\nIf SHOW GRANTS FOR CURRENT_USER (or any equivalent syntax) is used in\ndefiner context, such as within a stored procedure that executes with\ndefiner rather than invoker privileges, the grants displayed are those\nof the definer and not the invoker.\n\nIn MySQL 8.0 compared to previous series, SHOW GRANTS no longer\ndisplays ALL PRIVILEGES in its global-privileges output because the\nmeaning of ALL PRIVILEGES at the global level varies depending on which\ndynamic privileges are defined. Instead, SHOW GRANTS explicitly lists\neach granted global privilege:\n\nmysql> SHOW GRANTS FOR \'root\'@\'localhost\';\n+---------------------------------------------------------------------+\n| Grants for root@localhost                                           |\n+---------------------------------------------------------------------+\n| GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, RELOAD,         |\n| SHUTDOWN, PROCESS, FILE, REFERENCES, INDEX, ALTER, SHOW DATABASES,  |\n| SUPER, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION   |\n| SLAVE, REPLICATION CLIENT, CREATE VIEW, SHOW VIEW, CREATE ROUTINE,  |\n| ALTER ROUTINE, CREATE USER, EVENT, TRIGGER, CREATE TABLESPACE,      |\n| CREATE ROLE, DROP ROLE ON *.* TO `root`@`localhost` WITH GRANT      |\n| OPTION                                                              |\n| GRANT PROXY ON \'\'@\'\' TO `root`@`localhost` WITH GRANT OPTION        |\n+---------------------------------------------------------------------+\n\nApplications that process SHOW GRANTS output should be adjusted\naccordingly.\n\nAt the global level, GRANT OPTION applies to all granted static global\nprivileges if granted for any of them, but applies individually to\ngranted dynamic privileges. SHOW GRANTS displays global privileges this\nway:\n\no One line listing all granted static privileges, if there are any,\n  including WITH GRANT OPTION if appropriate.\n\no One line listing all granted dynamic privileges for which GRANT\n  OPTION is granted, if there are any, including WITH GRANT OPTION.\n\no One line listing all granted dynamic privileges for which GRANT\n  OPTION is not granted, if there are any, without WITH GRANT OPTION.\n\nWith the optional USING clause, SHOW GRANTS enables you to examine the\nprivileges associated with roles for the user. Each role named in the\nUSING clause must be granted to the user.\n\nSuppose that user u1 is assigned roles r1 and r2, as follows:\n\nCREATE ROLE \'r1\', \'r2\';\nGRANT SELECT ON db1.* TO \'r1\';\nGRANT INSERT, UPDATE, DELETE ON db1.* TO \'r2\';\nCREATE USER \'u1\'@\'localhost\' IDENTIFIED BY \'u1pass\';\nGRANT \'r1\', \'r2\' TO \'u1\'@\'localhost\';\n\nSHOW GRANTS without USING shows the granted roles:\n\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\';\n+---------------------------------------------+\n| Grants for u1@localhost                     |\n+---------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`      |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost` |\n+---------------------------------------------+\n\nAdding a USING clause causes the statement to also display the\nprivileges associated with each role named in the clause:\n\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r1\';\n+---------------------------------------------+\n| Grants for u1@localhost                     |\n+---------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`      |\n| GRANT SELECT ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost` |\n+---------------------------------------------+\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r2\';\n+-------------------------------------------------------------+\n| Grants for u1@localhost                                     |\n+-------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`                      |\n| GRANT INSERT, UPDATE, DELETE ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost`                 |\n+-------------------------------------------------------------+\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r1\', \'r2\';\n+---------------------------------------------------------------------+\n| Grants for u1@localhost                                             |\n+---------------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`                              |\n| GRANT SELECT, INSERT, UPDATE, DELETE ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost`                         |\n+---------------------------------------------------------------------+\n\n*Note*:\n\nA privilege granted to an account is always in effect, but a role is\nnot. The active roles for an account can differ across and within\nsessions, depending on the value of the activate_all_roles_on_login\nsystem variable, the account default roles, and whether SET ROLE has\nbeen executed within a session.\n\nMySQL 8.0.16 and higher supports partial revokes of global privileges,\nsuch that a global privilege can be restricted from applying to\nparticular schemas (see\nhttps://dev.mysql.com/doc/refman/8.0/en/partial-revokes.html). To\nindicate which global schema privileges have been revoked for\nparticular schemas, SHOW GRANTS output includes REVOKE statements:\n\nmysql> SET PERSIST partial_revokes = ON;\nmysql> CREATE USER u1;\nmysql> GRANT SELECT, INSERT, DELETE ON *.* TO u1;\nmysql> REVOKE SELECT, INSERT ON mysql.* FROM u1;\nmysql> REVOKE DELETE ON world.* FROM u1;\nmysql> SHOW GRANTS FOR u1;\n+--------------------------------------------------+\n| Grants for u1@%                                  |\n+--------------------------------------------------+\n| GRANT SELECT, INSERT, DELETE ON *.* TO `u1`@`%`  |\n| REVOKE SELECT, INSERT ON `mysql`.* FROM `u1`@`%` |\n| REVOKE DELETE ON `world`.* FROM `u1`@`%`         |\n+--------------------------------------------------+\n\nSHOW GRANTS does not display privileges that are available to the named\naccount but are granted to a different account. For example, if an\nanonymous account exists, the named account might be able to use its\nprivileges, but SHOW GRANTS does not display them.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-grants.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-grants.html'),(667,'SHOW INDEX',3,'Syntax:\nSHOW [EXTENDED] {INDEX | INDEXES | KEYS}\n    {FROM | IN} tbl_name\n    [{FROM | IN} db_name]\n    [WHERE expr]\n\nSHOW INDEX returns table index information. The format resembles that\nof the SQLStatistics call in ODBC. This statement requires some\nprivilege for any column in the table.\n\nmysql> SHOW INDEX FROM City\\G\n*************************** 1. row ***************************\n        Table: city\n   Non_unique: 0\n     Key_name: PRIMARY\n Seq_in_index: 1\n  Column_name: ID\n    Collation: A\n  Cardinality: 4188\n     Sub_part: NULL\n       Packed: NULL\n         Null:\n   Index_type: BTREE\n      Comment:\nIndex_comment:\n      Visible: YES\n   Expression: NULL\n*************************** 2. row ***************************\n        Table: city\n   Non_unique: 1\n     Key_name: CountryCode\n Seq_in_index: 1\n  Column_name: CountryCode\n    Collation: A\n  Cardinality: 232\n     Sub_part: NULL\n       Packed: NULL\n         Null:\n   Index_type: BTREE\n      Comment:\nIndex_comment:\n      Visible: YES\n   Expression: NULL\n\nAn alternative to tbl_name FROM db_name syntax is db_name.tbl_name.\nThese two statements are equivalent:\n\nSHOW INDEX FROM mytable FROM mydb;\nSHOW INDEX FROM mydb.mytable;\n\nThe optional EXTENDED keyword causes the output to include information\nabout hidden indexes that MySQL uses internally and are not accessible\nby users.\n\nThe WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nSHOW INDEX returns the following fields:\n\no Table\n\n  The name of the table.\n\no Non_unique\n\n  0 if the index cannot contain duplicates, 1 if it can.\n\no Key_name\n\n  The name of the index. If the index is the primary key, the name is\n  always PRIMARY.\n\no Seq_in_index\n\n  The column sequence number in the index, starting with 1.\n\no Column_name\n\n  The column name. See also the description for the Expression column.\n\no Collation\n\n  How the column is sorted in the index. This can have values A\n  (ascending), D (descending), or NULL (not sorted).\n\no Cardinality\n\n  An estimate of the number of unique values in the index. To update\n  this number, run ANALYZE TABLE or (for MyISAM tables) myisamchk -a.\n\n  Cardinality is counted based on statistics stored as integers, so the\n  value is not necessarily exact even for small tables. The higher the\n  cardinality, the greater the chance that MySQL uses the index when\n  doing joins.\n\no Sub_part\n\n  The index prefix. That is, the number of indexed characters if the\n  column is only partly indexed, NULL if the entire column is indexed.\n\n  *Note*:\n\n  Prefix limits are measured in bytes. However, prefix lengths for\n  index specifications in CREATE TABLE, ALTER TABLE, and CREATE INDEX\n  statements are interpreted as number of characters for nonbinary\n  string types (CHAR, VARCHAR, TEXT) and number of bytes for binary\n  string types (BINARY, VARBINARY, BLOB). Take this into account when\n  specifying a prefix length for a nonbinary string column that uses a\n  multibyte character set.\n\n  For additional information about index prefixes, see\n  https://dev.mysql.com/doc/refman/8.0/en/column-indexes.html, and\n  [HELP CREATE INDEX].\n\no Packed\n\n  Indicates how the key is packed. NULL if it is not.\n\no Null\n\n  Contains YES if the column may contain NULL values and \'\' if not.\n\no Index_type\n\n  The index method used (BTREE, FULLTEXT, HASH, RTREE).\n\no Comment\n\n  Information about the index not described in its own column, such as\n  disabled if the index is disabled.\n\no Index_comment\n\n  Any comment provided for the index with a COMMENT attribute when the\n  index was created.\n\no Visible\n\n  Whether the index is visible to the optimizer. See\n  https://dev.mysql.com/doc/refman/8.0/en/invisible-indexes.html.\n\no Expression\n\n  MySQL 8.0.13 and higher supports functional key parts (see\n  https://dev.mysql.com/doc/refman/8.0/en/create-index.html#create-inde\n  x-functional-key-parts), which affects both the Column_name and\n  Expression columns:\n\n  o For a nonfunctional key part, Column_name indicates the column\n    indexed by the key part and Expression is NULL.\n\n  o For a functional key part, Column_name column is NULL and\n    Expression indicates the expression for the key part.\n\nInformation about table indexes is also available from the\nINFORMATION_SCHEMA STATISTICS table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-statistics-t\nable.html. The extended information about hidden indexes is available\nonly using SHOW EXTENDED INDEX; it cannot be obtained from the\nSTATISTICS table.\n\nYou can list a table\'s indexes with the mysqlshow -k db_name tbl_name\ncommand.\n\nIn MySQL 8.0.30 and later, SHOW INDEX includes the table\'s generated\ninvisible key, if it has one, by default. You can cause this\ninformation to be suppressed in the statement\'s output by setting\nshow_gipk_in_create_table_and_information_schema = OFF. For more\ninformation, see\nhttps://dev.mysql.com/doc/refman/8.0/en/create-table-gipks.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-index.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-index.html'),(668,'SHOW MASTER STATUS',3,'Syntax:\nSHOW MASTER STATUS\n\nThis statement provides status information about the binary log files\nof the source server. It requires the REPLICATION CLIENT privilege (or\nthe deprecated SUPER privilege).\n\nExample:\n\nmysql> SHOW MASTER STATUS\\G\n*************************** 1. row ***************************\n             File: source-bin.000002\n         Position: 1307\n     Binlog_Do_DB: test\n Binlog_Ignore_DB: manual, mysql\nExecuted_Gtid_Set: 3E11FA47-71CA-11E1-9E33-C80AA9429562:1-5\n1 row in set (0.00 sec)\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-master-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-master-status.html'),(669,'SHOW OPEN TABLES',3,'Syntax:\nSHOW OPEN TABLES\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW OPEN TABLES lists the non-TEMPORARY tables that are currently open\nin the table cache. See\nhttps://dev.mysql.com/doc/refman/8.0/en/table-cache.html. The FROM\nclause, if present, restricts the tables shown to those present in the\ndb_name database. The LIKE clause, if present, indicates which table\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-open-tables.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-open-tables.html'),(670,'SHOW PLUGINS',3,'Syntax:\nSHOW PLUGINS\n\nSHOW PLUGINS displays information about server plugins.\n\nExample of SHOW PLUGINS output:\n\nmysql> SHOW PLUGINS\\G\n*************************** 1. row ***************************\n   Name: binlog\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 2. row ***************************\n   Name: CSV\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 3. row ***************************\n   Name: MEMORY\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 4. row ***************************\n   Name: MyISAM\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n...\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-plugins.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-plugins.html'),(671,'SHOW PRIVILEGES',3,'Syntax:\nSHOW PRIVILEGES\n\nSHOW PRIVILEGES shows the list of system privileges that the MySQL\nserver supports. The privileges displayed include all static\nprivileges, and all currently registered dynamic privileges.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-privileges.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-privileges.html'),(672,'SHOW PROCEDURE CODE',3,'Syntax:\nSHOW PROCEDURE CODE proc_name\n\nThis statement is a MySQL extension that is available only for servers\nthat have been built with debugging support. It displays a\nrepresentation of the internal implementation of the named stored\nprocedure. A similar statement, SHOW FUNCTION CODE, displays\ninformation about stored functions (see [HELP SHOW FUNCTION CODE]).\n\nTo use either statement, you must be the user named as the routine\nDEFINER, have the SHOW_ROUTINE privilege, or have the SELECT privilege\nat the global level.\n\nIf the named routine is available, each statement produces a result\nset. Each row in the result set corresponds to one \"instruction\" in the\nroutine. The first column is Pos, which is an ordinal number beginning\nwith 0. The second column is Instruction, which contains an SQL\nstatement (usually changed from the original source), or a directive\nwhich has meaning only to the stored-routine handler.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-procedure-code.html\n\n','mysql> DELIMITER //\nmysql> CREATE PROCEDURE p1 ()\n       BEGIN\n         DECLARE fanta INT DEFAULT 55;\n         DROP TABLE t2;\n         LOOP\n           INSERT INTO t3 VALUES (fanta);\n           END LOOP;\n         END//\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SHOW PROCEDURE CODE p1//\n+-----+----------------------------------------+\n| Pos | Instruction                            |\n+-----+----------------------------------------+\n|   0 | set fanta@0 55                         |\n|   1 | stmt 9 \"DROP TABLE t2\"                 |\n|   2 | stmt 5 \"INSERT INTO t3 VALUES (fanta)\" |\n|   3 | jump 2                                 |\n+-----+----------------------------------------+\n4 rows in set (0.00 sec)\n\nmysql> CREATE FUNCTION test.hello (s CHAR(20))\n       RETURNS CHAR(50) DETERMINISTIC\n       RETURN CONCAT(\'Hello, \',s,\'!\');\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SHOW FUNCTION CODE test.hello;\n+-----+---------------------------------------+\n| Pos | Instruction                           |\n+-----+---------------------------------------+\n|   0 | freturn 254 concat(\'Hello, \',s@0,\'!\') |\n+-----+---------------------------------------+\n1 row in set (0.00 sec)\n','https://dev.mysql.com/doc/refman/8.0/en/show-procedure-code.html'),(673,'SHOW PROCEDURE STATUS',3,'Syntax:\nSHOW PROCEDURE STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement is a MySQL extension. It returns characteristics of a\nstored procedure, such as the database, name, type, creator, creation\nand modification dates, and character set information. A similar\nstatement, SHOW FUNCTION STATUS, displays information about stored\nfunctions (see [HELP SHOW FUNCTION STATUS]).\n\nTo use either statement, you must be the user named as the routine\nDEFINER, have the SHOW_ROUTINE privilege, have the SELECT privilege at\nthe global level, or have the CREATE ROUTINE, ALTER ROUTINE, or EXECUTE\nprivilege granted at a scope that includes the routine.\n\nThe LIKE clause, if present, indicates which procedure or function\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-procedure-status.html\n\n','mysql> SHOW PROCEDURE STATUS LIKE \'sp1\'\\G\n*************************** 1. row ***************************\n                  Db: test\n                Name: sp1\n                Type: PROCEDURE\n             Definer: testuser@localhost\n            Modified: 2018-08-08 13:54:11\n             Created: 2018-08-08 13:54:11\n       Security_type: DEFINER\n             Comment:\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nmysql> SHOW FUNCTION STATUS LIKE \'hello\'\\G\n*************************** 1. row ***************************\n                  Db: test\n                Name: hello\n                Type: FUNCTION\n             Definer: testuser@localhost\n            Modified: 2020-03-10 11:10:03\n             Created: 2020-03-10 11:10:03\n       Security_type: DEFINER\n             Comment:\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n','https://dev.mysql.com/doc/refman/8.0/en/show-procedure-status.html'),(674,'SHOW PROCESSLIST',3,'Syntax:\nSHOW [FULL] PROCESSLIST\n\nThe MySQL process list indicates the operations currently being\nperformed by the set of threads executing within the server. The SHOW\nPROCESSLIST statement is one source of process information. For a\ncomparison of this statement with other sources, see\nhttps://dev.mysql.com/doc/refman/8.0/en/processlist-access.html#process\nlist-sources.\n\n*Note*:\n\nAs of MySQL 8.0.22, an alternative implementation for SHOW PROCESSLIST\nis available based on the Performance Schema processlist table, which,\nunlike the default SHOW PROCESSLIST implementation, does not require a\nmutex and has better performance characteristics. For details, see\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-processlist-\ntable.html.\n\nIf you have the PROCESS privilege, you can see all threads, even those\nbelonging to other users. Otherwise (without the PROCESS privilege),\nnonanonymous users have access to information about their own threads\nbut not threads for other users, and anonymous users have no access to\nthread information.\n\nWithout the FULL keyword, SHOW PROCESSLIST displays only the first 100\ncharacters of each statement in the Info field.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-processlist.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-processlist.html'),(675,'SHOW PROFILE',3,'Syntax:\nSHOW PROFILE [type [, type] ... ]\n    [FOR QUERY n]\n    [LIMIT row_count [OFFSET offset]]\n\ntype: {\n    ALL\n  | BLOCK IO\n  | CONTEXT SWITCHES\n  | CPU\n  | IPC\n  | MEMORY\n  | PAGE FAULTS\n  | SOURCE\n  | SWAPS\n}\n\nThe SHOW PROFILE and SHOW PROFILES statements display profiling\ninformation that indicates resource usage for statements executed\nduring the course of the current session.\n\n*Note*:\n\nThe SHOW PROFILE and SHOW PROFILES statements are deprecated; expect\nthem to be removed in a future MySQL release. Use the Performance\nSchema instead; see\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-query-profil\ning.html.\n\nTo control profiling, use the profiling session variable, which has a\ndefault value of 0 (OFF). Enable profiling by setting profiling to 1 or\nON:\n\nmysql> SET profiling = 1;\n\nSHOW PROFILES displays a list of the most recent statements sent to the\nserver. The size of the list is controlled by the\nprofiling_history_size session variable, which has a default value of\n15. The maximum value is 100. Setting the value to 0 has the practical\neffect of disabling profiling.\n\nAll statements are profiled except SHOW PROFILE and SHOW PROFILES, so\nneither of those statements appears in the profile list. Malformed\nstatements are profiled. For example, SHOW PROFILING is an illegal\nstatement, and a syntax error occurs if you try to execute it, but it\nshows up in the profiling list.\n\nSHOW PROFILE displays detailed information about a single statement.\nWithout the FOR QUERY n clause, the output pertains to the most\nrecently executed statement. If FOR QUERY n is included, SHOW PROFILE\ndisplays information for statement n. The values of n correspond to the\nQuery_ID values displayed by SHOW PROFILES.\n\nThe LIMIT row_count clause may be given to limit the output to\nrow_count rows. If LIMIT is given, OFFSET offset may be added to begin\nthe output offset rows into the full set of rows.\n\nBy default, SHOW PROFILE displays Status and Duration columns. The\nStatus values are like the State values displayed by SHOW PROCESSLIST,\nalthough there might be some minor differences in interpretation for\nthe two statements for some status values (see\nhttps://dev.mysql.com/doc/refman/8.0/en/thread-information.html).\n\nOptional type values may be specified to display specific additional\ntypes of information:\n\no ALL displays all information\n\no BLOCK IO displays counts for block input and output operations\n\no CONTEXT SWITCHES displays counts for voluntary and involuntary\n  context switches\n\no CPU displays user and system CPU usage times\n\no IPC displays counts for messages sent and received\n\no MEMORY is not currently implemented\n\no PAGE FAULTS displays counts for major and minor page faults\n\no SOURCE displays the names of functions from the source code, together\n  with the name and line number of the file in which the function\n  occurs\n\no SWAPS displays swap counts\n\nProfiling is enabled per session. When a session ends, its profiling\ninformation is lost.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-profile.html\n\n','mysql> SELECT @@profiling;\n+-------------+\n| @@profiling |\n+-------------+\n|           0 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> SET profiling = 1;\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> DROP TABLE IF EXISTS t1;\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nmysql> CREATE TABLE T1 (id INT);\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SHOW PROFILES;\n+----------+----------+--------------------------+\n| Query_ID | Duration | Query                    |\n+----------+----------+--------------------------+\n|        0 | 0.000088 | SET PROFILING = 1        |\n|        1 | 0.000136 | DROP TABLE IF EXISTS t1  |\n|        2 | 0.011947 | CREATE TABLE t1 (id INT) |\n+----------+----------+--------------------------+\n3 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE;\n+----------------------+----------+\n| Status               | Duration |\n+----------------------+----------+\n| checking permissions | 0.000040 |\n| creating table       | 0.000056 |\n| After create         | 0.011363 |\n| query end            | 0.000375 |\n| freeing items        | 0.000089 |\n| logging slow query   | 0.000019 |\n| cleaning up          | 0.000005 |\n+----------------------+----------+\n7 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE FOR QUERY 1;\n+--------------------+----------+\n| Status             | Duration |\n+--------------------+----------+\n| query end          | 0.000107 |\n| freeing items      | 0.000008 |\n| logging slow query | 0.000015 |\n| cleaning up        | 0.000006 |\n+--------------------+----------+\n4 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE CPU FOR QUERY 2;\n+----------------------+----------+----------+------------+\n| Status               | Duration | CPU_user | CPU_system |\n+----------------------+----------+----------+------------+\n| checking permissions | 0.000040 | 0.000038 |   0.000002 |\n| creating table       | 0.000056 | 0.000028 |   0.000028 |\n| After create         | 0.011363 | 0.000217 |   0.001571 |\n| query end            | 0.000375 | 0.000013 |   0.000028 |\n| freeing items        | 0.000089 | 0.000010 |   0.000014 |\n| logging slow query   | 0.000019 | 0.000009 |   0.000010 |\n| cleaning up          | 0.000005 | 0.000003 |   0.000002 |\n+----------------------+----------+----------+------------+\n7 rows in set (0.00 sec)\n','https://dev.mysql.com/doc/refman/8.0/en/show-profile.html'),(676,'SHOW PROFILES',3,'Syntax:\nSHOW PROFILES\n\nThe SHOW PROFILES statement, together with SHOW PROFILE, displays\nprofiling information that indicates resource usage for statements\nexecuted during the course of the current session. For more\ninformation, see [HELP SHOW PROFILE].\n\n*Note*:\n\nThe SHOW PROFILE and SHOW PROFILES statements are deprecated; expect it\nto be removed in a future MySQL release. Use the Performance Schema\ninstead; see\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-query-profil\ning.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-profiles.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-profiles.html'),(677,'SHOW RELAYLOG EVENTS',3,'Syntax:\nSHOW RELAYLOG EVENTS\n    [IN \'log_name\']\n    [FROM pos]\n    [LIMIT [offset,] row_count]\n    [channel_option]\n\nchannel_option:\n    FOR CHANNEL channel\n\nShows the events in the relay log of a replica. If you do not specify\n\'log_name\', the first relay log is displayed. This statement has no\neffect on the source. SHOW RELAYLOG EVENTS requires the REPLICATION\nSLAVE privilege.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-relaylog-events.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-relaylog-events.html'),(678,'SHOW REPLICAS',3,'Syntax:\n{SHOW REPLICAS}\n\nDisplays a list of replicas currently registered with the source. From\nMySQL 8.0.22, use SHOW REPLICAS in place of SHOW SLAVE HOSTS, which is\ndeprecated from that release. In releases before MySQL 8.0.22, use SHOW\nSLAVE HOSTS. SHOW REPLICAS requires the REPLICATION SLAVE privilege.\n\nSHOW REPLICAS should be executed on a server that acts as a replication\nsource. The statement displays information about servers that are or\nhave been connected as replicas, with each row of the result\ncorresponding to one replica server, as shown here:\n\nmysql> SHOW REPLICAS;\n+------------+-----------+------+-----------+--------------------------------------+\n| Server_id  | Host      | Port | Source_id | Replica_UUID                         |\n+------------+-----------+------+-----------+--------------------------------------+\n|         10 | iconnect2 | 3306 |         3 | 14cb6624-7f93-11e0-b2c0-c80aa9429562 |\n|         21 | athena    | 3306 |         3 | 07af4990-f41f-11df-a566-7ac56fdaf645 |\n+------------+-----------+------+-----------+--------------------------------------+\n\no Server_id: The unique server ID of the replica server, as configured\n  in the replica server\'s option file, or on the command line with\n  --server-id=value.\n\no Host: The host name of the replica server, as specified on the\n  replica with the --report-host option. This can differ from the\n  machine name as configured in the operating system.\n\no User: The replica server user name, as specified on the replica with\n  the --report-user option. Statement output includes this column only\n  if the source server is started with the --show-replica-auth-info or\n  --show-slave-auth-info option.\n\no Password: The replica server password, as specified on the replica\n  with the --report-password option. Statement output includes this\n  column only if the source server is started with the\n  --show-replica-auth-info or --show-slave-auth-info option.\n\no Port: The port on the source to which the replica server is\n  listening, as specified on the replica with the --report-port option.\n\n  A zero in this column means that the replica port (--report-port) was\n  not set.\n\no Source_id: The unique server ID of the source server that the replica\n  server is replicating from. This is the server ID of the server on\n  which SHOW REPLICAS is executed, so this same value is listed for\n  each row in the result.\n\no Replica_UUID: The globally unique ID of this replica, as generated on\n  the replica and found in the replica\'s auto.cnf file.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-replicas.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-replicas.html'),(679,'SHOW SLAVE HOSTS',3,'Syntax:\n{SHOW SLAVE HOSTS | SHOW REPLICAS}\n\nDisplays a list of replicas currently registered with the source. From\nMySQL 8.0.22, SHOW SLAVE HOSTS is deprecated and the alias SHOW\nREPLICAS should be used instead. The statement works in the same way as\nbefore, only the terminology used for the statement and its output has\nchanged. Both versions of the statement update the same status\nvariables when used. Please see the documentation for SHOW REPLICAS for\na description of the statement.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-slave-hosts.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-slave-hosts.html'),(680,'SHOW REPLICA STATUS',3,'Syntax:\nSHOW {REPLICA | SLAVE} STATUS [FOR CHANNEL channel]\n\nThis statement provides status information on essential parameters of\nthe replica threads. From MySQL 8.0.22, use SHOW REPLICA STATUS in\nplace of SHOW SLAVE STATUS, which is deprecated from that release. In\nreleases before MySQL 8.0.22, use SHOW SLAVE STATUS. The statement\nrequires the REPLICATION CLIENT privilege (or the deprecated SUPER\nprivilege).\n\nSHOW REPLICA STATUS is nonblocking. When run concurrently with STOP\nREPLICA, SHOW REPLICA STATUS returns without waiting for STOP REPLICA\nto finish shutting down the replication SQL (applier) thread or\nreplication I/O (receiver) thread (or both). This permits use in\nmonitoring and other applications where getting an immediate response\nfrom SHOW REPLICA STATUS is more important than ensuring that it\nreturned the latest data. The SLAVE keyword was replaced with REPLICA\nin MySQL 8.0.22.\n\nIf you issue this statement using the mysql client, you can use a \\G\nstatement terminator rather than a semicolon to obtain a more readable\nvertical layout:\n\nmysql> SHOW REPLICA STATUS\\G\n*************************** 1. row ***************************\n             Replica_IO_State: Waiting for source to send event\n                  Source_Host: localhost\n                  Source_User: repl\n                  Source_Port: 13000\n                Connect_Retry: 60\n              Source_Log_File: source-bin.000002\n          Read_Source_Log_Pos: 1307\n               Relay_Log_File: replica-relay-bin.000003\n                Relay_Log_Pos: 1508\n        Relay_Source_Log_File: source-bin.000002\n           Replica_IO_Running: Yes\n          Replica_SQL_Running: Yes\n              Replicate_Do_DB:\n          Replicate_Ignore_DB:\n           Replicate_Do_Table:\n       Replicate_Ignore_Table:\n      Replicate_Wild_Do_Table:\n  Replicate_Wild_Ignore_Table:\n                   Last_Errno: 0\n                   Last_Error:\n                 Skip_Counter: 0\n          Exec_Source_Log_Pos: 1307\n              Relay_Log_Space: 1858\n              Until_Condition: None\n               Until_Log_File:\n                Until_Log_Pos: 0\n           Source_SSL_Allowed: No\n           Source_SSL_CA_File:\n           Source_SSL_CA_Path:\n              Source_SSL_Cert:\n            Source_SSL_Cipher:\n               Source_SSL_Key:\n        Seconds_Behind_Source: 0\nSource_SSL_Verify_Server_Cert: No\n                Last_IO_Errno: 0\n                Last_IO_Error:\n               Last_SQL_Errno: 0\n               Last_SQL_Error:\n  Replicate_Ignore_Server_Ids:\n             Source_Server_Id: 1\n                  Source_UUID: 3e11fa47-71ca-11e1-9e33-c80aa9429562\n             Source_Info_File:\n                    SQL_Delay: 0\n          SQL_Remaining_Delay: NULL\n    Replica_SQL_Running_State: Reading event from the relay log\n           Source_Retry_Count: 10\n                  Source_Bind:\n      Last_IO_Error_Timestamp:\n     Last_SQL_Error_Timestamp:\n               Source_SSL_Crl:\n           Source_SSL_Crlpath:\n           Retrieved_Gtid_Set: 3e11fa47-71ca-11e1-9e33-c80aa9429562:1-5\n            Executed_Gtid_Set: 3e11fa47-71ca-11e1-9e33-c80aa9429562:1-5\n                Auto_Position: 1\n         Replicate_Rewrite_DB:\n                 Channel_name:\n           Source_TLS_Version: TLSv1.2\n       Source_public_key_path: public_key.pem\n        Get_source_public_key: 0\n            Network_Namespace:\n\nThe Performance Schema provides tables that expose replication\ninformation. This is similar to the information available from the SHOW\nREPLICA STATUS statement, but represented in table form. For details,\nsee\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-replication-\ntables.html.\n\nFrom MySQL 8.0.27, you can set the GTID_ONLY option on the CHANGE\nREPLICATION SOURCE TO statement to stop a replication channel from\npersisting file names and file positions in the replication metadata\nrepositories. With this setting, file positions for the source binary\nlog file and the relay log file are tracked in memory. The SHOW REPLICA\nSTATUS statement still displays file positions in normal use. However,\nbecause the file positions are not being regularly updated in the\nconnection metadata repository and the applier metadata repository\nexcept in a few situations, they are likely to be out of date if the\nserver is restarted.\n\nFor a replication channel with the GTID_ONLY setting after a server\nstart, the read and applied file positions for the source binary log\nfile (Read_Source_Log_Pos and Exec_Source_Log_Pos) are set to zero, and\nthe file names (Source_Log_File and Relay_Source_Log_File) are set to\nINVALID. The relay log file name (Relay_Log_File) is set according to\nthe relay_log_recovery setting, either a new file that was created at\nserver start or the first relay log file present. The file position\n(Relay_Log_Pos) is set to position 4, and GTID auto-skip is used to\nskip any transactions in the file that were already applied.\n\nWhen the receiver thread contacts the source and gets valid position\ninformation, the read position (Read_Source_Log_Pos) and file name\n(Source_Log_File) are updated with the correct data and become valid.\nWhen the applier thread applies a transaction from the source, or skips\nan already executed transaction, the executed position\n(Exec_Source_Log_Pos) and file name (Relay_Source_Log_File) are updated\nwith the correct data and become valid. The relay log file position\n(Relay_Log_Pos) is also updated at that time.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-replica-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-replica-status.html'),(681,'SHOW SLAVE STATUS',3,'Syntax:\nSHOW {SLAVE | REPLICA} STATUS [FOR CHANNEL channel]\n\nThis statement provides status information on essential parameters of\nthe replica threads. From MySQL 8.0.22, SHOW SLAVE STATUS is deprecated\nand the alias SHOW REPLICA STATUS should be used instead. The statement\nworks in the same way as before, only the terminology used for the\nstatement and its output has changed. Both versions of the statement\nupdate the same status variables when used. Please see the\ndocumentation for SHOW REPLICA STATUS for a description of the\nstatement.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-slave-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-slave-status.html'),(682,'SHOW STATUS',3,'Syntax:\nSHOW [GLOBAL | SESSION] STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW STATUS provides server status information (see\nhttps://dev.mysql.com/doc/refman/8.0/en/server-status-variables.html).\nThis statement does not require any privilege. It requires only the\nability to connect to the server.\n\nStatus variable information is also available from these sources:\n\no Performance Schema tables. See\n  https://dev.mysql.com/doc/refman/8.0/en/performance-schema-status-var\n  iable-tables.html.\n\no The mysqladmin extended-status command. See\n  https://dev.mysql.com/doc/refman/8.0/en/mysqladmin.html.\n\nFor SHOW STATUS, a LIKE clause, if present, indicates which variable\nnames to match. A WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nSHOW STATUS accepts an optional GLOBAL or SESSION variable scope\nmodifier:\n\no With a GLOBAL modifier, the statement displays the global status\n  values. A global status variable may represent status for some aspect\n  of the server itself (for example, Aborted_connects), or the\n  aggregated status over all connections to MySQL (for example,\n  Bytes_received and Bytes_sent). If a variable has no global value,\n  the session value is displayed.\n\no With a SESSION modifier, the statement displays the status variable\n  values for the current connection. If a variable has no session\n  value, the global value is displayed. LOCAL is a synonym for SESSION.\n\no If no modifier is present, the default is SESSION.\n\nThe scope for each status variable is listed at\nhttps://dev.mysql.com/doc/refman/8.0/en/server-status-variables.html.\n\nEach invocation of the SHOW STATUS statement uses an internal temporary\ntable and increments the global Created_tmp_tables value.\n\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern:\n\nmysql> SHOW STATUS LIKE \'Key%\';\n+--------------------+----------+\n| Variable_name      | Value    |\n+--------------------+----------+\n| Key_blocks_used    | 14955    |\n| Key_read_requests  | 96854827 |\n| Key_reads          | 162040   |\n| Key_write_requests | 7589728  |\n| Key_writes         | 3813196  |\n+--------------------+----------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-status.html'),(683,'SHOW TABLE STATUS',3,'Syntax:\nSHOW TABLE STATUS\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLE STATUS works likes SHOW TABLES, but provides a lot of\ninformation about each non-TEMPORARY table. You can also get this list\nusing the mysqlshow --status db_name command. The LIKE clause, if\npresent, indicates which table names to match. The WHERE clause can be\ngiven to select rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-table-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-table-status.html'),(684,'SHOW TABLES',3,'Syntax:\nSHOW [EXTENDED] [FULL] TABLES\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLES lists the non-TEMPORARY tables in a given database. You can\nalso get this list using the mysqlshow db_name command. The LIKE\nclause, if present, indicates which table names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nMatching performed by the LIKE clause is dependent on the setting of\nthe lower_case_table_names system variable.\n\nThe optional EXTENDED modifier causes SHOW TABLES to list hidden tables\ncreated by failed ALTER TABLE statements. These temporary tables have\nnames beginning with #sql and can be dropped using DROP TABLE.\n\nThis statement also lists any views in the database. The optional FULL\nmodifier causes SHOW TABLES to display a second output column with\nvalues of BASE TABLE for a table, VIEW for a view, or SYSTEM VIEW for\nan INFORMATION_SCHEMA table.\n\nIf you have no privileges for a base table or view, it does not show up\nin the output from SHOW TABLES or mysqlshow db_name.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-tables.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-tables.html'),(685,'SHOW TRIGGERS',3,'Syntax:\nSHOW TRIGGERS\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TRIGGERS lists the triggers currently defined for tables in a\ndatabase (the default database unless a FROM clause is given). This\nstatement returns results only for databases and tables for which you\nhave the TRIGGER privilege. The LIKE clause, if present, indicates\nwhich table names (not trigger names) to match and causes the statement\nto display triggers for those tables. The WHERE clause can be given to\nselect rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nFor the ins_sum trigger defined in\nhttps://dev.mysql.com/doc/refman/8.0/en/triggers.html, the output of\nSHOW TRIGGERS is as shown here:\n\nmysql> SHOW TRIGGERS LIKE \'acc%\'\\G\n*************************** 1. row ***************************\n             Trigger: ins_sum\n               Event: INSERT\n               Table: account\n           Statement: SET @sum = @sum + NEW.amount\n              Timing: BEFORE\n             Created: 2018-08-08 10:10:12.61\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n             Definer: me@localhost\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-triggers.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-triggers.html'),(686,'SHOW VARIABLES',3,'Syntax:\nSHOW [GLOBAL | SESSION] VARIABLES\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW VARIABLES shows the values of MySQL system variables (see\nhttps://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html).\nThis statement does not require any privilege. It requires only the\nability to connect to the server.\n\nSystem variable information is also available from these sources:\n\no Performance Schema tables. See\n  https://dev.mysql.com/doc/refman/8.0/en/performance-schema-system-var\n  iable-tables.html.\n\no The mysqladmin variables command. See\n  https://dev.mysql.com/doc/refman/8.0/en/mysqladmin.html.\n\nFor SHOW VARIABLES, a LIKE clause, if present, indicates which variable\nnames to match. A WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nSHOW VARIABLES accepts an optional GLOBAL or SESSION variable scope\nmodifier:\n\no With a GLOBAL modifier, the statement displays global system variable\n  values. These are the values used to initialize the corresponding\n  session variables for new connections to MySQL. If a variable has no\n  global value, no value is displayed.\n\no With a SESSION modifier, the statement displays the system variable\n  values that are in effect for the current connection. If a variable\n  has no session value, the global value is displayed. LOCAL is a\n  synonym for SESSION.\n\no If no modifier is present, the default is SESSION.\n\nThe scope for each system variable is listed at\nhttps://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html.\n\nSHOW VARIABLES is subject to a version-dependent display-width limit.\nFor variables with very long values that are not completely displayed,\nuse SELECT as a workaround. For example:\n\nSELECT @@GLOBAL.innodb_data_file_path;\n\nMost system variables can be set at server startup (read-only variables\nsuch as version_comment are exceptions). Many can be changed at runtime\nwith the SET statement. See\nhttps://dev.mysql.com/doc/refman/8.0/en/using-system-variables.html,\nand [HELP SET].\n\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern. To obtain the row for a\nspecific variable, use a LIKE clause as shown:\n\nSHOW VARIABLES LIKE \'max_join_size\';\nSHOW SESSION VARIABLES LIKE \'max_join_size\';\n\nTo get a list of variables whose name match a pattern, use the %\nwildcard character in a LIKE clause:\n\nSHOW VARIABLES LIKE \'%size%\';\nSHOW GLOBAL VARIABLES LIKE \'%size%\';\n\nWildcard characters can be used in any position within the pattern to\nbe matched. Strictly speaking, because _ is a wildcard that matches any\nsingle character, you should escape it as \\_ to match it literally. In\npractice, this is rarely necessary.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-variables.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-variables.html'),(687,'SHOW WARNINGS',3,'Syntax:\nSHOW WARNINGS [LIMIT [offset,] row_count]\nSHOW COUNT(*) WARNINGS\n\nSHOW WARNINGS is a diagnostic statement that displays information about\nthe conditions (errors, warnings, and notes) resulting from executing a\nstatement in the current session. Warnings are generated for DML\nstatements such as INSERT, UPDATE, and LOAD DATA as well as DDL\nstatements such as CREATE TABLE and ALTER TABLE.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\nhttps://dev.mysql.com/doc/refman/8.0/en/select.html.\n\nSHOW WARNINGS is also used following EXPLAIN, to display the extended\ninformation generated by EXPLAIN. See\nhttps://dev.mysql.com/doc/refman/8.0/en/explain-extended.html.\n\nSHOW WARNINGS displays information about the conditions resulting from\nexecution of the most recent nondiagnostic statement in the current\nsession. If the most recent statement resulted in an error during\nparsing, SHOW WARNINGS shows the resulting conditions, regardless of\nstatement type (diagnostic or nondiagnostic).\n\nThe SHOW COUNT(*) WARNINGS diagnostic statement displays the total\nnumber of errors, warnings, and notes. You can also retrieve this\nnumber from the warning_count system variable:\n\nSHOW COUNT(*) WARNINGS;\nSELECT @@warning_count;\n\nA difference in these statements is that the first is a diagnostic\nstatement that does not clear the message list. The second, because it\nis a SELECT statement is considered nondiagnostic and does clear the\nmessage list.\n\nA related diagnostic statement, SHOW ERRORS, shows only error\nconditions (it excludes warnings and notes), and SHOW COUNT(*) ERRORS\nstatement displays the total number of errors. See [HELP SHOW ERRORS].\nGET DIAGNOSTICS can be used to examine information for individual\nconditions. See [HELP GET DIAGNOSTICS].\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-warnings.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-warnings.html'),(688,'BINLOG',3,'Syntax:\nBINLOG \'str\'\n\nBINLOG is an internal-use statement. It is generated by the mysqlbinlog\nprogram as the printable representation of certain events in binary log\nfiles. (See https://dev.mysql.com/doc/refman/8.0/en/mysqlbinlog.html.)\nThe \'str\' value is a base 64-encoded string the that server decodes to\ndetermine the data change indicated by the corresponding event.\n\nTo execute BINLOG statements when applying mysqlbinlog output, a user\naccount requires the BINLOG_ADMIN privilege (or the deprecated SUPER\nprivilege), or the REPLICATION_APPLIER privilege plus the appropriate\nprivileges to execute each log event.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/binlog.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/binlog.html'),(689,'CACHE INDEX',3,'Syntax:\nCACHE INDEX {\n      tbl_index_list [, tbl_index_list] ...\n    | tbl_name PARTITION (partition_list)\n  }\n  IN key_cache_name\n\ntbl_index_list:\n  tbl_name [{INDEX|KEY} (index_name[, index_name] ...)]\n\npartition_list: {\n    partition_name[, partition_name] ...\n  | ALL\n}\n\nThe CACHE INDEX statement assigns table indexes to a specific key\ncache. It applies only to MyISAM tables, including partitioned MyISAM\ntables. After the indexes have been assigned, they can be preloaded\ninto the cache if desired with LOAD INDEX INTO CACHE.\n\nThe following statement assigns indexes from the tables t1, t2, and t3\nto the key cache named hot_cache:\n\nmysql> CACHE INDEX t1, t2, t3 IN hot_cache;\n+---------+--------------------+----------+----------+\n| Table   | Op                 | Msg_type | Msg_text |\n+---------+--------------------+----------+----------+\n| test.t1 | assign_to_keycache | status   | OK       |\n| test.t2 | assign_to_keycache | status   | OK       |\n| test.t3 | assign_to_keycache | status   | OK       |\n+---------+--------------------+----------+----------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/cache-index.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/cache-index.html'),(690,'FLUSH',3,'Syntax:\nFLUSH [NO_WRITE_TO_BINLOG | LOCAL] {\n    flush_option [, flush_option] ...\n  | tables_option\n}\n\nflush_option: {\n    BINARY LOGS\n  | ENGINE LOGS\n  | ERROR LOGS\n  | GENERAL LOGS\n  | HOSTS\n  | LOGS\n  | PRIVILEGES\n  | OPTIMIZER_COSTS\n  | RELAY LOGS [FOR CHANNEL channel]\n  | SLOW LOGS\n  | STATUS\n  | USER_RESOURCES\n}\n\ntables_option: {\n    TABLES\n  | TABLES tbl_name [, tbl_name] ...\n  | TABLES WITH READ LOCK\n  | TABLES tbl_name [, tbl_name] ... WITH READ LOCK\n  | TABLES tbl_name [, tbl_name] ... FOR EXPORT\n}\n\nThe FLUSH statement has several variant forms that clear or reload\nvarious internal caches, flush tables, or acquire locks. Each FLUSH\noperation requires the privileges indicated in its description.\n\n*Note*:\n\nIt is not possible to issue FLUSH statements within stored functions or\ntriggers. However, you may use FLUSH in stored procedures, so long as\nthese are not called from stored functions or triggers. See\nhttps://dev.mysql.com/doc/refman/8.0/en/stored-program-restrictions.html\n.\n\nBy default, the server writes FLUSH statements to the binary log so\nthat they replicate to replicas. To suppress logging, specify the\noptional NO_WRITE_TO_BINLOG keyword or its alias LOCAL.\n\n*Note*:\n\nFLUSH LOGS, FLUSH BINARY LOGS, FLUSH TABLES WITH READ LOCK (with or\nwithout a table list), and FLUSH TABLES tbl_name ... FOR EXPORT are not\nwritten to the binary log in any case because they would cause problems\nif replicated to a replica.\n\nThe FLUSH statement causes an implicit commit. See\nhttps://dev.mysql.com/doc/refman/8.0/en/implicit-commit.html.\n\nThe mysqladmin utility provides a command-line interface to some flush\noperations, using commands such as flush-hosts, flush-logs,\nflush-privileges, flush-status, and flush-tables. See\nhttps://dev.mysql.com/doc/refman/8.0/en/mysqladmin.html.\n\nSending a SIGHUP or SIGUSR1 signal to the server causes several flush\noperations to occur that are similar to various forms of the FLUSH\nstatement. Signals can be sent by the root system account or the system\naccount that owns the server process. This enables the flush operations\nto be performed without having to connect to the server, which requires\na MySQL account that has privileges sufficient for those operations.\nSee https://dev.mysql.com/doc/refman/8.0/en/unix-signal-response.html.\n\nThe RESET statement is similar to FLUSH. See [HELP RESET], for\ninformation about using RESET with replication.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/flush.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/flush.html'),(691,'KILL',3,'Syntax:\nKILL [CONNECTION | QUERY] processlist_id\n\nEach connection to mysqld runs in a separate thread. You can kill a\nthread with the KILL processlist_id statement.\n\nThread processlist identifiers can be determined from the ID column of\nthe INFORMATION_SCHEMA PROCESSLIST table, the Id column of SHOW\nPROCESSLIST output, and the PROCESSLIST_ID column of the Performance\nSchema threads table. The value for the current thread is returned by\nthe CONNECTION_ID() function.\n\nKILL permits an optional CONNECTION or QUERY modifier:\n\no KILL CONNECTION is the same as KILL with no modifier: It terminates\n  the connection associated with the given processlist_id, after\n  terminating any statement the connection is executing.\n\no KILL QUERY terminates the statement the connection is currently\n  executing, but leaves the connection itself intact.\n\nThe ability to see which threads are available to be killed depends on\nthe PROCESS privilege:\n\no Without PROCESS, you can see only your own threads.\n\no With PROCESS, you can see all threads.\n\nThe ability to kill threads and statements depends on the\nCONNECTION_ADMIN privilege and the deprecated SUPER privilege:\n\no Without CONNECTION_ADMIN or SUPER, you can kill only your own threads\n  and statements.\n\no With CONNECTION_ADMIN or SUPER, you can kill all threads and\n  statements, except that to affect a thread or statement that is\n  executing with the SYSTEM_USER privilege, your own session must\n  additionally have the SYSTEM_USER privilege.\n\nYou can also use the mysqladmin processlist and mysqladmin kill\ncommands to examine and kill threads.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/kill.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/kill.html'),(692,'LOAD INDEX',3,'Syntax:\nLOAD INDEX INTO CACHE\n  tbl_index_list [, tbl_index_list] ...\n\ntbl_index_list:\n  tbl_name\n    [PARTITION (partition_list)]\n    [{INDEX|KEY} (index_name[, index_name] ...)]\n    [IGNORE LEAVES]\n\npartition_list: {\n    partition_name[, partition_name] ...\n  | ALL\n}\n\nThe LOAD INDEX INTO CACHE statement preloads a table index into the key\ncache to which it has been assigned by an explicit CACHE INDEX\nstatement, or into the default key cache otherwise.\n\nLOAD INDEX INTO CACHE applies only to MyISAM tables, including\npartitioned MyISAM tables. In addition, indexes on partitioned tables\ncan be preloaded for one, several, or all partitions.\n\nThe IGNORE LEAVES modifier causes only blocks for the nonleaf nodes of\nthe index to be preloaded.\n\nIGNORE LEAVES is also supported for partitioned MyISAM tables.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/load-index.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/load-index.html'),(693,'RESET',3,'Syntax:\nRESET reset_option [, reset_option] ...\n\nreset_option: {\n    MASTER\n  | REPLICA\n  | SLAVE\n}\n\nThe RESET statement is used to clear the state of various server\noperations. You must have the RELOAD privilege to execute RESET.\n\nFor information about the RESET PERSIST statement that removes\npersisted global system variables, see [HELP RESET PERSIST].\n\nRESET acts as a stronger version of the FLUSH statement. See [HELP\nFLUSH].\n\nThe RESET statement causes an implicit commit. See\nhttps://dev.mysql.com/doc/refman/8.0/en/implicit-commit.html.\n\nThe following list describes the permitted RESET statement reset_option\nvalues:\n\no RESET MASTER\n\n  Deletes all binary logs listed in the index file, resets the binary\n  log index file to be empty, and creates a new binary log file.\n\no RESET REPLICA\n\n  Makes the replica forget its replication position in the source\n  binary logs. Also resets the relay log by deleting any existing relay\n  log files and beginning a new one. Use RESET REPLICA in place of\n  RESET SLAVE from MySQL 8.0.22.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/reset.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/reset.html'),(694,'RESET PERSIST',3,'Syntax:\nRESET PERSIST [[IF EXISTS] system_var_name]\n\nRESET PERSIST removes persisted global system variable settings from\nthe mysqld-auto.cnf option file in the data directory. Removing a\npersisted system variable causes the variable no longer to be\ninitialized from mysqld-auto.cnf at server startup. For more\ninformation about persisting system variables and the mysqld-auto.cnf\nfile, see\nhttps://dev.mysql.com/doc/refman/8.0/en/persisted-system-variables.html\n.\n\nPrior to MySQL 8.0.32, this statement did not work with variables whose\nname contained a dot character (.), such as MyISAM multiple key cache\nvariables and variables registered by components. (Bug #33417357)\n\nThe privileges required for RESET PERSIST depend on the type of system\nvariable to be removed:\n\no For dynamic system variables, this statement requires the\n  SYSTEM_VARIABLES_ADMIN privilege (or the deprecated SUPER privilege).\n\no For read-only system variables, this statement requires the\n  SYSTEM_VARIABLES_ADMIN and PERSIST_RO_VARIABLES_ADMIN privileges.\n\nSee\nhttps://dev.mysql.com/doc/refman/8.0/en/system-variable-privileges.html\n.\n\nDepending on whether the variable name and IF EXISTS clauses are\npresent, the RESET PERSIST statement has these forms:\n\no To remove all persisted variables from mysqld-auto.cnf, use RESET\n  PERSIST without naming any system variable:\n\nRESET PERSIST;\n\n  You must have privileges for removing both dynamic and read-only\n  system variables if mysqld-auto.cnf contains both kinds of variables.\n\no To remove a specific persisted variable from mysqld-auto.cnf, name it\n  in the statement:\n\nRESET PERSIST system_var_name;\n\n  This includes plugin system variables, even if the plugin is not\n  currently installed. If the variable is not present in the file, an\n  error occurs.\n\no To remove a specific persisted variable from mysqld-auto.cnf, but\n  produce a warning rather than an error if the variable is not present\n  in the file, add an IF EXISTS clause to the previous syntax:\n\nRESET PERSIST IF EXISTS system_var_name;\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/reset-persist.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/reset-persist.html'),(695,'RESTART',3,'Syntax:\nRESTART\n\nThis statement stops and restarts the MySQL server. It requires the\nSHUTDOWN privilege.\n\nOne use for RESTART is when it is not possible or convenient to gain\ncommand-line access to the MySQL server on the server host to restart\nit. For example, SET PERSIST_ONLY can be used at runtime to make\nconfiguration changes to system variables that can be set only at\nserver startup, but the server must still be restarted for those\nchanges to take effect. The RESTART statement provides a way to do so\nfrom within client sessions, without requiring command-line access on\nthe server host.\n\n*Note*:\n\nAfter executing a RESTART statement, the client can expect the current\nconnection to be lost. If auto-reconnect is enabled, the connection is\nreestablished after the server restarts. Otherwise, the connection must\nbe reestablished manually.\n\nA successful RESTART operation requires mysqld to be running in an\nenvironment that has a monitoring process available to detect a server\nshutdown performed for restart purposes:\n\no In the presence of a monitoring process, RESTART causes mysqld to\n  terminate such that the monitoring process can determine that it\n  should start a new mysqld instance.\n\no If no monitoring process is present, RESTART fails with an error.\n\nThese platforms provide the necessary monitoring support for the\nRESTART statement:\n\no Windows, when mysqld is started as a Windows service or standalone.\n  (mysqld forks, and one process acts as a monitor to the other, which\n  acts as the server.)\n\no Unix and Unix-like systems that use systemd or mysqld_safe to manage\n  mysqld.\n\nTo configure a monitoring environment such that mysqld enables the\nRESTART statement:\n\n1. Set the MYSQLD_PARENT_PID environment variable to the value of the\n   process ID of the process that starts mysqld, before starting\n   mysqld.\n\n2. When mysqld performs a shutdown due to use of the RESTART statement,\n   it returns exit code 16.\n\n3. When the monitoring process detects an exit code of 16, it starts\n   mysqld again. Otherwise, it exits.\n\nHere is a minimal example as implemented in the bash shell:\n\n#!/bin/bash\n\nexport MYSQLD_PARENT_PID=$$\n\nexport MYSQLD_RESTART_EXIT=16\n\nwhile true ; do\n  bin/mysqld mysqld options here\n  if [ $? -ne $MYSQLD_RESTART_EXIT ]; then\n    break\n  fi\ndone\n\nOn Windows, the forking used to implement RESTART makes determining the\nserver process to attach to for debugging more difficult. To alleviate\nthis, starting the server with --gdb suppresses forking, in addition to\nits other actions done to set up a debugging environment. In non-debug\nsettings, --no-monitor may be used for the sole purpose of suppressing\nforking the monitor process. For a server started with either --gdb or\n--no-monitor, executing RESTART causes the server to simply exit\nwithout restarting.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/restart.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/restart.html'),(696,'SHUTDOWN',3,'Syntax:\nSHUTDOWN\n\nThis statement stops the MySQL server. It requires the SHUTDOWN\nprivilege.\n\nSHUTDOWN provides an SQL-level interface to the same functionality\navailable using the mysqladmin shutdown command or the mysql_shutdown()\n(https://dev.mysql.com/doc/c-api/8.0/en/mysql-shutdown.html) C API\nfunction. A successful SHUTDOWN sequence consists of checking the\nprivileges, validating the arguments, and sending an OK packet to the\nclient. Then the server is shut down.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/shutdown.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/shutdown.html'),(697,'EXPLAIN',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/explain.html'),(698,'DESCRIBE',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/explain.html'),(699,'DESC',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/explain.html'),(700,'HELP STATEMENT',51,'Syntax:\nHELP \'search_string\'\n\nThe HELP statement returns online information from the MySQL Reference\nManual. Its proper operation requires that the help tables in the mysql\ndatabase be initialized with help topic information (see\nhttps://dev.mysql.com/doc/refman/8.0/en/server-side-help-support.html).\n\nThe HELP statement searches the help tables for the given search string\nand displays the result of the search. The search string is not\ncase-sensitive.\n\nThe search string can contain the wildcard characters % and _. These\nhave the same meaning as for pattern-matching operations performed with\nthe LIKE operator. For example, HELP \'rep%\' returns a list of topics\nthat begin with rep.\n\nThe HELP statement does not require a terminator such as ; or \\G.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/help.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/help.html'),(701,'USE',51,'Syntax:\nUSE db_name\n\nThe USE statement tells MySQL to use the named database as the default\n(current) database for subsequent statements. This statement requires\nsome privilege for the database or some object within it.\n\nThe named database remains the default until the end of the session or\nanother USE statement is issued:\n\nUSE db1;\nSELECT COUNT(*) FROM mytable;   # selects from db1.mytable\nUSE db2;\nSELECT COUNT(*) FROM mytable;   # selects from db2.mytable\n\nThe database name must be specified on a single line. Newlines in\ndatabase names are not supported.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/use.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/use.html'),(702,'MERGE',52,'The MERGE storage engine, also known as the MRG_MyISAM engine, is a\ncollection of identical MyISAM tables that can be used as one.\n\"Identical\" means that all tables have identical column data types and\nindex information. You cannot merge MyISAM tables in which the columns\nare listed in a different order, do not have exactly the same data\ntypes in corresponding columns, or have the indexes in different order.\nHowever, any or all of the MyISAM tables can be compressed with\nmyisampack. See\nhttps://dev.mysql.com/doc/refman/8.0/en/myisampack.html. Differences\nbetween tables such as these do not matter:\n\no Names of corresponding columns and indexes can differ.\n\no Comments for tables, columns, and indexes can differ.\n\no Table options such as AVG_ROW_LENGTH, MAX_ROWS, or PACK_KEYS can\n  differ.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/merge-storage-engine.html\n\n','mysql> CREATE TABLE t1 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> CREATE TABLE t2 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> INSERT INTO t1 (message) VALUES (\'Testing\'),(\'table\'),(\'t1\');\nmysql> INSERT INTO t2 (message) VALUES (\'Testing\'),(\'table\'),(\'t2\');\nmysql> CREATE TABLE total (\n    ->    a INT NOT NULL AUTO_INCREMENT,\n    ->    message CHAR(20), INDEX(a))\n    ->    ENGINE=MERGE UNION=(t1,t2) INSERT_METHOD=LAST;\n','https://dev.mysql.com/doc/refman/8.0/en/merge-storage-engine.html');
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `innodb_index_stats`
--

/*!40000 ALTER TABLE `innodb_index_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('SAPI','#sql-40f_c','PRIMARY','2023-09-29 20:42:12','n_diff_pfx01',0,1,'id'),('SAPI','#sql-40f_c','PRIMARY','2023-09-29 20:42:12','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','#sql-40f_c','PRIMARY','2023-09-29 20:42:12','size',1,NULL,'Number of pages in the index'),('SAPI','#sql-40f_c','teachers_role_id_foreign','2023-09-29 20:42:12','n_diff_pfx01',0,1,'role_id'),('SAPI','#sql-40f_c','teachers_role_id_foreign','2023-09-29 20:42:12','n_diff_pfx02',0,1,'role_id,id'),('SAPI','#sql-40f_c','teachers_role_id_foreign','2023-09-29 20:42:12','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','#sql-40f_c','teachers_role_id_foreign','2023-09-29 20:42:12','size',1,NULL,'Number of pages in the index'),('SAPI','achievements','PRIMARY','2023-10-18 15:27:29','n_diff_pfx01',0,1,'id'),('SAPI','achievements','PRIMARY','2023-10-18 15:27:29','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','achievements','PRIMARY','2023-10-18 15:27:29','size',1,NULL,'Number of pages in the index'),('SAPI','album_photo','GEN_CLUST_INDEX','2023-10-18 15:41:18','n_diff_pfx01',81,1,'DB_ROW_ID'),('SAPI','album_photo','GEN_CLUST_INDEX','2023-10-18 15:41:18','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','album_photo','GEN_CLUST_INDEX','2023-10-18 15:41:18','size',1,NULL,'Number of pages in the index'),('SAPI','album_photo','album_photo_album_id_foreign','2023-10-18 15:41:18','n_diff_pfx01',13,1,'album_id'),('SAPI','album_photo','album_photo_album_id_foreign','2023-10-18 15:41:18','n_diff_pfx02',81,1,'album_id,DB_ROW_ID'),('SAPI','album_photo','album_photo_album_id_foreign','2023-10-18 15:41:18','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','album_photo','album_photo_album_id_foreign','2023-10-18 15:41:18','size',1,NULL,'Number of pages in the index'),('SAPI','album_photo','album_photo_photo_id_foreign','2023-10-18 15:41:18','n_diff_pfx01',72,1,'photo_id'),('SAPI','album_photo','album_photo_photo_id_foreign','2023-10-18 15:41:18','n_diff_pfx02',81,1,'photo_id,DB_ROW_ID'),('SAPI','album_photo','album_photo_photo_id_foreign','2023-10-18 15:41:18','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','album_photo','album_photo_photo_id_foreign','2023-10-18 15:41:18','size',1,NULL,'Number of pages in the index'),('SAPI','albums','PRIMARY','2023-10-18 16:17:43','n_diff_pfx01',14,1,'id'),('SAPI','albums','PRIMARY','2023-10-18 16:17:43','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','albums','PRIMARY','2023-10-18 16:17:43','size',1,NULL,'Number of pages in the index'),('SAPI','appeals','PRIMARY','2023-10-18 15:27:31','n_diff_pfx01',12,1,'id'),('SAPI','appeals','PRIMARY','2023-10-18 15:27:31','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','appeals','PRIMARY','2023-10-18 15:27:31','size',1,NULL,'Number of pages in the index'),('SAPI','appeals','appeals_category_id_foreign','2023-10-18 15:27:31','n_diff_pfx01',2,1,'category_id'),('SAPI','appeals','appeals_category_id_foreign','2023-10-18 15:27:31','n_diff_pfx02',12,1,'category_id,id'),('SAPI','appeals','appeals_category_id_foreign','2023-10-18 15:27:31','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','appeals','appeals_category_id_foreign','2023-10-18 15:27:31','size',1,NULL,'Number of pages in the index'),('SAPI','appeals_categories','PRIMARY','2023-10-18 15:27:31','n_diff_pfx01',2,1,'id'),('SAPI','appeals_categories','PRIMARY','2023-10-18 15:27:31','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','appeals_categories','PRIMARY','2023-10-18 15:27:31','size',1,NULL,'Number of pages in the index'),('SAPI','banners','PRIMARY','2023-10-18 15:29:21','n_diff_pfx01',4,1,'id'),('SAPI','banners','PRIMARY','2023-10-18 15:29:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','banners','PRIMARY','2023-10-18 15:29:21','size',1,NULL,'Number of pages in the index'),('SAPI','banners','banners_chapter_id_foreign','2023-10-18 15:29:21','n_diff_pfx01',3,1,'chapter_id'),('SAPI','banners','banners_chapter_id_foreign','2023-10-18 15:29:21','n_diff_pfx02',4,1,'chapter_id,id'),('SAPI','banners','banners_chapter_id_foreign','2023-10-18 15:29:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','banners','banners_chapter_id_foreign','2023-10-18 15:29:21','size',1,NULL,'Number of pages in the index'),('SAPI','cabinets','PRIMARY','2023-10-18 15:27:32','n_diff_pfx01',3,1,'id'),('SAPI','cabinets','PRIMARY','2023-10-18 15:27:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','cabinets','PRIMARY','2023-10-18 15:27:32','size',1,NULL,'Number of pages in the index'),('SAPI','call_schedules','PRIMARY','2023-10-18 15:27:32','n_diff_pfx01',8,1,'id'),('SAPI','call_schedules','PRIMARY','2023-10-18 15:27:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','call_schedules','PRIMARY','2023-10-18 15:27:32','size',1,NULL,'Number of pages in the index'),('SAPI','chapters','PRIMARY','2023-10-18 15:27:33','n_diff_pfx01',12,1,'id'),('SAPI','chapters','PRIMARY','2023-10-18 15:27:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','chapters','PRIMARY','2023-10-18 15:27:33','size',1,NULL,'Number of pages in the index'),('SAPI','chapters','chapters_chaptertitle_unique','2023-10-18 15:27:33','n_diff_pfx01',12,1,'chapterTitle'),('SAPI','chapters','chapters_chaptertitle_unique','2023-10-18 15:27:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','chapters','chapters_chaptertitle_unique','2023-10-18 15:27:33','size',1,NULL,'Number of pages in the index'),('SAPI','chapters','chapters_slug_unique','2023-10-18 15:27:33','n_diff_pfx01',12,1,'slug'),('SAPI','chapters','chapters_slug_unique','2023-10-18 15:27:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','chapters','chapters_slug_unique','2023-10-18 15:27:33','size',1,NULL,'Number of pages in the index'),('SAPI','classrooms','PRIMARY','2023-10-18 15:27:33','n_diff_pfx01',2,1,'id'),('SAPI','classrooms','PRIMARY','2023-10-18 15:27:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','classrooms','PRIMARY','2023-10-18 15:27:33','size',1,NULL,'Number of pages in the index'),('SAPI','classrooms','classrooms_cabinet_id_foreign','2023-10-18 15:27:33','n_diff_pfx01',2,1,'cabinet_id'),('SAPI','classrooms','classrooms_cabinet_id_foreign','2023-10-18 15:27:33','n_diff_pfx02',2,1,'cabinet_id,id'),('SAPI','classrooms','classrooms_cabinet_id_foreign','2023-10-18 15:27:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','classrooms','classrooms_cabinet_id_foreign','2023-10-18 15:27:33','size',1,NULL,'Number of pages in the index'),('SAPI','classrooms','classrooms_teacher_id_foreign','2023-10-18 15:27:33','n_diff_pfx01',1,1,'teacher_id'),('SAPI','classrooms','classrooms_teacher_id_foreign','2023-10-18 15:27:33','n_diff_pfx02',2,1,'teacher_id,id'),('SAPI','classrooms','classrooms_teacher_id_foreign','2023-10-18 15:27:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','classrooms','classrooms_teacher_id_foreign','2023-10-18 15:27:33','size',1,NULL,'Number of pages in the index'),('SAPI','days','PRIMARY','2023-10-18 15:27:34','n_diff_pfx01',6,1,'id'),('SAPI','days','PRIMARY','2023-10-18 15:27:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','days','PRIMARY','2023-10-18 15:27:34','size',1,NULL,'Number of pages in the index'),('SAPI','docimage_section','PRIMARY','2023-10-18 15:27:35','n_diff_pfx01',2,1,'id'),('SAPI','docimage_section','PRIMARY','2023-10-18 15:27:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','docimage_section','PRIMARY','2023-10-18 15:27:35','size',1,NULL,'Number of pages in the index'),('SAPI','docimage_section','docimage_section_docimage_id_foreign','2023-10-18 15:27:35','n_diff_pfx01',2,1,'docimage_id'),('SAPI','docimage_section','docimage_section_docimage_id_foreign','2023-10-18 15:27:35','n_diff_pfx02',2,1,'docimage_id,id'),('SAPI','docimage_section','docimage_section_docimage_id_foreign','2023-10-18 15:27:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','docimage_section','docimage_section_docimage_id_foreign','2023-10-18 15:27:35','size',1,NULL,'Number of pages in the index'),('SAPI','docimage_section','docimage_section_section_id_foreign','2023-10-18 15:27:35','n_diff_pfx01',1,1,'section_id'),('SAPI','docimage_section','docimage_section_section_id_foreign','2023-10-18 15:27:35','n_diff_pfx02',2,1,'section_id,id'),('SAPI','docimage_section','docimage_section_section_id_foreign','2023-10-18 15:27:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','docimage_section','docimage_section_section_id_foreign','2023-10-18 15:27:35','size',1,NULL,'Number of pages in the index'),('SAPI','docimages','PRIMARY','2023-10-18 17:35:14','n_diff_pfx01',2,1,'id'),('SAPI','docimages','PRIMARY','2023-10-18 17:35:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','docimages','PRIMARY','2023-10-18 17:35:14','size',1,NULL,'Number of pages in the index'),('SAPI','docimages','docimages_documentname_unique','2023-10-18 17:35:14','n_diff_pfx01',2,1,'documentName'),('SAPI','docimages','docimages_documentname_unique','2023-10-18 17:35:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','docimages','docimages_documentname_unique','2023-10-18 17:35:14','size',1,NULL,'Number of pages in the index'),('SAPI','docimages','docimages_documentsource_unique','2023-10-18 17:35:14','n_diff_pfx01',2,1,'documentSource'),('SAPI','docimages','docimages_documentsource_unique','2023-10-18 17:35:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','docimages','docimages_documentsource_unique','2023-10-18 17:35:14','size',1,NULL,'Number of pages in the index'),('SAPI','docsource_section','PRIMARY','2023-10-18 15:27:35','n_diff_pfx01',78,1,'id'),('SAPI','docsource_section','PRIMARY','2023-10-18 15:27:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','docsource_section','PRIMARY','2023-10-18 15:27:35','size',1,NULL,'Number of pages in the index'),('SAPI','docsource_section','docsource_section_docsource_id_foreign','2023-10-18 15:27:35','n_diff_pfx01',78,1,'docsource_id'),('SAPI','docsource_section','docsource_section_docsource_id_foreign','2023-10-18 15:27:35','n_diff_pfx02',78,1,'docsource_id,id'),('SAPI','docsource_section','docsource_section_docsource_id_foreign','2023-10-18 15:27:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','docsource_section','docsource_section_docsource_id_foreign','2023-10-18 15:27:35','size',1,NULL,'Number of pages in the index'),('SAPI','docsource_section','docsource_section_section_id_foreign','2023-10-18 15:27:35','n_diff_pfx01',11,1,'section_id'),('SAPI','docsource_section','docsource_section_section_id_foreign','2023-10-18 15:27:35','n_diff_pfx02',78,1,'section_id,id'),('SAPI','docsource_section','docsource_section_section_id_foreign','2023-10-18 15:27:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','docsource_section','docsource_section_section_id_foreign','2023-10-18 15:27:35','size',1,NULL,'Number of pages in the index'),('SAPI','docsources','PRIMARY','2023-10-18 17:43:16','n_diff_pfx01',78,2,'id'),('SAPI','docsources','PRIMARY','2023-10-18 17:43:16','n_leaf_pages',2,NULL,'Number of leaf pages in the index'),('SAPI','docsources','PRIMARY','2023-10-18 17:43:16','size',3,NULL,'Number of pages in the index'),('SAPI','docsources','docsources_documentname_unique','2023-10-18 17:43:16','n_diff_pfx01',78,1,'documentName'),('SAPI','docsources','docsources_documentname_unique','2023-10-18 17:43:16','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','docsources','docsources_documentname_unique','2023-10-18 17:43:16','size',1,NULL,'Number of pages in the index'),('SAPI','docsources','docsources_documentsource_unique','2023-10-18 17:43:16','n_diff_pfx01',78,1,'documentSource'),('SAPI','docsources','docsources_documentsource_unique','2023-10-18 17:43:16','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','docsources','docsources_documentsource_unique','2023-10-18 17:43:16','size',1,NULL,'Number of pages in the index'),('SAPI','failed_jobs','PRIMARY','2023-10-18 15:27:34','n_diff_pfx01',0,1,'id'),('SAPI','failed_jobs','PRIMARY','2023-10-18 15:27:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','failed_jobs','PRIMARY','2023-10-18 15:27:34','size',1,NULL,'Number of pages in the index'),('SAPI','likes','PRIMARY','2023-10-18 15:27:34','n_diff_pfx01',0,1,'id'),('SAPI','likes','PRIMARY','2023-10-18 15:27:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','likes','PRIMARY','2023-10-18 15:27:34','size',1,NULL,'Number of pages in the index'),('SAPI','likes','likes_news_id_foreign','2023-10-18 15:27:34','n_diff_pfx01',0,1,'news_id'),('SAPI','likes','likes_news_id_foreign','2023-10-18 15:27:34','n_diff_pfx02',0,1,'news_id,id'),('SAPI','likes','likes_news_id_foreign','2023-10-18 15:27:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','likes','likes_news_id_foreign','2023-10-18 15:27:34','size',1,NULL,'Number of pages in the index'),('SAPI','likes','likes_user_id_foreign','2023-10-18 15:27:34','n_diff_pfx01',0,1,'user_id'),('SAPI','likes','likes_user_id_foreign','2023-10-18 15:27:34','n_diff_pfx02',0,1,'user_id,id'),('SAPI','likes','likes_user_id_foreign','2023-10-18 15:27:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','likes','likes_user_id_foreign','2023-10-18 15:27:34','size',1,NULL,'Number of pages in the index'),('SAPI','menu_basics','PRIMARY','2023-10-18 15:27:37','n_diff_pfx01',14,1,'id'),('SAPI','menu_basics','PRIMARY','2023-10-18 15:27:37','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','menu_basics','PRIMARY','2023-10-18 15:27:37','size',1,NULL,'Number of pages in the index'),('SAPI','menu_items','PRIMARY','2023-10-18 15:27:37','n_diff_pfx01',30,1,'id'),('SAPI','menu_items','PRIMARY','2023-10-18 15:27:37','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','menu_items','PRIMARY','2023-10-18 15:27:37','size',1,NULL,'Number of pages in the index'),('SAPI','menu_items','menu_items_name_dish_unique','2023-10-18 15:27:37','n_diff_pfx01',30,1,'name_dish'),('SAPI','menu_items','menu_items_name_dish_unique','2023-10-18 15:27:37','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','menu_items','menu_items_name_dish_unique','2023-10-18 15:27:37','size',1,NULL,'Number of pages in the index'),('SAPI','menus','PRIMARY','2023-10-18 15:27:38','n_diff_pfx01',62,1,'id'),('SAPI','menus','PRIMARY','2023-10-18 15:27:38','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','menus','PRIMARY','2023-10-18 15:27:38','size',1,NULL,'Number of pages in the index'),('SAPI','menus','menus_menu_basic_id_foreign','2023-10-18 15:27:38','n_diff_pfx01',14,1,'menu_basic_id'),('SAPI','menus','menus_menu_basic_id_foreign','2023-10-18 15:27:38','n_diff_pfx02',62,1,'menu_basic_id,id'),('SAPI','menus','menus_menu_basic_id_foreign','2023-10-18 15:27:38','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','menus','menus_menu_basic_id_foreign','2023-10-18 15:27:38','size',1,NULL,'Number of pages in the index'),('SAPI','menus','menus_menu_item_id_foreign','2023-10-18 15:27:38','n_diff_pfx01',23,1,'menu_item_id'),('SAPI','menus','menus_menu_item_id_foreign','2023-10-18 15:27:38','n_diff_pfx02',62,1,'menu_item_id,id'),('SAPI','menus','menus_menu_item_id_foreign','2023-10-18 15:27:38','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','menus','menus_menu_item_id_foreign','2023-10-18 15:27:38','size',1,NULL,'Number of pages in the index'),('SAPI','migrations','PRIMARY','2023-10-18 15:27:38','n_diff_pfx01',51,1,'id'),('SAPI','migrations','PRIMARY','2023-10-18 15:27:38','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','migrations','PRIMARY','2023-10-18 15:27:38','size',1,NULL,'Number of pages in the index'),('SAPI','model_has_permissions','PRIMARY','2023-10-18 15:27:36','n_diff_pfx01',0,1,'permission_id'),('SAPI','model_has_permissions','PRIMARY','2023-10-18 15:27:36','n_diff_pfx02',0,1,'permission_id,model_id'),('SAPI','model_has_permissions','PRIMARY','2023-10-18 15:27:36','n_diff_pfx03',0,1,'permission_id,model_id,model_type'),('SAPI','model_has_permissions','PRIMARY','2023-10-18 15:27:36','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','model_has_permissions','PRIMARY','2023-10-18 15:27:36','size',1,NULL,'Number of pages in the index'),('SAPI','model_has_permissions','model_has_permissions_model_id_model_type_index','2023-10-18 15:27:36','n_diff_pfx01',0,1,'model_id'),('SAPI','model_has_permissions','model_has_permissions_model_id_model_type_index','2023-10-18 15:27:36','n_diff_pfx02',0,1,'model_id,model_type'),('SAPI','model_has_permissions','model_has_permissions_model_id_model_type_index','2023-10-18 15:27:36','n_diff_pfx03',0,1,'model_id,model_type,permission_id'),('SAPI','model_has_permissions','model_has_permissions_model_id_model_type_index','2023-10-18 15:27:36','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','model_has_permissions','model_has_permissions_model_id_model_type_index','2023-10-18 15:27:36','size',1,NULL,'Number of pages in the index'),('SAPI','model_has_roles','PRIMARY','2023-10-18 15:27:39','n_diff_pfx01',4,1,'role_id'),('SAPI','model_has_roles','PRIMARY','2023-10-18 15:27:39','n_diff_pfx02',23,1,'role_id,model_id'),('SAPI','model_has_roles','PRIMARY','2023-10-18 15:27:39','n_diff_pfx03',23,1,'role_id,model_id,model_type'),('SAPI','model_has_roles','PRIMARY','2023-10-18 15:27:39','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','model_has_roles','PRIMARY','2023-10-18 15:27:39','size',1,NULL,'Number of pages in the index'),('SAPI','model_has_roles','model_has_roles_model_id_model_type_index','2023-10-18 15:27:39','n_diff_pfx01',21,1,'model_id'),('SAPI','model_has_roles','model_has_roles_model_id_model_type_index','2023-10-18 15:27:39','n_diff_pfx02',22,1,'model_id,model_type'),('SAPI','model_has_roles','model_has_roles_model_id_model_type_index','2023-10-18 15:27:39','n_diff_pfx03',23,1,'model_id,model_type,role_id'),('SAPI','model_has_roles','model_has_roles_model_id_model_type_index','2023-10-18 15:27:39','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','model_has_roles','model_has_roles_model_id_model_type_index','2023-10-18 15:27:39','size',1,NULL,'Number of pages in the index'),('SAPI','news','PRIMARY','2023-10-18 15:27:39','n_diff_pfx01',6,1,'id'),('SAPI','news','PRIMARY','2023-10-18 15:27:39','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','news','PRIMARY','2023-10-18 15:27:39','size',1,NULL,'Number of pages in the index'),('SAPI','news','news_album_id_foreign','2023-10-18 15:27:39','n_diff_pfx01',4,1,'album_id'),('SAPI','news','news_album_id_foreign','2023-10-18 15:27:39','n_diff_pfx02',6,1,'album_id,id'),('SAPI','news','news_album_id_foreign','2023-10-18 15:27:39','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','news','news_album_id_foreign','2023-10-18 15:27:39','size',1,NULL,'Number of pages in the index'),('SAPI','news','news_news_category_id_foreign','2023-10-18 15:27:39','n_diff_pfx01',2,1,'news_category_id'),('SAPI','news','news_news_category_id_foreign','2023-10-18 15:27:39','n_diff_pfx02',6,1,'news_category_id,id'),('SAPI','news','news_news_category_id_foreign','2023-10-18 15:27:39','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','news','news_news_category_id_foreign','2023-10-18 15:27:39','size',1,NULL,'Number of pages in the index'),('SAPI','news_categories','PRIMARY','2023-10-18 15:27:40','n_diff_pfx01',2,1,'id'),('SAPI','news_categories','PRIMARY','2023-10-18 15:27:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','news_categories','PRIMARY','2023-10-18 15:27:40','size',1,NULL,'Number of pages in the index'),('SAPI','parent_student','GEN_CLUST_INDEX','2023-10-18 15:27:40','n_diff_pfx01',8,1,'DB_ROW_ID'),('SAPI','parent_student','GEN_CLUST_INDEX','2023-10-18 15:27:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','parent_student','GEN_CLUST_INDEX','2023-10-18 15:27:40','size',1,NULL,'Number of pages in the index'),('SAPI','parent_student','parent_student_parent_id_foreign','2023-10-18 15:27:40','n_diff_pfx01',7,1,'parent_id'),('SAPI','parent_student','parent_student_parent_id_foreign','2023-10-18 15:27:40','n_diff_pfx02',8,1,'parent_id,DB_ROW_ID'),('SAPI','parent_student','parent_student_parent_id_foreign','2023-10-18 15:27:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','parent_student','parent_student_parent_id_foreign','2023-10-18 15:27:40','size',1,NULL,'Number of pages in the index'),('SAPI','parent_student','parent_student_student_id_foreign','2023-10-18 15:27:40','n_diff_pfx01',5,1,'student_id'),('SAPI','parent_student','parent_student_student_id_foreign','2023-10-18 15:27:40','n_diff_pfx02',8,1,'student_id,DB_ROW_ID'),('SAPI','parent_student','parent_student_student_id_foreign','2023-10-18 15:27:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','parent_student','parent_student_student_id_foreign','2023-10-18 15:27:40','size',1,NULL,'Number of pages in the index'),('SAPI','parents','PRIMARY','2023-10-18 15:27:40','n_diff_pfx01',7,1,'id'),('SAPI','parents','PRIMARY','2023-10-18 15:27:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','parents','PRIMARY','2023-10-18 15:27:40','size',1,NULL,'Number of pages in the index'),('SAPI','parents','parents_user_id_foreign','2023-10-18 15:27:40','n_diff_pfx01',7,1,'user_id'),('SAPI','parents','parents_user_id_foreign','2023-10-18 15:27:40','n_diff_pfx02',7,1,'user_id,id'),('SAPI','parents','parents_user_id_foreign','2023-10-18 15:27:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','parents','parents_user_id_foreign','2023-10-18 15:27:40','size',1,NULL,'Number of pages in the index'),('SAPI','password_reset_tokens','PRIMARY','2023-10-18 15:27:38','n_diff_pfx01',0,1,'email'),('SAPI','password_reset_tokens','PRIMARY','2023-10-18 15:27:38','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','password_reset_tokens','PRIMARY','2023-10-18 15:27:38','size',1,NULL,'Number of pages in the index'),('SAPI','permissions','PRIMARY','2023-10-18 15:27:41','n_diff_pfx01',12,1,'id'),('SAPI','permissions','PRIMARY','2023-10-18 15:27:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','permissions','PRIMARY','2023-10-18 15:27:41','size',1,NULL,'Number of pages in the index'),('SAPI','permissions','permissions_name_guard_name_unique','2023-10-18 15:27:41','n_diff_pfx01',12,1,'name'),('SAPI','permissions','permissions_name_guard_name_unique','2023-10-18 15:27:41','n_diff_pfx02',12,1,'name,guard_name'),('SAPI','permissions','permissions_name_guard_name_unique','2023-10-18 15:27:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','permissions','permissions_name_guard_name_unique','2023-10-18 15:27:41','size',1,NULL,'Number of pages in the index'),('SAPI','personal_access_tokens','PRIMARY','2023-10-18 17:17:56','n_diff_pfx01',3,1,'id'),('SAPI','personal_access_tokens','PRIMARY','2023-10-18 17:17:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','personal_access_tokens','PRIMARY','2023-10-18 17:17:56','size',1,NULL,'Number of pages in the index'),('SAPI','personal_access_tokens','personal_access_tokens_token_unique','2023-10-18 17:17:56','n_diff_pfx01',3,1,'token'),('SAPI','personal_access_tokens','personal_access_tokens_token_unique','2023-10-18 17:17:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','personal_access_tokens','personal_access_tokens_token_unique','2023-10-18 17:17:56','size',1,NULL,'Number of pages in the index'),('SAPI','personal_access_tokens','personal_access_tokens_tokenable_type_tokenable_id_index','2023-10-18 17:17:56','n_diff_pfx01',1,1,'tokenable_type'),('SAPI','personal_access_tokens','personal_access_tokens_tokenable_type_tokenable_id_index','2023-10-18 17:17:56','n_diff_pfx02',3,1,'tokenable_type,tokenable_id'),('SAPI','personal_access_tokens','personal_access_tokens_tokenable_type_tokenable_id_index','2023-10-18 17:17:56','n_diff_pfx03',3,1,'tokenable_type,tokenable_id,id'),('SAPI','personal_access_tokens','personal_access_tokens_tokenable_type_tokenable_id_index','2023-10-18 17:17:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','personal_access_tokens','personal_access_tokens_tokenable_type_tokenable_id_index','2023-10-18 17:17:56','size',1,NULL,'Number of pages in the index'),('SAPI','photos','PRIMARY','2023-10-18 15:40:54','n_diff_pfx01',71,1,'id'),('SAPI','photos','PRIMARY','2023-10-18 15:40:54','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','photos','PRIMARY','2023-10-18 15:40:54','size',1,NULL,'Number of pages in the index'),('SAPI','role_has_permissions','PRIMARY','2023-10-18 15:27:42','n_diff_pfx01',12,1,'permission_id'),('SAPI','role_has_permissions','PRIMARY','2023-10-18 15:27:42','n_diff_pfx02',12,1,'permission_id,role_id'),('SAPI','role_has_permissions','PRIMARY','2023-10-18 15:27:42','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','role_has_permissions','PRIMARY','2023-10-18 15:27:42','size',1,NULL,'Number of pages in the index'),('SAPI','role_has_permissions','role_has_permissions_role_id_foreign','2023-10-18 15:27:42','n_diff_pfx01',1,1,'role_id'),('SAPI','role_has_permissions','role_has_permissions_role_id_foreign','2023-10-18 15:27:42','n_diff_pfx02',12,1,'role_id,permission_id'),('SAPI','role_has_permissions','role_has_permissions_role_id_foreign','2023-10-18 15:27:42','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','role_has_permissions','role_has_permissions_role_id_foreign','2023-10-18 15:27:42','size',1,NULL,'Number of pages in the index'),('SAPI','roles','PRIMARY','2023-10-18 15:27:52','n_diff_pfx01',4,1,'id'),('SAPI','roles','PRIMARY','2023-10-18 15:27:52','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','roles','PRIMARY','2023-10-18 15:27:52','size',1,NULL,'Number of pages in the index'),('SAPI','roles','roles_name_guard_name_unique','2023-10-18 15:27:52','n_diff_pfx01',4,1,'name'),('SAPI','roles','roles_name_guard_name_unique','2023-10-18 15:27:52','n_diff_pfx02',4,1,'name,guard_name'),('SAPI','roles','roles_name_guard_name_unique','2023-10-18 15:27:52','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','roles','roles_name_guard_name_unique','2023-10-18 15:27:52','size',1,NULL,'Number of pages in the index'),('SAPI','schedules','PRIMARY','2023-10-18 15:28:02','n_diff_pfx01',48,1,'id'),('SAPI','schedules','PRIMARY','2023-10-18 15:28:02','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','schedules','PRIMARY','2023-10-18 15:28:02','size',1,NULL,'Number of pages in the index'),('SAPI','schedules','schedules_call_schedule_id_foreign','2023-10-18 15:28:02','n_diff_pfx01',4,1,'call_schedule_id'),('SAPI','schedules','schedules_call_schedule_id_foreign','2023-10-18 15:28:02','n_diff_pfx02',48,1,'call_schedule_id,id'),('SAPI','schedules','schedules_call_schedule_id_foreign','2023-10-18 15:28:02','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','schedules','schedules_call_schedule_id_foreign','2023-10-18 15:28:02','size',1,NULL,'Number of pages in the index'),('SAPI','schedules','schedules_classroom_id_foreign','2023-10-18 15:28:02','n_diff_pfx01',2,1,'classroom_id'),('SAPI','schedules','schedules_classroom_id_foreign','2023-10-18 15:28:02','n_diff_pfx02',48,1,'classroom_id,id'),('SAPI','schedules','schedules_classroom_id_foreign','2023-10-18 15:28:02','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','schedules','schedules_classroom_id_foreign','2023-10-18 15:28:02','size',1,NULL,'Number of pages in the index'),('SAPI','schedules','schedules_day_id_foreign','2023-10-18 15:28:02','n_diff_pfx01',6,1,'day_id'),('SAPI','schedules','schedules_day_id_foreign','2023-10-18 15:28:02','n_diff_pfx02',48,1,'day_id,id'),('SAPI','schedules','schedules_day_id_foreign','2023-10-18 15:28:02','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','schedules','schedules_day_id_foreign','2023-10-18 15:28:02','size',1,NULL,'Number of pages in the index'),('SAPI','schedules','schedules_subject_id_foreign','2023-10-18 15:28:02','n_diff_pfx01',19,1,'subject_id'),('SAPI','schedules','schedules_subject_id_foreign','2023-10-18 15:28:02','n_diff_pfx02',48,1,'subject_id,id'),('SAPI','schedules','schedules_subject_id_foreign','2023-10-18 15:28:02','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','schedules','schedules_subject_id_foreign','2023-10-18 15:28:02','size',1,NULL,'Number of pages in the index'),('SAPI','schedules','schedules_teacher_id_foreign','2023-10-18 15:28:02','n_diff_pfx01',2,1,'teacher_id'),('SAPI','schedules','schedules_teacher_id_foreign','2023-10-18 15:28:02','n_diff_pfx02',48,1,'teacher_id,id'),('SAPI','schedules','schedules_teacher_id_foreign','2023-10-18 15:28:02','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','schedules','schedules_teacher_id_foreign','2023-10-18 15:28:02','size',1,NULL,'Number of pages in the index'),('SAPI','sections','PRIMARY','2023-10-18 15:28:12','n_diff_pfx01',29,3,'id'),('SAPI','sections','PRIMARY','2023-10-18 15:28:12','n_leaf_pages',5,NULL,'Number of leaf pages in the index'),('SAPI','sections','PRIMARY','2023-10-18 15:28:12','size',6,NULL,'Number of pages in the index'),('SAPI','sections','sections_chapter_id_foreign','2023-10-18 15:28:12','n_diff_pfx01',8,1,'chapter_id'),('SAPI','sections','sections_chapter_id_foreign','2023-10-18 15:28:12','n_diff_pfx02',29,1,'chapter_id,id'),('SAPI','sections','sections_chapter_id_foreign','2023-10-18 15:28:12','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','sections','sections_chapter_id_foreign','2023-10-18 15:28:12','size',1,NULL,'Number of pages in the index'),('SAPI','sections','sections_sectiontitle_unique','2023-10-18 15:28:12','n_diff_pfx01',29,1,'sectionTitle'),('SAPI','sections','sections_sectiontitle_unique','2023-10-18 15:28:12','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','sections','sections_sectiontitle_unique','2023-10-18 15:28:12','size',1,NULL,'Number of pages in the index'),('SAPI','students','PRIMARY','2023-10-18 15:28:22','n_diff_pfx01',5,1,'id'),('SAPI','students','PRIMARY','2023-10-18 15:28:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','students','PRIMARY','2023-10-18 15:28:22','size',1,NULL,'Number of pages in the index'),('SAPI','students','students_classroom_id_foreign','2023-10-18 15:28:22','n_diff_pfx01',2,1,'classroom_id'),('SAPI','students','students_classroom_id_foreign','2023-10-18 15:28:22','n_diff_pfx02',5,1,'classroom_id,id'),('SAPI','students','students_classroom_id_foreign','2023-10-18 15:28:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','students','students_classroom_id_foreign','2023-10-18 15:28:22','size',1,NULL,'Number of pages in the index'),('SAPI','students','students_user_id_foreign','2023-10-18 15:28:22','n_diff_pfx01',5,1,'user_id'),('SAPI','students','students_user_id_foreign','2023-10-18 15:28:22','n_diff_pfx02',5,1,'user_id,id'),('SAPI','students','students_user_id_foreign','2023-10-18 15:28:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','students','students_user_id_foreign','2023-10-18 15:28:22','size',1,NULL,'Number of pages in the index'),('SAPI','subjects','PRIMARY','2023-10-18 15:28:32','n_diff_pfx01',20,1,'id'),('SAPI','subjects','PRIMARY','2023-10-18 15:28:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','subjects','PRIMARY','2023-10-18 15:28:32','size',1,NULL,'Number of pages in the index'),('SAPI','teachers','PRIMARY','2023-10-18 15:28:42','n_diff_pfx01',8,1,'id'),('SAPI','teachers','PRIMARY','2023-10-18 15:28:42','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','teachers','PRIMARY','2023-10-18 15:28:42','size',1,NULL,'Number of pages in the index'),('SAPI','teachers','teachers_main_photo_id_foreign','2023-10-18 15:28:42','n_diff_pfx01',6,1,'main_photo_id'),('SAPI','teachers','teachers_main_photo_id_foreign','2023-10-18 15:28:42','n_diff_pfx02',8,1,'main_photo_id,id'),('SAPI','teachers','teachers_main_photo_id_foreign','2023-10-18 15:28:42','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','teachers','teachers_main_photo_id_foreign','2023-10-18 15:28:42','size',1,NULL,'Number of pages in the index'),('SAPI','teachers','teachers_role_id_foreign','2023-10-18 15:28:42','n_diff_pfx01',1,1,'role_id'),('SAPI','teachers','teachers_role_id_foreign','2023-10-18 15:28:42','n_diff_pfx02',8,1,'role_id,id'),('SAPI','teachers','teachers_role_id_foreign','2023-10-18 15:28:42','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','teachers','teachers_role_id_foreign','2023-10-18 15:28:42','size',1,NULL,'Number of pages in the index'),('SAPI','teachers','teachers_user_id_foreign','2023-10-18 15:28:42','n_diff_pfx01',8,1,'user_id'),('SAPI','teachers','teachers_user_id_foreign','2023-10-18 15:28:42','n_diff_pfx02',8,1,'user_id,id'),('SAPI','teachers','teachers_user_id_foreign','2023-10-18 15:28:42','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','teachers','teachers_user_id_foreign','2023-10-18 15:28:42','size',1,NULL,'Number of pages in the index'),('SAPI','users','PRIMARY','2023-10-18 15:28:52','n_diff_pfx01',21,1,'id'),('SAPI','users','PRIMARY','2023-10-18 15:28:52','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','users','PRIMARY','2023-10-18 15:28:52','size',1,NULL,'Number of pages in the index'),('SAPI','users','users_email_unique','2023-10-18 15:28:52','n_diff_pfx01',21,1,'email'),('SAPI','users','users_email_unique','2023-10-18 15:28:52','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('SAPI','users','users_email_unique','2023-10-18 15:28:52','size',1,NULL,'Number of pages in the index'),('mysql','component','PRIMARY','2023-09-01 20:38:50','n_diff_pfx01',0,1,'component_id'),('mysql','component','PRIMARY','2023-09-01 20:38:50','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('mysql','component','PRIMARY','2023-09-01 20:38:50','size',1,NULL,'Number of pages in the index'),('sch','achievements','PRIMARY','2023-10-16 19:43:55','n_diff_pfx01',0,1,'id'),('sch','achievements','PRIMARY','2023-10-16 19:43:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','achievements','PRIMARY','2023-10-16 19:43:55','size',1,NULL,'Number of pages in the index'),('sch','album_photo','GEN_CLUST_INDEX','2023-10-16 19:43:55','n_diff_pfx01',20,1,'DB_ROW_ID'),('sch','album_photo','GEN_CLUST_INDEX','2023-10-16 19:43:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','album_photo','GEN_CLUST_INDEX','2023-10-16 19:43:55','size',1,NULL,'Number of pages in the index'),('sch','album_photo','album_photo_album_id_foreign','2023-10-16 19:43:55','n_diff_pfx01',3,1,'album_id'),('sch','album_photo','album_photo_album_id_foreign','2023-10-16 19:43:55','n_diff_pfx02',20,1,'album_id,DB_ROW_ID'),('sch','album_photo','album_photo_album_id_foreign','2023-10-16 19:43:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','album_photo','album_photo_album_id_foreign','2023-10-16 19:43:55','size',1,NULL,'Number of pages in the index'),('sch','album_photo','album_photo_photo_id_foreign','2023-10-16 19:43:55','n_diff_pfx01',20,1,'photo_id'),('sch','album_photo','album_photo_photo_id_foreign','2023-10-16 19:43:55','n_diff_pfx02',20,1,'photo_id,DB_ROW_ID'),('sch','album_photo','album_photo_photo_id_foreign','2023-10-16 19:43:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','album_photo','album_photo_photo_id_foreign','2023-10-16 19:43:55','size',1,NULL,'Number of pages in the index'),('sch','albums','PRIMARY','2023-10-16 19:43:55','n_diff_pfx01',3,1,'id'),('sch','albums','PRIMARY','2023-10-16 19:43:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','albums','PRIMARY','2023-10-16 19:43:55','size',1,NULL,'Number of pages in the index'),('sch','albums','albums_nameeng_unique','2023-10-16 19:43:55','n_diff_pfx01',3,1,'nameEng'),('sch','albums','albums_nameeng_unique','2023-10-16 19:43:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','albums','albums_nameeng_unique','2023-10-16 19:43:55','size',1,NULL,'Number of pages in the index'),('sch','appeals','PRIMARY','2023-10-16 19:44:07','n_diff_pfx01',10,3,'id'),('sch','appeals','PRIMARY','2023-10-16 19:44:07','n_leaf_pages',3,NULL,'Number of leaf pages in the index'),('sch','appeals','PRIMARY','2023-10-16 19:44:07','size',4,NULL,'Number of pages in the index'),('sch','appeals','appeals_category_id_foreign','2023-10-16 19:44:07','n_diff_pfx01',2,1,'category_id'),('sch','appeals','appeals_category_id_foreign','2023-10-16 19:44:07','n_diff_pfx02',10,1,'category_id,id'),('sch','appeals','appeals_category_id_foreign','2023-10-16 19:44:07','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','appeals','appeals_category_id_foreign','2023-10-16 19:44:07','size',1,NULL,'Number of pages in the index'),('sch','appeals_categories','PRIMARY','2023-10-16 19:43:56','n_diff_pfx01',2,1,'id'),('sch','appeals_categories','PRIMARY','2023-10-16 19:43:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','appeals_categories','PRIMARY','2023-10-16 19:43:56','size',1,NULL,'Number of pages in the index'),('sch','banners','PRIMARY','2023-10-16 19:43:57','n_diff_pfx01',4,1,'id'),('sch','banners','PRIMARY','2023-10-16 19:43:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','banners','PRIMARY','2023-10-16 19:43:57','size',1,NULL,'Number of pages in the index'),('sch','cabinets','PRIMARY','2023-10-16 19:43:58','n_diff_pfx01',3,1,'id'),('sch','cabinets','PRIMARY','2023-10-16 19:43:58','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','cabinets','PRIMARY','2023-10-16 19:43:58','size',1,NULL,'Number of pages in the index'),('sch','call_schedules','PRIMARY','2023-10-16 19:43:58','n_diff_pfx01',8,1,'id'),('sch','call_schedules','PRIMARY','2023-10-16 19:43:58','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','call_schedules','PRIMARY','2023-10-16 19:43:58','size',1,NULL,'Number of pages in the index'),('sch','chapters','PRIMARY','2023-10-16 19:43:59','n_diff_pfx01',12,1,'id'),('sch','chapters','PRIMARY','2023-10-16 19:43:59','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','chapters','PRIMARY','2023-10-16 19:43:59','size',1,NULL,'Number of pages in the index'),('sch','chapters','chapters_chaptertitle_unique','2023-10-16 19:43:59','n_diff_pfx01',12,1,'chapterTitle'),('sch','chapters','chapters_chaptertitle_unique','2023-10-16 19:43:59','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','chapters','chapters_chaptertitle_unique','2023-10-16 19:43:59','size',1,NULL,'Number of pages in the index'),('sch','chapters','chapters_slug_unique','2023-10-16 19:43:59','n_diff_pfx01',12,1,'slug'),('sch','chapters','chapters_slug_unique','2023-10-16 19:43:59','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','chapters','chapters_slug_unique','2023-10-16 19:43:59','size',1,NULL,'Number of pages in the index'),('sch','classrooms','PRIMARY','2023-10-16 19:43:59','n_diff_pfx01',2,1,'id'),('sch','classrooms','PRIMARY','2023-10-16 19:43:59','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','classrooms','PRIMARY','2023-10-16 19:43:59','size',1,NULL,'Number of pages in the index'),('sch','classrooms','classrooms_cabinet_id_foreign','2023-10-16 19:43:59','n_diff_pfx01',2,1,'cabinet_id'),('sch','classrooms','classrooms_cabinet_id_foreign','2023-10-16 19:43:59','n_diff_pfx02',2,1,'cabinet_id,id'),('sch','classrooms','classrooms_cabinet_id_foreign','2023-10-16 19:43:59','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','classrooms','classrooms_cabinet_id_foreign','2023-10-16 19:43:59','size',1,NULL,'Number of pages in the index'),('sch','classrooms','classrooms_teacher_id_foreign','2023-10-16 19:43:59','n_diff_pfx01',1,1,'teacher_id'),('sch','classrooms','classrooms_teacher_id_foreign','2023-10-16 19:43:59','n_diff_pfx02',2,1,'teacher_id,id'),('sch','classrooms','classrooms_teacher_id_foreign','2023-10-16 19:43:59','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','classrooms','classrooms_teacher_id_foreign','2023-10-16 19:43:59','size',1,NULL,'Number of pages in the index'),('sch','days','PRIMARY','2023-10-16 19:44:00','n_diff_pfx01',6,1,'id'),('sch','days','PRIMARY','2023-10-16 19:44:00','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','days','PRIMARY','2023-10-16 19:44:00','size',1,NULL,'Number of pages in the index'),('sch','docimage_section','PRIMARY','2023-10-16 19:44:02','n_diff_pfx01',2,1,'id'),('sch','docimage_section','PRIMARY','2023-10-16 19:44:02','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','docimage_section','PRIMARY','2023-10-16 19:44:02','size',1,NULL,'Number of pages in the index'),('sch','docimage_section','docimage_section_docimage_id_foreign','2023-10-16 19:44:02','n_diff_pfx01',2,1,'docimage_id'),('sch','docimage_section','docimage_section_docimage_id_foreign','2023-10-16 19:44:02','n_diff_pfx02',2,1,'docimage_id,id'),('sch','docimage_section','docimage_section_docimage_id_foreign','2023-10-16 19:44:02','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','docimage_section','docimage_section_docimage_id_foreign','2023-10-16 19:44:02','size',1,NULL,'Number of pages in the index'),('sch','docimage_section','docimage_section_section_id_foreign','2023-10-16 19:44:02','n_diff_pfx01',1,1,'section_id'),('sch','docimage_section','docimage_section_section_id_foreign','2023-10-16 19:44:02','n_diff_pfx02',2,1,'section_id,id'),('sch','docimage_section','docimage_section_section_id_foreign','2023-10-16 19:44:02','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','docimage_section','docimage_section_section_id_foreign','2023-10-16 19:44:02','size',1,NULL,'Number of pages in the index'),('sch','docimages','PRIMARY','2023-10-16 19:44:01','n_diff_pfx01',2,1,'id'),('sch','docimages','PRIMARY','2023-10-16 19:44:01','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','docimages','PRIMARY','2023-10-16 19:44:01','size',1,NULL,'Number of pages in the index'),('sch','docimages','docimages_documentname_unique','2023-10-16 19:44:01','n_diff_pfx01',2,1,'documentName'),('sch','docimages','docimages_documentname_unique','2023-10-16 19:44:01','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','docimages','docimages_documentname_unique','2023-10-16 19:44:01','size',1,NULL,'Number of pages in the index'),('sch','docimages','docimages_documentsource_unique','2023-10-16 19:44:01','n_diff_pfx01',2,1,'documentSource'),('sch','docimages','docimages_documentsource_unique','2023-10-16 19:44:01','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','docimages','docimages_documentsource_unique','2023-10-16 19:44:01','size',1,NULL,'Number of pages in the index'),('sch','docsource_section','PRIMARY','2023-10-16 19:44:03','n_diff_pfx01',78,1,'id'),('sch','docsource_section','PRIMARY','2023-10-16 19:44:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','docsource_section','PRIMARY','2023-10-16 19:44:03','size',1,NULL,'Number of pages in the index'),('sch','docsource_section','docsource_section_docsource_id_foreign','2023-10-16 19:44:03','n_diff_pfx01',78,1,'docsource_id'),('sch','docsource_section','docsource_section_docsource_id_foreign','2023-10-16 19:44:03','n_diff_pfx02',78,1,'docsource_id,id'),('sch','docsource_section','docsource_section_docsource_id_foreign','2023-10-16 19:44:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','docsource_section','docsource_section_docsource_id_foreign','2023-10-16 19:44:03','size',1,NULL,'Number of pages in the index'),('sch','docsource_section','docsource_section_section_id_foreign','2023-10-16 19:44:03','n_diff_pfx01',11,1,'section_id'),('sch','docsource_section','docsource_section_section_id_foreign','2023-10-16 19:44:03','n_diff_pfx02',78,1,'section_id,id'),('sch','docsource_section','docsource_section_section_id_foreign','2023-10-16 19:44:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','docsource_section','docsource_section_section_id_foreign','2023-10-16 19:44:03','size',1,NULL,'Number of pages in the index'),('sch','docsources','PRIMARY','2023-10-16 19:44:02','n_diff_pfx01',78,2,'id'),('sch','docsources','PRIMARY','2023-10-16 19:44:02','n_leaf_pages',2,NULL,'Number of leaf pages in the index'),('sch','docsources','PRIMARY','2023-10-16 19:44:02','size',3,NULL,'Number of pages in the index'),('sch','docsources','docsources_documentname_unique','2023-10-16 19:44:02','n_diff_pfx01',78,1,'documentName'),('sch','docsources','docsources_documentname_unique','2023-10-16 19:44:02','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','docsources','docsources_documentname_unique','2023-10-16 19:44:02','size',1,NULL,'Number of pages in the index'),('sch','docsources','docsources_documentsource_unique','2023-10-16 19:44:02','n_diff_pfx01',78,1,'documentSource'),('sch','docsources','docsources_documentsource_unique','2023-10-16 19:44:02','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','docsources','docsources_documentsource_unique','2023-10-16 19:44:02','size',1,NULL,'Number of pages in the index'),('sch','failed_jobs','PRIMARY','2023-10-16 19:44:00','n_diff_pfx01',0,1,'id'),('sch','failed_jobs','PRIMARY','2023-10-16 19:44:00','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','failed_jobs','PRIMARY','2023-10-16 19:44:00','size',1,NULL,'Number of pages in the index'),('sch','information__links','PRIMARY','2023-10-16 19:44:00','n_diff_pfx01',0,1,'id'),('sch','information__links','PRIMARY','2023-10-16 19:44:00','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','information__links','PRIMARY','2023-10-16 19:44:00','size',1,NULL,'Number of pages in the index'),('sch','likes','PRIMARY','2023-10-16 19:44:01','n_diff_pfx01',0,1,'id'),('sch','likes','PRIMARY','2023-10-16 19:44:01','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','likes','PRIMARY','2023-10-16 19:44:01','size',1,NULL,'Number of pages in the index'),('sch','likes','likes_news_id_foreign','2023-10-16 19:44:01','n_diff_pfx01',0,1,'news_id'),('sch','likes','likes_news_id_foreign','2023-10-16 19:44:01','n_diff_pfx02',0,1,'news_id,id'),('sch','likes','likes_news_id_foreign','2023-10-16 19:44:01','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','likes','likes_news_id_foreign','2023-10-16 19:44:01','size',1,NULL,'Number of pages in the index'),('sch','likes','likes_user_id_foreign','2023-10-16 19:44:01','n_diff_pfx01',0,1,'user_id'),('sch','likes','likes_user_id_foreign','2023-10-16 19:44:01','n_diff_pfx02',0,1,'user_id,id'),('sch','likes','likes_user_id_foreign','2023-10-16 19:44:01','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','likes','likes_user_id_foreign','2023-10-16 19:44:01','size',1,NULL,'Number of pages in the index'),('sch','menu_basics','PRIMARY','2023-10-16 19:44:04','n_diff_pfx01',60,1,'id'),('sch','menu_basics','PRIMARY','2023-10-16 19:44:04','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','menu_basics','PRIMARY','2023-10-16 19:44:04','size',1,NULL,'Number of pages in the index'),('sch','menu_items','PRIMARY','2023-10-16 19:44:05','n_diff_pfx01',50,1,'id'),('sch','menu_items','PRIMARY','2023-10-16 19:44:05','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','menu_items','PRIMARY','2023-10-16 19:44:05','size',1,NULL,'Number of pages in the index'),('sch','menu_items','menu_items_name_dish_unique','2023-10-16 19:44:05','n_diff_pfx01',50,1,'name_dish'),('sch','menu_items','menu_items_name_dish_unique','2023-10-16 19:44:05','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','menu_items','menu_items_name_dish_unique','2023-10-16 19:44:05','size',1,NULL,'Number of pages in the index'),('sch','menus','PRIMARY','2023-10-16 19:44:04','n_diff_pfx01',240,1,'id'),('sch','menus','PRIMARY','2023-10-16 19:44:04','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','menus','PRIMARY','2023-10-16 19:44:04','size',1,NULL,'Number of pages in the index'),('sch','menus','menus_menu_basic_id_foreign','2023-10-16 19:44:04','n_diff_pfx01',60,1,'menu_basic_id'),('sch','menus','menus_menu_basic_id_foreign','2023-10-16 19:44:04','n_diff_pfx02',240,1,'menu_basic_id,id'),('sch','menus','menus_menu_basic_id_foreign','2023-10-16 19:44:04','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','menus','menus_menu_basic_id_foreign','2023-10-16 19:44:04','size',1,NULL,'Number of pages in the index'),('sch','menus','menus_menu_item_id_foreign','2023-10-16 19:44:04','n_diff_pfx01',50,1,'menu_item_id'),('sch','menus','menus_menu_item_id_foreign','2023-10-16 19:44:04','n_diff_pfx02',240,1,'menu_item_id,id'),('sch','menus','menus_menu_item_id_foreign','2023-10-16 19:44:04','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','menus','menus_menu_item_id_foreign','2023-10-16 19:44:04','size',1,NULL,'Number of pages in the index'),('sch','migrations','PRIMARY','2023-10-16 19:44:06','n_diff_pfx01',52,1,'id'),('sch','migrations','PRIMARY','2023-10-16 19:44:06','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','migrations','PRIMARY','2023-10-16 19:44:06','size',1,NULL,'Number of pages in the index'),('sch','model_has_permissions','PRIMARY','2023-10-16 19:44:03','n_diff_pfx01',0,1,'permission_id'),('sch','model_has_permissions','PRIMARY','2023-10-16 19:44:03','n_diff_pfx02',0,1,'permission_id,model_id'),('sch','model_has_permissions','PRIMARY','2023-10-16 19:44:03','n_diff_pfx03',0,1,'permission_id,model_id,model_type'),('sch','model_has_permissions','PRIMARY','2023-10-16 19:44:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','model_has_permissions','PRIMARY','2023-10-16 19:44:03','size',1,NULL,'Number of pages in the index'),('sch','model_has_permissions','model_has_permissions_model_id_model_type_index','2023-10-16 19:44:03','n_diff_pfx01',0,1,'model_id'),('sch','model_has_permissions','model_has_permissions_model_id_model_type_index','2023-10-16 19:44:03','n_diff_pfx02',0,1,'model_id,model_type'),('sch','model_has_permissions','model_has_permissions_model_id_model_type_index','2023-10-16 19:44:03','n_diff_pfx03',0,1,'model_id,model_type,permission_id'),('sch','model_has_permissions','model_has_permissions_model_id_model_type_index','2023-10-16 19:44:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','model_has_permissions','model_has_permissions_model_id_model_type_index','2023-10-16 19:44:03','size',1,NULL,'Number of pages in the index'),('sch','model_has_roles','PRIMARY','2023-10-16 19:44:07','n_diff_pfx01',4,1,'role_id'),('sch','model_has_roles','PRIMARY','2023-10-16 19:44:07','n_diff_pfx02',22,1,'role_id,model_id'),('sch','model_has_roles','PRIMARY','2023-10-16 19:44:07','n_diff_pfx03',22,1,'role_id,model_id,model_type'),('sch','model_has_roles','PRIMARY','2023-10-16 19:44:07','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','model_has_roles','PRIMARY','2023-10-16 19:44:07','size',1,NULL,'Number of pages in the index'),('sch','model_has_roles','model_has_roles_model_id_model_type_index','2023-10-16 19:44:07','n_diff_pfx01',21,1,'model_id'),('sch','model_has_roles','model_has_roles_model_id_model_type_index','2023-10-16 19:44:07','n_diff_pfx02',21,1,'model_id,model_type'),('sch','model_has_roles','model_has_roles_model_id_model_type_index','2023-10-16 19:44:07','n_diff_pfx03',22,1,'model_id,model_type,role_id'),('sch','model_has_roles','model_has_roles_model_id_model_type_index','2023-10-16 19:44:07','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','model_has_roles','model_has_roles_model_id_model_type_index','2023-10-16 19:44:07','size',1,NULL,'Number of pages in the index'),('sch','news','PRIMARY','2023-10-16 19:44:08','n_diff_pfx01',17,3,'id'),('sch','news','PRIMARY','2023-10-16 19:44:08','n_leaf_pages',3,NULL,'Number of leaf pages in the index'),('sch','news','PRIMARY','2023-10-16 19:44:08','size',4,NULL,'Number of pages in the index'),('sch','news','news_album_id_foreign','2023-10-16 19:44:08','n_diff_pfx01',1,1,'album_id'),('sch','news','news_album_id_foreign','2023-10-16 19:44:08','n_diff_pfx02',17,1,'album_id,id'),('sch','news','news_album_id_foreign','2023-10-16 19:44:08','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','news','news_album_id_foreign','2023-10-16 19:44:08','size',1,NULL,'Number of pages in the index'),('sch','news','news_news_category_id_foreign','2023-10-16 19:44:08','n_diff_pfx01',1,1,'news_category_id'),('sch','news','news_news_category_id_foreign','2023-10-16 19:44:08','n_diff_pfx02',17,1,'news_category_id,id'),('sch','news','news_news_category_id_foreign','2023-10-16 19:44:08','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','news','news_news_category_id_foreign','2023-10-16 19:44:08','size',1,NULL,'Number of pages in the index'),('sch','news_categories','PRIMARY','2023-10-16 19:44:04','n_diff_pfx01',0,1,'id'),('sch','news_categories','PRIMARY','2023-10-16 19:44:04','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','news_categories','PRIMARY','2023-10-16 19:44:04','size',1,NULL,'Number of pages in the index'),('sch','parent_student','PRIMARY','2023-10-16 19:44:08','n_diff_pfx01',9,1,'id'),('sch','parent_student','PRIMARY','2023-10-16 19:44:08','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','parent_student','PRIMARY','2023-10-16 19:44:08','size',1,NULL,'Number of pages in the index'),('sch','parent_student','parent_student_parent_id_foreign','2023-10-16 19:44:08','n_diff_pfx01',7,1,'parent_id'),('sch','parent_student','parent_student_parent_id_foreign','2023-10-16 19:44:08','n_diff_pfx02',9,1,'parent_id,id'),('sch','parent_student','parent_student_parent_id_foreign','2023-10-16 19:44:08','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','parent_student','parent_student_parent_id_foreign','2023-10-16 19:44:08','size',1,NULL,'Number of pages in the index'),('sch','parent_student','parent_student_student_id_foreign','2023-10-16 19:44:08','n_diff_pfx01',5,1,'student_id'),('sch','parent_student','parent_student_student_id_foreign','2023-10-16 19:44:08','n_diff_pfx02',9,1,'student_id,id'),('sch','parent_student','parent_student_student_id_foreign','2023-10-16 19:44:08','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','parent_student','parent_student_student_id_foreign','2023-10-16 19:44:08','size',1,NULL,'Number of pages in the index'),('sch','parents','PRIMARY','2023-10-16 19:44:08','n_diff_pfx01',7,1,'id'),('sch','parents','PRIMARY','2023-10-16 19:44:08','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','parents','PRIMARY','2023-10-16 19:44:08','size',1,NULL,'Number of pages in the index'),('sch','parents','parents_user_id_foreign','2023-10-16 19:44:08','n_diff_pfx01',7,1,'user_id'),('sch','parents','parents_user_id_foreign','2023-10-16 19:44:08','n_diff_pfx02',7,1,'user_id,id'),('sch','parents','parents_user_id_foreign','2023-10-16 19:44:08','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','parents','parents_user_id_foreign','2023-10-16 19:44:08','size',1,NULL,'Number of pages in the index'),('sch','password_reset_tokens','PRIMARY','2023-10-16 19:44:05','n_diff_pfx01',0,1,'email'),('sch','password_reset_tokens','PRIMARY','2023-10-16 19:44:05','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','password_reset_tokens','PRIMARY','2023-10-16 19:44:05','size',1,NULL,'Number of pages in the index'),('sch','permissions','PRIMARY','2023-10-16 19:44:09','n_diff_pfx01',12,1,'id'),('sch','permissions','PRIMARY','2023-10-16 19:44:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','permissions','PRIMARY','2023-10-16 19:44:09','size',1,NULL,'Number of pages in the index'),('sch','permissions','permissions_name_guard_name_unique','2023-10-16 19:44:09','n_diff_pfx01',12,1,'name'),('sch','permissions','permissions_name_guard_name_unique','2023-10-16 19:44:09','n_diff_pfx02',12,1,'name,guard_name'),('sch','permissions','permissions_name_guard_name_unique','2023-10-16 19:44:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','permissions','permissions_name_guard_name_unique','2023-10-16 19:44:09','size',1,NULL,'Number of pages in the index'),('sch','personal_access_tokens','PRIMARY','2023-10-16 19:44:06','n_diff_pfx01',0,1,'id'),('sch','personal_access_tokens','PRIMARY','2023-10-16 19:44:06','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','personal_access_tokens','PRIMARY','2023-10-16 19:44:06','size',1,NULL,'Number of pages in the index'),('sch','personal_access_tokens','personal_access_tokens_token_unique','2023-10-16 19:44:06','n_diff_pfx01',0,1,'token'),('sch','personal_access_tokens','personal_access_tokens_token_unique','2023-10-16 19:44:06','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','personal_access_tokens','personal_access_tokens_token_unique','2023-10-16 19:44:06','size',1,NULL,'Number of pages in the index'),('sch','personal_access_tokens','personal_access_tokens_tokenable_type_tokenable_id_index','2023-10-16 19:44:06','n_diff_pfx01',0,1,'tokenable_type'),('sch','personal_access_tokens','personal_access_tokens_tokenable_type_tokenable_id_index','2023-10-16 19:44:06','n_diff_pfx02',0,1,'tokenable_type,tokenable_id'),('sch','personal_access_tokens','personal_access_tokens_tokenable_type_tokenable_id_index','2023-10-16 19:44:06','n_diff_pfx03',0,1,'tokenable_type,tokenable_id,id'),('sch','personal_access_tokens','personal_access_tokens_tokenable_type_tokenable_id_index','2023-10-16 19:44:06','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','personal_access_tokens','personal_access_tokens_tokenable_type_tokenable_id_index','2023-10-16 19:44:06','size',1,NULL,'Number of pages in the index'),('sch','photos','PRIMARY','2023-10-16 19:44:09','n_diff_pfx01',28,1,'id'),('sch','photos','PRIMARY','2023-10-16 19:44:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','photos','PRIMARY','2023-10-16 19:44:09','size',1,NULL,'Number of pages in the index'),('sch','role_has_permissions','PRIMARY','2023-10-16 19:44:10','n_diff_pfx01',12,1,'permission_id'),('sch','role_has_permissions','PRIMARY','2023-10-16 19:44:10','n_diff_pfx02',12,1,'permission_id,role_id'),('sch','role_has_permissions','PRIMARY','2023-10-16 19:44:10','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','role_has_permissions','PRIMARY','2023-10-16 19:44:10','size',1,NULL,'Number of pages in the index'),('sch','role_has_permissions','role_has_permissions_role_id_foreign','2023-10-16 19:44:10','n_diff_pfx01',1,1,'role_id'),('sch','role_has_permissions','role_has_permissions_role_id_foreign','2023-10-16 19:44:10','n_diff_pfx02',12,1,'role_id,permission_id'),('sch','role_has_permissions','role_has_permissions_role_id_foreign','2023-10-16 19:44:10','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','role_has_permissions','role_has_permissions_role_id_foreign','2023-10-16 19:44:10','size',1,NULL,'Number of pages in the index'),('sch','roles','PRIMARY','2023-10-16 19:44:09','n_diff_pfx01',4,1,'id'),('sch','roles','PRIMARY','2023-10-16 19:44:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','roles','PRIMARY','2023-10-16 19:44:09','size',1,NULL,'Number of pages in the index'),('sch','roles','roles_name_guard_name_unique','2023-10-16 19:44:09','n_diff_pfx01',4,1,'name'),('sch','roles','roles_name_guard_name_unique','2023-10-16 19:44:09','n_diff_pfx02',4,1,'name,guard_name'),('sch','roles','roles_name_guard_name_unique','2023-10-16 19:44:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','roles','roles_name_guard_name_unique','2023-10-16 19:44:09','size',1,NULL,'Number of pages in the index'),('sch','schedules','PRIMARY','2023-10-16 19:44:20','n_diff_pfx01',48,1,'id'),('sch','schedules','PRIMARY','2023-10-16 19:44:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','schedules','PRIMARY','2023-10-16 19:44:20','size',1,NULL,'Number of pages in the index'),('sch','schedules','schedules_call_schedule_id_foreign','2023-10-16 19:44:20','n_diff_pfx01',4,1,'call_schedule_id'),('sch','schedules','schedules_call_schedule_id_foreign','2023-10-16 19:44:20','n_diff_pfx02',48,1,'call_schedule_id,id'),('sch','schedules','schedules_call_schedule_id_foreign','2023-10-16 19:44:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','schedules','schedules_call_schedule_id_foreign','2023-10-16 19:44:20','size',1,NULL,'Number of pages in the index'),('sch','schedules','schedules_classroom_id_foreign','2023-10-16 19:44:20','n_diff_pfx01',2,1,'classroom_id'),('sch','schedules','schedules_classroom_id_foreign','2023-10-16 19:44:20','n_diff_pfx02',48,1,'classroom_id,id'),('sch','schedules','schedules_classroom_id_foreign','2023-10-16 19:44:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','schedules','schedules_classroom_id_foreign','2023-10-16 19:44:20','size',1,NULL,'Number of pages in the index'),('sch','schedules','schedules_day_id_foreign','2023-10-16 19:44:20','n_diff_pfx01',6,1,'day_id'),('sch','schedules','schedules_day_id_foreign','2023-10-16 19:44:20','n_diff_pfx02',48,1,'day_id,id'),('sch','schedules','schedules_day_id_foreign','2023-10-16 19:44:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','schedules','schedules_day_id_foreign','2023-10-16 19:44:20','size',1,NULL,'Number of pages in the index'),('sch','schedules','schedules_subject_id_foreign','2023-10-16 19:44:20','n_diff_pfx01',17,1,'subject_id'),('sch','schedules','schedules_subject_id_foreign','2023-10-16 19:44:20','n_diff_pfx02',48,1,'subject_id,id'),('sch','schedules','schedules_subject_id_foreign','2023-10-16 19:44:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','schedules','schedules_subject_id_foreign','2023-10-16 19:44:20','size',1,NULL,'Number of pages in the index'),('sch','schedules','schedules_teacher_id_foreign','2023-10-16 19:44:20','n_diff_pfx01',2,1,'teacher_id'),('sch','schedules','schedules_teacher_id_foreign','2023-10-16 19:44:20','n_diff_pfx02',48,1,'teacher_id,id'),('sch','schedules','schedules_teacher_id_foreign','2023-10-16 19:44:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','schedules','schedules_teacher_id_foreign','2023-10-16 19:44:20','size',1,NULL,'Number of pages in the index'),('sch','sections','PRIMARY','2023-10-16 19:44:30','n_diff_pfx01',29,3,'id'),('sch','sections','PRIMARY','2023-10-16 19:44:30','n_leaf_pages',5,NULL,'Number of leaf pages in the index'),('sch','sections','PRIMARY','2023-10-16 19:44:30','size',6,NULL,'Number of pages in the index'),('sch','sections','sections_chapter_id_foreign','2023-10-16 19:44:30','n_diff_pfx01',8,1,'chapter_id'),('sch','sections','sections_chapter_id_foreign','2023-10-16 19:44:30','n_diff_pfx02',29,1,'chapter_id,id'),('sch','sections','sections_chapter_id_foreign','2023-10-16 19:44:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','sections','sections_chapter_id_foreign','2023-10-16 19:44:30','size',1,NULL,'Number of pages in the index'),('sch','sections','sections_sectiontitle_unique','2023-10-16 19:44:30','n_diff_pfx01',29,1,'sectionTitle'),('sch','sections','sections_sectiontitle_unique','2023-10-16 19:44:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','sections','sections_sectiontitle_unique','2023-10-16 19:44:30','size',1,NULL,'Number of pages in the index'),('sch','students','PRIMARY','2023-10-16 19:44:40','n_diff_pfx01',5,1,'id'),('sch','students','PRIMARY','2023-10-16 19:44:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','students','PRIMARY','2023-10-16 19:44:40','size',1,NULL,'Number of pages in the index'),('sch','students','students_classroom_id_foreign','2023-10-16 19:44:40','n_diff_pfx01',2,1,'classroom_id'),('sch','students','students_classroom_id_foreign','2023-10-16 19:44:40','n_diff_pfx02',5,1,'classroom_id,id'),('sch','students','students_classroom_id_foreign','2023-10-16 19:44:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','students','students_classroom_id_foreign','2023-10-16 19:44:40','size',1,NULL,'Number of pages in the index'),('sch','students','students_user_id_foreign','2023-10-16 19:44:40','n_diff_pfx01',5,1,'user_id'),('sch','students','students_user_id_foreign','2023-10-16 19:44:40','n_diff_pfx02',5,1,'user_id,id'),('sch','students','students_user_id_foreign','2023-10-16 19:44:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','students','students_user_id_foreign','2023-10-16 19:44:40','size',1,NULL,'Number of pages in the index'),('sch','subjects','PRIMARY','2023-10-16 19:44:50','n_diff_pfx01',20,1,'id'),('sch','subjects','PRIMARY','2023-10-16 19:44:50','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','subjects','PRIMARY','2023-10-16 19:44:50','size',1,NULL,'Number of pages in the index'),('sch','teachers','PRIMARY','2023-10-16 19:45:00','n_diff_pfx01',8,1,'id'),('sch','teachers','PRIMARY','2023-10-16 19:45:00','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','teachers','PRIMARY','2023-10-16 19:45:00','size',1,NULL,'Number of pages in the index'),('sch','teachers','teachers_main_photo_id_foreign','2023-10-16 19:45:00','n_diff_pfx01',8,1,'main_photo_id'),('sch','teachers','teachers_main_photo_id_foreign','2023-10-16 19:45:00','n_diff_pfx02',8,1,'main_photo_id,id'),('sch','teachers','teachers_main_photo_id_foreign','2023-10-16 19:45:00','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','teachers','teachers_main_photo_id_foreign','2023-10-16 19:45:00','size',1,NULL,'Number of pages in the index'),('sch','teachers','teachers_role_id_foreign','2023-10-16 19:45:00','n_diff_pfx01',1,1,'role_id'),('sch','teachers','teachers_role_id_foreign','2023-10-16 19:45:00','n_diff_pfx02',8,1,'role_id,id'),('sch','teachers','teachers_role_id_foreign','2023-10-16 19:45:00','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','teachers','teachers_role_id_foreign','2023-10-16 19:45:00','size',1,NULL,'Number of pages in the index'),('sch','teachers','teachers_user_id_foreign','2023-10-16 19:45:00','n_diff_pfx01',8,1,'user_id'),('sch','teachers','teachers_user_id_foreign','2023-10-16 19:45:00','n_diff_pfx02',8,1,'user_id,id'),('sch','teachers','teachers_user_id_foreign','2023-10-16 19:45:00','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','teachers','teachers_user_id_foreign','2023-10-16 19:45:00','size',1,NULL,'Number of pages in the index'),('sch','users','PRIMARY','2023-10-16 19:45:10','n_diff_pfx01',21,1,'id'),('sch','users','PRIMARY','2023-10-16 19:45:10','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','users','PRIMARY','2023-10-16 19:45:10','size',1,NULL,'Number of pages in the index'),('sch','users','users_email_unique','2023-10-16 19:45:10','n_diff_pfx01',21,1,'email'),('sch','users','users_email_unique','2023-10-16 19:45:10','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sch','users','users_email_unique','2023-10-16 19:45:10','size',1,NULL,'Number of pages in the index'),('sys','sys_config','PRIMARY','2023-09-01 20:38:52','n_diff_pfx01',6,1,'variable'),('sys','sys_config','PRIMARY','2023-09-01 20:38:52','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sys','sys_config','PRIMARY','2023-09-01 20:38:52','size',1,NULL,'Number of pages in the index');
/*!40000 ALTER TABLE `innodb_index_stats` ENABLE KEYS */;

--
-- Dumping data for table `innodb_table_stats`
--

/*!40000 ALTER TABLE `innodb_table_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('SAPI','#sql-40f_c','2023-09-29 20:42:12',0,1,1),('SAPI','achievements','2023-10-18 15:27:29',0,1,0),('SAPI','album_photo','2023-10-18 15:41:18',81,1,2),('SAPI','albums','2023-10-18 16:17:43',14,1,0),('SAPI','appeals','2023-10-18 15:27:31',12,1,1),('SAPI','appeals_categories','2023-10-18 15:27:31',2,1,0),('SAPI','banners','2023-10-18 15:29:21',4,1,1),('SAPI','cabinets','2023-10-18 15:27:32',3,1,0),('SAPI','call_schedules','2023-10-18 15:27:32',8,1,0),('SAPI','chapters','2023-10-18 15:27:33',12,1,2),('SAPI','classrooms','2023-10-18 15:27:33',2,1,2),('SAPI','days','2023-10-18 15:27:34',6,1,0),('SAPI','docimage_section','2023-10-18 15:27:35',2,1,2),('SAPI','docimages','2023-10-18 17:35:14',2,1,2),('SAPI','docsource_section','2023-10-18 15:27:35',78,1,2),('SAPI','docsources','2023-10-18 17:43:16',78,3,2),('SAPI','failed_jobs','2023-10-18 15:27:34',0,1,0),('SAPI','likes','2023-10-18 15:27:34',0,1,2),('SAPI','menu_basics','2023-10-18 15:27:37',14,1,0),('SAPI','menu_items','2023-10-18 15:27:37',30,1,1),('SAPI','menus','2023-10-18 15:27:38',62,1,2),('SAPI','migrations','2023-10-18 15:27:38',51,1,0),('SAPI','model_has_permissions','2023-10-18 15:27:36',0,1,1),('SAPI','model_has_roles','2023-10-18 15:27:39',23,1,1),('SAPI','news','2023-10-18 15:27:39',6,1,2),('SAPI','news_categories','2023-10-18 15:27:40',2,1,0),('SAPI','parent_student','2023-10-18 15:27:40',8,1,2),('SAPI','parents','2023-10-18 15:27:40',7,1,1),('SAPI','password_reset_tokens','2023-10-18 15:27:38',0,1,0),('SAPI','permissions','2023-10-18 15:27:41',12,1,1),('SAPI','personal_access_tokens','2023-10-18 17:17:56',3,1,2),('SAPI','photos','2023-10-18 15:40:54',71,1,0),('SAPI','role_has_permissions','2023-10-18 15:27:42',12,1,1),('SAPI','roles','2023-10-18 15:27:52',4,1,1),('SAPI','schedules','2023-10-18 15:28:02',48,1,5),('SAPI','sections','2023-10-18 15:28:12',29,6,2),('SAPI','students','2023-10-18 15:28:22',5,1,2),('SAPI','subjects','2023-10-18 15:28:32',20,1,0),('SAPI','teachers','2023-10-18 15:28:42',8,1,3),('SAPI','users','2023-10-18 15:28:52',21,1,1),('mysql','component','2023-09-01 20:38:50',0,1,0),('sch','achievements','2023-10-16 19:43:55',0,1,0),('sch','album_photo','2023-10-16 19:43:55',20,1,2),('sch','albums','2023-10-16 19:43:55',3,1,1),('sch','appeals','2023-10-16 19:44:07',10,4,1),('sch','appeals_categories','2023-10-16 19:43:56',2,1,0),('sch','banners','2023-10-16 19:43:57',4,1,0),('sch','cabinets','2023-10-16 19:43:58',3,1,0),('sch','call_schedules','2023-10-16 19:43:58',8,1,0),('sch','chapters','2023-10-16 19:43:59',12,1,2),('sch','classrooms','2023-10-16 19:43:59',2,1,2),('sch','days','2023-10-16 19:44:00',6,1,0),('sch','docimage_section','2023-10-16 19:44:02',2,1,2),('sch','docimages','2023-10-16 19:44:01',2,1,2),('sch','docsource_section','2023-10-16 19:44:03',78,1,2),('sch','docsources','2023-10-16 19:44:02',78,3,2),('sch','failed_jobs','2023-10-16 19:44:00',0,1,0),('sch','information__links','2023-10-16 19:44:00',0,1,0),('sch','likes','2023-10-16 19:44:01',0,1,2),('sch','menu_basics','2023-10-16 19:44:04',60,1,0),('sch','menu_items','2023-10-16 19:44:05',50,1,1),('sch','menus','2023-10-16 19:44:04',240,1,2),('sch','migrations','2023-10-16 19:44:06',52,1,0),('sch','model_has_permissions','2023-10-16 19:44:03',0,1,1),('sch','model_has_roles','2023-10-16 19:44:07',22,1,1),('sch','news','2023-10-16 19:44:08',17,4,2),('sch','news_categories','2023-10-16 19:44:04',0,1,0),('sch','parent_student','2023-10-16 19:44:08',9,1,2),('sch','parents','2023-10-16 19:44:08',7,1,1),('sch','password_reset_tokens','2023-10-16 19:44:05',0,1,0),('sch','permissions','2023-10-16 19:44:09',12,1,1),('sch','personal_access_tokens','2023-10-16 19:44:06',0,1,2),('sch','photos','2023-10-16 19:44:09',28,1,0),('sch','role_has_permissions','2023-10-16 19:44:10',12,1,1),('sch','roles','2023-10-16 19:44:09',4,1,1),('sch','schedules','2023-10-16 19:44:20',48,1,5),('sch','sections','2023-10-16 19:44:30',29,6,2),('sch','students','2023-10-16 19:44:40',5,1,2),('sch','subjects','2023-10-16 19:44:50',20,1,0),('sch','teachers','2023-10-16 19:45:00',8,1,3),('sch','users','2023-10-16 19:45:10',21,1,1),('sys','sys_config','2023-09-01 20:38:52',6,1,0);
/*!40000 ALTER TABLE `innodb_table_stats` ENABLE KEYS */;

--
-- Table structure for table `password_history`
--

DROP TABLE IF EXISTS `password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_history` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Password_timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Password` text COLLATE utf8mb3_bin,
  PRIMARY KEY (`Host`,`User`,`Password_timestamp` DESC)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Password history for user accounts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_history`
--

LOCK TABLES `password_history` WRITE;
/*!40000 ALTER TABLE `password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin`
--

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
INSERT INTO `plugin` VALUES ('auth_socket','auth_socket.so');
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procs_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8mb3_bin NOT NULL,
  `Grantor` varchar(288) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Db`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Procedure privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procs_priv`
--

LOCK TABLES `procs_priv` WRITE;
/*!40000 ALTER TABLE `procs_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `procs_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxies_priv`
--

DROP TABLE IF EXISTS `proxies_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxies_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Proxied_host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Proxied_user` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT '0',
  `Grantor` varchar(288) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User proxy privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxies_priv`
--

LOCK TABLES `proxies_priv` WRITE;
/*!40000 ALTER TABLE `proxies_priv` DISABLE KEYS */;
INSERT INTO `proxies_priv` VALUES ('localhost','root','','',1,'boot@','2023-09-01 20:38:51');
/*!40000 ALTER TABLE `proxies_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_asynchronous_connection_failover`
--

DROP TABLE IF EXISTS `replication_asynchronous_connection_failover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_asynchronous_connection_failover` (
  `Channel_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The replication channel name that connects source and replica.',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The source hostname that the replica will attempt to switch over the replication connection to in case of a failure.',
  `Port` int unsigned NOT NULL COMMENT 'The source port that the replica will attempt to switch over the replication connection to in case of a failure.',
  `Network_namespace` char(64) NOT NULL COMMENT 'The source network namespace that the replica will attempt to switch over the replication connection to in case of a failure. If its value is empty, connections use the default (global) namespace.',
  `Weight` tinyint unsigned NOT NULL COMMENT 'The order in which the replica shall try to switch the connection over to when there are failures. Weight can be set to a number between 1 and 100, where 100 is the highest weight and 1 the lowest.',
  `Managed_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'The name of the group which this server belongs to.',
  PRIMARY KEY (`Channel_name`,`Host`,`Port`,`Network_namespace`,`Managed_name`),
  KEY `Channel_name` (`Channel_name`,`Managed_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The source configuration details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_asynchronous_connection_failover`
--

LOCK TABLES `replication_asynchronous_connection_failover` WRITE;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover` DISABLE KEYS */;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_asynchronous_connection_failover_managed`
--

DROP TABLE IF EXISTS `replication_asynchronous_connection_failover_managed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_asynchronous_connection_failover_managed` (
  `Channel_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The replication channel name that connects source and replica.',
  `Managed_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'The name of the source which needs to be managed.',
  `Managed_type` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'Determines the managed type.',
  `Configuration` json DEFAULT NULL COMMENT 'The data to help manage group. For Managed_type = GroupReplication, Configuration value should contain {"Primary_weight": 80, "Secondary_weight": 60}, so that it assigns weight=80 to PRIMARY of the group, and weight=60 for rest of the members in mysql.replication_asynchronous_connection_failover table.',
  PRIMARY KEY (`Channel_name`,`Managed_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The managed source configuration details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_asynchronous_connection_failover_managed`
--

LOCK TABLES `replication_asynchronous_connection_failover_managed` WRITE;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover_managed` DISABLE KEYS */;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover_managed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_group_configuration_version`
--

DROP TABLE IF EXISTS `replication_group_configuration_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_group_configuration_version` (
  `name` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The configuration name.',
  `version` bigint unsigned NOT NULL COMMENT 'The version of the configuration name.',
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The group configuration version.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_group_configuration_version`
--

LOCK TABLES `replication_group_configuration_version` WRITE;
/*!40000 ALTER TABLE `replication_group_configuration_version` DISABLE KEYS */;
INSERT INTO `replication_group_configuration_version` VALUES ('replication_group_member_actions',1);
/*!40000 ALTER TABLE `replication_group_configuration_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_group_member_actions`
--

DROP TABLE IF EXISTS `replication_group_member_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_group_member_actions` (
  `name` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The action name.',
  `event` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The event that will trigger the action.',
  `enabled` tinyint(1) NOT NULL COMMENT 'Whether the action is enabled.',
  `type` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The action type.',
  `priority` tinyint unsigned NOT NULL COMMENT 'The order on which the action will be run, value between 1 and 100, lower values first.',
  `error_handling` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'On errors during the action will be handled: IGNORE, CRITICAL.',
  PRIMARY KEY (`name`,`event`),
  KEY `event` (`event`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The member actions configuration.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_group_member_actions`
--

LOCK TABLES `replication_group_member_actions` WRITE;
/*!40000 ALTER TABLE `replication_group_member_actions` DISABLE KEYS */;
INSERT INTO `replication_group_member_actions` VALUES ('mysql_disable_super_read_only_if_primary','AFTER_PRIMARY_ELECTION',1,'INTERNAL',1,'IGNORE'),('mysql_start_failover_channels_if_primary','AFTER_PRIMARY_ELECTION',1,'INTERNAL',10,'CRITICAL');
/*!40000 ALTER TABLE `replication_group_member_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_edges`
--

DROP TABLE IF EXISTS `role_edges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_edges` (
  `FROM_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `FROM_USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `TO_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `TO_USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `WITH_ADMIN_OPTION` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`FROM_HOST`,`FROM_USER`,`TO_HOST`,`TO_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Role hierarchy and role grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_edges`
--

LOCK TABLES `role_edges` WRITE;
/*!40000 ALTER TABLE `role_edges` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_edges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_cost`
--

DROP TABLE IF EXISTS `server_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_cost` (
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'disk_temptable_create_cost' then 20.0 when _utf8mb3'disk_temptable_row_cost' then 0.5 when _utf8mb3'key_compare_cost' then 0.05 when _utf8mb3'memory_temptable_create_cost' then 1.0 when _utf8mb3'memory_temptable_row_cost' then 0.1 when _utf8mb3'row_evaluate_cost' then 0.1 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_cost`
--

LOCK TABLES `server_cost` WRITE;
/*!40000 ALTER TABLE `server_cost` DISABLE KEYS */;
INSERT INTO `server_cost` (`cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('disk_temptable_create_cost',NULL,'2023-09-01 20:38:51',NULL),('disk_temptable_row_cost',NULL,'2023-09-01 20:38:51',NULL),('key_compare_cost',NULL,'2023-09-01 20:38:51',NULL),('memory_temptable_create_cost',NULL,'2023-09-01 20:38:51',NULL),('memory_temptable_row_cost',NULL,'2023-09-01 20:38:51',NULL),('row_evaluate_cost',NULL,'2023-09-01 20:38:51',NULL);
/*!40000 ALTER TABLE `server_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slave_master_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_master_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint unsigned NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'The host name of the source.',
  `User_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The user name used to connect to the master.',
  `User_password` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The password used to connect to the master.',
  `Port` int unsigned NOT NULL COMMENT 'The network port used to connect to the master.',
  `Connect_retry` int unsigned NOT NULL COMMENT 'The period (in seconds) that the slave will wait before trying to reconnect to the master.',
  `Enabled_ssl` tinyint(1) NOT NULL COMMENT 'Indicates whether the server supports SSL connections.',
  `Ssl_ca` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The file used for the Certificate Authority (CA) certificate.',
  `Ssl_capath` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The path to the Certificate Authority (CA) certificates.',
  `Ssl_cert` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the SSL certificate file.',
  `Ssl_cipher` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the cipher in use for the SSL connection.',
  `Ssl_key` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the SSL key file.',
  `Ssl_verify_server_cert` tinyint(1) NOT NULL COMMENT 'Whether to verify the server certificate.',
  `Heartbeat` float NOT NULL,
  `Bind` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Displays which interface is employed when connecting to the MySQL server',
  `Ignored_server_ids` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The number of server IDs to be ignored, followed by the actual server IDs',
  `Uuid` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The master server uuid.',
  `Retry_count` bigint unsigned NOT NULL COMMENT 'Number of reconnect attempts, to the master, before giving up.',
  `Ssl_crl` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The file used for the Certificate Revocation List (CRL)',
  `Ssl_crlpath` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The path used for Certificate Revocation List (CRL) files',
  `Enabled_auto_position` tinyint(1) NOT NULL COMMENT 'Indicates whether GTIDs will be used to retrieve events from the master.',
  `Channel_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  `Tls_version` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Tls version',
  `Public_key_path` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The file containing public key of master server.',
  `Get_public_key` tinyint(1) NOT NULL COMMENT 'Preference to get public key from master.',
  `Network_namespace` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Network namespace used for communication with the master server.',
  `Master_compression_algorithm` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'Compression algorithm supported for data transfer between source and replica.',
  `Master_zstd_compression_level` int unsigned NOT NULL COMMENT 'Compression level associated with zstd compression algorithm.',
  `Tls_ciphersuites` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Ciphersuites used for TLS 1.3 communication with the master server.',
  `Source_connection_auto_failover` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Indicates whether the channel connection failover is enabled.',
  `Gtid_only` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Indicates if this channel only uses GTIDs and does not persist positions.',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Master Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_relay_log_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_relay_log_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int DEFAULT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int unsigned DEFAULT NULL,
  `Id` int unsigned DEFAULT NULL COMMENT 'Internal Id that uniquely identifies this record.',
  `Channel_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  `Privilege_checks_username` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Username part of PRIVILEGE_CHECKS_USER.',
  `Privilege_checks_hostname` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'Hostname part of PRIVILEGE_CHECKS_USER.',
  `Require_row_format` tinyint(1) NOT NULL COMMENT 'Indicates whether the channel shall only accept row based events.',
  `Require_table_primary_key_check` enum('STREAM','ON','OFF','GENERATE') NOT NULL DEFAULT 'STREAM' COMMENT 'Indicates what is the channel policy regarding tables without primary keys on create and alter table queries',
  `Assign_gtids_to_anonymous_transactions_type` enum('OFF','LOCAL','UUID') NOT NULL DEFAULT 'OFF' COMMENT 'Indicates whether the channel will generate a new GTID for anonymous transactions. OFF means that anonymous transactions will remain anonymous. LOCAL means that anonymous transactions will be assigned a newly generated GTID based on server_uuid. UUID indicates that anonymous transactions will be assigned a newly generated GTID based on Assign_gtids_to_anonymous_transactions_value',
  `Assign_gtids_to_anonymous_transactions_value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Indicates the UUID used while generating GTIDs for anonymous transactions',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Relay Log Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_worker_info`
--

DROP TABLE IF EXISTS `slave_worker_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slave_worker_info` (
  `Id` int unsigned NOT NULL,
  `Relay_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Relay_log_pos` bigint unsigned NOT NULL,
  `Master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_relay_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Checkpoint_relay_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Checkpoint_master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_seqno` int unsigned NOT NULL,
  `Checkpoint_group_size` int unsigned NOT NULL,
  `Checkpoint_group_bitmap` blob NOT NULL,
  `Channel_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  PRIMARY KEY (`Channel_name`,`Id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Worker Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slave_worker_info`
--

LOCK TABLES `slave_worker_info` WRITE;
/*!40000 ALTER TABLE `slave_worker_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `slave_worker_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Grantor` varchar(288) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`User`,`Db`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Table privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables_priv`
--

LOCK TABLES `tables_priv` WRITE;
/*!40000 ALTER TABLE `tables_priv` DISABLE KEYS */;
INSERT INTO `tables_priv` VALUES ('localhost','mysql','mysql.session','user','boot@','2023-09-01 20:38:51','Select',''),('localhost','sys','mysql.sys','sys_config','root@localhost','2023-09-01 20:38:52','Select','');
/*!40000 ALTER TABLE `tables_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone`
--

LOCK TABLES `time_zone` WRITE;
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint NOT NULL,
  `Correction` int NOT NULL,
  PRIMARY KEY (`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_leap_second`
--

LOCK TABLES `time_zone_leap_second` WRITE;
/*!40000 ALTER TABLE `time_zone_leap_second` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_leap_second` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_name`
--

LOCK TABLES `time_zone_name` WRITE;
/*!40000 ALTER TABLE `time_zone_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_time` bigint NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition`
--

LOCK TABLES `time_zone_transition` WRITE;
/*!40000 ALTER TABLE `time_zone_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  `Offset` int NOT NULL DEFAULT '0',
  `Is_DST` tinyint unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition_type`
--

LOCK TABLES `time_zone_transition_type` WRITE;
/*!40000 ALTER TABLE `time_zone_transition_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int unsigned NOT NULL DEFAULT '0',
  `max_updates` int unsigned NOT NULL DEFAULT '0',
  `max_connections` int unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int unsigned NOT NULL DEFAULT '0',
  `plugin` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT 'caching_sha2_password',
  `authentication_string` text COLLATE utf8mb3_bin,
  `password_expired` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `password_last_changed` timestamp NULL DEFAULT NULL,
  `password_lifetime` smallint unsigned DEFAULT NULL,
  `account_locked` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_role_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Drop_role_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Password_reuse_history` smallint unsigned DEFAULT NULL,
  `Password_reuse_time` smallint unsigned DEFAULT NULL,
  `Password_require_current` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `User_attributes` json DEFAULT NULL,
  PRIMARY KEY (`Host`,`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Users and global privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('localhost','debian-sys-maint','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'caching_sha2_password','$A$005$j\\<I/VrO%SI2#oxTfYT5jioomopWuU4UcPkXa7ObLIjHtNj.6X/Wt36v0','N','2023-09-01 20:38:53',NULL,'N','Y','Y',NULL,NULL,NULL,NULL),('localhost','mysql.infoschema','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2023-09-01 20:38:51',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.session','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2023-09-01 20:38:51',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2023-09-01 20:38:52',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','root','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'caching_sha2_password','$A$005$OLdF-rr%~wiOYF(onrGWV56zY./GJv32mD1wE0aHtLYCy2B8Euh03SbYIZ88','N','2023-09-12 10:31:08',NULL,'N','Y','Y',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint unsigned NOT NULL,
  `server_id` int unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumblob NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COMMENT='General log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slow_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int NOT NULL,
  `rows_examined` int NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int NOT NULL,
  `insert_id` int NOT NULL,
  `server_id` int unsigned NOT NULL,
  `sql_text` mediumblob NOT NULL,
  `thread_id` bigint unsigned NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COMMENT='Slow log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `SAPI`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `SAPI` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `SAPI`;

--
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_photo`
--

DROP TABLE IF EXISTS `album_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album_photo` (
  `photo_id` bigint unsigned NOT NULL,
  `main_img` tinyint(1) NOT NULL DEFAULT '0',
  `album_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `album_photo_photo_id_foreign` (`photo_id`),
  KEY `album_photo_album_id_foreign` (`album_id`),
  CONSTRAINT `album_photo_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE,
  CONSTRAINT `album_photo_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_photo`
--

LOCK TABLES `album_photo` WRITE;
/*!40000 ALTER TABLE `album_photo` DISABLE KEYS */;
INSERT INTO `album_photo` VALUES (1,0,1,NULL,NULL),(2,0,1,NULL,NULL),(3,0,1,NULL,NULL),(4,0,1,NULL,NULL),(5,0,1,NULL,NULL),(6,0,1,NULL,NULL),(7,0,1,NULL,NULL),(8,0,1,NULL,NULL),(9,0,2,NULL,NULL),(10,0,2,NULL,NULL),(11,0,2,NULL,NULL),(12,0,2,NULL,NULL),(13,0,2,NULL,NULL),(14,0,3,NULL,NULL),(15,0,3,NULL,NULL),(16,0,3,NULL,NULL),(17,0,3,NULL,NULL),(18,0,3,NULL,NULL),(19,0,3,NULL,NULL),(20,0,3,NULL,NULL),(21,0,3,NULL,NULL),(22,0,4,NULL,NULL),(23,0,4,NULL,NULL),(24,0,4,NULL,NULL),(25,0,4,NULL,NULL),(26,0,4,NULL,NULL),(27,0,4,NULL,NULL),(28,0,4,NULL,NULL),(29,0,4,NULL,NULL),(30,0,4,NULL,NULL),(31,0,4,NULL,NULL),(32,0,5,NULL,NULL),(33,0,5,NULL,NULL),(34,0,5,NULL,NULL),(35,0,5,NULL,NULL),(36,0,5,NULL,NULL),(37,0,5,NULL,NULL),(38,0,5,NULL,NULL),(39,0,5,NULL,NULL),(40,0,5,NULL,NULL),(41,0,6,NULL,NULL),(42,0,6,NULL,NULL),(45,0,6,NULL,NULL),(46,0,6,NULL,NULL),(47,0,6,NULL,NULL),(48,0,6,NULL,NULL),(49,0,6,NULL,NULL),(50,0,6,NULL,NULL),(51,0,6,NULL,NULL),(52,0,6,NULL,NULL),(52,1,6,NULL,NULL),(40,1,5,NULL,NULL),(31,1,4,NULL,NULL),(21,1,3,NULL,NULL),(13,1,2,NULL,NULL),(8,1,1,NULL,NULL),(53,1,7,NULL,NULL),(53,1,7,NULL,NULL),(54,1,8,NULL,NULL),(55,1,9,NULL,NULL),(56,0,9,NULL,NULL),(57,0,9,NULL,NULL),(58,1,10,NULL,NULL),(58,1,10,NULL,NULL),(58,1,10,NULL,NULL),(59,0,10,NULL,NULL),(60,1,11,NULL,NULL),(61,0,11,NULL,NULL),(62,0,11,NULL,NULL),(63,0,11,NULL,NULL),(64,0,11,NULL,NULL),(66,0,13,NULL,NULL),(67,0,13,NULL,NULL),(68,0,13,NULL,NULL),(69,0,13,NULL,NULL),(70,0,13,NULL,NULL),(71,0,13,NULL,NULL),(72,0,13,NULL,NULL),(73,0,13,NULL,NULL),(65,0,13,NULL,NULL),(74,0,12,NULL,NULL),(75,0,12,NULL,NULL),(76,0,12,NULL,NULL),(77,0,12,NULL,NULL),(78,0,12,NULL,NULL),(79,0,12,NULL,NULL),(80,1,14,NULL,NULL),(81,0,14,NULL,NULL);
/*!40000 ALTER TABLE `album_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `nameEng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `relationship` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'Президентские состязания',NULL,'prezidentskie_sostyazaniz',1,NULL,'2023-10-16 20:36:09','2023-10-16 20:36:09'),(2,'Интеллектуальный квиз «Где логика?»','Проводили сотрудники МКУ Зареченский ДК по Пушкинской карте','gde_logika',1,NULL,'2023-10-16 20:37:33','2023-10-16 20:37:33'),(3,'Разговоры о важном тема: «О взаимоотношениях в коллективе»','У младшего школьника добрые отношения и соперничество переплетены друг с другом: с одной стороны, ребёнок хочет «быть как все», с другой — «быть лучше всех».','razgovori_o_vazhnom_vzaimootnosheniya',1,NULL,'2023-10-16 20:39:32','2023-10-16 20:40:02'),(4,'Разговоры о важном \"По ту сторону экрана. 115 лет кино в России\"','Кино, наряду с литературой и театром, позволяет человеку увидеть себя, как в «зеркале», соотнести свои поступки с поступками героев, учит анализировать и рефлексировать/','razgovori_o_vazhnom_kino',1,NULL,'2023-10-16 20:42:08','2023-10-16 20:42:08'),(5,'День самоуправления','5 октября 2023 года в школе традиционно прошел день самоуправления, где ребята смогли попробовать себя в роли учителя.','den_samoupravleniya',1,NULL,'2023-10-16 20:43:24','2023-10-16 20:43:24'),(6,'День учителя','День учителя - замечательный праздник, когда можно выразить свою благодарность педагогам за их непростой и благородный труд, за внимание и терпение, за желание видеть своих учеников успешными и счастливыми.','den_uchitelya',1,NULL,'2023-10-16 20:44:20','2023-10-16 20:44:20'),(7,'NEWS флешмоб «Поздравь учителя!»',NULL,'pozdrov_uchitelya',0,0,'2023-10-16 23:10:42','2023-10-17 20:55:02'),(8,'NEWS Онлайн конкурс \"Родные места\"',NULL,'rodnie_mesta',0,0,'2023-10-16 23:30:03','2023-10-17 20:54:34'),(9,'NEWS III Форум классных руководителей',NULL,'3_forum_klassnih_rukovoditelei',0,0,'2023-10-16 23:33:07','2023-10-17 20:54:12'),(10,'Заглушка',NULL,'no_photo',0,0,'2023-10-17 00:02:52','2023-10-17 20:53:38'),(11,'Фото учителей',NULL,'photo_uchitilei',0,0,'2023-10-17 22:19:29','2023-10-17 22:20:07'),(12,'КЛАССЫ физика',NULL,'phizic',0,0,'2023-10-18 15:38:34','2023-10-18 15:38:34'),(13,'КЛАССЫ химия',NULL,'himiya',0,0,'2023-10-18 15:38:56','2023-10-18 15:38:56'),(14,'Поддержи Марину',NULL,'podderzhi_marinu',0,0,'2023-10-18 16:17:43','2023-10-18 16:17:43');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appeals`
--

DROP TABLE IF EXISTS `appeals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appeals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `question` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `response` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `category_id` bigint unsigned NOT NULL,
  `top_questions` tinyint(1) NOT NULL DEFAULT '0',
  `date_completion` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `appeals_category_id_foreign` (`category_id`),
  CONSTRAINT `appeals_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `appeals_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appeals`
--

LOCK TABLES `appeals` WRITE;
/*!40000 ALTER TABLE `appeals` DISABLE KEYS */;
INSERT INTO `appeals` VALUES (1,'Евгений','qkulakov@example.com','Где я могу найти реппетитора по математике в вашем селе?',1,'Позвоните по телефону 89252541211 Людмила Борисовна',2,0,'2023-10-18 02:20:32','2022-02-16 09:48:29','2022-09-11 12:57:34'),(2,'Арсений','egor15@example.net','Когда в этом году будет сдача ЕГЭ',1,'РАсписания ЕГЭ еще не известно',2,0,'2023-10-17 01:43:52','2019-11-21 16:59:30','2020-08-24 02:50:19'),(3,'Мария','kudryvteva.zinaida@example.com','В какое время у Вас обед в столовой?',1,'Обед в 12.30',1,1,'2023-10-17 01:43:52','2023-02-03 03:53:53','2023-07-16 14:48:38'),(4,'Иван','viktoriy03@example.org','Сколько учителей в вашей школе преподают биологию?',1,'sdjfkgjdfddfdgfhgjkkl',2,0,'2023-10-18 20:13:15','2019-05-16 16:16:16','2023-10-18 17:13:15'),(5,'Станислав','rodion.nikiforova@example.net','Сколько в среднем стоит обед?',1,'Обед стоит 150 рублей',1,0,'2023-10-17 01:43:52','2023-06-15 04:52:57','2023-07-21 00:33:44'),(6,'Елена','vladlena73@example.net','Можно ли перевестись к Вам в школу в средине четверти??',0,'',2,0,NULL,'2019-01-23 14:55:22','2022-11-03 00:42:32'),(7,'Артем','tmamontova@example.org','Когда школа собирается ехатть на экскурсию в Муром??',0,'',2,0,NULL,'2020-05-29 14:33:38','2021-10-31 00:26:29'),(8,'Эльдар','sdyckova@example.org','Когда ожидается ремонт в столовой',1,'Столовая была отремонтированна в прошлом году, ближайший ремонт через 5 лет',1,0,'2023-10-18 02:20:11','2020-07-27 04:33:30','2021-01-09 20:22:54'),(9,'Фатима','gulyev.afanasii@example.net','Будут ли у Вас проходить праздничные мероприятия на Новый год?',0,'',1,0,NULL,'2019-12-16 05:50:46','2022-01-20 23:51:09'),(10,'Жанна','bronislav.bykov@example.net','Какая форма одежды у Вас в школе',0,NULL,1,0,NULL,'2023-03-19 11:24:31','2023-10-18 16:34:32'),(11,'Тимур','abcfank@yandex.ru','Как можно обратится к директору школы',0,NULL,2,0,NULL,'2023-10-17 21:45:55','2023-10-17 21:45:55'),(12,'Елена','asdss@mail.ru','Интересует расширение меню столовой, предстоит ли оно в будующем',0,'Да все обновится 12.11.2023',1,1,NULL,'2023-10-17 21:47:01','2023-10-17 21:47:01');
/*!40000 ALTER TABLE `appeals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appeals_categories`
--

DROP TABLE IF EXISTS `appeals_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appeals_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appeals_categories`
--

LOCK TABLES `appeals_categories` WRITE;
/*!40000 ALTER TABLE `appeals_categories` DISABLE KEYS */;
INSERT INTO `appeals_categories` VALUES (1,'Вопросы о питании','Nobis dolorem doloribus corporis aliquid fugiat fugit repellendus pariatur. Animi voluptatum ullam provident quae aut. Debitis sit possimus esse voluptatem voluptatem et voluptas. Vel autem dolor dignissimos esse in nam molestiae.','2019-09-12 10:46:13','2022-11-01 16:48:17'),(2,'Вопросы директору','In dolore est ut et et id dolores dolor. Accusamus est optio corrupti dolorem ut. Odio quae suscipit ab eveniet accusamus quae natus exercitationem. Unde recusandae aut quis ea.','2020-01-16 18:20:11','2023-06-12 13:28:11');
/*!40000 ALTER TABLE `appeals_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `chapter_id` bigint unsigned DEFAULT NULL,
  `bannerTitle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ref` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `banners_chapter_id_foreign` (`chapter_id`) USING BTREE,
  CONSTRAINT `banners_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,11,'Запишите детей в первый класс','http://localhost:7777/storage/data/documents/67ed7b290a016d33a9d3af8862c8eecd.png','','2023-10-16 19:43:36','2023-10-16 19:43:36'),(2,12,'Точка роста','http://localhost:7777/storage/data/documents/7442b8d4e053d7bdfc37e2a06d336538.jpg','','2023-10-16 19:43:36','2023-10-16 19:43:36'),(3,NULL,'Департамент образования Владимирской области','http://localhost:7777/storage/data/documents/802e2bb80f2bf74874520581e10e5871.jpg','https://департамент.образование33.рф/','2023-10-16 19:43:37','2023-10-16 19:43:37'),(4,NULL,'Персональные данные ДЕТИ','http://localhost:7777/storage/data/documents/d2a92fe868e864306f70ee519215f44f.png','http://персональныеданные.дети/','2023-10-16 19:43:37','2023-10-16 19:43:37');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabinets`
--

DROP TABLE IF EXISTS `cabinets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabinets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `images` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabinets`
--

LOCK TABLES `cabinets` WRITE;
/*!40000 ALTER TABLE `cabinets` DISABLE KEYS */;
INSERT INTO `cabinets` VALUES (1,'Кабинет информатики','101','Omnis vero ut quo recusandae eum est. Voluptas quibusdam consequuntur enim. Possimus qui neque sint fuga dolorum distinctio.','\"[\\\"http:\\\\/\\\\/\\\\u0444\\\\u0438\\\\u043b\\\\u0438\\\\u043f\\\\u043f\\\\u043e\\\\u0432\\\\u0441\\\\u043a\\\\u0430\\\\u044f-\\\\u0448\\\\u043a\\\\u043e\\\\u043b\\\\u0430.\\\\u0440\\\\u0444\\\\/wp-content\\\\/uploads\\\\/2020\\\\/09\\\\/teh2.jpg\\\",\\\"http:\\\\/\\\\/\\\\u0444\\\\u0438\\\\u043b\\\\u0438\\\\u043f\\\\u043f\\\\u043e\\\\u0432\\\\u0441\\\\u043a\\\\u0430\\\\u044f-\\\\u0448\\\\u043a\\\\u043e\\\\u043b\\\\u0430.\\\\u0440\\\\u0444\\\\/wp-content\\\\/uploads\\\\/2020\\\\/09\\\\/teh1.jpg\\\",\\\"http:\\\\/\\\\/\\\\u0444\\\\u0438\\\\u043b\\\\u0438\\\\u043f\\\\u043f\\\\u043e\\\\u0432\\\\u0441\\\\u043a\\\\u0430\\\\u044f-\\\\u0448\\\\u043a\\\\u043e\\\\u043b\\\\u0430.\\\\u0440\\\\u0444\\\\/wp-content\\\\/uploads\\\\/2020\\\\/09\\\\/teh1.jpg\\\",\\\"http:\\\\/\\\\/\\\\u0444\\\\u0438\\\\u043b\\\\u0438\\\\u043f\\\\u043f\\\\u043e\\\\u0432\\\\u0441\\\\u043a\\\\u0430\\\\u044f-\\\\u0448\\\\u043a\\\\u043e\\\\u043b\\\\u0430.\\\\u0440\\\\u0444\\\\/wp-content\\\\/uploads\\\\/2020\\\\/09\\\\/teh1.jpg\\\"]\"','2023-10-16 22:43:36','2023-10-16 22:43:36'),(2,'Кабинет химии','202a','Кабинет химия из проекта \"Точка роста\"','\"[\\r\\n  \\\"http://localhost:7777/storage/data/photo/album/bffe64ef027022ca5a18fa2e49f703d2.jpg\\\",\\r\\n  \\\"http://localhost:7777/storage/data/photo/album/7f6a4aab1161f47106231b9a6b04443e.jpg\\\",\\r\\n  \\\"http://localhost:7777/storage/data/photo/album/40dfbd5441fcfb2793d146136daed533.jpg\\\",\\r\\n  \\\"http://localhost:7777/storage/data/photo/album/7c6ecefa61b6c3097206f6396cf6e75f.jpg\\\",\\r\\n  \\\"http://localhost:7777/storage/data/photo/album/9daacbbbb4cd638183491b794663d93e.jpg\\\",\\r\\n  \\\"http://localhost:7777/storage/data/photo/album/a1b5ca2d1dceee0170504b8ad1014353.jpg\\\"\\r\\n]\"','2023-10-16 22:43:36','2023-10-18 15:49:23'),(3,'Кабинет физики','303','Кабинет физики из проекта \"Точка роста\"','\"[\\r\\n  \\\"http://localhost:7777/storage/data/photo/album/5a2ed79e83380790f951283c215f4510.jpg\\\",\\r\\n  \\\"http://localhost:7777/storage/data/photo/album/d203819e57afb9fa44adf45e1b31f44e.jpg\\\",\\r\\n  \\\"http://localhost:7777/storage/data/photo/album/31665a1d2906c1d4f3f6505c97d3a3bc.jpg\\\",\\r\\n  \\\"http://localhost:7777/storage/data/photo/album/0a93e987fa41ca75edac52697d30f61e.jpg\\\"\\r\\n]\"','2023-10-16 22:43:36','2023-10-18 15:49:49');
/*!40000 ALTER TABLE `cabinets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_schedules`
--

DROP TABLE IF EXISTS `call_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `call_schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `call_number` int NOT NULL,
  `start_time` time NOT NULL,
  `lesson_time` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_schedules`
--

LOCK TABLES `call_schedules` WRITE;
/*!40000 ALTER TABLE `call_schedules` DISABLE KEYS */;
INSERT INTO `call_schedules` VALUES (1,1,'08:30:00',45,'2023-10-16 22:43:37','2023-10-16 22:43:37'),(2,2,'09:30:00',45,'2023-10-16 22:43:37','2023-10-16 22:43:37'),(3,3,'10:30:00',45,'2023-10-16 22:43:37','2023-10-16 22:43:37'),(4,4,'11:30:00',45,'2023-10-16 22:43:37','2023-10-16 22:43:37'),(5,5,'13:00:00',45,'2023-10-16 22:43:37','2023-10-16 22:43:37'),(6,6,'14:00:00',45,'2023-10-16 22:43:37','2023-10-16 22:43:37'),(7,7,'15:00:00',45,'2023-10-16 22:43:37','2023-10-16 22:43:37'),(8,8,'16:00:00',45,'2023-10-16 22:43:37','2023-10-16 22:43:37');
/*!40000 ALTER TABLE `call_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapters`
--

DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `chapterTitle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` enum('active','draft') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `chapters_slug_unique` (`slug`) USING BTREE,
  UNIQUE KEY `chapters_chaptertitle_unique` (`chapterTitle`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapters`
--

LOCK TABLES `chapters` WRITE;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
INSERT INTO `chapters` VALUES (1,'common','Основные сведения','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(2,'struct','Структура и органы управления образовательной организацией','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(3,'document','Документы','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(4,'education','Образование','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(5,'eduStandarts','Образовательные стандарты и требования','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(6,'objects','Материально-техническое обеспечение и оснащенность образовательного процесса','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(7,'budget','Финансово-хозяйственная деятельность','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(8,'vacant','Вакантные места для приема (перевода) обучающихся','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(9,'dsreda','Доступная среда','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(10,'ezhednevnoe-menyu','Организация питания в образовательной организации','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(11,'first_class','Электронная запись в первый класс','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(12,'point','Точка роста','active','2023-10-14 11:10:19','2023-10-14 11:10:19');
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classrooms`
--

DROP TABLE IF EXISTS `classrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classrooms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `teacher_id` bigint unsigned NOT NULL,
  `cabinet_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classrooms_teacher_id_foreign` (`teacher_id`),
  KEY `classrooms_cabinet_id_foreign` (`cabinet_id`),
  CONSTRAINT `classrooms_cabinet_id_foreign` FOREIGN KEY (`cabinet_id`) REFERENCES `cabinets` (`id`),
  CONSTRAINT `classrooms_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classrooms`
--

LOCK TABLES `classrooms` WRITE;
/*!40000 ALTER TABLE `classrooms` DISABLE KEYS */;
INSERT INTO `classrooms` VALUES (1,'1a',1,1,'2023-10-16 22:43:37','2023-10-16 22:43:37'),(2,'2a',1,2,'2023-10-16 22:43:37','2023-10-16 22:43:37');
/*!40000 ALTER TABLE `classrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `days`
--

DROP TABLE IF EXISTS `days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `days` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `days`
--

LOCK TABLES `days` WRITE;
/*!40000 ALTER TABLE `days` DISABLE KEYS */;
INSERT INTO `days` VALUES (1,'Понедельник','2023-10-16 22:43:37','2023-10-16 22:43:37'),(2,'Вторник','2023-10-16 22:43:37','2023-10-16 22:43:37'),(3,'Среда','2023-10-16 22:43:37','2023-10-16 22:43:37'),(4,'Четверг','2023-10-16 22:43:37','2023-10-16 22:43:37'),(5,'Пятница','2023-10-16 22:43:37','2023-10-16 22:43:37'),(6,'Суббота','2023-10-16 22:43:37','2023-10-16 22:43:37');
/*!40000 ALTER TABLE `days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docimage_section`
--

DROP TABLE IF EXISTS `docimage_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docimage_section` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `docimage_id` bigint unsigned DEFAULT NULL,
  `section_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `docimage_section_docimage_id_foreign` (`docimage_id`) USING BTREE,
  KEY `docimage_section_section_id_foreign` (`section_id`) USING BTREE,
  CONSTRAINT `docimage_section_docimage_id_foreign` FOREIGN KEY (`docimage_id`) REFERENCES `docimages` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `docimage_section_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docimage_section`
--

LOCK TABLES `docimage_section` WRITE;
/*!40000 ALTER TABLE `docimage_section` DISABLE KEYS */;
INSERT INTO `docimage_section` VALUES (1,1,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(2,2,4,'2023-10-14 11:10:20','2023-10-14 11:10:20');
/*!40000 ALTER TABLE `docimage_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docimages`
--

DROP TABLE IF EXISTS `docimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docimages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `documentName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `documentSource` varchar(510) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `documentType` enum('JPG','PDF','IMG','DOC','DOCX','XLS','XLSX','PPT') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `docimages_documentname_unique` (`documentName`) USING BTREE,
  UNIQUE KEY `docimages_documentsource_unique` (`documentSource`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docimages`
--

LOCK TABLES `docimages` WRITE;
/*!40000 ALTER TABLE `docimages` DISABLE KEYS */;
INSERT INTO `docimages` VALUES (1,'Приложение №1','http://localhost:7777/storage/data/documents/aa795f24e32677f7e1623e31f9d5b9d7.jpg','JPG','2023-10-14 11:10:20','2023-10-15 17:43:56'),(2,'Свидетельство','http://localhost:7777/storage/data/documents/d80530a9670ddcba5062806adcb306d5.jpg','JPG','2023-10-14 11:10:20','2023-10-15 11:21:01');
/*!40000 ALTER TABLE `docimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docsource_section`
--

DROP TABLE IF EXISTS `docsource_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docsource_section` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `docsource_id` bigint unsigned DEFAULT NULL,
  `section_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `docsource_section_docsource_id_foreign` (`docsource_id`) USING BTREE,
  KEY `docsource_section_section_id_foreign` (`section_id`) USING BTREE,
  CONSTRAINT `docsource_section_docsource_id_foreign` FOREIGN KEY (`docsource_id`) REFERENCES `docsources` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `docsource_section_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docsource_section`
--

LOCK TABLES `docsource_section` WRITE;
/*!40000 ALTER TABLE `docsource_section` DISABLE KEYS */;
INSERT INTO `docsource_section` VALUES (1,1,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(2,2,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(3,3,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(4,4,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(5,5,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(6,6,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(7,7,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(8,42,5,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(9,43,5,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(10,44,6,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(11,45,6,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(12,46,6,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(13,47,6,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(14,48,6,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(15,49,7,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(16,50,7,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(17,51,7,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(18,52,7,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(19,53,7,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(20,54,8,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(21,8,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(22,9,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(23,10,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(24,11,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(25,12,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(26,13,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(27,14,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(28,15,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(29,16,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(30,17,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(31,18,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(32,19,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(33,20,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(34,21,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(35,22,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(36,23,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(37,24,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(38,25,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(39,26,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(40,27,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(41,28,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(42,29,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(43,30,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(44,31,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(45,32,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(46,33,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(47,34,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(48,35,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(49,36,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(50,37,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(51,38,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(52,39,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(53,40,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(54,41,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(55,55,9,NULL,NULL),(56,56,9,NULL,NULL),(57,57,9,NULL,NULL),(58,58,9,NULL,NULL),(59,59,9,NULL,NULL),(60,60,9,NULL,NULL),(61,61,9,NULL,NULL),(62,62,16,NULL,NULL),(63,63,16,NULL,NULL),(64,64,16,NULL,NULL),(65,65,24,NULL,NULL),(66,66,24,NULL,NULL),(67,67,24,NULL,NULL),(68,68,24,NULL,NULL),(69,69,24,NULL,NULL),(70,70,24,NULL,NULL),(71,71,24,NULL,NULL),(72,72,24,NULL,NULL),(73,73,24,NULL,NULL),(74,74,24,NULL,NULL),(75,75,26,NULL,NULL),(76,76,29,NULL,NULL),(77,77,29,NULL,NULL),(78,78,29,NULL,NULL);
/*!40000 ALTER TABLE `docsource_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docsources`
--

DROP TABLE IF EXISTS `docsources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docsources` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `documentName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `documentSource` varchar(510) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `documentType` enum('JPG','PDF','IMG','DOC','DOCX','XLS','XLSX','PPT') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `docsources_documentname_unique` (`documentName`) USING BTREE,
  UNIQUE KEY `docsources_documentsource_unique` (`documentSource`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docsources`
--

LOCK TABLES `docsources` WRITE;
/*!40000 ALTER TABLE `docsources` DISABLE KEYS */;
INSERT INTO `docsources` VALUES (1,'Структура и органы управления образовательной организацией','http://localhost:7777/storage/data/documents/e835fb2036ff4e395f2544d2bcc0465c.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:26:52'),(2,'Положение о Совете школы','http://localhost:7777/storage/data/documents/386c525692f50527220ed46a3b8f08c1.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:26:40'),(3,'Положение о Совете родителей','http://localhost:7777/storage/data/documents/72d9471def91a3d59b79af76918223ba.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:26:26'),(4,'Положение о педагогическом совете','http://localhost:7777/storage/data/documents/c79d19116190d91b7b3989597338cb12.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:26:11'),(5,'Положение о методическом объединении','http://localhost:7777/storage/data/documents/b13a6366f718fdd3aef7ca8aa786d987.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:25:57'),(6,'Положение о классном родительском собрании и родительском комитете класса','http://localhost:7777/storage/data/documents/c181804d509b4ffb6829a4b58eb53a8e.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:25:28'),(7,'Положение о совете профилактики и правонарушений','http://localhost:7777/storage/data/documents/b63d88e8d853f4cf1c84874aabdc49bd.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:25:05'),(8,'Устав','http://localhost:7777/storage/data/documents/ff569eecc4a505d1db4c36ffd9a086a7.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:17:14'),(9,'Постановление о мерах по противодействию распространение коронавирусной инфекции','http://localhost:7777/storage/data/documents/624ded4dee2918cfe3ff78e884213775.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:16:55'),(10,'Единый график оценочных процедур в МКОУ Филипповской СОШ на 2022-2023 учебный год','http://localhost:7777/storage/data/documents/c9cf871149e7edcf75efefff98a6bb76.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:16:28'),(11,'Единый график оценочных процедур в МКОУ Филипповской СОШ на 2022-2023 учебный год в 10-11 классах','http://localhost:7777/storage/data/documents/9c74aa17a1a2f06523137c2640b92884.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:16:00'),(12,'Положение о внутришкольном контроле','http://localhost:7777/storage/data/documents/578cbb74e582d7b69854bc43063413b7.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:15:34'),(13,'Положение  о  Педагогическом  совете','http://localhost:7777/storage/data/documents/f518105c95c6462fce5ab0c5ee03e6af.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:15:08'),(14,'Положение о системе внутреннего мониторинга оценки качества образования','http://localhost:7777/storage/data/documents/3f185ee831a99481670731be76891954.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:14:40'),(15,'Положение о поощрении обучающихся за успехи в учебной, физкультурной, спортивной, общественной,научной, научно-технической, творческой, экспериментальной и инновационной деятельности','http://localhost:7777/storage/data/documents/56fe524169156855427e38451d41ef7c.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:13:53'),(16,'Положение о правилах поведения обучающихся в школе','http://localhost:7777/storage/data/documents/22a04eae04a5ef4c7f1fa2f19999bb29.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:13:18'),(17,'Положение о правилах приема, перевода, выбытия и отчисления обучающихся','http://localhost:7777/storage/data/documents/9201c5be6ea75a34026527a9de1ca39d.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:12:31'),(18,'Положение об основных образовательных программах общего образования, реализуемых в организации, осуществляющей образовательную деятельность','http://localhost:7777/storage/data/documents/427872a6508493ad65a700c34c5c6de1.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:11:37'),(19,'Положение о классах профильного обучения','http://localhost:7777/storage/data/documents/e59771eb1c404457fd40680f85610084.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:11:11'),(20,'Постановление администрации Киржачского района о переименовании МКОУ Филипповской СОШ','http://localhost:7777/storage/data/documents/9bc1ee3c5de62ad577031a8a40763782.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:10:44'),(21,'Положение о формах, периодичности и порядке текущего контроля успеваемости, промежуточной и итоговой аттестации обучающихся','http://localhost:7777/storage/data/documents/06b7d0204cc0c0affe829b2adfaef1fd.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:10:10'),(22,'Положение о проведение промежуточной аттестации учащихся и осуществлении текущего контроля их успеваемости в МКОУ Филипповская СОШ','http://localhost:7777/storage/data/documents/0bd9bd25c4a53a107cd593545582a873.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:09:37'),(23,'Положение о порядке отчисления, исключения обучающихся из МКОУ Филипповская СОШ','http://localhost:7777/storage/data/documents/134e330969689172a2a803fa292bb5e7.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:09:07'),(24,'Приказ о переименовании школы','http://localhost:7777/storage/data/documents/673d6694552abef68dc3c6ddab9c16fa.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:03:34'),(25,'Самообследовании МКОУ Филипповской СОШ за 2022 год','http://localhost:7777/storage/data/documents/04d1699c4512c011d6c42e1f34d2136b.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:02:36'),(26,'Анализ по воспитательной работе МКОУ Филипповской СОШ за 2020 — 2021 учебный год','http://localhost:7777/storage/data/documents/99de3d7e5e83f74baadeea24f725a3b1.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:01:45'),(27,'Приказ об исполнении приказа управления администрации Киржачского района №31','http://localhost:7777/storage/data/documents/76aa434d35b1feefde4c1c2c9855203d.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:01:18'),(28,'Программа развития','http://localhost:7777/storage/data/documents/57d79cce9b5dbc350ad6142ca18bec95.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:54:04'),(29,'Правил внутреннего трудового распорядка','http://localhost:7777/storage/data/documents/28253e356f2626c721c15791dc2ec673.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:48:29'),(30,'Приказ об административном регламенте предоставления муниципальной услуги Зачисление в образовательные организации','http://localhost:7777/storage/data/documents/50a94b32758e5730612239a928aa191e.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:47:39'),(31,'Приказ об исполнении приказа управления администрации Киржачского района от 17.02.2021','http://localhost:7777/storage/data/documents/d57479db1fa5f979bb621a6ae6737f44.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:47:14'),(32,'Приказ о создании наркологического поста в МКОУ Филипповская СОШ','http://localhost:7777/storage/data/documents/4cdaced48a1c97a417d6513415fabb02.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:46:08'),(33,'Информация о закрепленной за школой территории','http://localhost:7777/storage/data/documents/2f18a368e913025fde7ef32e6d144111.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:45:10'),(34,'Правила приема на обучение в МКОУ Филипповской СОШ','http://localhost:7777/storage/data/documents/02eae4474f4e4eaa556a755fce5a0701.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:44:46'),(35,'Коллективный договор на 2021-2023 г.г.','http://localhost:7777/storage/data/documents/941627a0941312c1598cfbee39cad205.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:44:20'),(36,'Приказ о создании наркологического поста в МКОУ Филипповской СОШ от 01.09.2021 г.','http://localhost:7777/storage/data/documents/d1ea2286d57e9819519aa125717d9490.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:39:18'),(37,'Положение о языке обучения','http://localhost:7777/storage/data/documents/05ed08e29759c02aaaf375e9de8d87d9.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:38:55'),(38,'Положение о рабочей программе','http://localhost:7777/storage/data/documents/60b94eb2301e59ea0ff3d481587b3afd.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:38:32'),(39,'План производственной учебы учителей «Учись учить»','http://localhost:7777/storage/data/documents/ccd3a8cd2a6d053498221432a7bf0d27.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:38:04'),(40,'Постановление администрации Киржачского района Владимирской области от 16.03.2023 №264 О закреплении за муниципальными общеобразовательными организациями Киржачского района территорий муниципального образования Киржачский район','http://localhost:7777/storage/data/documents/84432ffab3206d74d8ce04fe590d592c.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:37:20'),(41,'Приказ по школе о закрепленных территориях МКОУ Филипповской СОШ','http://localhost:7777/storage/data/documents/c8f9783d522bc275674ce54b5472f2a3.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:37:00'),(42,'Предписание от 17.05.2017г. № 2-2-2017','http://localhost:7777/storage/data/documents/7fded533ba8bc2fce5d26e82baeb5280.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:36:28'),(43,'Ответ на предписание от 17.05.2017г. № 2-2-2017','http://localhost:7777/storage/data/documents/fb5f08647458a5bf9f412805d203707f.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:35:53'),(44,'О реализуемых уровнях образования (см. приложении к лицензии — перечень общеобразовательных программ)','http://localhost:7777/storage/data/documents/f0b6571814043e3912bf78de17b581c0.jpg','JPG','2023-10-14 11:10:20','2023-10-15 11:35:26'),(45,'О формах обучения (см. пункт 3.5 устава школы)','http://localhost:7777/storage/data/documents/94666f48585b52fe80b4057e05adcd4a.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:34:56'),(46,'О лицензии на осуществление образовательной деятельности (см. лицензия)','http://localhost:7777/storage/data/documents/e04da0c324499a12bd095ac3ca37eca5.png','JPG','2023-10-14 11:10:20','2023-10-15 11:34:23'),(47,'Приложение №1 к лицензии на осуществление образовательной деятельности (см. приложение №1)','http://localhost:7777/storage/data/documents/33328bddbaa98913218201386152bf66.png','JPG','2023-10-14 11:10:20','2023-10-15 11:33:47'),(48,'О сроке действия государственной аккредитации образовательной программы (см. свидетельство о гос.  аккредитации)','http://localhost:7777/storage/data/documents/7ea116a23140a23a5cbac8bce987896c.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:32:54'),(49,'Аналитическая справка о результатах Всероссийских проверочных работ в 5, 6, 7, 8, 9 классах','http://localhost:7777/storage/data/documents/1a2296dbfa5bcf2b3563b2956f6c11a4.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:32:26'),(50,'План  мероприятий («дорожная карта») результатов ВПР, сентябрь-октябрь 2020 года','http://localhost:7777/storage/data/documents/69b3a4dc1124ee1e468c4cf0f792fcc5.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:31:53'),(51,'Отчет о проводимых мероприятиях по итогам ВПР 2020 года','http://localhost:7777/storage/data/documents/db4389e5d124dfe9bd3fd14dab042f89.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:31:27'),(52,'Приказ о проведении  Всероссийской проверочной работы осенью 2022 года','http://localhost:7777/storage/data/documents/16372f023ba8ba3005feb2f8ddac7f4a.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:31:05'),(53,'График выхода общественных наблюдателей на наблюдение за проведением ВПР в 2023 году','http://localhost:7777/storage/data/documents/2248fd05f0b22be2f7a3d0d5c54ac9fb.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:30:34'),(54,'«Дорожная карта» организации и проведения государственной итоговой аттестации по образовательным программам основного общего и среднего общего образования в МКОУ Филипповской СОШ в 2023 году','http://localhost:7777/storage/data/documents/e114e229add2ec45d0170ccf6cbca5e8.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:29:55'),(55,'Дистанционное обучение','http://localhost:7777/storage/data/documents/5e3a64f33347171115905edc4890120b.pdf','PDF','2023-10-15 18:31:35','2023-10-15 18:31:35'),(56,'Заявление на дистанционное обучение','http://localhost:7777/storage/data/documents/591729ce04c61aee47728fda0fe57d5c.pdf','PDF','2023-10-15 18:32:41','2023-10-15 18:44:23'),(57,'Горячая линия для обучающихся и родителей по дистанционному обучению','http://localhost:7777/storage/data/documents/8dbad5b3be1681044b7fb30339e9ce1a.pdf','PDF','2023-10-15 18:39:48','2023-10-15 18:39:48'),(58,'Расписание занятий','http://localhost:7777/storage/data/documents/3f2ad5f2a176258fd261c248338d5332.pdf','PDF','2023-10-15 18:41:14','2023-10-15 18:41:14'),(59,'Приказ Об исполнении Указа Президента РФ от 02.04.2020г. № 239','http://localhost:7777/storage/data/documents/034dadb9a7086c7128edd4631265ac3f.pdf','PDF','2023-10-15 18:41:49','2023-10-15 18:41:49'),(60,'Выписка из Утверждения решения педагогического совета № 5','http://localhost:7777/storage/data/documents/aefed875c7f6c714f1f1ca246ec7dbd3.pdf','PDF','2023-10-15 18:42:40','2023-10-15 18:42:40'),(61,'Положение об организации образовательного процесса','http://localhost:7777/storage/data/documents/49d39044b6c4e1cf7687907178032292.pdf','PDF','2023-10-15 18:43:29','2023-10-15 18:43:29'),(62,'Основная образовательная программа основного общего образования (ПО ФГОС ООО)','http://localhost:7777/storage/data/documents/1a2e80dfab95105c16b0191880551733.pdf','PDF','2023-10-15 18:51:38','2023-10-15 18:51:38'),(63,'Учебный план начального общего образования на 2022-2023 учебный год','http://localhost:7777/storage/data/documents/8e7508c66c0259c5ed6bfd762c173a99.pdf','PDF','2023-10-15 18:52:19','2023-10-15 18:52:19'),(64,'Учебный план для 5-9 классов на 2022-2023 учебный год','http://localhost:7777/storage/data/documents/70576406201baa696de8bc7be175ba95.pdf','PDF','2023-10-15 18:53:14','2023-10-15 18:53:14'),(65,'Сравнение стандартов 2004 и 2010 гг.','http://localhost:7777/storage/data/documents/966af0980bfaaff45bf5924fb0778183.pdf','PDF','2023-10-15 19:34:21','2023-10-15 19:34:21'),(66,'Приказ Минобрнауки России от 17.12.2010 №1897','http://localhost:7777/storage/data/documents/153a5f1b3fdbf8fc854046e7b86bf525.pdf','PDF','2023-10-15 19:34:52','2023-10-15 19:34:52'),(67,'Приказ Департамента Образования Владимирской области №874','http://localhost:7777/storage/data/documents/fb7ec537e604dcc65edbfb1310063c55.pdf','PDF','2023-10-15 19:35:25','2023-10-15 19:35:25'),(68,'Приложение 1 к приказу №874','http://localhost:7777/storage/data/documents/872f6c626b28182e2b3ce8c4578fdda8.pdf','PDF','2023-10-15 19:36:29','2023-10-15 19:36:29'),(69,'Приложение 2 к приказу №874','http://localhost:7777/storage/data/documents/1158a4483927757c07e608966718c3a8.pdf','PDF','2023-10-15 19:36:55','2023-10-15 19:36:55'),(70,'Приложение 3 к приказу №874','http://localhost:7777/storage/data/documents/dd0f4d7088be780f0387ab5f1a3b2cbe.pdf','PDF','2023-10-15 19:37:20','2023-10-15 19:37:20'),(71,'Приложение 4 к приказу №874','http://localhost:7777/storage/data/documents/0b9f509bbf350567fcf119b0993808a2.pdf','PDF','2023-10-15 19:37:45','2023-10-15 19:37:45'),(72,'Федеральный государственный образовательный стандарт начального общего образования 2021 год','http://localhost:7777/storage/data/documents/a4c24f34938a7b005bf75d0cf6fee1f9.pdf','PDF','2023-10-15 19:41:03','2023-10-15 19:41:03'),(73,'Федеральный государственный образовательный стандарт основного общего образования 2021 год','http://localhost:7777/storage/data/documents/45b72ed29c9f84107a147421b74ecd59.pdf','PDF','2023-10-15 19:43:17','2023-10-15 19:43:17'),(74,'Приказ Министерства просвещения РФ от 12 августа 2022 г № 732 «О внесении изменений в Федеральный государственный образовательный стандарт среднего общего образования, утвержденный приказом Министерства образования и науки от 17 мая 2012 № 413»','http://localhost:7777/storage/data/documents/f36c9178a6e9427e51410e288018a89c.pdf','PDF','2023-10-15 19:44:51','2023-10-15 19:44:51'),(75,'Об особенностях введения Федеральных основных общеобразовательных программ в 2023 году','http://localhost:7777/storage/data/documents/340cd0086819bede760f3353a2019313.pdf','PDF','2023-10-15 19:47:20','2023-10-15 19:47:20'),(76,'Бюджетная смена на 2019 финансовый год','http://localhost:7777/storage/data/documents/2a8db121d2fbefbe279a77ec38f1a0a6.pdf','PDF','2023-10-15 19:55:22','2023-10-15 19:55:22'),(77,'Бюджетная смета на 2020 финансовый год','http://localhost:7777/storage/data/documents/8984c69fe0fe4bfea6218e6e92b33253.pdf','PDF','2023-10-15 19:56:29','2023-10-15 19:56:29'),(78,'Бюджетная смета на 2021 финансовый год','http://localhost:7777/storage/data/documents/e9d390eabe1c8f95d43a12b32d534cc7.pdf','PDF','2023-10-15 19:57:13','2023-10-15 19:57:13');
/*!40000 ALTER TABLE `docsources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `news_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `liked` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_news_id_foreign` (`news_id`),
  KEY `likes_user_id_foreign` (`user_id`),
  CONSTRAINT `likes_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`),
  CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_basics`
--

DROP TABLE IF EXISTS `menu_basics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_basics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  `name_menu` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_basics`
--

LOCK TABLES `menu_basics` WRITE;
/*!40000 ALTER TABLE `menu_basics` DISABLE KEYS */;
INSERT INTO `menu_basics` VALUES (31,'Меню ежедневного горячего питания','2023-10-15 21:00:00','Завтрак','66','2023-08-07 13:10:20','2023-10-17 21:57:20'),(32,'Меню ежедневного горячего питания','2023-10-15 21:00:00','Обед','128','2019-12-17 11:16:08','2023-10-17 22:02:23'),(33,'Меню ежедневного горячего питания','2023-10-16 21:00:00','Завтрак','126','2022-12-21 01:28:48','2023-10-17 21:57:57'),(34,'Меню ежедневного горячего питания','2023-10-16 21:00:00','Обед','58','2020-05-05 13:00:47','2023-10-17 22:02:50'),(35,'Меню ежедневного горячего питания','2023-10-17 21:00:00','Завтрак','98','2018-10-17 13:30:01','2023-10-17 21:58:56'),(36,'Меню ежедневного горячего питания','2023-10-17 21:00:00','Обед','151','2019-06-11 08:43:24','2023-10-17 22:05:47'),(37,'Меню ежедневного горячего питания','2023-10-18 21:00:00','Завтрак','175','2021-09-24 07:41:43','2023-10-17 21:59:39'),(38,'Меню ежедневного горячего питания','2023-10-18 21:00:00','Обед','104','2021-04-12 07:44:54','2023-10-17 22:03:48'),(39,'Меню ежедневного горячего питания','2023-10-19 21:00:00','Завтрак','101','2021-01-21 12:40:36','2023-10-17 22:00:15'),(40,'Меню ежедневного горячего питания','2023-10-19 21:00:00','Обед','91','2023-07-29 10:11:29','2023-10-17 22:04:18'),(41,'Меню ежедневного горячего питания','2023-10-20 21:00:00','Завтрак','71','2021-01-17 20:06:56','2023-10-17 22:01:12'),(42,'Меню ежедневного горячего питания','2023-10-20 21:00:00','Обед','192','2022-01-24 00:03:22','2023-10-17 22:04:44'),(43,'Меню ежедневного горячего питания','2023-10-21 21:00:00','Завтрак','165','2020-10-18 08:42:53','2023-10-17 22:01:39'),(44,'Меню ежедневного горячего питания','2023-10-21 21:00:00','Обед','154','2023-03-11 21:58:04','2023-10-17 22:05:19');
/*!40000 ALTER TABLE `menu_basics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_dish` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `dish_output` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_items_name_dish_unique` (`name_dish`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,'Суп гороховый','146 гр.','2020-10-08 19:37:31','2023-03-03 17:02:07'),(2,'Борщ','286 гр.','2020-12-06 03:46:27','2020-12-18 09:13:23'),(3,'Щи','143 гр.','2021-12-25 03:51:02','2023-04-07 17:01:23'),(4,'Рассольник','31 гр.','2020-01-28 14:11:11','2021-05-30 15:02:17'),(5,'Каша гречневая','52 гр.','2019-05-14 15:51:56','2022-05-15 01:29:06'),(6,'Каша рисовая','244 гр.','2019-02-09 16:16:12','2022-01-27 14:45:32'),(7,'Макароны отварные','188 гр.','2019-10-04 14:56:22','2021-02-01 12:07:21'),(8,'Картофельное пюре','226 гр.','2019-11-10 13:31:46','2021-06-09 14:47:26'),(9,'Картофель жаренный','160 гр.','2022-07-06 06:56:48','2023-03-05 08:41:46'),(10,'Сосиска','175 гр.','2019-02-21 22:13:35','2020-11-14 04:43:06'),(11,'Катлета','53 гр.','2019-10-29 14:31:29','2023-01-11 18:39:38'),(12,'Мясо отварное','160 гр.','2023-01-27 19:44:05','2023-02-16 08:45:49'),(13,'Голубец','31 гр.','2019-11-27 13:19:16','2020-05-31 02:52:55'),(14,'Салат из свежих овощей','154 гр.','2020-02-23 19:49:43','2020-10-20 20:32:05'),(15,'Салат Оливье','161 гр.','2022-09-17 15:53:29','2023-01-07 04:12:13'),(16,'Салат свекольный','105 гр.','2020-04-29 02:37:22','2022-01-04 13:40:11'),(17,'Морковка по корейски','274 гр.','2022-01-06 06:23:36','2022-02-22 14:24:15'),(18,'Яичница','181 гр.','2023-01-29 16:32:18','2023-07-08 21:29:55'),(19,'Запеканка','103 гр.','2022-04-11 04:49:39','2023-09-01 17:55:30'),(20,'Каша овсянная на молоке','69 гр.','2022-05-27 15:53:57','2022-12-22 23:31:47'),(21,'Чай','196 гр.','2022-07-08 21:09:18','2023-03-14 03:32:40'),(22,'Кофе','142 гр.','2021-03-01 12:29:08','2021-05-07 08:23:42'),(23,'Компот','86 гр.','2021-04-07 20:04:32','2022-05-23 07:11:06'),(24,'Сок фруктовый','263 гр.','2022-11-12 15:08:31','2023-01-16 12:36:48'),(25,'Яблоко','151 гр.','2019-04-15 08:56:02','2022-05-08 06:27:32'),(26,'Апельсин','225 гр.','2019-12-01 12:18:14','2019-12-23 08:57:28'),(27,'Банан','260 гр.','2021-10-16 08:02:25','2023-03-22 01:52:11'),(28,'Йогурт','86 гр.','2020-09-20 14:04:40','2021-02-12 15:37:45'),(29,'Кефир','201 гр.','2023-01-19 00:50:11','2023-01-21 07:46:51'),(30,'Шоколадка','252 гр.','2023-01-29 17:11:03','2023-07-23 22:14:19');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_basic_id` bigint unsigned NOT NULL,
  `menu_item_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menus_menu_basic_id_foreign` (`menu_basic_id`),
  KEY `menus_menu_item_id_foreign` (`menu_item_id`),
  CONSTRAINT `menus_menu_basic_id_foreign` FOREIGN KEY (`menu_basic_id`) REFERENCES `menu_basics` (`id`),
  CONSTRAINT `menus_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (241,31,20,NULL,NULL),(242,31,28,NULL,NULL),(243,31,29,NULL,NULL),(244,33,18,NULL,NULL),(245,33,22,NULL,NULL),(246,33,27,NULL,NULL),(247,35,5,NULL,NULL),(248,35,12,NULL,NULL),(249,35,21,NULL,NULL),(250,35,25,NULL,NULL),(251,37,5,NULL,NULL),(252,37,10,NULL,NULL),(253,37,24,NULL,NULL),(254,37,27,NULL,NULL),(255,39,6,NULL,NULL),(256,39,12,NULL,NULL),(257,39,21,NULL,NULL),(258,39,25,NULL,NULL),(259,41,10,NULL,NULL),(260,41,18,NULL,NULL),(261,41,22,NULL,NULL),(262,41,28,NULL,NULL),(263,43,20,NULL,NULL),(264,43,24,NULL,NULL),(265,43,28,NULL,NULL),(266,32,2,NULL,NULL),(267,32,5,NULL,NULL),(268,32,11,NULL,NULL),(269,32,23,NULL,NULL),(270,32,25,NULL,NULL),(271,34,1,NULL,NULL),(272,34,6,NULL,NULL),(273,34,13,NULL,NULL),(274,34,21,NULL,NULL),(275,34,25,NULL,NULL),(276,36,3,NULL,NULL),(277,36,6,NULL,NULL),(278,36,12,NULL,NULL),(279,36,24,NULL,NULL),(280,36,27,NULL,NULL),(281,38,4,NULL,NULL),(282,38,7,NULL,NULL),(283,38,10,NULL,NULL),(284,38,23,NULL,NULL),(285,38,25,NULL,NULL),(286,40,3,NULL,NULL),(287,40,6,NULL,NULL),(288,40,11,NULL,NULL),(289,40,24,NULL,NULL),(290,40,25,NULL,NULL),(291,42,1,NULL,NULL),(292,42,7,NULL,NULL),(293,42,10,NULL,NULL),(294,42,21,NULL,NULL),(295,42,27,NULL,NULL),(296,44,2,NULL,NULL),(297,44,5,NULL,NULL),(298,44,12,NULL,NULL),(299,44,14,NULL,NULL),(300,44,23,NULL,NULL),(301,44,25,NULL,NULL),(302,36,16,NULL,NULL);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2020_03_31_114745_remove_backpackuser_model',1),(6,'2020_MM_DD_133858_create_permission_tables',1),(7,'2021_11_11_100000_users_add_is_blocked',1),(8,'2023_05_18_142040_users_add_profile_data',1),(9,'2023_09_07_104804_create_students_table',1),(10,'2023_09_07_110607_create_parents_table',1),(11,'2023_09_07_110844_create_parent_student_table',1),(12,'2023_09_09_181908_create_news_categories_table',1),(13,'2023_09_09_202707_create_subjects_table',1),(14,'2023_09_09_203905_create_call_schedules_table',1),(15,'2023_09_10_105606_create_photos_table',1),(16,'2023_09_10_105829_create_albums_table',1),(17,'2023_09_10_110028_create_album_photo_table',1),(18,'2023_09_10_123417_create_appeals_categories_table',1),(19,'2023_09_10_124322_create_achievements_table',1),(20,'2023_09_11_143950_create_appeals_table',1),(21,'2023_09_11_144254_create_teachers_table',1),(22,'2023_09_11_144545_create_news_table',1),(23,'2023_09_11_144600_create_likes_table',1),(24,'2023_09_11_145023_create_classrooms_table',1),(25,'2023_09_11_145129_create_days_table',1),(26,'2023_09_11_145236_create_schedules_table',1),(27,'2023_09_19_081214_delete_classroom_id_column_from_days_table',1),(28,'2023_09_19_145504_add_column_text_from_news_table',1),(29,'2023_09_19_145519_rename_column_resource_to_source_from_table_news',1),(30,'2023_09_21_090614_change_type_on_json_of_source_column_in_news_table',1),(31,'2023_09_25_172443_create_cabinets_table',1),(32,'2023_09_28_083748_permissions_1',1),(33,'2023_09_28_085029_permissions_2',1),(34,'2023_09_28_221702_create_menu_items_table',1),(35,'2023_09_28_221755_create_menu_basics_table',1),(36,'2023_09_28_222221_create_menus_table',1),(37,'2023_09_30_103540_update_teachers_table',1),(38,'2023_09_30_164756_update_appeals',1),(39,'2023_10_02_190052_create_chapters_table',1),(40,'2023_10_02_190126_create_sections_table',1),(41,'2023_10_02_190153_create_docimages_table',1),(42,'2023_10_02_190219_create_docsources_table',1),(43,'2023_10_02_190250_create_docimage_section_table',1),(44,'2023_10_02_190321_create_docsource_section_table',1),(45,'2023_10_07_225547_update_students_table',1),(46,'2023_10_07_225606_update_parents_table',1),(47,'2023_10_09_233819_add_classroom_id_column_to_students_table',1),(48,'2023_10_09_234605_add_number_column_to_cabinets_table',1),(49,'2023_10_09_235517_add_cabinet_id_column_to_classrooms_table',1),(50,'2023_10_15_230330_create_banners_table',1),(51,'2023_10_15_230330_create_banners_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (2,'App/Model/User',1),(4,'App/Model/User',1),(1,'App\\Models\\User',1),(2,'App/Model/User',2),(2,'App/Model/User',3),(2,'App/Model/User',4),(2,'App/Model/User',5),(2,'App/Model/User',6),(2,'App/Model/User',7),(2,'App/Model/User',8),(3,'App/Model/User',9),(3,'App/Model/User',10),(3,'App/Model/User',11),(4,'App/Model/User',12),(4,'App/Model/User',13),(4,'App/Model/User',14),(4,'App/Model/User',15),(4,'App/Model/User',16),(4,'App/Model/User',17),(3,'App/Model/User',18),(3,'App/Model/User',19),(4,'App/Model/User',20),(1,'App/Model/User',21);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `text` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `author` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Admin',
  `news_category_id` bigint unsigned NOT NULL,
  `album_id` bigint unsigned DEFAULT NULL,
  `source` json DEFAULT NULL,
  `status` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `pub_approve` datetime DEFAULT NULL,
  `video` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_news_category_id_foreign` (`news_category_id`),
  KEY `news_album_id_foreign` (`album_id`),
  CONSTRAINT `news_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`),
  CONSTRAINT `news_news_category_id_foreign` FOREIGN KEY (`news_category_id`) REFERENCES `news_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Флешмоб «Поздравь учителя!»',NULL,'<h2>В Киржачском районе проходит флешмоб &laquo;Поздравь учителя!&raquo;</h2>\r\n\r\n<p>Флешмоб на День учителя давно уже стал одним из неординарных видов поздравления любимых педагогов с их профессиональным праздником. С одной стороны спонтанная и неожиданная, а с другой &ndash; хорошо подготовленная акция, в которой задействованы ученики одного или нескольких классов, отлично поднимает настроение всем и является прекрасным подарком для учителей.<br />\r\n&laquo;5 октября &mdash; самое время поздравить своих педагогов, выразить им слова благодарности за их благородный труд.</p>\r\n\r\n<p>Предлагаем принять участие во Флешмобе &laquo;Поздравь учителя!&raquo;</p>\r\n\r\n<p>Варианты Флешмоба:</p>\r\n\r\n<p>Флешмоб &laquo;Видео с поздравлением&raquo;</p>\r\n\r\n<ol>\r\n	<li>Сними короткий видеоролик со своим поздравлением: представься, поздравь любимого учителя с праздником, запусти эстафетный самолетик своим друзьям.</li>\r\n	<li>Выложи свое видео в любую социальную сеть с хэштегами акции: #поздравьучителя #деньучителя #киржачскийрайон</li>\r\n	<li>Под видео напиши поздравление любимому учителю. Укажи ссылки на друзей, которым ты передаешь эстафетный самолетик.</li>\r\n</ol>\r\n\r\n<p>Подробнее об акции можно узнать в официальной группе управления образования</p>\r\n\r\n<p><a href=\"https://clck.ru/35szM9\">Официальная группа образования</a></p>','Директор',1,7,'{}','active','2023-10-01 00:00:00',NULL,'2023-10-16 23:08:48','2023-10-16 23:45:38'),(2,'Посадка Сада памяти',NULL,'<p>В селе Филипповское высадили Сад памяти в честь героев СВО</p>','Директор',1,10,'{}','active','2023-10-02 00:00:00','https://youtu.be/vHVCWP7-TQ4','2023-10-16 23:16:20','2023-10-16 23:16:45'),(3,'Онлайн конкурс \"Родные места\"',NULL,'<p>Юных художников зовут поучаствовать в онлайн-конкурсе</p>\r\n\r\n<p>Ребятам предлагают нарисовать любимые и дорогие сердцу места родного края в любой живописной технике.</p>\r\n\r\n<p>Конкурсную работу необходимо прислать на электронную почту: <a href=\"http://ddn.33@yandex.ru\">ddn.33@yandex.ru</a> (с пометкой &laquo;Родные места&raquo;).</p>\r\n\r\n<p>Победителей и призеров наградят памятными призами и дипломами. А лучшие работы войдут в коллекцию &laquo;Дома дружбы народов&raquo;.</p>\r\n\r\n<p><strong>Конкурс продлится до 10 ноября</strong>. Узнать подробности можно в группе &laquo;Дома дружбы народов&raquo; или по телефону - <strong>8 (4922) 45-17-40</strong>.</p>','Директор',2,8,'{}','active','2023-10-03 00:00:00',NULL,'2023-10-16 23:19:18','2023-10-16 23:44:22'),(4,'Проверьте свою дорожную грамотность!',NULL,'<p>В рамках нацпроекта &laquo;Безопасные качественные дороги&raquo; стартовала Всероссийская олимпиада &laquo;Безопасные дороги&raquo;. Участвовать в ней могут ученики 1&ndash;9 классов.</p>\r\n\r\n<p>Онлайн-соревнование поможет школьникам оценить, насколько хорошо они знают ПДД, разобраться, как правильно вести себя пешеходу, пассажиру, как безопасно управлять самокатом и велосипедом.</p>\r\n\r\n<p>Олимпиада проходит на онлайн-платформе <a href=\"https://vk.cc/cqZYPe\">учи.ру</a>.<br />\r\nВсех участников ждут награды. Соревнование продлится до 15 октября</p>\r\n\r\n<p><br />\r\n<a href=\"https://vk.com/video-185852839_456239795\">ссылка на ВК</a></p>','Директор',1,10,'{}','active','2023-10-10 00:00:00',NULL,'2023-10-16 23:23:32','2023-10-16 23:23:32'),(5,'III Форум классных руководителей',NULL,'<p>23 педагога Владимирской области в нынешнем году прошли серьезный экспертный отбор и отправились на III Форум классных руководителей. Всего на это знаковое событие Года педагога и наставника было подано более 60 000 заявок со всей страны!</p>\r\n\r\n<p>Форум проводится Министерством Просвещения России по поручению Президента России. Стратегический партнер - АНО &laquo;Диалог Регионы&raquo;, головная организация Центров управления регионами.</p>\r\n\r\n<p>Площадки форума объединят более 3 000 учителей и кураторов СПО. Вместе с известными спикерами они обсудят важные для современного образования темы.</p>\r\n\r\n<p>Следить за трансляциями можно и в онлайн-режиме - в официальном сообществе ФКР и на сайте:<br />\r\n<a href=\"https://vfkr.ru/\">https://vfkr.ru/</a></p>','Директор',1,9,'{}','active','2023-10-12 00:00:00',NULL,'2023-10-16 23:24:50','2023-10-16 23:45:17'),(6,'Поддержим Марину Владимировну Булгакову',NULL,'<p>Поддержим Марину Владимировну Булгакову, учителя английского языка школы №9 из Вязников, в конкурсе &laquo;Учитель года России &ndash; 2023&raquo;!</p>\r\n\r\n<p>Минпросвещения открывает специальный чат-бот, в котором можно будет поддержать педагогов-участников. Отдать свой голос можно только за одного претендента. 33 регион представляет Марина Булгакова.</p>\r\n\r\n<h2>Сделать это можно здесь <a href=\"https://vk.com/write-30558759\">https://vk.com/write-30558759</a></h2>\r\n\r\n<p>Онлайн-голосование завершится 3 октября в 12:00 по московскому времени. Организаторами проекта выступают Минпросвещения России и Центр компетенций в сфере интернет-коммуникаций &laquo;Диалог&raquo; при поддержке коммуникационного сервиса &laquo;Сферум&raquo;.</p>\r\n\r\n<p>Итоги голосования будут подведены на торжественной церемонии закрытия второго тура заключительного этапа Всероссийского конкурса &laquo;Учитель года России &ndash; 2023&raquo; в Московской области.</p>\r\n\r\n<p>&nbsp;</p>','Директор',1,14,'{}','active','2023-09-27 00:00:00',NULL,'2023-10-16 23:28:01','2023-10-18 16:19:42');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_categories`
--

DROP TABLE IF EXISTS `news_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_categories`
--

LOCK TABLES `news_categories` WRITE;
/*!40000 ALTER TABLE `news_categories` DISABLE KEYS */;
INSERT INTO `news_categories` VALUES (1,'Жизнь школы',NULL,NULL,'2023-10-16 23:04:34','2023-10-16 23:04:34'),(2,'Конкурсы',NULL,NULL,'2023-10-16 23:04:53','2023-10-16 23:04:53');
/*!40000 ALTER TABLE `news_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent_student`
--

DROP TABLE IF EXISTS `parent_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent_student` (
  `parent_id` bigint unsigned NOT NULL,
  `student_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `parent_student_parent_id_foreign` (`parent_id`),
  KEY `parent_student_student_id_foreign` (`student_id`),
  CONSTRAINT `parent_student_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `parents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `parent_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent_student`
--

LOCK TABLES `parent_student` WRITE;
/*!40000 ALTER TABLE `parent_student` DISABLE KEYS */;
INSERT INTO `parent_student` VALUES (1,1,NULL,NULL),(2,1,NULL,NULL),(3,2,NULL,NULL),(4,2,NULL,NULL),(5,3,NULL,NULL),(6,3,NULL,NULL),(7,4,NULL,NULL),(7,5,NULL,NULL);
/*!40000 ALTER TABLE `parent_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `surname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `patronymic` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parents_user_id_foreign` (`user_id`),
  CONSTRAINT `parents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents`
--

LOCK TABLES `parents` WRITE;
/*!40000 ALTER TABLE `parents` DISABLE KEYS */;
INSERT INTO `parents` VALUES (1,12,'Ананий','Горбачёв','Евграфович','2023-10-16 22:43:41','2023-10-16 22:43:41'),(2,13,'Варвара','Крюкова','Евгеньевна','2023-10-16 22:43:41','2023-10-16 22:43:41'),(3,14,'Игнатий','Крюков','Владимирович','2023-10-16 22:43:41','2023-10-16 22:43:41'),(4,15,'Анна','Панова','Ильинишна','2023-10-16 22:43:42','2023-10-16 22:43:42'),(5,16,'Валерия','Степанова','Евгеньевна','2023-10-16 22:43:42','2023-10-16 22:43:42'),(6,17,'Инна','Кудрявцев','Михайловна','2023-10-16 22:43:42','2023-10-16 22:43:42'),(7,1,'Фамилия','Имя','Отчество','2023-10-16 22:43:43','2023-10-16 22:43:43');
/*!40000 ALTER TABLE `parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'news.list','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(2,'news.create','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(3,'news.update','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(4,'news.delete','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(5,'albums.list','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(6,'albums.create','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(7,'albums.update','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(8,'albums.delete','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(9,'acl.list','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(10,'acl.create','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(11,'acl.update','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(12,'acl.delete','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (8,'App\\Models\\User',14,'authToken','d3bb5617680b76d4ca4494a695c505dfbee946f4404fe32c56d9a9256b227dfe','[\"*\"]',NULL,NULL,'2023-10-17 22:49:58','2023-10-17 22:49:58'),(9,'App\\Models\\User',15,'authToken','a55c22624bf6de10ae48a8bbb4c9bffe21260244ab5ceaee4bc7ec7dc6322003','[\"*\"]',NULL,NULL,'2023-10-17 22:50:20','2023-10-17 22:50:20');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'http://localhost:7777/storage/data/photo/album/e118d90620789909046e671f3674636b.jpg','2023-10-16 21:04:29','2023-10-16 21:04:29'),(2,'http://localhost:7777/storage/data/photo/album/955761c0dc20b20865861044b451c4e0.jpg','2023-10-16 21:06:21','2023-10-16 21:06:21'),(3,'http://localhost:7777/storage/data/photo/album/6df8b47341af22f3d4d0828823a6f217.jpg','2023-10-16 21:06:56','2023-10-16 21:06:56'),(4,'http://localhost:7777/storage/data/photo/album/1332daa577afc7196addc5120eff7deb.jpeg','2023-10-16 21:07:30','2023-10-16 21:07:30'),(5,'http://localhost:7777/storage/data/photo/album/86152dbd661011fff49ba05390deeffb.jpg','2023-10-16 21:07:45','2023-10-16 21:07:45'),(6,'http://localhost:7777/storage/data/photo/album/a8c23e2d7cb61e9bca5e79033df78e2c.jpeg','2023-10-16 21:07:55','2023-10-16 21:07:55'),(7,'http://localhost:7777/storage/data/photo/album/62e534cc86352677e02bc86b552afaaa.jpg','2023-10-16 21:08:07','2023-10-16 21:08:07'),(8,'http://localhost:7777/storage/data/photo/album/6ae71b0d94de804a6494dbdb60a82942.jpeg','2023-10-16 21:08:19','2023-10-16 21:08:19'),(9,'http://localhost:7777/storage/data/photo/album/51bf780ffc504db75afd0e42e1da64c6.jpg','2023-10-16 21:08:40','2023-10-16 21:08:40'),(10,'http://localhost:7777/storage/data/photo/album/a090901d038908f8f1f8ee700edfeb1e.jpg','2023-10-16 21:08:53','2023-10-16 21:08:53'),(11,'http://localhost:7777/storage/data/photo/album/6e3003c79d5abbe109315b03ff667bc1.jpg','2023-10-16 21:09:22','2023-10-16 21:09:22'),(12,'http://localhost:7777/storage/data/photo/album/c497bd0aacedb09d45d10711bf5319da.jpg','2023-10-16 21:09:36','2023-10-16 21:09:36'),(13,'http://localhost:7777/storage/data/photo/album/e29dc0307c5e60181d5227bcf5bb870a.jpg','2023-10-16 21:09:49','2023-10-16 21:09:49'),(14,'http://localhost:7777/storage/data/photo/album/aaf07b52f838409427afc68b859df7d8.jpg','2023-10-16 21:10:21','2023-10-16 21:10:21'),(15,'http://localhost:7777/storage/data/photo/album/d0195b2f79a69c2d25706a921276efa3.jpg','2023-10-16 21:10:32','2023-10-16 21:10:32'),(16,'http://localhost:7777/storage/data/photo/album/a7657d9029ddcfe6a3d3eef2e4460d0a.jpg','2023-10-16 21:10:44','2023-10-16 21:10:44'),(17,'http://localhost:7777/storage/data/photo/album/5885dae4055d4e97771c362b6d661887.jpg','2023-10-16 21:10:56','2023-10-16 21:10:56'),(18,'http://localhost:7777/storage/data/photo/album/6cff57e8d19d91510f13d7d8f25db5ea.jpg','2023-10-16 21:11:09','2023-10-16 21:11:09'),(19,'http://localhost:7777/storage/data/photo/album/affc2b869755b0c0cc1606afcab41be1.jpg','2023-10-16 21:11:23','2023-10-16 21:11:23'),(20,'http://localhost:7777/storage/data/photo/album/e5e56c7c19a9cd0aaa6dad86a0d47ed8.jpg','2023-10-16 21:11:33','2023-10-16 21:11:33'),(21,'http://localhost:7777/storage/data/photo/album/88dfeeb3e2824a0d5f60282af1ea1f43.jpg','2023-10-16 21:11:42','2023-10-16 21:11:42'),(22,'http://localhost:7777/storage/data/photo/album/c3e9dc597a156ce91558e80ad7a3428e.jpg','2023-10-16 21:12:02','2023-10-16 21:12:02'),(23,'http://localhost:7777/storage/data/photo/album/04723e1e567166e353be39874515251d.jpg','2023-10-16 21:12:14','2023-10-16 21:12:14'),(24,'http://localhost:7777/storage/data/photo/album/0f0ed7f2726559d1a0c017eb95598535.jpg','2023-10-16 21:12:24','2023-10-16 21:12:24'),(25,'http://localhost:7777/storage/data/photo/album/6b8b314745b498bbe29f37fff5bf58d7.jpg','2023-10-16 21:12:49','2023-10-16 21:12:49'),(26,'http://localhost:7777/storage/data/photo/album/82b4db6e025f6a28ec77215e23504983.jpg','2023-10-16 21:13:02','2023-10-16 21:13:02'),(27,'http://localhost:7777/storage/data/photo/album/08fe6d6d03367a159b42d16cce260997.jpg','2023-10-16 21:13:14','2023-10-16 21:13:14'),(28,'http://localhost:7777/storage/data/photo/album/bd605630709f7a768f8ec42663557624.jpg','2023-10-16 21:13:25','2023-10-16 21:13:25'),(29,'http://localhost:7777/storage/data/photo/album/508b47821eda3440845107004848dc1d.jpg','2023-10-16 21:13:38','2023-10-16 21:13:38'),(30,'http://localhost:7777/storage/data/photo/album/5760b8f5318a2c9923e568aed56e9b0e.jpg','2023-10-16 21:13:50','2023-10-16 21:13:50'),(31,'http://localhost:7777/storage/data/photo/album/beb4caaa719742612e7a628e582022d8.jpg','2023-10-16 21:14:01','2023-10-16 21:14:01'),(32,'http://localhost:7777/storage/data/photo/album/8a853b7ec764ad5e8eb55b8832c2d359.jpg','2023-10-16 21:14:17','2023-10-16 21:14:17'),(33,'http://localhost:7777/storage/data/photo/album/10e03aa66859abd7147f1ee43418c588.jpg','2023-10-16 21:14:28','2023-10-16 21:14:28'),(34,'http://localhost:7777/storage/data/photo/album/1ccb9cce6bcb01a17ac502a500b8aeb4.jpg','2023-10-16 21:14:39','2023-10-16 21:14:39'),(35,'http://localhost:7777/storage/data/photo/album/fe8c291b2482b2266035abdeff929496.jpg','2023-10-16 21:14:52','2023-10-16 21:14:52'),(36,'http://localhost:7777/storage/data/photo/album/3c5e7d07a002f7dba32dc0d9ff30e815.jpg','2023-10-16 21:15:05','2023-10-16 21:15:05'),(37,'http://localhost:7777/storage/data/photo/album/5fdefe445485a29af3d4c6fea2d588ab.jpg','2023-10-16 21:15:16','2023-10-16 21:15:16'),(38,'http://localhost:7777/storage/data/photo/album/3a7e45bdbcf02732469aa069253bb25c.jpg','2023-10-16 21:15:28','2023-10-16 21:15:28'),(39,'http://localhost:7777/storage/data/photo/album/6fc86df2d06fcd53a5ecdbd241018bb5.jpg','2023-10-16 21:15:40','2023-10-16 21:15:40'),(40,'http://localhost:7777/storage/data/photo/album/0b8b9ff346ff9339990bc0787731cbf4.jpg','2023-10-16 21:15:54','2023-10-16 21:15:54'),(41,'http://localhost:7777/storage/data/photo/album/0fade2794e766491207ab1f54b676598.jpg','2023-10-16 21:16:15','2023-10-16 21:16:15'),(42,'http://localhost:7777/storage/data/photo/album/4146f90f7daa8d2335df78768b1e2238.jpg','2023-10-16 21:16:28','2023-10-16 21:16:28'),(45,'http://localhost:7777/storage/data/photo/album/126b76e569c35cace3be1397a7087f03.jpg','2023-10-16 21:17:43','2023-10-16 21:17:43'),(46,'http://localhost:7777/storage/data/photo/album/727439ce47d173c768ac1689cf4286a3.jpg','2023-10-16 21:17:54','2023-10-16 21:17:54'),(47,'http://localhost:7777/storage/data/photo/album/9795b6ef6b1aac5e073e3096799d3080.jpg','2023-10-16 21:18:08','2023-10-16 21:18:08'),(48,'http://localhost:7777/storage/data/photo/album/c2b7d4d81a5ae2bf865d4b1af13c71bb.jpg','2023-10-16 21:18:19','2023-10-16 21:18:19'),(49,'http://localhost:7777/storage/data/photo/album/bc121a6dba23d1994100053016dab7de.jpg','2023-10-16 21:18:34','2023-10-16 21:18:34'),(50,'http://localhost:7777/storage/data/photo/album/5be2ae4fc9956e19a7f5ec914e7cc999.jpg','2023-10-16 21:18:48','2023-10-16 21:18:48'),(51,'http://localhost:7777/storage/data/photo/album/3672b9472a31657d5b5e9813dbafb84a.jpg','2023-10-16 21:19:00','2023-10-16 21:19:00'),(52,'http://localhost:7777/storage/data/photo/album/240a0b52e5d2b74459ca6ddb0c6583c8.jpg','2023-10-16 21:19:11','2023-10-16 21:19:11'),(53,'http://localhost:7777/storage/data/photo/album/45e71987a31a9f18e1fd637235780e7a.jpg','2023-10-16 23:11:16','2023-10-16 23:13:32'),(54,'http://localhost:7777/storage/data/photo/album/adeeff52ca96c8badfc7c2d1419ce29c.jpg','2023-10-16 23:14:46','2023-10-16 23:14:46'),(55,'http://localhost:7777/storage/data/photo/album/73d303bcb132715300bcf895480a497c.jpg','2023-10-16 23:31:00','2023-10-16 23:31:00'),(56,'http://localhost:7777/storage/data/photo/album/eee73b781ce329e3b582987b4101a6a1.jpg','2023-10-16 23:31:19','2023-10-16 23:31:19'),(57,'http://localhost:7777/storage/data/photo/album/68d34f0b298eb46d873c69323da1c217.jpg','2023-10-16 23:31:39','2023-10-16 23:31:39'),(58,'http://localhost:7777/storage/data/photo/album/83662e837b1a25f69572c3abcb66337e.jpg','2023-10-17 00:01:47','2023-10-17 00:01:47'),(59,'http://localhost:7777/storage/data/photo/album/6ebcbed694d03f9b324160151c27d31d.png','2023-10-17 00:07:35','2023-10-17 00:07:35'),(60,'http://localhost:7777/storage/data/photo/album/bfbdabe38a43591bc726e957e47a0381.png','2023-10-17 22:20:48','2023-10-17 22:20:48'),(61,'http://localhost:7777/storage/data/photo/album/ab567e6d22d9d7cb5c7b879bc7eb7c9a.png','2023-10-17 22:26:10','2023-10-17 22:26:10'),(62,'http://localhost:7777/storage/data/photo/album/e73cbf46d93dcac657c55edc1aa837b6.png','2023-10-17 22:26:59','2023-10-17 22:26:59'),(63,'http://localhost:7777/storage/data/photo/album/c5b308721a0d1e58f8740807e3fb0f49.jpg','2023-10-17 22:27:59','2023-10-17 22:27:59'),(64,'http://localhost:7777/storage/data/photo/album/b36f0b9c28c13390a2229d95f2198e40.png','2023-10-17 22:28:40','2023-10-17 22:28:40'),(65,'http://localhost:7777/storage/data/photo/album/bd39fcae290f6a18e17237288008556d.jpg','2023-10-18 15:39:15','2023-10-18 15:39:15'),(66,'http://localhost:7777/storage/data/photo/album/a1b5ca2d1dceee0170504b8ad1014353.jpg','2023-10-18 15:39:30','2023-10-18 15:39:30'),(67,'http://localhost:7777/storage/data/photo/album/a83815146cfb9654a2bd2963ebc68e0a.jpg','2023-10-18 15:39:45','2023-10-18 15:39:45'),(68,'http://localhost:7777/storage/data/photo/album/7c192294444c65af930e6343790ad3c5.jpg','2023-10-18 15:39:57','2023-10-18 15:39:57'),(69,'http://localhost:7777/storage/data/photo/album/9daacbbbb4cd638183491b794663d93e.jpg','2023-10-18 15:40:09','2023-10-18 15:40:09'),(70,'http://localhost:7777/storage/data/photo/album/7c6ecefa61b6c3097206f6396cf6e75f.jpg','2023-10-18 15:40:20','2023-10-18 15:40:20'),(71,'http://localhost:7777/storage/data/photo/album/40dfbd5441fcfb2793d146136daed533.jpg','2023-10-18 15:40:31','2023-10-18 15:40:31'),(72,'http://localhost:7777/storage/data/photo/album/7f6a4aab1161f47106231b9a6b04443e.jpg','2023-10-18 15:40:42','2023-10-18 15:40:42'),(73,'http://localhost:7777/storage/data/photo/album/bffe64ef027022ca5a18fa2e49f703d2.jpg','2023-10-18 15:40:54','2023-10-18 15:40:54'),(74,'http://localhost:7777/storage/data/photo/album/8825f2d476fe14a5e695d308d0322528.jpg','2023-10-18 15:41:18','2023-10-18 15:41:18'),(75,'http://localhost:7777/storage/data/photo/album/0a93e987fa41ca75edac52697d30f61e.jpg','2023-10-18 15:41:30','2023-10-18 15:41:30'),(76,'http://localhost:7777/storage/data/photo/album/f9a3e5ba77633375c0fc7631a2b18eb2.jpg','2023-10-18 15:41:40','2023-10-18 15:41:40'),(77,'http://localhost:7777/storage/data/photo/album/31665a1d2906c1d4f3f6505c97d3a3bc.jpg','2023-10-18 15:41:51','2023-10-18 15:41:51'),(78,'http://localhost:7777/storage/data/photo/album/d203819e57afb9fa44adf45e1b31f44e.jpg','2023-10-18 15:42:02','2023-10-18 15:42:02'),(79,'http://localhost:7777/storage/data/photo/album/5a2ed79e83380790f951283c215f4510.jpg','2023-10-18 15:42:13','2023-10-18 15:42:13'),(80,'http://localhost:7777/storage/data/photo/album/69e7b7512d6ca8068e5d3cd9e63995a5.jpg','2023-10-18 16:18:52','2023-10-18 16:18:52'),(81,'http://localhost:7777/storage/data/photo/album/968e05b04580cd130a8cc1086710e662.jpg','2023-10-18 16:56:33','2023-10-18 16:56:33');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(2,'Учитель','backpack','2023-10-16 22:43:36','2023-10-16 22:43:36'),(3,'Студент','backpack','2023-10-16 22:43:36','2023-10-16 22:43:36'),(4,'Родитель','backpack','2023-10-16 22:43:36','2023-10-16 22:43:36');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `subject_id` bigint unsigned NOT NULL,
  `teacher_id` bigint unsigned NOT NULL,
  `week_day_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `classroom_id` bigint unsigned NOT NULL,
  `call_schedule_id` bigint unsigned NOT NULL,
  `day_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schedules_subject_id_foreign` (`subject_id`),
  KEY `schedules_teacher_id_foreign` (`teacher_id`),
  KEY `schedules_classroom_id_foreign` (`classroom_id`),
  KEY `schedules_call_schedule_id_foreign` (`call_schedule_id`),
  KEY `schedules_day_id_foreign` (`day_id`),
  CONSTRAINT `schedules_call_schedule_id_foreign` FOREIGN KEY (`call_schedule_id`) REFERENCES `call_schedules` (`id`),
  CONSTRAINT `schedules_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  CONSTRAINT `schedules_day_id_foreign` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`),
  CONSTRAINT `schedules_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  CONSTRAINT `schedules_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,10,1,'Понедельник',1,1,1,'2023-10-16 22:43:38','2023-10-16 22:43:38'),(2,1,1,'Понедельник',1,2,1,'2023-10-16 22:43:38','2023-10-16 22:43:38'),(3,9,1,'Понедельник',1,3,1,'2023-10-16 22:43:38','2023-10-16 22:43:38'),(4,6,1,'Понедельник',1,4,1,'2023-10-16 22:43:38','2023-10-16 22:43:38'),(5,18,1,'Вторник',1,1,2,'2023-10-16 22:43:38','2023-10-16 22:43:38'),(6,6,1,'Вторник',1,2,2,'2023-10-16 22:43:38','2023-10-16 22:43:38'),(7,10,1,'Вторник',1,3,2,'2023-10-16 22:43:38','2023-10-16 22:43:38'),(8,19,1,'Вторник',1,4,2,'2023-10-16 22:43:38','2023-10-16 22:43:38'),(9,19,1,'Среда',1,1,3,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(10,2,1,'Среда',1,2,3,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(11,16,1,'Среда',1,3,3,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(12,17,1,'Среда',1,4,3,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(13,10,1,'Четверг',1,1,4,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(14,12,1,'Четверг',1,2,4,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(15,11,1,'Четверг',1,3,4,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(16,20,1,'Четверг',1,4,4,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(17,11,1,'Пятница',1,1,5,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(18,6,1,'Пятница',1,2,5,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(19,16,1,'Пятница',1,3,5,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(20,7,1,'Пятница',1,4,5,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(21,4,1,'Суббота',1,1,6,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(22,5,1,'Суббота',1,2,6,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(23,14,1,'Суббота',1,3,6,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(24,1,1,'Суббота',1,4,6,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(25,5,2,'Понедельник',2,1,1,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(26,10,2,'Понедельник',2,2,1,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(27,4,2,'Понедельник',2,3,1,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(28,11,2,'Понедельник',2,4,1,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(29,8,2,'Вторник',2,1,2,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(30,1,2,'Вторник',2,2,2,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(31,19,2,'Вторник',2,3,2,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(32,17,2,'Вторник',2,4,2,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(33,13,2,'Среда',2,1,3,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(34,17,2,'Среда',2,2,3,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(35,10,2,'Среда',2,3,3,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(36,8,2,'Среда',2,4,3,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(37,7,2,'Четверг',2,1,4,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(38,15,2,'Четверг',2,2,4,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(39,11,2,'Четверг',2,3,4,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(40,5,2,'Четверг',2,4,4,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(41,20,2,'Пятница',2,1,5,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(42,17,2,'Пятница',2,2,5,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(43,15,2,'Пятница',2,3,5,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(44,2,2,'Пятница',2,4,5,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(45,5,2,'Суббота',2,1,6,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(46,15,2,'Суббота',2,2,6,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(47,9,2,'Суббота',2,3,6,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(48,9,2,'Суббота',2,4,6,'2023-10-16 22:43:40','2023-10-16 22:43:40');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `chapter_id` bigint unsigned DEFAULT NULL,
  `sectionTitle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sectionText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `sequence` int DEFAULT NULL,
  `status` enum('active','draft') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sections_sectiontitle_unique` (`sectionTitle`) USING BTREE,
  KEY `sections_chapter_id_foreign` (`chapter_id`) USING BTREE,
  CONSTRAINT `sections_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,1,'Информация об организации','<p><strong>&nbsp;Наименование ОО</strong>:&nbsp;Муниципальное казенное общеобразовательное учреждение «Филипповская средняя общеобразовательная школа» Киржачского района Владимирской области<br><strong>Сокращенно:</strong>МКОУ Филипповская СОШ</p><p><strong>Дата создания образовательной организации:</strong>Декабрь 1975 года</p><p><strong>Место нахождения образовательной организации:</strong>РФ, Владимирская область, Киржачский район, село Филипповское, ул.Советская, дом26</p><p><strong>Режим и график работы:</strong><br>Понедельник-Пятница 8:00-17:00<br>Суббота 8:00-14:00</p><p><strong>Телефон Директора школы:</strong>8 (49237) 7-11-73</p><p><strong>Телефон Заместителя директорапо АХЧ:</strong>8(49237)7-12-74</p><p><strong>Адрес электронной почты:</strong>Filippovskay-sl@yandex.ru</p><p><strong>Адрес официального сайта:</strong>http://филипповская-школа.рф/</p><p><strong>Официальная страница ВКонтакте:</strong>https://vk.com/filippovskayasosh</p><p><strong>Формы обучения:</strong>При реализации образовательных программ используются различные образовательные технологии, в том числе дистанционные образовательные технологии, электронное обучение.</p>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(2,1,'Информация об учредителе','<p><strong>Учредитель:</strong>Администрация Киржачского района Владимирской области</p><p><strong>Начальник управления:</strong>Кузицына Ольга Владимировна</p><p><strong>Место нахождения:</strong>601010, Владимирская область, г.Киржач, ул.Серегина, д.7</p><p><strong>График работы:</strong><br>Понедельник—пятницас8.00до17.00</p><p><strong>Телефон:</strong>8(49237)2-04-00</p><p><strong>Факс:</strong>8(49237)2-03-84</p><p><strong>Адрес электронной почты:</strong>info@kirzhach.su</p><p><strong>Сайт:</strong>http://www.kirzhach.su</p><p><strong>Места осуществления образовательной деятельности:&nbsp;</strong></p><p>601024, Российская Федерация, Центральный федеральный округ,Владимирская обл., Киржачский район., Филипповское с., Советскаяул., д.26.</p><p><strong>Места осуществления образовательной деятельности по дополнительным профессиональным программам:&nbsp;</strong></p><p>нет</p><p><strong>Места осуществленияо бразовательной деятельности по основным программам профессионального обучения:</strong></p><p>нет</p><p><strong>Места осуществления образовательной деятельности при использовании сетевой формы реализации образовательных программ:</strong>нет</p><p><strong>Места проведения практики:</strong></p><p>нет</p><p><strong>Места проведения практической подготовки обучающихся:</strong></p><p>нет</p><p><strong>Места проведения государственной итоговой аттестации:</strong>ОГЭ: МБОУ СОШ №2 (Киржач., Гагарина ул., д.25), МБОУ СОШ №3 (г.Киржач, ул.Чехова, д.10а)&nbsp;ЕГЭ: МБОУ СОШ №5(г.Киржач, ул.40 лет Октября, д.17),МБОУ СОШ №6 им. С.Б.Белкина (г.Киржач, ул.Пушкина, д.27)</p>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(3,2,'Структура и органы управления образовательной организацией','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(4,3,'Документы','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(5,3,'Предписания органов, осуществляющих государственный контроль (надзор) в сфере образования, отчеты об исполнении таких предписаний','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(6,4,'Образование ведется на Русском языке','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(7,4,'Всероссийские проверочные работы','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(8,4,'Государственная итоговая аттестация','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(9,4,'Дистанционное обучение','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(10,4,'График дистанционных занятий','<table><thead><tr><td><strong>1 урок</strong></td><td>9:00 — 9:30</td></tr></thead><tbody><tr><td><strong>2 урок</strong></td><td>9:40 — 10:10</td></tr><tr><td><strong>3 урок</strong></td><td>10:20 — 10:50</td></tr><tr><td><strong>4 урок</strong></td><td>11:00 — 11:30</td></tr><tr><td><strong>5 урок</strong></td><td>11:45 — 12:15</td></tr><tr><td><strong>6 урок</strong></td><td>12:25 — 12:55</td></tr><tr><td><strong>7 урок</strong></td><td>13:00 — 13:30</td></tr></tbody></table>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(11,4,'Реализуемые уровни образования','<p>МКОУ Филипповская СОШ осуществляет образовательный процесс в соответствии с общеобразовательными программами трех уровней общего образования:</p><ul><li>I уровень – начальное общее образование (нормативный срок освоения 4 года);</li><li>II уровень – основное общее образование (нормативный срок освоения 5 лет);</li><li>III уровень – среднее общее образование (нормативный срок освоения 2 года).</li></ul><p><strong>Численность обучающихся по реализуемым образовательным программам:</strong></p><ul><li>Начальное общее образование -106 обучающихся;</li><li>Основное общее образование — 106 обучающихся;</li><li>Среднее общее образование — 20 обучающихся.</li></ul>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(12,4,'Языки, на которых осуществляется образование','<p>Обучение и воспитание в МКОУ «Филипповская средняя общеобразовательная школа» ведётся на русском языке.</p>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(13,4,'Нормативные сроки обучения','<ul><li>I уровень – начальное общее образование (нормативный срок освоения 4 года);</li><li>II уровень – основное общее образование (нормативный срок освоения 5 лет);</li><li>III уровень – среднее общее образование (нормативный срок освоения 2 года).</li></ul>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(14,4,'Срок действия государственной аккредитации образовательной программы','<p>Смотреть в разделе&nbsp;<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/sveden/document/\">Документы</a></p>',500,'active','2023-10-14 11:10:19','2023-10-15 18:48:32'),(15,4,'Образовательные программы','<p>Содержание общего образования определяется образовательными программами, разрабатываемыми и реализуемыми МКОУ Филипповской СОШ самостоятельно на основе федеральных государственных образовательных стандартов и примерных образовательных учебных программ, курсов, дисциплин.</p><p>Освоение образовательных программ основного общего и среднего общего образования завершается обязательной итоговой аттестацией обучающихся. Государственная итоговая аттестация выпускников МКОУ Филипповской СОШ осуществляется в соответствии с положением о Государственной итоговой аттестации выпускников общеобразовательных учреждений, утверждаемым Министерством образования и науки Российской Федерации.</p><p><strong>Виды реализуемых программ:</strong></p><p>а) Основные общеобразовательные программы начального общего образования;</p><p>б) Основные общеобразовательные программы основного общего образования;</p><p>в) Основные общеобразовательные программы среднего общего образования;</p><p>г) Адаптированная образовательная программа НОО и ООО.</p>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(16,4,'Учебный план на 2022-2023 учебный год','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(17,4,'Рабочие программы','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(18,4,'Адаптированные образовательные программы учебных курсов, предметов','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(19,4,'Аннотации к рабочим программам','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(20,11,'Электронная запись в первый класс','<p><strong>УВАЖАЕМЫЕ РОДИТЕЛИ!</strong></p>\r\n<p>Вы можете подать заявление о зачислении в <strong>школу</strong> в электронном виде. <em>Всего лишь одно нажатие и вы попадаете</em> на <a href=\"https://www.gosuslugi.ru/600426/1/form\">&laquo;Единый портал государственных и муниципальных услуг (функций)&raquo;</a><br /><a href=\"https://www.gosuslugi.ru/600426/1/form\"><img class=\"wp-image-2201 alignleft\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie.png\" sizes=\"(max-width: 556px) 100vw, 556px\" srcset=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie.png 1153w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie-300x148.png 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie-1024x506.png 1024w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie-768x380.png 768w\" alt=\"\" width=\"556\" height=\"275\" /></a></p>\r\n<p>Все очень просто.</p>',500,'active','2023-10-14 11:10:19','2023-10-14 13:06:36'),(21,12,'Центр естественно-научного профиля «Точка роста»','<div class=\"post post-one\"><div class=\"post_title_page\"><h2>Центр естественно-научного профиля «Точка роста»</h2></div><p>&nbsp;</p><p><img class=\"wp-image-1180 alignright\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/tochka_rosta-1.jpg\" alt=\"\" width=\"635\" height=\"347\" srcset=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/tochka_rosta-1.jpg 918w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/tochka_rosta-1-300x164.jpg 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/tochka_rosta-1-768x419.jpg 768w\" sizes=\"(max-width: 635px) 100vw, 635px\"></p><p><a href=\"http://филипповская-школа.рф/?page_id=1240&amp;preview=true\"><img class=\"wp-image-1237 aligncenter\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/111.jpg\" alt=\"\" width=\"181\" height=\"66\"></a></p><p><a href=\"http://филипповская-школа.рф/?page_id=1244&amp;preview=true\"><img class=\"wp-image-1238 aligncenter\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/222.jpg\" alt=\"\" width=\"252\" height=\"63\"></a></p><p><a href=\"http://филипповская-школа.рф/?page_id=1246&amp;preview=true\"><img class=\" wp-image-1239 aligncenter\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/333.jpg\" alt=\"\" width=\"178\" height=\"57\"></a></p><p><a href=\"http://филипповская-школа.рф/?page_id=1256&amp;preview=true\"><img class=\"aligncenter wp-image-1255\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/gwzlan9feiw.jpg\" alt=\"\" width=\"248\" height=\"76\"></a></p><p><a href=\"http://филипповская-школа.рф/?page_id=1264&amp;preview=true\"><img class=\"aligncenter size-full wp-image-1262\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/123.jpg\" alt=\"\" width=\"163\" height=\"85\"></a></p><p><img class=\"wp-image-1646 alignright\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-scaled.jpg\" alt=\"\" width=\"258\" height=\"197\" srcset=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-scaled.jpg 2560w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-300x229.jpg 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-1024x781.jpg 1024w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-768x586.jpg 768w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-1536x1171.jpg 1536w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-2048x1562.jpg 2048w\" sizes=\"(max-width: 258px) 100vw, 258px\">С днем рождения, Точка роста!!</p><p>9 сентября 2021 года в нашей школе состоялось торжественное открытие Центра естественно-научной и технологической направленностей.<br>Поздравить школу со столь знаменательным событием собралось много гостей. Глава Киржачского района, секретарь Местного Отделения Партии «Единая Россия» А.Н. Доброхотов, глава администрации Киржачского района И.Н. Букалов, заместите<img class=\"wp-image-1647 alignleft\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-scaled.jpg\" alt=\"\" width=\"285\" height=\"190\" srcset=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-scaled.jpg 2560w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-300x200.jpg 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-1024x683.jpg 1024w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-768x512.jpg 768w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-1536x1024.jpg 1536w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-2048x1365.jpg 2048w\" sizes=\"(max-width: 285px) 100vw, 285px\">ль главы администрации района по социальным вопросам Е.А. Жарова, глава администрации МО Филипповское Л.А. Рубцов вместе с преподавателями и учениками нашей школы заложили Аллею Мудрости, а затем поднялись в новое образовательное пространство. Современные кабинеты химии, физики и биологии, на базе которых с помощью цифровых лабораторий, интерактивного оборудования, тематических коллекций по предметам, комплектам по робототехнике, механике и мехатронике наши ученики смогут получать образование, соответствующее современным требованиям.<br>Наши малыши рассказали стихи о науке, а старшеклассники продемонстрировали возможности нового оборудования и даже пригласили принять участие в опытах И.П. Букалова.<img class=\"wp-image-1648 alignright\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-scaled.jpg\" alt=\"\" width=\"251\" height=\"170\" srcset=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-scaled.jpg 2560w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-300x204.jpg 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-1024x696.jpg 1024w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-768x522.jpg 768w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-1536x1044.jpg 1536w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-2048x1392.jpg 2048w\" sizes=\"(max-width: 251px) 100vw, 251px\">Педагоги «Точки роста» Разбоева В.И., Прохорова Э.В., Беляков В.М. рассказали об особенностях преподавания своих дисциплин и перспективах использования возможностей Центра.<br>Ещё раз поздравляем нашу школу с открытием «Точки роста» и надеемся, что благодаря Центру наши дети достигну высоких результатов!</p><p style=\"font-weight: 400; text-align: left; padding-left: 40px;\">Центр образования естественно-научной и технологической направленностей «Точка роста» на базе на базе МКОУ «Филипповская СОШ» создан в 2021 в рамках федерального проекта «Современная школа» национального проекта «Образование». Он призван обеспечить повышение охвата обучающихся программами основного общего и дополнительного образования естественно-научной и технологической направленностей с использованием современного оборудования.</p><p style=\"font-weight: 400; padding-left: 40px;\">&nbsp; &nbsp; Центры «Точка роста» на базе общеобразовательных организаций сельской местности и малых городов создаются для формирования условий для повышения качества общего образования, в том числе за счет обновления учебных помещений, приобретения современного оборудования, повышения квалификации педагогических работников и расширения практического содержания реализуемых образовательных программ.</p><p style=\"font-weight: 400; padding-left: 40px;\">Центр «Точка роста» является частью образовательной среды общеобразовательной организации, на базе которой осуществляется:</p><p style=\"font-weight: 400; padding-left: 40px;\">—&nbsp;&nbsp;преподавание учебных предметов из предметных областей «Естественно-научные предметы», «Естественные науки», «Обществознание и естествознание», «Математика и информатика», «Технология»;<br>—&nbsp;&nbsp;внеурочная деятельность для поддержки изучения предметов естественно-научной и технологической направленностей;<br>—&nbsp;дополнительное образование детей по программам естественно-научной и технической направленностей;<br>—&nbsp;&nbsp;проведение внеклассных мероприятий для обучающихся;<br>—&nbsp;организация образовательных мероприятий, в том числе в дистанционном формате с участием обучающихся из других образовательных организаций.</p><p style=\"padding-left: 40px;\">Общая информация о национальном проекте «Образование» (в том числе знак национального проекта «Образование»), адрес официального сайта Министерства просвещения Российской Федерации в информационно-телекоммуникационной сети «Интернет» и официальная символика Министерства просвещения Российской Федерации приведены <a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/ffc7c5002b89968a067870f958e8e7c0.pdf\">в презентации.</a></p><h4 style=\"padding-left: 40px;\">Информация о национальном проекте «Образование» размещена на сайте Министерства просвещения Российской Федерации по ссылке:<br><span class=\"link-wrapper-container\"><a href=\"https://edu.gov.ru/national-project/\">https://edu.gov.ru/national-project/</a></span></h4><h4 style=\"padding-left: 40px;\">Официальный адрес Министерства просвещения Российской Федерации:<br><a href=\"https://edu.gov.ru/\">https://edu.gov.ru/</a></h4><p>&nbsp;</p><div class=\"linebottom\"></div></div>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(22,5,NULL,'<p>Российская школа переживает сегодня серьёзные преобразования. На смену парадигме знаний, умений и навыков приходит Федеральный государственный образовательный стандарт общего образования (ФГОС), в основе которого лежит формирование компетентностного подхода, развитие универсальных учебных действий. Приоритетной целью современного российского образования становится не репродуктивная передача знаний, умений и навыков от учителя к ученику, а полноценное формирование и развитие способностей ученика самостоятельно ставить учебную проблему, формулировать алгоритм её решения, контролировать процесс и оценивать полученный результат, т.е. научить учиться. Это станет залогом успешной адаптации в стремительно меняющимся обществе.</p>',500,'active','2023-10-15 19:29:32','2023-10-15 19:59:38'),(23,5,'Состояние разработки и утверждения стандартов','<h4><a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/fgos-2021-goda/\">ФГОС 2021 года</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/fgos-vtorogo-pokoleniya/\">ФГОС второго поколения</a></h4>\r\n\r\n<ul>\r\n	<li><a href=\"http://base.garant.ru/57501916/53f89421bbdaf741eb2d1ecc4ddb4c33/#block_1000\">ФГОС начального общего образования</a></li>\r\n	<li><a href=\"http://base.garant.ru/57503714/53f89421bbdaf741eb2d1ecc4ddb4c33/#block_1000\">ФГОС основного общего образования</a></li>\r\n	<li><a href=\"http://base.garant.ru/70188902/8ef641d3b80ff01d34be16ce9bafc6e0/#block_108\">ФГОС среднего (полного) общего образования</a></li>\r\n</ul>\r\n\r\n<p>Официальные информационные сайты:&nbsp;<a href=\"http://www.mon.gov.ru/\">www.mon.gov.ru</a></p>\r\n\r\n<p>&nbsp;</p>',500,'active','2023-10-15 19:30:15','2023-10-15 19:31:58'),(24,5,'Федеральные Государственные стандарты основного общего образования','<p>С 2015-2016 учебного года в МКОУ Филипповской СОШ вводится федеральный государственный стандарт основного общего образования (ФГОС ООО).</p>\r\n\r\n<p>Главная цель введения ФГОС ООО второго поколения заключается в создании условий, позволяющих решить стратегическую задачу Российского образования &ndash; повышение качества образования, достижение новых образовательных результатов, соответствующих современным запросам личности, общества и государства.</p>\r\n\r\n<p>ФГОС ООО утверждён приказом министерства образования и науки РФ.</p>\r\n\r\n<p>Что представляет собой Федеральный государственный стандарт основного общего образования? Федеральные государственные стандарты устанавливаются в Российской Федерации в соответствии с требованием Статьи 7 &laquo;Закона об образовании&raquo;. Федеральный государственный стандарт основного общего образования(СТАНДАРТ) представляет собой &laquo;совокупность требований, обязательных при реализации основной образовательной программы основного общего образования (ООП ООО) образовательными учреждениями, имеющими государственную аккредитацию&raquo;.</p>\r\n\r\n<p>Чем отличается новый стандарт от предыдущих?</p>\r\n\r\n<p>Первое отличие ФГОС от его предшественников &ndash; опора на результаты выявления запросов личности, семьи, общества и государства к результатам общего образования.</p>\r\n\r\n<p>Вторым принципиальным отличием ФГОС является их ориентация на достижение не только предметных образовательных результатов, но, прежде всего, на формирование личности учащихся, овладение ими универсальными способами учебной деятельности.</p>\r\n\r\n<p>Третье принципиальное отличие новых стандартов от предшествующих версий &mdash; это отличие в структуре.</p>\r\n\r\n<p>ФГОС ориентирует образование на достижение нового качества, адекватного современным (и даже прогнозируемым) запросам личности, общества и государства.</p>\r\n\r\n<p>Введение стандарта второго поколения во многом изменит школьную жизнь ребенка. Речь идет о новых формах организации обучения, новых образовательных технологиях, новой открытой информационно-образовательной среде, далеко выходящей за границы школы. Именно поэтому в стандарт, например, введена Программа формирования универсальных учебных действий, а учебные программы ориентированы на развитие самостоятельной учебной деятельности школьника (на такие виды учебной и внеучебной (внеурочной) деятельности, как учебное проектирование, моделирование, исследовательская деятельность, ролевые игры и др.)</p>\r\n\r\n<p>Отличительной особенностью нового стандарта является его деятельностный характер, ставящий главной целью развитие личности школьника. На уроках сейчас основное внимание будет уделяться развитию видов деятельности ребенка, выполнению различных проектных, исследовательских работ. Важно не просто передать знания школьнику, а научить его овладевать новым знанием, новыми видами деятельности.</p>\r\n\r\n<p>На ступени основного общего образования (5-9) кл у обучающихся должно быть сформировано умение учиться и способность к организации своей деятельности &mdash; умение принимать, сохранять цели и следовать им в учебной деятельности, планировать свою деятельность, осуществлять ее контроль и оценку, взаимодействовать с педагогом и сверстниками в учебном процессе&raquo;.</p>\r\n\r\n<p><strong>Какие требования выдвигает новый стандарт?</strong></p>\r\n\r\n<p>Стандарт выдвигает три группы требований:</p>\r\n\r\n<p>1) Требования к структуре основной образовательной программы основного общего образования.</p>\r\n\r\n<p>Каждое образовательное учреждение, исходя из своей уникальности, разрабатывает собственную образовательную программу, Учебный план, учитывая, в том числе запросы и пожелания родителей школьников. Родители должны познакомиться с программой, чтобы понимать, как будут учить ребенка, по каким технологиям, чему его научат, какими качествами и умениями он будет обладать по окончании основной школы. В учебный план внесены следующие предметы:</p>\r\n\r\n<p>2) Требования к результатам освоения основной образовательной программы основного общего образования.</p>\r\n\r\n<p>Итогом обучения должна будет стать совокупность результатов:</p>\r\n\r\n<p>&mdash; личностных (способность к саморазвитию, желание учиться и др.);<br />\r\n&mdash; метапредметных (универсальные учебные действия);<br />\r\n&mdash; предметных (система основных знаний).</p>\r\n\r\n<p>Оцениваться будет не то, что запомнил ребенок, а то, как он понял изученный материал и может ли его применить в разных ситуациях. Наряду с традиционными устными и письменными работами у учеников появится возможность &laquo;накопительной оценки&raquo; за выполнение тестов, проектов, различных творческих работ. Это могут быть рисунки, сочинения, наблюдения, аудио-, видеоработы, газеты, презентации, создание личного портфолио с коллекцией достижений ученика.</p>\r\n\r\n<p>3) Требования к условиям: реализации основной образовательной программы основного общего образования.</p>\r\n\r\n<p>Раньше никто не вписывал в стандарты нормы, определяющие техническое оснащение учебного процесса, кадровые и финансовые ресурсы. В новом стандарте четко описываются требования к информационному пространству, материально-техническому обеспечению, учебному оборудованию, кадровым и финансовым условиям.</p>\r\n\r\n<p>С информацией о новых образовательных стандартах, образовательными программами по учебным предметам можно ознакомиться на сайте&nbsp;<a href=\"http://www.standart.edu.ru/\">www.standart.edu.ru</a>. Сайт Министерства образования и науки РФ:&nbsp;<a href=\"http://mon.gov.ru/dok/fgos/7195/\">http://mon.gov.ru/dok/fgos/7195/</a></p>\r\n\r\n<p>В настоящее время школа работает над созданием основной образовательной программой основного общего образования</p>',500,'active','2023-10-15 19:33:05','2023-10-15 19:33:05'),(25,5,'Внедрение ФГОС НОО и ФГОС ООО с 01.09.2022 г.','<p>&nbsp;Министерством просвещения утверждены новые федеральные государственные образовательные стандарты (далее &ndash; ФГОС) начального общего и основного общего образования (далее &ndash; НОО и ООО соответственно). Обновлённая редакция ФГОС сохраняет принципы вариативности в формировании школами основных образовательных программ начального общего и основного общего образования, а также учёта интересов и возможностей как образовательных организаций, так и их учеников. Именно с 1 сентября 2022 года начнут действовать ФГОС в каждой школе, а обучающиеся, которые будут приняты на обучение в первые и пятые классы в 2022 году, будут учиться уже по обновленным ФГОС. Для несовершеннолетних обучающихся, зачисленных на обучение до вступления в силу настоящих приказов, возможно обучение по новым ФГОС с согласия их родителей (законных представителей).</p>\r\n\r\n<p>&nbsp;В обновлённых ФГОС сформулированы максимально конкретные требования к предметам всей школьной программы соответствующего уровня, позволяющие ответить на вопросы: что конкретно школьник будет знать, чем овладеет и что освоит. Обновлённые ФГОС также обеспечивают личностное развитие учащихся, включая гражданское, патриотическое, духовно-нравственное, эстетическое, физическое, трудовое, экологическое воспитание.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Обновлённые ФГОС описывают систему требований к условиям реализации общеобразовательных программ, соблюдение которых обеспечивает равенство возможностей получения качественного образования для всех детей независимо&nbsp; от места жительства и дохода семьи. Благодаря обновлённым стандартам школьники получат больше возможностей для того, чтобы заниматься наукой, проводить исследования, используя передовое оборудование.</p>',500,'active','2023-10-15 19:45:22','2023-10-15 19:45:22'),(26,5,'Внедрение ФГОС СОО  с 01.09.2023 г.','<p><strong>&nbsp;С 1 сентября 2023 года обучающиеся 10 классов российских&nbsp; школ переходят на&nbsp; обновленный Федеральный государственный образовательный стандарт среднего общего образования (ФГОС СОО), утвержденный Приказом Минпросвещения от 12.08.2022 № 732.</strong></p>\r\n\r\n<p>Федеральные государственные образовательные стандарты (ФГОС) общего образования &ndash; это совокупность требований, обязательных при реализации основных образовательных программ начального общего, основного общего, среднего общего образования образовательными учреждениями, имеющими государственную аккредитацию.</p>\r\n\r\n<p>Они&nbsp;обеспечивают преемственность основных образовательных программ начального общего, основного общего, среднего общего образования и включают:</p>\r\n\r\n<p>&mdash; требования к структуре основных образовательных программ, в том числе требования к соотношению частей основной образовательной программы и их объёму, а также к соотношению обязательной части основной образовательной программы и части, формируемой участниками образовательного процесса;</p>\r\n\r\n<p>&mdash; требования к условиям реализации основных образовательных программ, в том числе кадровым, финансовым, материально-техническим и иным условиям;</p>\r\n\r\n<p>&mdash; требования к результатам освоения основных образовательных программ.</p>',500,'active','2023-10-15 19:46:19','2023-10-15 19:46:19'),(27,5,'Нормативные основания введения ФГОС ООО (федеральный уровень)','<ul>\r\n	<li>Федеральный закон РФ&nbsp; &laquo;<a href=\"http://www.consultant.ru/document/cons_doc_LAW_140174/\">Об образовании в Российской Федерации</a>&raquo;</li>\r\n	<li>Национальная образовательная инициатива &laquo;<a href=\"http://base.garant.ru/6744437/\">Наша новая школа</a>&raquo;;</li>\r\n	<li>Постановление Главного государственного санитарного врача РФ&nbsp; &laquo;Об утверждении СанПиН 2.4.22821-10 &laquo;<a href=\"http://base.garant.ru/12183577/53f89421bbdaf741eb2d1ecc4ddb4c33/#block_1000\">Санитарно-эпидемиологические требования к условиям и организации обучения в общеобразовательных учреждениях</a>&raquo;;</li>\r\n	<li>Единый квалификационный справочник должностей руководителей, специалистов и служащих&nbsp;<a href=\"http://base.garant.ru/199499/53f89421bbdaf741eb2d1ecc4ddb4c33/#block_1000\">&laquo;Квалификационные характеристики должностей работников образования&raquo;;</a></li>\r\n	<li>Приказ Минобрнауки РФ &laquo;<a href=\"http://base.garant.ru/198112/\">О порядке аттестации педагогических работников государственных и муниципальных образовательных учреждений</a>&raquo;;</li>\r\n	<li>Приказ Минобрнауки РФ&nbsp; &laquo;<a href=\"http://www.rg.ru/2011/02/16/obr-trebovaniya-dok.html\">Об утверждении федеральных требований к образовательным учреждениям в части минимальной оснащенности учебного процесса и оборудования учебных помещений</a>&raquo;;</li>\r\n	<li>Приказ Минобрнауки РФ&nbsp; &laquo;<a href=\"https://rg.ru/2011/02/16/obr-sdorovje-dok.html\">Об утверждении федеральных требований к образовательным учреждениям в части охраны здоровья обучающихся, воспитанников</a>&raquo;;</li>\r\n	<li><a href=\"https://fgosreestr.ru/wp-content/uploads/2017/03/primernaja-osnovnaja-obrazovatelnaja-programma-osnovogo-obshchego-obrazovanija.pdf\">Примерная основная образовательная программа</a></li>\r\n</ul>',500,'active','2023-10-15 19:48:14','2023-10-15 19:48:14'),(28,7,'Изменения показателей бюджетной сметы','<p><a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2018-god/\">Изменение показателей бюджетной сметы 2018 год</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2019-god/\">Изменение показателей бюджетной сметы 2019 год</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2020-god/\">Изменение показателей бюджетной сметы 2020 год</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2021-god/\">Изменение показателей бюджетной сметы 2021 год</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2022-god/\">Изменение показателей бюджетной сметы 2022 год</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2023-god/\">Изменение показателей бюджетной сметы 2023 год</a></p>',500,'active','2023-10-15 19:54:10','2023-10-15 19:54:10'),(29,7,'Бюджетная смета',NULL,500,'active','2023-10-15 19:54:37','2023-10-15 19:58:04');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `surname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `patronymic` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `classroom_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `students_user_id_foreign` (`user_id`),
  KEY `students_classroom_id_foreign` (`classroom_id`),
  CONSTRAINT `students_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,9,'Майя','Миронова','Евгеньевна',2,'2023-10-16 22:43:41','2023-10-16 22:43:41'),(2,10,'Вячеслав','Мишин','Андреевич',2,'2023-10-16 22:43:41','2023-10-16 22:43:41'),(3,11,'Алиса','Евсеева','Николаевна',2,'2023-10-16 22:43:41','2023-10-16 22:43:41'),(4,18,'Искра','Медведева','Тимуровна',2,'2023-10-16 22:43:43','2023-10-16 22:43:43'),(5,19,'Вероника','Сафонова','Александровна',1,'2023-10-16 22:43:43','2023-10-16 22:43:43');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_subject` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Русский язык','2023-10-16 22:43:37','2023-10-16 22:43:37'),(2,'Литературное чтение','2023-10-16 22:43:37','2023-10-16 22:43:37'),(3,'Физическая культура','2023-10-16 22:43:37','2023-10-16 22:43:37'),(4,'Лингвистический практикум по иностранному языку','2023-10-16 22:43:38','2023-10-16 22:43:38'),(5,'Осмысленное чтение','2023-10-16 22:43:38','2023-10-16 22:43:38'),(6,'Технология','2023-10-16 22:43:38','2023-10-16 22:43:38'),(7,'Физика','2023-10-16 22:43:38','2023-10-16 22:43:38'),(8,'Разговоры о важном','2023-10-16 22:43:38','2023-10-16 22:43:38'),(9,'Немецкий язык','2023-10-16 22:43:38','2023-10-16 22:43:38'),(10,'Основы безопасности жизнедеятельности','2023-10-16 22:43:38','2023-10-16 22:43:38'),(11,'История России. Всеобщая история','2023-10-16 22:43:38','2023-10-16 22:43:38'),(12,'Основы духуовно-нравственных культур народов России','2023-10-16 22:43:38','2023-10-16 22:43:38'),(13,'Изобразительное искусство','2023-10-16 22:43:38','2023-10-16 22:43:38'),(14,'Основы религиозных культур и светской этики','2023-10-16 22:43:38','2023-10-16 22:43:38'),(15,'Литература','2023-10-16 22:43:38','2023-10-16 22:43:38'),(16,'Английский язык','2023-10-16 22:43:38','2023-10-16 22:43:38'),(17,'Математика','2023-10-16 22:43:38','2023-10-16 22:43:38'),(18,'География','2023-10-16 22:43:38','2023-10-16 22:43:38'),(19,'Химия','2023-10-16 22:43:38','2023-10-16 22:43:38'),(20,'Обществознание','2023-10-16 22:43:38','2023-10-16 22:43:38');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `surname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `patronymic` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `job_title` json DEFAULT NULL,
  `role_id` bigint unsigned NOT NULL,
  `main_photo_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `speciality` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `totalExperience` int DEFAULT NULL,
  `generalTeachingExperience` int DEFAULT NULL,
  `qualification` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `isAdministration` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `teachers_role_id_foreign` (`role_id`),
  KEY `teachers_user_id_foreign` (`user_id`),
  KEY `teachers_main_photo_id_foreign` (`main_photo_id`),
  CONSTRAINT `teachers_main_photo_id_foreign` FOREIGN KEY (`main_photo_id`) REFERENCES `photos` (`id`),
  CONSTRAINT `teachers_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `teachers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,1,'Федосья','Брагина','Максимовна','[\"Учитель математики\"]',2,NULL,'2023-10-16 22:43:36','2023-10-17 22:18:09','Учитель математики','Высшее',22,50,'Первая категория',0),(2,2,'Раиса','Владимировна','Борисовна','[\"Учитель английского языка\"]',2,NULL,'2023-10-16 22:43:36','2023-10-17 22:17:13','Учитель английского языка','Высшее',11,23,'Первая категория',0),(3,3,'Ростислава','Исакова','Романович','[\"Учитель начальных классов\"]',2,NULL,'2023-10-16 22:43:36','2023-10-17 22:16:13','Учитель начальных классов','Высшее',20,17,'Первая категория',0),(4,4,'Анна','Владимирова','Андреевна','[\"Заместитель директора по АХЧ\"]',2,64,'2023-10-16 22:43:36','2023-10-17 22:28:55',NULL,'Среднее',5,41,'',1),(5,5,'Жанна','Кондратьева','Евгеньевна','[\"Заместитель директора по воспитательной работе\", \"Учитель начальных классов\"]',2,63,'2023-10-16 22:43:36','2023-10-17 22:28:22','Педагогическое образование начальное образование , школьное образование','Высшее',36,32,'Высшая категория',1),(6,6,'Александра','Логинова','Александровна','[\"Учитель начальных классов\"]',2,62,'2023-10-16 22:43:36','2023-10-17 22:27:29','Педагогика и методика начального образования','Высшее',28,8,'Первая категория',0),(7,7,'Тимур','Селезнев','Борисович','[\"Заместитель директора по учебной работе\", \"Учитель начальных классов\"]',2,61,'2023-10-16 22:43:36','2023-10-17 22:26:36','Учитель начальных классов. Преподаватель дошкольной педагогики и психологии','Высшее',19,45,'Высшая категория',1),(8,8,'Марина','Евдокимова','Владимировна','[\"Директор\", \"Учитель русского языка и литературы\"]',2,60,'2023-10-16 22:43:37','2023-10-17 22:25:52','Филология','Высшее',11,26,'Высшая категория',1);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_blocked` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'no',
  `last_activity_at` datetime DEFAULT NULL,
  `avatar` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `telegram_login` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `telegram_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Федосья Максимовна Брагина','stanislav.martynov@example.org','2023-10-16 22:43:36','$2y$10$AdB0wyv13I7G11j37tiqhOC1ran/48/q4dCm0Gd9kz529ePz/AiV6','nUdyDqbvrk','2023-10-16 22:43:36','2023-10-18 17:12:09','no','2023-10-18 20:12:09',NULL,NULL,'(35222) 03-8436',NULL,NULL,NULL),(2,'Раиса Борисовна Владимироваа','baranova.faina@example.org','2023-10-16 22:43:36','$2y$10$2FMD1cmX8OtuHUiYZXaYXOWK0m5EDpTWDOyanHVFIEPh4Asy8A0SK','xgr9ruQ2EG','2023-10-16 22:43:36','2023-10-18 17:17:36','no','2023-10-18 20:17:36',NULL,NULL,'8-800-517-5572',NULL,NULL,NULL),(3,'Ростислав Романович Исаков','rodion42@example.org','2023-10-16 22:43:36','$2y$10$nO81e2W5pzt9M8Cl12Zd0e3IVv40OF5y4MCk8ftioLQ3ToseRkXlK','MoWH6eFH1N','2023-10-16 22:43:36','2023-10-17 22:48:34','no','2023-10-18 01:48:34',NULL,NULL,'(812) 199-18-21',NULL,NULL,NULL),(4,'Владимирова Анна Андреевна','wdmitriev@example.net','2023-10-16 22:43:36','$2y$10$KmXFhIa2ZtQ7pKmKGz6QoOcv55oLeC1K60wIy7wnqAVb9Tqo2samK','ZQ21MHvXyL','2023-10-16 22:43:36','2023-10-16 22:43:36','no',NULL,'http://localhost:7777/storage/data/photo/album/b36f0b9c28c13390a2229d95f2198e40.png',NULL,'(35222) 28-3527',NULL,NULL,NULL),(5,'Жанна Евгеньевна Кондратьеваа','gdoronina@example.org','2023-10-16 22:43:36','$2y$10$PUbrDPW/YdWE5QibLscVROUKKfY0WIIgztlU3Qmw5RpxcONbop54y','GMlrMeHsyt','2023-10-16 22:43:36','2023-10-16 22:43:36','no',NULL,'http://localhost:7777/storage/data/photo/album/c5b308721a0d1e58f8740807e3fb0f49.jpg',NULL,'8-800-286-4164',NULL,NULL,NULL),(6,'Логинова Александра Александровна','pmartynova@example.org','2023-10-16 22:43:36','$2y$10$Iq3hPMwd4DPUFI5Sw5t.1.5ilY4sBnGaQV42qRV1I38ZOJEYDINSy','fPCw426IO5','2023-10-16 22:43:36','2023-10-18 17:17:56','no','2023-10-18 20:17:56','http://localhost:7777/storage/data/photo/album/e73cbf46d93dcac657c55edc1aa837b6.png',NULL,'+7 (922) 982-9637',NULL,NULL,NULL),(7,'Селезнёва Тимур Борисович','zimina.inga@example.org','2023-10-16 22:43:36','$2y$10$iSoOlAGcRw4RRjToj3V8tu0uBj/DsM.xZE3MDPtWH8QSwBcavongi','lItRWMdf4O','2023-10-16 22:43:37','2023-10-18 16:06:12','no','2023-10-18 19:06:12','http://localhost:7777/storage/data/photo/album/ab567e6d22d9d7cb5c7b879bc7eb7c9a.png',NULL,'(495) 192-9579',NULL,NULL,NULL),(8,'Марина Владимировна Евдокимова','lytkina.sava@example.org','2023-10-16 22:43:37','$2y$10$vC7AMToDZpZPvmeiT2pw/egpz634nayD3qzswDg0QSeipfFXyYIfS','PHSh82RrOg','2023-10-16 22:43:37','2023-10-18 16:05:26','no','2023-10-18 19:05:26','http://localhost:7777/storage/data/photo/album/bfbdabe38a43591bc726e957e47a0381.png',NULL,'(495) 954-7943',NULL,NULL,NULL),(9,'Миронова Майя Евгеньевна','petukova.vera@example.com','2023-10-16 22:43:41','$2y$10$pALfV/gFhzDsOaqhzWOkiOo62kdJV/V69iex9HebXRqTDhsf6dpkq','1W2G6rNufP','2023-10-16 22:43:41','2023-10-17 22:40:57','no','2023-10-18 01:40:57',NULL,NULL,'(35222) 97-3893',NULL,NULL,NULL),(10,'Мишин Вячеслав Андреевич','alekseeva.tit@example.net','2023-10-16 22:43:41','$2y$10$BpuzKdQiTWk6wIbujfZGtuHo/0KVc1EA/ODflWZLpVJJlVmvVCNHm','mOVWAsNEDr','2023-10-16 22:43:41','2023-10-18 17:17:05','no','2023-10-18 20:17:05',NULL,NULL,'8-800-386-2406',NULL,NULL,NULL),(11,'Алиса Николаевна Евсеева','ekaterina90@example.com','2023-10-16 22:43:41','$2y$10$PcllrlHfJBwa4KvMfbXbHe1KAinWve2ZGBByxFd.zFVabmTL7dfEa','yLwokz7Q5P','2023-10-16 22:43:41','2023-10-16 22:43:41','no',NULL,NULL,NULL,'+7 (922) 311-0654',NULL,NULL,NULL),(12,'Ананий Евграфович Горбачёв','nelli45@example.net','2023-10-16 22:43:41','$2y$10$RawO1d2L8WOmFhMzppXMP.7dWdgy4p0Ia5Jm6MD5kmmxANi3CFska','yE4FGXb8jy3HufitGpg8yW2srF8ONGwJhQmJxYJ3TXi7kK0IktQwTqyBQ9L7','2023-10-16 22:43:41','2023-10-18 16:16:30','no','2023-10-18 19:16:30',NULL,NULL,'(812) 670-62-32',NULL,NULL,NULL),(13,'Варвара Евгеньевна Крюкова','bobyleva.erik@example.net','2023-10-16 22:43:41','$2y$10$1XJsni1jcqlkEaFvxBYh6.zctuNHCn51HXT4j2CuS8kJY/dwhyegC','hHA2POrYh9','2023-10-16 22:43:41','2023-10-16 22:43:41','no',NULL,NULL,NULL,'8-800-323-8392',NULL,NULL,NULL),(14,'Игнатий Владимирович Крюков','sobolev.maksim@example.com','2023-10-16 22:43:41','$2y$10$mf3OPNsQ/wdEOXn93g.pEeT0IkJfn9bt9EtdXtP2aBae8Ivwes.9a','4VIrcSY4Mi','2023-10-16 22:43:42','2023-10-17 22:49:57','no','2023-10-18 01:49:57',NULL,NULL,'(812) 189-27-05',NULL,NULL,NULL),(15,'Анна Ильинишна Панова','roman58@example.com','2023-10-16 22:43:42','$2y$10$NR32xSeFYjZ.t4VlOUUKl.qFCn37fv.d8p4/8VVVF46v20IwU5CYK','J940TqSO2b','2023-10-16 22:43:42','2023-10-17 22:50:20','no','2023-10-18 01:50:20',NULL,NULL,'(812) 683-84-53',NULL,NULL,NULL),(16,'Валерия Евгеньевна Степанова','olesy.ykuseva@example.com','2023-10-16 22:43:42','$2y$10$ANeCgBhDuZc/h7rYIJ3WA.wRRA.vzMp.1DFnVtsq1P6.dZnFdXfji','ZbgC9uiICy','2023-10-16 22:43:42','2023-10-16 22:43:42','no',NULL,NULL,NULL,'8-800-447-6346',NULL,NULL,NULL),(17,'Инна Злата Львовна','nina84@example.org','2023-10-16 22:43:42','$2y$10$9pQOKWQymbQSiSLUPPpoxuQLmD97Lipty7SzSFEC92xRap2O419zC','buZQIk6nvH','2023-10-16 22:43:42','2023-10-16 22:43:42','no',NULL,NULL,NULL,'8-800-889-9095',NULL,NULL,NULL),(18,'Искра Михайловна Кудрявцев','koklov.svytoslav@example.com','2023-10-16 22:43:43','$2y$10$dN71MMOHGsaPoUpcq68dXuFoR7rSzB3lbQShkxIMhwVznExPzdTBS','1mhF9oUAhU','2023-10-16 22:43:43','2023-10-16 22:43:43','no',NULL,NULL,NULL,'(35222) 57-3512',NULL,NULL,NULL),(19,'Вероника Александровна Сафонова','nkuznetov@example.org','2023-10-16 22:43:43','$2y$10$XJsd/8ghxySGj1ArsLEZ.eWnMf6o9IpNS4Zqg28kUueSOkLZOI5zS','mkeHqwZC09','2023-10-16 22:43:43','2023-10-16 22:43:43','no',NULL,NULL,NULL,'(495) 887-3016',NULL,NULL,NULL),(20,'Владимирова Болеслав Дмитриевич','user@mail.ru','2023-10-16 22:43:56','$2y$10$0VE5BzbPVm80h1AqCVhffubrSqnrCA8FopULE2CBWLZUsVc3OgD1K','70284aXV93','2023-10-16 22:43:56','2023-10-16 22:43:56','no',NULL,NULL,NULL,'(35222) 52-9312',NULL,NULL,NULL),(21,'Ирина Максимовна Крюковаа','admin@mail.ru','2023-10-16 22:43:56','$2y$10$IvAT9.P.q.HQbXsH9VZKTeqI23Cugw7CZFdUFV1Kor5ikXT3hyWcm','h6Ncycf662nDKDBnK0oVeV9SgQHj2PDA7EpGqHQpsWQ2GWGTUAs32JjkK6c5','2023-10-16 22:43:56','2023-10-18 16:55:26','no','2023-10-18 19:55:26',NULL,NULL,'(812) 780-28-05',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `sch`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sch` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `sch`;

--
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_photo`
--

DROP TABLE IF EXISTS `album_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album_photo` (
  `photo_id` bigint unsigned NOT NULL,
  `main_img` tinyint(1) NOT NULL DEFAULT '0',
  `album_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `album_photo_photo_id_foreign` (`photo_id`),
  KEY `album_photo_album_id_foreign` (`album_id`),
  CONSTRAINT `album_photo_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE,
  CONSTRAINT `album_photo_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_photo`
--

LOCK TABLES `album_photo` WRITE;
/*!40000 ALTER TABLE `album_photo` DISABLE KEYS */;
INSERT INTO `album_photo` VALUES (1,1,1,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(2,1,2,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(3,1,3,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(4,0,2,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(5,0,2,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(6,0,1,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(7,0,3,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(8,0,1,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(9,0,3,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(10,0,1,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(11,0,1,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(12,0,2,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(13,0,1,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(14,0,1,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(15,0,1,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(16,0,3,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(17,0,2,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(18,0,2,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(19,0,1,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(20,0,3,'2023-10-14 11:10:14','2023-10-14 11:10:14');
/*!40000 ALTER TABLE `album_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `nameEng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `relationship` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `albums_nameeng_unique` (`nameEng`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'voluptatem','Odio quod unde nihil vero. Sint molestiae soluta id tempora dignissimos officia.','aspernatur',1,0,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(2,'vero','Blanditiis in autem nesciunt quia eveniet. Suscipit adipisci autem omnis voluptatibus aliquam quas.','quis',1,0,'2023-10-14 11:10:14','2023-10-14 11:10:14'),(3,'et','Atque voluptatem dolore consequatur illum unde non. Dolore fugiat quasi eligendi optio aut eum.','consequatur',1,0,'2023-10-14 11:10:14','2023-10-14 11:10:14');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appeals`
--

DROP TABLE IF EXISTS `appeals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appeals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `question` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `response` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `category_id` bigint unsigned NOT NULL,
  `top_questions` tinyint(1) NOT NULL DEFAULT '0',
  `date_completion` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `appeals_category_id_foreign` (`category_id`),
  CONSTRAINT `appeals_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `appeals_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appeals`
--

LOCK TABLES `appeals` WRITE;
/*!40000 ALTER TABLE `appeals` DISABLE KEYS */;
INSERT INTO `appeals` VALUES (1,'Debitis earum fugit delectus cum saepe nesciunt. Deleniti est atque quod et consequatur. Tenetur omnis inventore et quam est. Officiis illum provident accusamus earum et.','bvoronova@example.net','Vitae quis quibusdam nihil eos deleniti culpa. Et numquam sit voluptate natus. Incidunt ipsum non enim vel enim qui non. Qui voluptatibus rerum incidunt quaerat cumque explicabo.',0,'Repellat voluptatem illum incidunt est neque quasi aperiam culpa. Quia asperiores et doloremque ipsum dolor culpa similique. Rerum suscipit repellat optio adipisci consectetur optio. Sint eaque qui nam numquam maxime labore eveniet minus. Nesciunt maiores velit voluptas. Eum sint nam rerum molestias voluptatum cum. Consequatur labore sed quibusdam molestiae. Laboriosam distinctio suscipit rem alias rem. Nihil eaque perferendis aut consequatur adipisci. Repellendus provident doloremque est impedit et enim illum. Reiciendis deleniti nulla nihil qui. Unde aliquid esse sunt exercitationem rerum dolores. Voluptatibus pariatur aliquam laborum est necessitatibus non. Porro necessitatibus similique sint atque nisi. Voluptatem asperiores aut repellendus vel. Aliquam sit eaque odit modi ad perferendis. Quisquam qui omnis facere ducimus et voluptatem doloremque. Minus cupiditate assumenda recusandae ab. Omnis tempore quam veritatis perferendis facere non. Ut perferendis sint id perspiciatis ea. Delectus minima atque et quam. Cupiditate voluptas illum ea ea. Repellat commodi magni vel veniam aut. Debitis dolor vero minus autem eaque distinctio. Sapiente aut quo illum porro. Exercitationem quos sint omnis voluptas molestiae tempora. Consectetur accusantium vel et esse dolorum blanditiis nam. Suscipit quia ad eum explicabo veritatis nihil est. Aut laborum ipsa quae autem. Voluptatem ut quo distinctio et. Nisi aut odit delectus qui assumenda perspiciatis. Quia et doloribus exercitationem velit adipisci vitae libero. Sed occaecati accusantium ut similique adipisci deleniti. Consequatur quisquam praesentium reprehenderit laborum id. Esse hic consequatur minus quam et. Tempore placeat fuga dignissimos itaque velit et quos. Non ut aut quis sunt est ut. Dolore reprehenderit sequi suscipit esse voluptatibus rerum laudantium vitae. Vel est error minima atque magni. Odio id nostrum itaque omnis commodi ex sunt. Unde numquam delectus iste unde ullam earum perferendis. Minus quos expedita facilis velit mollitia dicta. Perferendis voluptatum labore temporibus eius molestiae dolorum. Inventore officia maxime tenetur magni sed praesentium. Voluptatum quas repellendus incidunt cupiditate voluptas hic corrupti. Quae voluptatem eos maiores. Molestiae qui consequuntur velit. Officiis et iure quia pariatur ab incidunt voluptas. Rerum incidunt soluta excepturi adipisci molestias. Doloribus nihil nihil voluptatem. Et dolor officia in voluptatem est. Est inventore optio fugiat voluptatum. Voluptates numquam id voluptas et quod. Dolorem voluptate maiores ea minus. Cumque quam vel enim doloremque ut exercitationem. Exercitationem ullam architecto pariatur incidunt. Dolorum cum ea et qui et et. Ex tenetur consectetur reprehenderit aut qui et. Dolor aut officiis et eum rerum eveniet illum. Alias quo rerum eius. Quos nam distinctio quo et. Quam dignissimos debitis autem minima reiciendis esse velit ab. Deleniti omnis natus ab dolorem eum velit.',1,0,'2023-10-14 14:10:19','2018-11-21 07:00:44','2019-07-30 07:08:42'),(2,'Vitae laudantium dolorem voluptas in et non. Incidunt est esse quam natus omnis at expedita. Dolore nostrum ullam voluptates porro. Laudantium asperiores perspiciatis et cum nihil explicabo.','blukin@example.net','Culpa possimus alias perferendis corporis. Inventore sit sit et magni earum. Error architecto distinctio id quas sapiente beatae. Quis labore omnis pariatur dolores et.',0,'Consequuntur non enim mollitia eos laborum molestiae sit. Enim architecto fugiat nam omnis consequuntur. Animi laboriosam impedit qui consequatur animi. Quia et in ea esse soluta. Facere facilis illo unde consequuntur architecto maiores possimus aut. Ex qui dolorem incidunt tempore dolor fuga. Facere aperiam nihil laudantium non in. Quisquam dolorem culpa modi qui maxime est molestiae. Est hic voluptas maxime. Iure dolores facilis at explicabo quis. Inventore velit voluptatibus animi dicta quasi aut quia. Omnis sed est a velit deserunt neque. Accusamus consequatur molestias fugit et animi asperiores blanditiis sit. Eligendi at doloribus et enim dolorem. Perferendis perspiciatis ab consequatur quia cum. Est aut ducimus at. Dolore hic voluptas sed odio ad autem eos. Non nihil et sed blanditiis mollitia deserunt. Sint vel ut labore est quas. Veniam sit enim qui minus consequatur eum. Cum distinctio nihil ad quisquam quia. Molestiae eligendi eligendi perspiciatis nemo modi. Dicta est velit consequatur possimus maxime cum unde. Amet non quas magnam ipsam earum non ut fuga. Aut aperiam velit voluptate veritatis totam aliquid. Sit perspiciatis recusandae cumque cupiditate. Provident quam delectus illo. Recusandae necessitatibus aut mollitia architecto sint. Aut eligendi magni voluptatem fugit nihil. Vitae laboriosam vitae et at. Quia et voluptate harum aut. Iusto esse id dolorem eos ut. In commodi itaque iusto odio explicabo. Expedita eius fuga officia aut. Voluptas porro harum rerum quasi suscipit dolores. Doloribus possimus vel sit laboriosam placeat aut illo consectetur. Omnis repudiandae ex recusandae voluptate deserunt enim. Quasi quidem harum quos est tempora assumenda. Voluptatem sint excepturi eum pariatur enim quam. Deleniti et dicta error eos provident molestiae. Facilis temporibus occaecati modi sit. Veniam sed vel tempora distinctio fuga molestias ad. Sit aut temporibus tempora nulla. Assumenda omnis perferendis fugit excepturi vero minima ipsum. Autem similique ut natus placeat sint quia. Rerum ea ex quibusdam. Sunt dolore perferendis nam quidem deserunt consequatur. Sed consequatur laudantium rerum voluptas est. Vel rem id temporibus explicabo similique. Molestias reprehenderit nam tempore aut et. Sed dolorum voluptatum provident qui ipsa temporibus ad. Suscipit dicta quia ab non et ut et. Vel totam saepe hic adipisci. Ab consequatur accusamus odio ducimus veniam. Unde velit atque doloremque. Delectus vero magni debitis voluptatem sunt officiis fugit. Voluptatem quos omnis itaque dolor sed iusto asperiores. Delectus voluptatem est at repellendus. In enim commodi et vel qui incidunt. Vero repellat dicta explicabo recusandae ex voluptatem minima. Iure rerum repellendus magnam fuga inventore. Blanditiis aliquam veniam temporibus soluta quia rerum. Id eum quo praesentium voluptatem eveniet non.',1,0,NULL,'2019-04-12 14:10:26','2022-10-14 08:19:49'),(3,'Quis rem cum et. Ipsum quo eos sit non. Eos ipsum sit cupiditate ut. Sint soluta consectetur sit non sit voluptatem ex ea. Accusantium quis esse inventore ratione voluptatem tenetur.','larisa.panfilova@example.net','Aperiam recusandae ullam ipsum est sed eum tempora. Officia sunt quo totam voluptatem. Ea aperiam dolores dolor voluptatem omnis qui. Rerum quaerat ratione pariatur vel veniam delectus et.',0,'Mollitia et officiis ex rerum. Laboriosam inventore ex consequatur et officiis veritatis accusamus. Nihil non aspernatur enim sint eos debitis. Aspernatur consequatur aliquid dolores laudantium in praesentium quo. Aut amet enim blanditiis atque atque optio. Vero qui nam sed quis quisquam perferendis eos exercitationem. Unde quisquam et optio ab molestiae sit. Et odit minima et qui harum pariatur accusamus sed. Non aperiam quia nihil sit quia. Eveniet ipsam et dolorem a officiis quaerat magni molestiae. Et aut facere temporibus. Quae aperiam omnis incidunt incidunt enim consequatur tempore. Blanditiis voluptas quod natus molestiae quia ipsum aut. Eos eos temporibus odit hic velit. Mollitia corrupti magni non. Impedit et inventore officiis expedita suscipit voluptas excepturi. Sapiente vitae nisi pariatur quia. Ullam corrupti rerum et fugiat quaerat explicabo ut. Facilis corrupti est temporibus dolorem et. Quis quod voluptatum cumque temporibus molestias et distinctio. Cum omnis maxime nostrum assumenda fugiat ipsum non. Beatae vitae qui velit perferendis. Eligendi quis magni voluptate est corrupti optio repudiandae error. Est hic voluptas dolor aliquam odio molestias occaecati magnam. Porro qui iste fuga. Consequatur libero quia animi et. Corrupti suscipit porro dolorem voluptatem non est. Cum laudantium quod exercitationem dolores quam nam. Sunt mollitia repudiandae consequatur quisquam. Aspernatur exercitationem eum ratione id sequi. Numquam ut neque consequatur atque. Reiciendis quae harum quibusdam consequatur. Qui excepturi consequatur eos deleniti saepe quae reprehenderit nemo. Ex sunt doloribus omnis dolorum est. Vitae et quod quasi amet id et. Dolore est sint mollitia maiores et. Rerum et voluptatem voluptatem doloremque deleniti qui debitis placeat. Aperiam est et temporibus saepe voluptas nemo. Ad velit molestiae quia. Architecto saepe rem dolore. Vero velit praesentium ducimus quo quisquam autem et. Illo voluptas velit recusandae aliquid consectetur. Delectus et occaecati mollitia a quia. Veritatis illo magni ut labore et. Qui perferendis eligendi rerum non tenetur enim consequatur quaerat. Aut dolorem molestiae totam quae perspiciatis. Minus quos maxime debitis quia quibusdam ea. Veniam architecto voluptatem numquam aut tenetur error. Mollitia est dolor cupiditate repellendus quaerat placeat culpa aut. Cum eaque eius voluptatum assumenda odio vel. Maiores possimus harum cumque et qui dicta. Necessitatibus quia rerum et aut sed. Pariatur ducimus voluptas voluptatibus quia laborum quisquam ea. Quaerat soluta in exercitationem. Possimus neque sequi ipsa tempore velit consectetur. Vel iusto quia adipisci culpa libero impedit. Quia architecto quo consequatur. Temporibus officia aperiam rerum rerum non ipsum ratione. Nesciunt provident optio ea quo. Perferendis eum quia sed. Itaque et impedit et voluptate nobis provident quo. Deserunt pariatur similique harum quo aspernatur.',2,1,'2023-10-14 14:10:19','2022-01-03 10:08:50','2022-07-07 09:06:12'),(4,'Ipsa earum possimus sunt eum. Ipsam quos vel aut magni. Repellendus voluptatibus quas qui error. Laborum autem eveniet voluptas labore debitis quos nulla.','margarita.rybov@example.org','Maiores quo quia voluptas dolorum. Perferendis deserunt non dolore sed ut autem. Ipsum sit neque voluptatum a. Quo et et iste totam non doloribus eum. Laboriosam consequatur omnis consequatur qui dolores vel. Sed vero ut nihil quisquam accusantium illum commodi.',0,'Sapiente qui laborum impedit maxime dolor ducimus. Consequatur facere accusantium soluta. Quia quia minus dignissimos maxime consequuntur. Id sed est et dolorem. Aperiam consequatur occaecati similique nihil dolore. Tenetur quibusdam alias ratione tempora. Iure itaque omnis vitae non ipsum nihil voluptate. Autem animi molestiae voluptatem qui aut magnam. Ducimus aut illum sed excepturi. Nesciunt asperiores est velit rerum. Numquam illo quia quas voluptas et occaecati. Officia cumque error quis a ut voluptatibus et non. Inventore molestiae non voluptate ut magni praesentium. Id ad voluptatem incidunt eum rerum atque. Quia nihil reiciendis officiis dolorem nihil laudantium. Recusandae aut et vel officia et. Voluptatum sit voluptates quia explicabo. Voluptate harum exercitationem doloremque tempore nesciunt vel. Molestiae earum saepe sed facilis quidem. Odio architecto eaque et id magnam. Fugiat ut et et. Sunt quis et sed adipisci omnis. Quia iste et nihil quo eum labore. Voluptatem nihil consequatur quia iusto necessitatibus quo veritatis. Alias ipsa sunt odit quasi. Odio ut est commodi rerum et. Accusamus sed molestias sit et aut accusantium est. Soluta labore voluptatem et aut molestias quia. Voluptatum molestiae beatae quis eos voluptas voluptatum. Libero corporis consectetur reiciendis iusto eaque inventore et. Consectetur ut est rerum dolorum ut sed eos. Deleniti nesciunt aut harum reprehenderit omnis. Nisi velit aut qui autem tenetur corporis impedit. Quae voluptatem magni quam repellendus rerum earum. Et aut recusandae sit eum officia assumenda ab. Qui et eos ut ipsum. Totam odit qui culpa consequuntur qui dolore. Labore necessitatibus commodi consequatur non aut doloremque. Sint blanditiis quis esse quia. Eos non unde est. Et aut ut suscipit repellendus exercitationem suscipit. Amet rerum quae iste laudantium dolorum natus tempore. Officia aut sed iure saepe. Voluptatem dolorem minus enim sequi ut laboriosam. Sit sit similique nobis. Et iure voluptatum quasi optio in. Nostrum quia nihil nobis. Voluptatem et quaerat expedita quos omnis. Illo sed voluptatem facere quos est. Sit ab eos velit tenetur alias. Blanditiis commodi qui dicta eaque iste molestias. Asperiores sequi quia facilis autem nihil sed sit qui. Sed cum fugit vel adipisci velit ea et quo. Cumque et repellat maxime. Esse velit occaecati sequi in iusto omnis. Voluptatem molestiae aut eveniet quibusdam. Nemo et eius similique nihil esse. Quo voluptatem est odit nobis sapiente dignissimos. Aliquid provident vel est veritatis. Maxime sapiente modi voluptas. Vero autem est sit eveniet nihil. Cum unde blanditiis quidem veritatis. Vel voluptatum ratione labore doloremque perferendis consequatur. Aspernatur ut quam molestiae doloremque consequuntur quod velit quia. Qui accusamus sequi ut animi doloribus explicabo perspiciatis.',1,1,'2023-10-14 14:10:19','2021-08-16 08:05:38','2023-05-21 09:20:07'),(5,'Repellendus iure at assumenda aliquid adipisci quibusdam. Est et vitae cumque blanditiis maxime omnis. Quia et deserunt ea quaerat.','albert.isakova@example.org','Earum tempore tempora earum inventore reprehenderit deserunt. Quia molestias et similique distinctio id ipsam vero. Minima quidem ad doloremque necessitatibus nemo ab. Non rerum ut voluptate ducimus cupiditate iste.',0,'Consectetur nihil soluta quis incidunt quod voluptatem et. Dolorem eos nulla cum ut quaerat quia. Architecto eum doloribus rerum corrupti. Odit soluta voluptatum ex consequatur magnam. Vel aut voluptate molestiae. Animi provident tempore corrupti aut sed. Porro autem enim est aliquam voluptatem. Porro aliquam aut minus repudiandae dolores ea. Quia repellat cupiditate perferendis beatae ea nulla ut sed. Accusamus molestiae quod consequatur rerum labore nihil qui. Aut nihil dolores et consectetur cupiditate est. Qui eum omnis ab maiores voluptas. Porro quas temporibus id fuga. Omnis et ratione adipisci dolorum exercitationem vel debitis. Similique ab rerum aspernatur delectus doloremque totam magnam. Dolor mollitia voluptas amet. Autem vel animi atque eveniet cumque ea ullam. Adipisci dolores odio quaerat ut corrupti. Ducimus excepturi quo maxime facere itaque neque. Aut vero sint eum rerum. Odio blanditiis nobis recusandae sapiente sed modi. Rerum illum ipsum voluptas velit. Et est aut pariatur amet eum et sint. Quaerat aliquid odit ex eligendi accusamus aut sapiente. Voluptatem excepturi molestias in veritatis aut velit labore. Tenetur enim recusandae dolorem. Ratione in et mollitia omnis praesentium sint. Sint aut itaque ea non alias voluptatem quae. Iure consequuntur expedita molestias sunt dolorum. Ut enim impedit rerum ea aspernatur. Enim et magni dolores deserunt. Nam beatae quae nulla ut dicta ut. Ut rerum incidunt autem vel iste. Vero consectetur ab enim dignissimos architecto. Illum maiores consequatur harum. Molestias aperiam non eligendi est adipisci beatae in. Molestiae ut et autem tempore. Rerum at minima neque in nihil. Dolores nobis sit molestiae voluptas magnam. Tenetur est officiis et aliquam fuga consequatur. Sit non autem voluptatem quia voluptatibus ut dolore. Nemo rerum ullam et culpa nihil unde. Et ipsum atque est quisquam corrupti et. Veniam qui ut eius illum perspiciatis magnam. Culpa aliquam quos quae sapiente sit eum. Ea repudiandae et autem itaque. Autem sint non ex voluptatem tenetur. Tempora nesciunt animi voluptas tempora sit voluptatem nisi quos. Alias provident tempora iste quaerat omnis. Enim nobis sint ut quo neque a modi recusandae. Qui eum iusto blanditiis vel blanditiis asperiores. Occaecati numquam minus distinctio et aut minima ut. Id eos repellat aliquam eligendi magnam autem et. Nisi itaque sint unde dolor. Aut expedita pariatur et beatae. Nemo reprehenderit dignissimos eius quis voluptatum a exercitationem. Quos eum quis voluptatum repellat enim esse non. Corporis ex accusantium in porro. Fuga et voluptatem culpa ut. Eveniet sit fugit earum aut corporis. Illum consectetur rem fugiat ea provident consequuntur. Earum unde quam tenetur possimus voluptate. Est dolores aspernatur incidunt. Velit eius quibusdam ipsam illum necessitatibus. Eos officia consequatur quos expedita esse qui dolor. Et quia sed dolor commodi necessitatibus molestiae.',2,0,'2023-10-14 14:10:19','2022-01-14 13:34:23','2022-05-04 01:23:31'),(6,'Corrupti magni sed sint eveniet. Dolor odio dignissimos libero corrupti. Et quia culpa aut corrupti.','arsenii.martynov@example.com','Omnis qui voluptates deserunt dicta est. Provident porro blanditiis facere consequuntur. Repellendus numquam doloribus explicabo. Deserunt sequi eos qui repellat non. Impedit incidunt quibusdam iusto eveniet modi placeat. Illo dolorum assumenda facere est porro rerum non.',0,'Ut accusamus numquam numquam. Assumenda quaerat beatae voluptatem dolores hic sed eius ut. Quod odit quas adipisci. Ut voluptas ut quo harum. Soluta suscipit culpa optio et saepe corrupti. Cumque alias in deleniti voluptatum inventore a sunt. Dolorem architecto assumenda et et voluptatibus perferendis architecto quasi. Temporibus nobis vitae voluptatibus ea porro. Molestiae nisi et ut soluta. Aut facere officiis facere impedit temporibus dignissimos facilis. Velit error facere eligendi est quidem. Modi quo perspiciatis autem facere porro odit. Et incidunt cupiditate exercitationem itaque qui ut. Sunt voluptatem accusamus eos quod a doloribus. Ea sit reiciendis hic minus sunt et quos molestias. Consequatur pariatur sed sequi ad nihil tempora eum. Quo laboriosam eum aspernatur dolor sequi. Sit earum rerum incidunt totam itaque. Eos officiis ut ut consequuntur tempore aut voluptatibus. Voluptas alias quidem enim est vel. Molestiae quasi ea qui perferendis rerum quia. Optio autem provident placeat esse praesentium. Provident beatae omnis nemo. Ut quasi veniam aut autem. Dolores vel molestias temporibus quidem quibusdam quia laudantium. Possimus dolor aperiam nam quia ut distinctio soluta. Laborum ut incidunt ratione voluptatem. Et ut commodi qui veniam modi molestiae saepe rerum. Distinctio consequatur repellendus rerum aut. Rerum ea fugiat quod consequatur consequuntur consequatur. Dignissimos dolor rem et dignissimos officiis necessitatibus sit ab. Cum voluptatem ipsum libero quo omnis. Impedit dolore est nulla ut. Sint enim consequatur accusantium recusandae numquam voluptate exercitationem. Dicta ut quo rerum et autem omnis. Sit rerum corporis et et excepturi iusto. Sunt porro id sequi est. Officiis sed dolorum alias excepturi non perspiciatis ut. Sunt in et et dicta. Ad similique sed corporis et nihil non. Deserunt inventore quo doloribus nihil. Temporibus ipsum harum et sed. Veritatis harum ut ab vel consequuntur modi. Nihil molestiae sint et nihil nobis minus iusto molestiae. Quibusdam dolores rerum sed. Adipisci ut doloremque facilis iusto. Maxime neque aspernatur veniam dolorem. Ut odio et non corrupti. Id accusantium omnis voluptatibus id delectus in quaerat. Ducimus tenetur placeat provident sint. Quisquam id quia fugiat. Dolorem ut dolores labore id non. Magni doloribus vel libero enim deleniti ut. Eius natus ullam alias temporibus ad molestiae autem omnis. Ea omnis quia ab ducimus minus. Non impedit non est magnam. Ut ut reiciendis nihil optio quaerat quia quo sed. Facilis enim qui soluta est. Eligendi architecto et neque. Quidem quasi quae ullam dolorem. Quam sequi qui voluptas eos ea accusamus. Consequatur optio dolor repellat deleniti. Et voluptas voluptatibus tenetur et et minus. Blanditiis ullam eos pariatur officia. Nemo numquam nihil et omnis minima error. Earum dolores et magni vel. Voluptatum repudiandae dicta aut ut et omnis quis.',2,1,'2023-10-14 14:10:19','2019-07-18 16:26:47','2021-12-30 02:23:49'),(7,'Optio et dignissimos et eligendi ea a. Numquam itaque asperiores nostrum ut est qui. Enim aliquam consequuntur eum natus laudantium.','vasilisa46@example.net','Molestiae cupiditate necessitatibus et sit doloribus ipsum. Dolore repudiandae eos error beatae. Et ex reprehenderit in voluptas error deleniti. Consectetur ea dicta qui est omnis qui. Dicta odio nihil velit qui explicabo et magnam. Et architecto sit est at. Beatae hic harum numquam est est.',0,'Alias eos molestiae molestias a. Necessitatibus et blanditiis commodi et non. Blanditiis repellat reprehenderit possimus vel harum quaerat. Ea quis optio cumque alias libero. Sit et dicta expedita occaecati ut quam. Fugiat quas similique quia architecto et quod autem. Qui sit veritatis dicta. Culpa praesentium consequuntur voluptas quo. Cupiditate facere est consequatur quos voluptas ut eaque. Libero libero consequuntur repudiandae esse consectetur. Perspiciatis unde dolores rerum quas facere est ut fugit. Fuga et harum id molestias. Ut qui unde necessitatibus cupiditate a deleniti. Eveniet possimus ipsum similique repudiandae ut. Est nisi sit explicabo. Quo sunt consequatur exercitationem minima aspernatur iste ut. Eius eius est fuga ut nisi quas labore. Aliquam reiciendis non sunt vitae voluptatem impedit. Qui ratione aut excepturi voluptatem. Impedit omnis velit id eveniet nostrum et totam. Quia sapiente non error et. Quas facere ducimus saepe tempora. Explicabo et similique qui optio eos. Dolore velit sequi eius molestiae odit voluptatibus fugit voluptas. Exercitationem iusto laudantium voluptatum id ipsam minus. Magnam provident dolorem veniam voluptatem molestiae. Quia sit quod itaque aliquam cumque et hic. Saepe doloribus quidem provident at. Dignissimos numquam omnis rem doloremque totam dolorem quae. Nisi dolores tenetur at consequuntur. Molestias aut aut nihil. Consequatur adipisci est temporibus eum. Maxime nemo quis iure rerum et fugit amet quos. Et et accusamus fugit sit amet et similique officia. Consequatur voluptatum beatae atque est in eligendi voluptates et. Iste qui eos maxime nobis doloribus pariatur cum. Vitae ratione fugit ut ex sint repellat architecto iste. Nesciunt ducimus aut doloribus et est. Harum qui sit ut laudantium vitae consequatur. Dolore totam est voluptas in amet provident facere. Odio modi commodi ipsum id alias est. Vitae minus consectetur incidunt et. Expedita est consequuntur ratione sequi. Ut aliquam non et laborum et delectus possimus. Nihil corrupti alias et velit ullam adipisci saepe. Blanditiis dolor tempore ut quam quibusdam cupiditate. Iure nisi voluptatibus explicabo qui corporis. Necessitatibus aut aut qui quos amet quaerat reiciendis. Facilis inventore mollitia assumenda ex et quis. Adipisci laboriosam aut quo consequatur velit distinctio voluptatum. Accusamus qui tempora quo consequatur. Nemo sed aut sunt tempore nisi doloribus non. Rerum omnis laborum aliquam fugiat ea quibusdam. Explicabo sit voluptatem esse aliquid. Et et possimus vel. Ut necessitatibus voluptatem necessitatibus molestiae dolores. Quia sequi unde dignissimos. Accusamus minus voluptatum quia culpa dolorem mollitia ipsum incidunt. Impedit magnam illo quia distinctio. Qui ullam omnis ipsam. Cum ipsam fugit temporibus esse et harum voluptas. Modi nulla enim expedita minima explicabo sit mollitia.',2,0,NULL,'2023-02-04 21:38:16','2023-06-19 09:35:59'),(8,'Consequuntur ea consequatur reiciendis corporis eveniet. Qui aspernatur eos quibusdam distinctio. Perspiciatis eaque non qui quasi est provident.','isokolov@example.org','Earum consequatur sed et quibusdam et ab. Harum magnam sit delectus. Illo numquam dolorem nulla dolorem quis dignissimos. Quia quibusdam suscipit quam aut optio et unde. Ut deleniti repellendus ullam dolorem tenetur numquam. Harum fugit animi est possimus. Enim ipsa nihil commodi et rerum voluptas.',0,'Velit cupiditate modi et vitae. Dolore qui aut et iste accusamus. Ut labore illum adipisci non qui accusamus. Nesciunt nisi voluptates consequatur est. Fugit ut animi ea voluptatibus dolores. Dolorem suscipit sed a eos quidem. Non est neque voluptatem quos labore non dolores. Odit repellendus et eum sit eveniet sed eaque. At itaque cum corrupti ratione qui dolorum. Ut autem nihil ea animi soluta sit. Quod sed ut ea vitae autem doloremque consequatur. Voluptatem aspernatur et ipsa officiis ut delectus. Voluptatem recusandae iusto accusamus qui et natus. Cum ipsa debitis earum veritatis doloribus. Molestiae ratione cupiditate sit in facere aut. Expedita libero et ut qui dolores explicabo. Quam molestiae rerum sed modi. Veniam autem molestias fuga hic commodi voluptatem. Dolorem qui quod omnis optio molestias rerum ex. Molestiae unde voluptatem iusto perspiciatis neque ipsa autem. At vel est qui porro. Rem recusandae consectetur nulla sit id quidem. Quas culpa id placeat quia non. Eligendi aspernatur nam consequatur quia. Praesentium maxime ullam illum blanditiis. Non et pariatur odit. Corrupti quis cupiditate aspernatur quos exercitationem atque. Et et rerum explicabo odit et ipsum. Ea illum eos facilis nisi quis delectus. Magnam vel voluptatem id reiciendis expedita qui. Velit inventore accusantium molestiae. Voluptas voluptas accusantium sapiente natus et. Eius sequi pariatur eum libero ut temporibus repellat. Dolores accusamus ipsam repudiandae excepturi autem. Vel mollitia quas nemo voluptas ut adipisci dolores. Modi neque quo maxime cupiditate. Dolores quo ex enim occaecati sint ut. Alias modi accusantium qui ipsam. Non non eius dignissimos. Dolores adipisci temporibus dolores ut. Enim fuga harum et cum id est. Velit laboriosam enim beatae pariatur. Maiores sapiente porro autem. Maxime voluptatem qui aut. Vitae vero libero earum dolore ut. Aliquam quia dolores tenetur in quia. Esse omnis quia debitis eos. Aut earum occaecati veniam dignissimos dolores et rerum. Exercitationem libero et non enim mollitia facere. Neque dolorem distinctio doloribus explicabo deleniti beatae et. Est quis neque quod asperiores. Qui reiciendis eum voluptates et voluptas. Minus natus illum magni molestias id exercitationem placeat. Aut expedita magnam expedita libero ipsa neque dolorum. Eveniet qui enim iusto omnis et architecto. Blanditiis veritatis debitis nulla soluta repudiandae omnis inventore et. Maxime omnis est dolores nulla quas. Ea atque explicabo in cupiditate voluptates velit autem et. Est dolorem quia id non. Iusto eius praesentium ut iure et est ex. Incidunt laudantium est earum corporis. Inventore sequi voluptas corporis qui corporis. Fugit molestiae blanditiis necessitatibus corrupti. Sapiente fugit rerum saepe accusantium necessitatibus dolores illo. Quod expedita omnis vitae blanditiis. Fugiat autem id repellendus sint harum. Dicta libero dolorem est magni. Magni quis qui tempore quae ut nihil.',1,1,'2023-10-14 14:10:19','2019-07-06 13:45:16','2021-12-08 03:02:55'),(9,'Nam quos earum quasi nostrum perspiciatis. Nobis expedita corporis et ipsam consequatur odio. Doloribus tenetur ipsam incidunt natus qui explicabo rem.','antonin16@example.com','Debitis quos atque magni vel. Qui reprehenderit vitae nobis et non quis. Hic assumenda tenetur voluptatibus nihil. Minima enim quia est iusto aut eos.',0,'Quae incidunt qui dolores a. Dolorem nihil mollitia voluptatibus doloremque et quis. Ut perspiciatis laudantium amet maxime optio maiores nesciunt. Amet quia vel et nihil impedit. Sed sit qui illo quidem repudiandae aliquid sed nisi. Aut ad laboriosam iure maxime fuga qui et itaque. Quis nam molestiae et minus expedita veniam sunt. Fuga nobis et sed doloribus esse. Incidunt modi fugiat porro architecto molestias. Illum et explicabo dolorem vitae mollitia adipisci ducimus est. Fugit doloribus tempora esse nihil. Asperiores voluptates incidunt et numquam earum neque et laboriosam. Id minus quibusdam est. Distinctio accusamus voluptatibus consequuntur veniam ut. Et amet quia sequi nisi sed. Expedita omnis et iure libero. Quia repellendus est voluptatem. Cumque iure et omnis molestias in qui. Veniam suscipit quia ea modi ut autem. Non vitae consectetur saepe aliquid non sapiente modi aut. Ipsum qui et consectetur repudiandae iusto provident esse. Aliquam ratione perspiciatis velit quis est aliquam qui. Necessitatibus nostrum vel nostrum quis omnis molestiae. Ut aliquam sequi officiis vitae. Possimus unde mollitia tempora nulla quidem blanditiis sapiente. Dolorem ducimus autem veritatis suscipit facilis sint sed. Iste asperiores iure ut aliquam atque perferendis aut. Corporis eaque porro dolor magnam aut quod quia. Magnam recusandae consequatur ipsa id. Quisquam expedita beatae eum nostrum et provident libero. Quidem facilis dignissimos quia recusandae exercitationem rerum aut. Ipsam iusto esse cum porro nobis alias esse. Neque magni nam est error esse voluptatem commodi magni. Eius ab quos inventore in id repellat. Ducimus iste iusto quasi harum non. Et iste eius et sed. Aut error molestiae qui explicabo facilis non deleniti qui. Tenetur deleniti ut maiores dolores neque et quia. Ex excepturi omnis distinctio. Ipsum perferendis aliquam ratione ea. Sed ut aut ut sit corrupti dolorem autem. Ratione tenetur aut modi occaecati cumque reprehenderit. Dignissimos hic natus tempora. Nihil consequatur et impedit odit. Quibusdam nobis quis architecto incidunt. At recusandae est incidunt officiis soluta. Dolores dolor nam qui iure laboriosam ea. Ratione numquam impedit est aut ea harum error tempore. Dolorum provident in ut. Alias est magnam sunt ut repudiandae. Omnis est illo qui soluta harum dolor. Dolorum non dolore voluptatibus facilis. Eligendi error deleniti qui dicta. Provident nesciunt consequatur sint et ut nam nostrum. Dolorum eligendi quasi at voluptatem qui facilis. Qui voluptatum non est nulla. Voluptatem et molestiae iure est repudiandae quidem. Maxime vero temporibus qui sapiente dolor doloremque saepe. Sint temporibus ut dolore dolorem magnam illo. Similique nostrum velit et vel dolore. Neque nihil sunt eum perspiciatis et ullam iusto. Quas praesentium et facere fuga aperiam commodi. Quia sint expedita sit pariatur.',1,1,NULL,'2021-01-10 19:08:37','2023-06-15 12:26:24'),(10,'Ut nostrum tenetur sunt nesciunt. Eveniet amet qui a voluptas soluta. Voluptatem incidunt saepe eveniet.','gerasim.voronova@example.net','Provident molestias consequuntur voluptatem rem fugiat. Eligendi dolor dolores tempora ut sint voluptatum sed. Numquam occaecati iste a consequatur occaecati quos. Ipsa illo quisquam eos. Sunt voluptatem porro vero vitae.',0,'Aut tenetur placeat et non aut ut nostrum. Tempore omnis adipisci quas. Autem vitae fugiat nihil occaecati dolor inventore modi unde. Ut rerum debitis sint quo dolorum illo autem asperiores. Fugit veritatis aut sit fugit id qui natus. Doloremque est et omnis suscipit. Maiores et eaque impedit aliquam. Dolores eligendi ut modi ab enim aut. Ut vel quae error a et quia. Quas neque qui maxime est. Animi fuga excepturi incidunt dicta nihil cum quod. Qui suscipit voluptates a provident. Provident qui cupiditate ullam illo eius suscipit sed. Quia ea mollitia id quis unde doloremque voluptates atque. Et rerum qui perspiciatis vel error officia. Doloribus nobis tempora provident est ut amet sequi. Nobis sed expedita vel. Alias qui quod et aliquam quia animi distinctio molestiae. Voluptate sunt excepturi cum quod veniam excepturi ipsa. Temporibus quia praesentium consectetur rerum sunt nulla. Sapiente soluta sit cupiditate provident iusto sit excepturi. Ut libero iusto voluptatum laboriosam et delectus sequi. Voluptatem voluptatem quibusdam explicabo impedit ad dicta natus. Perferendis deserunt rem non. Dolores omnis laudantium veniam quia. Ea quisquam eos facere fugit id dolorum. Et ab et et ipsum nesciunt natus libero. Debitis id doloribus asperiores ut unde et. Voluptas omnis quo corrupti vel molestiae fugiat animi. Commodi incidunt quam et mollitia ratione totam rerum. Vero minima odio incidunt in qui quis repellat. Deleniti possimus rerum aspernatur totam. Et reiciendis corrupti labore rerum necessitatibus. Ea omnis aspernatur illo quis aperiam. Quo ad praesentium commodi enim. Adipisci ut rerum doloremque iste unde consequatur deserunt vel. Ipsam cumque necessitatibus nisi quod corporis. Quaerat eum sunt quibusdam animi et voluptas. Nihil vero vel esse quas voluptatem voluptate tempora eum. Eos perferendis dolorem ut perspiciatis ducimus minus. Aliquid soluta omnis ratione reprehenderit dolorum aut modi. Molestiae eius unde accusamus reprehenderit enim itaque. Odio ut voluptatem rerum sed. Molestiae voluptate odit perferendis cupiditate non et. Voluptatem praesentium aliquid vero aut est consectetur autem. Consequuntur accusantium veritatis accusantium magni corrupti dignissimos consequatur. Sint et animi reprehenderit voluptatum maxime neque. Rerum quibusdam numquam ipsa nulla velit veniam quod pariatur. Omnis quisquam saepe doloremque et nihil maiores eaque amet. Distinctio error nihil ducimus voluptatum tempore consequatur eum. Aut sit illo suscipit dolorem ut. Nemo inventore commodi et consequatur temporibus accusantium in. Nostrum dignissimos reiciendis quo velit incidunt vel dicta. Hic doloremque recusandae est sed accusamus. Modi rerum odit tempore veritatis dolores. Possimus facilis corrupti labore. Illum magni sit quod dolores qui. Quaerat aliquam laborum id doloremque quia alias. Ipsa perspiciatis cumque qui repellat facilis nihil. Ut repudiandae iste consequatur libero.',2,0,NULL,'2021-04-03 16:26:36','2023-04-20 01:09:40');
/*!40000 ALTER TABLE `appeals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appeals_categories`
--

DROP TABLE IF EXISTS `appeals_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appeals_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appeals_categories`
--

LOCK TABLES `appeals_categories` WRITE;
/*!40000 ALTER TABLE `appeals_categories` DISABLE KEYS */;
INSERT INTO `appeals_categories` VALUES (1,'Вопросы о питании','Dolore libero cumque consectetur pariatur ex non voluptatem. Deleniti nulla in laboriosam quod quis. Et consequuntur sit ipsa modi adipisci quia. Porro qui repudiandae qui et.','2021-07-18 00:12:10','2022-11-27 21:32:38'),(2,'Вопросы директору','Ullam eius rerum et. Voluptatem alias sit sed perspiciatis. Rerum aut enim amet voluptatem temporibus voluptas eos iste. Explicabo aut aspernatur ut nesciunt doloremque. Totam rerum laboriosam eum inventore. Consequatur et voluptatibus corrupti est. Pariatur quaerat sint non et.','2021-11-02 08:59:28','2023-02-02 06:13:55');
/*!40000 ALTER TABLE `appeals_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bannerTitle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ref` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'first_class','Запишите детей в первый класс','http://localhost:7777/storage/data/documents/67ed7b290a016d33a9d3af8862c8eecd.png',NULL,'2023-10-14 11:10:20','2023-10-15 08:54:33'),(2,'point','Точка роста','http://localhost:7777/storage/data/documents/7442b8d4e053d7bdfc37e2a06d336538.jpg',NULL,'2023-10-14 11:10:21','2023-10-15 08:54:11'),(3,NULL,'Департамент образования Владимирской области','http://localhost:7777/storage/data/documents/802e2bb80f2bf74874520581e10e5871.jpg','https://департамент.образование33.рф/','2023-10-14 11:10:22','2023-10-15 08:53:58'),(4,NULL,'Персональные данные ДЕТИ','http://localhost:7777/storage/data/documents/d2a92fe868e864306f70ee519215f44f.png','http://персональныеданные.дети/','2023-10-14 11:10:22','2023-10-15 08:53:38');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabinets`
--

DROP TABLE IF EXISTS `cabinets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabinets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `images` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabinets`
--

LOCK TABLES `cabinets` WRITE;
/*!40000 ALTER TABLE `cabinets` DISABLE KEYS */;
INSERT INTO `cabinets` VALUES (1,'Кабинет информатики','101','Delectus aliquid ducimus distinctio tenetur. Consequuntur omnis qui nesciunt fugit. Et non nihil laudantium quis.','[\"http://филипповская-школа.рф/wp-content/uploads/2020/09/ikt.jpg\", \"http://филипповская-школа.рф/wp-content/uploads/2020/09/teh2.jpg\", \"http://филипповская-школа.рф/wp-content/uploads/2020/09/sport1.jpg\", \"http://филипповская-школа.рф/wp-content/uploads/2020/09/teh2.jpg\"]','2023-10-14 11:10:14','2023-10-14 11:10:14'),(2,'Кабинет химии','202a','Suscipit voluptatum autem perferendis eius eveniet omnis. Dolores corporis et perferendis. Aspernatur aut aperiam quasi minima numquam alias cum.','[\"http://филипповская-школа.рф/wp-content/uploads/2020/09/teh1.jpg\", \"http://филипповская-школа.рф/wp-content/uploads/2020/09/teh2.jpg\", \"http://филипповская-школа.рф/wp-content/uploads/2020/09/teh1.jpg\", \"http://филипповская-школа.рф/wp-content/uploads/2020/09/teh1.jpg\"]','2023-10-14 11:10:14','2023-10-14 11:10:14'),(3,'Кабинет физики','303','Deserunt repellat provident est est velit. Voluptatum temporibus in odio asperiores. Laudantium cum et alias earum.','[\"http://филипповская-школа.рф/wp-content/uploads/2020/09/teh1.jpg\", \"http://филипповская-школа.рф/wp-content/uploads/2020/09/sport1.jpg\", \"http://филипповская-школа.рф/wp-content/uploads/2020/09/ikt.jpg\", \"http://филипповская-школа.рф/wp-content/uploads/2020/09/ikt.jpg\"]','2023-10-14 11:10:14','2023-10-14 11:10:14');
/*!40000 ALTER TABLE `cabinets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_schedules`
--

DROP TABLE IF EXISTS `call_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `call_schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `call_number` int NOT NULL,
  `start_time` time NOT NULL,
  `lesson_time` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_schedules`
--

LOCK TABLES `call_schedules` WRITE;
/*!40000 ALTER TABLE `call_schedules` DISABLE KEYS */;
INSERT INTO `call_schedules` VALUES (1,1,'08:30:00',45,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(2,2,'09:30:00',45,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(3,3,'10:30:00',45,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(4,4,'11:30:00',45,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(5,5,'13:00:00',45,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(6,6,'14:00:00',45,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(7,7,'15:00:00',45,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(8,8,'16:00:00',45,'2023-10-14 11:10:15','2023-10-14 11:10:15');
/*!40000 ALTER TABLE `call_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapters`
--

DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `chapterTitle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` enum('active','draft') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `chapters_slug_unique` (`slug`) USING BTREE,
  UNIQUE KEY `chapters_chaptertitle_unique` (`chapterTitle`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapters`
--

LOCK TABLES `chapters` WRITE;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
INSERT INTO `chapters` VALUES (1,'common','Основные сведения','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(2,'struct','Структура и органы управления образовательной организацией','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(3,'document','Документы','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(4,'education','Образование','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(5,'eduStandarts','Образовательные стандарты и требования','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(6,'objects','Материально-техническое обеспечение и оснащенность образовательного процесса','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(7,'budget','Финансово-хозяйственная деятельность','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(8,'vacant','Вакантные места для приема (перевода) обучающихся','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(9,'dsreda','Доступная среда','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(10,'ezhednevnoe-menyu','Организация питания в образовательной организации','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(11,'first_class','Электронная запись в первый класс','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(12,'point','Точка роста','active','2023-10-14 11:10:19','2023-10-14 11:10:19');
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classrooms`
--

DROP TABLE IF EXISTS `classrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classrooms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `teacher_id` bigint unsigned NOT NULL,
  `cabinet_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classrooms_teacher_id_foreign` (`teacher_id`),
  KEY `classrooms_cabinet_id_foreign` (`cabinet_id`),
  CONSTRAINT `classrooms_cabinet_id_foreign` FOREIGN KEY (`cabinet_id`) REFERENCES `cabinets` (`id`),
  CONSTRAINT `classrooms_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classrooms`
--

LOCK TABLES `classrooms` WRITE;
/*!40000 ALTER TABLE `classrooms` DISABLE KEYS */;
INSERT INTO `classrooms` VALUES (1,'1a',1,1,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(2,'2a',1,2,'2023-10-14 11:10:15','2023-10-14 11:10:15');
/*!40000 ALTER TABLE `classrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `days`
--

DROP TABLE IF EXISTS `days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `days` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `days`
--

LOCK TABLES `days` WRITE;
/*!40000 ALTER TABLE `days` DISABLE KEYS */;
INSERT INTO `days` VALUES (1,'Понедельник','2023-10-14 11:10:15','2023-10-14 11:10:15'),(2,'Вторник','2023-10-14 11:10:15','2023-10-14 11:10:15'),(3,'Среда','2023-10-14 11:10:15','2023-10-14 11:10:15'),(4,'Четверг','2023-10-14 11:10:15','2023-10-14 11:10:15'),(5,'Пятница','2023-10-14 11:10:15','2023-10-14 11:10:15'),(6,'Суббота','2023-10-14 11:10:15','2023-10-14 11:10:15');
/*!40000 ALTER TABLE `days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docimage_section`
--

DROP TABLE IF EXISTS `docimage_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docimage_section` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `docimage_id` bigint unsigned DEFAULT NULL,
  `section_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `docimage_section_docimage_id_foreign` (`docimage_id`) USING BTREE,
  KEY `docimage_section_section_id_foreign` (`section_id`) USING BTREE,
  CONSTRAINT `docimage_section_docimage_id_foreign` FOREIGN KEY (`docimage_id`) REFERENCES `docimages` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `docimage_section_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docimage_section`
--

LOCK TABLES `docimage_section` WRITE;
/*!40000 ALTER TABLE `docimage_section` DISABLE KEYS */;
INSERT INTO `docimage_section` VALUES (1,1,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(2,2,4,'2023-10-14 11:10:20','2023-10-14 11:10:20');
/*!40000 ALTER TABLE `docimage_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docimages`
--

DROP TABLE IF EXISTS `docimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docimages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `documentName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `documentSource` varchar(510) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `documentType` enum('JPG','PDF','IMG','DOC','DOCX','XLS','XLSX','PPT') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `docimages_documentname_unique` (`documentName`) USING BTREE,
  UNIQUE KEY `docimages_documentsource_unique` (`documentSource`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docimages`
--

LOCK TABLES `docimages` WRITE;
/*!40000 ALTER TABLE `docimages` DISABLE KEYS */;
INSERT INTO `docimages` VALUES (1,'Приложение №1','http://localhost:7777/storage/data/documents/aa795f24e32677f7e1623e31f9d5b9d7.jpg','JPG','2023-10-14 11:10:20','2023-10-15 17:43:56'),(2,'Свидетельство','http://localhost:7777/storage/data/documents/d80530a9670ddcba5062806adcb306d5.jpg','JPG','2023-10-14 11:10:20','2023-10-15 11:21:01');
/*!40000 ALTER TABLE `docimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docsource_section`
--

DROP TABLE IF EXISTS `docsource_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docsource_section` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `docsource_id` bigint unsigned DEFAULT NULL,
  `section_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `docsource_section_docsource_id_foreign` (`docsource_id`) USING BTREE,
  KEY `docsource_section_section_id_foreign` (`section_id`) USING BTREE,
  CONSTRAINT `docsource_section_docsource_id_foreign` FOREIGN KEY (`docsource_id`) REFERENCES `docsources` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `docsource_section_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docsource_section`
--

LOCK TABLES `docsource_section` WRITE;
/*!40000 ALTER TABLE `docsource_section` DISABLE KEYS */;
INSERT INTO `docsource_section` VALUES (1,1,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(2,2,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(3,3,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(4,4,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(5,5,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(6,6,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(7,7,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(8,42,5,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(9,43,5,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(10,44,6,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(11,45,6,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(12,46,6,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(13,47,6,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(14,48,6,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(15,49,7,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(16,50,7,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(17,51,7,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(18,52,7,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(19,53,7,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(20,54,8,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(21,8,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(22,9,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(23,10,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(24,11,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(25,12,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(26,13,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(27,14,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(28,15,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(29,16,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(30,17,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(31,18,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(32,19,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(33,20,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(34,21,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(35,22,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(36,23,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(37,24,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(38,25,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(39,26,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(40,27,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(41,28,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(42,29,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(43,30,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(44,31,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(45,32,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(46,33,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(47,34,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(48,35,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(49,36,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(50,37,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(51,38,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(52,39,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(53,40,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(54,41,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(55,55,9,NULL,NULL),(56,56,9,NULL,NULL),(57,57,9,NULL,NULL),(58,58,9,NULL,NULL),(59,59,9,NULL,NULL),(60,60,9,NULL,NULL),(61,61,9,NULL,NULL),(62,62,16,NULL,NULL),(63,63,16,NULL,NULL),(64,64,16,NULL,NULL),(65,65,24,NULL,NULL),(66,66,24,NULL,NULL),(67,67,24,NULL,NULL),(68,68,24,NULL,NULL),(69,69,24,NULL,NULL),(70,70,24,NULL,NULL),(71,71,24,NULL,NULL),(72,72,24,NULL,NULL),(73,73,24,NULL,NULL),(74,74,24,NULL,NULL),(75,75,26,NULL,NULL),(76,76,29,NULL,NULL),(77,77,29,NULL,NULL),(78,78,29,NULL,NULL);
/*!40000 ALTER TABLE `docsource_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docsources`
--

DROP TABLE IF EXISTS `docsources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docsources` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `documentName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `documentSource` varchar(510) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `documentType` enum('JPG','PDF','IMG','DOC','DOCX','XLS','XLSX','PPT') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `docsources_documentname_unique` (`documentName`) USING BTREE,
  UNIQUE KEY `docsources_documentsource_unique` (`documentSource`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docsources`
--

LOCK TABLES `docsources` WRITE;
/*!40000 ALTER TABLE `docsources` DISABLE KEYS */;
INSERT INTO `docsources` VALUES (1,'Структура и органы управления образовательной организацией','http://localhost:7777/storage/data/documents/e835fb2036ff4e395f2544d2bcc0465c.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:26:52'),(2,'Положение о Совете школы','http://localhost:7777/storage/data/documents/386c525692f50527220ed46a3b8f08c1.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:26:40'),(3,'Положение о Совете родителей','http://localhost:7777/storage/data/documents/72d9471def91a3d59b79af76918223ba.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:26:26'),(4,'Положение о педагогическом совете','http://localhost:7777/storage/data/documents/c79d19116190d91b7b3989597338cb12.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:26:11'),(5,'Положение о методическом объединении','http://localhost:7777/storage/data/documents/b13a6366f718fdd3aef7ca8aa786d987.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:25:57'),(6,'Положение о классном родительском собрании и родительском комитете класса','http://localhost:7777/storage/data/documents/c181804d509b4ffb6829a4b58eb53a8e.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:25:28'),(7,'Положение о совете профилактики и правонарушений','http://localhost:7777/storage/data/documents/b63d88e8d853f4cf1c84874aabdc49bd.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:25:05'),(8,'Устав','http://localhost:7777/storage/data/documents/ff569eecc4a505d1db4c36ffd9a086a7.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:17:14'),(9,'Постановление о мерах по противодействию распространение коронавирусной инфекции','http://localhost:7777/storage/data/documents/624ded4dee2918cfe3ff78e884213775.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:16:55'),(10,'Единый график оценочных процедур в МКОУ Филипповской СОШ на 2022-2023 учебный год','http://localhost:7777/storage/data/documents/c9cf871149e7edcf75efefff98a6bb76.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:16:28'),(11,'Единый график оценочных процедур в МКОУ Филипповской СОШ на 2022-2023 учебный год в 10-11 классах','http://localhost:7777/storage/data/documents/9c74aa17a1a2f06523137c2640b92884.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:16:00'),(12,'Положение о внутришкольном контроле','http://localhost:7777/storage/data/documents/578cbb74e582d7b69854bc43063413b7.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:15:34'),(13,'Положение  о  Педагогическом  совете','http://localhost:7777/storage/data/documents/f518105c95c6462fce5ab0c5ee03e6af.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:15:08'),(14,'Положение о системе внутреннего мониторинга оценки качества образования','http://localhost:7777/storage/data/documents/3f185ee831a99481670731be76891954.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:14:40'),(15,'Положение о поощрении обучающихся за успехи в учебной, физкультурной, спортивной, общественной,научной, научно-технической, творческой, экспериментальной и инновационной деятельности','http://localhost:7777/storage/data/documents/56fe524169156855427e38451d41ef7c.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:13:53'),(16,'Положение о правилах поведения обучающихся в школе','http://localhost:7777/storage/data/documents/22a04eae04a5ef4c7f1fa2f19999bb29.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:13:18'),(17,'Положение о правилах приема, перевода, выбытия и отчисления обучающихся','http://localhost:7777/storage/data/documents/9201c5be6ea75a34026527a9de1ca39d.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:12:31'),(18,'Положение об основных образовательных программах общего образования, реализуемых в организации, осуществляющей образовательную деятельность','http://localhost:7777/storage/data/documents/427872a6508493ad65a700c34c5c6de1.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:11:37'),(19,'Положение о классах профильного обучения','http://localhost:7777/storage/data/documents/e59771eb1c404457fd40680f85610084.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:11:11'),(20,'Постановление администрации Киржачского района о переименовании МКОУ Филипповской СОШ','http://localhost:7777/storage/data/documents/9bc1ee3c5de62ad577031a8a40763782.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:10:44'),(21,'Положение о формах, периодичности и порядке текущего контроля успеваемости, промежуточной и итоговой аттестации обучающихся','http://localhost:7777/storage/data/documents/06b7d0204cc0c0affe829b2adfaef1fd.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:10:10'),(22,'Положение о проведение промежуточной аттестации учащихся и осуществлении текущего контроля их успеваемости в МКОУ Филипповская СОШ','http://localhost:7777/storage/data/documents/0bd9bd25c4a53a107cd593545582a873.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:09:37'),(23,'Положение о порядке отчисления, исключения обучающихся из МКОУ Филипповская СОШ','http://localhost:7777/storage/data/documents/134e330969689172a2a803fa292bb5e7.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:09:07'),(24,'Приказ о переименовании школы','http://localhost:7777/storage/data/documents/673d6694552abef68dc3c6ddab9c16fa.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:03:34'),(25,'Самообследовании МКОУ Филипповской СОШ за 2022 год','http://localhost:7777/storage/data/documents/04d1699c4512c011d6c42e1f34d2136b.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:02:36'),(26,'Анализ по воспитательной работе МКОУ Филипповской СОШ за 2020 — 2021 учебный год','http://localhost:7777/storage/data/documents/99de3d7e5e83f74baadeea24f725a3b1.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:01:45'),(27,'Приказ об исполнении приказа управления администрации Киржачского района №31','http://localhost:7777/storage/data/documents/76aa434d35b1feefde4c1c2c9855203d.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:01:18'),(28,'Программа развития','http://localhost:7777/storage/data/documents/57d79cce9b5dbc350ad6142ca18bec95.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:54:04'),(29,'Правил внутреннего трудового распорядка','http://localhost:7777/storage/data/documents/28253e356f2626c721c15791dc2ec673.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:48:29'),(30,'Приказ об административном регламенте предоставления муниципальной услуги Зачисление в образовательные организации','http://localhost:7777/storage/data/documents/50a94b32758e5730612239a928aa191e.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:47:39'),(31,'Приказ об исполнении приказа управления администрации Киржачского района от 17.02.2021','http://localhost:7777/storage/data/documents/d57479db1fa5f979bb621a6ae6737f44.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:47:14'),(32,'Приказ о создании наркологического поста в МКОУ Филипповская СОШ','http://localhost:7777/storage/data/documents/4cdaced48a1c97a417d6513415fabb02.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:46:08'),(33,'Информация о закрепленной за школой территории','http://localhost:7777/storage/data/documents/2f18a368e913025fde7ef32e6d144111.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:45:10'),(34,'Правила приема на обучение в МКОУ Филипповской СОШ','http://localhost:7777/storage/data/documents/02eae4474f4e4eaa556a755fce5a0701.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:44:46'),(35,'Коллективный договор на 2021-2023 г.г.','http://localhost:7777/storage/data/documents/941627a0941312c1598cfbee39cad205.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:44:20'),(36,'Приказ о создании наркологического поста в МКОУ Филипповской СОШ от 01.09.2021 г.','http://localhost:7777/storage/data/documents/d1ea2286d57e9819519aa125717d9490.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:39:18'),(37,'Положение о языке обучения','http://localhost:7777/storage/data/documents/05ed08e29759c02aaaf375e9de8d87d9.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:38:55'),(38,'Положение о рабочей программе','http://localhost:7777/storage/data/documents/60b94eb2301e59ea0ff3d481587b3afd.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:38:32'),(39,'План производственной учебы учителей «Учись учить»','http://localhost:7777/storage/data/documents/ccd3a8cd2a6d053498221432a7bf0d27.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:38:04'),(40,'Постановление администрации Киржачского района Владимирской области от 16.03.2023 №264 О закреплении за муниципальными общеобразовательными организациями Киржачского района территорий муниципального образования Киржачский район','http://localhost:7777/storage/data/documents/84432ffab3206d74d8ce04fe590d592c.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:37:20'),(41,'Приказ по школе о закрепленных территориях МКОУ Филипповской СОШ','http://localhost:7777/storage/data/documents/c8f9783d522bc275674ce54b5472f2a3.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:37:00'),(42,'Предписание от 17.05.2017г. № 2-2-2017','http://localhost:7777/storage/data/documents/7fded533ba8bc2fce5d26e82baeb5280.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:36:28'),(43,'Ответ на предписание от 17.05.2017г. № 2-2-2017','http://localhost:7777/storage/data/documents/fb5f08647458a5bf9f412805d203707f.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:35:53'),(44,'О реализуемых уровнях образования (см. приложении к лицензии — перечень общеобразовательных программ)','http://localhost:7777/storage/data/documents/f0b6571814043e3912bf78de17b581c0.jpg','JPG','2023-10-14 11:10:20','2023-10-15 11:35:26'),(45,'О формах обучения (см. пункт 3.5 устава школы)','http://localhost:7777/storage/data/documents/94666f48585b52fe80b4057e05adcd4a.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:34:56'),(46,'О лицензии на осуществление образовательной деятельности (см. лицензия)','http://localhost:7777/storage/data/documents/e04da0c324499a12bd095ac3ca37eca5.png','JPG','2023-10-14 11:10:20','2023-10-15 11:34:23'),(47,'Приложение №1 к лицензии на осуществление образовательной деятельности (см. приложение №1)','http://localhost:7777/storage/data/documents/33328bddbaa98913218201386152bf66.png','JPG','2023-10-14 11:10:20','2023-10-15 11:33:47'),(48,'О сроке действия государственной аккредитации образовательной программы (см. свидетельство о гос.  аккредитации)','http://localhost:7777/storage/data/documents/7ea116a23140a23a5cbac8bce987896c.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:32:54'),(49,'Аналитическая справка о результатах Всероссийских проверочных работ в 5, 6, 7, 8, 9 классах','http://localhost:7777/storage/data/documents/1a2296dbfa5bcf2b3563b2956f6c11a4.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:32:26'),(50,'План  мероприятий («дорожная карта») результатов ВПР, сентябрь-октябрь 2020 года','http://localhost:7777/storage/data/documents/69b3a4dc1124ee1e468c4cf0f792fcc5.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:31:53'),(51,'Отчет о проводимых мероприятиях по итогам ВПР 2020 года','http://localhost:7777/storage/data/documents/db4389e5d124dfe9bd3fd14dab042f89.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:31:27'),(52,'Приказ о проведении  Всероссийской проверочной работы осенью 2022 года','http://localhost:7777/storage/data/documents/16372f023ba8ba3005feb2f8ddac7f4a.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:31:05'),(53,'График выхода общественных наблюдателей на наблюдение за проведением ВПР в 2023 году','http://localhost:7777/storage/data/documents/2248fd05f0b22be2f7a3d0d5c54ac9fb.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:30:34'),(54,'«Дорожная карта» организации и проведения государственной итоговой аттестации по образовательным программам основного общего и среднего общего образования в МКОУ Филипповской СОШ в 2023 году','http://localhost:7777/storage/data/documents/e114e229add2ec45d0170ccf6cbca5e8.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:29:55'),(55,'Дистанционное обучение','http://localhost:7777/storage/data/documents/5e3a64f33347171115905edc4890120b.pdf','PDF','2023-10-15 18:31:35','2023-10-15 18:31:35'),(56,'Заявление на дистанционное обучение','http://localhost:7777/storage/data/documents/591729ce04c61aee47728fda0fe57d5c.pdf','PDF','2023-10-15 18:32:41','2023-10-15 18:44:23'),(57,'Горячая линия для обучающихся и родителей по дистанционному обучению','http://localhost:7777/storage/data/documents/8dbad5b3be1681044b7fb30339e9ce1a.pdf','PDF','2023-10-15 18:39:48','2023-10-15 18:39:48'),(58,'Расписание занятий','http://localhost:7777/storage/data/documents/3f2ad5f2a176258fd261c248338d5332.pdf','PDF','2023-10-15 18:41:14','2023-10-15 18:41:14'),(59,'Приказ Об исполнении Указа Президента РФ от 02.04.2020г. № 239','http://localhost:7777/storage/data/documents/034dadb9a7086c7128edd4631265ac3f.pdf','PDF','2023-10-15 18:41:49','2023-10-15 18:41:49'),(60,'Выписка из Утверждения решения педагогического совета № 5','http://localhost:7777/storage/data/documents/aefed875c7f6c714f1f1ca246ec7dbd3.pdf','PDF','2023-10-15 18:42:40','2023-10-15 18:42:40'),(61,'Положение об организации образовательного процесса','http://localhost:7777/storage/data/documents/49d39044b6c4e1cf7687907178032292.pdf','PDF','2023-10-15 18:43:29','2023-10-15 18:43:29'),(62,'Основная образовательная программа основного общего образования (ПО ФГОС ООО)','http://localhost:7777/storage/data/documents/1a2e80dfab95105c16b0191880551733.pdf','PDF','2023-10-15 18:51:38','2023-10-15 18:51:38'),(63,'Учебный план начального общего образования на 2022-2023 учебный год','http://localhost:7777/storage/data/documents/8e7508c66c0259c5ed6bfd762c173a99.pdf','PDF','2023-10-15 18:52:19','2023-10-15 18:52:19'),(64,'Учебный план для 5-9 классов на 2022-2023 учебный год','http://localhost:7777/storage/data/documents/70576406201baa696de8bc7be175ba95.pdf','PDF','2023-10-15 18:53:14','2023-10-15 18:53:14'),(65,'Сравнение стандартов 2004 и 2010 гг.','http://localhost:7777/storage/data/documents/966af0980bfaaff45bf5924fb0778183.pdf','PDF','2023-10-15 19:34:21','2023-10-15 19:34:21'),(66,'Приказ Минобрнауки России от 17.12.2010 №1897','http://localhost:7777/storage/data/documents/153a5f1b3fdbf8fc854046e7b86bf525.pdf','PDF','2023-10-15 19:34:52','2023-10-15 19:34:52'),(67,'Приказ Департамента Образования Владимирской области №874','http://localhost:7777/storage/data/documents/fb7ec537e604dcc65edbfb1310063c55.pdf','PDF','2023-10-15 19:35:25','2023-10-15 19:35:25'),(68,'Приложение 1 к приказу №874','http://localhost:7777/storage/data/documents/872f6c626b28182e2b3ce8c4578fdda8.pdf','PDF','2023-10-15 19:36:29','2023-10-15 19:36:29'),(69,'Приложение 2 к приказу №874','http://localhost:7777/storage/data/documents/1158a4483927757c07e608966718c3a8.pdf','PDF','2023-10-15 19:36:55','2023-10-15 19:36:55'),(70,'Приложение 3 к приказу №874','http://localhost:7777/storage/data/documents/dd0f4d7088be780f0387ab5f1a3b2cbe.pdf','PDF','2023-10-15 19:37:20','2023-10-15 19:37:20'),(71,'Приложение 4 к приказу №874','http://localhost:7777/storage/data/documents/0b9f509bbf350567fcf119b0993808a2.pdf','PDF','2023-10-15 19:37:45','2023-10-15 19:37:45'),(72,'Федеральный государственный образовательный стандарт начального общего образования 2021 год','http://localhost:7777/storage/data/documents/a4c24f34938a7b005bf75d0cf6fee1f9.pdf','PDF','2023-10-15 19:41:03','2023-10-15 19:41:03'),(73,'Федеральный государственный образовательный стандарт основного общего образования 2021 год','http://localhost:7777/storage/data/documents/45b72ed29c9f84107a147421b74ecd59.pdf','PDF','2023-10-15 19:43:17','2023-10-15 19:43:17'),(74,'Приказ Министерства просвещения РФ от 12 августа 2022 г № 732 «О внесении изменений в Федеральный государственный образовательный стандарт среднего общего образования, утвержденный приказом Министерства образования и науки от 17 мая 2012 № 413»','http://localhost:7777/storage/data/documents/f36c9178a6e9427e51410e288018a89c.pdf','PDF','2023-10-15 19:44:51','2023-10-15 19:44:51'),(75,'Об особенностях введения Федеральных основных общеобразовательных программ в 2023 году','http://localhost:7777/storage/data/documents/340cd0086819bede760f3353a2019313.pdf','PDF','2023-10-15 19:47:20','2023-10-15 19:47:20'),(76,'Бюджетная смена на 2019 финансовый год','http://localhost:7777/storage/data/documents/2a8db121d2fbefbe279a77ec38f1a0a6.pdf','PDF','2023-10-15 19:55:22','2023-10-15 19:55:22'),(77,'Бюджетная смета на 2020 финансовый год','http://localhost:7777/storage/data/documents/8984c69fe0fe4bfea6218e6e92b33253.pdf','PDF','2023-10-15 19:56:29','2023-10-15 19:56:29'),(78,'Бюджетная смета на 2021 финансовый год','http://localhost:7777/storage/data/documents/e9d390eabe1c8f95d43a12b32d534cc7.pdf','PDF','2023-10-15 19:57:13','2023-10-15 19:57:13');
/*!40000 ALTER TABLE `docsources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information__links`
--

DROP TABLE IF EXISTS `information__links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `information__links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `source` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information__links`
--

LOCK TABLES `information__links` WRITE;
/*!40000 ALTER TABLE `information__links` DISABLE KEYS */;
/*!40000 ALTER TABLE `information__links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `news_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `liked` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_news_id_foreign` (`news_id`),
  KEY `likes_user_id_foreign` (`user_id`),
  CONSTRAINT `likes_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`),
  CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_basics`
--

DROP TABLE IF EXISTS `menu_basics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_basics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  `name_menu` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_basics`
--

LOCK TABLES `menu_basics` WRITE;
/*!40000 ALTER TABLE `menu_basics` DISABLE KEYS */;
INSERT INTO `menu_basics` VALUES (1,'Меню ежедневного горячего питания','2023-09-01 11:10:17','Завтрак','111','2020-04-16 07:03:16','2021-12-06 14:29:06'),(2,'Меню ежедневного горячего питания','2023-10-01 11:10:17','Обед','190','2020-06-30 16:30:07','2022-10-17 16:16:13'),(3,'Меню ежедневного горячего питания','2023-09-02 11:10:17','Завтрак','53','2022-11-27 12:12:13','2023-01-05 05:31:00'),(4,'Меню ежедневного горячего питания','2023-10-02 11:10:17','Обед','88','2018-10-28 01:39:14','2019-03-29 13:39:54'),(5,'Меню ежедневного горячего питания','2023-09-03 11:10:17','Завтрак','118','2022-09-04 05:12:09','2022-11-16 03:16:27'),(6,'Меню ежедневного горячего питания','2023-10-03 11:10:17','Обед','15','2020-12-14 23:27:40','2021-03-11 05:11:17'),(7,'Меню ежедневного горячего питания','2023-09-04 11:10:17','Завтрак','126','2021-03-20 08:43:32','2023-04-06 04:50:45'),(8,'Меню ежедневного горячего питания','2023-10-04 11:10:17','Обед','153','2021-08-04 20:54:14','2021-10-21 05:17:25'),(9,'Меню ежедневного горячего питания','2023-09-05 11:10:17','Завтрак','88','2023-04-15 10:16:52','2023-07-01 08:00:51'),(10,'Меню ежедневного горячего питания','2023-10-05 11:10:17','Обед','25','2019-03-12 14:22:57','2021-01-18 16:10:25'),(11,'Меню ежедневного горячего питания','2023-09-06 11:10:17','Завтрак','55','2021-10-07 12:56:38','2022-07-11 14:10:17'),(12,'Меню ежедневного горячего питания','2023-10-06 11:10:17','Обед','29','2019-05-26 09:07:14','2022-09-03 01:37:49'),(13,'Меню ежедневного горячего питания','2023-09-07 11:10:17','Завтрак','121','2019-05-28 19:15:06','2019-07-25 18:46:43'),(14,'Меню ежедневного горячего питания','2023-10-07 11:10:17','Обед','163','2021-09-20 11:23:55','2021-12-15 21:04:05'),(15,'Меню ежедневного горячего питания','2023-09-08 11:10:17','Завтрак','149','2023-01-13 05:19:58','2023-05-02 01:26:55'),(16,'Меню ежедневного горячего питания','2023-10-08 11:10:17','Обед','196','2021-08-21 12:18:09','2023-08-23 10:26:18'),(17,'Меню ежедневного горячего питания','2023-09-09 11:10:17','Завтрак','69','2019-06-23 16:35:42','2019-11-27 22:35:09'),(18,'Меню ежедневного горячего питания','2023-10-09 11:10:17','Обед','196','2022-07-10 22:17:28','2022-07-12 10:54:11'),(19,'Меню ежедневного горячего питания','2023-09-10 11:10:17','Завтрак','110','2020-04-06 22:53:35','2021-07-01 08:25:11'),(20,'Меню ежедневного горячего питания','2023-10-10 11:10:17','Обед','136','2021-01-28 08:35:36','2022-09-06 05:53:13'),(21,'Меню ежедневного горячего питания','2023-09-11 11:10:17','Завтрак','161','2020-09-15 21:25:34','2022-03-21 17:11:23'),(22,'Меню ежедневного горячего питания','2023-10-11 11:10:17','Обед','66','2021-11-19 15:49:30','2023-07-30 10:42:13'),(23,'Меню ежедневного горячего питания','2023-09-12 11:10:17','Завтрак','41','2022-10-05 04:24:20','2022-11-25 13:36:48'),(24,'Меню ежедневного горячего питания','2023-10-12 11:10:17','Обед','96','2020-11-25 09:04:14','2023-10-02 01:56:13'),(25,'Меню ежедневного горячего питания','2023-09-13 11:10:17','Завтрак','64','2021-07-30 08:59:15','2022-06-04 07:42:10'),(26,'Меню ежедневного горячего питания','2023-10-13 11:10:17','Обед','101','2019-01-20 21:36:26','2021-04-29 06:58:05'),(27,'Меню ежедневного горячего питания','2023-09-14 11:10:17','Завтрак','161','2020-05-31 23:30:26','2021-04-10 23:26:41'),(28,'Меню ежедневного горячего питания','2023-10-14 11:10:17','Обед','119','2019-03-13 22:51:04','2019-06-21 21:29:05'),(29,'Меню ежедневного горячего питания','2023-09-15 11:10:17','Завтрак','29','2019-08-12 13:57:09','2020-04-05 09:57:27'),(30,'Меню ежедневного горячего питания','2023-10-15 11:10:17','Обед','105','2021-06-10 04:52:14','2022-03-29 07:52:09'),(31,'Меню ежедневного горячего питания','2023-09-16 11:10:17','Завтрак','199','2019-12-09 13:06:31','2022-06-13 02:43:46'),(32,'Меню ежедневного горячего питания','2023-10-16 11:10:17','Обед','132','2023-05-18 16:54:49','2023-07-10 08:12:11'),(33,'Меню ежедневного горячего питания','2023-09-17 11:10:17','Завтрак','165','2019-01-19 16:09:14','2022-10-29 19:45:12'),(34,'Меню ежедневного горячего питания','2023-10-17 11:10:17','Обед','191','2021-08-04 07:21:04','2021-09-13 15:57:18'),(35,'Меню ежедневного горячего питания','2023-09-18 11:10:17','Завтрак','113','2020-11-10 15:36:08','2022-05-17 00:37:05'),(36,'Меню ежедневного горячего питания','2023-10-18 11:10:17','Обед','62','2021-10-09 01:13:43','2022-03-23 10:44:42'),(37,'Меню ежедневного горячего питания','2023-09-19 11:10:17','Завтрак','192','2020-11-09 00:49:56','2022-05-12 19:57:26'),(38,'Меню ежедневного горячего питания','2023-10-19 11:10:17','Обед','141','2022-02-10 06:29:38','2022-12-29 08:33:14'),(39,'Меню ежедневного горячего питания','2023-09-20 11:10:17','Завтрак','77','2021-10-29 10:36:06','2022-05-31 14:18:13'),(40,'Меню ежедневного горячего питания','2023-10-20 11:10:17','Обед','72','2023-03-12 09:00:58','2023-04-11 19:51:10'),(41,'Меню ежедневного горячего питания','2023-09-21 11:10:17','Завтрак','58','2022-02-22 01:18:50','2023-01-23 18:52:57'),(42,'Меню ежедневного горячего питания','2023-10-21 11:10:17','Обед','22','2021-12-19 04:58:32','2023-09-14 07:01:13'),(43,'Меню ежедневного горячего питания','2023-09-22 11:10:17','Завтрак','195','2019-08-02 21:40:45','2022-12-04 01:15:57'),(44,'Меню ежедневного горячего питания','2023-10-22 11:10:17','Обед','89','2020-05-27 06:38:28','2021-03-12 03:05:55'),(45,'Меню ежедневного горячего питания','2023-09-23 11:10:17','Завтрак','134','2021-06-24 06:21:51','2023-05-23 02:25:57'),(46,'Меню ежедневного горячего питания','2023-10-23 11:10:17','Обед','122','2021-03-19 18:57:04','2023-06-06 17:27:53'),(47,'Меню ежедневного горячего питания','2023-09-24 11:10:17','Завтрак','165','2023-08-24 23:59:14','2023-10-14 05:29:41'),(48,'Меню ежедневного горячего питания','2023-10-24 11:10:17','Обед','182','2022-06-15 14:14:07','2023-03-09 14:19:52'),(49,'Меню ежедневного горячего питания','2023-09-25 11:10:17','Завтрак','11','2021-05-10 12:27:31','2022-03-16 22:30:57'),(50,'Меню ежедневного горячего питания','2023-10-25 11:10:17','Обед','156','2023-01-19 20:56:40','2023-03-25 14:12:18'),(51,'Меню ежедневного горячего питания','2023-09-26 11:10:17','Завтрак','110','2021-01-31 10:26:52','2022-07-11 14:39:07'),(52,'Меню ежедневного горячего питания','2023-10-26 11:10:17','Обед','178','2022-08-14 19:08:27','2023-07-07 07:33:24'),(53,'Меню ежедневного горячего питания','2023-09-27 11:10:17','Завтрак','78','2021-12-03 06:45:25','2023-04-14 00:03:35'),(54,'Меню ежедневного горячего питания','2023-10-27 11:10:17','Обед','143','2021-07-25 14:13:48','2021-10-31 20:47:18'),(55,'Меню ежедневного горячего питания','2023-09-28 11:10:17','Завтрак','52','2021-10-07 19:15:46','2023-01-07 02:24:03'),(56,'Меню ежедневного горячего питания','2023-10-28 11:10:17','Обед','129','2022-12-22 11:22:35','2022-12-29 16:55:36'),(57,'Меню ежедневного горячего питания','2023-09-29 11:10:17','Завтрак','118','2021-05-14 10:10:11','2023-03-20 03:03:39'),(58,'Меню ежедневного горячего питания','2023-10-29 11:10:17','Обед','175','2019-02-28 08:45:28','2021-05-30 08:23:03'),(59,'Меню ежедневного горячего питания','2023-09-30 11:10:17','Завтрак','99','2020-05-09 02:53:25','2022-08-05 00:54:37'),(60,'Меню ежедневного горячего питания','2023-10-30 11:10:17','Обед','162','2022-07-18 11:17:11','2023-01-08 00:45:10');
/*!40000 ALTER TABLE `menu_basics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_dish` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `dish_output` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_items_name_dish_unique` (`name_dish`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,'Quam provident ut magni.','160 гр.','2021-06-13 05:04:50','2021-07-11 22:04:44'),(2,'Nihil dolor qui vitae.','171 гр.','2019-01-18 16:10:10','2020-10-25 17:30:20'),(3,'Qui qui ducimus quis.','137 гр.','2023-04-24 11:22:12','2023-08-16 20:59:19'),(4,'Omnis voluptas qui ea.','112 гр.','2022-11-19 15:29:52','2023-09-10 19:25:34'),(5,'Dolor aut et et est.','290 гр.','2021-03-25 17:28:19','2022-08-18 03:40:26'),(6,'Dolor optio a minus.','278 гр.','2023-08-04 01:57:19','2023-10-05 16:23:43'),(7,'Ab in ut ut nobis ab.','135 гр.','2021-10-13 05:48:10','2022-07-08 12:02:47'),(8,'Optio labore aliquid et.','50 гр.','2019-11-25 02:56:55','2021-09-01 09:00:37'),(9,'Eos est et ut est.','122 гр.','2023-06-27 22:19:10','2023-08-08 14:43:34'),(10,'Autem omnis quam sit.','152 гр.','2022-11-15 14:59:26','2023-04-10 06:04:27'),(11,'Quae et harum atque ut.','151 гр.','2018-12-30 11:32:25','2020-09-02 19:52:26'),(12,'Qui quo ut et vel et.','245 гр.','2023-08-14 21:53:07','2023-08-19 00:24:41'),(13,'Voluptas omnis sed aut.','241 гр.','2019-01-29 12:36:45','2022-12-23 00:44:16'),(14,'Totam vero non numquam.','147 гр.','2022-02-24 02:21:16','2023-09-25 05:20:15'),(15,'Vel aliquam harum vitae.','219 гр.','2022-04-22 06:50:36','2023-06-01 10:29:33'),(16,'Illo quibusdam qui sunt.','43 гр.','2023-06-27 12:32:18','2023-09-29 02:01:06'),(17,'In sequi quos inventore.','56 гр.','2018-12-12 21:42:57','2021-03-23 08:47:54'),(18,'Qui aut ipsum magni.','222 гр.','2019-05-17 14:39:05','2020-05-26 18:08:45'),(19,'Harum porro et facilis.','178 гр.','2021-07-06 20:29:35','2021-09-09 17:34:35'),(20,'Quisquam minus et aut.','91 гр.','2023-02-19 11:00:59','2023-05-03 22:13:43'),(21,'Qui vel quo placeat et.','229 гр.','2022-01-21 11:22:49','2022-05-18 07:33:01'),(22,'Et odio eum cum quaerat.','170 гр.','2019-02-10 14:00:25','2020-09-03 09:26:12'),(23,'Modi nam rerum dolor.','168 гр.','2020-02-11 10:28:58','2021-06-28 11:36:24'),(24,'Iure nisi ut eum aut.','240 гр.','2022-09-23 19:30:51','2023-04-04 21:50:13'),(25,'Et aliquam beatae sint.','175 гр.','2020-01-17 09:24:01','2021-05-05 14:34:13'),(26,'Aut eos consequatur nam.','113 гр.','2020-06-03 05:20:09','2021-06-27 14:15:12'),(27,'Atque est fugit id.','100 гр.','2019-03-01 12:01:49','2022-10-14 00:26:44'),(28,'Earum vero veniam enim.','223 гр.','2019-09-10 18:01:00','2019-11-03 19:58:36'),(29,'Delectus eum in fugit.','222 гр.','2023-04-01 08:19:48','2023-09-28 20:52:22'),(30,'Dolore quo qui magni.','244 гр.','2021-11-30 11:59:36','2023-04-24 04:42:35'),(31,'Non in odit dolor.','165 гр.','2023-10-03 03:49:02','2023-10-04 01:44:21'),(32,'Non hic nihil aut.','202 гр.','2020-02-12 00:14:30','2020-05-14 12:25:16'),(33,'Et dolorem ad adipisci.','200 гр.','2020-03-21 02:10:02','2021-04-01 20:55:58'),(34,'Sit eum quis unde et.','61 гр.','2020-01-06 23:57:39','2020-12-08 02:18:05'),(35,'Et temporibus ut et qui.','278 гр.','2019-06-03 11:12:15','2022-09-20 04:34:28'),(36,'Quod quia in voluptas.','67 гр.','2019-06-09 02:58:41','2020-04-12 22:33:48'),(37,'Quia enim culpa magni.','274 гр.','2020-02-16 09:51:58','2020-06-08 21:28:32'),(38,'Nam et dolor quo.','234 гр.','2022-06-07 16:48:43','2022-09-13 23:34:36'),(39,'Rerum corporis non nam.','213 гр.','2022-12-16 17:44:48','2023-05-28 17:15:36'),(40,'Odio et magni fugit et.','212 гр.','2019-02-21 01:12:48','2019-08-11 02:46:19'),(41,'Et nostrum et quo unde.','184 гр.','2021-06-29 22:21:04','2022-11-01 05:24:10'),(42,'Ut iusto non quia.','118 гр.','2019-09-18 21:21:10','2023-07-31 19:44:43'),(43,'Et ut ut cumque.','245 гр.','2023-05-05 21:58:40','2023-09-30 06:23:41'),(44,'Quia ut ut iste ipsa.','99 гр.','2022-03-27 08:59:46','2023-06-29 07:37:22'),(45,'Ut architecto quae et.','126 гр.','2023-07-25 02:15:26','2023-09-12 04:47:57'),(46,'Aut enim odit rerum est.','186 гр.','2019-07-26 11:50:29','2021-12-07 23:00:44'),(47,'Eaque aut vel quia.','221 гр.','2021-10-14 05:56:40','2022-08-11 07:43:34'),(48,'Et amet rerum odit.','277 гр.','2022-01-22 19:14:46','2023-06-16 14:40:14'),(49,'Ut vel minima cum.','76 гр.','2021-06-05 01:58:18','2022-11-23 00:53:27'),(50,'Nemo veritatis a dicta.','149 гр.','2022-07-31 03:59:36','2023-04-05 16:52:28');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_basic_id` bigint unsigned NOT NULL,
  `menu_item_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menus_menu_basic_id_foreign` (`menu_basic_id`),
  KEY `menus_menu_item_id_foreign` (`menu_item_id`),
  CONSTRAINT `menus_menu_basic_id_foreign` FOREIGN KEY (`menu_basic_id`) REFERENCES `menu_basics` (`id`),
  CONSTRAINT `menus_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,1,46,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(2,1,2,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(3,1,18,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(4,1,7,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(5,2,22,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(6,2,14,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(7,2,16,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(8,2,35,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(9,3,42,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(10,3,49,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(11,3,14,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(12,3,10,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(13,4,21,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(14,4,1,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(15,4,25,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(16,4,8,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(17,5,38,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(18,5,40,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(19,5,44,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(20,5,18,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(21,6,25,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(22,6,29,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(23,6,6,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(24,6,15,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(25,7,35,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(26,7,15,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(27,7,11,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(28,7,46,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(29,8,22,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(30,8,35,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(31,8,16,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(32,8,6,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(33,9,34,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(34,9,26,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(35,9,17,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(36,9,2,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(37,10,1,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(38,10,24,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(39,10,35,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(40,10,1,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(41,11,6,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(42,11,43,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(43,11,34,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(44,11,46,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(45,12,28,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(46,12,2,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(47,12,20,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(48,12,20,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(49,13,11,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(50,13,45,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(51,13,20,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(52,13,23,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(53,14,24,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(54,14,22,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(55,14,21,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(56,14,35,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(57,15,4,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(58,15,39,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(59,15,2,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(60,15,35,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(61,16,32,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(62,16,44,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(63,16,13,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(64,16,35,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(65,17,32,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(66,17,1,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(67,17,17,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(68,17,17,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(69,18,49,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(70,18,44,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(71,18,38,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(72,18,37,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(73,19,29,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(74,19,19,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(75,19,14,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(76,19,45,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(77,20,17,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(78,20,19,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(79,20,22,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(80,20,23,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(81,21,48,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(82,21,30,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(83,21,20,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(84,21,25,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(85,22,41,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(86,22,2,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(87,22,47,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(88,22,22,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(89,23,39,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(90,23,9,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(91,23,17,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(92,23,2,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(93,24,15,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(94,24,25,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(95,24,47,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(96,24,34,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(97,25,6,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(98,25,33,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(99,25,13,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(100,25,20,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(101,26,31,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(102,26,3,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(103,26,39,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(104,26,4,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(105,27,25,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(106,27,29,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(107,27,21,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(108,27,24,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(109,28,48,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(110,28,9,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(111,28,31,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(112,28,7,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(113,29,32,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(114,29,48,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(115,29,19,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(116,29,49,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(117,30,7,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(118,30,11,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(119,30,10,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(120,30,46,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(121,31,27,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(122,31,15,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(123,31,46,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(124,31,3,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(125,32,16,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(126,32,39,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(127,32,41,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(128,32,4,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(129,33,20,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(130,33,46,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(131,33,2,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(132,33,35,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(133,34,33,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(134,34,16,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(135,34,1,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(136,34,4,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(137,35,29,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(138,35,13,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(139,35,7,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(140,35,15,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(141,36,50,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(142,36,46,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(143,36,30,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(144,36,23,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(145,37,29,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(146,37,15,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(147,37,39,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(148,37,4,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(149,38,31,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(150,38,24,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(151,38,5,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(152,38,14,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(153,39,29,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(154,39,34,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(155,39,33,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(156,39,9,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(157,40,11,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(158,40,17,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(159,40,24,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(160,40,9,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(161,41,22,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(162,41,38,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(163,41,46,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(164,41,17,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(165,42,28,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(166,42,13,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(167,42,24,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(168,42,18,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(169,43,7,'2023-10-14 11:10:18','2023-10-14 11:10:18'),(170,43,31,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(171,43,45,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(172,43,37,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(173,44,11,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(174,44,46,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(175,44,22,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(176,44,1,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(177,45,9,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(178,45,22,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(179,45,1,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(180,45,39,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(181,46,29,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(182,46,8,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(183,46,18,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(184,46,43,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(185,47,43,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(186,47,8,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(187,47,17,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(188,47,23,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(189,48,50,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(190,48,33,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(191,48,44,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(192,48,22,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(193,49,8,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(194,49,5,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(195,49,11,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(196,49,1,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(197,50,34,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(198,50,25,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(199,50,49,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(200,50,14,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(201,51,36,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(202,51,11,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(203,51,48,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(204,51,12,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(205,52,27,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(206,52,20,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(207,52,9,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(208,52,46,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(209,53,15,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(210,53,13,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(211,53,32,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(212,53,43,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(213,54,27,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(214,54,36,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(215,54,28,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(216,54,30,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(217,55,13,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(218,55,25,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(219,55,34,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(220,55,39,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(221,56,37,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(222,56,48,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(223,56,10,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(224,56,38,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(225,57,32,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(226,57,33,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(227,57,42,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(228,57,5,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(229,58,8,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(230,58,28,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(231,58,34,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(232,58,10,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(233,59,28,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(234,59,18,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(235,59,32,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(236,59,20,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(237,60,7,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(238,60,30,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(239,60,44,'2023-10-14 11:10:19','2023-10-14 11:10:19'),(240,60,20,'2023-10-14 11:10:19','2023-10-14 11:10:19');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2020_03_31_114745_remove_backpackuser_model',1),(6,'2020_MM_DD_133858_create_permission_tables',1),(7,'2021_11_11_100000_users_add_is_blocked',1),(8,'2023_05_18_142040_users_add_profile_data',1),(9,'2023_09_07_104804_create_students_table',1),(10,'2023_09_07_110607_create_parents_table',1),(11,'2023_09_07_110844_create_parent_student_table',1),(12,'2023_09_09_181908_create_news_categories_table',1),(13,'2023_09_09_202707_create_subjects_table',1),(14,'2023_09_09_203905_create_call_schedules_table',1),(15,'2023_09_10_105606_create_photos_table',1),(16,'2023_09_10_105829_create_albums_table',1),(17,'2023_09_10_110028_create_album_photo_table',1),(18,'2023_09_10_123417_create_appeals_categories_table',1),(19,'2023_09_10_124322_create_achievements_table',1),(20,'2023_09_11_143950_create_appeals_table',1),(21,'2023_09_11_144254_create_teachers_table',1),(22,'2023_09_11_144545_create_news_table',1),(23,'2023_09_11_144600_create_likes_table',1),(24,'2023_09_11_145023_create_classrooms_table',1),(25,'2023_09_11_145129_create_days_table',1),(26,'2023_09_11_145236_create_schedules_table',1),(27,'2023_09_19_081214_delete_classroom_id_column_from_days_table',1),(28,'2023_09_19_145504_add_column_text_from_news_table',1),(29,'2023_09_19_145519_rename_column_resource_to_source_from_table_news',1),(30,'2023_09_21_090614_change_type_on_json_of_source_column_in_news_table',1),(31,'2023_09_21_143638_add_unique_constraint_for_name_eng_column_to_albums_table',1),(32,'2023_09_25_172443_create_cabinets_table',1),(33,'2023_09_28_083748_permissions_1',1),(34,'2023_09_28_085029_permissions_2',1),(35,'2023_09_28_221702_create_menu_items_table',1),(36,'2023_09_28_221755_create_menu_basics_table',1),(37,'2023_09_28_222221_create_menus_table',1),(38,'2023_09_30_103540_update_teachers_table',1),(39,'2023_09_30_164756_update_appeals',1),(40,'2023_10_02_190052_create_chapters_table',1),(41,'2023_10_02_190126_create_sections_table',1),(42,'2023_10_02_190153_create_docimages_table',1),(43,'2023_10_02_190219_create_docsources_table',1),(44,'2023_10_02_190250_create_docimage_section_table',1),(45,'2023_10_02_190321_create_docsource_section_table',1),(46,'2023_10_06_000704_create_information__links_table',1),(47,'2023_10_07_225547_update_students_table',1),(48,'2023_10_07_225606_update_parents_table',1),(49,'2023_10_09_233819_add_classroom_id_column_to_students_table',1),(50,'2023_10_09_234605_add_number_column_to_cabinets_table',1),(51,'2023_10_09_235517_add_cabinet_id_column_to_classrooms_table',1),(52,'2023_10_10_212546_create_banners_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (2,'App/Model/User',1),(4,'App/Model/User',1),(2,'App/Model/User',2),(2,'App/Model/User',3),(2,'App/Model/User',4),(2,'App/Model/User',5),(2,'App/Model/User',6),(2,'App/Model/User',7),(2,'App/Model/User',8),(3,'App/Model/User',9),(3,'App/Model/User',10),(3,'App/Model/User',11),(4,'App/Model/User',12),(4,'App/Model/User',13),(4,'App/Model/User',14),(4,'App/Model/User',15),(4,'App/Model/User',16),(4,'App/Model/User',17),(3,'App/Model/User',18),(3,'App/Model/User',19),(4,'App/Model/User',20),(1,'App/Model/User',21);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `text` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `author` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Admin',
  `news_category_id` bigint unsigned NOT NULL,
  `album_id` bigint unsigned NOT NULL,
  `source` json DEFAULT NULL,
  `status` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `pub_approve` datetime DEFAULT NULL,
  `video` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_news_category_id_foreign` (`news_category_id`),
  KEY `news_album_id_foreign` (`album_id`),
  CONSTRAINT `news_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`),
  CONSTRAINT `news_news_category_id_foreign` FOREIGN KEY (`news_category_id`) REFERENCES `news_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'ut','Perferendis sint voluptatem impedit eos. Id accusantium voluptates nisi deleniti vero fugit.','Commodi consectetur officiis quia sed vel facilis. Ut odio sit temporibus quae dolorem. Pariatur ut labore rerum harum. Sapiente veritatis aut quos non sit nisi tempora omnis. At architecto soluta ut et. Sed nihil suscipit rem. Autem eos voluptatem rerum ut sapiente voluptas. Aut doloremque dolorum illo eligendi eos dolore vero. Nam commodi minus et possimus itaque consequatur aut. Impedit laborum vel eaque eius nemo. Qui libero tenetur earum unde ipsum. Illo ullam a laudantium voluptatum quia. Architecto enim et velit non voluptatum sint consequatur. Quia pariatur asperiores tempora distinctio laudantium accusantium est inventore. Est beatae animi illo et sit. Et sunt adipisci adipisci odit magnam libero aliquid. Dolorem quis iusto soluta vel aperiam nihil hic. Est occaecati error optio sunt consequatur amet in. Quae fugit vitae non aut aspernatur et.','marta.kudrysov',1,1,'[{\"url\": \"http://titov.ru/hic-sunt-tempora-id-quia-quasi-fugiat-quidem-est\", \"text\": \"Eius soluta soluta iste.\"}, {\"url\": \"http://www.ykuseva.ru/\", \"text\": \"Non maxime voluptas nemo id.\"}]','active',NULL,'https://via.placeholder.com/640x480.png/00bb66?text=quia','2023-10-14 11:10:16','2023-10-14 11:10:16'),(2,'eos','Ut autem earum deleniti in cum facilis omnis. Fuga reprehenderit ut consequuntur.','Adipisci dolorem occaecati ea natus labore. Sunt doloribus consectetur doloribus in aliquam ut. Ut soluta et quia doloremque qui molestiae. Laborum ex nemo culpa reprehenderit dolore placeat sapiente aut. Quasi architecto distinctio asperiores laborum nam. Aperiam iure harum quia nobis aspernatur voluptatum. Et rerum eius rerum aspernatur consequuntur aliquam labore. In eum dolor laboriosam reiciendis recusandae dolorem sunt. Ut qui aut quo ut architecto aut fugit. Minima nihil accusantium est repellendus fugiat. Est praesentium sequi aut qui id. Ipsum consectetur ut quisquam libero ducimus. Dolores velit iure aliquam natus. Eligendi ut dolores cupiditate. Officiis commodi pariatur voluptates tempora quidem. Consequatur sit voluptatum voluptatem qui suscipit. Ex et molestias enim omnis iste soluta. Est quia cum aut mollitia ab et magni. Perspiciatis quis exercitationem dignissimos harum tempora animi.','marina83',1,1,'[{\"url\": \"http://konstantinova.ru/est-quam-libero-sequi-voluptate-dolore-ratione-inventore-ea\", \"text\": \"Et qui culpa eos consectetur.\"}, {\"url\": \"http://avdeev.ru/\", \"text\": \"Deserunt culpa enim amet ut.\"}]','active',NULL,'https://via.placeholder.com/640x480.png/0099ee?text=ut','2023-10-14 11:10:16','2023-10-14 11:10:16'),(3,'laudantium','Accusantium voluptatem ducimus reiciendis neque optio. Aut sunt voluptas aut provident ut unde.','Rerum dolore quibusdam commodi vero atque nostrum accusantium. Soluta repellat corporis id impedit quo nam iste. Molestiae nihil sint eos et molestias. Ut quis explicabo aut iste aliquam. Nihil omnis facilis doloribus vel et id. Necessitatibus earum et ab facilis doloribus odit sequi. Harum qui saepe quam quia. Quasi hic architecto dicta iusto placeat veritatis ut. Enim non officiis tempore veritatis quisquam recusandae consequatur. Ut doloribus sunt maxime eum eos. Occaecati earum qui illo et illum. Reiciendis tempore aut error enim corrupti eligendi est. Ex eum harum quia. Fugiat id voluptate et aliquid. Earum accusantium voluptate voluptas omnis molestiae vel. Et culpa quam et. Eum ut autem quia ut. Illum tempore reiciendis qui tempore ducimus.','nikonov.varvara',1,1,'[{\"url\": \"http://www.doronin.ru/\", \"text\": \"At esse sed explicabo eos.\"}, {\"url\": \"http://krasilnikov.ru/ex-voluptatibus-ut-ea-veritatis-sint-placeat\", \"text\": \"Dolor minus voluptatem ipsa.\"}]','active',NULL,'https://via.placeholder.com/640x480.png/0088dd?text=iste','2023-10-14 11:10:16','2023-10-14 11:10:16'),(4,'aut','Consequuntur ullam ut ut officiis et velit cum magnam. Ipsam aliquid sit exercitationem.','Repellendus esse voluptas possimus et quo voluptates. Possimus omnis quas totam corporis. Placeat expedita odit sequi sunt amet. Earum eum qui rem quo ab similique. Et minima et iusto praesentium soluta. Beatae sit eos illum ut maxime quia ullam. Praesentium est in aut provident impedit illum quo. Quaerat non non necessitatibus dolores dicta ab. Expedita est doloremque autem porro consequuntur omnis temporibus. Possimus ut officiis perspiciatis et. Corporis nobis quis suscipit laudantium. Iste ut impedit at quisquam. Illo et voluptas consequatur. Exercitationem ut rerum et suscipit sed nam. Inventore et nulla fugiat nam dolor autem cumque quam. Hic quo repellendus provident illo labore sunt sapiente iure. Inventore rem eos delectus. Corporis exercitationem est fugit fuga. Iusto inventore sunt facere qui. Alias minima nobis cumque odit quam. Quos odit possimus inventore delectus. Ad architecto cum sit molestiae.','polina.mikailova',1,1,'[{\"url\": \"http://www.sorokin.com/\", \"text\": \"Id sit nulla nobis minus.\"}, {\"url\": \"http://www.fomina.com/\", \"text\": \"Sequi sed facere quis sint.\"}]','active',NULL,'https://via.placeholder.com/640x480.png/003322?text=sequi','2023-10-14 11:10:16','2023-10-14 11:10:16'),(5,'praesentium','Sequi vero amet autem et molestiae iusto est. Libero laudantium similique molestiae aut.','Et ad dolorum ut magnam dignissimos voluptates sunt. Officia eligendi voluptate voluptates voluptatem. Voluptas voluptatem ipsum quod facere enim facere sit asperiores. Fuga occaecati dolores aspernatur ut quaerat omnis. Maxime tempora distinctio dicta assumenda dolores voluptas. Esse ea sed aut ea suscipit omnis. Blanditiis dolores quia illo laudantium. Ab quo rem recusandae ut. Quasi voluptatem repudiandae harum explicabo. Enim facere consequatur quis cumque. Provident expedita eaque quis ducimus sapiente laboriosam. Tempora rerum corrupti explicabo vel impedit sit. Voluptatem similique qui omnis harum voluptate nobis ipsam. Est et rem rerum deserunt laboriosam. Dicta omnis facilis rem. Eius tempore doloribus quos maxime et. Nihil animi similique autem quis repudiandae illo. Veritatis nobis veniam dolorem quo. Provident mollitia exercitationem ea quod ut eum et.','arkadii76',1,1,'[{\"url\": \"http://www.silova.ru/quia-consectetur-porro-est-eum.html\", \"text\": \"Et ea quaerat eum cum.\"}, {\"url\": \"http://www.ignatova.com/\", \"text\": \"Non qui sit esse aut porro.\"}]','active',NULL,'https://via.placeholder.com/640x480.png/0000ee?text=eveniet','2023-10-14 11:10:16','2023-10-14 11:10:16'),(6,'consectetur','Dolores aut animi commodi vitae. Numquam natus repudiandae voluptatem et.','Excepturi quidem repudiandae laboriosam rerum corporis architecto debitis. Ut et voluptas necessitatibus aut ea asperiores temporibus. Ad aut impedit quo. Repellendus illum molestiae blanditiis animi autem. Rerum reiciendis ab sed amet consectetur iure iste. Accusamus velit dolorum et delectus deserunt dolor eos. Id inventore dolore eum placeat eligendi voluptatum. Officia et libero ea. Sunt iure possimus delectus assumenda est. Ducimus harum animi sint occaecati cum iusto. Est unde eum mollitia suscipit aliquid ea. Omnis doloremque consectetur iste cum aut. Magni quod officia delectus ratione quia ipsa. Minus ipsa et sapiente qui pariatur. Sunt odio velit et odit officia. Ipsa ea at expedita cumque. Saepe sunt ut eaque eveniet velit dicta. Quo enim reiciendis porro sit sed sed.','safonova.dmitrii',1,1,'[{\"url\": \"http://www.samoilova.ru/recusandae-dolores-aut-consectetur-iste-et-distinctio-maxime.html\", \"text\": \"Ut illo corrupti blanditiis.\"}, {\"url\": \"http://belousova.com/\", \"text\": \"Sit omnis eum minus.\"}]','active',NULL,'https://via.placeholder.com/640x480.png/00cc99?text=soluta','2023-10-14 11:10:16','2023-10-14 11:10:16'),(7,'et','Aliquam quo dolorem aliquam optio ab provident. Enim quos vero inventore dolor.','Voluptatum ab et impedit aut unde culpa ipsa eligendi. A quia ullam nobis minima quasi suscipit. Non ut quos aut illum dolores iusto voluptates. Quia temporibus consectetur vel omnis suscipit vitae explicabo. Neque earum nobis molestiae adipisci ullam rem porro. Quia repellendus eos ab architecto perspiciatis doloremque. Et et aut delectus totam velit at. Reiciendis repudiandae et voluptatum ea similique voluptas consequuntur. Quo qui quos accusantium velit sint. Eveniet sed nemo alias iusto unde sapiente voluptates. Nesciunt repudiandae amet officia officiis aperiam deserunt. Rerum non reiciendis ipsum dolor aut amet. Rerum et sunt consectetur laudantium laudantium nemo quo. Libero sit aut libero saepe numquam. Dolor est quas aut. Similique reprehenderit quo id in necessitatibus. Id aut quasi exercitationem qui fugiat. Quia eum voluptatem non consequatur odio beatae.','olga47',1,1,'[{\"url\": \"http://filatov.com/sint-et-unde-sed-repellat-assumenda\", \"text\": \"Recusandae quia qui optio.\"}, {\"url\": \"http://petukov.org/quod-et-et-non-tenetur\", \"text\": \"Sed est dolorem minima aut.\"}]','active',NULL,'https://via.placeholder.com/640x480.png/00aabb?text=quae','2023-10-14 11:10:16','2023-10-14 11:10:16'),(8,'voluptatem','Illum earum repellendus et quae sit. Aut quo iure suscipit quia. Tempore aut quis labore et vitae.','Nemo tempora quis autem voluptatem iste qui cupiditate ex. Beatae dolor sequi quasi et sequi rem id. Explicabo facere qui id possimus nam. Autem dolorum quam aut error ratione eos. Vero architecto consequatur eveniet molestiae. Consectetur nihil omnis necessitatibus voluptatem. Repellat possimus dolorem sit eum excepturi. Autem ad occaecati pariatur cumque rerum veniam qui. Quia alias assumenda veritatis eveniet eos officiis praesentium. Saepe eum rerum at ut explicabo dolores sunt recusandae. Expedita impedit quo asperiores omnis natus dicta nobis. Sit cum quos expedita necessitatibus laborum. Cum rerum illum eaque consequatur voluptates rerum consectetur in. Ut sit maiores fugit. Necessitatibus molestiae et ipsam. Consequatur voluptatem aut libero. Harum est dolor neque deserunt autem enim. Nobis ut molestias quo doloremque illo qui. Qui cupiditate eos totam.','ignatev.veniamin',1,1,'[{\"url\": \"http://kostina.ru/id-id-debitis-possimus-aspernatur-assumenda-omnis\", \"text\": \"Quo aliquid nisi molestiae.\"}, {\"url\": \"http://www.filippova.net/velit-nihil-vel-dolores-aliquid-culpa-ipsum.html\", \"text\": \"Vitae sed ut id amet.\"}]','active',NULL,'https://via.placeholder.com/640x480.png/00dd88?text=cumque','2023-10-14 11:10:16','2023-10-14 11:10:16'),(9,'qui','Quidem pariatur nihil mollitia rerum ullam voluptatem illum. Expedita aut ducimus sint eum.','Molestiae reprehenderit ipsum magnam nobis id asperiores dolorem saepe. Voluptatum et quasi dicta. Qui recusandae totam explicabo hic et odio. Quasi non unde fugit et. Nemo consequuntur quo sunt deserunt aut. Non rerum fuga accusantium quo nihil et quia mollitia. Dicta et et nostrum officia voluptatum numquam. Similique modi et quis quia. Ipsa maiores at ea labore odio ut. Enim sint necessitatibus consequatur nihil et non quia. Quam repellat mollitia sed veritatis voluptatem nam. Veritatis repellat ut odio fuga. Reiciendis qui vel molestiae autem sapiente amet. Necessitatibus perspiciatis omnis aut cupiditate ut. Nesciunt labore id tempora hic temporibus quia sunt iusto. Nesciunt cum velit voluptate et esse. Earum eligendi perspiciatis quia non veritatis voluptatem. Omnis ut aspernatur delectus consequatur laborum magnam. Similique qui eos rerum ducimus. Debitis sit reiciendis asperiores. Neque ut velit similique et minima quibusdam sed tempora.','rodionova.marta',1,1,'[{\"url\": \"http://www.odintova.com/fuga-dolorem-cupiditate-nesciunt-quia-reiciendis-assumenda-molestiae\", \"text\": \"Eum quos provident quas.\"}, {\"url\": \"https://www.ignatova.net/quam-alias-optio-autem-reiciendis-labore\", \"text\": \"Non dolores rem eum.\"}]','active',NULL,'https://via.placeholder.com/640x480.png/00cc22?text=quasi','2023-10-14 11:10:16','2023-10-14 11:10:16'),(10,'ut','Fugiat culpa temporibus vitae numquam. Odio quo velit voluptatem quo velit totam ea.','Recusandae dignissimos sapiente officiis et. Fugiat ut eos quae facere tenetur fugiat. Quia cupiditate porro consectetur sint. Est explicabo molestiae blanditiis officiis quia minus quas. Cumque nam nisi nesciunt iusto. Libero assumenda accusamus nulla. Tenetur quia cumque et error et esse deserunt optio. Ullam repudiandae omnis sequi natus non. Dignissimos facilis ea minus incidunt quam officiis. Qui facilis voluptate sed fugit. Officia consequatur sint illo dolor consequatur alias. Voluptatem omnis quam maxime qui dolorem accusantium. Dolor ut rerum omnis tenetur. Velit voluptas et sunt consectetur. Dolore et sed a molestiae ut libero debitis. Et aperiam corporis eligendi. Iste culpa suscipit eligendi minus voluptatem fugit est. Fugit officiis qui aut est sequi. Culpa excepturi hic ratione voluptatibus consequatur ab. Eum architecto ut et eveniet dolorem eos ratione. Modi doloremque dolor suscipit veniam occaecati voluptate ab eum.','ruslan17',1,1,'[{\"url\": \"http://www.isaeva.net/dolores-omnis-voluptas-ab-velit-fugiat\", \"text\": \"Qui velit officiis illo qui.\"}, {\"url\": \"http://koseleva.ru/\", \"text\": \"Quia ut assumenda dolores.\"}]','active',NULL,'https://via.placeholder.com/640x480.png/0088bb?text=sed','2023-10-14 11:10:16','2023-10-14 11:10:16'),(11,'quia','Et et qui aut nobis. Nobis maiores eos rerum sint maxime ea. Eos est laboriosam perferendis.','Voluptatem adipisci architecto molestiae ea ut debitis nisi est. Tempora sunt error molestias hic distinctio enim autem. Aliquam dolores nemo doloribus. Non vel eum et nobis dolorum illo dolorem. Dolores repudiandae non deleniti sed beatae consectetur sit dolorum. Blanditiis dolore perspiciatis expedita sed. Laudantium asperiores omnis qui et dignissimos et. Neque impedit illum tenetur quibusdam. Cum ex vel laudantium fuga dolores delectus necessitatibus ad. Maiores voluptatum sint ratione totam corporis aut. Aut repellendus maxime voluptatum deserunt. Ut ut id necessitatibus aliquid ab eum ut voluptatem. Sapiente ex accusantium necessitatibus. Molestiae rerum sit ut consectetur modi voluptas ut. Numquam cumque sint et voluptatem itaque. Quas qui eum ipsam aut. Aperiam ipsam nam rerum exercitationem repellendus incidunt ut.','elvira.morozov',1,1,'[{\"url\": \"https://frolova.ru/nostrum-voluptatibus-et-perferendis-non-placeat-ducimus.html\", \"text\": \"Quo aut ipsa hic.\"}, {\"url\": \"https://www.galkina.ru/ab-quia-ut-ea-eos\", \"text\": \"Et et nostrum aut minus.\"}]','active',NULL,'https://via.placeholder.com/640x480.png/003311?text=ratione','2023-10-14 11:10:16','2023-10-14 11:10:16'),(12,'voluptatem','Ut et architecto voluptas. In consequatur ullam distinctio qui voluptates repudiandae.','Itaque omnis maiores sequi sint nostrum repellendus. Quia ducimus vel magnam provident. Alias labore numquam tenetur nesciunt. Quia et et aut dolore ipsam est. Consequatur repellendus distinctio temporibus repellendus est voluptate. Beatae ipsa necessitatibus et ut. Aspernatur eum nemo soluta sit ut possimus. Ut qui quos aut sunt. Vel aut labore veritatis perspiciatis non ab iste. Voluptate perspiciatis molestiae necessitatibus. Velit repellat atque et et eligendi. Autem ut iste ea quam necessitatibus excepturi sit. Id sunt aut iste est dolor. Nulla vitae cum quia neque quia. Dignissimos quia reprehenderit eos sapiente. Ab ullam cum eligendi atque accusamus consequatur esse. Est cumque dolorum soluta sint consequatur harum laborum ad. Blanditiis et aliquid aut. Cupiditate et quos est maiores cupiditate.','abram.seleznev',1,1,'[{\"url\": \"http://www.egorova.net/aperiam-dolores-odit-numquam-architecto\", \"text\": \"Sit nisi voluptate nobis.\"}, {\"url\": \"http://www.abramov.ru/enim-et-eveniet-ea.html\", \"text\": \"Est porro qui explicabo.\"}]','active',NULL,'https://via.placeholder.com/640x480.png/007777?text=incidunt','2023-10-14 11:10:16','2023-10-14 11:10:16'),(13,'molestiae','Vitae asperiores quis vitae quia sed quae. Error modi sint ut officiis et corrupti.','Voluptas accusamus doloribus autem optio. Soluta nihil porro id ab. Sunt cumque provident praesentium qui accusantium molestiae. Sint laborum adipisci totam explicabo doloribus aut. Autem quisquam ea minus et quidem consequuntur est. Iusto porro aut qui. Esse non iste recusandae cupiditate odit. Natus dolorem laudantium suscipit ducimus ea illum in. Reiciendis nam officia cupiditate beatae ut vel rem aperiam. Dolorem non tempora nostrum voluptatem sit voluptates. Adipisci occaecati sit rem est aut. Consequatur doloribus quibusdam temporibus autem. Tempora temporibus distinctio architecto rerum unde impedit excepturi. Atque soluta et velit nesciunt reprehenderit nisi esse. Reprehenderit velit accusantium eveniet expedita qui soluta sunt. Necessitatibus id deleniti quo inventore. Error in odio iusto deleniti. Repellat id qui et in doloribus nemo corrupti. In deleniti omnis inventore quasi voluptates architecto quas. Vel sit natus dolores eos. Facilis eos occaecati odit qui quia.','antonova.rozalina',1,1,'[{\"url\": \"http://www.eliseev.ru/blanditiis-ut-nobis-numquam-rerum-temporibus-eligendi-ut-qui\", \"text\": \"Laudantium velit et deleniti.\"}, {\"url\": \"http://www.rozkov.ru/est-ex-sit-sit-dolor-et-amet-ut\", \"text\": \"Expedita et eum id eligendi.\"}]','active',NULL,'https://via.placeholder.com/640x480.png/006633?text=id','2023-10-14 11:10:16','2023-10-14 11:10:16'),(14,'officia','Magni aut rerum dolorum aut. Ad accusantium modi eligendi dolor. Culpa vitae officia qui.','Quae provident est pariatur rerum repellat. Excepturi perferendis consequuntur labore dolorum. Sed molestiae tempora voluptatum assumenda iste ipsum molestiae quia. Ea est ab omnis voluptate. Rerum dolorum fugiat officia perspiciatis possimus. Repudiandae laborum sed accusantium id laudantium eos sint. Voluptas et occaecati blanditiis architecto qui et quam ex. Sed quasi sint nihil magnam. Dolorum error itaque optio molestiae tempora et consectetur nesciunt. Dolores quis ut dolores porro. Molestias rerum similique architecto dolores repellat. Unde non ea est id dolor dolore. Nisi voluptate necessitatibus est nostrum. Voluptatem exercitationem sequi fugiat necessitatibus sit perspiciatis. Natus aliquam et sunt voluptas quis molestiae dolores. Ad consequuntur animi nobis suscipit soluta sint. Doloremque non delectus atque iste qui voluptatibus laboriosam. Vitae ut error dolores.','inessa.artemev',1,1,'[{\"url\": \"http://samoilov.ru/ut-reiciendis-sed-numquam-et-necessitatibus-harum-sequi.html\", \"text\": \"Ipsum et enim et atque qui.\"}, {\"url\": \"https://www.efimov.ru/dolores-exercitationem-est-qui-non-repudiandae-aut-necessitatibus-necessitatibus\", \"text\": \"Et id neque rerum id.\"}]','active',NULL,'https://via.placeholder.com/640x480.png/00cc77?text=optio','2023-10-14 11:10:16','2023-10-14 11:10:16'),(15,'sed','Praesentium qui dignissimos aut quo dolorem. Fugiat dolores repellat fugit impedit totam accusamus.','Quae et libero architecto esse quod. Quod voluptatum qui praesentium qui. Veritatis quam consequatur aut ut laborum. Odio animi delectus soluta ad consequatur delectus. Odio est non dolor in et dolore debitis. Inventore ad in aspernatur est doloremque. Excepturi sit aut deleniti qui. Dicta quia facere voluptatem temporibus enim sequi. Atque deleniti ab velit et. Unde debitis dicta nam in exercitationem est non ut. Non eaque molestias quas qui aut ut ipsa vero. Non autem nulla eum facilis. Nihil quaerat voluptatem voluptatem libero in consectetur voluptas. At iusto sunt ut est incidunt eveniet. Neque assumenda dicta fugit ipsam accusantium quasi. Voluptas impedit accusantium dolor sit repellendus suscipit. Incidunt molestiae aut et suscipit inventore odio. Quibusdam et voluptatem hic quis rerum. Veniam et optio quia dolorem est. Illum rerum animi qui illum dolor. Commodi aut corrupti eaque quis odit ea.','kseniy54',1,1,'[{\"url\": \"https://www.zdanov.ru/alias-voluptatibus-quidem-quia-temporibus-esse-debitis-rem\", \"text\": \"Non illum repellendus dicta.\"}, {\"url\": \"https://www.moiseev.ru/iste-dolores-quasi-dignissimos-officiis-odit-voluptas-corporis\", \"text\": \"Qui eligendi sit ut maxime.\"}]','active',NULL,'https://via.placeholder.com/640x480.png/00ff66?text=sequi','2023-10-14 11:10:16','2023-10-14 11:10:16'),(16,'ducimus','In quasi id est rem. Est aut porro illum quos. Repellendus omnis id dignissimos perferendis.','Odio laudantium minus sapiente placeat ut nihil eius. Nostrum et ab harum neque. Ut officiis iusto explicabo ut. Sunt consequatur nostrum iusto dicta id. Praesentium perferendis aut repudiandae voluptatem modi rerum. Repellendus architecto ab nobis ipsam nisi aut. Quia quia quam sequi. Est quae velit repudiandae sapiente animi eos omnis. Quia ut et accusamus eius deleniti quasi. Molestias sit animi incidunt accusamus et minima aliquam. Laboriosam exercitationem corrupti nulla consectetur. Ex mollitia veritatis id ut rerum dolorem dolorum. Dolorem et odio laborum aspernatur temporibus ducimus sed sit. Dolore ex officia fugiat ratione. Sint aut et sint tempore ut cupiditate. Sit ipsam sint explicabo. Nam iste maiores et est atque. Debitis asperiores eos ipsam nam nobis similique odit. Voluptates vel excepturi non sed tenetur corrupti.','klim28',1,1,'[{\"url\": \"http://www.moiseev.ru/\", \"text\": \"Eum error in dignissimos aut.\"}, {\"url\": \"http://www.egorov.ru/sed-minus-beatae-molestias-tempora-possimus\", \"text\": \"Similique cum rerum id.\"}]','active',NULL,'https://via.placeholder.com/640x480.png/00ccdd?text=quis','2023-10-14 11:10:16','2023-10-14 11:10:16'),(17,'officia','Unde dolor architecto quia et fuga vitae error. Nam necessitatibus quisquam itaque optio ratione.','Corrupti non similique ex eveniet repudiandae et id. Minus ut perferendis et dolorum autem quae officiis officiis. Fugit sequi est quidem doloremque ut esse. Est sed amet quaerat distinctio sed corporis vel. Voluptatum unde natus non. Animi aliquid quaerat cumque similique et quisquam quo. Dolores maiores qui voluptates vel qui dolores rerum. Doloribus eum maiores harum quia labore dolore aut. Totam tempore est voluptatem expedita odio. Commodi voluptatum et perspiciatis provident. Temporibus voluptas sed tempora sunt. Omnis consequatur harum quis nostrum molestiae. Provident pariatur eligendi sint atque tempore sit. Molestias sint magnam natus velit magni amet exercitationem. Aut ad explicabo rerum doloribus ducimus. Veritatis veritatis laborum quia eos. Atque autem quam vel rerum. Sequi et nihil explicabo voluptatum eveniet id sit. Corporis libero dolorum deserunt sit amet autem. Qui aperiam ut ut sit in tempore qui.','valerii39',1,1,'[{\"url\": \"http://sidorova.org/velit-totam-dignissimos-culpa-fugiat-ullam-rerum\", \"text\": \"At consequuntur dolor fuga.\"}, {\"url\": \"http://www.titov.com/\", \"text\": \"Aut est sed ut.\"}]','active',NULL,'https://via.placeholder.com/640x480.png/0055bb?text=quae','2023-10-14 11:10:16','2023-10-14 11:10:16');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_categories`
--

DROP TABLE IF EXISTS `news_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_categories`
--

LOCK TABLES `news_categories` WRITE;
/*!40000 ALTER TABLE `news_categories` DISABLE KEYS */;
INSERT INTO `news_categories` VALUES (1,'School news','Fuga qui sunt aut ratione ut alias. Saepe consequatur eum sed dignissimos vel eum tenetur in.','https://via.placeholder.com/640x480.png/00ff00?text=quia','2023-10-14 11:10:16','2023-10-14 11:10:16');
/*!40000 ALTER TABLE `news_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent_student`
--

DROP TABLE IF EXISTS `parent_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent_student` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint unsigned NOT NULL,
  `student_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_student_parent_id_foreign` (`parent_id`),
  KEY `parent_student_student_id_foreign` (`student_id`),
  CONSTRAINT `parent_student_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `parents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `parent_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent_student`
--

LOCK TABLES `parent_student` WRITE;
/*!40000 ALTER TABLE `parent_student` DISABLE KEYS */;
INSERT INTO `parent_student` VALUES (1,1,1,NULL,NULL),(2,2,1,NULL,NULL),(3,3,2,NULL,NULL),(4,4,2,NULL,NULL),(5,5,3,NULL,NULL),(6,6,3,NULL,NULL),(10,7,4,NULL,NULL),(13,4,5,NULL,NULL),(16,4,4,NULL,NULL);
/*!40000 ALTER TABLE `parent_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `surname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `patronymic` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parents_user_id_foreign` (`user_id`),
  CONSTRAINT `parents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents`
--

LOCK TABLES `parents` WRITE;
/*!40000 ALTER TABLE `parents` DISABLE KEYS */;
INSERT INTO `parents` VALUES (1,12,'Зинаида','Филиппов','Nihil voluptatum.','2023-10-14 11:10:16','2023-10-14 11:10:16'),(2,13,'Спартак','Лебедева','Ut illum.','2023-10-14 11:10:16','2023-10-14 11:10:16'),(3,14,'Кирилл','Мартынова','Voluptas nobis et.','2023-10-14 11:10:16','2023-10-14 11:10:16'),(4,15,'Вероника','Игнатьева','Eveniet mollitia ut.','2023-10-14 11:10:16','2023-10-14 11:10:16'),(5,16,'Лидия','Герасимов','Maxime nobis.','2023-10-14 11:10:16','2023-10-14 11:10:16'),(6,17,'Мария','Нестеров','Quia cum occaecati.','2023-10-14 11:10:17','2023-10-14 11:10:17'),(7,1,'Иван','Иванов','Dolores.','2023-10-14 11:10:17','2023-10-14 11:10:17');
/*!40000 ALTER TABLE `parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'news.list','backpack','2023-10-14 11:10:11','2023-10-14 11:10:11'),(2,'news.create','backpack','2023-10-14 11:10:11','2023-10-14 11:10:11'),(3,'news.update','backpack','2023-10-14 11:10:11','2023-10-14 11:10:11'),(4,'news.delete','backpack','2023-10-14 11:10:11','2023-10-14 11:10:11'),(5,'albums.list','backpack','2023-10-14 11:10:11','2023-10-14 11:10:11'),(6,'albums.create','backpack','2023-10-14 11:10:11','2023-10-14 11:10:11'),(7,'albums.update','backpack','2023-10-14 11:10:11','2023-10-14 11:10:11'),(8,'albums.delete','backpack','2023-10-14 11:10:11','2023-10-14 11:10:11'),(9,'acl.list','backpack','2023-10-14 11:10:11','2023-10-14 11:10:11'),(10,'acl.create','backpack','2023-10-14 11:10:11','2023-10-14 11:10:11'),(11,'acl.update','backpack','2023-10-14 11:10:11','2023-10-14 11:10:11'),(12,'acl.delete','backpack','2023-10-14 11:10:11','2023-10-14 11:10:11');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',21,'authToken','16846d506c58d4d54daecd6de5e54f04f223688763e6f1d778d6187c34bde4bc','[\"*\"]',NULL,NULL,'2023-10-15 17:25:12','2023-10-15 17:25:12');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'http://филипповская-школа.рф/wp-content/uploads/2023/05/1-1.jpg','2023-10-14 11:10:14','2023-10-14 11:10:14'),(2,'http://филипповская-школа.рф/wp-content/uploads/2023/05/2.jpg','2023-10-14 11:10:14','2023-10-14 11:10:14'),(3,'http://филипповская-школа.рф/wp-content/uploads/2023/05/3.jpg','2023-10-14 11:10:14','2023-10-14 11:10:14'),(4,'http://филипповская-школа.рф/wp-content/uploads/2023/05/2.jpeg','2023-10-14 11:10:14','2023-10-14 11:10:14'),(5,'http://филипповская-школа.рф/wp-content/uploads/2023/05/3.jpeg','2023-10-14 11:10:14','2023-10-14 11:10:14'),(6,'http://филипповская-школа.рф/wp-content/uploads/2023/05/4.jpeg','2023-10-14 11:10:14','2023-10-14 11:10:14'),(7,'https://sun9-west.userapi.com/sun9-4/s/v1/ig2/sWUPPhhHRwtFJAUU5_3KjKtpPNb4x_pn1gIenXGAuVGyNR_CkbhzQPqnGbVmL9T3vNML8a4szYdRlvFfXqY7CJEI.jpg?size=1600x1200&quality=95&type=album','2023-10-14 11:10:14','2023-10-14 11:10:14'),(8,'https://sun9-west.userapi.com/sun9-9/s/v1/ig2/kkYmhwmcOygjb_kykldvp7ntmUJUVNNNFQL-nt4Aa5JkvPxaNpN8ngU0Md5fwUwsA6f-5h6KBrgeCFDkALKgv9dJ.jpg?size=1024x768&quality=95&type=album','2023-10-14 11:10:14','2023-10-14 11:10:14'),(9,'https://sun9-west.userapi.com/sun9-56/s/v1/ig2/-n6XiLX-pYVjT_EbDQ4P6cyz8PYqwJFnLVX1ohihVy7kYfmZ1qa4mRKkHbr4ezvLcA-kOnt3YyLwoNSLVfPdZvTc.jpg?size=1280x960&quality=95&type=album','2023-10-14 11:10:14','2023-10-14 11:10:14'),(10,'https://sun9-4.userapi.com/impg/N4oiUQCC2N9eUFybwvsWPalSoJtVFO977dahhw/smIFagoFh5s.jpg?size=1280x960&quality=95&sign=f77a20100c3739d129f5158c2c840cfa&type=album','2023-10-14 11:10:14','2023-10-14 11:10:14'),(11,'https://sun1-24.userapi.com/impg/nOCvs5ci49XvFMX8_m4uwGl5LsgTV5XRkZJQ0Q/qIkdsmAlQRg.jpg?size=960x1280&quality=95&sign=09d1a93ff96422305f274d4c2b32542e&type=album','2023-10-14 11:10:14','2023-10-14 11:10:14'),(12,'https://sun9-73.userapi.com/impg/5zpFM-KfBYLfXE0H4LsDJBMecKJAkmDGRbgljw/B9i7WNu1Joc.jpg?size=1024x768&quality=95&sign=30578b97896519849c8c72dbf0cde87c&type=album','2023-10-14 11:10:14','2023-10-14 11:10:14'),(13,'https://sun9-38.userapi.com/impg/4OwbDkxTJgtI0Lj0o3E7z5XmJwlTJBP3xt39uA/ywvEbSmUJ7s.jpg?size=960x1280&quality=95&sign=0f338829f36b6844c2dcf4678aeedc9d&type=album','2023-10-14 11:10:14','2023-10-14 11:10:14'),(14,'https://sun9-49.userapi.com/impg/Fmj09NTyRHDmG6dZ7htkvXY4eLhscEdj9S4xfA/HLzRlhTprQo.jpg?size=1024x768&quality=95&sign=36113592a4fac26f7de4197c021a6f51&type=album','2023-10-14 11:10:14','2023-10-14 11:10:14'),(15,'https://sun9-35.userapi.com/impg/ykGxErDL3ff30dhejdL1t0y1KbwvxLszq30Pkw/PX4Gu5tW3tk.jpg?size=1280x960&quality=95&sign=ed3834403671db2e48ff8e5f8afd7558&type=album','2023-10-14 11:10:14','2023-10-14 11:10:14'),(16,'https://sun9-49.userapi.com/impg/jEhSkCl55aOaZQPoKMagg1Jr023FB2LWQTmmoQ/TzxDpaJm4Rc.jpg?size=1024x768&quality=95&sign=c6e92c75e02ded4fd44c179fbcc78fab&type=album','2023-10-14 11:10:14','2023-10-14 11:10:14'),(17,'https://sun9-79.userapi.com/impg/nRLw5un8FuuSooIeaD7skw4IQPwZoODCtsemHA/EEnuTEJioOU.jpg?size=1024x768&quality=95&sign=b8786e812566ab2e5e53f925dc981854&type=album','2023-10-14 11:10:14','2023-10-14 11:10:14'),(18,'https://sun9-25.userapi.com/impg/cO9ss1KBq3mWGiXcOI_EzPccUqRMIIsLHZGBzQ/jk_VOWMKzV4.jpg?size=1024x768&quality=95&sign=c1d29ba8532d2e4e79635e1243dca9c3&type=album','2023-10-14 11:10:14','2023-10-14 11:10:14'),(19,'https://sun9-44.userapi.com/impg/otcRtt-dkoVnq4c8gw--whl2odNHCVIPAt3EuA/WF5BlNYMik8.jpg?size=960x1280&quality=95&sign=46021dcef0892f89eb8171aa1cdcb5df&type=album','2023-10-14 11:10:14','2023-10-14 11:10:14'),(20,'https://sun9-60.userapi.com/impg/ppVO2nKsd-vgZY111Ls2PxtFmiLFiaxE1lx-xw/mmM9jnaS2Mk.jpg?size=960x1280&quality=95&sign=67a2558b998536b71cf580bdc70a6658&type=album','2023-10-14 11:10:14','2023-10-14 11:10:14'),(21,'https://via.placeholder.com/640x480.png/0088aa?text=suscipit','2023-10-14 11:10:14','2023-10-14 11:10:14'),(22,'https://via.placeholder.com/640x480.png/006677?text=soluta','2023-10-14 11:10:14','2023-10-14 11:10:14'),(23,'https://via.placeholder.com/640x480.png/0088ff?text=repellat','2023-10-14 11:10:15','2023-10-14 11:10:15'),(24,'https://via.placeholder.com/640x480.png/00ddee?text=aut','2023-10-14 11:10:15','2023-10-14 11:10:15'),(25,'https://via.placeholder.com/640x480.png/002222?text=quibusdam','2023-10-14 11:10:15','2023-10-14 11:10:15'),(26,'https://via.placeholder.com/640x480.png/002299?text=dolores','2023-10-14 11:10:15','2023-10-14 11:10:15'),(27,'https://via.placeholder.com/640x480.png/009999?text=inventore','2023-10-14 11:10:15','2023-10-14 11:10:15'),(28,'storage/data/photo/album/83dce6b3da23375ec3d8f8e608200269.pdf','2023-10-14 11:10:15','2023-10-15 08:52:24');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','backpack','2023-10-14 11:10:11','2023-10-14 11:10:11'),(2,'Учитель','backpack','2023-10-14 11:10:14','2023-10-14 11:10:14'),(3,'Студент','backpack','2023-10-14 11:10:14','2023-10-14 11:10:14'),(4,'Родитель','backpack','2023-10-14 11:10:14','2023-10-14 11:10:14');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `subject_id` bigint unsigned NOT NULL,
  `teacher_id` bigint unsigned NOT NULL,
  `week_day_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `classroom_id` bigint unsigned NOT NULL,
  `call_schedule_id` bigint unsigned NOT NULL,
  `day_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schedules_subject_id_foreign` (`subject_id`),
  KEY `schedules_teacher_id_foreign` (`teacher_id`),
  KEY `schedules_classroom_id_foreign` (`classroom_id`),
  KEY `schedules_call_schedule_id_foreign` (`call_schedule_id`),
  KEY `schedules_day_id_foreign` (`day_id`),
  CONSTRAINT `schedules_call_schedule_id_foreign` FOREIGN KEY (`call_schedule_id`) REFERENCES `call_schedules` (`id`),
  CONSTRAINT `schedules_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  CONSTRAINT `schedules_day_id_foreign` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`),
  CONSTRAINT `schedules_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  CONSTRAINT `schedules_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,19,1,'Понедельник',1,1,1,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(2,2,1,'Понедельник',1,2,1,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(3,1,1,'Понедельник',1,3,1,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(4,12,1,'Понедельник',1,4,1,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(5,1,1,'Вторник',1,1,2,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(6,1,1,'Вторник',1,2,2,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(7,14,1,'Вторник',1,3,2,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(8,10,1,'Вторник',1,4,2,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(9,4,1,'Среда',1,1,3,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(10,3,1,'Среда',1,2,3,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(11,11,1,'Среда',1,3,3,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(12,3,1,'Среда',1,4,3,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(13,12,1,'Четверг',1,1,4,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(14,1,1,'Четверг',1,2,4,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(15,18,1,'Четверг',1,3,4,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(16,11,1,'Четверг',1,4,4,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(17,18,1,'Пятница',1,1,5,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(18,19,1,'Пятница',1,2,5,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(19,13,1,'Пятница',1,3,5,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(20,11,1,'Пятница',1,4,5,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(21,6,1,'Суббота',1,1,6,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(22,3,1,'Суббота',1,2,6,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(23,6,1,'Суббота',1,3,6,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(24,14,1,'Суббота',1,4,6,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(25,4,2,'Понедельник',2,1,1,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(26,13,2,'Понедельник',2,2,1,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(27,9,2,'Понедельник',2,3,1,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(28,19,2,'Понедельник',2,4,1,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(29,6,2,'Вторник',2,1,2,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(30,12,2,'Вторник',2,2,2,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(31,16,2,'Вторник',2,3,2,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(32,14,2,'Вторник',2,4,2,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(33,9,2,'Среда',2,1,3,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(34,19,2,'Среда',2,2,3,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(35,5,2,'Среда',2,3,3,'2023-10-14 11:10:15','2023-10-14 11:10:15'),(36,4,2,'Среда',2,4,3,'2023-10-14 11:10:16','2023-10-14 11:10:16'),(37,15,2,'Четверг',2,1,4,'2023-10-14 11:10:16','2023-10-14 11:10:16'),(38,1,2,'Четверг',2,2,4,'2023-10-14 11:10:16','2023-10-14 11:10:16'),(39,10,2,'Четверг',2,3,4,'2023-10-14 11:10:16','2023-10-14 11:10:16'),(40,4,2,'Четверг',2,4,4,'2023-10-14 11:10:16','2023-10-14 11:10:16'),(41,13,2,'Пятница',2,1,5,'2023-10-14 11:10:16','2023-10-14 11:10:16'),(42,20,2,'Пятница',2,2,5,'2023-10-14 11:10:16','2023-10-14 11:10:16'),(43,11,2,'Пятница',2,3,5,'2023-10-14 11:10:16','2023-10-14 11:10:16'),(44,14,2,'Пятница',2,4,5,'2023-10-14 11:10:16','2023-10-14 11:10:16'),(45,2,2,'Суббота',2,1,6,'2023-10-14 11:10:16','2023-10-14 11:10:16'),(46,3,2,'Суббота',2,2,6,'2023-10-14 11:10:16','2023-10-14 11:10:16'),(47,5,2,'Суббота',2,3,6,'2023-10-14 11:10:16','2023-10-14 11:10:16'),(48,15,2,'Суббота',2,4,6,'2023-10-14 11:10:16','2023-10-14 11:10:16');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `chapter_id` bigint unsigned DEFAULT NULL,
  `sectionTitle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sectionText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `sequence` int DEFAULT NULL,
  `status` enum('active','draft') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sections_sectiontitle_unique` (`sectionTitle`) USING BTREE,
  KEY `sections_chapter_id_foreign` (`chapter_id`) USING BTREE,
  CONSTRAINT `sections_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,1,'Информация об организации','<p><strong>&nbsp;Наименование ОО</strong>:&nbsp;Муниципальное казенное общеобразовательное учреждение «Филипповская средняя общеобразовательная школа» Киржачского района Владимирской области<br><strong>Сокращенно:</strong>МКОУ Филипповская СОШ</p><p><strong>Дата создания образовательной организации:</strong>Декабрь 1975 года</p><p><strong>Место нахождения образовательной организации:</strong>РФ, Владимирская область, Киржачский район, село Филипповское, ул.Советская, дом26</p><p><strong>Режим и график работы:</strong><br>Понедельник-Пятница 8:00-17:00<br>Суббота 8:00-14:00</p><p><strong>Телефон Директора школы:</strong>8 (49237) 7-11-73</p><p><strong>Телефон Заместителя директорапо АХЧ:</strong>8(49237)7-12-74</p><p><strong>Адрес электронной почты:</strong>Filippovskay-sl@yandex.ru</p><p><strong>Адрес официального сайта:</strong>http://филипповская-школа.рф/</p><p><strong>Официальная страница ВКонтакте:</strong>https://vk.com/filippovskayasosh</p><p><strong>Формы обучения:</strong>При реализации образовательных программ используются различные образовательные технологии, в том числе дистанционные образовательные технологии, электронное обучение.</p>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(2,1,'Информация об учредителе','<p><strong>Учредитель:</strong>Администрация Киржачского района Владимирской области</p><p><strong>Начальник управления:</strong>Кузицына Ольга Владимировна</p><p><strong>Место нахождения:</strong>601010, Владимирская область, г.Киржач, ул.Серегина, д.7</p><p><strong>График работы:</strong><br>Понедельник—пятницас8.00до17.00</p><p><strong>Телефон:</strong>8(49237)2-04-00</p><p><strong>Факс:</strong>8(49237)2-03-84</p><p><strong>Адрес электронной почты:</strong>info@kirzhach.su</p><p><strong>Сайт:</strong>http://www.kirzhach.su</p><p><strong>Места осуществления образовательной деятельности:&nbsp;</strong></p><p>601024, Российская Федерация, Центральный федеральный округ,Владимирская обл., Киржачский район., Филипповское с., Советскаяул., д.26.</p><p><strong>Места осуществления образовательной деятельности по дополнительным профессиональным программам:&nbsp;</strong></p><p>нет</p><p><strong>Места осуществленияо бразовательной деятельности по основным программам профессионального обучения:</strong></p><p>нет</p><p><strong>Места осуществления образовательной деятельности при использовании сетевой формы реализации образовательных программ:</strong>нет</p><p><strong>Места проведения практики:</strong></p><p>нет</p><p><strong>Места проведения практической подготовки обучающихся:</strong></p><p>нет</p><p><strong>Места проведения государственной итоговой аттестации:</strong>ОГЭ: МБОУ СОШ №2 (Киржач., Гагарина ул., д.25), МБОУ СОШ №3 (г.Киржач, ул.Чехова, д.10а)&nbsp;ЕГЭ: МБОУ СОШ №5(г.Киржач, ул.40 лет Октября, д.17),МБОУ СОШ №6 им. С.Б.Белкина (г.Киржач, ул.Пушкина, д.27)</p>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(3,2,'Структура и органы управления образовательной организацией','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(4,3,'Документы','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(5,3,'Предписания органов, осуществляющих государственный контроль (надзор) в сфере образования, отчеты об исполнении таких предписаний','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(6,4,'Образование ведется на Русском языке','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(7,4,'Всероссийские проверочные работы','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(8,4,'Государственная итоговая аттестация','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(9,4,'Дистанционное обучение','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(10,4,'График дистанционных занятий','<table><thead><tr><td><strong>1 урок</strong></td><td>9:00 — 9:30</td></tr></thead><tbody><tr><td><strong>2 урок</strong></td><td>9:40 — 10:10</td></tr><tr><td><strong>3 урок</strong></td><td>10:20 — 10:50</td></tr><tr><td><strong>4 урок</strong></td><td>11:00 — 11:30</td></tr><tr><td><strong>5 урок</strong></td><td>11:45 — 12:15</td></tr><tr><td><strong>6 урок</strong></td><td>12:25 — 12:55</td></tr><tr><td><strong>7 урок</strong></td><td>13:00 — 13:30</td></tr></tbody></table>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(11,4,'Реализуемые уровни образования','<p>МКОУ Филипповская СОШ осуществляет образовательный процесс в соответствии с общеобразовательными программами трех уровней общего образования:</p><ul><li>I уровень – начальное общее образование (нормативный срок освоения 4 года);</li><li>II уровень – основное общее образование (нормативный срок освоения 5 лет);</li><li>III уровень – среднее общее образование (нормативный срок освоения 2 года).</li></ul><p><strong>Численность обучающихся по реализуемым образовательным программам:</strong></p><ul><li>Начальное общее образование -106 обучающихся;</li><li>Основное общее образование — 106 обучающихся;</li><li>Среднее общее образование — 20 обучающихся.</li></ul>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(12,4,'Языки, на которых осуществляется образование','<p>Обучение и воспитание в МКОУ «Филипповская средняя общеобразовательная школа» ведётся на русском языке.</p>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(13,4,'Нормативные сроки обучения','<ul><li>I уровень – начальное общее образование (нормативный срок освоения 4 года);</li><li>II уровень – основное общее образование (нормативный срок освоения 5 лет);</li><li>III уровень – среднее общее образование (нормативный срок освоения 2 года).</li></ul>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(14,4,'Срок действия государственной аккредитации образовательной программы','<p>Смотреть в разделе&nbsp;<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/sveden/document/\">Документы</a></p>',500,'active','2023-10-14 11:10:19','2023-10-15 18:48:32'),(15,4,'Образовательные программы','<p>Содержание общего образования определяется образовательными программами, разрабатываемыми и реализуемыми МКОУ Филипповской СОШ самостоятельно на основе федеральных государственных образовательных стандартов и примерных образовательных учебных программ, курсов, дисциплин.</p><p>Освоение образовательных программ основного общего и среднего общего образования завершается обязательной итоговой аттестацией обучающихся. Государственная итоговая аттестация выпускников МКОУ Филипповской СОШ осуществляется в соответствии с положением о Государственной итоговой аттестации выпускников общеобразовательных учреждений, утверждаемым Министерством образования и науки Российской Федерации.</p><p><strong>Виды реализуемых программ:</strong></p><p>а) Основные общеобразовательные программы начального общего образования;</p><p>б) Основные общеобразовательные программы основного общего образования;</p><p>в) Основные общеобразовательные программы среднего общего образования;</p><p>г) Адаптированная образовательная программа НОО и ООО.</p>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(16,4,'Учебный план на 2022-2023 учебный год','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(17,4,'Рабочие программы','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(18,4,'Адаптированные образовательные программы учебных курсов, предметов','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(19,4,'Аннотации к рабочим программам','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(20,11,'Электронная запись в первый класс','<p><strong>УВАЖАЕМЫЕ РОДИТЕЛИ!</strong></p>\r\n<p>Вы можете подать заявление о зачислении в <strong>школу</strong> в электронном виде. <em>Всего лишь одно нажатие и вы попадаете</em> на <a href=\"https://www.gosuslugi.ru/600426/1/form\">&laquo;Единый портал государственных и муниципальных услуг (функций)&raquo;</a><br /><a href=\"https://www.gosuslugi.ru/600426/1/form\"><img class=\"wp-image-2201 alignleft\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie.png\" sizes=\"(max-width: 556px) 100vw, 556px\" srcset=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie.png 1153w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie-300x148.png 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie-1024x506.png 1024w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie-768x380.png 768w\" alt=\"\" width=\"556\" height=\"275\" /></a></p>\r\n<p>Все очень просто.</p>',500,'active','2023-10-14 11:10:19','2023-10-14 13:06:36'),(21,12,'Центр естественно-научного профиля «Точка роста»','<div class=\"post post-one\"><div class=\"post_title_page\"><h2>Центр естественно-научного профиля «Точка роста»</h2></div><p>&nbsp;</p><p><img class=\"wp-image-1180 alignright\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/tochka_rosta-1.jpg\" alt=\"\" width=\"635\" height=\"347\" srcset=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/tochka_rosta-1.jpg 918w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/tochka_rosta-1-300x164.jpg 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/tochka_rosta-1-768x419.jpg 768w\" sizes=\"(max-width: 635px) 100vw, 635px\"></p><p><a href=\"http://филипповская-школа.рф/?page_id=1240&amp;preview=true\"><img class=\"wp-image-1237 aligncenter\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/111.jpg\" alt=\"\" width=\"181\" height=\"66\"></a></p><p><a href=\"http://филипповская-школа.рф/?page_id=1244&amp;preview=true\"><img class=\"wp-image-1238 aligncenter\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/222.jpg\" alt=\"\" width=\"252\" height=\"63\"></a></p><p><a href=\"http://филипповская-школа.рф/?page_id=1246&amp;preview=true\"><img class=\" wp-image-1239 aligncenter\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/333.jpg\" alt=\"\" width=\"178\" height=\"57\"></a></p><p><a href=\"http://филипповская-школа.рф/?page_id=1256&amp;preview=true\"><img class=\"aligncenter wp-image-1255\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/gwzlan9feiw.jpg\" alt=\"\" width=\"248\" height=\"76\"></a></p><p><a href=\"http://филипповская-школа.рф/?page_id=1264&amp;preview=true\"><img class=\"aligncenter size-full wp-image-1262\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/123.jpg\" alt=\"\" width=\"163\" height=\"85\"></a></p><p><img class=\"wp-image-1646 alignright\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-scaled.jpg\" alt=\"\" width=\"258\" height=\"197\" srcset=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-scaled.jpg 2560w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-300x229.jpg 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-1024x781.jpg 1024w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-768x586.jpg 768w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-1536x1171.jpg 1536w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-2048x1562.jpg 2048w\" sizes=\"(max-width: 258px) 100vw, 258px\">С днем рождения, Точка роста!!</p><p>9 сентября 2021 года в нашей школе состоялось торжественное открытие Центра естественно-научной и технологической направленностей.<br>Поздравить школу со столь знаменательным событием собралось много гостей. Глава Киржачского района, секретарь Местного Отделения Партии «Единая Россия» А.Н. Доброхотов, глава администрации Киржачского района И.Н. Букалов, заместите<img class=\"wp-image-1647 alignleft\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-scaled.jpg\" alt=\"\" width=\"285\" height=\"190\" srcset=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-scaled.jpg 2560w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-300x200.jpg 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-1024x683.jpg 1024w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-768x512.jpg 768w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-1536x1024.jpg 1536w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-2048x1365.jpg 2048w\" sizes=\"(max-width: 285px) 100vw, 285px\">ль главы администрации района по социальным вопросам Е.А. Жарова, глава администрации МО Филипповское Л.А. Рубцов вместе с преподавателями и учениками нашей школы заложили Аллею Мудрости, а затем поднялись в новое образовательное пространство. Современные кабинеты химии, физики и биологии, на базе которых с помощью цифровых лабораторий, интерактивного оборудования, тематических коллекций по предметам, комплектам по робототехнике, механике и мехатронике наши ученики смогут получать образование, соответствующее современным требованиям.<br>Наши малыши рассказали стихи о науке, а старшеклассники продемонстрировали возможности нового оборудования и даже пригласили принять участие в опытах И.П. Букалова.<img class=\"wp-image-1648 alignright\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-scaled.jpg\" alt=\"\" width=\"251\" height=\"170\" srcset=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-scaled.jpg 2560w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-300x204.jpg 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-1024x696.jpg 1024w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-768x522.jpg 768w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-1536x1044.jpg 1536w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-2048x1392.jpg 2048w\" sizes=\"(max-width: 251px) 100vw, 251px\">Педагоги «Точки роста» Разбоева В.И., Прохорова Э.В., Беляков В.М. рассказали об особенностях преподавания своих дисциплин и перспективах использования возможностей Центра.<br>Ещё раз поздравляем нашу школу с открытием «Точки роста» и надеемся, что благодаря Центру наши дети достигну высоких результатов!</p><p style=\"font-weight: 400; text-align: left; padding-left: 40px;\">Центр образования естественно-научной и технологической направленностей «Точка роста» на базе на базе МКОУ «Филипповская СОШ» создан в 2021 в рамках федерального проекта «Современная школа» национального проекта «Образование». Он призван обеспечить повышение охвата обучающихся программами основного общего и дополнительного образования естественно-научной и технологической направленностей с использованием современного оборудования.</p><p style=\"font-weight: 400; padding-left: 40px;\">&nbsp; &nbsp; Центры «Точка роста» на базе общеобразовательных организаций сельской местности и малых городов создаются для формирования условий для повышения качества общего образования, в том числе за счет обновления учебных помещений, приобретения современного оборудования, повышения квалификации педагогических работников и расширения практического содержания реализуемых образовательных программ.</p><p style=\"font-weight: 400; padding-left: 40px;\">Центр «Точка роста» является частью образовательной среды общеобразовательной организации, на базе которой осуществляется:</p><p style=\"font-weight: 400; padding-left: 40px;\">—&nbsp;&nbsp;преподавание учебных предметов из предметных областей «Естественно-научные предметы», «Естественные науки», «Обществознание и естествознание», «Математика и информатика», «Технология»;<br>—&nbsp;&nbsp;внеурочная деятельность для поддержки изучения предметов естественно-научной и технологической направленностей;<br>—&nbsp;дополнительное образование детей по программам естественно-научной и технической направленностей;<br>—&nbsp;&nbsp;проведение внеклассных мероприятий для обучающихся;<br>—&nbsp;организация образовательных мероприятий, в том числе в дистанционном формате с участием обучающихся из других образовательных организаций.</p><p style=\"padding-left: 40px;\">Общая информация о национальном проекте «Образование» (в том числе знак национального проекта «Образование»), адрес официального сайта Министерства просвещения Российской Федерации в информационно-телекоммуникационной сети «Интернет» и официальная символика Министерства просвещения Российской Федерации приведены <a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/ffc7c5002b89968a067870f958e8e7c0.pdf\">в презентации.</a></p><h4 style=\"padding-left: 40px;\">Информация о национальном проекте «Образование» размещена на сайте Министерства просвещения Российской Федерации по ссылке:<br><span class=\"link-wrapper-container\"><a href=\"https://edu.gov.ru/national-project/\">https://edu.gov.ru/national-project/</a></span></h4><h4 style=\"padding-left: 40px;\">Официальный адрес Министерства просвещения Российской Федерации:<br><a href=\"https://edu.gov.ru/\">https://edu.gov.ru/</a></h4><p>&nbsp;</p><div class=\"linebottom\"></div></div>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(22,5,NULL,'<p>Российская школа переживает сегодня серьёзные преобразования. На смену парадигме знаний, умений и навыков приходит Федеральный государственный образовательный стандарт общего образования (ФГОС), в основе которого лежит формирование компетентностного подхода, развитие универсальных учебных действий. Приоритетной целью современного российского образования становится не репродуктивная передача знаний, умений и навыков от учителя к ученику, а полноценное формирование и развитие способностей ученика самостоятельно ставить учебную проблему, формулировать алгоритм её решения, контролировать процесс и оценивать полученный результат, т.е. научить учиться. Это станет залогом успешной адаптации в стремительно меняющимся обществе.</p>',500,'active','2023-10-15 19:29:32','2023-10-15 19:59:38'),(23,5,'Состояние разработки и утверждения стандартов','<h4><a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/fgos-2021-goda/\">ФГОС 2021 года</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/fgos-vtorogo-pokoleniya/\">ФГОС второго поколения</a></h4>\r\n\r\n<ul>\r\n	<li><a href=\"http://base.garant.ru/57501916/53f89421bbdaf741eb2d1ecc4ddb4c33/#block_1000\">ФГОС начального общего образования</a></li>\r\n	<li><a href=\"http://base.garant.ru/57503714/53f89421bbdaf741eb2d1ecc4ddb4c33/#block_1000\">ФГОС основного общего образования</a></li>\r\n	<li><a href=\"http://base.garant.ru/70188902/8ef641d3b80ff01d34be16ce9bafc6e0/#block_108\">ФГОС среднего (полного) общего образования</a></li>\r\n</ul>\r\n\r\n<p>Официальные информационные сайты:&nbsp;<a href=\"http://www.mon.gov.ru/\">www.mon.gov.ru</a></p>\r\n\r\n<p>&nbsp;</p>',500,'active','2023-10-15 19:30:15','2023-10-15 19:31:58'),(24,5,'Федеральные Государственные стандарты основного общего образования','<p>С 2015-2016 учебного года в МКОУ Филипповской СОШ вводится федеральный государственный стандарт основного общего образования (ФГОС ООО).</p>\r\n\r\n<p>Главная цель введения ФГОС ООО второго поколения заключается в создании условий, позволяющих решить стратегическую задачу Российского образования &ndash; повышение качества образования, достижение новых образовательных результатов, соответствующих современным запросам личности, общества и государства.</p>\r\n\r\n<p>ФГОС ООО утверждён приказом министерства образования и науки РФ.</p>\r\n\r\n<p>Что представляет собой Федеральный государственный стандарт основного общего образования? Федеральные государственные стандарты устанавливаются в Российской Федерации в соответствии с требованием Статьи 7 &laquo;Закона об образовании&raquo;. Федеральный государственный стандарт основного общего образования(СТАНДАРТ) представляет собой &laquo;совокупность требований, обязательных при реализации основной образовательной программы основного общего образования (ООП ООО) образовательными учреждениями, имеющими государственную аккредитацию&raquo;.</p>\r\n\r\n<p>Чем отличается новый стандарт от предыдущих?</p>\r\n\r\n<p>Первое отличие ФГОС от его предшественников &ndash; опора на результаты выявления запросов личности, семьи, общества и государства к результатам общего образования.</p>\r\n\r\n<p>Вторым принципиальным отличием ФГОС является их ориентация на достижение не только предметных образовательных результатов, но, прежде всего, на формирование личности учащихся, овладение ими универсальными способами учебной деятельности.</p>\r\n\r\n<p>Третье принципиальное отличие новых стандартов от предшествующих версий &mdash; это отличие в структуре.</p>\r\n\r\n<p>ФГОС ориентирует образование на достижение нового качества, адекватного современным (и даже прогнозируемым) запросам личности, общества и государства.</p>\r\n\r\n<p>Введение стандарта второго поколения во многом изменит школьную жизнь ребенка. Речь идет о новых формах организации обучения, новых образовательных технологиях, новой открытой информационно-образовательной среде, далеко выходящей за границы школы. Именно поэтому в стандарт, например, введена Программа формирования универсальных учебных действий, а учебные программы ориентированы на развитие самостоятельной учебной деятельности школьника (на такие виды учебной и внеучебной (внеурочной) деятельности, как учебное проектирование, моделирование, исследовательская деятельность, ролевые игры и др.)</p>\r\n\r\n<p>Отличительной особенностью нового стандарта является его деятельностный характер, ставящий главной целью развитие личности школьника. На уроках сейчас основное внимание будет уделяться развитию видов деятельности ребенка, выполнению различных проектных, исследовательских работ. Важно не просто передать знания школьнику, а научить его овладевать новым знанием, новыми видами деятельности.</p>\r\n\r\n<p>На ступени основного общего образования (5-9) кл у обучающихся должно быть сформировано умение учиться и способность к организации своей деятельности &mdash; умение принимать, сохранять цели и следовать им в учебной деятельности, планировать свою деятельность, осуществлять ее контроль и оценку, взаимодействовать с педагогом и сверстниками в учебном процессе&raquo;.</p>\r\n\r\n<p><strong>Какие требования выдвигает новый стандарт?</strong></p>\r\n\r\n<p>Стандарт выдвигает три группы требований:</p>\r\n\r\n<p>1) Требования к структуре основной образовательной программы основного общего образования.</p>\r\n\r\n<p>Каждое образовательное учреждение, исходя из своей уникальности, разрабатывает собственную образовательную программу, Учебный план, учитывая, в том числе запросы и пожелания родителей школьников. Родители должны познакомиться с программой, чтобы понимать, как будут учить ребенка, по каким технологиям, чему его научат, какими качествами и умениями он будет обладать по окончании основной школы. В учебный план внесены следующие предметы:</p>\r\n\r\n<p>2) Требования к результатам освоения основной образовательной программы основного общего образования.</p>\r\n\r\n<p>Итогом обучения должна будет стать совокупность результатов:</p>\r\n\r\n<p>&mdash; личностных (способность к саморазвитию, желание учиться и др.);<br />\r\n&mdash; метапредметных (универсальные учебные действия);<br />\r\n&mdash; предметных (система основных знаний).</p>\r\n\r\n<p>Оцениваться будет не то, что запомнил ребенок, а то, как он понял изученный материал и может ли его применить в разных ситуациях. Наряду с традиционными устными и письменными работами у учеников появится возможность &laquo;накопительной оценки&raquo; за выполнение тестов, проектов, различных творческих работ. Это могут быть рисунки, сочинения, наблюдения, аудио-, видеоработы, газеты, презентации, создание личного портфолио с коллекцией достижений ученика.</p>\r\n\r\n<p>3) Требования к условиям: реализации основной образовательной программы основного общего образования.</p>\r\n\r\n<p>Раньше никто не вписывал в стандарты нормы, определяющие техническое оснащение учебного процесса, кадровые и финансовые ресурсы. В новом стандарте четко описываются требования к информационному пространству, материально-техническому обеспечению, учебному оборудованию, кадровым и финансовым условиям.</p>\r\n\r\n<p>С информацией о новых образовательных стандартах, образовательными программами по учебным предметам можно ознакомиться на сайте&nbsp;<a href=\"http://www.standart.edu.ru/\">www.standart.edu.ru</a>. Сайт Министерства образования и науки РФ:&nbsp;<a href=\"http://mon.gov.ru/dok/fgos/7195/\">http://mon.gov.ru/dok/fgos/7195/</a></p>\r\n\r\n<p>В настоящее время школа работает над созданием основной образовательной программой основного общего образования</p>',500,'active','2023-10-15 19:33:05','2023-10-15 19:33:05'),(25,5,'Внедрение ФГОС НОО и ФГОС ООО с 01.09.2022 г.','<p>&nbsp;Министерством просвещения утверждены новые федеральные государственные образовательные стандарты (далее &ndash; ФГОС) начального общего и основного общего образования (далее &ndash; НОО и ООО соответственно). Обновлённая редакция ФГОС сохраняет принципы вариативности в формировании школами основных образовательных программ начального общего и основного общего образования, а также учёта интересов и возможностей как образовательных организаций, так и их учеников. Именно с 1 сентября 2022 года начнут действовать ФГОС в каждой школе, а обучающиеся, которые будут приняты на обучение в первые и пятые классы в 2022 году, будут учиться уже по обновленным ФГОС. Для несовершеннолетних обучающихся, зачисленных на обучение до вступления в силу настоящих приказов, возможно обучение по новым ФГОС с согласия их родителей (законных представителей).</p>\r\n\r\n<p>&nbsp;В обновлённых ФГОС сформулированы максимально конкретные требования к предметам всей школьной программы соответствующего уровня, позволяющие ответить на вопросы: что конкретно школьник будет знать, чем овладеет и что освоит. Обновлённые ФГОС также обеспечивают личностное развитие учащихся, включая гражданское, патриотическое, духовно-нравственное, эстетическое, физическое, трудовое, экологическое воспитание.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Обновлённые ФГОС описывают систему требований к условиям реализации общеобразовательных программ, соблюдение которых обеспечивает равенство возможностей получения качественного образования для всех детей независимо&nbsp; от места жительства и дохода семьи. Благодаря обновлённым стандартам школьники получат больше возможностей для того, чтобы заниматься наукой, проводить исследования, используя передовое оборудование.</p>',500,'active','2023-10-15 19:45:22','2023-10-15 19:45:22'),(26,5,'Внедрение ФГОС СОО  с 01.09.2023 г.','<p><strong>&nbsp;С 1 сентября 2023 года обучающиеся 10 классов российских&nbsp; школ переходят на&nbsp; обновленный Федеральный государственный образовательный стандарт среднего общего образования (ФГОС СОО), утвержденный Приказом Минпросвещения от 12.08.2022 № 732.</strong></p>\r\n\r\n<p>Федеральные государственные образовательные стандарты (ФГОС) общего образования &ndash; это совокупность требований, обязательных при реализации основных образовательных программ начального общего, основного общего, среднего общего образования образовательными учреждениями, имеющими государственную аккредитацию.</p>\r\n\r\n<p>Они&nbsp;обеспечивают преемственность основных образовательных программ начального общего, основного общего, среднего общего образования и включают:</p>\r\n\r\n<p>&mdash; требования к структуре основных образовательных программ, в том числе требования к соотношению частей основной образовательной программы и их объёму, а также к соотношению обязательной части основной образовательной программы и части, формируемой участниками образовательного процесса;</p>\r\n\r\n<p>&mdash; требования к условиям реализации основных образовательных программ, в том числе кадровым, финансовым, материально-техническим и иным условиям;</p>\r\n\r\n<p>&mdash; требования к результатам освоения основных образовательных программ.</p>',500,'active','2023-10-15 19:46:19','2023-10-15 19:46:19'),(27,5,'Нормативные основания введения ФГОС ООО (федеральный уровень)','<ul>\r\n	<li>Федеральный закон РФ&nbsp; &laquo;<a href=\"http://www.consultant.ru/document/cons_doc_LAW_140174/\">Об образовании в Российской Федерации</a>&raquo;</li>\r\n	<li>Национальная образовательная инициатива &laquo;<a href=\"http://base.garant.ru/6744437/\">Наша новая школа</a>&raquo;;</li>\r\n	<li>Постановление Главного государственного санитарного врача РФ&nbsp; &laquo;Об утверждении СанПиН 2.4.22821-10 &laquo;<a href=\"http://base.garant.ru/12183577/53f89421bbdaf741eb2d1ecc4ddb4c33/#block_1000\">Санитарно-эпидемиологические требования к условиям и организации обучения в общеобразовательных учреждениях</a>&raquo;;</li>\r\n	<li>Единый квалификационный справочник должностей руководителей, специалистов и служащих&nbsp;<a href=\"http://base.garant.ru/199499/53f89421bbdaf741eb2d1ecc4ddb4c33/#block_1000\">&laquo;Квалификационные характеристики должностей работников образования&raquo;;</a></li>\r\n	<li>Приказ Минобрнауки РФ &laquo;<a href=\"http://base.garant.ru/198112/\">О порядке аттестации педагогических работников государственных и муниципальных образовательных учреждений</a>&raquo;;</li>\r\n	<li>Приказ Минобрнауки РФ&nbsp; &laquo;<a href=\"http://www.rg.ru/2011/02/16/obr-trebovaniya-dok.html\">Об утверждении федеральных требований к образовательным учреждениям в части минимальной оснащенности учебного процесса и оборудования учебных помещений</a>&raquo;;</li>\r\n	<li>Приказ Минобрнауки РФ&nbsp; &laquo;<a href=\"https://rg.ru/2011/02/16/obr-sdorovje-dok.html\">Об утверждении федеральных требований к образовательным учреждениям в части охраны здоровья обучающихся, воспитанников</a>&raquo;;</li>\r\n	<li><a href=\"https://fgosreestr.ru/wp-content/uploads/2017/03/primernaja-osnovnaja-obrazovatelnaja-programma-osnovogo-obshchego-obrazovanija.pdf\">Примерная основная образовательная программа</a></li>\r\n</ul>',500,'active','2023-10-15 19:48:14','2023-10-15 19:48:14'),(28,7,'Изменения показателей бюджетной сметы','<p><a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2018-god/\">Изменение показателей бюджетной сметы 2018 год</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2019-god/\">Изменение показателей бюджетной сметы 2019 год</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2020-god/\">Изменение показателей бюджетной сметы 2020 год</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2021-god/\">Изменение показателей бюджетной сметы 2021 год</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2022-god/\">Изменение показателей бюджетной сметы 2022 год</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2023-god/\">Изменение показателей бюджетной сметы 2023 год</a></p>',500,'draft','2023-10-15 19:54:10','2023-10-15 19:54:10'),(29,7,'Бюджетная смета',NULL,NULL,'active','2023-10-15 19:54:37','2023-10-15 19:58:04');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `surname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `patronymic` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `classroom_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `students_user_id_foreign` (`user_id`),
  KEY `students_classroom_id_foreign` (`classroom_id`),
  CONSTRAINT `students_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,9,'Филипп','Кошелева','Officiis aperiam.',1,'2023-10-14 11:10:16','2023-10-14 11:10:16'),(2,10,'Алла','Фокина','Et laborum iusto.',1,'2023-10-14 11:10:16','2023-10-14 11:10:16'),(3,11,'Инга','Зуев','Molestiae dolore.',2,'2023-10-14 11:10:16','2023-10-14 11:10:16'),(4,18,'Олеся','Смирнов','Facilis itaque.',2,'2023-10-14 11:10:17','2023-10-14 11:10:17'),(5,19,'Алла','Михайлов','Numquam corporis.',2,'2023-10-14 11:10:17','2023-10-14 11:10:17');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_subject` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Русский язык','2023-10-14 11:10:15','2023-10-14 11:10:15'),(2,'Литературное чтение','2023-10-14 11:10:15','2023-10-14 11:10:15'),(3,'Физическая культура','2023-10-14 11:10:15','2023-10-14 11:10:15'),(4,'Лингвистический практикум по иностранному языку','2023-10-14 11:10:15','2023-10-14 11:10:15'),(5,'Осмысленное чтение','2023-10-14 11:10:15','2023-10-14 11:10:15'),(6,'Технология','2023-10-14 11:10:15','2023-10-14 11:10:15'),(7,'Физика','2023-10-14 11:10:15','2023-10-14 11:10:15'),(8,'Разговоры о важном','2023-10-14 11:10:15','2023-10-14 11:10:15'),(9,'Немецкий язык','2023-10-14 11:10:15','2023-10-14 11:10:15'),(10,'Основы безопасности жизнедеятельности','2023-10-14 11:10:15','2023-10-14 11:10:15'),(11,'История России. Всеобщая история','2023-10-14 11:10:15','2023-10-14 11:10:15'),(12,'Основы духуовно-нравственных культур народов России','2023-10-14 11:10:15','2023-10-14 11:10:15'),(13,'Изобразительное искусство','2023-10-14 11:10:15','2023-10-14 11:10:15'),(14,'Основы религиозных культур и светской этики','2023-10-14 11:10:15','2023-10-14 11:10:15'),(15,'Литература','2023-10-14 11:10:15','2023-10-14 11:10:15'),(16,'Английский язык','2023-10-14 11:10:15','2023-10-14 11:10:15'),(17,'Математика','2023-10-14 11:10:15','2023-10-14 11:10:15'),(18,'География','2023-10-14 11:10:15','2023-10-14 11:10:15'),(19,'Химия','2023-10-14 11:10:15','2023-10-14 11:10:15'),(20,'Обществознание','2023-10-14 11:10:15','2023-10-14 11:10:15');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `surname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `patronymic` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `job_title` json DEFAULT NULL,
  `role_id` bigint unsigned NOT NULL,
  `main_photo_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `speciality` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `totalExperience` int DEFAULT NULL,
  `generalTeachingExperience` int DEFAULT NULL,
  `qualification` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `isAdministration` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `teachers_role_id_foreign` (`role_id`),
  KEY `teachers_user_id_foreign` (`user_id`),
  KEY `teachers_main_photo_id_foreign` (`main_photo_id`),
  CONSTRAINT `teachers_main_photo_id_foreign` FOREIGN KEY (`main_photo_id`) REFERENCES `photos` (`id`),
  CONSTRAINT `teachers_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `teachers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,1,'Геннадий','Фомин','Est et nesciunt.','[\"Impedit delectus nihil rerum.\", \"Asperiores qui qui ut aut.\"]',2,21,'2023-10-14 11:10:14','2023-10-14 11:10:14','Esse architecto.','Necessitatibus ad dolor fugiat.',35,30,'A neque voluptatem repellat.',0),(2,2,'Ольга','Панфилов','Aliquam omnis ipsa.','[\"Qui expedita nemo minus eius.\", \"Rerum quis et qui nisi.\"]',2,22,'2023-10-14 11:10:14','2023-10-14 11:10:14','Qui est sit.','Quae veniam ipsam omnis porro repellat.',54,34,'Consequatur quas atque recusandae.',1),(3,3,'Афанасий','Зиновьев','Minima sit sit.','[\"Blanditiis et non ut.\", \"Ipsa officia delectus ut nam.\"]',2,23,'2023-10-14 11:10:14','2023-10-14 11:10:14','Saepe maxime.','Placeat nihil inventore ut.',22,52,'Qui dolore quisquam voluptas in.',0),(4,4,'Светлана','Воронцов','Neque quod et.','[\"Soluta porro illo ipsum.\", \"Sed sed omnis ut.\"]',2,24,'2023-10-14 11:10:15','2023-10-14 11:10:15','Quis id est id.','Animi qui id repellat sapiente dolorem.',51,53,'Qui at dolor ut officia omnis quo.',1),(5,5,'Аркадий','Белякова','Nam numquam ratione.','[\"Et aut et nihil accusamus.\", \"Nam magni expedita provident.\"]',2,25,'2023-10-14 11:10:15','2023-10-14 11:10:15','Nostrum est.','At ex fugit sequi non.',38,42,'Rerum assumenda nobis qui qui sit.',0),(6,6,'Таисия','Романова','Quia quidem et.','[\"Aut a eos ea.\", \"Ut sint enim optio dolores.\"]',2,26,'2023-10-14 11:10:15','2023-10-14 11:10:15','Cupiditate eius.','Sit libero voluptate maiores sunt.',21,5,'Sit temporibus eaque dolore.',0),(7,7,'Тимур','Логинов','Beatae qui aperiam.','[\"Et aut quibusdam quia eaque.\", \"Ut beatae quia repellat.\"]',2,27,'2023-10-14 11:10:15','2023-10-14 11:10:15','Occaecati velit eos.','Quae sit aut debitis porro consectetur.',32,52,'Et porro repudiandae doloremque.',0),(8,8,'Василиса','Белякова','Non qui qui nulla.','[\"Dolores et illo qui suscipit.\", \"Consequatur harum quis optio.\"]',2,28,'2023-10-14 11:10:15','2023-10-14 11:10:15','Sint laudantium et.','Animi nobis ea sint.',40,7,'Totam consequatur qui nihil.',1);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_blocked` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'no',
  `last_activity_at` datetime DEFAULT NULL,
  `avatar` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `telegram_login` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `telegram_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Белозёрова Виталий Алексеевич','lsergeeva@example.net','2023-10-14 11:10:14','$2y$10$3FfjQYK5sTYtUFD6j3naOeXEHz4ogXNIbxRAuvkygQ405.l9D6t.G','6WcuBvBanG','2023-10-14 11:10:14','2023-10-14 11:10:14','no',NULL,NULL,NULL,'(812) 741-84-01',NULL,NULL,NULL),(2,'Калашниковаа Флорентина Алексеевна','yknyzev@example.org','2023-10-14 11:10:14','$2y$10$dxml6qGzjSPAmtDMb3cRiO0qK0jVRPqxKF7m9/Tkhpb0MMzgLWKXi','jQG7GaySTR','2023-10-14 11:10:14','2023-10-14 11:10:14','no',NULL,NULL,NULL,'8-800-653-8785',NULL,NULL,NULL),(3,'Майя Сергеевна Фокина','nonna97@example.net','2023-10-14 11:10:14','$2y$10$vazpz4k9x27XjgPaiYgU4ugU/JR1jNw/3uMJnLVIjmmvf7szTpMCq','27BVvgtnY7','2023-10-14 11:10:15','2023-10-14 11:10:15','no',NULL,NULL,NULL,'(812) 440-15-51',NULL,NULL,NULL),(4,'Добрыня Александрович Рыбакова','radislav56@example.com','2023-10-14 11:10:15','$2y$10$JfqcIrxbqYaQtvOMmexDHeDJokSgKPq.pZCRp3OYh1auNwI4ieTvS','XfLEWKbBnx','2023-10-14 11:10:15','2023-10-14 11:10:15','no',NULL,NULL,NULL,'+7 (922) 212-4872',NULL,NULL,NULL),(5,'Филатова Семён Сергеевич','tsuvorova@example.net','2023-10-14 11:10:15','$2y$10$texletUGVOvn.c/Tv7sZcOK/ic0LrHCNNkk1AAwxXFUyq4fbrYsK.','0MTXo8gKHf','2023-10-14 11:10:15','2023-10-14 11:10:15','no',NULL,NULL,NULL,'(812) 578-29-17',NULL,NULL,NULL),(6,'Крюкова Роберт Сергеевич','zukova.valerii@example.org','2023-10-14 11:10:15','$2y$10$YrZ.BWkYRcjZlLMrcU.HhuR8qDK5NucOiAVYMM1o3KbgaQeQP9lEC','bsvSobFBgY','2023-10-14 11:10:15','2023-10-14 11:10:15','no',NULL,NULL,NULL,'(35222) 50-7313',NULL,NULL,NULL),(7,'Владлен Александрович Капустина','dnovikov@example.org','2023-10-14 11:10:15','$2y$10$Oo8CzWB7AVDiJpi.qfcXFeQQEdGXuBPTu9DufKD9aGETMCCt1FxEG','q5DwYaMI0f','2023-10-14 11:10:15','2023-10-14 11:10:15','no',NULL,NULL,NULL,'(35222) 73-8078',NULL,NULL,NULL),(8,'Горшкова Злата Владимировна','pavel.borisov@example.org','2023-10-14 11:10:15','$2y$10$sNkb5XTItQwl2wZ0PPnbrOcM4OKWXs0Iqda9Jj7t/deL81/VAiQNS','9WPWdhK4MU','2023-10-14 11:10:15','2023-10-14 11:10:15','no',NULL,NULL,NULL,'(495) 848-5961',NULL,NULL,NULL),(9,'Жанна Евгеньевна Архиповаа','milan.galkina@example.org','2023-10-14 11:10:16','$2y$10$R.cwYO5x3v5zA7r1/8Mg2uCNUCokkNETRSRBjoSqAGZJHbrMgdmjy','os5vxqReRn','2023-10-14 11:10:16','2023-10-14 11:10:16','no',NULL,NULL,NULL,'8-800-144-7114',NULL,NULL,NULL),(10,'Медведева Тит Дмитриевич','sofiy.krylova@example.net','2023-10-14 11:10:16','$2y$10$slav7hyRiH1LCHUZ3wX1rufygVC1Tf4qGqLeLDQG88qIjP6pil0H2','7TTXZLSXhg','2023-10-14 11:10:16','2023-10-14 11:10:16','no',NULL,NULL,NULL,'(495) 575-0583',NULL,NULL,NULL),(11,'Захар Александрович Тетерина','igor.aksenov@example.com','2023-10-14 11:10:16','$2y$10$yzA3pt8IQP5iiyeVLOAhVOn5QznVhovVNmMSE9GKiZ.NKeoiquyUe','N0cSo4xxKJ','2023-10-14 11:10:16','2023-10-14 11:10:16','no',NULL,NULL,NULL,'(812) 695-43-62',NULL,NULL,NULL),(12,'Филиппов Тимур Сергеевич','vyceslav34@example.net','2023-10-14 11:10:16','$2y$10$RCE4YhT5aFXEuUst23ysCO6DHFdzCZuhI5BRnVTGu9lGFpwlr02p.','UCgPpynWtm','2023-10-14 11:10:16','2023-10-14 11:10:16','no',NULL,NULL,NULL,'(35222) 78-0716',NULL,NULL,NULL),(13,'Трофимоваа Лидия Романовна','flukina@example.net','2023-10-14 11:10:16','$2y$10$mcOCt2KvD5SFKECaonB.FuwHikZSp3Mkzk0G2TbBv/zEeWVqAdSUu','61gV7W1bww','2023-10-14 11:10:16','2023-10-14 11:10:16','no',NULL,NULL,NULL,'(812) 504-27-26',NULL,NULL,NULL),(14,'Назарова Клавдия Александровна','apollon.samoilov@example.com','2023-10-14 11:10:16','$2y$10$bMviBLrCEv4/.Ip5l4uQoO5qnPFxOWGuFYpsZHWswXaYKRO5NNIXa','p0OkZWNo2s','2023-10-14 11:10:16','2023-10-14 11:10:16','no',NULL,NULL,NULL,'(35222) 10-4379',NULL,NULL,NULL),(15,'Сазонова Рената Владимировна','ekaterina00@example.net','2023-10-14 11:10:16','$2y$10$ZXNH5cT7/e6XmB4wR9K1NOfU8KXYOGH9TSKQzNDdQdLcgrQwzit8q','Si7AxuitPd','2023-10-14 11:10:16','2023-10-14 11:10:16','no',NULL,NULL,NULL,'(35222) 81-6411',NULL,NULL,NULL),(16,'Афанасий Алексеевич Киселёва','zdanova.ulyna@example.net','2023-10-14 11:10:16','$2y$10$5I6Hh8b0pvoqcQ5tc7qSSuXa9f77rSTNJztE6mxzn/J.tw1QA47Tq','XzF2imoDbg','2023-10-14 11:10:17','2023-10-14 11:10:17','no',NULL,NULL,NULL,'(35222) 64-1521',NULL,NULL,NULL),(17,'Мельникова Семён Сергеевич','iskra04@example.net','2023-10-14 11:10:17','$2y$10$XeHv1OztomaGaohmBuaOqOsqHNo1sWbZBt3Et2Lv3C3/Z.vjUeTpm','sWM8qdEZJu','2023-10-14 11:10:17','2023-10-14 11:10:17','no',NULL,NULL,NULL,'(812) 462-06-84',NULL,NULL,NULL),(18,'Павлов Иннокентий Евгеньевич','lsimonova@example.com','2023-10-14 11:10:17','$2y$10$QNku6xFF80mIQQokxUfm2e/YutEJxS9vb8hyqlQPNImlgWu6Dvcx.','bAUTuWmPDf','2023-10-14 11:10:17','2023-10-14 11:10:17','no',NULL,NULL,NULL,'8-800-599-1898',NULL,NULL,NULL),(19,'Флорентина Борисовна Шарапова','vtretykova@example.org','2023-10-14 11:10:17','$2y$10$H9xfARSBf38Lu8oZO0VWXeDoDh7J4jv03B/DVgLG1.09K2qBTLREy','7ldyRGBtWc','2023-10-14 11:10:17','2023-10-14 11:10:17','no',NULL,NULL,NULL,'(35222) 30-3965',NULL,NULL,NULL),(20,'Титоваа Лариса Романовна','user@mail.ru','2023-10-14 11:10:22','$2y$10$lIe0X8omdD7O3OBhpkhMYedCr261ULvOjgBvdvBDkPQ8Nw1JNCPw.','3taWQiTj5t','2023-10-14 11:10:22','2023-10-14 11:10:22','no',NULL,NULL,NULL,'(35222) 74-5044',NULL,NULL,NULL),(21,'Яна Максимовна Абрамова','admin@mail.ru','2023-10-14 11:10:22','$2y$10$5c.dYBwfn259yS78TlXsVeCVzn4arPvqsfQyX0uZaFswTfqaWEI7a','zN0PSZGreGPDEVTtrUpjp4Ck5VrosYMF8mIA5yXFh83GsmgIPONT9sZQbCAc','2023-10-14 11:10:23','2023-10-14 11:10:23','no',NULL,NULL,NULL,'+7 (922) 301-3565',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=@OLD_INNODB_STATS_AUTO_RECALC */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-18 21:07:07