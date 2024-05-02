-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gold
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `unit` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `currency_code` varchar(10) NOT NULL,
  `year` int DEFAULT NULL,
  `value_usd` int DEFAULT NULL,
  PRIMARY KEY (`currency_code`),
  KEY `fk_year3` (`year`),
  KEY `fk_country1` (`country`),
  CONSTRAINT `fk_country1` FOREIGN KEY (`country`) REFERENCES `countries` (`name`),
  CONSTRAINT `fk_year3` FOREIGN KEY (`year`) REFERENCES `years` (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES ('Dirham','United Arab Emirates','AED',2001,4),('Lek','Albania','ALL',2001,142),('Dram','Armenia','AMD',2001,550),('Afghani','Afghanistan','ANF',2001,78400),('Kwanza','Angola','AOA',2001,20),('Peso','Argentina','ARS',2001,1),('Dollar','Australia','AUD',2001,2),('Manat','Azerbaijan','AZN',2001,4600),('Marka','Bosnia-Hercegovina','BAM',2001,2),('Dollar','Barbados','BBD',2001,2),('Taka','Bangladesh','BDT',2001,54),('Lev','Bulgaria','BGN',2001,2),('Dinar','Bahrain','BHD',2001,0),('Franc','Burundi','BIF',2001,781),('Dollar','Bermuda','BMD',2001,1),('Dollar','Brunei','BND',2001,2),('Boliviano','Bolivia','BOB',2001,6),('Real','Brazil','BRL',2001,2),('Dollar','Bahamas','BSD',2001,1),('Pula','Botswana','BWP',2001,5),('Ruble','Belarus','BYN',2001,1230),('Dollar','Belize','BZD',2001,2),('Dollar','Canada','CAD',2001,2),('Congolese Franc','Congo, Dem. Rep','CDF',2001,50),('Franc','Switzerland','CHF',2001,2),('Peso','Chile','CLP',2001,574),('Renminbi','China','CNY',2001,8),('Peso','Colombia','COP',2001,2263),('Colon','Costa Rica','CRC',2001,321),('Peso','Cuba','CUP',2001,1),('Escudo','Cape Verde','CVE',2001,121),('Koruna','Czechia','CZK',2001,37),('Franc','Djibouti','DJF',2001,177),('Krone','Denmark','DKK',2001,8),('Peso','Dominican Republic','DOP',2001,17),('Dinar','Algeria','DZD',2001,77),('Pound','Egypt','EGP',2001,4),('Nakfa','Eritrea','ERN',2001,10),('Birr','Ethiopia','ETB',2001,8),('Euro','Austria','EUR',2001,1),('Dollar','Fiji','FJD',2001,2),('Pound Sterling','United Kingdom','GBP',2001,1),('Lari','Georgia','GEL',2001,2),('Cedi','Ghana','GHS',2001,7095),('Dalasi','Gambia','GMD',2001,15),('Franc','Guinea','GNF',2001,1900),('Quentzal','Guatemala','GTQ',2001,8),('Dollar','Guyana','GYD',2001,180),('Dollar','Hong Kong','HKD',2001,8),('Lempira','Honduras','HNL',2001,15),('Gourde','Haiti','HTG',2001,24),('Forint','Hungary','HUF',2001,289),('Rupiah','Indonesia','IDR',2001,9440),('Shekel','Israel','ILS',2001,4),('Rupee','India','INR',2001,47),('Dinar','Iraq','IQD',2001,1),('Rial','Iran','IRR',2001,1),('Krona','Iceland','ISK',2001,86),('Dollar','Jamaica','JMD',2001,45),('Dinar','Jordan','JOD',2001,1),('Yen','Japan','JPY',2001,117),('Shilling','Kenya','KES',2001,78),('Som','Kyrgyzstan','KGS',2001,49),('Riel','Cambodia','KHR',2001,3910),('Franc','Comoros','KMF',2001,533),('Won','Korea','KRW',2001,1253),('Dinar','Kuwait','KWD',2001,0),('Dollar','Cayman Islands','KYD',2001,711),('Tenge','Kazakhstan','KZT',2001,147),('Kip','Laos','LAK',2001,8197),('Pound','Lebanon','LBP',2001,1501),('Rupee','Sri Lanka','LKR',2001,86),('U.S. Dollar','Liberia','LRD',2001,41),('South African Rand','Lesotho','LSL',2001,8),('Dinar','Libya','LYD',2001,4),('Dirham','Morocco','MAD',2001,11),('Leu','Moldova','MDL',2001,13),('Ariary','Madagascar','MGA',2001,6460),('Denar','North Macedonia','MKD',2001,66),('Kyat','Burma-Myanmar','MMK',2001,350),('Tugrik','Mongolia','MNT',2001,1098),('Mop','Macao','MOP',2001,66),('Ouguiya','Mauritania','MRU',2001,239),('Rupee','Mauritius','MUR',2001,28),('Kwacha','Malawi','MWK',2001,80),('Peso','Mexico','MXN',2001,10),('Ringgit','Malaysia','MYR',2001,4),('Metical','Mozambique','MZN',2001,18025),('Dollar','Namibia','NAD',2001,8),('Naira','Nigeria','NGN',2001,113),('Cordoba','Nicaragua','NIO',2001,13),('Krone','Norway','NOK',2001,9),('Rupee','Nepal','NPR',2001,74),('Dollar','New Zealand','NZD',2001,2),('Rial','Oman','OMR',2001,0),('Balboa','Panama','PAB',2001,1),('Nuevo Sol','Peru','PEN',2001,4),('Kina','Papua New Guinea','PGK',2001,3),('Peso','Philippines','PHP',2001,48),('Rupee','Pakistan','PKR',2001,59),('Zloty','Poland','PLN',2001,4),('Guarani','Paraguay','PYG',2001,3735),('Riyal','Qatar','QAR',2001,4),('Leu','Romania','RON',2001,27056),('Dinar','Serbia','RSD',2001,6),('Ruble','Russia','RUB',2001,433),('Franc','Rwanda','RWF',2001,433),('Riyal','Saudi Arabia','SAR',2001,4),('Dollar','Solomon Islands','SBD',2001,5),('Rupee','Seychelles','SCR',2001,6),('Sudanese Pound','Sudan','SDG',2001,257),('Krona','Sweden','SEK',2001,10),('Dollar','Singapore','SGD',2001,2),('Leone','Sierra Leone','SLE',2001,1950),('Guilder','Suriname','SRD',2001,2320),('Pound','South Sudanese','SSP',2001,29),('Dobras','Sao Tome & Principe','STN',2001,7315),('Colon','El Salvador','SVC',2001,9),('Pound','Syria','SYP',2001,46),('Lilangeni','Swaziland','SZL',2001,8),('Baht','Thailand','THB',2001,43),('Ruble','Tajikistan','TJS',2001,2),('Ruble','Turkmenistan','TMT',2001,5250),('Dinar','Tunisia','TND',2001,1),('Pa\'Anga','Tonga','TOP',2001,2),('Lira','Turkey','TRY',2001,930000),('Dollar','Trinidad & Tobago','TTD',2001,6),('Dollar','Taiwan','TWD',2001,32),('Shilling','Tanzania','TZS',2001,819),('Hryvnia','Ukraine','UAH',2001,6),('Shilling','Uganda','UGX',2001,1680),('Dollar','Ecuador','USD',2001,1),('Peso','Uruguay','UYU',2001,13),('Som','Uzbekistan','UZS',2001,794),('Bolivar','Venezuela','VED',2001,704),('Dong','Vietnam','VND',2001,14562),('Vatu','Vanuatu','VUV',2001,142),('Cfa Franc','Cameroon','XAF',2001,711),('E. Caribbean Dollar','Antigua-Barbuda','XCD',2001,3),('Cfa Franc','Benin','XOF',2001,711),('Rial','Yemen','YER',2001,165),('Rand','South Africa','ZAR',2001,8),('Kwacha','Zambia','ZMW',2001,3520),('Dollar','Zimbabwe','ZWL',2001,80);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-02 12:45:12
