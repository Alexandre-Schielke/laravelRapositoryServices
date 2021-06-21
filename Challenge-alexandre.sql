-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: teste
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

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
-- Table structure for table `conteudos`
--

DROP TABLE IF EXISTS `conteudos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conteudos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `playlist_id` bigint unsigned NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `conteudos_playlist_id_foreign` (`playlist_id`),
  CONSTRAINT `conteudos_playlist_id_foreign` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conteudos`
--

LOCK TABLES `conteudos` WRITE;
/*!40000 ALTER TABLE `conteudos` DISABLE KEYS */;
INSERT INTO `conteudos` VALUES (1,1,'Culpa dolorem nulla.','http://marvin.com/commodi-hic-quia-placeat-architecto-accusamus-et-unde','Prof. Frederique Heaney PhD','2021-06-20 22:09:31','2021-06-20 22:09:31'),(2,2,'Non debitis.','http://towne.com/deleniti-placeat-qui-qui-impedit-et-a.html','Elissa Stoltenberg','2021-06-20 22:09:31','2021-06-20 22:09:31'),(3,3,'Dolor maiores temporibus.','http://www.greenholt.com/consequatur-ad-voluptas-deleniti-sit-est-consequatur','Paul Hodkiewicz','2021-06-20 22:09:31','2021-06-20 22:09:31'),(4,4,'Sed ratione.','http://stamm.org/non-unde-voluptas-et','Mr. Isac Stehr','2021-06-20 22:09:32','2021-06-20 22:09:32'),(5,5,'Dolor ut dolore.','http://toy.net/consectetur-placeat-aut-natus-ex','Dr. Bradford Hills','2021-06-20 22:09:32','2021-06-20 22:09:32'),(6,6,'Sit eveniet.','http://www.borer.org/culpa-velit-beatae-omnis-totam','Gonzalo Renner','2021-06-20 22:09:32','2021-06-20 22:09:32'),(7,7,'Ducimus itaque sint.','http://www.hauck.biz/harum-et-atque-porro-natus-quidem.html','Ms. Cathrine Bednar','2021-06-20 22:09:33','2021-06-20 22:09:33'),(8,8,'Aut dignissimos atque.','http://labadie.org/et-vero-beatae-est-magnam','Prof. Whitney Funk','2021-06-20 22:09:33','2021-06-20 22:09:33'),(9,9,'Deserunt nisi et.','http://bauch.net/aut-id-fugiat-ullam-et-nemo','Micah Barton','2021-06-20 22:09:33','2021-06-20 22:09:33'),(10,10,'Voluptatem excepturi quis.','http://www.spinka.com/magnam-et-error-omnis-quam-accusamus-dolorem-adipisci.html','Prof. Lucio Marvin Jr.','2021-06-20 22:09:33','2021-06-20 22:09:33'),(11,11,'Occaecati aut totam.','https://keebler.com/reiciendis-pariatur-unde-soluta-soluta.html','Elsie Boyle DVM','2021-06-20 22:09:34','2021-06-20 22:09:34'),(12,12,'Expedita quos.','https://www.bode.net/est-voluptas-quia-ut','Jena Sauer','2021-06-20 22:09:34','2021-06-20 22:09:34'),(13,13,'Exercitationem ea aut.','http://grimes.com/perspiciatis-voluptatem-quo-ullam-tempora-quasi-quo-voluptatem-velit','Cole Olson','2021-06-20 22:09:34','2021-06-20 22:09:34'),(14,14,'Vero dolore aut.','http://doyle.com/sint-cumque-aut-odio-id-dolor-assumenda-consequatur-sed.html','Francisca Carroll','2021-06-20 22:09:34','2021-06-20 22:09:34'),(15,15,'Non quae nam.','http://koelpin.com/','Miss Yesenia Shanahan III','2021-06-20 22:09:35','2021-06-20 22:09:35'),(16,16,'Rerum eum vel.','http://www.ondricka.com/quo-qui-non-rerum-nobis-beatae','Reyes Jones','2021-06-20 22:09:35','2021-06-20 22:09:35'),(17,17,'A atque velit.','http://breitenberg.com/perferendis-consectetur-aut-error-tempora-non-saepe-iusto.html','Cora Smitham','2021-06-20 22:09:35','2021-06-20 22:09:35'),(18,18,'Ad aliquam accusamus.','http://mayert.com/ut-ex-molestiae-unde-iste.html','Dr. Selmer Conn','2021-06-20 22:09:35','2021-06-20 22:09:35'),(19,19,'Molestias quia.','http://www.ruecker.com/omnis-cum-rerum-eos-id','Mr. Victor Heller V','2021-06-20 22:09:36','2021-06-20 22:09:36'),(20,20,'Possimus perspiciatis tenetur.','http://www.mante.biz/rerum-adipisci-officia-adipisci-et-qui-fugit.html','Mr. Dedrick Stiedemann','2021-06-20 22:09:36','2021-06-20 22:09:36'),(21,21,'Quibusdam cum dolores.','http://beer.info/beatae-ex-accusamus-deserunt-qui-perspiciatis-eum','Miss Jayne Hyatt','2021-06-20 22:09:36','2021-06-20 22:09:36'),(22,22,'Nostrum nulla.','http://www.hermann.com/aut-possimus-rem-optio-nihil-voluptatem-ipsum','Terence Fay','2021-06-20 22:09:36','2021-06-20 22:09:36'),(23,23,'Similique voluptas itaque.','http://lemke.info/voluptates-veniam-in-consectetur-ut-voluptas-iure-ut-facilis','Liliane Kuhlman','2021-06-20 22:09:37','2021-06-20 22:09:37'),(24,24,'Vel esse.','http://www.lynch.com/','Nikita Kovacek','2021-06-20 22:09:37','2021-06-20 22:09:37'),(25,25,'Repellat ipsum ut.','http://ryan.info/','Antonette Nader','2021-06-20 22:09:37','2021-06-20 22:09:37'),(26,26,'Sit repudiandae.','http://www.oconnell.biz/quam-minima-rerum-voluptas-officiis-dolores-quod','Clement Franecki','2021-06-20 22:09:37','2021-06-20 22:09:37'),(27,27,'Ut dolores.','http://www.dare.org/necessitatibus-rerum-quas-sed-vel-beatae-cupiditate-ad','Rogelio Thompson','2021-06-20 22:09:38','2021-06-20 22:09:38'),(28,28,'Recusandae saepe.','http://www.ebert.net/','Dr. Gabe Brakus III','2021-06-20 22:09:38','2021-06-20 22:09:38'),(29,29,'Placeat vitae aut.','http://www.cronin.org/voluptatem-eius-eum-error-saepe-ea-ut','Alek Friesen','2021-06-20 22:09:38','2021-06-20 22:09:38'),(30,30,'Ea excepturi dignissimos.','http://hayes.com/','Prof. Karen Green','2021-06-20 22:09:38','2021-06-20 22:09:38'),(31,31,'Nostrum asperiores dolorem.','http://www.muller.com/atque-nihil-neque-sed-et-quia-illo-vel','Dr. Wellington Feest','2021-06-20 22:09:39','2021-06-20 22:09:39'),(32,32,'Expedita amet ab.','http://hammes.biz/','Gennaro Witting','2021-06-20 22:09:39','2021-06-20 22:09:39'),(33,33,'Iste ea.','http://www.stanton.info/nulla-ut-nemo-et-doloribus','Ophelia Kassulke','2021-06-20 22:09:39','2021-06-20 22:09:39'),(34,34,'Maxime recusandae.','http://www.armstrong.com/ex-libero-magni-eos.html','Steve Senger','2021-06-20 22:09:39','2021-06-20 22:09:39'),(35,35,'Expedita optio voluptatum.','http://thompson.net/qui-distinctio-numquam-vel-ut','Dolly Kuhlman','2021-06-20 22:09:40','2021-06-20 22:09:40'),(36,36,'Ut enim.','http://www.renner.biz/','Greyson Mante DDS','2021-06-20 22:09:40','2021-06-20 22:09:40'),(37,37,'Quia odio.','http://www.bernier.com/architecto-est-aut-quibusdam-a-mollitia-occaecati-veritatis-officiis.html','Clyde Wiza MD','2021-06-20 22:09:40','2021-06-20 22:09:40'),(38,38,'Et sed id.','http://farrell.com/repellendus-quia-eum-facilis-et','Nikita Erdman','2021-06-20 22:09:40','2021-06-20 22:09:40'),(39,39,'Aperiam illo pariatur.','http://www.damore.org/dolore-ullam-ex-sit-et-perspiciatis-illo','Federico Ryan DDS','2021-06-20 22:09:41','2021-06-20 22:09:41'),(40,40,'Est est.','http://johnston.com/ea-quia-consequuntur-quos','Mrs. Earlene Pollich IV','2021-06-20 22:09:41','2021-06-20 22:09:41'),(41,41,'Numquam a aliquid.','http://morar.com/veritatis-non-suscipit-qui-quia-nesciunt-ipsa-harum.html','Dr. Alexandria Torp DDS','2021-06-20 22:09:41','2021-06-20 22:09:41'),(42,42,'Est molestias totam.','https://gerlach.biz/minus-sed-sunt-debitis-necessitatibus-non.html','Bridgette Bogan III','2021-06-20 22:09:41','2021-06-20 22:09:41'),(43,43,'Quae repellat.','http://www.windler.net/nostrum-molestiae-veritatis-aut-ut-occaecati-fugiat','Dr. Connor Halvorson','2021-06-20 22:09:42','2021-06-20 22:09:42'),(44,44,'Cum repellendus.','http://www.yundt.net/assumenda-voluptatem-quaerat-at-ex-eum-consequuntur-esse-qui','Tabitha Altenwerth','2021-06-20 22:09:42','2021-06-20 22:09:42'),(45,45,'Aut quia earum.','http://schroeder.com/atque-sunt-ab-et-ut-quasi-fugit-architecto-sint','Stone Herman','2021-06-20 22:09:42','2021-06-20 22:09:42'),(46,46,'Doloribus sit.','https://weber.com/eligendi-aut-illo-dolorum-quas-architecto.html','Chloe Hodkiewicz','2021-06-20 22:09:43','2021-06-20 22:09:43'),(47,47,'Sint officiis.','https://www.kuhic.com/perspiciatis-quia-voluptatem-voluptatem-qui-ut','Bernita Senger IV','2021-06-20 22:09:43','2021-06-20 22:09:43'),(48,48,'Omnis esse atque.','http://hoppe.info/quia-assumenda-dolorum-ad-voluptatem-incidunt-autem','Kurtis Durgan','2021-06-20 22:09:43','2021-06-20 22:09:43'),(49,49,'Totam quis quis.','https://www.mayer.com/accusantium-fugiat-earum-labore-fuga-culpa-ut','Destini Luettgen DDS','2021-06-20 22:09:44','2021-06-20 22:09:44'),(50,50,'Voluptas tempore officiis.','http://www.langworth.com/animi-porro-a-rerum-quam.html','Prof. Tomas Emard I','2021-06-20 22:09:44','2021-06-20 22:09:44');
/*!40000 ALTER TABLE `conteudos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (36,'2014_10_12_000000_create_users_table',1),(37,'2014_10_12_100000_create_password_resets_table',1),(38,'2019_08_19_000000_create_failed_jobs_table',1),(39,'2021_06_18_163052_create_playlists_table',1),(40,'2021_06_18_163134_create_conteudos_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES (1,'Ducimus fugit porro.','Jalyn Heathcote DVM','Mrs. Kara Spencer','2021-06-20 22:09:11','2021-06-20 22:09:11'),(2,'Laboriosam minima.','Clara Cassin','Jerome Kunde','2021-06-20 22:09:12','2021-06-20 22:09:12'),(3,'Enim iusto.','Jovany Cummerata','Felix Lang','2021-06-20 22:09:12','2021-06-20 22:09:12'),(4,'Magni et.','Mr. Lamar Mayert Sr.','Elizabeth Stroman','2021-06-20 22:09:13','2021-06-20 22:09:13'),(5,'Et earum sit.','Dawn Cummerata','Heath Prosacco','2021-06-20 22:09:13','2021-06-20 22:09:13'),(6,'Magnam doloremque est.','Royal Wolff','Mr. Hardy Kuhic','2021-06-20 22:09:14','2021-06-20 22:09:14'),(7,'Voluptas earum doloribus.','Mrs. Mozelle Hane DDS','Taurean Swaniawski DVM','2021-06-20 22:09:14','2021-06-20 22:09:14'),(8,'Mollitia et et.','Miss Alverta Jacobi','Miss Eryn Rodriguez','2021-06-20 22:09:15','2021-06-20 22:09:15'),(9,'Enim iure.','Elenora Gusikowski','Jordyn Murazik','2021-06-20 22:09:15','2021-06-20 22:09:15'),(10,'Quod ut eos.','Laverne Bartell','Prof. Earnestine Shanahan','2021-06-20 22:09:16','2021-06-20 22:09:16'),(11,'Quaerat nulla.','Keely Nitzsche Sr.','Gussie Rowe','2021-06-20 22:09:16','2021-06-20 22:09:16'),(12,'Blanditiis quo itaque.','Kaelyn Emard','Mrs. Rosalind Bayer V','2021-06-20 22:09:17','2021-06-20 22:09:17'),(13,'Quod sunt consequuntur.','Skylar Kling','Brad Hagenes Jr.','2021-06-20 22:09:17','2021-06-20 22:09:17'),(14,'Omnis eius delectus.','Rosemary Schmeler','Norberto O\'Kon','2021-06-20 22:09:17','2021-06-20 22:09:17'),(15,'Architecto quae.','Karolann Hessel','Prof. Percival Von III','2021-06-20 22:09:18','2021-06-20 22:09:18'),(16,'Similique officia dolor.','Dr. Friedrich Kling','Dr. Eddie Welch II','2021-06-20 22:09:18','2021-06-20 22:09:18'),(17,'Aperiam tempore.','Myrtle Dickens','Elijah Morissette V','2021-06-20 22:09:19','2021-06-20 22:09:19'),(18,'Ad id.','Dr. Oliver Tromp III','Mr. Jerad Marks DVM','2021-06-20 22:09:19','2021-06-20 22:09:19'),(19,'Aut aut.','Mr. Augustus O\'Hara','Doug Hill','2021-06-20 22:09:19','2021-06-20 22:09:19'),(20,'Illo nam qui.','Eldridge Price','Gwendolyn Berge','2021-06-20 22:09:20','2021-06-20 22:09:20'),(21,'Exercitationem perferendis aut.','Dr. Ashtyn Quitzon','Jamar Johnson PhD','2021-06-20 22:09:20','2021-06-20 22:09:20'),(22,'Reiciendis qui ut.','Prof. Noel Harvey','Lonny Torphy IV','2021-06-20 22:09:21','2021-06-20 22:09:21'),(23,'Impedit unde molestias.','Miss Matilde Davis','Clementina Hauck','2021-06-20 22:09:21','2021-06-20 22:09:21'),(24,'Animi officia voluptatibus.','Mittie Schneider II','Miss Abigale Williamson','2021-06-20 22:09:22','2021-06-20 22:09:22'),(25,'Deleniti quibusdam officia.','Sonia Watsica V','Prof. Marlon Tromp DDS','2021-06-20 22:09:22','2021-06-20 22:09:22'),(26,'Doloremque laboriosam.','Miss Jacklyn Hodkiewicz','Maureen Fay','2021-06-20 22:09:23','2021-06-20 22:09:23'),(27,'Et aut.','Prof. Adrianna DuBuque MD','Letitia Kuvalis','2021-06-20 22:09:23','2021-06-20 22:09:23'),(28,'Accusantium labore.','Mozelle Bartell','Romaine Kemmer','2021-06-20 22:09:23','2021-06-20 22:09:23'),(29,'Sed soluta.','Hester Trantow','Prof. Leland Aufderhar','2021-06-20 22:09:24','2021-06-20 22:09:24'),(30,'Architecto laborum quia.','Dr. Denis Eichmann','Prof. Carol Schneider','2021-06-20 22:09:24','2021-06-20 22:09:24'),(31,'Et dolor.','Ms. Claire Greenfelder II','Kailee Borer','2021-06-20 22:09:24','2021-06-20 22:09:24'),(32,'Nulla eos nihil.','Dr. Polly Mohr','Aubrey Sauer','2021-06-20 22:09:24','2021-06-20 22:09:24'),(33,'Vero aliquid.','Gonzalo Grimes','Gwen Witting','2021-06-20 22:09:25','2021-06-20 22:09:25'),(34,'Est unde.','Kayla Hermiston','Roy Sporer II','2021-06-20 22:09:25','2021-06-20 22:09:25'),(35,'Soluta expedita dolores.','Beverly Padberg','Steve Wisoky','2021-06-20 22:09:26','2021-06-20 22:09:26'),(36,'Adipisci voluptatum.','Norbert Blick','Hailie Bednar','2021-06-20 22:09:26','2021-06-20 22:09:26'),(37,'Libero excepturi occaecati.','Mrs. Cristal Beatty V','Arne Shields','2021-06-20 22:09:27','2021-06-20 22:09:27'),(38,'Tempore numquam.','Bonnie Kub','Adolfo Conn','2021-06-20 22:09:27','2021-06-20 22:09:27'),(39,'Doloribus in modi.','Prof. Eddie Schroeder I','Ms. Georgianna Hegmann DVM','2021-06-20 22:09:28','2021-06-20 22:09:28'),(40,'Labore a.','Prof. Aiden Brakus Jr.','Adolfo Cruickshank','2021-06-20 22:09:28','2021-06-20 22:09:28'),(41,'Et esse.','Pierre Stoltenberg','Christopher Brown','2021-06-20 22:09:28','2021-06-20 22:09:28'),(42,'Natus illum.','Kathleen Nikolaus','Prof. Marietta Runolfsdottir DVM','2021-06-20 22:09:29','2021-06-20 22:09:29'),(43,'Et qui.','Filomena Jerde','Eda Russel','2021-06-20 22:09:29','2021-06-20 22:09:29'),(44,'Repellendus ut.','Dr. Marta Torphy','Miss Rosemary Walker IV','2021-06-20 22:09:29','2021-06-20 22:09:29'),(45,'Assumenda quo.','Delphine Bartoletti','Cindy Abernathy','2021-06-20 22:09:29','2021-06-20 22:09:29'),(46,'Sed nostrum.','Armand Paucek Jr.','Mr. Dusty Vandervort','2021-06-20 22:09:30','2021-06-20 22:09:30'),(47,'Et enim occaecati.','Laury Gleason','Camren Streich','2021-06-20 22:09:30','2021-06-20 22:09:30'),(48,'Eligendi amet animi.','Lera Hoeger','Mandy Blick','2021-06-20 22:09:30','2021-06-20 22:09:30'),(49,'Fuga qui.','Dasia Schaefer','Miss Flo Reichert MD','2021-06-20 22:09:30','2021-06-20 22:09:30'),(50,'Quidem iure.','Deanna Jacobs','Mr. Ignatius Huel Jr.','2021-06-20 22:09:31','2021-06-20 22:09:31'),(51,'Novoo','descricaoxxxx','teste autor xxx','2021-06-21 14:44:48','2021-06-21 14:44:48');
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2021-06-21  9:25:31
