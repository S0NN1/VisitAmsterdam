-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: hyp.lucapirovano.com    Database: hyp
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.34-MariaDB-0ubuntu0.20.04.1

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
-- Table structure for table `day`
--

DROP TABLE IF EXISTS `day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day` (
  `id` bigint(20) NOT NULL,
  `closing_hours` time DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `opening_hours` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day`
--

LOCK TABLES `day` WRITE;
/*!40000 ALTER TABLE `day` DISABLE KEYS */;
INSERT INTO `day` VALUES (3,'16:00:00',0,'09:00:00'),(4,'16:00:00',1,'09:00:00'),(5,'18:00:00',2,'09:00:00'),(6,'16:00:00',3,'09:00:00'),(7,'16:00:00',4,'09:00:00'),(8,'16:00:00',5,'09:00:00'),(9,'16:00:00',6,'09:00:00'),(15,'00:00:00',0,'00:00:00'),(16,'00:00:00',1,'00:00:00'),(17,'00:00:00',2,'00:00:00'),(18,'00:00:00',3,'00:00:00'),(19,'00:00:00',4,'00:00:00'),(20,'00:00:00',5,'00:00:00'),(21,'00:00:00',6,'00:00:00'),(25,'16:00:00',0,'09:00:00'),(26,'16:00:00',1,'09:00:00'),(27,'18:00:00',2,'09:00:00'),(28,'16:00:00',3,'09:00:00'),(29,'16:00:00',4,'09:00:00'),(30,'16:00:00',5,'09:00:00'),(31,'16:00:00',6,'09:00:00'),(37,'00:00:00',0,'00:00:00'),(38,'17:00:00',1,'10:00:00'),(39,'17:00:00',2,'10:00:00'),(40,'17:00:00',3,'10:00:00'),(41,'17:00:00',4,'10:00:00'),(42,'17:00:00',5,'12:00:00'),(43,'17:00:00',6,'12:00:00'),(54,'00:00:00',0,'00:00:00'),(55,'00:00:00',1,'00:00:00'),(56,'00:00:00',2,'00:00:00'),(57,'00:00:00',3,'00:00:00'),(58,'17:00:00',4,'10:00:00'),(59,'17:00:00',5,'10:00:00'),(60,'17:00:00',6,'10:00:00'),(86,'18:00:00',0,'10:00:00'),(87,'00:00:00',1,'00:00:00'),(88,'18:00:00',2,'10:00:00'),(89,'18:00:00',3,'10:00:00'),(90,'18:00:00',4,'10:00:00'),(91,'18:00:00',5,'10:00:00'),(92,'18:00:00',6,'10:00:00'),(104,'16:00:00',0,'09:00:00'),(105,'16:00:00',1,'09:00:00'),(106,'18:00:00',2,'09:00:00'),(107,'16:00:00',3,'09:00:00'),(108,'16:00:00',4,'09:00:00'),(109,'16:00:00',5,'09:00:00'),(110,'16:00:00',6,'09:00:00'),(116,'16:00:00',0,'09:00:00'),(117,'16:00:00',1,'09:00:00'),(118,'18:00:00',2,'09:00:00'),(119,'16:00:00',3,'09:00:00'),(120,'16:00:00',4,'09:00:00'),(121,'16:00:00',5,'09:00:00'),(122,'16:00:00',6,'09:00:00'),(128,'16:00:00',0,'09:00:00'),(129,'16:00:00',1,'09:00:00'),(130,'18:00:00',2,'09:00:00'),(131,'16:00:00',3,'09:00:00'),(132,'16:00:00',4,'09:00:00'),(133,'16:00:00',5,'09:00:00'),(134,'16:00:00',6,'09:00:00'),(140,'16:00:00',0,'09:00:00'),(141,'16:00:00',1,'09:00:00'),(142,'18:00:00',2,'09:00:00'),(143,'16:00:00',3,'09:00:00'),(144,'16:00:00',4,'09:00:00'),(145,'16:00:00',5,'09:00:00'),(146,'16:00:00',6,'09:00:00'),(152,'23:59:59',0,'00:00:00'),(153,'23:59:59',1,'00:00:00'),(154,'23:59:59',2,'00:00:00'),(155,'23:59:59',3,'00:00:00'),(156,'23:59:59',4,'00:00:00'),(157,'23:59:59',5,'00:00:00'),(158,'23:59:59',6,'00:00:00'),(164,'16:00:00',0,'09:00:00'),(165,'16:00:00',1,'09:00:00'),(166,'18:00:00',2,'09:00:00'),(167,'16:00:00',3,'09:00:00'),(168,'16:00:00',4,'09:00:00'),(169,'16:00:00',5,'09:00:00'),(170,'16:00:00',6,'09:00:00'),(176,'16:00:00',0,'09:00:00'),(177,'16:00:00',1,'09:00:00'),(178,'18:00:00',2,'09:00:00'),(179,'16:00:00',3,'09:00:00'),(180,'16:00:00',4,'09:00:00'),(181,'16:00:00',5,'09:00:00'),(182,'16:00:00',6,'09:00:00'),(188,'23:59:59',0,'00:00:00'),(189,'23:59:59',1,'00:00:00'),(190,'23:59:59',2,'00:00:00'),(191,'23:59:59',3,'00:00:00'),(192,'23:59:59',4,'00:00:00'),(193,'23:59:59',5,'00:00:00'),(194,'23:59:59',6,'00:00:00'),(200,'16:00:00',0,'09:00:00'),(201,'16:00:00',1,'09:00:00'),(202,'18:00:00',2,'09:00:00'),(203,'16:00:00',3,'09:00:00'),(204,'16:00:00',4,'09:00:00'),(205,'16:00:00',5,'09:00:00'),(206,'16:00:00',6,'09:00:00'),(212,'16:00:00',0,'09:00:00'),(213,'16:00:00',1,'09:00:00'),(214,'18:00:00',2,'09:00:00'),(215,'16:00:00',3,'09:00:00'),(216,'16:00:00',4,'09:00:00'),(217,'16:00:00',5,'09:00:00'),(218,'16:00:00',6,'09:00:00'),(224,'18:00:00',0,'16:00:00'),(225,'18:00:00',1,'16:00:00'),(226,'18:00:00',2,'16:00:00'),(227,'18:00:00',3,'16:00:00'),(228,'18:00:00',4,'16:00:00'),(229,'18:00:00',5,'16:00:00'),(230,'18:00:00',6,'16:00:00'),(234,'18:00:00',0,'16:00:00'),(235,'18:00:00',1,'16:00:00'),(236,'18:00:00',2,'16:00:00'),(237,'18:00:00',3,'16:00:00'),(238,'18:00:00',4,'16:00:00'),(239,'18:00:00',5,'16:00:00'),(240,'18:00:00',6,'16:00:00'),(244,'16:00:00',0,'09:00:00'),(245,'16:00:00',1,'09:00:00'),(246,'18:00:00',2,'09:00:00'),(247,'16:00:00',3,'09:00:00'),(248,'16:00:00',4,'09:00:00'),(249,'16:00:00',5,'09:00:00'),(250,'16:00:00',6,'09:00:00'),(256,'18:00:00',0,'16:00:00'),(257,'18:00:00',1,'16:00:00'),(258,'18:00:00',2,'16:00:00'),(259,'18:00:00',3,'16:00:00'),(260,'18:00:00',4,'16:00:00'),(261,'18:00:00',5,'16:00:00'),(262,'18:00:00',6,'16:00:00'),(266,'16:00:00',0,'09:00:00'),(267,'16:00:00',1,'09:00:00'),(268,'18:00:00',2,'09:00:00'),(269,'16:00:00',3,'09:00:00'),(270,'16:00:00',4,'09:00:00'),(271,'16:00:00',5,'09:00:00'),(272,'16:00:00',6,'09:00:00'),(278,'18:00:00',0,'16:00:00'),(279,'18:00:00',1,'16:00:00'),(280,'18:00:00',2,'16:00:00'),(281,'18:00:00',3,'16:00:00'),(282,'18:00:00',4,'16:00:00'),(283,'18:00:00',5,'16:00:00'),(284,'18:00:00',6,'16:00:00'),(288,'18:00:00',0,'16:00:00'),(289,'18:00:00',1,'16:00:00'),(290,'18:00:00',2,'16:00:00'),(291,'18:00:00',3,'16:00:00'),(292,'18:00:00',4,'16:00:00'),(293,'18:00:00',5,'16:00:00'),(294,'18:00:00',6,'16:00:00'),(300,'18:00:00',0,'16:00:00'),(301,'18:00:00',1,'16:00:00'),(302,'18:00:00',2,'16:00:00'),(303,'18:00:00',3,'16:00:00'),(304,'18:00:00',4,'16:00:00'),(305,'18:00:00',5,'16:00:00'),(306,'18:00:00',6,'16:00:00'),(312,'18:00:00',0,'16:00:00'),(313,'18:00:00',1,'16:00:00'),(314,'18:00:00',2,'16:00:00'),(315,'18:00:00',3,'16:00:00'),(316,'18:00:00',4,'16:00:00'),(317,'18:00:00',5,'16:00:00'),(318,'18:00:00',6,'16:00:00'),(325,'18:00:00',0,'16:00:00'),(326,'18:00:00',1,'16:00:00'),(327,'18:00:00',2,'16:00:00'),(328,'18:00:00',3,'16:00:00'),(329,'18:00:00',4,'16:00:00'),(330,'18:00:00',5,'16:00:00'),(331,'18:00:00',6,'16:00:00'),(335,'18:00:00',0,'16:00:00'),(336,'18:00:00',1,'16:00:00'),(337,'18:00:00',2,'16:00:00'),(338,'18:00:00',3,'16:00:00'),(339,'18:00:00',4,'16:00:00'),(340,'18:00:00',5,'16:00:00'),(341,'18:00:00',6,'16:00:00'),(345,'18:00:00',0,'16:00:00'),(346,'18:00:00',1,'16:00:00'),(347,'18:00:00',2,'16:00:00'),(348,'18:00:00',3,'16:00:00'),(349,'18:00:00',4,'16:00:00'),(350,'18:00:00',5,'16:00:00'),(351,'18:00:00',6,'16:00:00'),(355,'23:59:00',0,'00:00:00'),(356,'23:59:00',1,'00:00:00'),(357,'18:00:00',2,'00:00:00'),(358,'23:59:00',3,'00:00:00'),(359,'23:59:00',4,'00:00:00'),(360,'23:59:00',5,'00:00:00'),(361,'23:59:00',6,'00:00:00'),(367,'23:59:00',0,'00:00:00'),(368,'23:59:00',1,'00:00:00'),(369,'18:00:00',2,'00:00:00'),(370,'23:59:00',3,'00:00:00'),(371,'23:59:00',4,'00:00:00'),(372,'23:59:00',5,'00:00:00'),(373,'23:59:00',6,'00:00:00'),(380,'23:59:00',0,'00:00:00'),(381,'23:59:00',1,'00:00:00'),(382,'18:00:00',2,'00:00:00'),(383,'23:59:00',3,'00:00:00'),(384,'23:59:00',4,'00:00:00'),(385,'23:59:00',5,'00:00:00'),(386,'23:59:00',6,'00:00:00'),(392,'23:59:00',0,'00:00:00'),(393,'23:59:00',1,'00:00:00'),(394,'18:00:00',2,'00:00:00'),(395,'23:59:00',3,'00:00:00'),(396,'23:59:00',4,'00:00:00'),(397,'23:59:00',5,'00:00:00'),(398,'23:59:00',6,'00:00:00'),(404,'23:59:00',0,'00:00:00'),(405,'23:59:00',1,'00:00:00'),(406,'18:00:00',2,'00:00:00'),(407,'23:59:00',3,'00:00:00'),(408,'23:59:00',4,'00:00:00'),(409,'23:59:00',5,'00:00:00'),(410,'23:59:00',6,'00:00:00'),(416,'23:59:00',0,'00:00:00'),(417,'23:59:00',1,'00:00:00'),(418,'18:00:00',2,'00:00:00'),(419,'23:59:00',3,'00:00:00'),(420,'23:59:00',4,'00:00:00'),(421,'23:59:00',5,'00:00:00'),(422,'23:59:00',6,'00:00:00'),(428,'23:59:00',0,'00:00:00'),(429,'23:59:00',1,'00:00:00'),(430,'18:00:00',2,'00:00:00'),(431,'23:59:00',3,'00:00:00'),(432,'23:59:00',4,'00:00:00'),(433,'23:59:00',5,'00:00:00'),(434,'23:59:00',6,'00:00:00'),(481,'17:00:00',0,'09:00:00'),(482,'17:00:00',1,'09:00:00'),(483,'17:00:00',2,'09:00:00'),(484,'17:00:00',3,'09:00:00'),(485,'17:00:00',4,'09:00:00'),(486,'00:00:00',5,'00:00:00'),(487,'00:00:00',6,'00:00:00'),(498,'00:00:00',0,'00:00:00'),(499,'00:00:00',1,'00:00:00'),(500,'17:30:00',2,'12:00:00'),(501,'17:30:00',3,'12:00:00'),(502,'17:30:00',4,'12:00:00'),(503,'17:30:00',5,'12:00:00'),(504,'17:30:00',6,'12:00:00');
/*!40000 ALTER TABLE `day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `id` bigint(20) NOT NULL,
  `booking_url` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `hero_image` varchar(255) DEFAULT NULL,
  `info_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `poi_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKin6dfdby198amggegwrek5pg7` (`poi_id`),
  CONSTRAINT `FKin6dfdby198amggegwrek5pg7` FOREIGN KEY (`poi_id`) REFERENCES `point_of_interest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (47,'','Gerrit Lamberts (1776-1850) is the best known unknown draftsman of Amsterdam. His drawings figure in nearly every book on the city’s history, yet his name is not familiar. His drawing style is lively, colourful and straightforward, with a keen eye for everyday detail. In the exhibition, visitors are also introduced to Lamberts life, his drawing techniques and the 18th-century draughtsmen who inspired him. Quite remarkable is a set of drawings depicting his own house on Bloemgracht, offering an atmospheric glimpse into the artist\'s home life.','/img/event-wandering.webp','https://www.amsterdam.nl/stadsarchief/agenda/lamberts/','Wandering through Amsterdam: drawings by Gerrit Lamberts',0,35),(79,'','For one weekend only, visit the pristine gardens of some of Amsterdam’s finest canal houses and experience the quiet oases during Open Garden Days, taking place every June, with this year\'s theme: a visit to the private canal gardens. Very few of these canal house gardens are usually open to the public year-round, but each year some 30 of them are accessible to visitors during Open Tuinen Dagen, or Open Garden Days.','/img/open-garden.webp','https://www.opentuinendagen.nl/','Open Garden Days',20,52),(444,'','Insects and other ground-dwellers like snakes, lizards and frogs have had a bad reputation for a long time. They were supposedly born from dead material (spontaneous generation), and were associated with death and the devil. That image suddenly changed in the Early Modern period, when these animals came to be regarded as examples of the beauty of Creation and were first chosen as the subjects of works of art. It was also then that science began taking an interest in them. They were collected, described, studied and eventually also dissected under the microscope, and as a result were seen to be also examples of the ingenuity of Creation.','/img/crawly-creatures.webp','https://www.rijksmuseum.nl/en/whats-on/exhibitions/crawly-creatures','Crawly Creatures',20,198),(449,'','The official opening of Pride at the Vondelpark! We celebrate freedom and the best place to celebrate this is in the park of love. Loads of activities are happening, like the Rainbow Market, sport activities by Pride & Sports, the playing field by Youth Pride and much much more. The Vondelpark Openluchttheater will be the Mainstage with performances by many artists.','/img/pride.webp','https://pride.amsterdam/en/events/pride-park/','Pride Park',0,186),(474,'https://tickets.fashionforgood.com/en/tickets','Every year during Fashion Week the latest fashion is shown on catwalks in Paris, Milan and New York and other metropoles across the globe. This iconic event has a major impact on the fashion industry and on our own wardrobes. In \'Fashion Week: A New Era\', the Fashion for Good Museum unpacks the Fashion Week, delving into its past, present and future.','/img/FashionWeek.webp','https://fashionforgood.com/','Fashion Week: A New Era',10,84),(491,'','This year, you can admire nine sculptures by the prominent British sculptor Barbara Hepworth (1903–1975) in the freely accessible gardens of the Rijksmuseum. The majority of the statues come from English public gardens and parks and rarely leave their permanent location.','/img/BarbaraHepworth.webp','https://www.rijksmuseum.nl/nl/zien-en-doen/tentoonstellingen/barbara-hepworth','Barbara Hepworth in the Rijksmuseum Gardens',0,198),(508,'','Every year, the Vondelpark Open Air Theatre presents a programme packed with festivals, dance, cabaret, children\'s theatre, stand-up comedy and all genres of music. Vondelpark Open Air Theatre returns in 2022. Online reservations are voluntary. Check their website for updates.','/img/vondelpark-theatre.webp','https://www.openluchttheater.nl/agenda','Vondelpark Open Air Theatre',20,186),(515,'','By participating in physical challenges and working on brain teasers about all kinds of dilemmas you will discover more about how your body and brain work. You will discover loads of things about your body that are too good to miss! The biology, sociology, and the psychology of people will all feature in the exhibition. Humania discusses a host of subjects about who you are: from your name to how you celebrate your birthday, from the amount of willpower you have to the cells that make up your body. Also included are more difficult topics such as sex or death. Are you truly as unique as you think you are? Or are we all alike?','/img/humania.webp','https://www.nemosciencemuseum.nl/en/activities-at-nemo/exhibitions/humania/','Humania',10,242),(522,'','Experience the energy captured from wind, water and the sun, and battle the forces of nature. Energetica consists of sculptures and installations that you can control yourself. From a sundial to a kite that you can control yourself, here you will find out all about the elements while, at the same time, seeing how renewable energy works. This outdoor exhibition can be found on NEMO’s roof, and admission is free.','/img/energetica.webp','https://www.nemosciencemuseum.nl/en/activities-at-nemo/exhibitions/energetica/','Energetica',0,242),(529,'','For centuries, people have been using the power of water for heavy jobs. At NEMO you can learn how to harness that power. Using metal pipes and sandbags, you can conduct water through a mill and create your own dam. This enables you to generate ‘green’ energy. A narrow dam creates a lot of power, but is more difficult to keep intact.','/img/waterpower.webp','https://www.nemosciencemuseum.nl/en/activities-at-nemo/exhibitions/water-power/','Water Power',0,242),(536,'','This summer you can enjoy the garden and greenhouses in the evenings during our Hortus Summer Nights! From July 11 until July 18, the Hortus is open until 9 p.m. Stroll through the garden or enjoy a lovely meal and drink on our green terrace – the Hortus cafe is also open until 9!','/img/hortus-summer-night.webp','https://www.dehortus.nl/en/programma/activities/','Summer nights in the hortus',5,264),(548,'','An old but gold Christmas Concert in the fantastic Basilica of Saint Nicholas.','/img/christmas-concert.webp','https://www.dehortus.nl/en/programma/activities/','Christmas Concert',5,162),(553,'','Amsterdam Roots recognises the great value of cultural traditions. Music styles such as hip-hop, flamenco and reggaeton originate from traditions that go back decades or even centuries. We want to show through performing arts and stories how enriching and inspiring traditions are.','/img/amsterdam-roots.webp','https://www.amsterdamroots.nl/en/','Amsterdam Roots Festival',30,353),(561,'https://tickets.vangoghmuseum.com/?promo_creative=button&promo_pos=www-vgm&promo_name=tickets&promo_id=www-vgm-tickets-button&_ga=2.49411174.1315331910.1639040738-138211023.1601038947','Discover Etel Adnan’s colourful artworks in combination with those of Vincent van Gogh. Colour as Language is this versatile artist’s first retrospective in the Netherlands.','/img/color-language.webp','https://www.vangoghmuseum.nl/en/visit/whats-on/exhibitions/etel-adnan-colour-as-language','Colour as Language',19,102),(569,'','During the Tulp Festival in August, NEMO’s rooftop will be decorated with wonderful tulips. On the roof you can also find the open-air exhibition Energetica, a large terrace and a restaurant, all with beautiful views of the city of Amsterdam. The roof is accessible free of charge during opening hours.','/img/tulip-festival.webp','https://www.nemosciencemuseum.nl/en/activities-at-nemo/activities/tulip-festival/','Tulip Festival',0,242),(575,'','In the NEMO chemistry laboratory, visitors can become scientists in their own right – for a little while at least. Lab coat? Check! Safety glasses? Check! It’s time to get to work on your own experiments. You’ll discover the hidden properties of baking powder, vinegar and other household items.','/img/chemistry.webp','https://www.nemosciencemuseum.nl/en/activities-at-nemo/activities/laboratory/','Hands-on chemistry',5,242);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_categories`
--

DROP TABLE IF EXISTS `event_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_categories` (
  `event_id` bigint(20) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  KEY `FKpwhqh9qjt0sg0qhdi9wkq4qhf` (`categories_name`),
  KEY `FKg0l4lu4fo069a5tefj56q3l12` (`event_id`),
  CONSTRAINT `FKg0l4lu4fo069a5tefj56q3l12` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`),
  CONSTRAINT `FKpwhqh9qjt0sg0qhdi9wkq4qhf` FOREIGN KEY (`categories_name`) REFERENCES `event_tag` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_categories`
--

LOCK TABLES `event_categories` WRITE;
/*!40000 ALTER TABLE `event_categories` DISABLE KEYS */;
INSERT INTO `event_categories` VALUES (47,'SUMMER'),(47,'ART'),(79,'SUMMER'),(79,'NATURE'),(444,'WINTER'),(444,'EXHIBITION'),(449,'SUMMER'),(449,'GATHERING'),(474,'SUMMER'),(474,'FASHION'),(474,'EXHIBITION'),(491,'SUMMER'),(491,'WINTER'),(491,'EXHIBITION'),(508,'SUMMER'),(508,'ART'),(515,'EXHIBITION'),(522,'EXHIBITION'),(529,'EXHIBITION'),(536,'SUMMER'),(536,'NATURE'),(548,'WINTER'),(548,'ART'),(553,'SUMMER'),(553,'FESTIVAL'),(561,'SUMMER'),(561,'EXHIBITION'),(569,'NATURE'),(569,'FESTIVAL'),(575,'WINTER');
/*!40000 ALTER TABLE `event_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_day`
--

DROP TABLE IF EXISTS `event_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_day` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `event_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqkn3pe4gb4gj0ghbiv6wyxy4i` (`event_id`),
  CONSTRAINT `FKqkn3pe4gb4gj0ghbiv6wyxy4i` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_day`
--

LOCK TABLES `event_day` WRITE;
/*!40000 ALTER TABLE `event_day` DISABLE KEYS */;
INSERT INTO `event_day` VALUES (48,'2022-08-14','17:00:00','10:00:00',47),(49,'2022-08-30','17:00:00','10:00:00',47),(80,'2022-08-17','17:00:00','10:00:00',79),(81,'2022-08-19','17:00:00','10:00:00',79),(445,'2022-09-01','18:00:00','10:00:00',444),(446,'2023-01-31','18:00:00','10:00:00',444),(450,'2022-07-30','22:00:00','11:00:00',449),(475,'2022-06-19','18:00:00','10:00:00',474),(476,'2022-09-26','18:00:00','10:00:00',474),(492,'2022-06-30','17:00:00','09:00:00',491),(493,'2022-10-23','18:00:00','10:00:00',491),(509,'2022-07-22','17:00:00','10:00:00',508),(510,'2022-07-23','17:00:00','10:00:00',508),(511,'2022-07-24','17:00:00','10:00:00',508),(516,'2022-09-01','17:00:00','10:00:00',515),(517,'2022-09-02','17:00:00','10:00:00',515),(518,'2022-09-03','17:00:00','10:00:00',515),(523,'2022-09-10','17:00:00','10:00:00',522),(524,'2022-09-11','17:00:00','10:00:00',522),(525,'2022-09-12','17:00:00','10:00:00',522),(530,'2022-09-20','17:00:00','10:00:00',529),(531,'2022-09-21','17:00:00','10:00:00',529),(532,'2022-09-22','17:00:00','10:00:00',529),(537,'2022-07-11','00:00:00','21:00:00',536),(538,'2022-07-12','00:00:00','21:00:00',536),(539,'2022-07-13','00:00:00','21:00:00',536),(540,'2022-07-14','00:00:00','21:00:00',536),(541,'2022-07-15','00:00:00','21:00:00',536),(542,'2022-07-16','00:00:00','21:00:00',536),(543,'2022-07-17','00:00:00','21:00:00',536),(544,'2022-07-18','00:00:00','21:00:00',536),(549,'2022-12-25','00:00:00','21:00:00',548),(554,'2022-07-12','00:00:00','14:00:00',553),(555,'2022-07-13','00:00:00','14:00:00',553),(556,'2022-07-14','00:00:00','14:00:00',553),(557,'2022-07-15','00:00:00','14:00:00',553),(562,'2022-08-30','18:00:00','09:00:00',561),(563,'2022-08-31','18:00:00','09:00:00',561),(564,'2022-09-01','18:00:00','09:00:00',561),(565,'2022-09-02','18:00:00','09:00:00',561),(570,'2022-08-30','18:00:00','09:00:00',569),(571,'2022-08-31','18:00:00','09:00:00',569),(572,'2022-09-01','18:00:00','09:00:00',569),(573,'2022-09-02','18:00:00','09:00:00',569),(576,'2022-11-01','18:00:00','11:00:00',575),(577,'2022-11-02','18:00:00','11:00:00',575),(578,'2022-11-03','18:00:00','11:00:00',575),(579,'2022-11-04','18:00:00','11:00:00',575);
/*!40000 ALTER TABLE `event_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_picture`
--

DROP TABLE IF EXISTS `event_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_picture` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `event_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKptaume2bqc1v0vfcgxu3oxtn6` (`event_id`),
  CONSTRAINT `FKptaume2bqc1v0vfcgxu3oxtn6` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_picture`
--

LOCK TABLES `event_picture` WRITE;
/*!40000 ALTER TABLE `event_picture` DISABLE KEYS */;
INSERT INTO `event_picture` VALUES (50,'Painting of a canal','/img/event-wandering.webp',47),(51,'Painting of a street','/img/event-wandering-2.webp',47),(82,'Painting of a canal','/img/open-garden.webp',79),(83,'Painting of a street','/img/open-garden-2.webp',79),(447,'Crawly Creatures','/img/crawly-creatures.webp',444),(448,'Crawly Creatures 2','/img/crawly-creatures-2.webp',444),(451,'Pride Park','/img/pride.webp',449),(452,'Pride Park 2','/img/pride-2.webp',449),(453,'Pride Park 3','/img/pride-3.webp',449),(477,'A dress in the museum','/img/FashionWeek1.webp',474),(478,'Wall with some cloth samples','/img/FashionWeek2.webp',474),(494,'Sculpture','/img/BarbaraHepworth.webp',491),(495,'Sculpture','/img/BarbaraHepworth2.webp',491),(512,'Vondelpark Festival Experience','/img/vondelpark-theatre.webp',508),(513,'Vondelpark Festival Stage','/img/vondelpark-theatre-2.webp',508),(514,'Vondelpark Festival Stage 2','/img/vondelpark-theatre-3.webp',508),(519,'Humania Exhibition','/img/humania.webp',515),(520,'Humania Exhibition 2','/img/humania-2.webp',515),(521,'Humania Exhibition 3','/img/humania-3.webp',515),(526,'Energetica Exhibition','/img/energetica.webp',522),(527,'Energetica Exhibition 2','/img/energetica-2.webp',522),(528,'Energetica Exhibition 3','/img/energetica-3.webp',522),(533,'Water Power Exhibition','/img/waterpower.webp',529),(534,'Water Power Exhibition 2','/img/waterpower-2.webp',529),(535,'Water Power Exhibition 3','/img/waterpower-3.webp',529),(545,'Summer nights in the hortus','/img/hortus-summer-night.webp',536),(546,'Summer nights in the hortus 2','/img/hortus-summer-night-2.webp',536),(547,'Summer nights in the hortus 3','/img/hortus-summer-night-3.webp',536),(550,'Christmas Concert','/img/christmas-concert.webp',548),(551,'Christmas Concert 2','/img/christmas-concert-2.webp',548),(552,'Christmas Concert 3','/img/christmas-concert-3.webp',548),(558,'Amsterdam Roots Festival','/img/amsterdam-roots.webp',553),(559,'Amsterdam Roots Festival 2','/img/amsterdam-roots-2.webp',553),(560,'Amsterdam Roots Festival 3','/img/amsterdam-roots-3.webp',553),(566,'Colour as Language','/img/color-language.webp',561),(567,'Colour as Language 2','/img/color-language-2.webp',561),(568,'Colour as Language 3','/img/color-language-3.webp',561),(574,'Tulip Festival','/img/tulip-festival.webp',569),(580,'Hands-on chemistry','/img/chemistry.webp',575),(588,'Sculpture','/img/BarbaraHepworth1.webp',491),(589,'A dress in the museum','/img/FashionWeek.webp',474);
/*!40000 ALTER TABLE `event_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_tag`
--

DROP TABLE IF EXISTS `event_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_tag` (
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_tag`
--

LOCK TABLES `event_tag` WRITE;
/*!40000 ALTER TABLE `event_tag` DISABLE KEYS */;
INSERT INTO `event_tag` VALUES ('ART'),('EXHIBITION'),('FASHION'),('FESTIVAL'),('GATHERING'),('NATURE'),('SUMMER'),('WINTER');
/*!40000 ALTER TABLE `event_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_tag_events`
--

DROP TABLE IF EXISTS `event_tag_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_tag_events` (
  `event_tag_name` varchar(255) NOT NULL,
  `events_id` bigint(20) NOT NULL,
  KEY `FK1f637y0mgoyq65vqd0ib4lw7x` (`events_id`),
  KEY `FKdcjnpuk5x1j7qh35qml6arb1y` (`event_tag_name`),
  CONSTRAINT `FK1f637y0mgoyq65vqd0ib4lw7x` FOREIGN KEY (`events_id`) REFERENCES `event` (`id`),
  CONSTRAINT `FKdcjnpuk5x1j7qh35qml6arb1y` FOREIGN KEY (`event_tag_name`) REFERENCES `event_tag` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_tag_events`
--

LOCK TABLES `event_tag_events` WRITE;
/*!40000 ALTER TABLE `event_tag_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_tag_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (581);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itinerary`
--

DROP TABLE IF EXISTS `itinerary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itinerary` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `hero_image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itinerary`
--

LOCK TABLES `itinerary` WRITE;
/*!40000 ALTER TABLE `itinerary` DISABLE KEYS */;
INSERT INTO `itinerary` VALUES (322,'Take a look to the beautiful Amsterdam culture of the past by visiting the most important museums in the city.',6,'/img/itinerary-culture-1.webp','A look into Amsterdam culture history'),(377,'Enjoy Mother Nature at its best. We love the four seasons, and there is something to enjoy no matter the time of year. Explore Amsterdam most unique gardens and parks!',4,'/img/itinerary-nature-1.webp','Nature in Amsterdam'),(438,'Enjoy a relaxing tour on foot to the main Amsterdam canals. You\'ll stroll along miles of tree-lined canals, crisscrossed by smaller canals, and you\'ll pass innumerable 17th-century canal houses with gables in various styles.',8,'/img/itinerary-canal-1.webp','A relaxing walk through the canals'),(443,'Visit Amsterdam unpopular yet amazing attractions. Immerse yourself in Amsterdam\'s history by visiting the city\'s archives, embrace the modern fashion with the Fashion for Good museum and other beautiful places.',6,'/img/itinerary-culture-2.webp','Amsterdam Secrets');
/*!40000 ALTER TABLE `itinerary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itinerary_picture`
--

DROP TABLE IF EXISTS `itinerary_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itinerary_picture` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `itinerary_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgu43fe3k43wietprs89xd0a1h` (`itinerary_id`),
  CONSTRAINT `FKgu43fe3k43wietprs89xd0a1h` FOREIGN KEY (`itinerary_id`) REFERENCES `itinerary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itinerary_picture`
--

LOCK TABLES `itinerary_picture` WRITE;
/*!40000 ALTER TABLE `itinerary_picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `itinerary_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itinerary_pictures`
--

DROP TABLE IF EXISTS `itinerary_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itinerary_pictures` (
  `itinerary_id` bigint(20) NOT NULL,
  `pictures_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_em4v8jf0muak3a02f3v427n1a` (`pictures_id`),
  KEY `FKa1h4a08fj4l9l4sdesxiv2ovw` (`itinerary_id`),
  CONSTRAINT `FKa1h4a08fj4l9l4sdesxiv2ovw` FOREIGN KEY (`itinerary_id`) REFERENCES `itinerary` (`id`),
  CONSTRAINT `FKa91iagmi8gx6e2tt8hmsm4thh` FOREIGN KEY (`pictures_id`) REFERENCES `itinerary_picture` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itinerary_pictures`
--

LOCK TABLES `itinerary_pictures` WRITE;
/*!40000 ALTER TABLE `itinerary_pictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `itinerary_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itinerary_stops`
--

DROP TABLE IF EXISTS `itinerary_stops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itinerary_stops` (
  `itineraries_id` bigint(20) NOT NULL,
  `stops_id` bigint(20) NOT NULL,
  KEY `FKesp2rtx4dwdq8qfxmjq4vroy5` (`stops_id`),
  KEY `FKppd9awubpxtw3py5wmda0aae0` (`itineraries_id`),
  CONSTRAINT `FKesp2rtx4dwdq8qfxmjq4vroy5` FOREIGN KEY (`stops_id`) REFERENCES `point_of_interest` (`id`),
  CONSTRAINT `FKppd9awubpxtw3py5wmda0aae0` FOREIGN KEY (`itineraries_id`) REFERENCES `itinerary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itinerary_stops`
--

LOCK TABLES `itinerary_stops` WRITE;
/*!40000 ALTER TABLE `itinerary_stops` DISABLE KEYS */;
INSERT INTO `itinerary_stops` VALUES (322,1),(322,138),(322,210),(322,126),(322,102),(377,52),(377,186),(377,264),(377,353),(377,365),(438,378),(438,390),(438,402),(438,414),(438,426),(443,35),(443,84),(443,138),(443,174),(443,242);
/*!40000 ALTER TABLE `itinerary_stops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itinerary_tag`
--

DROP TABLE IF EXISTS `itinerary_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itinerary_tag` (
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itinerary_tag`
--

LOCK TABLES `itinerary_tag` WRITE;
/*!40000 ALTER TABLE `itinerary_tag` DISABLE KEYS */;
INSERT INTO `itinerary_tag` VALUES ('CULTURAL'),('NATURE'),('RELAX');
/*!40000 ALTER TABLE `itinerary_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itinerary_tag_itineraries`
--

DROP TABLE IF EXISTS `itinerary_tag_itineraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itinerary_tag_itineraries` (
  `itinerary_tag_name` varchar(255) NOT NULL,
  `itineraries_id` bigint(20) NOT NULL,
  KEY `FKggm2s7x0p6dk85y937s9sy0hw` (`itineraries_id`),
  KEY `FKgsrt4eqqygcjimq1jd1cocgi1` (`itinerary_tag_name`),
  CONSTRAINT `FKggm2s7x0p6dk85y937s9sy0hw` FOREIGN KEY (`itineraries_id`) REFERENCES `itinerary` (`id`),
  CONSTRAINT `FKgsrt4eqqygcjimq1jd1cocgi1` FOREIGN KEY (`itinerary_tag_name`) REFERENCES `itinerary_tag` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itinerary_tag_itineraries`
--

LOCK TABLES `itinerary_tag_itineraries` WRITE;
/*!40000 ALTER TABLE `itinerary_tag_itineraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `itinerary_tag_itineraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itinerary_tags`
--

DROP TABLE IF EXISTS `itinerary_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itinerary_tags` (
  `itinerary_id` bigint(20) NOT NULL,
  `tags_name` varchar(255) NOT NULL,
  KEY `FKqx7hbxb3s3r1p8g3l6uk2ulu7` (`tags_name`),
  KEY `FKow6y2pjr3fx5v9knnm0ci39ro` (`itinerary_id`),
  CONSTRAINT `FKow6y2pjr3fx5v9knnm0ci39ro` FOREIGN KEY (`itinerary_id`) REFERENCES `itinerary` (`id`),
  CONSTRAINT `FKqx7hbxb3s3r1p8g3l6uk2ulu7` FOREIGN KEY (`tags_name`) REFERENCES `itinerary_tag` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itinerary_tags`
--

LOCK TABLES `itinerary_tags` WRITE;
/*!40000 ALTER TABLE `itinerary_tags` DISABLE KEYS */;
INSERT INTO `itinerary_tags` VALUES (322,'CULTURAL'),(377,'NATURE'),(438,'RELAX'),(443,'CULTURAL');
/*!40000 ALTER TABLE `itinerary_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poi_picture`
--

DROP TABLE IF EXISTS `poi_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poi_picture` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `point_of_interest_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhir199xy8ts1d49rnaf4d1gaw` (`point_of_interest_id`),
  CONSTRAINT `FKhir199xy8ts1d49rnaf4d1gaw` FOREIGN KEY (`point_of_interest_id`) REFERENCES `point_of_interest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poi_picture`
--

LOCK TABLES `poi_picture` WRITE;
/*!40000 ALTER TABLE `poi_picture` DISABLE KEYS */;
INSERT INTO `poi_picture` VALUES (11,'Anne Frank House','/img/anne-frank.webp',1),(12,'Anne Frank House 2','/img/anne-frank-2.webp',1),(44,'Close-Up of City Archives ','/img/stadsarchief.webp',35),(45,'Entrance of City Archives','/img/stadsarchief-2.webp',35),(46,'Entrance of City Archives 2','/img/stadsarchief-3.webp',35),(61,'View of the canal','/img/herengracht.webp',52),(62,'Bridge over the canal','/img/herengracht-2.webp',52),(63,'Night time at the canal','/img/herengracht-3.webp',52),(93,'A room of the exposition','/img/fashion-for-good.webp',84),(94,'The entrance','/img/fashion-for-good-2.webp',84),(95,'Sustainable material bingo','/img/fashion-for-good-3.webp',84),(111,'Van Gogh Museum','/img/van-gogh-museum.webp',102),(112,'Van Gogh Museum 2','/img/van-gogh-museum-2.webp',102),(113,'Van Gogh Museum 3','/img/van-gogh-museum-3.webp',102),(114,'Anne Frank House 3','/img/anne-frank-3.webp',1),(123,'Oude Kerke','/img/oude-kerke.webp',114),(124,'Oude Kerke 2','/img/oude-kerke-2.webp',114),(125,'Oude Kerke 3','/img/oude-kerke-3.webp',114),(135,'Madame Tussauds','/img/madame-toussau.webp',126),(136,'Madame Tussauds 2','/img/madame-toussau-2.webp',126),(137,'Madame Tussauds 3','/img/madame-toussau-3.webp',126),(147,'Het Muziekthjeater','/img/het-muziektheater.webp',138),(148,'Het Muziekthjeater 2','/img/het-muziektheater-2.webp',138),(149,'Het Muziekthjeater 3','/img/het-muziektheater-3.webp',138),(159,'Dam Square','/img/dam-square.webp',150),(160,'Dam Square 2','/img/dam-square-2.webp',150),(161,'Dam Square 3','/img/dam-square-3.webp',150),(171,'saint-nicholas-basilica','/img/saint-nicholas-basilica.webp',162),(172,'saint-nicholas-basilica-2','/img/saint-nicholas-basilica.webp',162),(173,'saint-nicholas-basilica-3','saint-nicholas-basilica.webp',162),(183,'Red Light Secrets Museum','/img/red-light.webp',174),(184,'Red Light Secrets Museum 2','/img/red-light-2.webp',174),(185,'Red Light Secrets Museum 3','/img/red-light-4.webp',174),(195,'Vondelpark','/img/vondelpark.webp',186),(196,'Vondelpark 2','/img/vondelpark-2.webp',186),(197,'Vondelpark 3','/img/vondelpark-3.webp',186),(207,'Rijksmuseum','/img/rijksmuseum.webp',198),(208,'Rijksmuseum 2','/img/rijksmuseum-2.webp',198),(209,'Rijksmuseum 3','/img/rijksmuseum-3.webp',198),(219,'Koninklijk Paleis','/img/royal-palace.webp',210),(220,'Koninklijk Paleis 2','/img/royal-palace-2.webp',210),(221,'Koninklijk Paleis 3','/img/royal-palace-3.webp',210),(251,'NEMO','/img/nemo.webp',242),(252,'NEMO 2','/img/nemo-2.webp',242),(253,'NEMO 3','/img/nemo-3.webp',242),(273,'Hortus Botanicus','/img/hortus-botanicus.webp',264),(274,'Hortus Botanicus 2','/img/hortus-botanicus-2.webp',264),(275,'Hortus Botanicus 3','/img/hortus-botanicus-3.webp',264),(362,'Oosterpark Amsterdam','/img/oosterpark.webp',353),(363,'Oosterpark Amsterdam 2','/img/oosterpark-2.webp',353),(364,'Oosterpark Amsterdam 3','/img/oosterpark-3.webp',353),(374,'Park Frankendael','/img/park-frank.webp',365),(375,'Park Frankendael 2','/img/park-frank-2.webp',365),(376,'Park Frankendael 3','/img/park-frank-3.webp',365),(387,'Singel','/img/singel.webp',378),(388,'Singel 2','/img/singel-2.webp',378),(389,'Singel 3','/img/singel-3.webp',378),(399,'Keizersgracht','/img/keizersgracht.webp',390),(400,'Keizersgracht 2','/img/keizersgracht-2.webp',390),(401,'Keizersgracht 3','/img/keizersgracht-3.webp',390),(411,'Prinsengracht','/img/prinsengracht.webp',402),(412,'Prinsengracht 2','/img/prinsengracht-2.webp',402),(413,'Prinsengracht 3','/img/prinsengracht-3.webp',402),(423,'Brouwersgracht','/img/brouwersgracht.webp',414),(424,'Brouwersgracht 2','/img/brouwersgracht-2.webp',414),(425,'Brouwersgracht 3','/img/brouwersgracht-3.webp',414),(435,'Oudezijds Voorburgwal','/img/oudezijds.webp',426),(436,'Oudezijds Voorburgwal 2','/img/oudezijds-2.webp',426),(437,'Oudezijds Voorburgwal 3','/img/oudezijds-3.webp',426);
/*!40000 ALTER TABLE `poi_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_of_interest`
--

DROP TABLE IF EXISTS `point_of_interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `point_of_interest` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `hero_image` varchar(255) DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `visit_info_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6vxcihfbyos165ikaicdk3dfw` (`visit_info_id`),
  CONSTRAINT `FK6vxcihfbyos165ikaicdk3dfw` FOREIGN KEY (`visit_info_id`) REFERENCES `visit_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_of_interest`
--

LOCK TABLES `point_of_interest` WRITE;
/*!40000 ALTER TABLE `point_of_interest` DISABLE KEYS */;
INSERT INTO `point_of_interest` VALUES (1,'Westermarkt 20','The Anne Frank House (Dutch: Anne Frank Huis) is a writer\'s house and biographical museum dedicated to Jewish wartime diarist Anne Frank. The building is located on a canal called the Prinsengracht, close to the Westerkerk, in central Amsterdam in the Netherlands.\nDuring World War II, Anne Frank hid from Nazi persecution with her family and four other people in hidden rooms, in the rear building, of the 17th-century canal house, later known as the Secret Annex (Dutch: Achterhuis). She did not survive the war but her wartime diary was published in 1947. Ten years later the Anne Frank Foundation was established to protect the property from developers who wanted to demolish the block.','/img/anne-frank.webp',52.37521070860922,4.883948796638634,'Anne Frank House',2),(35,'Vijzelstraat 32','The archive welcomes everyone to delve into the city’s rich history. Wander through the impressive Treasure Room, dating from 1926. Take a look at the wonderful selection of old photographs, drawings, maps and documents that tell the story of Amsterdam. Find out about Rembrandt or Johan Cruyff and their times. Marvel at the medieval charter cabinet and follow the change from a small city in a medieval world to a world city in our times.','/img/stadsarchief.webp',52.36688950945399,4.892557955040815,'Amsterdam City Archives',36),(52,'Herengracht 1017','The Gouden Bocht (English: \"Golden Bend\") is the most prestigious part of the Herengracht in Amsterdam, Netherlands, between Leidsestraat and Vijzelstraat.\n\nUntil 1663 the Herengracht reached as far as the present Leidsegracht. From that year on, the fortifications around Amsterdam were expanded, within the Herengracht, the Keizersgracht and the Prinsengracht which were expanded. The digging ended at the river Amstel within a few years. The buyers on the Herengracht were encouraged to buy two lots and built double-wide mansions, and because the three canals here were laid out a little further from each other, and the lots were also deeper. On these large lots, the well-to-do placed their city-palaces with classicist facades, stuccoed ceilings, and fine gardens, once a year open to the public. In the curve, by the Nieuwe Spiegelstraat, lived Amsterdam\'s richest citizens, and so this part of the belt of canals was named the \"Golden Bend\" in recent history.','/img/herengracht.webp',52.36566985970797,4.89287140956834,'Herengracht',53),(84,'Rokin 102','The Fashion for Good Museum is an interactive fashion museum for the future of fashion, where we tell the stories behind the clothes you wear and how your choices can have a positive impact on people and our planet.\nIn the museum, you will learn where your clothes come from and discover the innovations shaping the future of fashion. Throughout the building, you can find concrete ways to have a positive impact, commit to taking action and shop sustainable products (that is, when you need to shop at all).','/img/fashion-for-good.webp',52.36955839459983,4.891786882418889,'Fashion for Good Museum',85),(102,'Museumplein 6, 1071 DJ','The Van Gogh Museum is a Dutch art museum dedicated to the works of Vincent van Gogh and his contemporaries in the Museum Square in Amsterdam South, close to the Stedelijk Museum, the Rijksmuseum, and the Concertgebouw. The museum opened on 2 June 1973, and its buildings were designed by Gerrit Rietveld and Kisho Kurokawa.  The museum contains the largest collection of Van Gogh\'s paintings and drawings in the world. In 2017, the museum had 2.3 million visitors and was the most-visited museum in the Netherlands, and the 23rd-most-visited art museum in the world. In 2019, the Van Gogh Museum launched the Meet Vincent Van Gogh Experience, a technology-driven \"immersive exhibition\" on Van Gogh\'s life and works, which has toured globally.','/img/van-gogh-museum.webp',52.35866488797528,4.880989768824468,'Van Gogh Museum',103),(114,'Oudekerksplein 23, 1012 GX ','The Oude Kerk (English: Old Church) is Amsterdam’s oldest building and youngest art institutes (since 2012). The building was founded circa 1213 and consecrated in 1306 by the bishop of Utrecht with Saint Nicolas as its patron saint. After the Reformation in 1578, it became a Calvinist church, which it remains today. It stands in De Wallen, now Amsterdam\'s main red-light district. The square surrounding the church is the Oudekerksplein.','/img/oude-kerke.webp',52.37457668205426,4.89856078496598,'De Oude Kerke',115),(126,'Dam 20, 1012 NP','Madame Tussauds Amsterdam is a wax museum situated in Amsterdam, the capital city of the Netherlands. It is located in the centre of the city on Dam Square, near the Royal Palace of Amsterdam. Founded in 1970, it was the first Madame Tussauds that was opened in mainland Europe as well as being the first foreign branch of the British institution. The collection of Madame Tussauds Amsterdam consists of a collection of wax figures of famous celebrities in different categories such as the Golden Age of Dutch history, music, sport and film.','/img/madame-toussau.webp',52.37302380037878,4.894380662307395,'Madame Tussauds',127),(138,'Amstel 3, 1011 PN','The Dutch National Opera (DNO; formerly De Nederlandse Opera, now De Nationale Opera in Dutch) is a Dutch opera company based in Amsterdam, Netherlands. Its present home base is the Dutch National Opera & Ballet housed in the Stopera building, a modern building designed by Cees Dam and Wilhelm Holzbauer which opened in 1986.','/img/het-muziektheater.webp',52.36781717775758,4.900926699998766,'Het Muziektheater',139),(150,'Dam Square','Dam Square or the Dam is a town square in Amsterdam, the capital of the Netherlands. Its notable buildings and frequent events make it one of the best-known and most important locations in the city and the country.','/img/dam-square.webp',52.37323587683491,4.892575535256215,'DAM',151),(162,'Prins Hendrikkade 73, 1012 AD ','The Basilica of Saint Nicholas (Dutch: Basiliek van de Heilige Nicolaas) is located in the Old Centre district of Amsterdam, Netherlands, very close to Amsterdam\'s main railway station. It is the city\'s primary Roman Catholic church. The church is built on a previously urban site, necessitating a northwest-southeast axis to be adopted, rather than the standard east-west axis. It lies between the street, Prins Hendrikkade, and the canal, Oudezijds Kolk. When built, the church was called St. Nicholas inside the Walls, i.e. inside the Amsterdam City wall, the oldest part of the Amsterdam defence works. The architect, Adrianus Bleijs (1842-1912) designed the church based on a combination of several revival styles: the most prominent being the Neo-Baroque and neo-Renaissance.','/img/saint-nicholas-basilica.webp',52.377090669275546,4.900915515867964,'Basilica of Saint Nicholas',163),(174,'Oudezijds Achterburgwal 60h, 1012 DP ','Visit a brothel in its original state in one of the oldest monuments of Amsterdam.A famous brothel where the infamous prostitute, Chinese Annie, was murdered. A crime that remains unsolved to this day. Visit the rooms, read the personal stories of Prostitutes, and learn all about the secrets of the world’s oldest profession.','/img/red-light.webp',52.37377619155145,4.8994022961129,'Red Light Secrets Museum',175),(186,'Vondelpark','The Vondelpark is a public urban park of 47 hectares (120 acres) in Amsterdam, Netherlands. It is part of the borough of Amsterdam-Zuid and situated west from the Leidseplein and the Museumplein. The park was opened in 1865 and originally named Nieuwe Park (English: New Park), but later renamed Vondelpark, after the 17th-century playwright and poet Joost van den Vondel. The park has around 10 million visitors annually. Within the park is an open-air theatre, a playground and several food service facilities.','/img/vondelpark.webp',52.35816200129366,4.8692795534781945,'Vondelpark',187),(198,'Museumstraat 1, 1071 XX','The Rijksmuseum is the national museum of the Netherlands dedicated to Dutch arts and history and is located in Amsterdam. The museum is located at the Museum Square in the borough of Amsterdam South, close to the Van Gogh Museum, the Stedelijk Museum Amsterdam, and the Concertgebouw. The museum has on display 8,000 objects of art and history, from their total collection of 1 million objects from the years 1200–2000, among which are some masterpieces by Rembrandt, Frans Hals, and Johannes Vermeer. The museum also has a small Asian collection, which is on display in the Asian pavilion.','/img/rijksmuseum.webp',52.36037761659604,4.886205861447472,'Rijksmuseum',199),(210,'Nieuwezijds Voorburgwal 147, 1012 RJ','The Royal Palace of Amsterdam in Amsterdam is one of three palaces in the Netherlands which are at the disposal of the monarch by Act of Parliament. It is situated on the west side of Dam Square in the centre of Amsterdam, opposite the War Memorial and next to the Nieuwe Kerk.The palace was built as a city hall during the Dutch Golden Age in the 17th century. The building became the royal palace of King Louis Napoleon and later of the Dutch Royal House.','/img/royal-palace.webp',52.3732751846199,4.893392825622343,'Koninklijk Paleis',211),(242,'Oosterdok 2, 1011 VX','NEMO Science Museum (from latin Nobody) is a science centre in Amsterdam, Netherlands. It is located in the Oosterdokseiland neighbourhood in the Amsterdam-Centrum borough, situated between the Oosterdokseiland and the Kattenburg. The museum has its origins in 1923, and is housed in a building designed by Renzo Piano since 1997. It contains five floors of hands-on science exhibitions and is the largest science center in the Netherlands. It attracts around 670,000 visitors annually, which makes it the eighth most visited museum in the Netherlands.','/img/nemo.webp',52.374276599326734,4.912638907857981,'NEMO',243),(264,'Plantage Middenlaan 2a, 1018 DD','Hortus Botanicus is a botanical garden in the Plantage district of Amsterdam, the Netherlands. It is one of the world\'s oldest botanical gardens.','/img/hortus-botanicus.webp',52.36822029491067,4.912015415667091,'Hortus Botanicus',265),(353,'Oosterpark, 1012 AA Amsterdam, Netherlands','The Oosterpark is a park in south east Amsterdam and a little off the tourist circuit in the city. I actually only came to see the Slavery monument, which is beautiful and a lovely reminding of how far society has come. While I was here, I wandered around the park as well. Oosterpark is a medium sized public park and well maintained, full of greenery, flowers, trees, a large pond and walkways to enjoy the park. Not as crowded or touristy as Vondelpark, but lovely nevertheless.','/img/oosterpark.webp',52.36410983938603,4.9201765904276415,'Oosterpark Amsterdam',354),(365,'Park Frankendael','Huize Frankendael is the last remaining country estate within the city of Amsterdam. Build in the 18th century, the house was used by people of high distinction to enjoy friendship and nature. While the city has enclosed the country estate, the joy of pleasure still remains. House, kitchen and garden are open throughout the year for the combination of nature, gastronomy and art&culture.','/img/park-frank.webp',52.3511703205236,4.930688301642891,'Park Frankendael',366),(378,'Singel','The Singel was one of Amsterdam\'s original canals, providing the city with both defence lines and transportation routes. In modern-day Amsterdam, it is a regularly visited street with numerous monumental houses, cathedrals, and medieval towers. Some of the most eye-catching structures along the canal include the Munttoren medieval tower and the world’s narrowest house at Singel 7. This beloved canal stretches out over 1.8 km and connects the IJ bay with the Amstel River. It’s within walking distance of Amsterdam Centraal train station and other highlights like the Royal Palace and the Nieuwe Kerk (New Church).','/img/singel.webp',52.373741036431404,4.889070220756396,'Singel',379),(390,'Keizersgracht','Keizersgracht (Emperor’s Canal) is a half-circle canal with numerous historical buildings in Amsterdam. This charming waterway is part of the Grachtengordel and can be considered a \'second generation\' canal, being dug out in the early 1600s. Redbrick buildings, aged warehouses, and Gothic churches are clustered together along the Keizersgracht. Behind all these colourful housefronts, stories of persecution, trade, and family histories are waiting to be discovered. A total of 14 bridges span over the Keizersgracht, of which the Lucas Jansz Sinckbrug at the junction with the River Amstel is the oldest and most picturesque. Covering the Keizersgracht on foot requires a 2.6-km walk that takes you from Brouwersgracht in the north to the Amstel river in the southeast.','/img/keizersgracht.webp',52.37278158147647,4.885041413492566,'Keizersgracht',391),(402,'Prinsengracht','Prinsengracht is a 3.2-km-long canal in the centre of Amsterdam. Also known as \'Prince\'s Canal\', it runs parallel to the Keizersgracht (Emperor\'s Canal), making it one of the 4 main canals of Amsterdam\'s canal belt. Dubbed the city\'s most beautiful canal, it is flanked by historic churches, museums, and hidden cafés. The Prinsengracht canal was named after the Prince of Orange, with constructions commencing in 1612. There are 14 bridges connecting the lanes around the canals, each of which is a marvel to walk on at sunset or sunrise. The entrance to Prince’s Canal is one of many sea locks built to contain the water at the level of the sea but has the peculiar name of \'Eenhoornsluis\', meaning Unicorn Lock.','/img/prinsengracht.webp',52.371595133812065,4.883147985426403,'Prinsengracht',403),(414,'Brouwersgracht','The Brouwersgracht (Brewers\' Canal) is often considered one of Amsterdam\'s most picturesque canals, thanks to its charming bridges and merchant houses built in the Golden Age of the Netherlands. As the name suggests, this waterway was once lined by breweries, providing merchants with some distraction from work. Cultural monuments that survived the centuries include No. 20, a tiny house with a unique neck-gabble, and houses No. 188–196 with their gorgeous red shutters. The A Van Wees – de Ooievaar craft distillery is an authentic cultural experience in Amsterdam. It offers tours and tastings on its signature gins, liqueurs and spirits, which are distilled with authentic copper kettles to centuries-old recipes.','/img/brouwersgracht.webp',52.380823209993935,4.888252360562811,'Brouwersgracht',415),(426,'Oudezijds Voorburgwal','The Oudezijds Voorburgwal is only 750 metres long, but has loads of architectural gems and age-old monuments. When entering the street, the charm of it becomes apparent. A must-see is Het Wapen van Riga, a striking trader\'s house built in 1605 with a perfectly executed stepped gable. Another iconic monument along the Oudezijds Voorburgwal is the Oude Kerk, the oldest church in Amsterdam. Continue to the Agnietenkapel, a gothic chapel that\'s been around since 1470. Learn about a lesser-known part of Amsterdam\'s history in the Our Lord in the Attic Museum, a hidden Catholic church established in a time when services and gatherings were prohibited.','/img/oudezijds.webp',52.372823542241825,4.8969762280274525,'Oudezijds Voorburgwal',427);
/*!40000 ALTER TABLE `point_of_interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_of_interest_pictures`
--

DROP TABLE IF EXISTS `point_of_interest_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `point_of_interest_pictures` (
  `point_of_interest_id` bigint(20) NOT NULL,
  `pictures_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_s2ougg99ttvwcp3twcdcct2sx` (`pictures_id`),
  KEY `FK9ft0vjbujc2r7cow009uw1qul` (`point_of_interest_id`),
  CONSTRAINT `FK9ft0vjbujc2r7cow009uw1qul` FOREIGN KEY (`point_of_interest_id`) REFERENCES `point_of_interest` (`id`),
  CONSTRAINT `FKkfthkjjk96gfw37x5xcsgxbpv` FOREIGN KEY (`pictures_id`) REFERENCES `poi_picture` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_of_interest_pictures`
--

LOCK TABLES `point_of_interest_pictures` WRITE;
/*!40000 ALTER TABLE `point_of_interest_pictures` DISABLE KEYS */;
INSERT INTO `point_of_interest_pictures` VALUES (1,11),(1,12),(1,114),(35,44),(35,45),(35,46),(52,61),(52,62),(52,63),(84,93),(84,94),(84,95),(102,111),(102,112),(102,113),(114,123),(114,124),(114,125),(126,135),(126,136),(126,137),(138,147),(138,148),(138,149),(150,159),(150,160),(150,161),(162,171),(162,172),(162,173),(174,183),(174,184),(174,185),(186,195),(186,196),(186,197),(198,207),(198,208),(198,209),(210,219),(210,220),(210,221),(242,251),(242,252),(242,253),(264,273),(264,274),(264,275),(353,362),(353,363),(353,364),(365,374),(365,375),(365,376),(378,387),(378,388),(378,389),(390,399),(390,400),(390,401),(402,411),(402,412),(402,413),(414,423),(414,424),(414,425),(426,435),(426,436),(426,437);
/*!40000 ALTER TABLE `point_of_interest_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_of_interest_tag`
--

DROP TABLE IF EXISTS `point_of_interest_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `point_of_interest_tag` (
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_of_interest_tag`
--

LOCK TABLES `point_of_interest_tag` WRITE;
/*!40000 ALTER TABLE `point_of_interest_tag` DISABLE KEYS */;
INSERT INTO `point_of_interest_tag` VALUES ('ARCHIVE'),('CANAL'),('CHURCH'),('GARDEN'),('MUSEUM'),('PALACE'),('PARK'),('SQUARE'),('THEATRE');
/*!40000 ALTER TABLE `point_of_interest_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_of_interest_tag_point_of_interests`
--

DROP TABLE IF EXISTS `point_of_interest_tag_point_of_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `point_of_interest_tag_point_of_interests` (
  `point_of_interest_tag_name` varchar(255) NOT NULL,
  `point_of_interests_id` bigint(20) NOT NULL,
  KEY `FKmxaelcgrkc3flxgw6mruujnhd` (`point_of_interests_id`),
  KEY `FKwb5s7u3syia5ro9k16grooeu` (`point_of_interest_tag_name`),
  CONSTRAINT `FKmxaelcgrkc3flxgw6mruujnhd` FOREIGN KEY (`point_of_interests_id`) REFERENCES `point_of_interest` (`id`),
  CONSTRAINT `FKwb5s7u3syia5ro9k16grooeu` FOREIGN KEY (`point_of_interest_tag_name`) REFERENCES `point_of_interest_tag` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_of_interest_tag_point_of_interests`
--

LOCK TABLES `point_of_interest_tag_point_of_interests` WRITE;
/*!40000 ALTER TABLE `point_of_interest_tag_point_of_interests` DISABLE KEYS */;
/*!40000 ALTER TABLE `point_of_interest_tag_point_of_interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_of_interest_tags`
--

DROP TABLE IF EXISTS `point_of_interest_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `point_of_interest_tags` (
  `point_of_interest_id` bigint(20) NOT NULL,
  `tags_name` varchar(255) NOT NULL,
  KEY `FKdr03h21k10bq4dsm0334l9ih0` (`tags_name`),
  KEY `FK8bge0y9adh3iwxy2d6fcwm24r` (`point_of_interest_id`),
  CONSTRAINT `FK8bge0y9adh3iwxy2d6fcwm24r` FOREIGN KEY (`point_of_interest_id`) REFERENCES `point_of_interest` (`id`),
  CONSTRAINT `FKdr03h21k10bq4dsm0334l9ih0` FOREIGN KEY (`tags_name`) REFERENCES `point_of_interest_tag` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_of_interest_tags`
--

LOCK TABLES `point_of_interest_tags` WRITE;
/*!40000 ALTER TABLE `point_of_interest_tags` DISABLE KEYS */;
INSERT INTO `point_of_interest_tags` VALUES (1,'MUSEUM'),(35,'MUSEUM'),(35,'ARCHIVE'),(52,'GARDEN'),(84,'MUSEUM'),(102,'MUSEUM'),(114,'CHURCH'),(126,'MUSEUM'),(138,'THEATRE'),(150,'SQUARE'),(162,'CHURCH'),(174,'MUSEUM'),(198,'MUSEUM'),(210,'PALACE'),(242,'MUSEUM'),(264,'GARDEN'),(353,'PARK'),(365,'PARK'),(378,'CANAL'),(390,'CANAL'),(402,'CANAL'),(414,'CANAL'),(426,'CANAL'),(186,'PARK');
/*!40000 ALTER TABLE `point_of_interest_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `hero_image` varchar(255) DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `service_id` varchar(255) DEFAULT NULL,
  `visit_info_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5h3vxsjoqhld12t8skiu0p6n2` (`service_id`),
  KEY `FK2n7r32h0nc32yveam10p5h8xp` (`visit_info_id`),
  CONSTRAINT `FK2n7r32h0nc32yveam10p5h8xp` FOREIGN KEY (`visit_info_id`) REFERENCES `visit_info` (`id`),
  CONSTRAINT `FK5h3vxsjoqhld12t8skiu0p6n2` FOREIGN KEY (`service_id`) REFERENCES `service_tag` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (13,'Pieter Calandlaan 101','https://www.amsterdamheefthet.nl/wp-content/uploads/2017/07/medisch-centrum-amsterdam-west.jpg',52.35687141386087,4.828244792905904,'Medisch Centrum Amsterdam West B.V.','HOSPITAL',14),(222,'De Ruijterkade 24, A, 1012 AA','/img/amsterdam-central-pharmacy.webp',52.380372341756676,4.899423660783133,'Amsterdam Central Pharmacy','PHARMACY',223),(232,'Rokin 88, 1012 KX','/img/ing-bank-amsterdam.webp',52.37034594928101,4.892056345440425,'ING Bank Amsterdam','BANK',233),(254,'Marnixstraat 250, 1016 TL','/img/esso-gas-station.webp',52.37020354080178,4.877127814755009,'Esso Amsterdam Marnixstraat','GAS STATION',255),(276,'Damrak 23, 1012 LJ','/img/american-supermarket.webp',52.37685937438876,4.89693813839223,'American Supermarket','GROCERY SHOP',277),(286,'De Ruijterkade 28, 1012 AA','/img/i-am-amsterdam-visitor.webp',52.383741143213136,4.901899415498936,'I amsterdam Visitor Centre','INFO POINT',287),(298,'Oosterdokskade 143, 1011 DL','/img/oba.webp',52.38097547819092,4.907735868743563,'OBA Oosterdok Public Library','LIBRARY',299),(310,'Nieuwezijds Voorburgwal 35, 1012 RD','/img/police-station-1.webp',52.381521415208645,4.894689537832986,'Police Station Amsterdam-Burgwallen','POLICE STATION',311),(323,'1012 WX','/img/university-amsterdam.webp',52.356435085990064,4.95569831454373,'University of Amsterdam','SCHOOL',324),(333,'De Ruijterkade 26B, 1012 AA','/img/postNL.webp',52.38154531247993,4.899497553267816,'postNL','POST OFFICE',334),(343,'Beemsterstraat 652, 1027 ED','/img/friend-sport.webp',52.40102790685608,4.959836523031073,'Friendship Sports Center','SPORTS CENTRE',344);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_picture`
--

DROP TABLE IF EXISTS `service_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_picture` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `service_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjqxegxk81m8ium242trq89bls` (`service_id`),
  CONSTRAINT `FKjqxegxk81m8ium242trq89bls` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_picture`
--

LOCK TABLES `service_picture` WRITE;
/*!40000 ALTER TABLE `service_picture` DISABLE KEYS */;
INSERT INTO `service_picture` VALUES (22,'Entrance','https://assets.website-files.com/566e750577f6c2cb1a189fd4/5677bcb864ad03d71e2606ee_amsterdamwest.jpg',13),(231,'Amsterdam Central Pharmacy','/img/amsterdam-central-pharmacy.webp',222),(241,'ING Bank','/img/ing-bank-amsterdam.webp',232),(263,'ING Bank','/img/esso-gas-station.webp',254),(285,'American Supermarket','/img/american-supermarket.webp',276),(295,'I am Amsterdam Visitor Centre','/img/i-am-amsterdam-visitor.webp',286),(307,'Oba Library','/img/oba.webp',298),(319,'Police Station','/img/police-station-1.webp',310),(332,'University of Amsterdam','/img/university-amsterdam.webp',323),(342,'postNL','/img/postNL.webp',333),(352,'Friendship Sports Center','/img/friend-sport.webp',343);
/*!40000 ALTER TABLE `service_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_pictures`
--

DROP TABLE IF EXISTS `service_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_pictures` (
  `service_id` bigint(20) NOT NULL,
  `pictures_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_sji3cv2jat87cq9e4lki8ydxr` (`pictures_id`),
  KEY `FK2wg5eceep8rb7alsd9jvoiapa` (`service_id`),
  CONSTRAINT `FK2wg5eceep8rb7alsd9jvoiapa` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`),
  CONSTRAINT `FKna8v7dq6wr0srl4i7p5ydpcc0` FOREIGN KEY (`pictures_id`) REFERENCES `service_picture` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_pictures`
--

LOCK TABLES `service_pictures` WRITE;
/*!40000 ALTER TABLE `service_pictures` DISABLE KEYS */;
INSERT INTO `service_pictures` VALUES (13,22),(222,231),(232,241),(254,263),(276,285),(286,295),(298,307),(310,319),(323,332),(333,342),(343,352);
/*!40000 ALTER TABLE `service_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_tag`
--

DROP TABLE IF EXISTS `service_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_tag` (
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_tag`
--

LOCK TABLES `service_tag` WRITE;
/*!40000 ALTER TABLE `service_tag` DISABLE KEYS */;
INSERT INTO `service_tag` VALUES ('BANK'),('GAS STATION'),('GROCERY SHOP'),('HOSPITAL'),('INFO POINT'),('LIBRARY'),('PHARMACY'),('POLICE STATION'),('POST OFFICE'),('SCHOOL'),('SPORTS CENTRE');
/*!40000 ALTER TABLE `service_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_info`
--

DROP TABLE IF EXISTS `visit_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_info` (
  `id` bigint(20) NOT NULL,
  `price` double NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_info`
--

LOCK TABLES `visit_info` WRITE;
/*!40000 ALTER TABLE `visit_info` DISABLE KEYS */;
INSERT INTO `visit_info` VALUES (2,10,'https://www.annefrank.org/en/'),(14,0,'https://google.com'),(24,10,'https://www.annefrank.org/en/'),(36,0,'https://www.amsterdam.nl/stadsarchief/'),(53,20,'https://www.opentuinendagen.nl/'),(85,10,'https://fashionforgood.com/'),(103,19,'https://www.vangoghmuseum.nl/en'),(115,19,'https://oudekerk.nl/en/'),(127,25,'https://www.madametussauds.com/'),(139,10,'https://www.operaballet.nl/'),(151,0,NULL),(163,0,'https://nicolaas-parochie.nl/'),(175,14.5,'https://www.redlightsecrets.com/'),(187,14.5,'https://www.hetvondelpark.net/'),(199,20,'https://www.rijksmuseum.nl/'),(211,20,'https://www.paleisamsterdam.nl/'),(223,0,'https://www.amsterdamcentralpharmacy.nl/'),(233,0,'https://www.ing.nl/contact'),(243,17.5,'https://tickets.nemosciencemuseum.nl/en/tickets'),(255,0,'https://www.esso.nl/nl-nl/find-station/ESSO-AMSTERDAM-EssoAmsterdamMarnixstraat-100359732?utm_source=google&utm_medium=organic&utm_campaign=gmb'),(265,12,'https://www.dehortus.nl/'),(277,0,NULL),(287,0,NULL),(299,0,'http://www.oba.nl/'),(311,0,'https://www.politie.nl/mijn-buurt/politiebureaus/05/burgwallen.html'),(324,0,'https://www.uva.nl/'),(334,0,'https://www.postnl.nl/hulp'),(344,0,'http://www.friendshipsc.nl/'),(354,0,'https://www.amsterdam.nl/toerisme-vrije-tijd/parken/oosterpark/'),(366,0,'https://huizefrankendael.nl/en/'),(379,0,NULL),(391,0,NULL),(403,0,NULL),(415,0,NULL),(427,0,NULL),(480,20,'https://www.rijksmuseum.nl/nl'),(497,17.5,'https://www.nemosciencemuseum.nl/nl/de-studio/');
/*!40000 ALTER TABLE `visit_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_info_opening_hours`
--

DROP TABLE IF EXISTS `visit_info_opening_hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_info_opening_hours` (
  `visit_info_id` bigint(20) NOT NULL,
  `opening_hours_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_7hsa7kh0616ine024sr2aq73y` (`opening_hours_id`),
  KEY `FKc4metqhkycbj32kqmfcy8sv6p` (`visit_info_id`),
  CONSTRAINT `FKc4metqhkycbj32kqmfcy8sv6p` FOREIGN KEY (`visit_info_id`) REFERENCES `visit_info` (`id`),
  CONSTRAINT `FKfwev1dy372bknc7wpvsg2j9ph` FOREIGN KEY (`opening_hours_id`) REFERENCES `day` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_info_opening_hours`
--

LOCK TABLES `visit_info_opening_hours` WRITE;
/*!40000 ALTER TABLE `visit_info_opening_hours` DISABLE KEYS */;
INSERT INTO `visit_info_opening_hours` VALUES (2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(14,15),(14,16),(14,17),(14,18),(14,19),(14,20),(14,21),(24,25),(24,26),(24,27),(24,28),(24,29),(24,30),(24,31),(36,37),(36,38),(36,39),(36,40),(36,41),(36,42),(36,43),(53,54),(53,55),(53,56),(53,57),(53,58),(53,59),(53,60),(85,86),(85,87),(85,88),(85,89),(85,90),(85,91),(85,92),(103,104),(103,105),(103,106),(103,107),(103,108),(103,109),(103,110),(115,116),(115,117),(115,118),(115,119),(115,120),(115,121),(115,122),(127,128),(127,129),(127,130),(127,131),(127,132),(127,133),(127,134),(139,140),(139,141),(139,142),(139,143),(139,144),(139,145),(139,146),(151,152),(151,153),(151,154),(151,155),(151,156),(151,157),(151,158),(163,164),(163,165),(163,166),(163,167),(163,168),(163,169),(163,170),(175,176),(175,177),(175,178),(175,179),(175,180),(175,181),(175,182),(187,188),(187,189),(187,190),(187,191),(187,192),(187,193),(187,194),(199,200),(199,201),(199,202),(199,203),(199,204),(199,205),(199,206),(211,212),(211,213),(211,214),(211,215),(211,216),(211,217),(211,218),(223,224),(223,225),(223,226),(223,227),(223,228),(223,229),(223,230),(233,234),(233,235),(233,236),(233,237),(233,238),(233,239),(233,240),(243,244),(243,245),(243,246),(243,247),(243,248),(243,249),(243,250),(255,256),(255,257),(255,258),(255,259),(255,260),(255,261),(255,262),(265,266),(265,267),(265,268),(265,269),(265,270),(265,271),(265,272),(277,278),(277,279),(277,280),(277,281),(277,282),(277,283),(277,284),(287,288),(287,289),(287,290),(287,291),(287,292),(287,293),(287,294),(299,300),(299,301),(299,302),(299,303),(299,304),(299,305),(299,306),(311,312),(311,313),(311,314),(311,315),(311,316),(311,317),(311,318),(324,325),(324,326),(324,327),(324,328),(324,329),(324,330),(324,331),(334,335),(334,336),(334,337),(334,338),(334,339),(334,340),(334,341),(344,345),(344,346),(344,347),(344,348),(344,349),(344,350),(344,351),(354,355),(354,356),(354,357),(354,358),(354,359),(354,360),(354,361),(366,367),(366,368),(366,369),(366,370),(366,371),(366,372),(366,373),(379,380),(379,381),(379,382),(379,383),(379,384),(379,385),(379,386),(391,392),(391,393),(391,394),(391,395),(391,396),(391,397),(391,398),(403,404),(403,405),(403,406),(403,407),(403,408),(403,409),(403,410),(415,416),(415,417),(415,418),(415,419),(415,420),(415,421),(415,422),(427,428),(427,429),(427,430),(427,431),(427,432),(427,433),(427,434),(480,481),(480,482),(480,483),(480,484),(480,485),(480,486),(480,487),(497,498),(497,499),(497,500),(497,501),(497,502),(497,503),(497,504);
/*!40000 ALTER TABLE `visit_info_opening_hours` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-02 11:22:20
