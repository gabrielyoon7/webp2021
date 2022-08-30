-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: swaig
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bbs`
--

DROP TABLE IF EXISTS `bbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `major` varchar(50) NOT NULL,
  `writer_id` varchar(50) NOT NULL,
  `writer_name` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `category` int(10) NOT NULL,
  `views` int(10) DEFAULT '0',
  `level` int(10) DEFAULT '0',
  `last_modified` datetime NOT NULL,
  `text` text NOT NULL,
  `comments_count` int(10) DEFAULT '0',
  `likes` int(10) DEFAULT '0',
  `already_like` varchar(3000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs`
--

LOCK TABLES `bbs` WRITE;
/*!40000 ALTER TABLE `bbs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_file`
--

DROP TABLE IF EXISTS `bbs_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_file` (
  `id` int(11) NOT NULL,
  `major` varchar(100) DEFAULT NULL,
  `bbs_id` int(10) NOT NULL,
  `original_FileName` varchar(200) NOT NULL,
  `real_FileName` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_file`
--

LOCK TABLES `bbs_file` WRITE;
/*!40000 ALTER TABLE `bbs_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbs_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_reg`
--

DROP TABLE IF EXISTS `bbs_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_reg` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `writer_id` varchar(50) NOT NULL,
  `writer_name` varchar(50) NOT NULL,
  `title` varchar(200) DEFAULT '제목없음',
  `views` int(10) DEFAULT '0',
  `last_modified` datetime NOT NULL,
  `text` text NOT NULL,
  `starting_date` datetime NOT NULL,
  `closing_date` datetime NOT NULL,
  `level` varchar(50) NOT NULL,
  `for_who` int(11) NOT NULL,
  `applicant_count` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_reg`
--

LOCK TABLES `bbs_reg` WRITE;
/*!40000 ALTER TABLE `bbs_reg` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbs_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_reg_answer`
--

DROP TABLE IF EXISTS `bbs_reg_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_reg_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_id` int(10) NOT NULL,
  `question_num` int(10) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `writer_name` varchar(100) NOT NULL,
  `writer_id` varchar(100) NOT NULL,
  `writer_grade` varchar(100) NOT NULL,
  `writer_type` varchar(100) NOT NULL,
  `writer_perId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_reg_answer`
--

LOCK TABLES `bbs_reg_answer` WRITE;
/*!40000 ALTER TABLE `bbs_reg_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbs_reg_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_reg_answer_file`
--

DROP TABLE IF EXISTS `bbs_reg_answer_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_reg_answer_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_id` int(10) NOT NULL,
  `original_FileName` varchar(300) NOT NULL,
  `real_FileName` varchar(300) NOT NULL,
  `writer_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_reg_answer_file`
--

LOCK TABLES `bbs_reg_answer_file` WRITE;
/*!40000 ALTER TABLE `bbs_reg_answer_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbs_reg_answer_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_reg_question`
--

DROP TABLE IF EXISTS `bbs_reg_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_reg_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_id` int(10) NOT NULL,
  `question_num` int(10) NOT NULL,
  `question_content` varchar(600) NOT NULL,
  `question_type` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_reg_question`
--

LOCK TABLES `bbs_reg_question` WRITE;
/*!40000 ALTER TABLE `bbs_reg_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbs_reg_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_reg_writer_file`
--

DROP TABLE IF EXISTS `bbs_reg_writer_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_reg_writer_file` (
  `id` int(11) NOT NULL,
  `reg_id` int(10) NOT NULL,
  `original_FileName` varchar(200) NOT NULL,
  `real_FileName` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_reg_writer_file`
--

LOCK TABLES `bbs_reg_writer_file` WRITE;
/*!40000 ALTER TABLE `bbs_reg_writer_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbs_reg_writer_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `writer_id` varchar(50) NOT NULL,
  `writer_name` varchar(50) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `comment_date` datetime NOT NULL,
  `bbs_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculum`
--

DROP TABLE IF EXISTS `curriculum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curriculum` (
  `major` varchar(50) NOT NULL,
  `year` int(10) NOT NULL,
  `curriculum_img` varchar(100) NOT NULL,
  `edu_img` varchar(100) NOT NULL,
  PRIMARY KEY (`major`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculum`
--

LOCK TABLES `curriculum` WRITE;
/*!40000 ALTER TABLE `curriculum` DISABLE KEYS */;
/*!40000 ALTER TABLE `curriculum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developer`
--

DROP TABLE IF EXISTS `developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `developer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(50) NOT NULL,
  `members` varchar(100) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `end_date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developer`
--

LOCK TABLES `developer` WRITE;
/*!40000 ALTER TABLE `developer` DISABLE KEYS */;
/*!40000 ALTER TABLE `developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `example`
--

DROP TABLE IF EXISTS `example`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `example` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example`
--

LOCK TABLES `example` WRITE;
/*!40000 ALTER TABLE `example` DISABLE KEYS */;
INSERT INTO `example` VALUES (1,'title1','content1','2021-06-26'),(2,'title2','content2','2021-06-27'),(3,'title3','content3','2021-06-28'),(4,'title4','내용내용내용','2021-06-28');
/*!40000 ALTER TABLE `example` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_menu`
--

DROP TABLE IF EXISTS `favorite_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorite_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_menu`
--

LOCK TABLES `favorite_menu` WRITE;
/*!40000 ALTER TABLE `favorite_menu` DISABLE KEYS */;
INSERT INTO `favorite_menu` VALUES (1,'경기대학교','http://www.kyonggi.ac.kr/KyonggiUp.kgu'),(2,'성적확인','https://grade.kyonggi.ac.kr/'),(3,'수강신청','http://sugang.kyonggi.ac.kr/'),(4,'KUTIS','https://kutis.kyonggi.ac.kr/webkutis/view/indexWeb.jsp'),(5,'LMS','https://lms.kyonggi.ac.kr/login.php'),(6,'융합교육원','https://sites.google.com/kyonggi.ac.kr/k-with');
/*!40000 ALTER TABLE `favorite_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kgu_major`
--

DROP TABLE IF EXISTS `kgu_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kgu_major` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `campus` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `major` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kgu_major`
--

LOCK TABLES `kgu_major` WRITE;
/*!40000 ALTER TABLE `kgu_major` DISABLE KEYS */;
INSERT INTO `kgu_major` VALUES (1,'수원캠퍼스','진성애교양대학','교직학부 교육학전공'),(2,'수원캠퍼스','진성애교양대학','ROTC'),(3,'수원캠퍼스','인문대학','유아교육과'),(4,'수원캠퍼스','인문대학','국어국문학과'),(5,'수원캠퍼스','인문대학','영어영문학과'),(6,'수원캠퍼스','인문대학','중어중문학과'),(7,'수원캠퍼스','인문대학','사학과'),(8,'수원캠퍼스','인문대학','문헌정보학과'),(9,'수원캠퍼스','인문대학','문예창작학과'),(10,'수원캠퍼스','예술체육대학','서양화.미술경영학과'),(11,'수원캠퍼스','예술체육대학','한국화.서예학과'),(12,'수원캠퍼스','예술체육대학','입체조형학과'),(13,'수원캠퍼스','예술체육대학','디자인비즈학부 시각정보디자인전공'),(14,'수원캠퍼스','예술체육대학','디자인비즈학부 산업디자인전공'),(15,'수원캠퍼스','예술체육대학','디자인비즈학부 장신구.금속디자인전공'),(16,'수원캠퍼스','예술체육대학','FineArts학부'),(17,'수원캠퍼스','예술체육대학','스포츠과학부 스포츠건강과학전공'),(18,'수원캠퍼스','예술체육대학','스포츠과학부 레저스포츠전공'),(19,'수원캠퍼스','예술체육대학','스포츠과학부 스포츠산업경영전공'),(20,'수원캠퍼스','예술체육대학','스포츠과학부 스포츠레저산업전공'),(21,'수원캠퍼스','예술체육대학','시큐리티매니지먼트학과'),(22,'수원캠퍼스','예술체육대학','체육학과'),(23,'수원캠퍼스','지식정보서비스대학','법학과'),(24,'수원캠퍼스','지식정보서비스대학','행정학과'),(25,'수원캠퍼스','지식정보서비스대학','경찰행정학과'),(26,'수원캠퍼스','지식정보서비스대학','휴먼서비스학부 사회복지전공'),(27,'수원캠퍼스','지식정보서비스대학','휴먼서비스학부 교정보호전공'),(28,'수원캠퍼스','지식정보서비스대학','휴먼서비스학부 청소년전공'),(29,'수원캠퍼스','지식정보서비스대학','국제관계학과'),(30,'수원캠퍼스','지식정보서비스대학','경제학부 경제전공'),(31,'수원캠퍼스','지식정보서비스대학','경제학부 응용통계전공'),(32,'수원캠퍼스','지식정보서비스대학','지식재산학과'),(33,'수원캠퍼스','사회과학대학','공공안전학부'),(34,'수원캠퍼스','사회과학대학','공공인재학부'),(35,'수원캠퍼스','사회과학대학','경제학부'),(36,'수원캠퍼스','소프트웨어경영대학','K-WITH 융합교육원 관광스포츠산업융합전공'),(37,'수원캠퍼스','소프트웨어경영대학','K-WITH 융합교육원 창업융합전공'),(38,'수원캠퍼스','소프트웨어경영대학','K-WITH 융합교육원 융합데이터공학전공'),(39,'수원캠퍼스','소프트웨어경영대학','K-WITH 융합교육원 커뮤니티안전회복융합전공'),(40,'수원캠퍼스','소프트웨어경영대학','AI컴퓨터공학부 컴퓨터공학전공'),(41,'수원캠퍼스','소프트웨어경영대학','AI컴퓨터공학부 인공지능전공'),(42,'수원캠퍼스','소프트웨어경영대학','경영학부'),(43,'수원캠퍼스','소프트웨어경영대학','회계세무.경영정보학부 경영정보전공'),(44,'수원캠퍼스','소프트웨어경영대학','회계세무.경영정보학부 회계세무전공'),(45,'수원캠퍼스','소프트웨어경영대학','국제산업정보학과'),(46,'수원캠퍼스','소프트웨어경영대학','경영학과'),(47,'수원캠퍼스','소프트웨어경영대학','컴퓨터공학부'),(48,'수원캠퍼스','소프트웨어경영대학','산업경영공학과'),(49,'수원캠퍼스','융합과학대학','수학과'),(50,'수원캠퍼스','융합과학대학','전자물리학과'),(51,'수원캠퍼스','융합과학대학','나노공학과'),(52,'수원캠퍼스','융합과학대학','화학과'),(53,'수원캠퍼스','융합과학대학','바이오융합학부 생명과학전공'),(54,'수원캠퍼스','융합과학대학','바이오융합학부 식품생물공학전공'),(55,'수원캠퍼스','창의공과대학','토목공학과'),(56,'수원캠퍼스','창의공과대학','건축학과'),(57,'수원캠퍼스','창의공과대학','건축공학과'),(58,'수원캠퍼스','창의공과대학','도시.교통공학과'),(59,'수원캠퍼스','창의공과대학','전자공학과'),(60,'수원캠퍼스','창의공과대학','기계시스템공학과'),(61,'수원캠퍼스','창의공과대학','신소재공학과'),(62,'수원캠퍼스','창의공과대학','환경에너지공학과'),(63,'수원캠퍼스','창의공과대학','화학공학과'),(64,'수원캠퍼스','창의공과대학','융합에너지시스템공학부'),(65,'수원캠퍼스','창의공과대학','스마트시티공학부'),(66,'수원캠퍼스','창의공과대학','기계시스템공학부'),(67,'수원캠퍼스','창의공과대학','융합에너지시스템공학부'),(68,'수원캠퍼스(야간)','창의공과대학','건축공학과(계약학과)'),(69,'수원캠퍼스(야간)','창의공과대학','건축안전공학과(계약학과)'),(70,'서울캠퍼스','진성애교양대학','교직학부 교육학전공'),(71,'서울캠퍼스','소프트웨어경영대학','K-WITH 융합교육원 미디어융합콘텐츠전공'),(72,'서울캠퍼스','관광문화대학','관광경영학과'),(73,'서울캠퍼스','관광문화대학','관광개발학과'),(74,'서울캠퍼스','관광문화대학','호텔경영학과'),(75,'서울캠퍼스','관광문화대학','외식.조리학과'),(76,'서울캠퍼스','관광문화대학','관광이벤트학과'),(77,'서울캠퍼스','관광문화대학','연기학과'),(78,'서울캠퍼스','관광문화대학','애니메이션영상학과'),(79,'서울캠퍼스','관광문화대학','애니메이션학과'),(80,'서울캠퍼스','관광문화대학','실용음악학과'),(81,'서울캠퍼스','관광문화대학','미디어영상학과'),(82,'서울캠퍼스','관광문화대학','관광학부');
/*!40000 ALTER TABLE `kgu_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `id` int(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact_num` varchar(100) NOT NULL,
  `content` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (0,'K-WITH 융합교육원 수원캠퍼스 예지관(4강의동) 4002호','031-249-9288','수정바랍니다.');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `log_time` datetime NOT NULL,
  `log_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'admin','관리자테스트','홈페이지관리자','2022-08-02 05:27:07','로그인'),(2,'admin','관리자테스트','홈페이지관리자','2022-08-02 05:30:57','로그인'),(3,'admin','관리자테스트','홈페이지관리자','2022-08-02 13:05:19','로그인'),(4,'admin','관리자테스트','홈페이지관리자','2022-08-02 13:05:23','로그인'),(5,'admin','관리자테스트','홈페이지관리자','2022-08-02 13:14:47','로그인'),(6,'admin','관리자테스트','홈페이지관리자','2022-08-02 13:17:24','로그인'),(7,'admin','관리자테스트','홈페이지관리자','2022-08-02 13:18:23','로그인'),(8,'admin','관리자테스트','홈페이지관리자','2022-08-02 13:19:07','로그인'),(9,'admin','관리자테스트','홈페이지관리자','2022-08-02 13:19:29','로그인'),(10,'admin','관리자테스트','홈페이지관리자','2022-08-02 13:19:36','로그인'),(11,'admin','관리자테스트','홈페이지관리자','2022-08-02 13:20:03','로그인'),(12,'admin','관리자테스트','홈페이지관리자','2022-08-02 13:20:41','로그인'),(13,'admin','관리자테스트','홈페이지관리자','2022-08-02 13:21:18','로그인'),(14,'admin','관리자테스트','홈페이지관리자','2022-08-02 13:23:21','로그인'),(15,'admin','관리자테스트','홈페이지관리자','2022-08-02 13:27:06','로그인'),(16,'admin','관리자테스트','홈페이지관리자','2022-08-02 13:30:28','로그인'),(17,'202014892','김세은','-','2022-08-02 13:33:10','회원가입(학부생)'),(18,'202014892','김세은','-','2022-08-02 13:33:18','로그인'),(19,'admin','관리자테스트','홈페이지관리자','2022-08-02 13:34:58','로그인'),(20,'admin','관리자테스트','홈페이지관리자','2022-08-02 13:37:04','로그인'),(21,'admin','관리자테스트','홈페이지관리자','2022-08-02 13:54:49','로그인'),(22,'admin','관리자테스트','홈페이지관리자','2022-08-02 14:27:26','로그인'),(23,'admin','관리자테스트','홈페이지관리자','2022-08-02 14:28:35','로그인'),(24,'admin','관리자테스트','홈페이지관리자','2022-08-02 14:40:17','로그인'),(25,'admin','관리자테스트','홈페이지관리자','2022-08-02 14:43:01','로그인'),(26,'admin','관리자테스트','홈페이지관리자','2022-08-02 16:18:38','로그인'),(27,'admin','관리자테스트','홈페이지관리자','2022-08-02 16:44:30','로그인'),(28,'admin','관리자테스트','홈페이지관리자','2022-08-02 17:04:05','로그인'),(29,'admin','관리자테스트','홈페이지관리자','2022-08-02 17:04:52','로그인'),(30,'admin','관리자테스트','홈페이지관리자','2022-08-03 02:42:29','로그인'),(31,'admin','관리자테스트','홈페이지관리자','2022-08-03 04:06:22','로그인'),(32,'admin','관리자테스트','홈페이지관리자','2022-08-03 05:02:32','로그인'),(33,'admin','관리자테스트','홈페이지관리자','2022-08-03 21:18:30','로그인'),(34,'admin','관리자테스트','홈페이지관리자','2022-08-22 19:40:26','로그인'),(35,'admin','관리자테스트','홈페이지관리자','2022-08-22 20:19:55','로그인'),(36,'admin','관리자테스트','홈페이지관리자','2022-08-22 21:14:28','로그인'),(37,'admin','관리자테스트','홈페이지관리자','2022-08-22 23:14:32','로그인'),(38,'admin','관리자테스트','홈페이지관리자','2022-08-23 00:00:05','로그인'),(39,'admin','관리자테스트','홈페이지관리자','2022-08-23 00:04:37','로그인'),(40,'admin','관리자테스트','홈페이지관리자','2022-08-23 00:05:24','로그인'),(41,'admin','관리자테스트','홈페이지관리자','2022-08-23 00:06:09','로그인'),(42,'admin','관리자테스트','홈페이지관리자','2022-08-23 00:07:02','로그인'),(43,'admin','관리자테스트','홈페이지관리자','2022-08-23 00:07:54','로그인'),(44,'admin','관리자테스트','홈페이지관리자','2022-08-23 00:10:37','로그인'),(45,'admin','관리자테스트','홈페이지관리자','2022-08-23 00:11:34','로그인'),(46,'admin','관리자테스트','홈페이지관리자','2022-08-23 00:13:23','로그인'),(47,'admin','관리자테스트','홈페이지관리자','2022-08-23 09:55:38','로그인'),(48,'admin','관리자테스트','홈페이지관리자','2022-08-23 10:01:10','로그인'),(49,'admin','관리자테스트','홈페이지관리자','2022-08-23 10:04:12','로그인'),(50,'admin','관리자테스트','홈페이지관리자','2022-08-23 10:18:26','로그인'),(51,'admin','관리자테스트','홈페이지관리자','2022-08-23 11:07:08','로그인'),(52,'admin','관리자테스트','홈페이지관리자','2022-08-23 13:41:52','로그인');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `major` (
  `oid` int(50) NOT NULL AUTO_INCREMENT,
  `major_id` varchar(50) NOT NULL,
  `major_name` varchar(100) NOT NULL,
  `major_location` varchar(100) NOT NULL,
  `major_contact` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (1,'main','융합교육원 SWAIG','수원캠퍼스 예지관(4강의동) 4002호','031-249-9288','major'),(2,'ai_management','AI경영 ','SWAIG 융합전공','0','major'),(3,'smart_ai','스마트AI ','ㅇ','0','major'),(4,'data_engineering','융합데이터공학 ','ㅇ','0','major'),(5,'semiconductor_sw','반도체장비SW ','ㅇ','0','major'),(6,'management_sw','경영SW','ㅇ','0','track'),(7,'robot_sw','로봇SW','ㅇ','0','track'),(8,'sports_tech_sw','스포츠테크놀로지SW','ㅇ','0','track'),(9,'intelli_ict','지능형ICT융합','ㅇ','0','track'),(10,'track_apply_sw','SW심화트랙 
','ㅇ','0','track');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_pages`
--

DROP TABLE IF EXISTS `menu_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_pages` (
  `page_id` int(10) NOT NULL,
  `tab_id` int(10) NOT NULL,
  `orderNum` int(10) NOT NULL,
  `page_path` varchar(50) NOT NULL,
  `page_title` varchar(250) NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_pages`
--

LOCK TABLES `menu_pages` WRITE;
/*!40000 ALTER TABLE `menu_pages` DISABLE KEYS */;
INSERT INTO `menu_pages` VALUES (10,1,0,'information.kgu','SWAIG 개요소개'),(11,1,1,'bbs.kgu','SWAIG 공지'),(12,1,2,'bbs.kgu','나노디그리'),(13,1,3,'information.kgu','SWAIG 앨범'),(20,2,0,'information.kgu','SWAIG 교과목 리스트'),(21,2,1,'information.kgu','SWAIG 교과목 개요'),(22,2,2,'information.kgu','SWAIG 교과목 개설현황'),(30,3,0,'reg.kgu','신청하기'),(31,3,1,'bbs.kgu','학과자료실'),(40,4,0,'information.kgu','트랙소개'),(42,4,2,'bbs.kgu','수업공지'),(43,4,3,'bbs.kgu','전공자료실'),(44,4,4,'bbs.kgu','취업/공모전공지'),(50,5,0,'information.kgu','전공소개'),(51,5,1,'professor.kgu','교수소개'),(52,5,2,'bbs.kgu','수업공지'),(53,5,3,'bbs.kgu','전공자료실'),(54,5,4,'bbs.kgu','취업/공모전공지'),(60,6,0,'mypage.kgu','마이페이지'),(61,6,1,'whatIDoPage.kgu','활동내역'),(70,7,0,'admin.kgu','홈페이지관리'),(71,7,1,'admin.kgu','회원관리'),(72,7,2,'admin.kgu','메뉴관리'),(73,7,3,'admin.kgu','로그확인'),(74,7,4,'admin.kgu','엑셀관리'),(75,7,5,'admin.kgu','비밀번호변경');
/*!40000 ALTER TABLE `menu_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_tabs`
--

DROP TABLE IF EXISTS `menu_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_tabs` (
  `tab_id` int(10) NOT NULL,
  `tab_title` varchar(30) NOT NULL,
  `tab_level` int(10) NOT NULL,
  `tab_img` varchar(30) NOT NULL,
  `tab_url` varchar(50) NOT NULL,
  `orderNum` int(10) NOT NULL,
  PRIMARY KEY (`tab_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_tabs`
--

LOCK TABLES `menu_tabs` WRITE;
/*!40000 ALTER TABLE `menu_tabs` DISABLE KEYS */;
INSERT INTO `menu_tabs` VALUES (1,'SWAIG 소개',4,'info-circle-fill','information.kgu',1),(2,'SWAIG 교과목',4,'bootstrap-fill','bbs.kgu',2),(3,'신청하기',4,'check-circle-fill','bbs.kgu',3),(4,'SWAIG 융합전공',4,'pencil-fill','#',4),(5,'세부전공',4,'bookmark-star-fill','information.kgu',5);
/*!40000 ALTER TABLE `menu_tabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `prof_major` varchar(100) NOT NULL,
  `prof_img` varchar(100) NOT NULL,
  `prof_name` varchar(100) NOT NULL,
  `prof_email` varchar(100) NOT NULL,
  `prof_lecture` varchar(200) NOT NULL,
  `prof_location` varchar(100) NOT NULL,
  `prof_call` varchar(100) NOT NULL,
  `prof_color` varchar(100) NOT NULL DEFAULT '#777777',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (2,'ai_management','/uploaded/professor/20220822234414_이은정_교수님.jpg','이은정(인공지능전공)','ejlee@kyonggi.ac.kr','프로그래밍언어론','8213호','031-249-9671','#777777'),(3,'smart_ai','/uploaded/professor/20220822234643_김용수_교수님.gif','김용수(산업시스템공학전공)',' kimys@kyonggi.ac.kr','','','031-249-9771','#777777'),(4,'data_engineering','/uploaded/professor/20220822235025_박천건_교수님.jpg','박천건(수학과)',' cgpark@kgu.ac.kr','','','031-249-9659','#777777'),(5,'semiconductor_sw','/uploaded/professor/20220822235216_성영제_교수님.gif','성영제(전자공학과)','yjsung@kgu.ac.kr','','제2공학관 409호','031-249-9805','#777777');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `content` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `slider_img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `text`
--

DROP TABLE IF EXISTS `text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `text` (
  `id` int(50) NOT NULL,
  `major` varchar(50) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`,`major`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `text`
--

LOCK TABLES `text` WRITE;
/*!40000 ALTER TABLE `text` DISABLE KEYS */;
INSERT INTO `text` VALUES (10,'main','관리자 모드에서 내용을 수정해주세요.'),(13,'main','내용을 입력해주세요'),(20,'main','<p><img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220802164455-교과목 리스트.png\" style=\"width: 150px; height: 94px;\" /></p>\n'),(21,'main','관리자 모드에서 내용을 수정해주세요.'),(22,'main','<p>.<img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220822194048-SWAIG 교과목 리스트2.png\" style=\"width: 1517px; height: 1095px;\" /></p>\n'),(40,'intelli_ict','<h2><strong>트랙소개</strong></h2>\n\n<p>&nbsp;</p>\n\n<p><strong>교육목표</strong></p>\n\n<p>1. 전자공학 분야에 기반이 되는 이론적 기반을 갖춘 인재 양성</p>\n\n<p>2. 전자공학 세부 분야에 엔지니어링 관점에서 연구 및 개발 이슈들을 해결할 수 있는 능력을 갖춘 인재 양성</p>\n\n<p>3. 타 전공 분야와의 융합을 통하여 창의적인 방법론을 도출하여 이를 실제 공학 문제에 적용 및 해결할 수 있는 국제 경쟁력을 갖춘 인재 양성</p>\n\n<p>&nbsp;</p>\n\n<p><strong>진출분야/직업군: </strong>통신 분야, 통신 응용 분야/통신공학기술자 및 연구원, 정보통신기기 기술자 및 연구원, 자기기 기술자 및 연구원 등</p>\n\n<p>&nbsp;</p>\n\n<p><strong>진출 세부분야: </strong>통신 알고리듬 설게, 통신 서비스 기술 개발, ICT 기반 스마트 서비스 기술 개발, ICT 기반 국내외 표준 기술 전문가 등</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<h2><strong>교과목</strong></h2>\n\n<p><img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220823002936-지능형.png\" style=\"width: 1059px; height: 729px;\" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<h2><strong>이수체계도</strong></h2>\n\n<p><strong><img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220823002953-4-4-1.트랙 이수체계도(지능형ICT융합).png\" style=\"width: 2481px; height: 3663px;\" /></strong></p>\n'),(40,'management_sw','<h2><strong>트랙소개</strong></h2>\n\n<p>&nbsp;</p>\n\n<p><strong>교육목표:</strong> SW역량을 갖추고 AI&middot;데이터를 경영에 활용할 수 있는 인재</p>\n\n<p>&nbsp;</p>\n\n<p><strong>진출분야/직업군:</strong> 경영기획, 정보기술영업, 정보기술운영</p>\n\n<p>&nbsp;</p>\n\n<p><strong>진출 세부분야:</strong> 기획마케팅사무원, IT마케팅, 빅데이터운영관리</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<h2><strong>교과목</strong></h2>\n\n<p><img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220823002520-경영sw.png\" style=\"width: 1044px; height: 671px;\" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<h2><strong>이수체계도<img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220823002550-4-1-1.트랙 이수체계도(경영SW).png\" style=\"width: 1857px; height: 894px;\" /></strong></h2>\n'),(40,'robot_sw','<h2><strong>트랙소개</strong></h2>\n\n<p>&nbsp;</p>\n\n<p><strong>교육목표</strong></p>\n\n<p>1. 로봇 HW 설계 및 SW 프로그래밍에 대한 기초 능력 함양</p>\n\n<p>2. 제조 산업 현장에 활용될 수 있는 로봇 운용 기술 습득</p>\n\n<p>3. 인공지능을 활용한 로봇-인간 협업을 위한 기초 기술 배양</p>\n\n<p>&nbsp;</p>\n\n<p><strong>진출분야/직업군: </strong>제조업, 정보통신업 및 전문과학기술 서비스업 / 소프트웨어 개발자, 로봇공학 기술자 및 산업용 로봇 시험원/조작원 등</p>\n\n<p>&nbsp;</p>\n\n<p><strong>진출 세부분야: </strong>생산 자동화 및 조립 분야, 로봇 HW 설계 및 SW 프로그래밍 분야</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<h2><strong>교과목</strong></h2>\n\n<p><img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220823002659-로봇sw.png\" style=\"width: 1049px; height: 726px;\" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<h2><strong>이수체계도</strong></h2>\n\n<p><strong><img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220823002741-4-2-1.트랙 이수체계도(로봇SW).png\" style=\"width: 1250px; height: 421px;\" /></strong></p>\n'),(40,'sports_tech_sw','<h2><strong>트랙소개</strong></h2>\n\n<p>&nbsp;</p>\n\n<p><strong>교육목표</strong></p>\n\n<p>1. 21세기 4차 산업혁명의 시대 흐름에 맞는 스포츠공학 인재 양성</p>\n\n<p>2. 인공지능(AI)을 기반으로 스포츠 빅데이터 분석, 스포츠멀티미디어영상분석, 차세대 스포츠융합기술(가상, 증강현실, 첨단공학기술) 등의 전문 지식 함양</p>\n\n<p>3. 스포츠와 과학 및 공학에 대한 융복합 사고와 창의적인 마인드로 사회 공헌에 기여할 수 있는 역량 함양</p>\n\n<p>&nbsp;</p>\n\n<p><strong>진출분야/직업군</strong></p>\n\n<p>동작분석, 미디어분석, 빅데이터 등을 통한 스포츠기술 분석 분야, 골프, 야구, 양궁 등의 스크린 스포츠분야, e스포츠분야, 그리고 다양한 스포츠용품 개발에 참여하는 분야 등 다양한 사회분야로의 진출</p>\n\n<p>&nbsp;</p>\n\n<p><strong>진출 세부분야</strong></p>\n\n<p>스포츠미디어개발업체, 스포츠 IT 전문인력, e스포츠관련분야, 스포츠기록분석연구원, 스포츠에이전트, 스포츠해설가, 한국생산기술연구원, 스포츠정보 및 미디어상품개발자, VR가상현실 스포츠산업분야(스크린스포츠), 스포츠융합 디바이스연계분야(웨어러블)</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<h2><strong>교과목</strong></h2>\n\n<p><img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220823002823-스포츠.png\" style=\"width: 1043px; height: 668px;\" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<h2><strong>이수체계도</strong></h2>\n\n<p><strong><img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220823002839-4-3-1.트랙 이수체계도(스포츠).png\" style=\"width: 939px; height: 291px;\" /></strong></p>\n'),(40,'track_apply_sw','관리자 모드에서 내용을 수정해주세요.'),(50,'ai_management','<h2><strong>교육과정</strong></h2>\n\n<p><img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220823100432-AI경영융합전공 전공소개.png\" style=\"width: 1403px; height: 1997px;\" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<h2><strong>이수체계도</strong></h2>\n\n<p><strong><img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220822214149-3-1-1.융합전공 이수체계도(AI경영).png\" style=\"width: 1935px; height: 934px;\" /></strong></p>\n'),(50,'data_engineering','<h2><strong>교육과정</strong></h2>\n\n<p><img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220822233031-융합데이터공학전공 전공소개.png\" style=\"width: 1045px; height: 1510px;\" /></p>\n\n<p>&nbsp;</p>\n\n<h2><strong>이수체계도</strong></h2>\n\n<p><strong><img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220822214642-3-3-1.융합전공 이수체계도(융합데이터).png\" style=\"width: 556px; height: 531px;\" /></strong></p>\n'),(50,'intelli_ict','수정을 해주세요'),(50,'management_sw','수정을 해주세요'),(50,'robot_sw','수정을 해주세요'),(50,'semiconductor_sw','<h2><strong>교육과정</strong></h2>\n\n<p><img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220822233146-반도체장비SW 전공소개.png\" style=\"width: 1012px; height: 1427px;\" /></p>\n\n<p>&nbsp;</p>\n\n<h2><strong>이수체계도</strong></h2>\n\n<p><strong><img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220822214901-3-4-1.융합전공 이수체계도(반도체장비SW).png\" style=\"width: 726px; height: 348px;\" /></strong></p>\n'),(50,'smart_ai','<h2><strong>교육과정</strong></h2>\n\n<p><img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220822232821-스마트AI융합전공 전공소개.png\" style=\"width: 879px; height: 1276px;\" /></p>\n\n<p>&nbsp;</p>\n\n<h2><strong>이수체계도</strong></h2>\n\n<p><strong><img alt=\"\" src=\"http://swaig.kyonggi.ac.kr:8080/img/uploadimg/20220822214432-3-2-1.융합전공 이수체계도(스마트AI).png\" style=\"width: 560px; height: 647px;\" /></strong></p>\n'),(50,'sports_tech_sw','수정을 해주세요'),(50,'track_apply_sw','수정을 해주세요'),(51,'ai_management','수정을 해주세요'),(51,'data_engineering','수정을 해주세요'),(51,'intelli_ict','수정을 해주세요'),(51,'management_sw','수정을 해주세요'),(51,'robot_sw','수정을 해주세요'),(51,'semiconductor_sw','수정을 해주세요'),(51,'smart_ai','수정을 해주세요'),(51,'sports_tech_sw','수정을 해주세요'),(51,'track_apply_sw','수정을 해주세요');
/*!40000 ALTER TABLE `text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploaded_file`
--

DROP TABLE IF EXISTS `uploaded_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uploaded_file` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `uploadFile` varchar(100) NOT NULL,
  `newFileName` varchar(100) NOT NULL,
  `upload_time` date NOT NULL,
  `savePath` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `uploaded` varchar(10) NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploaded_file`
--

LOCK TABLES `uploaded_file` WRITE;
/*!40000 ALTER TABLE `uploaded_file` DISABLE KEYS */;
INSERT INTO `uploaded_file` VALUES (1,'admin','이은정 교수님.jpg','20220822234414_이은정_교수님.jpg','2022-08-22','/home/cs/Desktop/apache-tomcat-9.0.50/webapps/ROOT/uploaded/professor','/uploaded/professor','false'),(2,'admin','김용수 교수님.gif','20220822234643_김용수_교수님.gif','2022-08-22','/home/cs/Desktop/apache-tomcat-9.0.50/webapps/ROOT/uploaded/professor','/uploaded/professor','false'),(3,'admin','박천건 교수님.jpg','20220822235025_박천건_교수님.jpg','2022-08-22','/home/cs/Desktop/apache-tomcat-9.0.50/webapps/ROOT/uploaded/professor','/uploaded/professor','false'),(4,'admin','성영제 교수님.gif','20220822235216_성영제_교수님.gif','2022-08-22','/home/cs/Desktop/apache-tomcat-9.0.50/webapps/ROOT/uploaded/professor','/uploaded/professor','false');
/*!40000 ALTER TABLE `uploaded_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `google_id` varchar(100) DEFAULT NULL,
  `google_img` varchar(100) DEFAULT NULL,
  `id` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL DEFAULT '-',
  `name` varchar(45) NOT NULL DEFAULT '-',
  `gender` varchar(10) NOT NULL DEFAULT '-',
  `birth` varchar(45) NOT NULL DEFAULT '-',
  `type` varchar(45) NOT NULL DEFAULT '-',
  `email` varchar(100) NOT NULL DEFAULT '-',
  `phone` varchar(45) NOT NULL DEFAULT '-',
  `last_login` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `hope_type` varchar(45) NOT NULL DEFAULT '-',
  `reg_date` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `major` varchar(45) NOT NULL DEFAULT '-',
  `sub_major` varchar(200) NOT NULL DEFAULT '-',
  `per_id` varchar(45) NOT NULL DEFAULT '-',
  `grade` varchar(10) NOT NULL DEFAULT '-',
  `state` varchar(10) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('102261805363448965606',NULL,'201713919','6ab7108f5c8ab980a584f1e2b98b2991b087af4907864575e6905edf2b759ae8','윤주현','남','1996-03-25','학부생','gabrielyoon7@kyonggi.ac.kr','010-0000-0001','2021-07-05 00:00:00','-','2021-07-05 00:00:00','main','-','201713919','-','-'),(NULL,NULL,'202014892','e3865e9b564207a79c513e406ae94ec0566e2a8ee4fdb3f6c9386a58d9ec425e','김세은','여','2001-06-01','-','ssky601@gmail.com','010-3384-9242','2022-08-02 13:33:18','학부생','2000-01-01 00:00:00','융합교육원 SWAIG','-','202014892','-','-'),(NULL,NULL,'202100000','9f50515645763c0b8704f8114c81da0fddd2b4bdc9240de158e905884d8cb840','학생테스트','-','2021-01-01','학부생','student@test.com','010-0000-0001','2021-07-05 00:00:00','-','2021-07-05 00:00:00','main','-','201713919','-','-'),(NULL,NULL,'admin','112b16f5f7b04cecda94c345900574686e5ed35803e2b7e9702fa4b46810a2d4','관리자테스트','-','2021-01-01','홈페이지관리자','admin@kyonggi.ac.kr','010-0000-0000','2022-08-23 13:41:52','-','2021-07-05 00:00:00','main','-','-','-','-'),(NULL,NULL,'etc','7bbe475cfc8390cb8c2ca19de371e1a3b5ab88ef39760d7ce0da003a59773a14','기타테스트','-','2021-01-01','기타','etc@test.com','010-0000-0001','2021-07-05 00:00:00','-','2021-07-05 00:00:00','main','-','201713919','-','-'),(NULL,NULL,'professor','1f9d870484301db50342aa184bd9f3f891195090030ad56cbbc9d0f0b996a567','교수테스트','-','2021-01-01','교수','professor@kyonggi.ac.kr','010-0000-0000','2021-07-05 00:00:00','-','2021-07-05 00:00:00','main','-','-','-','-'),(NULL,NULL,'swaigmgr','91255949a2784860dff169dfc6d99e760c59e0090413b0c31f5a8042c3d434f2','관리자','-','2021-01-01','홈페이지관리자','admin@kyonggi.ac.kr','010-0000-0000','2021-07-05 00:00:00','-','2021-07-05 00:00:00','main','-','-','-','-');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertype` (
  `type_name` varchar(45) NOT NULL,
  `class_type` varchar(45) NOT NULL,
  `board_level` int(11) NOT NULL,
  `for_header` varchar(45) NOT NULL,
  PRIMARY KEY (`type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertype`
--

LOCK TABLES `usertype` WRITE;
/*!40000 ALTER TABLE `usertype` DISABLE KEYS */;
INSERT INTO `usertype` VALUES ('교수','Professor',1,'교수'),('기타','Etc',3,'기타'),('입학예정자','Etc',3,'기타'),('조교','Professor',1,'조교'),('학부모','Etc',3,'기타'),('학부생','Student',2,'학생'),('홈페이지관리자','Admin',0,'관리자');
/*!40000 ALTER TABLE `usertype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-23 14:13:29
