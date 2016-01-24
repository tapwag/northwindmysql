-- MySQL dump 10.15  Distrib 10.0.22-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: nordwind
-- ------------------------------------------------------
-- Server version	10.0.22-MariaDB

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
-- Current Database: `nordwind`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `nordwind` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `nordwind`;

--
-- Table structure for table `artikel`
--

DROP TABLE IF EXISTS `artikel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artikel` (
  `artikelnr` int(11) DEFAULT NULL,
  `artikelname` varchar(30) DEFAULT NULL,
  `lieferantennummer` int(11) DEFAULT NULL,
  `kategorienr` int(11) DEFAULT NULL,
  `liefereinheit` varchar(100) DEFAULT NULL,
  `einzelpreis` decimal(10,0) DEFAULT NULL,
  `lagerbestand` int(11) DEFAULT NULL,
  `bestellteeinheiten` int(11) DEFAULT NULL,
  `mindestbestand` int(11) DEFAULT NULL,
  `auslaufartikel` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikel`
--

LOCK TABLES `artikel` WRITE;
/*!40000 ALTER TABLE `artikel` DISABLE KEYS */;
/*!40000 ALTER TABLE `artikel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bestelldetails`
--

DROP TABLE IF EXISTS `bestelldetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bestelldetails` (
  `bestellnummer` int(11) DEFAULT NULL,
  `artikelnr` int(11) DEFAULT NULL,
  `einzelpreis` decimal(10,0) DEFAULT NULL,
  `anzahl` int(11) DEFAULT NULL,
  `rabatt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bestelldetails`
--

LOCK TABLES `bestelldetails` WRITE;
/*!40000 ALTER TABLE `bestelldetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `bestelldetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bestellung`
--

DROP TABLE IF EXISTS `bestellung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bestellung` (
  `bestellnr` int(11) DEFAULT NULL,
  `kundencode` varchar(10) DEFAULT NULL,
  `personalnummer` int(11) DEFAULT NULL,
  `bestelldatum` date DEFAULT NULL,
  `lieferdatum` date DEFAULT NULL,
  `versanddatum` date DEFAULT NULL,
  `firmennummer` int(11) DEFAULT NULL,
  `frachtkosten` decimal(10,0) DEFAULT NULL,
  `empfaenger` varchar(50) DEFAULT NULL,
  `ort` varchar(30) DEFAULT NULL,
  `bestimmungsland` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bestellung`
--

LOCK TABLES `bestellung` WRITE;
/*!40000 ALTER TABLE `bestellung` DISABLE KEYS */;
/*!40000 ALTER TABLE `bestellung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategorie`
--

DROP TABLE IF EXISTS `kategorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategorie` (
  `kategorienr` int(11) DEFAULT NULL,
  `kategoriename` varchar(30) DEFAULT NULL,
  `beschreibung` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategorie`
--

LOCK TABLES `kategorie` WRITE;
/*!40000 ALTER TABLE `kategorie` DISABLE KEYS */;
/*!40000 ALTER TABLE `kategorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kunde`
--

DROP TABLE IF EXISTS `kunde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kunde` (
  `kundencode` varchar(10) DEFAULT NULL,
  `firma` varchar(50) DEFAULT NULL,
  `kontaktperson` varchar(50) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `strasse` varchar(50) DEFAULT NULL,
  `ort` varchar(30) DEFAULT NULL,
  `plz` varchar(10) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL,
  `land` varchar(15) DEFAULT NULL,
  `telefon` int(11) DEFAULT NULL,
  `telefax` int(11) DEFAULT NULL,
  `homepage` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kunde`
--

LOCK TABLES `kunde` WRITE;
/*!40000 ALTER TABLE `kunde` DISABLE KEYS */;
/*!40000 ALTER TABLE `kunde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lieferant`
--

DROP TABLE IF EXISTS `lieferant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lieferant` (
  `lieferantenid` int(11) DEFAULT NULL,
  `firma` varchar(50) DEFAULT NULL,
  `kontaktperson` varchar(50) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `strasse` varchar(50) DEFAULT NULL,
  `ort` varchar(30) DEFAULT NULL,
  `plz` varchar(10) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL,
  `land` varchar(15) DEFAULT NULL,
  `telefon` int(11) DEFAULT NULL,
  `telefax` int(11) DEFAULT NULL,
  `homepage` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lieferant`
--

LOCK TABLES `lieferant` WRITE;
/*!40000 ALTER TABLE `lieferant` DISABLE KEYS */;
/*!40000 ALTER TABLE `lieferant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal` (
  `personalnr` int(11) DEFAULT NULL,
  `nachname` varchar(30) DEFAULT NULL,
  `vorname` varchar(30) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `anrede` varchar(10) DEFAULT NULL,
  `geburtsdatum` date DEFAULT NULL,
  `einstellung` date DEFAULT NULL,
  `strasse` varchar(50) DEFAULT NULL,
  `ort` varchar(30) DEFAULT NULL,
  `plz` varchar(10) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL,
  `land` varchar(30) DEFAULT NULL,
  `telefonprivat` int(11) DEFAULT NULL,
  `durchwahlbuero` int(11) DEFAULT NULL,
  `vorgesetzer` int(11) DEFAULT NULL,
  `bemerkungen` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versandfirma`
--

DROP TABLE IF EXISTS `versandfirma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versandfirma` (
  `fimennr` int(11) DEFAULT NULL,
  `firma` varchar(50) DEFAULT NULL,
  `telefon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versandfirma`
--

LOCK TABLES `versandfirma` WRITE;
/*!40000 ALTER TABLE `versandfirma` DISABLE KEYS */;
/*!40000 ALTER TABLE `versandfirma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-23 15:32:46
