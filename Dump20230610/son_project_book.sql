-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: son_project
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `tieude` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `anhbia` varchar(5000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tacgia` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `mota` text NOT NULL,
  `ngayphathanh` date NOT NULL,
  `sotrang` int NOT NULL,
  `theloai` int NOT NULL,
  `soluongdabang` int DEFAULT '0',
  PRIMARY KEY (`bid`),
  KEY `theloai` (`theloai`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`theloai`) REFERENCES `theloai` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (13,'To Kill a Mockingbird','https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-tham-tu-lung-danh-Conan_04.jpg','Harper Lee','A classic novel about racial injustice in the American South','1960-07-11',281,1,0),(14,'To Kill a Mockingbird','https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-tham-tu-lung-danh-Conan_04.jpg','Harper Lee','A classic novel about racial injustice in the American South','1960-07-11',281,1,0),(15,'1984','https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-tham-tu-lung-danh-Conan_04.jpg','George Orwell','A dystopian novel depicting a totalitarian society','1949-06-08',328,2,0),(16,'Pride and Prejudice','https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-tham-tu-lung-danh-Conan_04.jpg','Jane Austen','A classic romance novel set in 19th century England','1813-01-28',432,3,0),(17,'The Great Gatsby','https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-tham-tu-lung-danh-Conan_04.jpg','F. Scott Fitzgerald','A novel portraying the decadence and disillusionment of the Jazz Age','1925-04-10',180,4,0),(18,'Moby-Dick','https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-tham-tu-lung-danh-Conan_04.jpg','Herman Melville','An epic tale of obsession and revenge set in the world of whaling','1851-10-18',635,5,0),(19,'The Catcher in the Rye','https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-tham-tu-lung-danh-Conan_04.jpg','J.D. Salinger','A coming-of-age novel following the rebellious Holden Caulfield','1951-07-16',277,6,0),(20,'Harry Potter and the Philosopher\'s Stone','https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-tham-tu-lung-danh-Conan_04.jpg','J.K. Rowling','The first book in the Harry Potter series','1997-06-26',223,7,0),(21,'Jane Eyre','https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-tham-tu-lung-danh-Conan_04.jpg','Charlotte Brontë','A story of a young woman\'s journey to independence and love','1847-10-16',624,4,0),(22,'To Kill a Mockingbird','https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-tham-tu-lung-danh-Conan_04.jpg','Harper Lee','A classic novel about racial injustice in the American South','1960-07-11',281,1,0),(23,'1984','https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-tham-tu-lung-danh-Conan_04.jpg','George Orwell','A dystopian novel depicting a totalitarian society','1949-06-08',328,2,0),(24,'Pride and Prejudice','https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-tham-tu-lung-danh-Conan_04.jpg','Jane Austen','A classic romance novel set in 19th century England','1813-01-28',432,3,0),(25,'The Great Gatsby','https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-tham-tu-lung-danh-Conan_04.jpg','F. Scott Fitzgerald','A novel portraying the decadence and disillusionment of the Jazz Age','1925-04-10',180,4,0),(26,'Moby-Dick','https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-tham-tu-lung-danh-Conan_04.jpg','Herman Melville','An epic tale of obsession and revenge set in the world of whaling','1851-10-18',635,5,0),(27,'The Catcher in the Rye','https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-tham-tu-lung-danh-Conan_04.jpg','J.D. Salinger','A coming-of-age novel following the rebellious Holden Caulfield','1951-07-16',277,6,0),(28,'Harry Potter and the Philosopher\'s Stone','https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-tham-tu-lung-danh-Conan_04.jpg','J.K. Rowling','The first book in the Harry Potter series','1997-06-26',223,7,0),(29,'Jane Eyre','https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-tham-tu-lung-danh-Conan_04.jpg','Charlotte Brontë','A story of a young woman\'s journey to independence and love','1847-10-16',624,4,0);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-10 13:29:04
