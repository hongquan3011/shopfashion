-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: shopfashion
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `chitiet_donhang`
--

DROP TABLE IF EXISTS `chitiet_donhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitiet_donhang` (
  `ID` varchar(45) NOT NULL,
  `ma_donhang` varchar(45) NOT NULL,
  `ten_sp` varchar(155) NOT NULL,
  `so_luong` int NOT NULL,
  `gia_tien` decimal(50,0) NOT NULL,
  `thanh_tien` decimal(50,0) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiet_donhang`
--

LOCK TABLES `chitiet_donhang` WRITE;
/*!40000 ALTER TABLE `chitiet_donhang` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitiet_donhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danh_gia`
--

DROP TABLE IF EXISTS `danh_gia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danh_gia` (
  `ID` varchar(45) NOT NULL,
  `san_pham` varchar(155) NOT NULL,
  `tai_khoan` varchar(45) NOT NULL,
  `danh_gia` varchar(225) DEFAULT NULL,
  `mo_ta` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danh_gia`
--

LOCK TABLES `danh_gia` WRITE;
/*!40000 ALTER TABLE `danh_gia` DISABLE KEYS */;
/*!40000 ALTER TABLE `danh_gia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `don_hang`
--

DROP TABLE IF EXISTS `don_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `don_hang` (
  `Ma_donhang` varchar(45) NOT NULL,
  `ma_ctdh` varchar(45) NOT NULL,
  `ten_tk` varchar(45) NOT NULL,
  `trang_thai` bit(2) NOT NULL,
  `ngay_dat` datetime NOT NULL,
  `dia_chi` varchar(225) NOT NULL,
  `sdt` int NOT NULL,
  `ten_nguoi_nhan` varchar(100) NOT NULL,
  `tong_tien` decimal(50,0) NOT NULL,
  `voucher` int NOT NULL,
  PRIMARY KEY (`Ma_donhang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `don_hang`
--

LOCK TABLES `don_hang` WRITE;
/*!40000 ALTER TABLE `don_hang` DISABLE KEYS */;
/*!40000 ALTER TABLE `don_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kho_hang`
--

DROP TABLE IF EXISTS `kho_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kho_hang` (
  `ID` varchar(45) NOT NULL,
  `ten_sp` varchar(155) NOT NULL,
  `so_luong` int NOT NULL,
  `ngay_nhap` datetime NOT NULL,
  `nguoi_nhap` varchar(155) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kho_hang`
--

LOCK TABLES `kho_hang` WRITE;
/*!40000 ALTER TABLE `kho_hang` DISABLE KEYS */;
/*!40000 ALTER TABLE `kho_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai_hang`
--

DROP TABLE IF EXISTS `loai_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loai_hang` (
  `ma_loai` varchar(45) NOT NULL,
  `ten_loai` varchar(45) NOT NULL,
  PRIMARY KEY (`ma_loai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai_hang`
--

LOCK TABLES `loai_hang` WRITE;
/*!40000 ALTER TABLE `loai_hang` DISABLE KEYS */;
/*!40000 ALTER TABLE `loai_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoi_dung`
--

DROP TABLE IF EXISTS `nguoi_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoi_dung` (
  `Taikhoan` varchar(45) NOT NULL,
  `mat_khau` varchar(45) NOT NULL,
  `sdt` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `hinh_anh` varchar(45) NOT NULL,
  `ho_ten` varchar(50) NOT NULL,
  `dia_chi` varchar(225) NOT NULL,
  `gioi_tinh` bit(2) NOT NULL,
  `trang_thai` bit(2) NOT NULL,
  PRIMARY KEY (`Taikhoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoi_dung`
--

LOCK TABLES `nguoi_dung` WRITE;
/*!40000 ALTER TABLE `nguoi_dung` DISABLE KEYS */;
INSERT INTO `nguoi_dung` VALUES ('0','123',34342352,'hongquan@gmail.com','2021-10-02 00:00:00','','Nguyễn viết nhân','daa',_binary '',_binary ''),('n2han123','123',34342352,'hongquan@gmail.com','2021-10-02 00:00:00','3ew','Nguyễn viết nhân','daa',_binary '',_binary ''),('n2whan123','123',34342352,'hongquan@gmail.com','2021-10-02 00:00:00','3ew','Nguyễn viết nhân','daa',_binary '',_binary ''),('nhan123','123',34342352,'hongquan@gmail.com','2021-10-02 00:00:00','3ew','Nguyễn viết nhân','daa',_binary '',_binary '');
/*!40000 ALTER TABLE `nguoi_dung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phan_quen`
--

DROP TABLE IF EXISTS `phan_quen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phan_quen` (
  `ID` int NOT NULL,
  `ten_tk` int NOT NULL,
  `ma_vaitro` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phan_quen`
--

LOCK TABLES `phan_quen` WRITE;
/*!40000 ALTER TABLE `phan_quen` DISABLE KEYS */;
/*!40000 ALTER TABLE `phan_quen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `san_pham`
--

DROP TABLE IF EXISTS `san_pham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `san_pham` (
  `ID` varchar(45) NOT NULL,
  `loai` varchar(45) NOT NULL,
  `ten_sp` varchar(155) NOT NULL,
  `thuong_hieu` varchar(45) NOT NULL,
  `so_luong` int NOT NULL,
  `gia_tien` decimal(50,0) NOT NULL,
  `mau_sac` varchar(45) NOT NULL,
  `Size` varchar(45) NOT NULL,
  `hinh_anh` varchar(155) NOT NULL,
  `mo_ta` varchar(225) DEFAULT NULL,
  `giam_gia` varchar(45) DEFAULT NULL,
  `nguoithem_sp` varchar(155) NOT NULL,
  `ngay_them` datetime NOT NULL,
  `trang_thai` bit(2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_pham`
--

LOCK TABLES `san_pham` WRITE;
/*!40000 ALTER TABLE `san_pham` DISABLE KEYS */;
/*!40000 ALTER TABLE `san_pham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thanh_vien`
--

DROP TABLE IF EXISTS `thanh_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thanh_vien` (
  `Taikhoan` int NOT NULL,
  `diem_tv` int DEFAULT NULL,
  `diem_td` int DEFAULT NULL,
  PRIMARY KEY (`Taikhoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thanh_vien`
--

LOCK TABLES `thanh_vien` WRITE;
/*!40000 ALTER TABLE `thanh_vien` DISABLE KEYS */;
/*!40000 ALTER TABLE `thanh_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thuong_hieu`
--

DROP TABLE IF EXISTS `thuong_hieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thuong_hieu` (
  `ma_thuonghieu` varchar(45) NOT NULL,
  `ten_thuonghieu` varchar(155) NOT NULL,
  PRIMARY KEY (`ma_thuonghieu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thuong_hieu`
--

LOCK TABLES `thuong_hieu` WRITE;
/*!40000 ALTER TABLE `thuong_hieu` DISABLE KEYS */;
/*!40000 ALTER TABLE `thuong_hieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vai_tro`
--

DROP TABLE IF EXISTS `vai_tro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vai_tro` (
  `ID` int NOT NULL,
  `ten_vaitro` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vai_tro`
--

LOCK TABLES `vai_tro` WRITE;
/*!40000 ALTER TABLE `vai_tro` DISABLE KEYS */;
/*!40000 ALTER TABLE `vai_tro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voucher` (
  `ID` int NOT NULL,
  `ma_voucher` varchar(45) NOT NULL,
  `ten_voucher` varchar(45) NOT NULL,
  `tai_khoan` int NOT NULL,
  `trang_thai` bit(2) NOT NULL,
  `gia_tri` decimal(50,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher`
--

LOCK TABLES `voucher` WRITE;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
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

-- Dump completed on 2021-10-02 12:12:23
