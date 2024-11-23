CREATE DATABASE  IF NOT EXISTS `movieproject` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `movieproject`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: movieproject
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movieid` int NOT NULL AUTO_INCREMENT,
  `movieName` varchar(45) DEFAULT NULL,
  `moviestartdate` date DEFAULT NULL,
  `movieenddate` date DEFAULT NULL,
  `cinemaRoom` varchar(45) DEFAULT NULL,
  `moviegrading` varchar(45) DEFAULT NULL,
  `runtime` int DEFAULT NULL,
  `moviekind` varchar(45) DEFAULT NULL,
  `moviecast` varchar(45) DEFAULT NULL,
  `moviedirector` varchar(45) DEFAULT NULL,
  `movieintro` varchar(120) DEFAULT NULL,
  `movieType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`movieid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'小丑：雙重瘋狂','2024-10-02','2024-11-02','a,b','輔15級',138,'犯罪,劇情,音樂','瓦昆菲尼克斯,女神卡卡','陶德菲利普斯','亞瑟入獄後遇見哈莉奎茵，他不再是獨自一人，與哈莉奎茵展開共舞，並且畫上笑臉。','2D,3D,4DX,IMAX'),(2,'JUNG KOOK：I AM STILL - THE PARTY EDITION','2024-10-11','2024-11-11','a','0普遍級',112,'紀錄片,音樂','JUNG KOOK','JUNSOO PARK','一起在戲院回顧田柾國與全世界的 ARMY 一起締造的感性時刻。','2D'),(3,'台北追緝令','2024-09-25','2024-10-25','b','輔12級',101,'動作,犯罪','路克伊凡斯，桂綸鎂，姜成鎬','黃嘉智','美國緝毒探員約翰為追捕販毒首腦關來到台北，意外重逢舊愛喬伊，並奮力保護她與其子雷蒙，躲避致命威脅。','2D'),(4,'變形金剛 : 源起','2024-09-13','2024-10-13','a,b','0普遍級',104,'動畫，動作，冒險，家庭，奇幻，科幻','史嘉蕾喬韓森，克里斯漢斯沃，喬漢姆，史蒂夫布希密','喬許庫利','講述了柯博文和密卡登不為人知的起源故事，他們曾是一對情同手足的超級好友，卻因一事反目成仇，而永遠改變了賽博坦的命運。','3D,4DX'),(5,'飛鳥總動員','2024-10-04','2024-11-04','b','0普遍級',84,'動畫，家庭，冒險，奇幻','無','Mette Tange，Benjamin Quabeck','麻雀理查為證明自己展開北飛旅程，途中結識夥伴，並共同對抗邪惡禿鸛與孔雀，他是否能夠找到傳說中的寶藏，並重獲自由呢?','2D'),(6,'危機航線','2024-10-09','2024-11-09','a','輔12級',115,'動作，犯罪，劇情','劉德華，張子楓，屈楚蕭，劉濤，郭曉東','彭順','超豪華客機 A380 的國際首航，途中遭遇暴徒劫機。無差別射殺的恐怖手段，讓豪華機艙瞬間變成密閉煉獄，800 多名乘客危在旦夕，飛機能否平安降落，這場失控的危機該如何化解?','2D, 3D, 4DX'),(7,'全面啟動','2010-07-16','2011-01-16','room A,room B','輔15級',148,'犯罪,劇情,科幻','李奧納多·狄卡皮歐、席尼·墨菲、渡邊謙、瑪莉詠·柯蒂亞、喬瑟夫·高登-拉維特、湯姆·哈迪、','克里斯托福諾蘭','故事講述能夠潛入他人夢境竊取商業機密的盜夢者柯布與搭擋亞瑟，奉命執行讓指定企業瓦解的任務，但是柯布對已故妻子茉兒的思念，反讓事情出現意想不到的變化。','4DX'),(8,'微笑2','2024-10-18','2024-11-18','room A,room B','輔15級',127,'驚悚,恐怖,神秘','娜歐蜜史考特，羅絲瑪麗德薇特，凱爾加納，盧卡斯蓋奇，麥爾斯古提耶雷茲雷利，彼得雅各布森，勞','帕克菲恩','\n即將展開一場全新的世界巡迴演唱會，全球流行天后絲凱萊莉（娜歐蜜史考特飾）開始經歷極度恐怖和無法解釋的事件。當她受到越來越可怕的驚懼現象以及名氣所帶來的巨大壓力的雙重打擊下，絲凱就被迫必須面對她黑暗的過去，才能在一切完全失控之前重新掌握自己','2D,3D'),(9,'懼裂','2024-10-18','2024-11-18','a,b','限18級',140,'驚悚,恐怖','黛咪摩爾，瑪格麗特．庫利，丹尼斯．奎德',' 柯洛里．法吉特','\n曾經紅極一時的好萊塢巨星伊莉莎白(黛咪摩爾飾)，無法面對自己老去的容顏，決定使用一種名為「完美物質」的黑市藥物，透過注射藥物的細胞複製物質，創造出更年輕、更好的另一個自己(瑪格麗特庫利 飾)。「年華老去」及「年輕貌美」的自己該如何共存？會','2D,3D,4DX'),(11,'默殺：無聲之地','2024-10-11','2024-11-11','a,b','輔15級',105,'犯罪,驚悚','\n黃健瑋，尹馨，張世，宸頤，李沐，紀亮竹，庹宗華，劉引商，施名帥，高英軒，張少懷，謝盈萱，','柯汶利','安琪（李沐 飾）領導的靜穆中學四大天王經常對特教生小彤（宸頤 飾）和惠君（紀亮竹 飾）施以羞辱和暴力。校慶前夕，四大天王成員接連失蹤，媒體報導「女學生連環殺人案」，警方卻無法查出下落，校園內人心惶惶，清潔工李涵（尹馨 飾）對女兒小彤嚴加看管','3D'),(12,'孤狼救援','2024-10-18','2024-11-18','room A','輔15級',105,'劇情,動作','路克漢斯沃，摩根費里曼，格蘭特菲利','迪米崔洛戈塞蒂斯','\n於特種部隊服役的李岡那（路克漢斯沃 飾）時隔一年從阿富汗歸來後，嘗試與疏遠的孩子們修復關係，當他們開心地在森林中露營，卻意外闖進黑幫的製毒廠，兒子路克和崔維斯被挾持為人質，李岡那得重拾戰場上的技能，從危險的販毒集團中救出家人。','2D,3D'),(13,'銀魂劇場版2D 一國傾城篇','2024-10-17','2024-11-18','room A, room B','輔15級',110,'劇情,動作,動畫','杉田智和，阪口大助，釘宮理惠，甲斐田裕子，森川智之，平野綾，井上和彥','藤田陽一','美若天仙、百艺精通的传说花魁——铃兰，银时接到委托，希望见到她。然而，出现在他面前的却是一位即将去世的老婆婆。老婆婆坚信与心上人立下的昔日约定，银时和月詠开始寻找她的爱人线索。\n\n他们得知前任将军德川定定与此事有关，便以公主的朋友神乐为借口','2D, 3D'),(14,'aa','2024-09-23','2024-10-21',', ','0普遍級',133,'xx,aa','youandme','ss','aa',', '),(15,'hi','2024-10-02','2024-10-24','room A, room B','6保護級',110,'劇情,動作','周杰倫，桂綸鎂','jay chou','好想要票','2D, 3D'),(16,'22','2024-09-20','2024-10-12','room A, room B, room C','6保護級',110,'動畫','桂綸鎂','jay','bagdddd','2D, 3D, 4DX, IMAX'),(17,'zz','2024-09-17','2024-10-18','room A','0普遍級',111,'劇情,動作,動畫','周杰倫，桂綸鎂','zz','asasa','2D, 3D, 4DX, IMAX'),(18,'好看的電影','2024-10-22','2024-10-31','room A, room B, room C','6保護級',111,'劇情,動作,動畫','youandme','you','好看!','2D, 3D, 4DX, IMAX'),(19,'乒乓男孩','2024-10-25','2024-11-08','room A, room B, room C','0普遍級',108,'劇情，運動','彭裕愷，李星緯，徐若瑄，鄭人碩，施名帥，魏蔓，江宏傑',' 洪伯豪','單親小學生胡冠宇（彭裕愷 飾）立志成為奧運國手，與好友黃軒（李星緯 飾）並肩奮鬥。然而，隨著黃軒轉學，兩人成為球場對手。經歷友情與挑戰的考驗，他們最終能否實現夢想，踏上奧運舞台？','2D, 3D'),(20,'超人:克里斯多夫李維傳奇故事','2024-10-31','2024-11-08','room A, room B, room C','6保護級',104,' 紀錄片','克里斯多夫李維','伊恩博霍特，彼得埃特吉','本片記錄下克里斯多夫李維，他以超人角色成名，奠定超級英雄電影基準。1995年騎馬意外致全身癱瘓後，他成為行動主義者，推動脊髓研究與身障權益，同時持續投入電影事業與家庭。','2D, 3D, 4DX, IMAX'),(21,'aa','2024-10-13','2024-10-14','room A','6保護級',133,'劇情,動作','周杰倫，桂綸鎂','jay chou','好看!','2D');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-23 17:16:30
