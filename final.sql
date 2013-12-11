-- MySQL dump 10.13  Distrib 5.6.14, for osx10.9 (x86_64)
--
-- Host: localhost    Database: final
-- ------------------------------------------------------
-- Server version	5.6.14

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'This is the first comment. It sucks I know.',2,1,'2013-12-10 18:31:43'),(2,'This is a comment',1,2,'2013-12-10 20:07:32');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'The First Post','Lorem ipsum dolor sit amet, ut mentitum scaevola ponderum eos, ei quo harum alterum, iusto volutpat his ex. Sale civibus an vim, te noster sapientem theophrastus eum. Probatus reprimique referrentur per ei, nostrum concludaturque cu usu, solum partem per et. In rationibus constituam disputando est, eu pro ludus singulis consectetuer. Brute elitr perpetua no mei, electram consulatu ex usu. Pro prompta ancillae deleniti cu, et mel vidisse feugait fuisset. At esse error utroque sit.\r\n\r\nIn mel pertinacia eloquentiam, ad alia vitae malorum ius. Te dictas albucius reformidans nam, ad simul regione mnesarchum eam. Ad his facete disputationi definitiones. Mea posse verear eu, ex falli elitr eripuit eam. Assum platonem electram cu eum.\r\n\r\nDuo ad mazim complectitur. Wisi magna mundi ne eam. Id harum molestie eum. Ad semper ornatus ullamcorper vim, vim iudico noster persequeris ut, sed oblique referrentur ad. Eam ferri debet soluta ei.',1,'2013-12-10 18:31:08'),(2,'This is the Second Post','Nihil quaestio sit ne, idque mollis nominati eum id. Vix assum liber exerci an, ei eos zril abhorreant. Nibh iusto referrentur pro in. Duo ad falli solet omittam, tibique eloquentiam mei ea.\r\n\r\nPer ea agam nihil inermis, et ius suavitate accommodare definitionem, sea no tation iuvaret. Mea alia appellantur et, alia legendos adipisci sed ea. Eu dolore euismod urbanitas est, sint alterum maiestatis ius et, vis discere percipitur dissentiunt id. Eu his possit molestie repudiare, vim ipsum elitr at. Nec cu eligendi dissentiunt, nisl vocibus in his.\r\n\r\nAmet ullamcorper vel ad, an mel purto tritani. At duo voluptua scripserit, timeam laoreet denique mea et. Malis solet iracundia mel ad. Vel homero iriure detraxit ex, at his partem verterem. Ei pri ferri praesent, nec latine consectetuer id. Ea congue volumus torquatos pro, vis liber animal necessitatibus ad.\r\n',2,'2013-12-10 18:32:26');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Adam','password','adam@email.com','2013-12-10 18:29:46'),(2,'Kyle','password','kyle@email.com','2013-12-10 18:30:18');
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

-- Dump completed on 2013-12-10 20:09:32
