-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pokemon
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cards` (
  `id` int NOT NULL AUTO_INCREMENT,
  `collection_id` int DEFAULT NULL,
  `rarity` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `set` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (1,1,'Common','5/203','Seedot','Seedot.jpg'),(2,1,'Rare','7/203','Leafeon V','LeafeonV.jpg'),(3,1,'Common','22/203','Litleo	','Litleo.jpg'),(4,1,'Common','49/203','Pikachu	','Pikachu49.jpg'),(5,1,'Common','78/203','Cutiefly	','Cutiefly.jpg'),(6,1,'Uncommon','146/203','Dream Ball','DreamBall.jpg'),(7,1,'Ultra Rare','189/203','Umbreon V','UmbreonVUR.jpg'),(8,1,'Ultra Rare','201/203','Gordie	','Gordie.jpg'),(9,1,'Secret Rare','236/203','Dark Energy','DarkEnergy.jpg'),(10,2,'Common','22/198','Castform	','Castform.jpg'),(11,2,'Common','47/198','Mareep	','Mareep.jpg'),(12,2,'Rare','119/198','Blissey V','BlisseyV.jpg'),(13,2,'Uncommon','139/198','Flannery	','Flannery.jpg'),(14,2,'Ultra Rare','160/198','Celebi V','CelebiVUR.jpg'),(15,2,'Ultra Rare','185/198','Tornadus V','TornadusV.jpg'),(16,2,'Ultra Rare','197/198','Peony	','Peony.jpg'),(17,2,'Secret Rare','218/198','Melony	','Melony.jpg'),(18,2,'Secret Rare','224/198','Snorlax	','Snorlax.jpg'),(19,2,'Secret Rare','232/198','Psychic Energy','PsychicEnergy.jpg'),(20,3,'Common','14/163','Fomantis','Fomantis.jpg'),(21,3,'Rare','18/163','Flapple ','FlappleV.jpg'),(22,1,'Rare','8/203','Leafeon VMAX','LeafeonVMAX.jpg'),(23,3,'Rare','19/163','Flapple VMAX','FlappleVMAX.jpg'),(24,3,'Rare','40/163','Empoleon V','EmpoleonV.jpg'),(25,3,'Rare','86/163','Urshifu VMAX Single Strike','UrshifuVMAXSingle.jpg'),(26,3,'Rare','88/163','Urshifu VMAX Rapid Strike','UrshifuVMAXRapid.jpg'),(27,3,'Uncommon','135/163','Sordward & Shielbert','Sord.jpg'),(28,3,'Rare','142/163','Kricketune V','KricketuneV.jpg'),(29,3,'Rare','158/163','Bruno','Bruno.jpg'),(30,3,'Secret Rare','170/163','Rapid Strike Urshifu VMAX','UrshifuSR.jpg'),(31,4,'Amazing Rare','21/72','Kyogre','Kyogre.jpg'),(32,4,'Common','35/72','Morpeko','Morpeko35.jpg'),(33,4,'Common','36/72','Morpeko','Morpeko36.jpg'),(34,4,'Common','43/72','Spinarak','Spinarak.jpg'),(35,4,'Rare','71/72','Rose','Rose.jpg'),(36,4,'Rare','SV3','Decidueye','Decidueye.jpg'),(37,4,'Rare','SV105','Rillaboom V','RillaboomV.jpg'),(38,4,'Rare','SV107','Charizard VMAX','CharizardVMAX.jpg'),(39,4,'Rare','SV118','Ditto V','DittoV.jpg'),(40,4,'Rare','SV121','Eternatus V','EternatusV.jpg'),(41,5,'Amazing Rare','9/185','Celebi','Celebi.jpg'),(42,5,'Common','23/185','Charmander','Charmander.jpg'),(43,5,'Rare','43/185','Pikachu V','PikachuV43.jpg'),(44,5,'Rare','44/185','Pikachu VMAX','PikachuVMAX.jpg'),(45,5,'Common','77/185','Dedenne','Dedenne.jpg'),(46,5,'Rare','99/185','Coalossal VMAX','CoalossalVMAX.jpg'),(47,5,'Amazing Rare','119/185','Jirachi','Jirachi.jpg'),(48,5,'Ultra Rare','170/185','Pikachu V','PikachuVUR.jpg'),(49,5,'Ultra Rare','183/185','Nessa','Nessa.jpg'),(50,5,'Secret Rare','195/185','Leon','Leon.jpg'),(51,5,'Secret Rare','200/185','Cape of Toughness','CoT.jpg'),(52,6,'Common','11/73','Carvanha','Carvanha.jpg'),(53,6,'Uncommon','12/73','Sharpedo','Sharpedo.jpg'),(54,6,'Rare','23/73','Alcremie VMAX','AlcremieVMAX.jpg'),(55,6,'Common','24/73','Machop','Machop.jpg'),(56,6,'Rare','56/73','Marnie','Marnie.jpg'),(57,6,'Uncommon','63/73','Rotom Bike','RotomBike.jpg'),(58,6,'Rare','69/73','Drednaw V','DrednawV.jpg'),(59,6,'Rare','73/73','Hop','Hop.jpg'),(60,6,'Secret Rare','74/73','Charizard VMAX','CharizardVMAXHR.jpg'),(61,6,'Secret Rare','79/73','Charizard V','CharizardV.jpg'),(62,6,'Secret Rare','80/73','Suspicious Food Tin','SFT.jpg');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `released` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` VALUES (1,'Evolving Skies','27.08.2021','EvolvingSkiesBanner2.jpg'),(2,'Chilling Reign','18.06.2021','ChillingReignBanner2.png'),(3,'Battle Styles','19.03.2021','BattleStylesBanner2.png'),(4,'Shining Fates','19.02.2021','Charizard VMAX-1920x1080.jpg'),(5,'Vivid Voltage','13.11.2020','VividVoltage1.png'),(6,'Champion\'s Path','25.09.2020','ChampionsPath2.jpg');
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(450) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(450) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(450) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (31,'jarik','test@test.ch','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_collections`
--

DROP TABLE IF EXISTS `user_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_collections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `card_id` int DEFAULT NULL,
  `collection_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_collections`
--

LOCK TABLES `user_collections` WRITE;
/*!40000 ALTER TABLE `user_collections` DISABLE KEYS */;
INSERT INTO `user_collections` VALUES (115,31,9,1),(116,31,51,5),(117,31,44,5),(118,31,25,3),(119,31,28,3),(120,31,27,3),(121,31,24,3),(122,31,30,3),(123,31,53,6);
/*!40000 ALTER TABLE `user_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_favourite`
--

DROP TABLE IF EXISTS `user_favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_favourite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `card_id` int DEFAULT NULL,
  `collection_id` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_favourite`
--

LOCK TABLES `user_favourite` WRITE;
/*!40000 ALTER TABLE `user_favourite` DISABLE KEYS */;
INSERT INTO `user_favourite` VALUES (139,31,29,'3'),(140,31,36,'4'),(141,31,34,'4'),(142,31,31,'4'),(143,31,40,'4'),(144,31,62,'6'),(145,31,53,'6'),(146,31,57,'6'),(147,31,52,'6');
/*!40000 ALTER TABLE `user_favourite` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-22 13:16:56
