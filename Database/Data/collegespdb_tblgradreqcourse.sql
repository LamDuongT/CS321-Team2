-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: collegespdb
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `tblgradreqcourse`
--

DROP TABLE IF EXISTS `tblgradreqcourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblgradreqcourse` (
  `gradreqcourseID` int(11) NOT NULL AUTO_INCREMENT,
  `majorID` int(11) DEFAULT NULL,
  `minorID` int(11) DEFAULT NULL,
  `courseName` varchar(20) DEFAULT NULL,
  `gradreqDesc` mediumtext,
  PRIMARY KEY (`gradreqcourseID`),
  KEY `gradreqcourse_major_idx` (`majorID`),
  KEY `gradreqcourse_minor_idx` (`minorID`),
  CONSTRAINT `gradreqcourse_major` FOREIGN KEY (`majorID`) REFERENCES `tblmajor` (`majorID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `gradreqcourse_minor` FOREIGN KEY (`minorID`) REFERENCES `tblminor` (`minorID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 COMMENT='The courses that is required for certain major, minor to graduate	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgradreqcourse`
--

LOCK TABLES `tblgradreqcourse` WRITE;
/*!40000 ALTER TABLE `tblgradreqcourse` DISABLE KEYS */;
INSERT INTO `tblgradreqcourse` VALUES (1,1,9999,'CS Core','%|11|11|CS110,CS112,CS211,CS262,CS306,CS310,CS321,CS330,CS367,CS471,CS483'),(2,1,9999,'Senior CS 1','%|1|3|CS455,CS468,CS475'),(3,1,9999,'Senior CS 2','%|4|18|CS425,CS440,CS450,CS451,CS455,CS463,CS465,CS468,CS469,CS475,CS477,CS480,CS482,CS484,CS485,CS490,CS491,CS499,MATH446'),(4,1,9999,'Mathematics','%|5|5|MATH113,MATH114,MATH125,MATH203,MATH213'),(5,1,9999,'Statistics','%|1|1|STAT344'),(6,1,9999,'CS-Related','%|2|17|STAT354,OR335,OR441,OR442,ECE301,ECE431,ECE447,ECE450,ECE511,SWE432,SWE437,SWE443,SYST371,SYST470,PHIL371,PHIL367,ENGH388'),(7,1,9999,'Communication','%|1|1|COMM100'),(131,6,9999,'Foundation Courses','%|10|10|IT102,MATH125,IT104,IT105,IT106,IT109,IT206,IT209,IT216,STAT250\"'),(132,6,9999,'Core Courses','%|11|11|IT207,IT213,IT214,IT223,IT300, IT304, IT341,IT342,IT343,MBUS300,SYST469'),(133,6,9999,'2-Semester Capstone','%|2|2|IT492|IT493'),(134,6,9999,'Non-Lab Science','%|1|15|ANTH135,ASTR103,ASTR302,BIOL140,CHEM101,CHEM102,CHEM201,CHEM202,CLIM101,EVPP201,GEOL134,GGS102,NUTR295,PHYS106,PROV301'),(135,6,9999,'Lab Natural Science','%|1|29|ASTR111,ASTR113,ASTR115,BIOL103,BIOL104,BIOL213,CDS101,CHEM103,CHEM104,CHEM155,CHEM156,CHEM211,CHEM213,CHEM251,CLIM102,CLIM111,EVPP110,EVPP111,GEOL111,GEOL112,GGS121,PHYS103,PHYS104,PHYS111,PHYS160,PHYS243,PHYS245,PHYS260,PHYS262'),(136,6,9999,'Other: Comminication','%|1|2|COMM100,COMM101'),(137,6,9999,'Other: IT','%|1|1|IT293'),(138,6,9999,'Other: Math','%|1|2|MATH108,MATH113'),(146,1,9999,'Natural Science','%|3|8|BIOL103,BIOL107,CHEM211,CHEM212,GEOL101,GEOL102,PHYS160,PHYS260'),(147,1,9999,'Arts','%|1|4|ARTH101,ARTH102,ARTH103,ARTH200'),(148,1,9999,'Western Civ I','%|1|2|HIST100,HIST125'),(149,1,9999,'Western Civ II','%|1|2|HIST101,HIST102'),(150,1,9999,'Social/Behavior Sci','%|1|4|AFAM200,BUS100,PSYC100,ECON100'),(151,1,9999,'Written - Upper','%|1|1|ENGH302'),(152,1,9999,'Writing-Intensive','%|1|5|CS321'),(153,1,9999,'Written - Lower','%|1|2|ENGH101,ENGH100'),(154,1,9999,'Global Understanding','%1|5|ARTH385,DANC118,FAVS300,HIST251,HIST460');
/*!40000 ALTER TABLE `tblgradreqcourse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-25 12:22:03
