-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dbb
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  PRIMARY KEY (`brand_id`),
  UNIQUE KEY `UK_hsu7w3m7wxvplg49ip7g0v5rr` (`brand_name`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (24,'Apartments','https://designcontest.nyc3.digitaloceanspaces.com/data/contests/107251/entries/8c37ff5a99abfca1.png');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  KEY `item_id` (`item_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `username` (`username`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE,
  CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `personal_info` (`person_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (11,36,'ayuraptor'),(13,41,'ayush');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `person_id` (`person_id`),
  KEY `username` (`username`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `personal_info` (`person_id`) ON DELETE CASCADE,
  CONSTRAINT `employee_ibfk_4` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (7,33,100,NULL),(8,38,50000,NULL),(10,40,40000,NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `expenses_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`expenses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (5,10000,'2019-10-10 18:22:16','Paid electricity bill','Electricity');
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(255) NOT NULL,
  `item_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `customer_id` (`customer_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE,
  CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (16,11,'2020-11-13 10:43:51','Very Good One',28,4,38),(17,11,'2020-11-15 08:12:34','Cool !',29,5,39);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iitem`
--

DROP TABLE IF EXISTS `iitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iitem` (
  `iid` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `cost_price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  KEY `iid` (`iid`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `iitem_ibfk_1` FOREIGN KEY (`iid`) REFERENCES `invoice` (`invoice_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `iitem_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iitem`
--

LOCK TABLES `iitem` WRITE;
/*!40000 ALTER TABLE `iitem` DISABLE KEYS */;
INSERT INTO `iitem` VALUES (13,29,0,2);
/*!40000 ALTER TABLE `iitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income_tax`
--

DROP TABLE IF EXISTS `income_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income_tax` (
  `income_tax_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `penality` int(11) NOT NULL,
  `fixed_assets` int(11) DEFAULT NULL,
  `loans_and_advances` int(11) DEFAULT NULL,
  `other_assets` int(11) DEFAULT NULL,
  `balance_with_banks` int(11) DEFAULT NULL,
  `cash_in_hand` int(11) DEFAULT NULL,
  `inventory` int(11) DEFAULT NULL,
  PRIMARY KEY (`income_tax_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income_tax`
--

LOCK TABLES `income_tax` WRITE;
/*!40000 ALTER TABLE `income_tax` DISABLE KEYS */;
INSERT INTO `income_tax` VALUES (9,10000,'2020-11-23 07:38:48',200,6589,4568,326,489756,26589,2);
/*!40000 ALTER TABLE `income_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplierid` int(11) NOT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `supplierid` (`supplierid`),
  CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`supplierid`) REFERENCES `supplier` (`supplier_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (13,2,'2020-11-23 08:29:33',18);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `cost_price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `mrp` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `qt_avail` int(11) NOT NULL DEFAULT '1',
  `rating` int(11) NOT NULL,
  `sold_qt` int(11) NOT NULL DEFAULT '0',
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `brand_id` (`brand_id`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (28,24,'Apartments',8400000,8,'https://cf.bstatic.com/images/hotel/max1024x768/662/66283273.jpg',9500000,'Apartment_1',7,5,1,'Nice Apartment in Mumbai'),(29,24,'Lajpat Nagar',6400000,10,'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fa0.muscache.com%2Fim%2Fpictures%2F1bbf896b-6f8d-4915-96dd-55a7488d03a7.jpg%3Faki_policy%3Dx_large&f=1&nofb=1',7000000,'Apartment_2',13,5,1,'Spacious Apartment in Delhi'),(31,24,'',5000000,5,'https://akm-img-a-in.tosshub.com/sites/btmt/images/stories/sea-view_660_041217043513.jpg',6500000,'Apartment_3',4,5,1,'Sea View');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_info`
--

DROP TABLE IF EXISTS `personal_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_info` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `adharno` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `UK_35foplfi87fvn18trg9hl5upp` (`email`),
  UNIQUE KEY `UK_eqh5olr0xpeuankm175xtfacf` (`phoneno`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_info`
--

LOCK TABLES `personal_info` WRITE;
/*!40000 ALTER TABLE `personal_info` DISABLE KEYS */;
INSERT INTO `personal_info` VALUES (32,'M','vishwasaraya hostel,sa 16/92 m awadhpuri colony','194555454554,454554545454','aman@gmail.com','aman','yadav','9412345678,9793105275','221005','1999-08-27'),(33,'M','sa sasaska ksaksaksk','19985665','amanyadav2202@gmail.com','lol','YADAV','9415655656','221005','1999-08-27'),(35,'M','Sa 16/jn  jdsjidjs','54545454','ramlal@mail.com','RAM LAL','Singh','12212212','221005','1999-08-27'),(36,'M','TDI CITY','894596547896','hello@world.com','Ayush','Singh','07300694836','244001','2000-01-16'),(37,'F','','','','','','','',NULL),(38,'M','14,Type 3 Quarters,Officers Colony (Near CMO Residence),DM Compound,Shahjahanpur','894596544269','nice@mail.com','Anmol','Agarwal','7300694836','242001','1999-09-16'),(39,'M','qwerty','256987456328','hello@mailworld.com','aise','kaises','9865742315','259875','1997-12-25'),(40,'M','hno,locality','45698745612','nice@world.com','Ankit','Sharma','7894561234','265478','1994-06-15'),(41,'M','hno,locality','456987456125','nice_world.com','ayush','singh','7894567894','265478','1999-09-16'),(43,'Male','home','12365597432','email@email','ayush','singh','1345689656','242001','2000-01-16');
/*!40000 ALTER TABLE `personal_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reciept`
--

DROP TABLE IF EXISTS `reciept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reciept` (
  `receipt_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `amount_payed` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `discount` int(11) NOT NULL,
  PRIMARY KEY (`receipt_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `reciept_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reciept`
--

LOCK TABLES `reciept` WRITE;
/*!40000 ALTER TABLE `reciept` DISABLE KEYS */;
INSERT INTO `reciept` VALUES (38,8740000,8740000,11,'2020-11-13 10:42:58',0),(39,6300000,5863000,11,'2020-11-15 08:11:33',6),(40,6175000,5860000,11,'2020-11-23 09:06:09',7);
/*!40000 ALTER TABLE `reciept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ritem`
--

DROP TABLE IF EXISTS `ritem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ritem` (
  `rid` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `mrp` int(11) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  KEY `item_id` (`item_id`),
  KEY `ritem_ibfk_1_idx` (`rid`),
  CONSTRAINT `ritem_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `reciept` (`receipt_id`),
  CONSTRAINT `ritem_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ritem`
--

LOCK TABLES `ritem` WRITE;
/*!40000 ALTER TABLE `ritem` DISABLE KEYS */;
INSERT INTO `ritem` VALUES (38,28,9500000,8,1),(39,29,7000000,10,1),(40,31,6500000,5,1);
/*!40000 ALTER TABLE `ritem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`supplier_id`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `personal_info` (`person_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (16,35),(18,43);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `recovery_code` varchar(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('',1,'$2a$10$du0CEojzYg0iZ/l9v47rnuSDg8fYHBSVviOpTVKpB3x9rjPUfDBXC','abc','Customer','ROLE_CLIENT'),('a',1,'a','ZVvVElhVj3','a','ROLE_ADMIN'),('admin',1,'$2a$10$Dj/FKKkEv7XI3KBwqPNYBeK8nUv7iOl3U8426tpwXmjl9QlKoLM1y','abc','ADMIN','ROLE_ADMIN'),('aise',1,'$2a$10$OIYtnrilh9TMO67n8.Tyw.fIHmfH4zMO6hC0s7LXFuxIxoP/Wlhfq','abc','ADMIN','ROLE_ADMIN'),('aman',1,'$2a$10$ksZ6hPbABOhSmTKZwR9qeuBMuBYl/ZiTTzUJuWnSzLaw/wzUsePXW','abc','Customer','ROLE_CLIENT'),('ankit',1,'$2a$10$D75muXYKvCRsT9.fE.wISuFt.K566xpE6mmRMNryaBFfWS..5QQ92','abc','ADMIN','ROLE_EMPLOYEE'),('ayuraptor',1,'$2a$10$5dtUdGvQupYimDa79kk0AONRT/sj4Bp.mYBrZ6HK5nbYNwQaA3YW6','abc','Customer','ROLE_CLIENT'),('ayush',1,'$2a$10$Igb4NSA28aSOwuG4IUL3pe31HjlI/.EmBiolRi1rd6X7hxy3VTk7q','abc','Customer','ROLE_CLIENT'),('hello',1,'$2a$10$BZSJaJfj0SLzYRv1KL5jdePvhimG3Cd6YM1mzXhrebZVUKxUOHjYG','abc','ADMIN','ADMIN');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `credits` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `active` int(11) DEFAULT NULL,
  PRIMARY KEY (`voucher_id`),
  KEY `customerid` (`customerid`),
  CONSTRAINT `voucher_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher`
--

LOCK TABLES `voucher` WRITE;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
INSERT INTO `voucher` VALUES (6,437000,11,0),(7,315000,11,0),(8,154375,11,1);
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-23 16:04:49
