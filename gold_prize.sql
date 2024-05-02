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
-- Table structure for table `prize`
--

DROP TABLE IF EXISTS `prize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prize` (
  `prize_id` int NOT NULL AUTO_INCREMENT,
  `year` int DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `value` float DEFAULT NULL,
  PRIMARY KEY (`prize_id`),
  KEY `fk_year6` (`year`),
  CONSTRAINT `fk_year6` FOREIGN KEY (`year`) REFERENCES `years` (`year`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prize`
--

LOCK TABLES `prize` WRITE;
/*!40000 ALTER TABLE `prize` DISABLE KEYS */;
INSERT INTO `prize` VALUES (1,2010,'USD',1224.52),(2,2011,'USD',1571.52),(3,2012,'USD',1668.98),(4,2013,'USD',1411.23),(5,2014,'USD',1266.4),(6,2015,'USD',1160.06),(7,2016,'USD',1250.8),(8,2017,'USD',1257.15),(9,2018,'USD',1268.49),(10,2019,'USD',1392.6),(11,2020,'USD',1769.59),(12,2021,'USD',1798.61),(13,2022,'USD',1800.09),(14,2023,'USD',1940.54),(15,2010,'EUR',925.07),(16,2011,'EUR',1129.72),(17,2012,'EUR',1298.4),(18,2013,'EUR',1063.6),(19,2014,'EUR',952.91),(20,2015,'EUR',1045.18),(21,2016,'EUR',1129.1),(22,2017,'EUR',1114.23),(23,2018,'EUR',1073.57),(24,2019,'EUR',1244.88),(25,2020,'EUR',1549.04),(26,2021,'EUR',1520.66),(27,2022,'EUR',1710.39),(28,2023,'EUR',1794.95),(29,2010,'JPY',107090),(30,2011,'JPY',124899),(31,2012,'JPY',133090),(32,2013,'JPY',137199),(33,2014,'JPY',133678),(34,2015,'JPY',140384),(35,2016,'JPY',135418),(36,2017,'JPY',140957),(37,2018,'JPY',140040),(38,2019,'JPY',151689),(39,2020,'JPY',188771),(40,2021,'JPY',197452),(41,2022,'JPY',236044),(42,2023,'JPY',272978),(43,2010,'GBP',792.32),(44,2011,'GBP',980.64),(45,2012,'GBP',1052.89),(46,2013,'GBP',903.71),(47,2014,'GBP',768.23),(48,2015,'GBP',758.88),(49,2016,'GBP',926.96),(50,2017,'GBP',976.15),(51,2018,'GBP',949.69),(52,2019,'GBP',1092.96),(53,2020,'GBP',1379.05),(54,2021,'GBP',1307.47),(55,2022,'GBP',1457.88),(56,2023,'GBP',1560.71),(57,2010,'CAD',1260.96),(58,2011,'CAD',1556.33),(59,2012,'CAD',1667.11),(60,2013,'CAD',1450.96),(61,2014,'CAD',1397.36),(62,2015,'CAD',1480.79),(63,2016,'CAD',1655.09),(64,2017,'CAD',1631.29),(65,2018,'CAD',1642.26),(66,2019,'CAD',1847.14),(67,2020,'CAD',2371.23),(68,2021,'CAD',2254.25),(69,2022,'CAD',2340.57),(70,2023,'CAD',2619.22),(71,2010,'CHF',1273.85),(72,2011,'CHF',1388.58),(73,2012,'CHF',1564.9),(74,2013,'CHF',1308.97),(75,2014,'CHF',1157.3),(76,2015,'CHF',1115.49),(77,2016,'CHF',1230.68),(78,2017,'CHF',1237.23),(79,2018,'CHF',1240.46),(80,2019,'CHF',1383.37),(81,2020,'CHF',1658.14),(82,2021,'CHF',1643.88),(83,2022,'CHF',1718.5),(84,2023,'CHF',1744.25),(85,2010,'INR',55973.9),(86,2011,'INR',73468.5),(87,2012,'INR',89057.5),(88,2013,'INR',82241.6),(89,2014,'INR',77229.8),(90,2015,'INR',74313),(91,2016,'INR',84006.9),(92,2017,'INR',81853.6),(93,2018,'INR',86650.6),(94,2019,'INR',98093.1),(95,2020,'INR',131203),(96,2021,'INR',132986),(97,2022,'INR',141287),(98,2023,'INR',160226),(99,2010,'CNY',8283.04),(100,2011,'CNY',10147.6),(101,2012,'CNY',10530.5),(102,2013,'CNY',8684.25),(103,2014,'CNY',7802.03),(104,2015,'CNY',7285.1),(105,2016,'CNY',8305.79),(106,2017,'CNY',8487.15),(107,2018,'CNY',8384.07),(108,2019,'CNY',9634.88),(109,2020,'CNY',12199.8),(110,2021,'CNY',11602),(111,2022,'CNY',12096.9),(112,2023,'CNY',13750.7),(113,2010,'TRY',1843.16),(114,2011,'TRY',2655.5),(115,2012,'TRY',3003.12),(116,2013,'TRY',2674.54),(117,2014,'TRY',2767.59),(118,2015,'TRY',3152.84),(119,2016,'TRY',3772.09),(120,2017,'TRY',4582.91),(121,2018,'TRY',6099.62),(122,2019,'TRY',7907.42),(123,2020,'TRY',12504),(124,2021,'TRY',15976.6),(125,2022,'TRY',29710),(126,2023,'TRY',46269.1),(127,2010,'SAR',4592.21),(128,2011,'SAR',5893.7),(129,2012,'SAR',6259.2),(130,2013,'SAR',5292.61),(131,2014,'SAR',4750.23),(132,2015,'SAR',4351.7),(133,2016,'SAR',4691.38),(134,2017,'SAR',4714.75),(135,2018,'SAR',4760.12),(136,2019,'SAR',5223.97),(137,2020,'SAR',6640.89),(138,2021,'SAR',6746.33),(139,2022,'SAR',6758.88),(140,2023,'SAR',7280.53),(141,2010,'IDR',11115200),(142,2011,'IDR',13789800),(143,2012,'IDR',15653900),(144,2013,'IDR',14602400),(145,2014,'IDR',15007300),(146,2015,'IDR',15524000),(147,2016,'IDR',16615800),(148,2017,'IDR',16818800),(149,2018,'IDR',18038800),(150,2019,'IDR',19691700),(151,2020,'IDR',25800000),(152,2021,'IDR',25734100),(153,2022,'IDR',26699600),(154,2023,'IDR',29569600),(155,2010,'AED',4497.58),(156,2011,'AED',5772.16),(157,2012,'AED',6130.18),(158,2013,'AED',5183.46),(159,2014,'AED',4651.52),(160,2015,'AED',4260.9),(161,2016,'AED',4594.17),(162,2017,'AED',4617.43),(163,2018,'AED',4659.14),(164,2019,'AED',5114.98),(165,2020,'AED',6499.7),(166,2021,'AED',6606.3),(167,2022,'AED',6611.71),(168,2023,'AED',7127.19),(169,2010,'THB',38729.6),(170,2011,'THB',47905.4),(171,2012,'THB',51835.9),(172,2013,'THB',43226.7),(173,2014,'THB',41115.6),(174,2015,'THB',39672.2),(175,2016,'THB',44092.8),(176,2017,'THB',42640.9),(177,2018,'THB',40975.3),(178,2019,'THB',43183.8),(179,2020,'THB',55344.6),(180,2021,'THB',57538.5),(181,2022,'THB',63015),(182,2023,'THB',67552.8),(183,2010,'VND',23459900),(184,2011,'VND',32493800),(185,2012,'VND',34818700),(186,2013,'VND',29641900),(187,2014,'VND',26822900),(188,2015,'VND',25394100),(189,2016,'VND',27964300),(190,2017,'VND',28557400),(191,2018,'VND',29184400),(192,2019,'VND',32342800),(193,2020,'VND',41105700),(194,2021,'VND',41251100),(195,2022,'VND',42106000),(196,2023,'VND',46252700),(197,2010,'EGP',6910.83),(198,2011,'EGP',9345.95),(199,2012,'EGP',10129.9),(200,2013,'EGP',9688.33),(201,2014,'EGP',8971.17),(202,2015,'EGP',8938.36),(203,2016,'EGP',12420.4),(204,2017,'EGP',22420.5),(205,2018,'EGP',22593.2),(206,2019,'EGP',23383),(207,2020,'EGP',27991),(208,2021,'EGP',28232.1),(209,2022,'EGP',34416.8),(210,2023,'EGP',59587.4),(211,2010,'KRW',1416470),(212,2011,'KRW',1741010),(213,2012,'KRW',1879340),(214,2013,'KRW',1545490),(215,2014,'KRW',1332780),(216,2015,'KRW',1311780),(217,2016,'KRW',1449120),(218,2017,'KRW',1421770),(219,2018,'KRW',1395060),(220,2019,'KRW',1625480),(221,2020,'KRW',2085670),(222,2021,'KRW',2059240),(223,2022,'KRW',2322620),(224,2023,'KRW',2535510),(225,2010,'RUB',37236),(226,2011,'RUB',46275.7),(227,2012,'RUB',51808.8),(228,2013,'RUB',44829.6),(229,2014,'RUB',48490.6),(230,2015,'RUB',70867.3),(231,2016,'RUB',83668.5),(232,2017,'RUB',73359.4),(233,2018,'RUB',79407.9),(234,2019,'RUB',90090.9),(235,2020,'RUB',128392),(236,2021,'RUB',132521),(237,2022,'RUB',126859),(238,2023,'RUB',166082),(239,2010,'ZAR',8945.64),(240,2011,'ZAR',11458.2),(241,2012,'ZAR',13698.1),(242,2013,'ZAR',13543.5),(243,2014,'ZAR',13724.4),(244,2015,'ZAR',14745.5),(245,2016,'ZAR',18349.5),(246,2017,'ZAR',16746.5),(247,2018,'ZAR',16745.4),(248,2019,'ZAR',20154.9),(249,2020,'ZAR',29171.4),(250,2021,'ZAR',26589.1),(251,2022,'ZAR',29397.3),(252,2023,'ZAR',35825.9),(253,2010,'AUD',1331.69),(254,2011,'AUD',1523.35),(255,2012,'AUD',1610.4),(256,2013,'AUD',1454.48),(257,2014,'AUD',1402.56),(258,2015,'AUD',1542.68),(259,2016,'AUD',1679.72),(260,2017,'AUD',1639.58),(261,2018,'AUD',1695.7),(262,2019,'AUD',2006.19),(263,2020,'AUD',2563.14),(264,2021,'AUD',2395.23),(265,2022,'AUD',2592.53),(266,2023,'AUD',2924.06);
/*!40000 ALTER TABLE `prize` ENABLE KEYS */;
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