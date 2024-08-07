-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: librarydb
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Jojo','Moyes'),(2,'Jane','Austen'),(3,'George','Orwell'),(4,'Mark','Twain'),(5,'Charles','Dickens'),(6,'F. Scott','Fitzgerald'),(7,'Ernest','Hemingway'),(8,'Harper','Lee'),(9,'J.K.','Rowling'),(10,'J.R.R.','Tolkien'),(11,'Agatha','Christie'),(12,'Leo','Tolstoy'),(13,'Virginia','Woolf'),(14,'H.G.','Wells'),(15,'Herman','Melville'),(16,'James','Joyce'),(17,'Oscar','Wilde'),(18,'Emily','Bronte'),(19,'Charlotte','Bronte'),(20,'Aldous','Huxley'),(21,'Gabriel','Garcia Marquez'),(22,'Isabel','Allende'),(23,'Margaret','Atwood'),(24,'Toni','Morrison'),(25,'Kazuo','Ishiguro'),(26,'Kurt','Vonnegut'),(27,'Haruki','Murakami'),(28,'John','Steinbeck'),(29,'Philip','Roth'),(30,'Ian','McEwan'),(31,'Zadie','Smith'),(32,'Salman','Rushdie'),(33,'Chinua','Achebe'),(34,'Jhumpa','Lahiri'),(35,'Alice','Walker'),(36,'Michael','Ondaatje'),(37,'Orhan','Pamuk'),(38,'Umberto','Eco'),(39,'Vladimir','Nabokov'),(40,'Doris','Lessing'),(41,'Thomas','Mann'),(42,'Gabriel','Garcia'),(43,'Mario','Vargas Llosa'),(44,'R.K.','Narayan'),(45,'Amitav','Ghosh'),(46,'Arundhati','Roy'),(47,'V.S.','Naipaul'),(48,'Salman','Rushdie'),(49,'David','Mitchell'),(50,'Hanya','Yanagihara');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors_books`
--

DROP TABLE IF EXISTS `authors_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors_books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `book_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `authors_books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  CONSTRAINT `authors_books_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors_books`
--

LOCK TABLES `authors_books` WRITE;
/*!40000 ALTER TABLE `authors_books` DISABLE KEYS */;
INSERT INTO `authors_books` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,40,40),(41,41,41),(42,21,42),(43,43,43),(44,44,44),(45,45,45),(46,46,46),(47,47,47),(48,48,48),(49,49,49),(50,50,50),(51,1,51),(52,2,52),(53,3,53),(54,4,54),(55,5,55),(56,6,56),(57,7,57),(58,8,58),(59,9,59),(60,10,60),(61,11,61),(62,12,62),(63,13,63),(64,14,64),(65,15,65),(66,16,66),(67,17,67),(68,18,68),(69,19,69),(70,20,70),(71,21,71),(72,22,72),(73,23,73),(74,24,74),(75,25,75),(76,26,76),(77,27,77),(78,28,78),(79,29,79),(80,30,80),(81,31,81),(82,32,82),(83,33,83),(84,34,84),(85,35,85),(86,36,86),(87,37,87),(88,38,88),(89,39,89),(90,40,90),(91,41,91),(92,21,92),(93,43,93),(94,44,94),(95,45,95),(96,46,96),(97,47,97),(98,48,98),(99,49,99),(100,50,100);
/*!40000 ALTER TABLE `authors_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author_id` int NOT NULL,
  `yearPublished` int DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Me Before You',1,2012,'Not Available'),(2,'Pride and Prejudice',2,1813,'Not Available'),(3,'1984',3,1949,'Not Available'),(4,'Adventures of Huckleberry Finn',4,1884,'Available'),(5,'Great Expectations',5,1861,'Available'),(6,'The Great Gatsby',6,1925,'Available'),(7,'The Old Man and the Sea',7,1952,'Available'),(8,'To Kill a Mockingbird',8,1960,'Available'),(9,'Harry Potter and the Sorcerer\'s Stone',9,1997,'Not Available'),(10,'The Hobbit',10,1937,'Available'),(11,'Murder on the Orient Express',11,1934,'Available'),(12,'War and Peace',12,1869,'Not Available'),(13,'Mrs Dalloway',13,1925,'Available'),(14,'The War of the Worlds',14,1898,'Available'),(15,'Moby Dick',15,1851,'Available'),(16,'Ulysses',16,1922,'Available'),(17,'The Picture of Dorian Gray',17,1890,'Available'),(18,'Wuthering Heights',18,1847,'Available'),(19,'Jane Eyre',19,1847,'Available'),(20,'Brave New World',20,1932,'Available'),(21,'One Hundred Years of Solitude',21,1967,'Available'),(22,'The House of the Spirits',22,1982,'Available'),(23,'The Handmaid\'s Tale',23,1985,'Available'),(24,'Beloved',24,1987,'Available'),(25,'Never Let Me Go',25,2005,'Available'),(26,'Slaughterhouse-Five',26,1969,'Available'),(27,'Norwegian Wood',27,1987,'Available'),(28,'The Grapes of Wrath',28,1939,'Available'),(29,'American Pastoral',29,1997,'Available'),(30,'Atonement',30,2001,'Available'),(31,'White Teeth',31,2000,'Available'),(32,'Midnight\'s Children',32,1981,'Available'),(33,'Things Fall Apart',33,1958,'Available'),(34,'The Namesake',34,2003,'Available'),(35,'The Color Purple',35,1982,'Available'),(36,'The English Patient',36,1992,'Available'),(37,'My Name is Red',37,1998,'Available'),(38,'The Name of the Rose',38,1980,'Available'),(39,'Lolita',39,1955,'Available'),(40,'The Golden Notebook',40,1962,'Available'),(41,'The Magic Mountain',41,1924,'Available'),(42,'Love in the Time of Cholera',21,1985,'Available'),(43,'The Feast of the Goat',43,2000,'Available'),(44,'Malgudi Days',44,1943,'Available'),(45,'The Glass Palace',45,2000,'Available'),(46,'The God of Small Things',46,1997,'Available'),(47,'A House for Mr. Biswas',47,1961,'Available'),(48,'Shalimar the Clown',48,2005,'Available'),(49,'Cloud Atlas',49,2004,'Available'),(50,'A Little Life',50,2015,'Available'),(51,'Still Me',1,2018,'Not Available'),(52,'Sense and Sensibility',2,1811,'Not Available'),(53,'Animal Farm',3,1945,'Not Available'),(54,'The Prince and the Pauper',4,1881,'Available'),(55,'A Tale of Two Cities',5,1859,'Available'),(56,'Tender is the Night',6,1934,'Available'),(57,'A Farewell to Arms',7,1929,'Available'),(58,'Go Set a Watchman',8,2015,'Available'),(59,'Harry Potter and the Chamber of Secrets',9,1998,'Available'),(60,'The Fellowship of the Ring',10,1954,'Available'),(61,'And Then There Were None',11,1939,'Available'),(62,'Anna Karenina',12,1878,'Available'),(63,'To the Lighthouse',13,1927,'Available'),(64,'The Invisible Man',14,1897,'Available'),(65,'Billy Budd, Sailor',15,1924,'Available'),(66,'Dubliners',16,1914,'Available'),(67,'The Importance of Being Earnest',17,1895,'Available'),(68,'Agnes Grey',18,1847,'Available'),(69,'Villette',19,1853,'Available'),(70,'Island',20,1962,'Available'),(71,'Chronicle of a Death Foretold',21,1981,'Available'),(72,'Of Love and Shadows',22,1984,'Available'),(73,'Oryx and Crake',23,2003,'Available'),(74,'Song of Solomon',24,1977,'Available'),(75,'The Remains of the Day',25,1989,'Available'),(76,'Cat\'s Cradle',26,1963,'Available'),(77,'Kafka on the Shore',27,2002,'Available'),(78,'East of Eden',28,1952,'Available'),(79,'The Human Stain',29,2000,'Available'),(80,'Saturday',30,2005,'Available'),(81,'Swing Time',31,2016,'Available'),(82,'The Satanic Verses',32,1988,'Available'),(83,'No Longer at Ease',33,1960,'Available'),(84,'Unaccustomed Earth',34,2008,'Available'),(85,'Meridian',35,1976,'Available'),(86,'In the Skin of a Lion',36,1987,'Available'),(87,'Snow',37,2002,'Available'),(88,'Foucault\'s Pendulum',38,1988,'Available'),(89,'Pnin',39,1957,'Available'),(90,'Shikasta',40,1979,'Available'),(91,'Death in Venice',41,1912,'Available'),(92,'Of Love and Other Demons',21,1994,'Available'),(93,'The Way to Paradise',43,2003,'Available'),(94,'The Guide',44,1958,'Available'),(95,'Sea of Poppies',45,2008,'Available'),(96,'The Ministry of Utmost Happiness',46,2017,'Available'),(97,'In a Free State',47,1971,'Available'),(98,'The Enchantress of Florence',48,2008,'Available'),(99,'The Bone Clocks',49,2014,'Available'),(100,'The People in the Trees',50,2013,'Available');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loanlogg`
--

DROP TABLE IF EXISTS `loanlogg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loanlogg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `authors_books_id` int DEFAULT NULL,
  `magazine_id` int DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `end_date` timestamp NULL DEFAULT NULL,
  `returned` tinyint(1) DEFAULT '0',
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `authors_books_id` (`authors_books_id`),
  KEY `magazine_id` (`magazine_id`),
  CONSTRAINT `loanlogg_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `loanlogg_ibfk_2` FOREIGN KEY (`authors_books_id`) REFERENCES `authors_books` (`id`),
  CONSTRAINT `loanlogg_ibfk_3` FOREIGN KEY (`magazine_id`) REFERENCES `magazines` (`id`),
  CONSTRAINT `loanlogg_ibfk_4` FOREIGN KEY (`magazine_id`) REFERENCES `magazines` (`id`),
  CONSTRAINT `loanlogg_ibfk_5` FOREIGN KEY (`magazine_id`) REFERENCES `magazines` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loanlogg`
--

LOCK TABLES `loanlogg` WRITE;
/*!40000 ALTER TABLE `loanlogg` DISABLE KEYS */;
INSERT INTO `loanlogg` VALUES (1,1,1,NULL,'2024-01-01 09:00:00','2024-01-31 09:00:00',0,NULL),(2,2,2,NULL,'2024-02-01 10:00:00','2024-03-01 10:00:00',0,NULL),(3,3,3,NULL,'2024-01-15 08:00:00','2024-01-25 08:00:00',1,NULL),(4,1,4,NULL,'2024-03-01 07:00:00','2024-03-31 06:00:00',0,NULL),(5,4,5,NULL,'2024-01-20 11:00:00','2024-02-20 11:00:00',1,NULL),(6,1,1,NULL,'2024-01-01 09:00:00','2024-01-31 09:00:00',0,NULL),(7,2,2,NULL,'2024-02-01 10:00:00','2024-03-01 10:00:00',0,NULL),(8,3,3,NULL,'2024-01-15 08:00:00','2024-01-25 08:00:00',1,NULL),(9,1,4,NULL,'2024-03-01 07:00:00','2024-03-31 06:00:00',0,NULL),(10,4,5,NULL,'2024-01-20 11:00:00','2024-02-20 11:00:00',1,NULL),(11,11,13,NULL,'2024-07-11 13:34:11','2024-07-11 13:35:02',1,NULL),(12,11,NULL,3,'2024-07-11 13:34:20','2024-07-20 22:00:00',0,NULL),(13,14,12,NULL,'2024-07-12 11:05:16','2024-08-10 22:00:00',0,NULL),(14,14,NULL,15,'2024-07-12 11:05:21','2024-07-21 22:00:00',0,NULL),(15,14,13,NULL,'2024-07-12 11:05:41','2024-07-12 11:05:45',1,NULL),(16,15,14,NULL,'2024-07-12 11:39:34','2024-07-14 10:11:45',1,NULL),(17,15,7,NULL,'2024-07-12 11:57:53','2024-07-13 20:54:28',1,NULL),(18,15,8,NULL,'2024-07-12 11:58:06','2024-07-14 10:11:44',1,NULL),(19,15,13,NULL,'2024-07-12 11:58:16','2024-07-14 10:03:41',1,NULL),(20,15,15,NULL,'2024-07-12 12:36:00','2024-07-14 10:11:43',1,NULL),(21,17,9,NULL,'2024-07-12 13:03:31','2024-08-10 22:00:00',0,NULL),(22,15,NULL,72,'2024-07-12 13:24:05','2024-07-21 22:00:00',0,NULL),(23,15,1,NULL,'2024-07-12 13:51:59','2024-07-14 10:11:43',1,NULL),(24,15,NULL,62,'2024-07-12 13:52:28','2024-07-13 21:12:02',1,NULL),(25,15,3,NULL,'2024-07-12 13:52:42','2024-07-14 10:11:42',1,NULL),(26,15,NULL,2,'2024-07-12 14:15:50','2024-07-12 15:58:13',1,NULL),(27,15,97,NULL,'2024-07-12 15:44:24','2024-07-14 10:11:42',1,NULL),(28,15,NULL,9,'2024-07-12 15:46:00','2024-07-22 16:00:00',0,NULL),(29,15,55,NULL,'2024-07-12 15:46:05','2024-07-14 10:11:41',1,NULL),(30,15,50,NULL,'2024-07-12 15:54:54','2024-07-13 20:58:40',1,NULL),(31,15,5,NULL,'2024-07-12 15:58:19','2024-07-14 10:11:40',1,NULL),(32,18,51,NULL,'2024-07-13 19:34:06','2024-08-12 16:00:00',0,NULL),(33,15,58,NULL,'2024-07-13 19:57:56','2024-07-14 10:11:39',1,NULL),(34,15,2,NULL,'2024-07-13 19:59:14','2024-07-14 10:11:38',1,NULL),(35,15,4,NULL,'2024-07-13 19:59:24','2024-07-14 10:11:45',1,NULL),(36,15,54,NULL,'2024-07-13 19:59:29','2024-07-14 10:03:37',1,NULL),(37,15,NULL,1,'2024-07-13 20:50:36','2024-07-23 16:00:00',0,NULL),(38,15,52,NULL,'2024-07-13 20:53:54','2024-07-14 10:41:31',1,NULL),(39,15,56,NULL,'2024-07-13 20:54:10','2024-07-14 10:11:32',1,NULL),(40,15,NULL,2,'2024-07-13 20:54:20','2024-07-23 16:00:00',0,NULL),(41,15,16,NULL,'2024-07-13 21:11:03','2024-07-14 10:11:30',1,NULL),(42,15,NULL,5,'2024-07-13 21:11:12','2024-07-23 16:00:00',0,NULL),(43,15,NULL,10,'2024-07-13 21:15:02','2024-07-23 16:00:00',0,NULL),(44,15,54,NULL,'2024-07-13 21:16:28','2024-07-14 10:03:37',1,NULL),(45,15,6,NULL,'2024-07-13 21:17:07','2024-07-14 10:03:33',1,NULL),(46,15,53,NULL,'2024-07-13 21:17:26','2024-07-14 10:41:34',1,NULL),(47,15,94,NULL,'2024-07-13 21:42:07','2024-07-14 10:11:26',1,NULL),(48,15,NULL,7,'2024-07-13 21:42:17','2024-07-22 22:00:00',0,NULL),(49,15,48,NULL,'2024-07-13 21:55:15','2024-07-14 10:11:46',1,NULL),(50,15,NULL,11,'2024-07-14 09:55:02','2024-07-24 16:00:00',0,NULL),(51,15,57,NULL,'2024-07-14 09:55:18','2024-07-14 10:11:47',1,NULL),(52,15,52,NULL,'2024-07-14 10:41:12','2024-07-14 10:41:31',1,NULL),(53,15,53,NULL,'2024-07-14 10:41:16','2024-07-14 10:41:34',1,NULL),(54,15,1,NULL,'2024-07-14 11:18:03','2024-08-12 22:00:00',0,NULL),(55,15,2,NULL,'2024-07-14 11:59:49','2024-08-12 22:00:00',0,NULL),(56,19,52,NULL,'2024-07-14 14:52:44','2024-07-14 15:05:03',1,NULL),(57,19,14,NULL,'2024-07-14 14:53:39','2024-07-14 14:53:47',1,NULL),(58,19,13,NULL,'2024-07-14 14:54:05','2024-07-14 15:32:05',1,NULL),(59,19,3,NULL,'2024-07-14 15:01:12','2024-07-14 15:54:13',1,NULL),(60,19,53,NULL,'2024-07-14 15:01:18','2024-07-14 15:04:57',1,NULL),(61,19,56,NULL,'2024-07-14 15:02:12','2024-07-14 15:02:17',1,NULL),(62,19,3,NULL,'2024-07-14 15:32:22','2024-07-14 15:54:13',1,NULL),(63,19,NULL,16,'2024-07-14 15:32:33','2024-07-14 15:53:12',1,NULL),(64,19,3,NULL,'2024-07-14 15:53:47','2024-07-14 15:54:13',1,NULL),(65,19,7,NULL,'2024-07-14 15:53:56','2024-07-14 15:54:16',1,NULL),(66,19,NULL,8,'2024-07-14 16:14:38','2024-07-14 16:15:19',1,NULL),(67,19,8,NULL,'2024-07-14 16:14:57','2024-07-14 16:15:16',1,NULL),(68,19,NULL,12,'2024-07-14 16:15:09','2024-07-14 16:15:22',1,NULL),(69,19,NULL,6,'2024-07-14 17:12:18','2024-07-14 17:12:33',1,NULL),(70,19,67,NULL,'2024-07-14 17:39:25','2024-07-14 17:39:30',1,NULL),(71,19,NULL,4,'2024-07-14 17:39:38','2024-07-14 20:03:24',1,NULL),(72,19,52,NULL,'2024-07-14 17:39:47','2024-08-12 22:00:00',0,NULL),(73,19,3,NULL,'2024-07-14 19:09:32','2024-08-12 22:00:00',0,NULL),(74,19,NULL,6,'2024-07-14 19:09:51','2024-07-23 22:00:00',0,NULL),(75,19,53,NULL,'2024-07-14 20:02:59','2024-08-12 22:00:00',0,NULL),(76,19,NULL,13,'2024-07-14 20:03:08','2024-07-23 22:00:00',0,NULL),(77,19,78,NULL,'2024-07-14 20:03:15','2024-07-14 20:03:19',1,NULL);
/*!40000 ALTER TABLE `loanlogg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magazines`
--

DROP TABLE IF EXISTS `magazines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magazines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `datePublished` date NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magazines`
--

LOCK TABLES `magazines` WRITE;
/*!40000 ALTER TABLE `magazines` DISABLE KEYS */;
INSERT INTO `magazines` VALUES (1,'Elle','2024-01-06','Not Available'),(2,'Vogue','2024-02-01','Inte tillg├ñnglig'),(3,'Time','2024-01-10','Not Available'),(4,'National Geographic','2024-02-15','Available'),(5,'People','2024-03-05','Inte tillg├ñnglig'),(6,'The New Yorker','2024-01-20','Not Available'),(7,'Forbes','2024-03-01','Not Available'),(8,'The Economist','2024-04-10','Available'),(9,'Scientific American','2024-05-12','Not Available'),(10,'Cosmopolitan','2024-06-15','Inte tillg├ñnglig'),(11,'Wired','2024-07-01','Not Available'),(12,'Rolling Stone','2024-08-18','Available'),(13,'Esquire','2024-09-05','Not Available'),(14,'Good Housekeeping','2024-10-10','Available'),(15,'GQ','2024-11-12','Not Available'),(16,'Harper\'s Bazaar','2024-12-01','Available'),(17,'Men\'s Health','2024-01-03','Available'),(18,'Women\'s Health','2024-02-10','Available'),(19,'Reader\'s Digest','2024-03-20','Available'),(20,'Fortune','2024-04-25','Available'),(21,'Vanity Fair','2024-05-14','Available'),(22,'New Scientist','2024-06-18','Available'),(23,'Sports Illustrated','2024-07-22','Available'),(24,'Newsweek','2024-08-29','Available'),(25,'Smithsonian','2024-09-11','Available'),(26,'Bloomberg Businessweek','2024-10-18','Available'),(27,'Architectural Digest','2024-11-25','Available'),(28,'Entertainment Weekly','2024-12-05','Available'),(29,'Marie Claire','2024-01-07','Available'),(30,'Tatler','2024-02-12','Available'),(31,'Town & Country','2024-03-10','Available'),(32,'Seventeen','2024-04-20','Available'),(33,'Parents','2024-05-30','Available'),(34,'Shape','2024-06-05','Available'),(35,'O, The Oprah Magazine','2024-07-25','Available'),(36,'The Atlantic','2024-08-12','Available'),(37,'Car and Driver','2024-09-19','Available'),(38,'Road & Track','2024-10-23','Available'),(39,'Food & Wine','2024-11-07','Available'),(40,'Bon App├®tit','2024-12-15','Available'),(41,'Health','2024-01-17','Available'),(42,'PC Magazine','2024-02-20','Available'),(43,'Popular Mechanics','2024-03-22','Available'),(44,'PCWorld','2024-04-25','Available'),(45,'Macworld','2024-05-27','Available'),(46,'Outdoor Life','2024-06-30','Available'),(47,'Field & Stream','2024-07-04','Available'),(48,'Golf Digest','2024-08-06','Available'),(49,'Travel + Leisure','2024-09-08','Available'),(50,'Conde Nast Traveler','2024-10-12','Available'),(51,'Southern Living','2024-11-16','Available'),(52,'Martha Stewart Living','2024-12-20','Available'),(53,'Allure','2024-01-22','Available'),(54,'InStyle','2024-02-18','Available'),(55,'Better Homes & Gardens','2024-03-15','Available'),(56,'House Beautiful','2024-04-19','Available'),(57,'Country Living','2024-05-21','Available'),(58,'Redbook','2024-06-11','Available'),(59,'Family Circle','2024-07-17','Available'),(60,'Real Simple','2024-08-14','Available'),(61,'Prevention','2024-09-20','Available'),(62,'Parents Latina','2024-10-25','Available'),(63,'Woman\'s Day','2024-11-18','Available'),(64,'Veranda','2024-12-22','Available'),(65,'Popular Science','2024-01-25','Available'),(66,'Discover','2024-02-28','Available'),(67,'National Review','2024-03-12','Available'),(68,'The Nation','2024-04-15','Available'),(69,'Foreign Policy','2024-05-19','Available'),(70,'Mother Jones','2024-06-22','Available'),(71,'Consumer Reports','2024-07-27','Available'),(72,'The American Prospect','2024-08-29','Not Available'),(73,'Reason','2024-09-23','Available'),(74,'Commentary','2024-10-28','Available'),(75,'Adweek','2024-11-02','Available'),(76,'Advertising Age','2024-12-06','Available'),(77,'Fast Company','2024-01-08','Available'),(78,'Inc.','2024-02-13','Available'),(79,'Entrepreneur','2024-03-17','Available'),(80,'MIT Technology Review','2024-04-21','Available'),(81,'The Hollywood Reporter','2024-05-24','Available'),(82,'Billboard','2024-06-19','Available'),(83,'Variety','2024-07-20','Available'),(84,'Backstage','2024-08-25','Available'),(85,'Scientific American Mind','2024-09-12','Available'),(86,'Psychology Today','2024-10-17','Available'),(87,'Men\'s Fitness','2024-11-22','Available'),(88,'Muscle & Fitness','2024-12-27','Available');
/*!40000 ALTER TABLE `magazines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hashed_password` varchar(255) DEFAULT NULL,
  `lastLogin` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Alice Johnson','alice.johnson@example.com','hashed_password_1',NULL),(2,'Bob Smith','bob.smith@example.com','hashed_password_2',NULL),(3,'Charlie Brown','charlie.brown@example.com','hashed_password_3',NULL),(4,'Diana Prince','diana.prince@example.com','hashed_password_4',NULL),(5,'Eve Adams','eve.adams@example.com','hashed_password_5',NULL),(6,'Frank Miller','frank.miller@example.com','hashed_password_6',NULL),(7,'Grace Hopper','grace.hopper@example.com','hashed_password_7',NULL),(8,'Hank Pym','hank.pym@example.com','hashed_password_8',NULL),(9,'Ivy League','ivy.league@example.com','hashed_password_9',NULL),(10,'Jack Ryan','jack.ryan@example.com','hashed_password_10',NULL),(11,'Alex','alex@hotmail.com','password',NULL),(12,'Pelle','pelle@hotmail.com','password',NULL),(13,'Ulla','ulla@hotmail.com','Ulla',NULL),(14,'Pelle','pelle','sven',NULL),(15,'','olle','olle',NULL),(17,'per','per','per',NULL),(18,'bella','bella','bella',NULL),(19,'pelle','orvar','orvar',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-14 22:15:24
