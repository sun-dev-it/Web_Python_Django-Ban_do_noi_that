-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: web-ban-hang
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

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
-- Table structure for table `app_ban_hang_base`
--

DROP TABLE IF EXISTS `app_ban_hang_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_ban_hang_base` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `SDT` varchar(15) DEFAULT NULL,
  `Logo_web` varchar(100) DEFAULT NULL,
  `HoTroKhachHang` longtext,
  `LienHeChungToi` longtext,
  `DiaChi_Khac` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ban_hang_base`
--

LOCK TABLES `app_ban_hang_base` WRITE;
/*!40000 ALTER TABLE `app_ban_hang_base` DISABLE KEYS */;
INSERT INTO `app_ban_hang_base` VALUES (1,'0931436774','logo_VFWEkjJ.png','Chính sách bảo hành\r\n\r\nChính sách bảo mật\r\n\r\nDịch vụ trả góp\r\n\r\nHướng dẫn tạo tài khoản\r\n\r\nCâu hỏi thường gặp','Đặt hàng trực tuyến (9h-21h)\r\n0931436774\r\ndaiphatle123@gmail.com\r\nCSKH (9h-21h)\r\nHotline Nam Việt\r\n0931436774\r\n20521732@gm.uit.edu.vn\r\nHotline Nam Việt Hồ Chí Minh và Online\r\n0931436774\r\ndaiphatle0109@gmail.com','<b>Cửa hàng nội thất Nam Việt</b>\r\n\r\n<b>Địa chỉ</b>\r\nHồ Chí Minh, Quận 5\r\n\r\n<b>Giấy chứng nhận kinh doanh</b>\r\nSố 12345 do Sở kế hoạch và đầu tư TP. Hồ Chí Minh cấp ngày 08/06/2023');
/*!40000 ALTER TABLE `app_ban_hang_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_ban_hang_blog`
--

DROP TABLE IF EXISTS `app_ban_hang_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_ban_hang_blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `TieuDe` varchar(200) NOT NULL,
  `NoiDung` longtext NOT NULL,
  `NgayDang` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ban_hang_blog`
--

LOCK TABLES `app_ban_hang_blog` WRITE;
/*!40000 ALTER TABLE `app_ban_hang_blog` DISABLE KEYS */;
INSERT INTO `app_ban_hang_blog` VALUES (12,'phong-cach-wabi-sabi-hap-dan-tu-su-khong-hoan-hao.jpg','Phong cách thiết kế Wabi-Sabi','Người Nhật nổi tiếng thế giới với sự chính xác tới từng chi tiết. Nếu đến thăm Nhật Bản, bạn sẽ nhận thấy rằng người Nhật đánh giá cao vẻ đẹp tự thân của các đồ vật.\r\n\r\nPhong cách Wabi-sabi dựa trên triết lý cổ xưa của Nhật Bản, có thể được hiểu như sau:\r\n\r\n“Wabi” có nghĩa là sự đơn giản, khiêm tốn, mời gọi trái tim rộng mở. Đồng thời tách ra khỏi sự phù phiếm của chủ nghĩa vật chất. Để từ đó, có thể trải nghiệm sự phong phú về mặt tinh thần.\r\n“Sabi” có nghĩa là “sự in dấu của thời gian”, thể hiện bằng tác động của thời gian lên một đối tượng. Cách vạn vật sinh ra, phát triển, già đi và suy tàn.','2023-06-07 11:35:57.878659'),(13,'thiet-ke-noi-that-phong-cach-loft-hien-dai.jpg','Phong cách Loft','Phong cách Loft (gác xép, gác mái) là tên gọi của một phong cách đô thị hiện đại trong thiết kế nội thất.\r\n\r\nNội thất phong cách Loft gây ấn tượng bởi không gian mở và các yếu tố trang trí mang tính công nghiệp. Ví dụ như trần nhà rất cao, tường gạch thô, dầm gỗ, bê tông và các đường ống lộ ra ngoài, v.v…\r\n\r\nỞ Mỹ, thuật ngữ Loft được sử dụng để mô tả không gian của tầng áp mái. Tuy nhiên, ở Anh (England), nó không gì khác hơn là một không gian lưu trữ dưới mái nhà, cùng với một chiếc thang.','2023-06-07 11:37:43.801273'),(14,'thiet-ke-noi-that-phong-khach-hien-dai.jpg','Phong cách hiện đại','<h4>1./ Phong cách hiện đại là gì?</h4>Thiết kế phong cách hiện đại là tối giản về chi tiết nhưng tối đa về công năng, ít là nhiều (less is more). Đó chính là giá trị cốt lõi của thiết kế hiện đại. Mọi người thường nhầm lẫn giữa hiện đại và đương đại. Bài viết này sẽ hướng dẫn rõ ràng nhất về các yếu tố của phong cách hiện đại.<br>\r\n\r\n<h4>2./ Phân biệt thiết kế hiện đại & đương đại</h4><b>Thiết kế hiện đại:</b>\r\nXuất hiện vào cuối những năm 1800. Được đặc trưng bởi những đường nét đơn giản và màu sắc tự nhiên, chú trọng công năng hơn hình thức. Phong cách hiện đại trở nên thịnh hành vào giữa thế kỷ 20 cho đến nay.\r\n\r\nTriết lý thiết kế hiện đại là chủ nghĩa tối giản. Thiết kế sử dụng các đường nét đơn giản sạch sẽ để tạo các khoảng trống. Tránh các chi tiết trang trí thừa. Ánh sáng tự nhiên tràn ngập. Các ô cửa kính lớn,v.v…phong cách hiện đại mang đến một bầu không khí thoáng mát cho căn nhà.\r\n\r\n<b>Thiết kế Đương đại (Contemporary):</b>\r\nLấy ý tưởng từ chủ nghĩa hiện đại và các phong cách thiết kế khác (Scandinavian, Mid-Century, industrial, v.v…). Nó hình thành nên bản sắc của mình như một sự pha trộn của nhiều phong cách khác nhau. Do đó, nó luôn thay đổi.\r\n\r\nNếu bạn yêu cầu 10 nhà thiết kế cho bạn xem hình ảnh của phong cách Đương Đại. Đừng ngạc nhiên nếu bạn nhận được 10 bức ảnh rất khác nhau. Không có một ý tưởng nào để xác định chính xác phong cách Đương đại. Do đó, phong cách Đương đại được coi như một biểu hiện của thiết kế theo chủ nghĩa cá nhân.','2023-06-07 11:41:11.231752'),(15,'phong-cach-noi-that-dia-trung-hai-duoc-yeu-thich-moi-thoi-dai.jpg','Ý tưởng cho phong cách Địa Trung Hải','Không gian hiền hòa thơ mộng trên sóng biển vỗ bờ. Những làn gió thơm mùi chanh rì rào qua những tán cây ô liu. Cuộc sống dọc theo Địa Trung Hải (Mediterranean) là một bữa tiệc giác quan. Bữa tiệc mà nhiều người trong chúng ta mong mỏi được mang vào trong nội thất nhà mình.\r\n\r\nMay mắn thay, thiết kế nội thất phong cách Địa Trung Hải tương đối dễ thực hiện. Ngay cả khi nhà của bạn không phải là vùng ven biển đầy nắng gió.\r\n\r\nBiển Địa Trung Hải gần như được bao bọc hoàn toàn bởi đất liền xung quanh lớn nhất thế giới. Phía bắc bởi châu Âu, phía nam bởi châu Phi và phía đông bởi châu Á. Vì vậy, một cách tự nhiên, phong cách Địa Trung Hải được lấy cảm hứng từ nền văn hóa của nhiều quốc gia lân cận. Trong đó rõ rệt nhất là Ý- Hy Lạp – Tây Ban Nha.\r\n\r\nNhững ngôi nhà phong cách Tây Ban Nha cùng với phong cách Phục hưng Ý, Hy Lạp đều có thể được coi là Địa Trung Hải. Vì chúng có chung một số yếu tố và phong cách.','2023-06-07 11:44:07.182538');
/*!40000 ALTER TABLE `app_ban_hang_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_ban_hang_blog_Like`
--

DROP TABLE IF EXISTS `app_ban_hang_blog_Like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_ban_hang_blog_Like` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blog_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_ban_hang_blog_Like_blog_id_user_id_4fd85786_uniq` (`blog_id`,`user_id`),
  KEY `app_ban_hang_blog_Like_user_id_92b6a30a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `app_ban_hang_blog_Like_blog_id_b6ad61ff_fk_app_ban_hang_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `app_ban_hang_blog` (`id`),
  CONSTRAINT `app_ban_hang_blog_Like_user_id_92b6a30a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ban_hang_blog_Like`
--

LOCK TABLES `app_ban_hang_blog_Like` WRITE;
/*!40000 ALTER TABLE `app_ban_hang_blog_Like` DISABLE KEYS */;
INSERT INTO `app_ban_hang_blog_Like` VALUES (170,12,2);
/*!40000 ALTER TABLE `app_ban_hang_blog_Like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_ban_hang_carousel_home`
--

DROP TABLE IF EXISTS `app_ban_hang_carousel_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_ban_hang_carousel_home` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `img` varchar(100) DEFAULT NULL,
  `img_active` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ban_hang_carousel_home`
--

LOCK TABLES `app_ban_hang_carousel_home` WRITE;
/*!40000 ALTER TABLE `app_ban_hang_carousel_home` DISABLE KEYS */;
INSERT INTO `app_ban_hang_carousel_home` VALUES (2,'slide4.jpg',NULL),(3,'slide5_8UOiIqV.jpg','slide3_SHKOX6e.jpg');
/*!40000 ALTER TABLE `app_ban_hang_carousel_home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_ban_hang_comment`
--

DROP TABLE IF EXISTS `app_ban_hang_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_ban_hang_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `author_id` int NOT NULL,
  `sanpham_id` bigint NOT NULL,
  `check` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_ban_hang_comment_author_id_73241a29_fk_auth_user_id` (`author_id`),
  KEY `app_ban_hang_comment_sanpham_id_8b616b60_fk_app_ban_h` (`sanpham_id`),
  CONSTRAINT `app_ban_hang_comment_author_id_73241a29_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `app_ban_hang_comment_sanpham_id_8b616b60_fk_app_ban_h` FOREIGN KEY (`sanpham_id`) REFERENCES `app_ban_hang_sanpham` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ban_hang_comment`
--

LOCK TABLES `app_ban_hang_comment` WRITE;
/*!40000 ALTER TABLE `app_ban_hang_comment` DISABLE KEYS */;
INSERT INTO `app_ban_hang_comment` VALUES (24,'a','2023-06-15 17:53:19.291049',2,3,1),(25,'a','2023-06-15 17:53:41.591257',2,3,0);
/*!40000 ALTER TABLE `app_ban_hang_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_ban_hang_donhang`
--

DROP TABLE IF EXISTS `app_ban_hang_donhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_ban_hang_donhang` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_order` datetime(6) NOT NULL,
  `complete` tinyint(1) DEFAULT NULL,
  `sp_damua` varchar(200) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_ban_hang_order_customer_id_8758f99f_fk_auth_user_id` (`customer_id`),
  CONSTRAINT `app_ban_hang_order_customer_id_8758f99f_fk_auth_user_id` FOREIGN KEY (`customer_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ban_hang_donhang`
--

LOCK TABLES `app_ban_hang_donhang` WRITE;
/*!40000 ALTER TABLE `app_ban_hang_donhang` DISABLE KEYS */;
INSERT INTO `app_ban_hang_donhang` VALUES (90,'2023-06-07 17:32:08.775221',1,NULL,2),(91,'2023-06-07 17:32:18.266733',1,NULL,2),(92,'2023-06-07 17:49:02.260662',1,NULL,2),(93,'2023-06-07 17:51:14.743833',1,NULL,2),(94,'2023-06-07 17:51:38.759930',1,NULL,2),(95,'2023-06-07 18:35:18.278954',0,NULL,12),(96,'2023-06-07 18:45:40.383352',1,NULL,2),(97,'2023-06-08 02:52:28.671920',1,NULL,2),(98,'2023-06-08 03:22:50.885264',0,NULL,2);
/*!40000 ALTER TABLE `app_ban_hang_donhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_ban_hang_home`
--

DROP TABLE IF EXISTS `app_ban_hang_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_ban_hang_home` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `NoiDung` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ban_hang_home`
--

LOCK TABLES `app_ban_hang_home` WRITE;
/*!40000 ALTER TABLE `app_ban_hang_home` DISABLE KEYS */;
INSERT INTO `app_ban_hang_home` VALUES (1,'<h4>NỘI THẤT NAM VIỆT XIN ĐƯỢC GIỚI THIỆU TỔNG QUAN VỀ CÁC DÒNG SẢN PHẨM NỔI BẬT VÀ BÁN CHẠY NHẤT CỦA CHÚNG TÔI</h4><br>\r\n<h5><b>1. Đồ nội thất của Nội Thất Nam Việt được làm từ những chất liệu tốt nhất.</b></h5>\r\n<ol><li><b>Mẫu Mã:</b> Có đến hàng ngàn, hàng vạn mẫu mã đẹp, bán chạy nhất trên thị trường hay xu hướng mới đều được chúng tôi cập nhật trên web noithatnamviet.com, tạo nên sự đa dạng và phong phú của tất cả các dòng sản phẩm. Qua đó, bạn có thể chọn được cho mình mẫu mã vừa lòng, phù hợp với thẩm mỹ của mình.</li>\r\n<li><b>Chất liệu:</b> Thường thì tất cả sản phẩm nội thất của Nội Thất Nam Việt được làm từ hai loại gỗ, chính là gỗ tự nhiên và gỗ công nghiệp. Loại gỗ tự nhiên bao gồm nhóm gỗ loại 1, 2 và 3. Còn gỗ công nghiệp thì chọn gỗ PDF nhập khẩu từ các nước phát triển nền công nghiệp gỗ, như là nước Đức, Anh,...</li>\r\n<li><b>Kích Thước:</b> Bàn, Tủ, Giường, Kệ Ti Vi, Tủ Đựng Giày,.... có rất nhiều kích thước, từ nhỏ, vừa cho đến lớn. Để chọn được kích thước sản phẩm phù hợp, quý khách cần trả lời rõ hai vấn đền, thứ nhất là nhu cầu sử dụng và thứ hai là vị trí, không gian để đặt sản phẩm, từ đó chọn cho mình mẫu nội thất có kích thước ưng ý nhất.</li>\r\n<li><b>Dịch vụ:</b> Hiện nay, Nội Thất Nam Việt có hai dịch vụ chính là bán sản phẩm nội thất có sẵn và đóng tủ, bàn, ghế, giường,.... theo nhu cầu. Đối với dịch vụ thứ nhất, bạn sẽ tiết kiệm được chi phí hơn. Nhưng dịch vụ thứ hai, sẽ giúp bạn thỏa mãn những yêu cầu chi tiết nhất, đúng với mong muốn của khách hàng.</li>\r\n<li><b>Độ Bền:</b> Đồ nội thất Nam Việt của chúng tôi có độ bền rất lâu, như là sản phẩm là từ gỗ công nghiệp có tuổi thọ từ 20 - 30 năm trong khi đó sản phẩm làm từ gỗ tự nhiên có thể tồn tại từ 50 - 70 năm. Nếu như quý khách hàng biết cách sử dụng và bảo quản, thì chắc chắn thời gian sử dụng sẽ kéo dài thêm từ 5 - 10 năm.</li>\r\n</ol>\r\n\r\n<h5><b>2. Những ưu đãi tuyệt vời bạn nhận được khi đồ nội thất tại Nội Thất Nam Việt</b></h5>\r\n<ol><li><b>Chi phí:</b> Bởi vì Nội Thất Nam Việt có xưởng đóng sản phẩm, làm tực tiếp, không đi qua bất kỳ khâu trung gian nào, cho nên có mức chi phí cạnh tranh nhất trên thị trường. Bạn sẽ chọn được sản phẩm mà mình mong muốn với mức giá mà bạn ưng ý nhất, chúng tôi cam kết tuyệt đối về điều này.</li>\r\n<li><b>Phong phú:</b> Như chúng tôi đã nói ở trên, sản phẩm nội thất của chúng tôi được chia thành 8 mục chính, mỗi mục có nhiều dòng sản phẩm, mỗi dòng lại có các chủng loại khác nhau, tạo nên sự đa dạng và phong phú của Nội Thất Nam Việt. Cho nên, quý khách hồ lựa chọn sản phẩm phù hợp với không gian của mình.</li>\r\n<li><b>Giao hàng:</b> Đối với nhóm khách hàng ở trong nội thành TP. HCM, chúng tôi áp dụng chết độ giao hàng và lắp đặt hoàn toàn miễn phí. Còn đối với khách hàng ở ngoại thành, để giao hàng và lắp đặt, bạn chỉ cần thêm một khoảng phụ phí nhỏ. Riêng khách hàng ở xa, chúng tôi sẽ gửi qua các chành xa, chi phí quý khách tự trả.</li>\r\n<li><b>Bảo hành:</b> Thời gian bảo hành sản phẩm nội thất của Nội Thất Nam Việt khá lâu. Đối với nội thất làm từ gỗ công nghiệp, chúng tôi bảo hành 2 năm. Còn sản phẩm nội thất làm từ gỗ tự nhiên, bảo hành lên đến 5 năm. Trong thời gian này, nếu như xảy ra lỗi kỹ thuật, chúng tôi sẽ cho nhân viên đến tận nơi sửa chữa.</li>\r\n<li><b>Tận Tâm:</b> Chúng tôi có đội ngũ bán hàng nhiệt tình, tận tâm, chắc chắn sẽ tư vấn cho quý khách hàng sản phẩm mà bạn mong muốn, cũng như phù hợp với Phong Thủy gia đình, văn phòng. Nội Thất Nam Việt cam kết chỉ bán sản phẩm mà quý khách yêu cầu, chứ không bán sản phẩm mà chúng tôi cần.</li>\r\n</ol>');
/*!40000 ALTER TABLE `app_ban_hang_home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_ban_hang_lienhe`
--

DROP TABLE IF EXISTS `app_ban_hang_lienhe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_ban_hang_lienhe` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `NoiDung` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ban_hang_lienhe`
--

LOCK TABLES `app_ban_hang_lienhe` WRITE;
/*!40000 ALTER TABLE `app_ban_hang_lienhe` DISABLE KEYS */;
INSERT INTO `app_ban_hang_lienhe` VALUES (1,'<center><h4>CÔNG TY TNHH SX TM NỘI THẤT NAM VIỆT<h4></center>\r\n<b>Cửa Hàng:</b> Trường Đại Học Công Nghệ Thông Tin\r\n<b>Xưởng SX:</b> Quận 5, TPHCM\r\n<b>Hotline mua hàng:</b> 0931436774 \r\n<b>Điện thoại:</b> 0931436774\r\n<b>Email:</b> daiphatle123@gmail.com\r\n<b>Liên hệ hợp tác:</b> 0931436774\r\n<b>Email:</b> 20521732@gm.uit.edu.vn\r\n<b>Website:</b> www.noithatnamviet.com');
/*!40000 ALTER TABLE `app_ban_hang_lienhe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_ban_hang_loaisp`
--

DROP TABLE IF EXISTS `app_ban_hang_loaisp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_ban_hang_loaisp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_sub` tinyint(1) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `sub_category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_ban_hang_category_slug_e227b11a` (`slug`),
  KEY `app_ban_hang_loaisp_sub_category_id_42255afb_fk_app_ban_h` (`sub_category_id`),
  CONSTRAINT `app_ban_hang_loaisp_sub_category_id_42255afb_fk_app_ban_h` FOREIGN KEY (`sub_category_id`) REFERENCES `app_ban_hang_loaisp` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ban_hang_loaisp`
--

LOCK TABLES `app_ban_hang_loaisp` WRITE;
/*!40000 ALTER TABLE `app_ban_hang_loaisp` DISABLE KEYS */;
INSERT INTO `app_ban_hang_loaisp` VALUES (1,0,'Bàn','ban',NULL),(5,0,'Bộ bàn ăn','bobanan',NULL),(6,0,'Giường','giuong',NULL),(7,0,'Tủ kệ','tuke',NULL),(8,0,'Sofa','sofa',NULL),(9,0,'Đồ trang trí','dotrangtri',NULL),(10,0,'Đồ dùng nhà bếp','dodungnhabep',NULL),(11,0,'Vách trang trí','vachtrangtri',NULL);
/*!40000 ALTER TABLE `app_ban_hang_loaisp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_ban_hang_orderitem`
--

DROP TABLE IF EXISTS `app_ban_hang_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_ban_hang_orderitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `soluong` int DEFAULT NULL,
  `date_added` datetime(6) NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `sp_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_ban_hang_oderitem_sp_id_f475260a_fk_app_ban_hang_sanpham_id` (`sp_id`),
  KEY `app_ban_hang_orderit_order_id_b435812b_fk_app_ban_h` (`order_id`),
  CONSTRAINT `app_ban_hang_oderitem_sp_id_f475260a_fk_app_ban_hang_sanpham_id` FOREIGN KEY (`sp_id`) REFERENCES `app_ban_hang_sanpham` (`id`),
  CONSTRAINT `app_ban_hang_orderit_order_id_b435812b_fk_app_ban_h` FOREIGN KEY (`order_id`) REFERENCES `app_ban_hang_donhang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ban_hang_orderitem`
--

LOCK TABLES `app_ban_hang_orderitem` WRITE;
/*!40000 ALTER TABLE `app_ban_hang_orderitem` DISABLE KEYS */;
INSERT INTO `app_ban_hang_orderitem` VALUES (26,1,'2023-06-06 11:35:16.806566',NULL,7),(27,1,'2023-06-06 11:35:21.962075',NULL,9),(29,2,'2023-06-06 12:03:50.319905',NULL,20),(30,1,'2023-06-06 12:12:58.292956',NULL,4),(31,1,'2023-06-06 12:13:12.857575',NULL,23),(32,1,'2023-06-06 12:19:43.892266',NULL,3),(33,2,'2023-06-06 12:21:45.252293',NULL,3),(34,1,'2023-06-07 08:25:34.792772',NULL,8),(35,1,'2023-06-07 08:59:40.897978',NULL,3),(36,1,'2023-06-07 09:00:58.357979',NULL,3),(37,1,'2023-06-07 09:01:48.475749',NULL,3),(38,1,'2023-06-07 09:08:44.056905',NULL,3),(40,1,'2023-06-07 09:21:41.890121',NULL,3),(41,1,'2023-06-07 09:24:13.658625',NULL,3),(42,1,'2023-06-07 09:34:51.967731',NULL,3),(43,1,'2023-06-07 09:37:22.470770',NULL,3),(44,1,'2023-06-07 09:38:23.001689',NULL,3),(45,1,'2023-06-07 09:40:17.569234',NULL,3),(46,1,'2023-06-07 09:49:47.800024',NULL,3),(47,1,'2023-06-07 09:51:01.453187',NULL,3),(48,1,'2023-06-07 10:01:06.851884',NULL,3),(49,1,'2023-06-07 10:01:32.623905',NULL,3),(50,1,'2023-06-07 10:03:50.602284',NULL,3),(51,1,'2023-06-07 10:20:44.077249',NULL,3),(52,1,'2023-06-07 10:21:26.477715',NULL,19),(53,1,'2023-06-07 10:22:45.487295',NULL,3),(54,1,'2023-06-07 10:23:20.505019',NULL,27),(55,1,'2023-06-07 10:24:52.205444',NULL,3),(56,1,'2023-06-07 10:25:16.541253',NULL,3),(57,1,'2023-06-07 10:27:58.356662',NULL,3),(58,1,'2023-06-07 10:29:03.916726',NULL,3),(59,1,'2023-06-07 10:30:06.591748',NULL,3),(60,1,'2023-06-07 10:31:59.671893',NULL,3),(61,1,'2023-06-07 10:33:27.361703',NULL,3),(62,1,'2023-06-07 10:34:33.187975',NULL,3),(63,1,'2023-06-07 10:35:54.956324',NULL,3),(64,1,'2023-06-07 10:37:39.904844',NULL,3),(66,3,'2023-06-07 11:49:26.204141',NULL,4),(67,5,'2023-06-07 11:49:33.002266',NULL,5),(68,3,'2023-06-07 11:49:37.726489',NULL,22),(69,1,'2023-06-07 13:24:19.353406',NULL,3),(70,1,'2023-06-07 13:30:01.369937',NULL,3),(71,3,'2023-06-07 17:19:07.307604',NULL,3),(72,1,'2023-06-07 17:32:12.725970',90,4),(73,1,'2023-06-07 17:32:58.927554',91,27),(74,1,'2023-06-07 17:51:05.906160',92,15),(75,1,'2023-06-07 17:51:25.057343',93,11),(76,2,'2023-06-07 18:35:53.507106',95,4),(78,1,'2023-06-07 18:44:57.584642',94,3),(79,1,'2023-06-08 01:10:53.646838',96,4),(80,1,'2023-06-08 02:52:02.418371',96,3),(81,2,'2023-06-08 03:21:25.938154',97,3),(82,1,'2023-06-08 03:21:35.212613',97,10),(83,3,'2023-06-18 13:36:34.461534',98,3),(84,1,'2023-06-18 13:36:39.643568',98,9);
/*!40000 ALTER TABLE `app_ban_hang_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_ban_hang_sanpham`
--

DROP TABLE IF EXISTS `app_ban_hang_sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_ban_hang_sanpham` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `TenSP` varchar(30) NOT NULL,
  `GiaSP` int NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `TonKho` int NOT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `MoTa` longtext,
  `LuotMua` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ban_hang_sanpham`
--

LOCK TABLES `app_ban_hang_sanpham` WRITE;
/*!40000 ALTER TABLE `app_ban_hang_sanpham` DISABLE KEYS */;
INSERT INTO `app_ban_hang_sanpham` VALUES (3,'Bàn sofa kim cương mặt kính',1200000,'ban1.webp',387,'','','Chất liệu: Chân bàn kim loại sơn tĩnh điện, mặt bàn kính 8mm cường lực.\r\nMàu kính: Màu đen hoặc trắng\r\nKích thước: Đường kính 65cm x 45cm\r\nMàu sắc lựa chọn: Khung đen, vàng, trắng.',0),(4,'Bàn sofa mặt đá hình chữ nhật',2200000,'ban2.webp',197,'ban2.2.webp','ban2.3.webp','Kích thước: 50x100cm, chiều cao 45cm\r\nMàu sắc chân: Chân Vàng, trắng, đen tuỳ chọn\r\nMàu sắc mặt: Mặt đá vân mây trắng - đen tuỳ chọn\r\nChất liệu: Sắt sơn tĩnh điện, mặt đá moca.',0),(5,'Bàn trưng bày',1100000,'ban3.jpg',325,'','','chất liệu: sắt hộp dày 1.2 ly sơn tĩnh điện cao cấp, màu sắc đa dạng. Mặt bàn có nhiều tùy chọn như gỗ, kính, đá nhân tạo hoặc ...',0),(6,'Bàn sofa đôi vuông mặt đá',3000000,'ban4.1.webp',259,'ban4.22.webp','ban4.3.webp','Bàn sofa đôi vuông mặt đá ceramic BTS-21 là mẫu bàn trà phòng khách đẹp hiện đang bán rất chạy tại Kho Nội Thất Sài Gòn. Thiết kế kiểu dáng bàn trà vuông đôi hiện đại, mới lạ đặt trong phòng khách luôn dễ tạo điểm nhấn sang trọng, tinh tế và ấn tượng. Thông tin chi tiết: Kích thước: bàn lớn: 60x60cm - bàn nhỏ: 50x50mm,...',0),(7,'Bàn sofa hình oval',2900000,'ban5.webp',245,'','','Bàn sofa đôi vuông mặt đá ceramic BTS-21 là mẫu bàn trà phòng khách đẹp hiện đang bán rất chạy tại Kho Nội Thất Sài Gòn. Thiết kế kiểu dáng bàn trà vuông đôi hiện đại, mới lạ đặt trong phòng khách luôn dễ tạo điểm nhấn sang trọng, tinh tế và ấn tượng. Thông tin chi tiết: Kích thước: bàn lớn: 60x60cm - bàn nhỏ: 50x50mm,...',0),(8,'Bàn trà nhập khẩu cao cấp',6300000,'ban6.webp',97,'','','Kích thước: 70x130cm\r\nChất liệu: Hộc gỗ MDF sơn, mặt đá Ceramic, Chân sắt sơn tĩnh điện.\r\nMàu sắc: Màu như hình.\r\nXuất xứ: Nhập khẩu',0),(9,'Bộ bàn 4 ghế monet',6900000,'ban7.jpg',125,'','','Chất liệu: Mặt đá ceramic trắng bóng vân mây, chân sắt sơn tĩnh điện\r\nKích thước: 120(cm) x 80(cm) x 75(cm)\r\nBảo hành: 6 tháng (ghế), 12 tháng (bàn ăn)',0),(10,'Bộ bàn 4 ghế Elbow',4500000,'banan.22.jpg',35,'','','Kích thước bàn: dài 1m2 rộng 80cm\r\nMàu sắc: nâu óc chó, vàng tự nhiên,trắng,đen\r\nGhế bọc da',0),(11,'Bộ bàn ăn nhập khẩu CERA',5900000,'banan.3.jpg',79,'','','chất liệu: Mặt Bàn : Ceramic chống trầy, chịu nhiệt. Chân bàn : Sắt sơn tĩnh điện. Ghế : Bọc Da Pu, Chân Sắt Sơn',0),(12,'Bàn ăn mặt đá nhập khẩu',6200000,'banan4.jpg',34,'','','Mặt bàn đá kích thước 70x120cm\r\nMặt đá Ceramic chống thấm ố, sáng bóng',0),(13,'Bàn ăn thông minh (vân gỗ sồi)',5400000,'banan5.webp',348,'','','Vật liệu : Gỗ MFC Melamin 18mm\r\nKích thước : Dài 1,4m x Rộng 0,8m x Cao 0,73m',0),(14,'Bộ bàn ăn 4 ghế Mina',5200000,'banan6.jpg',98,'','','Mặt bàn đá kích thước 75x120cm\r\nMặt đá Ceramic chống thấm ố, sáng bóng\r\nMặt ghế đệm bọc da nhiều màu\r\nChân bàn và ghế bằng thép chắc chắn',0),(15,'Giường ngủ gỗ óc chó hiện đại',22000000,'giuong1.jpg',22,'','','Kích thước: 1m6 x 2m, 1m8 x 2m, 2m x 2m2.',0),(16,'Giường ngủ có ngăn kéo đuôi',5500000,'giuong2.jpg',12,'','','Chất liệu: MDF lõi xanh chống ẩm phủ Melamine chống trầy.',0),(17,'Giường bọc nệm CECICA',9900000,'giuong3.jpg',5,'','','Kích thước	1m6x2m (queen size). Chất liệu	Khung gỗ công nghiệp chống ẩm cao cấp, bề mặt bọc da Synthetic Leather/ vải.',0),(18,'Giường ngủ có ngăn kéo hông',4500000,'giuong4.jpg',43,'','','kích thước: 1m2x2m',0),(19,'Kệ tủ tài liệu Classic',5280000,'ke1.jpg',22,'','','Kích thước	\r\nRộng 2400 x Sâu 400 x Cao (1150 – 1500 – 1850 mm )',0),(20,'Tủ kệ tivi gỗ HOMO',4600000,'ke2.webp',33,'','','Kích thước: Dài 140/160/180 cm x Rộng 40 cm x Cao 60 cm\r\n\r\nChất liệu:\r\n\r\n- Thân tủ: Gỗ công nghiệp PB chuẩn CARB-P2 (*), Sơn phủ UV vân gỗ sồi tự nhiên\r\n\r\n- Chân tủ: Gỗ cao su tự nhiên',0),(21,'Tủ kệ TV gỗ Tần Bì',7500000,'tu3.jpeg',54,'','','Dài 180 Sâu 40 Cao 48 (cm)',0),(22,'Kệ sách để sàn hiện đại',3200000,'ke4.webp',26,'','','Với thiết kế tách rời, bộ kệ có thể sử dụng riêng lẻ như 2 chiếc kệ sách, có thể quay 360 độ vì các mặt trước/sau/trên/dưới đều được làm đẹp.\r\nThiết kế hiện đại với các ngăn chia cách điệu. Sản phẩm được thiết kế mang đến sự cân đối hoàn hảo cho không gian phòng khách, phòng làm việc.\r\nGỗ công nghiệp HMR hay còn gọi là MDF lõi xanh chống ẩm, loại gỗ có độ bền sử dụng trên 10 năm. Bề mặt được phủ melamine có khả năng chống trầy xước, chịu nhiệt tốt và dễ dàng vệ sinh.',0),(23,'Kệ trang trí hình ô vuông',2500000,'ke5.jpg',235,'','','- Chất liệu: gỗ MFC/MDF phủ melamine  cao cấp, kết hợp khung sắt hộp sơn tĩnh điện hoàn thiện\r\n\r\n- Kích thước: D1200xR300xC1600 mm',0),(24,'Vách gương tường phòng ăV',2000000,'vach1.jpeg',999,'','','Kích thước:	Thiết kế theo yêu cầu\r\nBảo hành:	2 năm\r\nMàu sắc:	Gương bỉ trong suốt\r\nChất liệu:	Gương Bỉ (AGC)',0),(25,'Vách ốp tường phòng thờ',2500000,'vach2.webp',35,'','','Chất liệu: gỗ mdf, gỗ mdf phủ veneer, gỗ mdf phủ melamin\r\n\r\nKích thước: theo yêu cầu',0),(26,'Lam gỗ phòng khách',3100000,'vach3.webp',43,'','','kích thước, màu sắc theo yêu cầu',0),(27,'Sofa băng',5500000,'sofa1.jpg',23,'','','Kích thước: 1.8m\r\nChất liệu: vải bố 100% polyester (có thể thay đổi bằng vải nhung, vải nỉ và giả da Hàn Quốc cao cấp)\r\nKhung: gỗ dầu (được xử lý chống mối mọt, cong vênh)\r\nNệm: mút D40 chống xẹp lún',0),(28,'Sofa stile Hàn Quốc xinh xắn',1130000,'sofa2.png',35,'','','Sản phẩm có thể thay đổi thiết kế theo yêu cầu( màu sắc chất liệu da -> vải & vải -> da đổi miễn phí\r\n * kích thước nới rộng với giá ưu đãi.',0);
/*!40000 ALTER TABLE `app_ban_hang_sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_ban_hang_sanpham_category`
--

DROP TABLE IF EXISTS `app_ban_hang_sanpham_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_ban_hang_sanpham_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sanpham_id` bigint NOT NULL,
  `loaisp_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_ban_hang_sanpham_cat_sanpham_id_category_id_957867b9_uniq` (`sanpham_id`,`loaisp_id`),
  KEY `app_ban_hang_sanpham_loaisp_id_efa6f1d9_fk_app_ban_h` (`loaisp_id`),
  CONSTRAINT `app_ban_hang_sanpham_loaisp_id_efa6f1d9_fk_app_ban_h` FOREIGN KEY (`loaisp_id`) REFERENCES `app_ban_hang_loaisp` (`id`),
  CONSTRAINT `app_ban_hang_sanpham_sanpham_id_1fdfbe1e_fk_app_ban_h` FOREIGN KEY (`sanpham_id`) REFERENCES `app_ban_hang_sanpham` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ban_hang_sanpham_category`
--

LOCK TABLES `app_ban_hang_sanpham_category` WRITE;
/*!40000 ALTER TABLE `app_ban_hang_sanpham_category` DISABLE KEYS */;
INSERT INTO `app_ban_hang_sanpham_category` VALUES (3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,5),(10,10,5),(11,11,5),(12,12,5),(13,13,5),(14,14,5),(15,15,6),(16,16,6),(17,17,6),(18,18,6),(19,19,7),(20,20,7),(21,21,7),(22,22,7),(23,23,7),(24,24,11),(25,25,11),(26,26,11),(27,27,8),(28,28,8);
/*!40000 ALTER TABLE `app_ban_hang_sanpham_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_ban_hang_thongtinnguoimua`
--

DROP TABLE IF EXISTS `app_ban_hang_thongtinnguoimua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_ban_hang_thongtinnguoimua` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `DiaChi` varchar(200) DEFAULT NULL,
  `SDT` varchar(11) DEFAULT NULL,
  `date_added` datetime(6) NOT NULL,
  `customer_id` int DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_ban_hang_thongti_customer_id_0c3da616_fk_auth_user` (`customer_id`),
  KEY `app_ban_hang_thongti_order_id_ae8596eb_fk_app_ban_h` (`order_id`),
  CONSTRAINT `app_ban_hang_thongti_customer_id_0c3da616_fk_auth_user` FOREIGN KEY (`customer_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `app_ban_hang_thongti_order_id_ae8596eb_fk_app_ban_h` FOREIGN KEY (`order_id`) REFERENCES `app_ban_hang_donhang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ban_hang_thongtinnguoimua`
--

LOCK TABLES `app_ban_hang_thongtinnguoimua` WRITE;
/*!40000 ALTER TABLE `app_ban_hang_thongtinnguoimua` DISABLE KEYS */;
INSERT INTO `app_ban_hang_thongtinnguoimua` VALUES (1,NULL,NULL,'2023-05-30 12:10:44.992742',2,NULL);
/*!40000 ALTER TABLE `app_ban_hang_thongtinnguoimua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_ban_hang_tuvannoithat`
--

DROP TABLE IF EXISTS `app_ban_hang_tuvannoithat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_ban_hang_tuvannoithat` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `NoiDung` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ban_hang_tuvannoithat`
--

LOCK TABLES `app_ban_hang_tuvannoithat` WRITE;
/*!40000 ALTER TABLE `app_ban_hang_tuvannoithat` DISABLE KEYS */;
INSERT INTO `app_ban_hang_tuvannoithat` VALUES (1,'<center> <h3><b>VỀ DỊCH VỤ TƯ VẤN NỘI THẤT NAM VIỆT</b><h3> </center>\r\nCuộc sống gia đình sẽ đơn giản và dễ dàng hơn khi mọi thứ trong nhà được sắp xếp gọn gàng và tiện dụng, từ phòng ngủ, phòng khách, phòng ăn, phòng học & làm việc, phòng tắm, nhà bếp, sảnh & lối vào cho đến phòng trẻ em.\r\n\r\nThiết kế nội thất là một giải pháp tuyệt vời giúp nhà riêng của bạn trở nên ấn tượng và đẹp hơn với nhiều kiểu trang trí từ cổ điển đến hiện đại, tối giản hay đầy đủ.\r\n\r\nNAM VIỆT sẽ giúp bạn định hình phong cách thẩm mỹ cho ngôi nhà, tối ưu thời gian và chi phí thi công những mẫu thiết kế mang dấu ấn và nguồn cảm hứng sống của riêng bạn.\r\n\r\n<h4>1. TƯ VẤN MIỄN PHÍ</h4>\r\nNAM VIỆT lắng nghe, khảo sát và tư vấn miễn phí tại nhà, cập nhật những ý tưởng thiết kế mới mẻ và độc đáo cho tổ ấm gia đình.\r\n\r\nChúng tôi có hệ thống căn hộ mẫu & chuỗi siêu thị bán lẻ cho khách hàng cái nhìn tổng thể cũng như trải nghiệm thực tế về dịch vụ thiết kế nội thất và sản phẩm.\r\n<h4>2. PHÁC THẢO THIẾT KẾ</h4>\r\nNAM VIỆT hiểu rõ về vật liệu, màu sắc, độ bền của sản phẩm và trình bày bản vẽ phối cảnh (2D/ 3D) với cách bày trí tối ưu nhất cho không gian sống yêu thích của bạn.\r\n\r\nPhí dịch vụ tư vấn thiết kế tốt nhất thị trường.\r\n<h4>3. THI CÔNG HOÀN THIỆN</h4>\r\nTrọn gói đặt đóng theo yêu cầu, vận chuyển miễn phí và khoan lắp trên toàn quốc giúp bạn tiết kiệm thời gian, công sức và chi phí.\r\n\r\nTiến độ hoàn thiện nội thất căn hộ nhanh từ 3-7 ngày, quý khách vui lòng liên hệ nhân viên để biết thêm chi tiết.\r\n\r\nSau nhiều năm chuyện trò và chia sẻ biết bao câu chuyện với hàng triệu người, chúng tôi – những nhà thiết kế nội thất và chuyên viên tư vấn của NAM VIỆT đã cùng khách hàng thân thiết định nghĩa về ngôi nhà – tổ ấm.\r\n\r\nNAM VIỆT mời bạn tham khảo những dự án đã thực hiện cho khách hàng & các căn hộ mẫu để cập nhật các sản phẩm mới nhất, các thiết kế theo xu hướng thời thượng nhất.\r\n\r\nGọi ngay cho NAM VIỆT để gói trọn yêu thương và chăm sóc trong một căn hộ đầy đủ tiện nghi, bạn nhé!\r\n\r\nHotline: <b><i>0931436774</i></b>\r\nEmail: <b><i>daiphatle123@gmail.com</i></b>\r\n<br><br>');
/*!40000 ALTER TABLE `app_ban_hang_tuvannoithat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add san pham',7,'add_sanpham'),(26,'Can change san pham',7,'change_sanpham'),(27,'Can delete san pham',7,'delete_sanpham'),(28,'Can view san pham',7,'view_sanpham'),(29,'Can add comment',8,'add_comment'),(30,'Can change comment',8,'change_comment'),(31,'Can delete comment',8,'delete_comment'),(32,'Can view comment',8,'view_comment'),(33,'Can add thong tin nguoi mua',9,'add_thongtinnguoimua'),(34,'Can change thong tin nguoi mua',9,'change_thongtinnguoimua'),(35,'Can delete thong tin nguoi mua',9,'delete_thongtinnguoimua'),(36,'Can view thong tin nguoi mua',9,'view_thongtinnguoimua'),(37,'Can add loai sp',10,'add_loaisp'),(38,'Can change loai sp',10,'change_loaisp'),(39,'Can delete loai sp',10,'delete_loaisp'),(40,'Can view loai sp',10,'view_loaisp'),(41,'Can add don hang',11,'add_donhang'),(42,'Can change don hang',11,'change_donhang'),(43,'Can delete don hang',11,'delete_donhang'),(44,'Can view don hang',11,'view_donhang'),(45,'Can add orderitem',12,'add_orderitem'),(46,'Can change orderitem',12,'change_orderitem'),(47,'Can delete orderitem',12,'delete_orderitem'),(48,'Can view orderitem',12,'view_orderitem'),(49,'Can add blog',13,'add_blog'),(50,'Can change blog',13,'change_blog'),(51,'Can delete blog',13,'delete_blog'),(52,'Can view blog',13,'view_blog'),(53,'Can add lien he',14,'add_lienhe'),(54,'Can change lien he',14,'change_lienhe'),(55,'Can delete lien he',14,'delete_lienhe'),(56,'Can view lien he',14,'view_lienhe'),(57,'Can add tu van noi that',15,'add_tuvannoithat'),(58,'Can change tu van noi that',15,'change_tuvannoithat'),(59,'Can delete tu van noi that',15,'delete_tuvannoithat'),(60,'Can view tu van noi that',15,'view_tuvannoithat'),(61,'Can add base',16,'add_base'),(62,'Can change base',16,'change_base'),(63,'Can delete base',16,'delete_base'),(64,'Can view base',16,'view_base'),(65,'Can add carousel_ home',17,'add_carousel_home'),(66,'Can change carousel_ home',17,'change_carousel_home'),(67,'Can delete carousel_ home',17,'delete_carousel_home'),(68,'Can view carousel_ home',17,'view_carousel_home'),(69,'Can add home',18,'add_home'),(70,'Can change home',18,'change_home'),(71,'Can delete home',18,'delete_home'),(72,'Can view home',18,'view_home');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (2,'pbkdf2_sha256$260000$Fjlo1pbjZsI28AjYFtms3r$8aLnM2cDTX+T9ZoL6m/aQ7mEbwI/POQLIVArS1n1EvQ=','2023-06-18 13:36:27.682534',1,'admin','','','daiphatle123@gmail.com',1,1,'2023-05-23 11:50:47.614932'),(10,'pbkdf2_sha256$260000$7KvZb1K1pPgNy1kQ2agaob$7bwJRLpsWp+vgyplS0F9Ioq8+SvuO8ydhlgotkkAhwU=',NULL,0,'phat','','','daiphatle123@gmail.com',0,1,'2023-06-07 17:12:20.092230'),(11,'pbkdf2_sha256$260000$5BpPv0ci4fNSTpVyGktOGC$orWjihpHJYibwcDsd6PBsx2Ct3eFX/GxnjWZhTOU4Uk=',NULL,0,'phatle','','','daiphatle123@gmail.com',0,1,'2023-06-07 17:14:40.014832'),(12,'pbkdf2_sha256$260000$jYgiYGCFtx0PHlWDeUha1d$SZFMqGCAxUkWNl+YNXT5MLYVPYuUQvXkaWofuPinZho=','2023-06-07 18:35:18.043768',0,'phatle1','','','daiphatle123@gmail.com',0,1,'2023-06-07 17:16:07.465919'),(13,'pbkdf2_sha256$260000$IYFzjLmji2IlxJ098GD26T$T/VZ6brYmnfIRn71Z2DOw0qMLv11qRmM5VLo4GNctvE=',NULL,0,'phatle2','','','daiphatle123@gmail.com',0,1,'2023-06-07 18:35:02.079235');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (6,'2023-05-24 07:52:36.042390','3','Sofa',1,'[{\"added\": {}}]',10,2),(7,'2023-05-24 07:57:29.791375','3','Sofa',3,'',10,2),(8,'2023-05-24 07:57:41.578067','4','Giường',1,'[{\"added\": {}}]',10,2),(9,'2023-05-24 08:19:30.303004','4','Giường',3,'',10,2),(10,'2023-05-24 08:19:30.398470','2','Ghế',3,'',10,2),(11,'2023-05-24 08:19:57.990806','5','Bộ bàn ăn',1,'[{\"added\": {}}]',10,2),(12,'2023-05-24 08:20:13.359986','6','Giường',1,'[{\"added\": {}}]',10,2),(13,'2023-05-24 08:20:26.643510','7','Tủ kệ',1,'[{\"added\": {}}]',10,2),(14,'2023-05-24 08:20:40.691023','8','Sofa',1,'[{\"added\": {}}]',10,2),(15,'2023-05-24 08:20:57.329722','9','Đồ trang trí',1,'[{\"added\": {}}]',10,2),(16,'2023-05-24 08:21:19.169750','10','Đồ dùng nhà bếp',1,'[{\"added\": {}}]',10,2),(17,'2023-05-24 08:24:37.816427','2','Bàn học',1,'[{\"added\": {}}]',7,2),(18,'2023-05-24 08:25:05.716797','2','Bàn học',2,'[{\"changed\": {\"fields\": [\"MoTa\"]}}]',7,2),(19,'2023-05-25 04:46:58.909474','11','Vách trang trí',1,'[{\"added\": {}}]',10,2),(20,'2023-05-25 04:47:17.900571','1','Bàn ăn',3,'',7,2),(21,'2023-05-25 04:47:24.606998','2','Bàn học',3,'',7,2),(22,'2023-05-25 05:03:05.082749','3','bàn sofa kim cương mặt kính',1,'[{\"added\": {}}]',7,2),(23,'2023-05-25 05:06:03.507486','4','bàn sofa mặt đá hình chữ nhật',1,'[{\"added\": {}}]',7,2),(24,'2023-05-25 05:08:39.875679','5','bàn trưng bày',1,'[{\"added\": {}}]',7,2),(25,'2023-05-25 05:11:51.149131','6','bàn sofa đôi vuông mặt đá',1,'[{\"added\": {}}]',7,2),(26,'2023-05-25 05:13:22.654463','7','bàn sofa hình oval',1,'[{\"added\": {}}]',7,2),(27,'2023-05-25 05:16:15.571687','8','bàn trà nhập khẩu cao cấp',1,'[{\"added\": {}}]',7,2),(28,'2023-05-25 05:19:35.719480','9','bộ bàn 4 ghế monet',1,'[{\"added\": {}}]',7,2),(29,'2023-05-25 05:21:34.479135','10','bộ bàn 4 ghế Elbow',1,'[{\"added\": {}}]',7,2),(30,'2023-05-25 05:24:05.097048','11','bộ bàn ăn nhập khẩu CERA',1,'[{\"added\": {}}]',7,2),(31,'2023-05-25 05:26:19.288108','12','bàn ăn mặt đá nhập khẩu',1,'[{\"added\": {}}]',7,2),(32,'2023-05-25 05:28:21.853175','13','bàn ăn thông minh (vân gỗ sồi)',1,'[{\"added\": {}}]',7,2),(33,'2023-05-25 05:30:07.827867','14','bộ bàn ăn 4 ghế Mina',1,'[{\"added\": {}}]',7,2),(34,'2023-05-25 05:32:11.587398','15','giowfng ngủ gỗ óc chó hiện đại',1,'[{\"added\": {}}]',7,2),(35,'2023-05-25 05:33:36.894534','16','giường ngủ có ngăn kéo đuôi',1,'[{\"added\": {}}]',7,2),(36,'2023-05-25 05:35:30.435715','15','giường ngủ gỗ óc chó hiện đại',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(37,'2023-05-25 05:37:46.748126','17','giường bọc nềm CECICA',1,'[{\"added\": {}}]',7,2),(38,'2023-05-25 05:39:43.579496','18','giường ngủ có ngăn kéo hông',1,'[{\"added\": {}}]',7,2),(39,'2023-05-25 05:42:45.714042','19','kệ tủ tài liệu Classic',1,'[{\"added\": {}}]',7,2),(40,'2023-05-25 05:44:49.130734','20','tủ kệ tivi gỗ HOMO',1,'[{\"added\": {}}]',7,2),(41,'2023-05-25 05:46:23.751619','21','tủ kệ TV gỗ Tần Bì',1,'[{\"added\": {}}]',7,2),(42,'2023-05-25 05:48:45.302813','22','kệ sách để sàn hiện đại',1,'[{\"added\": {}}]',7,2),(43,'2023-05-25 05:50:24.298650','23','kệ trang trí hình ô vuông',1,'[{\"added\": {}}]',7,2),(44,'2023-05-25 05:52:18.796038','24','vách gương tường phòng ăn',1,'[{\"added\": {}}]',7,2),(45,'2023-05-25 05:54:21.993522','25','vách ốp tường phòng thờ',1,'[{\"added\": {}}]',7,2),(46,'2023-05-25 05:56:01.300105','26','lam gỗ phòng khách',1,'[{\"added\": {}}]',7,2),(47,'2023-05-25 05:56:51.447210','17','giường bọc nệm CECICA',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(48,'2023-05-25 06:01:16.840604','27','sofa băng',1,'[{\"added\": {}}]',7,2),(49,'2023-05-25 06:03:20.114677','28','sofa stile Hàn Quốc xinh xắn',1,'[{\"added\": {}}]',7,2),(50,'2023-05-25 19:11:14.989462','2','2',3,'',11,2),(51,'2023-05-25 19:11:16.369117','1','1',3,'',11,2),(52,'2023-05-25 19:11:23.973471','2','OrderItem object (2)',3,'',12,2),(53,'2023-05-25 19:11:24.979812','1','OrderItem object (1)',3,'',12,2),(54,'2023-05-25 19:12:54.758409','28','sofa stile Hàn Quốc xinh xắn',2,'[{\"changed\": {\"fields\": [\"GiaSP\"]}}]',7,2),(55,'2023-05-25 19:13:16.921874','28','sofa stile Hàn Quốc xinh xắn',2,'[{\"changed\": {\"fields\": [\"GiaSP\"]}}]',7,2),(56,'2023-05-25 19:37:11.785529','1','Blog object (1)',1,'[{\"added\": {}}]',13,2),(57,'2023-05-25 19:47:52.874692','1','Blog object (1)',2,'[]',13,2),(58,'2023-05-25 19:48:16.243511','2','Blog object (2)',1,'[{\"added\": {}}]',13,2),(59,'2023-05-25 21:35:03.400794','3','Blog object (3)',1,'[{\"added\": {}}]',13,2),(60,'2023-05-25 21:35:34.048193','4','Blog object (4)',1,'[{\"added\": {}}]',13,2),(61,'2023-05-25 21:35:58.442552','4','Blog object (4)',2,'[{\"changed\": {\"fields\": [\"TieuDe\"]}}]',13,2),(62,'2023-05-26 06:27:42.951040','6','Blog object (6)',3,'',13,2),(63,'2023-05-26 06:27:47.188337','5','Blog object (5)',3,'',13,2),(64,'2023-05-28 16:29:16.913026','1','LienHe object (1)',1,'[{\"added\": {}}]',14,2),(65,'2023-05-28 16:29:42.833009','1','LienHe object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',14,2),(66,'2023-05-28 16:33:57.648712','1','LienHe object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',14,2),(67,'2023-05-28 16:37:55.289348','1','LienHe object (1)',2,'[]',14,2),(68,'2023-05-28 16:38:27.035830','1','LienHe object (1)',2,'[]',14,2),(69,'2023-05-28 16:52:43.806652','1','TuVanNoiThat object (1)',1,'[{\"added\": {}}]',15,2),(70,'2023-05-28 16:55:41.468298','1','TuVanNoiThat object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',15,2),(71,'2023-05-29 08:45:05.690807','1','Base object (1)',1,'[{\"added\": {}}]',16,2),(72,'2023-05-29 08:46:52.628822','1','Base object (1)',2,'[{\"changed\": {\"fields\": [\"HoTroKhachHang\"]}}]',16,2),(73,'2023-05-29 08:49:32.370193','1','Base object (1)',2,'[]',16,2),(74,'2023-05-29 09:18:17.797238','1','Base object (1)',2,'[{\"changed\": {\"fields\": [\"LienHeChungToi\", \"DiaChi Khac\"]}}]',16,2),(75,'2023-05-29 09:19:25.263338','1','Base object (1)',2,'[{\"changed\": {\"fields\": [\"DiaChi Khac\"]}}]',16,2),(76,'2023-05-29 09:19:53.724992','1','Base object (1)',2,'[{\"changed\": {\"fields\": [\"DiaChi Khac\"]}}]',16,2),(77,'2023-05-29 09:20:13.340551','1','Base object (1)',2,'[{\"changed\": {\"fields\": [\"DiaChi Khac\"]}}]',16,2),(78,'2023-05-29 09:20:58.920781','1','Base object (1)',2,'[{\"changed\": {\"fields\": [\"HoTroKhachHang\"]}}]',16,2),(79,'2023-05-29 09:22:56.146550','1','Base object (1)',2,'[]',16,2),(80,'2023-05-29 09:23:09.993666','1','Base object (1)',2,'[]',16,2),(81,'2023-05-29 09:23:40.537508','1','Base object (1)',2,'[{\"changed\": {\"fields\": [\"HoTroKhachHang\"]}}]',16,2),(82,'2023-05-29 09:25:32.891512','1','Base object (1)',2,'[{\"changed\": {\"fields\": [\"SDT\"]}}]',16,2),(83,'2023-05-29 09:27:46.297517','1','Base object (1)',2,'[{\"changed\": {\"fields\": [\"Logo web\"]}}]',16,2),(84,'2023-05-29 09:35:14.833535','1','Base object (1)',2,'[{\"changed\": {\"fields\": [\"Logo web\"]}}]',16,2),(85,'2023-05-29 09:35:50.297191','1','Base object (1)',2,'[{\"changed\": {\"fields\": [\"Logo web\"]}}]',16,2),(86,'2023-05-29 10:12:44.406502','1','Carousel_Home object (1)',1,'[{\"added\": {}}]',17,2),(87,'2023-05-29 10:13:08.941882','2','Carousel_Home object (2)',1,'[{\"added\": {}}]',17,2),(88,'2023-05-29 10:13:41.894149','3','Carousel_Home object (3)',1,'[{\"added\": {}}]',17,2),(89,'2023-05-29 10:20:04.971049','4','Carousel_Home object (4)',1,'[{\"added\": {}}]',17,2),(90,'2023-05-29 10:20:15.025246','1','Carousel_Home object (1)',3,'',17,2),(91,'2023-05-29 10:31:15.689491','4','Carousel_Home object (4)',3,'',17,2),(92,'2023-05-29 10:31:39.879722','3','Carousel_Home object (3)',2,'[{\"changed\": {\"fields\": [\"Img active\"]}}]',17,2),(93,'2023-05-29 10:59:46.395851','1','Home object (1)',1,'[{\"added\": {}}]',18,2),(94,'2023-05-29 11:00:57.203821','1','Home object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',18,2),(95,'2023-05-29 11:01:41.749073','1','Home object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',18,2),(96,'2023-05-29 11:02:07.030116','1','Home object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',18,2),(97,'2023-05-29 11:02:22.865978','1','Home object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',18,2),(98,'2023-05-29 11:03:59.385731','1','Home object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',18,2),(99,'2023-05-29 11:05:39.170468','1','Home object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',18,2),(100,'2023-05-29 11:06:02.786147','1','Home object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',18,2),(101,'2023-05-29 11:06:14.219393','1','Home object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',18,2),(102,'2023-05-29 11:14:29.926723','1','Home object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',18,2),(103,'2023-05-29 11:14:49.832076','1','Home object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',18,2),(104,'2023-05-29 11:15:05.047556','1','Home object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',18,2),(105,'2023-05-29 11:27:38.528264','1','LienHe object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',14,2),(106,'2023-05-29 11:28:20.019482','1','LienHe object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',14,2),(107,'2023-05-29 11:30:45.942696','1','LienHe object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',14,2),(108,'2023-05-29 16:58:21.605342','4','Blog object (4)',2,'[{\"changed\": {\"fields\": [\"LuotLike\", \"Like\"]}}]',13,2),(109,'2023-05-29 18:26:18.762444','4','Blog object (4)',2,'[{\"changed\": {\"fields\": [\"Like\"]}}]',13,2),(110,'2023-05-29 18:52:25.647287','4','Blog object (4)',3,'',13,2),(111,'2023-05-29 18:52:26.457068','3','Blog object (3)',3,'',13,2),(112,'2023-05-29 18:52:26.593170','2','Blog object (2)',3,'',13,2),(113,'2023-05-29 18:52:26.678797','1','Blog object (1)',3,'',13,2),(114,'2023-05-29 18:52:53.621402','7','Blog object (7)',1,'[{\"added\": {}}]',13,2),(115,'2023-05-30 10:53:28.756814','7','Blog object (7)',3,'',13,2),(116,'2023-05-30 12:46:41.170804','8','Blog object (8)',1,'[{\"added\": {}}]',13,2),(117,'2023-05-30 12:51:05.289530','8','Blog object (8)',2,'[{\"changed\": {\"fields\": [\"Like\"]}}]',13,2),(118,'2023-05-30 12:53:18.696526','8','Blog object (8)',3,'',13,2),(119,'2023-05-30 12:53:33.186995','9','Blog object (9)',1,'[{\"added\": {}}]',13,2),(120,'2023-05-30 14:22:14.614754','8','OrderItem object (8)',3,'',12,2),(121,'2023-05-30 14:22:14.681418','6','OrderItem object (6)',3,'',12,2),(122,'2023-05-30 14:22:14.749696','5','OrderItem object (5)',3,'',12,2),(123,'2023-05-30 14:22:20.910132','4','4',3,'',11,2),(124,'2023-05-30 14:22:21.011724','3','3',3,'',11,2),(125,'2023-05-30 14:48:46.280480','1','TuVanNoiThat object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',15,2),(126,'2023-05-30 14:50:02.233143','1','TuVanNoiThat object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',15,2),(127,'2023-05-30 14:50:21.084226','1','TuVanNoiThat object (1)',2,'[]',15,2),(128,'2023-05-30 14:50:35.586767','1','TuVanNoiThat object (1)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',15,2),(129,'2023-06-01 06:46:59.367410','10','Blog object (10)',1,'[{\"added\": {}}]',13,2),(130,'2023-06-01 06:47:04.065619','10','Blog object (10)',2,'[]',13,2),(131,'2023-06-01 06:47:10.709078','10','Blog object (10)',3,'',13,2),(132,'2023-06-01 06:47:10.776499','9','Blog object (9)',3,'',13,2),(133,'2023-06-01 06:47:22.181831','11','Blog object (11)',1,'[{\"added\": {}}]',13,2),(134,'2023-06-01 22:17:29.378144','12','aa',1,'[{\"added\": {}}]',10,2),(135,'2023-06-01 22:29:10.717944','13','bb',1,'[{\"added\": {}}]',10,2),(136,'2023-06-01 22:29:39.653125','14','cc',1,'[{\"added\": {}}]',10,2),(137,'2023-06-01 22:33:22.201629','15','ee',1,'[{\"added\": {}}]',10,2),(138,'2023-06-01 22:33:29.320056','16','fff',1,'[{\"added\": {}}]',10,2),(139,'2023-06-01 22:33:34.448160','17','gg',1,'[{\"added\": {}}]',10,2),(140,'2023-06-01 22:42:59.425701','17','gg',3,'',10,2),(141,'2023-06-01 22:42:59.629406','16','fff',3,'',10,2),(142,'2023-06-01 22:42:59.765542','15','ee',3,'',10,2),(143,'2023-06-01 22:42:59.834027','14','cc',3,'',10,2),(144,'2023-06-01 22:42:59.936643','13','bb',3,'',10,2),(145,'2023-06-01 22:43:00.039059','12','aa',3,'',10,2),(146,'2023-06-02 00:48:24.080957','11','Blog object (11)',2,'[{\"changed\": {\"fields\": [\"Like\"]}}]',13,2),(147,'2023-06-05 15:31:21.638279','29','Bàn học',1,'[{\"added\": {}}]',7,2),(148,'2023-06-05 15:38:41.582929','29','Bàn học',3,'',7,2),(149,'2023-06-06 11:05:36.824311','3','phat',3,'',4,2),(150,'2023-06-06 11:05:36.900729','4','phatle',3,'',4,2),(151,'2023-06-06 11:05:36.968896','5','phatle1',3,'',4,2),(152,'2023-06-06 11:05:37.037097','6','phatle2',3,'',4,2),(153,'2023-06-06 11:05:37.139234','7','phatle3',3,'',4,2),(154,'2023-06-06 11:05:37.241682','8','phatle4',3,'',4,2),(155,'2023-06-06 11:32:56.226193','6','6',3,'',11,2),(156,'2023-06-06 12:03:35.093480','7','7',3,'',11,2),(157,'2023-06-06 12:03:35.546469','5','5',3,'',11,2),(158,'2023-06-06 12:19:37.724983','9','9',3,'',11,2),(159,'2023-06-06 12:19:37.790443','8','8',3,'',11,2),(160,'2023-06-06 12:21:33.535646','11','11',3,'',11,2),(161,'2023-06-06 12:21:38.472955','10','10',3,'',11,2),(162,'2023-06-07 08:26:26.456335','13','13',3,'',11,2),(163,'2023-06-07 08:36:28.293269','14','14',3,'',11,2),(164,'2023-06-07 09:09:25.426405','27','27',3,'',11,2),(165,'2023-06-07 09:09:25.510720','15','15',3,'',11,2),(166,'2023-06-07 09:37:15.126095','32','32',3,'',11,2),(167,'2023-06-07 09:37:15.195763','29','29',3,'',11,2),(168,'2023-06-07 09:38:16.112533','35','35',3,'',11,2),(169,'2023-06-07 09:38:16.345657','34','34',3,'',11,2),(170,'2023-06-07 09:40:11.298635','38','38',3,'',11,2),(171,'2023-06-07 09:40:11.455772','37','37',3,'',11,2),(172,'2023-06-07 09:45:04.794751','40','40',3,'',11,2),(173,'2023-06-07 09:45:05.085283','39','39',3,'',11,2),(174,'2023-06-07 09:48:04.871151','43','43',3,'',11,2),(175,'2023-06-07 09:48:05.026991','42','42',3,'',11,2),(176,'2023-06-07 09:48:05.095298','41','41',3,'',11,2),(177,'2023-06-07 09:50:52.864526','45','45',3,'',11,2),(178,'2023-06-07 09:50:53.021011','44','44',3,'',11,2),(179,'2023-06-07 10:00:58.997857','47','47',3,'',11,2),(180,'2023-06-07 10:00:59.073594','46','46',3,'',11,2),(181,'2023-06-07 10:01:26.349924','49','49',3,'',11,2),(182,'2023-06-07 10:01:26.425974','48','48',3,'',11,2),(183,'2023-06-07 10:03:44.996187','51','51',3,'',11,2),(184,'2023-06-07 10:03:45.156217','50','50',3,'',11,2),(185,'2023-06-07 10:22:38.036707','55','55',3,'',11,2),(186,'2023-06-07 10:22:38.452027','54','54',3,'',11,2),(187,'2023-06-07 10:22:39.318925','53','53',3,'',11,2),(188,'2023-06-07 10:22:39.540104','52','52',3,'',11,2),(189,'2023-06-07 10:23:13.453083','57','57',3,'',11,2),(190,'2023-06-07 10:23:13.610267','56','56',3,'',11,2),(191,'2023-06-07 10:24:42.281470','58','58',3,'',11,2),(192,'2023-06-07 10:25:06.091643','60','60',3,'',11,2),(193,'2023-06-07 10:25:07.521564','59','59',3,'',11,2),(194,'2023-06-07 10:27:51.187918','62','62',3,'',11,2),(195,'2023-06-07 10:27:51.256381','61','61',3,'',11,2),(196,'2023-06-07 10:28:55.000693','64','64',3,'',11,2),(197,'2023-06-07 10:28:55.253719','63','63',3,'',11,2),(198,'2023-06-07 10:29:41.847518','66','66',3,'',11,2),(199,'2023-06-07 10:29:41.933564','65','65',3,'',11,2),(200,'2023-06-07 10:29:58.685661','68','68',3,'',11,2),(201,'2023-06-07 10:29:58.762731','67','67',3,'',11,2),(202,'2023-06-07 10:31:05.466182','70','70',3,'',11,2),(203,'2023-06-07 10:31:06.034031','69','69',3,'',11,2),(204,'2023-06-07 10:31:54.426870','71','71',3,'',11,2),(205,'2023-06-07 10:33:13.178597','73','73',3,'',11,2),(206,'2023-06-07 10:33:13.527917','72','72',3,'',11,2),(207,'2023-06-07 10:33:23.131529','74','74',3,'',11,2),(208,'2023-06-07 10:34:16.326663','76','76',3,'',11,2),(209,'2023-06-07 10:34:16.852988','75','75',3,'',11,2),(210,'2023-06-07 10:34:28.145663','77','77',3,'',11,2),(211,'2023-06-07 10:35:48.937391','79','79',3,'',11,2),(212,'2023-06-07 10:35:49.085529','78','78',3,'',11,2),(213,'2023-06-07 10:37:32.269853','80','80',3,'',11,2),(214,'2023-06-07 11:32:51.560828','81','81',3,'',11,2),(215,'2023-06-07 11:34:55.756531','11','Blog object (11)',3,'',13,2),(216,'2023-06-07 11:35:57.882890','12','Blog object (12)',1,'[{\"added\": {}}]',13,2),(217,'2023-06-07 11:37:43.804826','13','Blog object (13)',1,'[{\"added\": {}}]',13,2),(218,'2023-06-07 11:37:48.718159','13','Blog object (13)',2,'[{\"changed\": {\"fields\": [\"Like\"]}}]',13,2),(219,'2023-06-07 11:41:11.236998','14','Blog object (14)',1,'[{\"added\": {}}]',13,2),(220,'2023-06-07 11:41:48.467519','14','Blog object (14)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',13,2),(221,'2023-06-07 11:42:06.324118','14','Blog object (14)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',13,2),(222,'2023-06-07 11:42:25.267667','14','Blog object (14)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',13,2),(223,'2023-06-07 11:42:36.726998','14','Blog object (14)',2,'[{\"changed\": {\"fields\": [\"NoiDung\"]}}]',13,2),(224,'2023-06-07 11:44:07.186126','15','Blog object (15)',1,'[{\"added\": {}}]',13,2),(225,'2023-06-07 11:44:12.461268','15','Blog object (15)',2,'[{\"changed\": {\"fields\": [\"Like\"]}}]',13,2),(226,'2023-06-07 13:29:52.706239','84','84',3,'',11,2),(227,'2023-06-07 13:29:52.799377','83','83',3,'',11,2),(228,'2023-06-07 13:29:52.902189','82','82',3,'',11,2),(229,'2023-06-07 17:08:29.795884','9','phat',3,'',4,2),(230,'2023-06-07 17:21:12.611670','87','87',3,'',11,2),(231,'2023-06-07 17:21:12.771158','86','86',3,'',11,2),(232,'2023-06-07 17:21:13.398055','85','85',3,'',11,2),(233,'2023-06-07 17:32:06.175399','89','89',3,'',11,2),(234,'2023-06-07 17:32:06.332905','88','88',3,'',11,2),(235,'2023-06-07 18:42:00.388585','30','Bàn học',1,'[{\"added\": {}}]',7,2),(236,'2023-06-07 18:42:45.310335','30','Bàn học',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,2),(237,'2023-06-07 18:43:10.105050','30','Bàn học',3,'',7,2),(238,'2023-06-08 01:33:30.098116','28','Sofa stile Hàn Quốc xinh xắn',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(239,'2023-06-08 01:34:05.943160','27','Sofa băng',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(240,'2023-06-08 01:34:14.518893','26','Lam gỗ phòng khách',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(241,'2023-06-08 01:34:30.291826','25','Vách ốp tường phòng thờ',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(242,'2023-06-08 01:34:38.935015','24','vách gương tường phòng ăV',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(243,'2023-06-08 01:34:56.139016','24','Vách gương tường phòng ăV',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(244,'2023-06-08 01:35:03.785859','23','Kệ trang trí hình ô vuông',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(245,'2023-06-08 01:35:15.335307','22','Kệ sách để sàn hiện đại',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(246,'2023-06-08 01:35:25.504159','21','Tủ kệ TV gỗ Tần Bì',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(247,'2023-06-08 01:35:34.253421','20','Tủ kệ tivi gỗ HOMO',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(248,'2023-06-08 01:35:44.905058','19','Kệ tủ tài liệu Classic',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(249,'2023-06-08 01:36:09.742046','18','Giường ngủ có ngăn kéo hông',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(250,'2023-06-08 01:36:21.352590','17','Giường bọc nệm CECICA',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(251,'2023-06-08 01:36:32.203462','16','Giường ngủ có ngăn kéo đuôi',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(252,'2023-06-08 01:39:09.806080','15','Giường ngủ gỗ óc chó hiện đại',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(253,'2023-06-08 01:39:17.655754','14','Bộ bàn ăn 4 ghế Mina',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(254,'2023-06-08 01:40:44.638235','13','Bàn ăn thông minh (vân gỗ sồi)',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(255,'2023-06-08 01:40:58.112720','12','Bàn ăn mặt đá nhập khẩu',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(256,'2023-06-08 01:41:17.801466','11','Bộ bàn ăn nhập khẩu CERA',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(257,'2023-06-08 01:41:30.918875','10','Bộ bàn 4 ghế Elbow',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(258,'2023-06-08 01:41:50.995210','9','Bộ bàn 4 ghế monet',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(259,'2023-06-08 01:41:59.340763','8','Bàn trà nhập khẩu cao cấp',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(260,'2023-06-08 01:42:08.421847','7','Bàn sofa hình oval',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(261,'2023-06-08 01:42:17.247691','6','Bàn sofa đôi vuông mặt đá',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(262,'2023-06-08 01:42:27.399350','5','Bàn trưng bày',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(263,'2023-06-08 01:42:35.158477','4','Bàn sofa mặt đá hình chữ nhật',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(264,'2023-06-08 01:42:48.830333','3','Bàn sofa kim cương mặt kính',2,'[{\"changed\": {\"fields\": [\"TenSP\"]}}]',7,2),(265,'2023-06-15 16:00:39.713633','6','Comment object (6)',3,'',8,2),(266,'2023-06-15 16:00:39.784031','5','Comment object (5)',3,'',8,2),(267,'2023-06-15 16:00:39.886114','3','Comment object (3)',3,'',8,2),(268,'2023-06-15 16:00:41.032012','2','Comment object (2)',3,'',8,2),(269,'2023-06-15 16:00:41.253204','1','Comment object (1)',3,'',8,2),(270,'2023-06-15 16:13:27.178909','7','Comment object (7)',3,'',8,2),(271,'2023-06-15 16:15:00.075853','8','Comment object (8)',3,'',8,2),(272,'2023-06-15 16:31:17.506414','12','Comment object (12)',3,'',8,2),(273,'2023-06-15 16:31:17.615893','11','Comment object (11)',3,'',8,2),(274,'2023-06-15 16:31:17.813728','10','Comment object (10)',3,'',8,2),(275,'2023-06-15 16:31:17.881955','9','Comment object (9)',3,'',8,2),(276,'2023-06-15 16:34:42.427453','13','Comment object (13)',2,'[{\"changed\": {\"fields\": [\"Check\"]}}]',8,2),(277,'2023-06-15 16:35:26.226834','17','Comment object (17)',3,'',8,2),(278,'2023-06-15 16:35:26.698093','16','Comment object (16)',3,'',8,2),(279,'2023-06-15 16:35:26.766167','15','Comment object (15)',3,'',8,2),(280,'2023-06-15 16:35:26.868499','14','Comment object (14)',3,'',8,2),(281,'2023-06-15 16:35:27.102234','13','Comment object (13)',3,'',8,2),(282,'2023-06-15 16:41:53.053786','19','Comment object (19)',3,'',8,2),(283,'2023-06-15 16:41:53.123802','18','Comment object (18)',3,'',8,2),(284,'2023-06-15 17:51:46.735040','23','Comment object (23)',3,'',8,2),(285,'2023-06-15 17:51:46.943559','22','Comment object (22)',3,'',8,2),(286,'2023-06-15 17:51:47.011694','21','Comment object (21)',3,'',8,2),(287,'2023-06-15 17:51:47.124974','20','Comment object (20)',3,'',8,2),(288,'2023-06-15 17:53:31.190803','24','Comment object (24)',2,'[{\"changed\": {\"fields\": [\"Check\"]}}]',8,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(16,'app_ban_hang','base'),(13,'app_ban_hang','blog'),(17,'app_ban_hang','carousel_home'),(8,'app_ban_hang','comment'),(11,'app_ban_hang','donhang'),(18,'app_ban_hang','home'),(14,'app_ban_hang','lienhe'),(10,'app_ban_hang','loaisp'),(12,'app_ban_hang','orderitem'),(7,'app_ban_hang','sanpham'),(9,'app_ban_hang','thongtinnguoimua'),(15,'app_ban_hang','tuvannoithat'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-05-23 11:19:23.422846'),(2,'auth','0001_initial','2023-05-23 11:20:11.682377'),(3,'admin','0001_initial','2023-05-23 11:20:23.906848'),(4,'admin','0002_logentry_remove_auto_add','2023-05-23 11:20:24.248866'),(5,'admin','0003_logentry_add_action_flag_choices','2023-05-23 11:20:24.499750'),(6,'app_ban_hang','0001_initial','2023-05-23 11:20:37.908500'),(7,'app_ban_hang','0002_home','2023-05-23 11:20:40.198015'),(8,'app_ban_hang','0003_auto_20230516_0833','2023-05-23 11:20:44.319207'),(9,'app_ban_hang','0004_sanpham_loaisp','2023-05-23 11:20:46.298444'),(10,'app_ban_hang','0005_customer_oder_oderitem_thongtinnguoimua','2023-05-23 11:21:21.489186'),(11,'app_ban_hang','0006_auto_20230517_1545','2023-05-23 11:21:40.022981'),(12,'app_ban_hang','0007_alter_sanpham_image','2023-05-23 11:21:40.330152'),(13,'app_ban_hang','0008_alter_order_complete','2023-05-23 11:21:40.579274'),(14,'app_ban_hang','0009_auto_20230518_0652','2023-05-23 11:21:44.456769'),(15,'app_ban_hang','0010_sanpham_mota','2023-05-23 11:21:45.267761'),(16,'app_ban_hang','0011_customer_sdt','2023-05-23 11:21:47.313713'),(17,'app_ban_hang','0012_auto_20230519_0515','2023-05-23 11:22:10.644167'),(18,'app_ban_hang','0013_category','2023-05-23 11:22:20.025871'),(19,'app_ban_hang','0014_alter_category_sub_category','2023-05-23 11:22:20.274433'),(20,'app_ban_hang','0015_sanpham_category','2023-05-23 11:22:34.263559'),(21,'app_ban_hang','0016_remove_sanpham_loaisp','2023-05-23 11:22:35.942420'),(22,'app_ban_hang','0017_sanpham_loaisp','2023-05-23 11:22:37.800929'),(23,'app_ban_hang','0018_rename_category_loaisp','2023-05-23 11:22:54.917886'),(24,'app_ban_hang','0019_rename_order_donhang','2023-05-23 11:23:11.963758'),(25,'app_ban_hang','0020_rename_orderitem_dathang','2023-05-23 11:23:14.535718'),(26,'app_ban_hang','0021_rename_dathang_orderitems','2023-05-23 11:23:16.403265'),(27,'app_ban_hang','0022_rename_orderitems_orderitem','2023-05-23 11:23:18.151727'),(28,'contenttypes','0002_remove_content_type_name','2023-05-23 11:23:24.319227'),(29,'auth','0002_alter_permission_name_max_length','2023-05-23 11:23:30.602211'),(30,'auth','0003_alter_user_email_max_length','2023-05-23 11:23:31.132081'),(31,'auth','0004_alter_user_username_opts','2023-05-23 11:23:31.516250'),(32,'auth','0005_alter_user_last_login_null','2023-05-23 11:23:37.793958'),(33,'auth','0006_require_contenttypes_0002','2023-05-23 11:23:38.568574'),(34,'auth','0007_alter_validators_add_error_messages','2023-05-23 11:23:38.829980'),(35,'auth','0008_alter_user_username_max_length','2023-05-23 11:23:48.428137'),(36,'auth','0009_alter_user_last_name_max_length','2023-05-23 11:23:55.675530'),(37,'auth','0010_alter_group_name_max_length','2023-05-23 11:23:57.249926'),(38,'auth','0011_update_proxy_permissions','2023-05-23 11:23:57.493471'),(39,'auth','0012_alter_user_first_name_max_length','2023-05-23 11:24:03.997660'),(40,'sessions','0001_initial','2023-05-23 11:24:11.076830'),(41,'app_ban_hang','0023_remove_sanpham_loaisp','2023-05-23 11:44:13.853612'),(42,'app_ban_hang','0024_blog','2023-05-25 19:35:42.478705'),(43,'app_ban_hang','0025_lienhe','2023-05-28 16:27:17.027564'),(44,'app_ban_hang','0026_tuvannoithat','2023-05-28 16:51:18.639822'),(45,'app_ban_hang','0027_base','2023-05-28 17:33:40.576581'),(46,'app_ban_hang','0028_alter_base_sdt','2023-05-28 17:37:53.878282'),(47,'app_ban_hang','0029_auto_20230529_0841','2023-05-29 08:41:22.270654'),(48,'app_ban_hang','0030_auto_20230529_0913','2023-05-29 09:13:48.941262'),(49,'app_ban_hang','0031_sanpham_luotmua','2023-05-29 09:54:09.345246'),(50,'app_ban_hang','0032_carousel_home','2023-05-29 10:11:47.223336'),(51,'app_ban_hang','0033_carousel_home_img_active','2023-05-29 10:18:53.031442'),(52,'app_ban_hang','0034_home','2023-05-29 10:38:24.016122'),(53,'app_ban_hang','0035_blog_like','2023-05-29 16:56:50.527522'),(54,'app_ban_hang','0036_alter_blog_like','2023-05-29 18:17:33.518628'),(55,'app_ban_hang','0037_auto_20230530_1054','2023-05-30 10:54:23.798193'),(56,'app_ban_hang','0038_alter_blog_like','2023-06-01 06:43:31.440795'),(57,'app_ban_hang','0039_alter_blog_like','2023-06-01 06:46:51.206240'),(58,'app_ban_hang','0040_alter_blog_like','2023-06-02 00:49:47.631729'),(59,'app_ban_hang','0041_comment_check','2023-06-15 16:14:06.148954');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('07al4bm7c9zdydz4b7sdbbgywzwosvn9','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q2Ibc:Jozy3GCcsvGE1Z7uVtemQ1Z3UByuyUIkt8i8pL4kgjU','2023-06-08 21:34:44.640037'),('0dfpod52rsd3pnrkh0j0xqzemcmw3uni','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1qAsZv:edj5y03dEGk3AEIxFGGgWiZZUp0jEKC0Fmp29PeAD9A','2023-07-02 13:36:27.751417'),('1pelfdizuqfdm0kaih80inxqp1i4vuje','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3yrz:0ubSmaVjZhH-fxe9v_Iavspflg3mWo6JQHS6Xnws9sI','2023-06-13 12:54:35.219744'),('2083kuk3zyk3a4ssg1poesobsmg4vozi','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q2Hl9:C2WcsAi8i0tv1o_IQHt8N-DCAOXC2UjC9pMSHqrJOLY','2023-06-08 20:40:31.176316'),('21dvtct4xnb0zdr19nctv3qulpzxj6pk','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q6UUo:xxm6NYEIO_FJAZeSwfJqoEIc4u8AU7e3SUCbayO-qdE','2023-06-20 11:05:02.373523'),('27n2azrm0xp8hghhek7435r3b5gsqrym','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q1R4c:dNnP-ESR21N9-E73i93TK6KIvyZsa1YvLVp_8ARtdV8','2023-06-06 12:25:06.675996'),('2x1ptkyfd8jqkpc5bs4o575yjw1d15f3','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3fpd:kYpJ3GpgsDN7m82nzgVVx9A1OPY8P8XPzJdWcdaZbV0','2023-06-12 16:34:53.007767'),('2x52z8astr1gc44u695okc1c9zfhsamt','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q2GMV:vs7b3zMcSM1YqU7AeHqxMcbNPsBmJQThleiSb_oI_uY','2023-06-08 19:10:59.510968'),('3u53ftp73s2zmptcyu1kbojq87debxye','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q6CQC:omwxoyNE9bMShO1akRiaBTyPmhkpKJwqM_JAZzfnvEo','2023-06-19 15:47:04.088071'),('560l8tslb03tjzyjhrcsxpx5bqgeb0ln','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q4c3R:z52deL0Xy1dvM7GWSfH4xrphImdj-Z2JYTO59YJQiZU','2023-06-15 06:45:01.910089'),('5ddpo58jpa7vdhkaisxw2ftwxg2errk1','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3fCb:rb0NGbUBLASHvbY7JGdjOopfrhxJHInecIyPkoD8y8c','2023-06-12 15:54:33.042214'),('5q3ribjaf8cazj18r55vavk0xo0n3qeq','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3yHF:GAy7_syF0We1QBUXDsNs6_X7yPKar_tRZfT_0s0ILtE','2023-06-13 12:16:37.219925'),('5s4ub3mo82xmqfxe43p8rkqk2nn8bdpr','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3GxO:plAOYZDO6NQPJmQk9ycSnkQU49TA1LpNHj-re0fV_bY','2023-06-11 14:01:14.295331'),('5wdlw3pt0ibch97y7q3ln6np1bk9w8mj','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3KK5:2P9W4uGjgIRD97tQfJf5SIJbJUKU0BcoMj8eZpOq-sU','2023-06-11 17:36:53.843020'),('63r2gjlx81n1hzivv8zvkub4vbh4m5j9','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q1RO6:N6YpsUMYCggFwUQdyYRVJtnI-LIP5ohdzqcqfGK1lDE','2023-06-06 12:45:14.585405'),('6cl42hm96fouaz09o925sely6007lemj','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q6oTj:t3k-DlArAfYYBSeiImcUHOVTEoVB1UalXnRFB_FlARk','2023-06-21 08:25:15.285326'),('6xmzuz11z5sy2ivuhmtqwhqm3hcpkld3','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q76D9:a_u3P3cBMZyyaMb3YMNiL5xgZQT_OXUwO9wQFMHb3jk','2023-06-22 03:21:19.321173'),('7v3gzog8dyobr80u1va2wgg2y1nr0nou','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q1RMM:HOUmS8UvpSVIT5yDSwQzm7PzOV6wONaw9pfEacBqTno','2023-06-06 12:43:26.404623'),('8ribbo3ksktfxhixzdfnau813djutx9k','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q2GWb:gMcDH0_knlBSi8-a2e_p9nBE9b-VbpIhvIi52iUZbHY','2023-06-08 19:21:25.511686'),('8xf12i4cfm4j3p67w8uw84j00zm4j7p6','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3eFe:ZsJ4kefGyNpABgk1kYs0cc8sfh0vO0iyT5BQMAK0moA','2023-06-12 14:53:38.623112'),('93g56tybb4fpolpa3vfxgzcu7ff5zfvs','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q20TP:RyfqbSQpRKMeSOs2kfr11YGb8KKrnWhvsfViAqlW-sw','2023-06-08 02:13:03.329428'),('9yujpxojlk6yurz39iie0tm3onhex3xd','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q9pFI:OZpgI3HOD_vn13rgNIRl16R18QjXL3zCuzc6vF8Sgjk','2023-06-29 15:50:48.095294'),('abtbtqjdlwp3uljslzttsvvoe8u0x0ko','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q4phV:o4Z2nUqaSOMCkLWUEoiF2OBwifEJXAvASexbLUMc9MI','2023-06-15 21:19:17.537954'),('afnp53h04wy2cxp9g06u77c6c15k5ueb','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3efF:3iVSeDCERNnve1zSV3T8LMuW9LfP2ZSkEFWPh3v9644','2023-06-12 15:20:05.780822'),('an5odjaob9hm5ldhuxeg5ihajic2jj71','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q4cDt:pgk72Anr05kwZ9t0jmCHtq0TohmDNWPTCN370RavWvM','2023-06-15 06:55:49.384197'),('bvc5yno78swlah1npf7vmi1hdp8afsq6','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q9q1O:q3plffFDoskab-cBm0Gc-Xd_miNToeVEcheHoHXdfMc','2023-06-29 16:40:30.286443'),('c3qk7jc42h8biujomstujeqisp9jksmd','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3IGJ:8H-1qEq-y8XGlelTgvomCUvU1L1E5Q8fRNRX_n-mpiM','2023-06-11 15:24:51.397234'),('cmek43sr1by5u2fpk6itvocj1s4u6cid','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3iXz:4Btk_hUkUNYd1UbK47ALvck0NVaZMtq2zI6eKsBATag','2023-06-12 19:28:51.024829'),('cptdj8wuv4oljxbxc69hd0m4ed2flq8o','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3YOU:uB33DAPSaysHTDHQEkPGZB7BEJp0UnpXsdFOWXMCnno','2023-06-12 08:38:22.088050'),('d34w30fcgx2jr9ogib1g9u0f9ycpldt0','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3yj8:cifR-uLq2CdQbKDTsznTR71pkVobfktjcBz3pjlUN8c','2023-06-13 12:45:26.075986'),('dk9d09y349n3b98q1t9vsi4mhqja0m59','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3fAv:qVcykehiEv7P9ZOsgR74gFeduEJfMtJp13GQAxpDMzA','2023-06-12 15:52:49.812386'),('emyr7ja010hiy68idcp4vp1im6f4c7k1','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3GwQ:4fwmaxwfE2VXT6dfeJSpK9nxpDk8wdXiiIuArdYGyeI','2023-06-11 14:00:14.140932'),('fnsvn34cka7scy43doq1yq5kqjftnmmj','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3ygC:dgN7AISSCfyQ0M4T8I69gqak8kQZt-XGaCFr7KyswTM','2023-06-13 12:42:24.073768'),('gagfpsx4w32t4oe90czl7tvefn4vw2bm','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q2b41:_hUJVf32JBT65_DdanvYy6T2jKckHvYoSkArWGJbKoc','2023-06-09 17:17:17.325671'),('gxsoyxjolenlcsgtdufmh6a7djtc25t0','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3yiH:xkIPzZZ3RngT1lL1Wx3d8Dd5kQ9irUg7m5t6SJNbkR4','2023-06-13 12:44:33.163920'),('gze9s7i3g0ynwd9hh5vlgg2mndacdm7k','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q6SG3:Xu-YnlfDS8pxJB4Fex15w8t0uc-9Iic0_6jMg_sDxVs','2023-06-20 08:41:39.954164'),('i42cakom4xig9srhn2ujuhcqobgvhvqq','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q25ea:fsHCGG_6UrdzSv-3BxIp-e3gzjsDl52magCDXWJj66E','2023-06-08 07:44:56.565000'),('j7pv2r9ok5tor5tgjyod3qewdw02s3u2','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q1RG5:mp01_4cY522cPUoGHGUN5PRpONEg3B7CSpwhJ8I4JOQ','2023-06-06 12:36:57.518022'),('jebjqww0q2tvve6vy868mmzohb3jfbw8','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3yJy:JVzmYCnp8BaKkyCwfejMsoJc_NNJkaUaIMY8qNZPOB4','2023-06-13 12:19:26.182812'),('mb06mk2m70gpcc67g85lnvz6yv0oyp0e','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q41cC:pYP7cN-5H48kALxofJkgSRRkBxhue6Cg919dZanqpSM','2023-06-13 15:50:28.315046'),('olgiquyahdupkexxdzce3ko2xr43lca6','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q40uf:j-5JybF6Hp9mkCf7e3tL9WXUFxG5exuiEH0pNB9foQQ','2023-06-13 15:05:29.090657'),('p6h9se70ogy9vtwns72rqsp1vpheebvp','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q22nV:mTx4vuXFdvZ8UXxNAoMeGdPxUEUVMp0igwakvcRR-eU','2023-06-08 04:41:57.389033'),('p72y29weim70lbaf9l0e44bntv8c331k','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q2QvA:nYePAC0nXpeQdgCEBkDrWS-wB2gUnDmOqMC0m3UdSw4','2023-06-09 06:27:28.947136'),('pfal5h8fn0iztq5rcpi3zjbu5d7udcqm','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q6VYP:jBmM_2nh9osRBVFncNTd1OpZmr0N5duQ1CfGDzJdUiI','2023-06-20 12:12:49.147160'),('phv0u4b63nd4u4rcfpxthuzzhaj3ir3f','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q1ROw:M0a4Gif40NnnDZbQ0D01Ga_4UH2JSgsYlTCBZoWl4QA','2023-06-06 12:46:06.518438'),('qofs00yoq9bvho6z49bswkm6wv7ylvi1','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3JoI:yU4VOEq3tRdsX5SIVtefBAsfX5uKGMsRGPxg4Cv1w_g','2023-06-11 17:04:02.112389'),('rnr6ve2rs2rp547fna3ijihrnrobzrnn','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3yfO:MccUOeCm7YsKNJO4j8KQfFK4ZsVTMtjVTYWMLfQqoiQ','2023-06-13 12:41:34.918049'),('rxxnsss97qsv9gqaschaxmnfddprffgb','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q6tEN:SPluEIe7ailzI62G95IbGMWi1KG4F8pM7C5NMCk3vqE','2023-06-21 13:29:43.798061'),('sebkwhau0dua7l2ajp1t1v56slgosmr7','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q25S9:TM3zijuCRn7XmkmthxFpyJlBzQyOYCwqh5oyO7-V5Z0','2023-06-08 07:32:05.292652'),('sfuh4bmpnkmuw47pz2qinrhejps1aqoc','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3eZB:36ZnZB_EFJ-8UE04goI2bfPEaxvHvd_HIfsAvH3E8Eg','2023-06-12 15:13:49.850956'),('tc1a5lgaf6u3d2n2kpm3v670ugbj7day','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q1QXi:rooDunKVpPFJZRFdPgi6Eko-73adPMGM5dH9PzHs5CU','2023-06-06 11:51:06.410154'),('te9o9wit1qkp3sqe17ih0g937gi5syth','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3fUq:n0NEuuDCEgo5SiLFYfUuxHi8nLt7qfHQsd0XaOqW3aM','2023-06-12 16:13:24.396147'),('tt06khi9nsaxsrkkhma63r9qstilotil','.eJxVjEEOwiAQAP_C2ZBdoC316L1vIMsCUjWQlPZk_Lsh6UGvM5N5C0fHnt3R4ubWIK5Ci8sv88TPWLoIDyr3KrmWfVu97Ik8bZNLDfF1O9u_QaaW-5bRM1AaVZiMAVADGGv8EEeCBJwsz4Rak2JLhniCMCNiQh2t9Z5QfL7clzfV:1q3iMx:9sDgFPnnRYYHUzICgPrBKVd-5nVaslhnk28LtlH1wHg','2023-06-12 19:17:27.311845'),('ttw90hh0ox974gzxgn68yvbng122imha','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3ItP:ojtNM9dm1SM0gTLpSUqsFfAHrJddkxgHOclZK3qoWZw','2023-06-11 16:05:15.575511'),('tygos6buwuc992f1ssgw5r38ujwi1sft','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q6wo8:NrCAMvgJbBMgFidgXWYG9ciJV7m0X1sg6Y8lUlLsF_M','2023-06-21 17:18:52.366401'),('urzbohixwzljl99jqr1sp5qs4l3423mj','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q41as:yzZo6DRRhzkcwPn3R97VHtKD6DD6tBMLNtpDeN1hUvs','2023-06-13 15:49:06.107508'),('v4upxbnqnasyjmcpvnif1mt14x2xxdgd','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3eY8:mqUNi1I8-HCMD4n5LfxWQrllt6oV0WYqeYv9LPSec14','2023-06-12 15:12:44.357170'),('va1l1syzszod020b8pabejqt2oprswql','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q6y1k:ToK5dkQCOuWZ749qF07Ua_JNhCEF07FVCCFIZRDS6nc','2023-06-21 18:37:00.712375'),('vbfd37uuv0sekvj5a3u9ve0bqb5he4zd','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q40A1:jTik4Apx1ObBz88lotNG0bW7vIDKhLzI88uxPGwxzl8','2023-06-13 14:17:17.475844'),('w4drls7p0pay2usl10s8kc7qbhx2ex4x','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q9pGS:KsGNCASAbJqcnCqRt5swvOuVLj10WoTMd3HzNLZB_X8','2023-06-29 15:52:00.267909'),('w8ixttcph3tx6p2e9sck85q8g9v7f3h0','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3GlG:pDq7R2cz-XE8LQoD7GBBQMSSqP8y9AVxEOK4RqJ8Z6w','2023-06-11 13:48:42.196787'),('yz7h7vqq5k5toh4uwdb1krpg61a54wqr','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q1RCo:3sK0ZaF0lZ7WKkLD-dykj75Di-SkEAikO8ilBBz0Km8','2023-06-06 12:33:34.662608'),('zp8dk61vrgk9uey00mu5e6u37hys040p','.eJxVjEEOwiAQRe_C2pCCBRmX7nsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6ursur0uyWkp9Qd8APrfdI01WUek94VfdCmh4nldTvcv4OCrWy1IyKXjCHbsUvBsjNgGX0KIoCUKXiAJI7PsEnZXkI2hm1mwL4PnVefLwHAOGk:1q3f7x:eJ3LA-EoOAz6iJZfct70dl6MjwvpjJHNTrLAeBgZXRE','2023-06-12 15:49:45.396849');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-18 20:59:42
