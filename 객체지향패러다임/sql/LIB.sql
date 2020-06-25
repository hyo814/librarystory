-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: webdb
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `lib`
--

DROP TABLE IF EXISTS `lib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lib` (
  `seqno` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(500) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `wdate` date NOT NULL,
  `wtime` time NOT NULL,
  PRIMARY KEY (`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib`
--

LOCK TABLES `lib` WRITE;
/*!40000 ALTER TABLE `lib` DISABLE KEYS */;
INSERT INTO `lib` VALUES (1,'게시판 오픈!','많이 이용해주세요','spider','2020-01-13','13:14:26'),(2,'강서도서관 급구','오전에 봉사하실 분 찾아요','helloworld','2020-01-22','10:15:28'),(3,'봉사활동 필요한 도서관 없나요? (거주지: 양천)','부탁드립니다.','dhdh','2020-02-01','13:15:16'),(4,'양천도서관 장기 봉사활동자 구해용!!','전화번호는 010-1234-5678 입니다 ','rose','2020-03-05','17:19:21'),(5,'도서관 봉사활동에 제 인증이 없어요 확인 해주세요!','1365에 제가 한 기록이 안보여요','ggamjige','2020-04-01','21:19:23'),(6,' 게시판 지기 입니다','1365 랑 봉사 하신 곳에 문의 전화 부탁 드릴게요!','admin','2020-04-02','22:10:25'),(7,'역곡역 도서관에서 혹시 봉사활동 자료 놓고 가신 분 있으신가요?','도서관 5층에 자료들이 떨어져 있던데 연락주세요 ~','www','2020-04-10','10:30:21'),(8,'재능 기부를 하고 싶은데 봉사활동으로 도서관에서 할 수 있는 일이 없을까요?','저는 전공에 대한 공부를 중고등학교생들에게 설명하는 봉사활동을 혹시 도서관에서 한다면 봉사활동으로 신청 하고 싶습니다.','ddd','2020-04-25','17:45:13'),(9,'도서관에서 이러한 일을 경험 했었는데 신고할 수 있나요?','봉사하려 왔다가 진상 만났어요','limyst','2020-04-30','21:10:45'),(10,'장기봉사','단기 봉사자 인데요 혹시 장기 봉사자로 다시 계약하고 싶은데 방법이 있나요?','ohmylovely','2020-05-03','22:10:23');
/*!40000 ALTER TABLE `lib` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-16 17:51:48
