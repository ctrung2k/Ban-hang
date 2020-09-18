-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2020 at 11:55 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `cuahang_sanpham`
--

CREATE TABLE `cuahang_sanpham` (
  `ID_cuahang` int(11) NOT NULL,
  `ID_sanpham` bigint(13) NOT NULL,
  `Gia_theo_quan` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cua_hang`
--

CREATE TABLE `cua_hang` (
  `ID_cuahang` int(11) NOT NULL,
  `Ten_cuahang` varchar(50) NOT NULL,
  `Diachi_cuahang` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc_sanpham`
--

CREATE TABLE `danhmuc_sanpham` (
  `ID_loaisp` int(11) NOT NULL,
  `Ten_loai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `ID_hoadon` int(11) NOT NULL,
  `Ngay_tao` timestamp NOT NULL DEFAULT current_timestamp(),
  `ID_nhacc` int(11) NOT NULL,
  `Thanh_tien` double NOT NULL,
  `ID_Khachhang` int(11) NOT NULL,
  `ID_cuahang` int(11) NOT NULL,
  `ID_nhanvien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don_chitiet`
--

CREATE TABLE `hoa_don_chitiet` (
  `ID_hoadon` int(11) NOT NULL,
  `ID_sanpham` int(11) NOT NULL,
  `So_luong` int(11) NOT NULL,
  `Gia_tien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ID_Khachhang` int(11) NOT NULL,
  `Ten_khachhang` int(100) NOT NULL,
  `Email_khachhang` varchar(100) NOT NULL,
  `Pass_khachhang` varchar(200) NOT NULL,
  `Gioitinh_khachhang` tinyint(1) NOT NULL,
  `Diem_khachhang` int(11) NOT NULL,
  `ID_chucvu` int(11) NOT NULL,
  `Diachi_khachhang` varchar(200) NOT NULL,
  `Avatar_khachhang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `ID_nhanvien` int(11) NOT NULL,
  `Ten_nhanvien` varchar(100) NOT NULL,
  `Ngay_sinh` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ID_chucvu` int(11) NOT NULL,
  `Diachi_nhanvien` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nha_cungcap`
--

CREATE TABLE `nha_cungcap` (
  `ID_nhacc` int(11) NOT NULL,
  `Ten_nhacc` varchar(100) NOT NULL,
  `Diachi_nhacc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `quang_cao`
--

CREATE TABLE `quang_cao` (
  `ID_Chuongtrinh` varchar(50) NOT NULL,
  `Ten_Chuongtrinh` varchar(200) NOT NULL,
  `Mota_Chuongtrinh` text NOT NULL,
  `Hinhanh_Chuongtrinh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `quyen_han`
--

CREATE TABLE `quyen_han` (
  `ID_chucvu` int(11) NOT NULL,
  `Ten_chucvu` varchar(50) NOT NULL,
  `Tao_order` tinyint(1) NOT NULL,
  `Sua_order` tinyint(1) NOT NULL,
  `Huy_order` tinyint(1) NOT NULL,
  `Tao_taikhoan` tinyint(1) NOT NULL,
  `Sua_taikhoan` tinyint(1) NOT NULL,
  `Dis_taikhoan` tinyint(1) NOT NULL,
  `Ton_kho` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham_yeuthich`
--

CREATE TABLE `sanpham_yeuthich` (
  `ID_Khachhang` int(11) NOT NULL,
  `ID_sanpham` bigint(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `ID_sanpham` bigint(13) NOT NULL,
  `Ten_sanpham` varchar(200) NOT NULL,
  `Soluong_tonkho` int(11) NOT NULL,
  `ID_loaisp` int(11) NOT NULL,
  `Sanpham_hot` tinyint(1) NOT NULL,
  `Sanpham_moi` tinyint(1) NOT NULL,
  `Hinh_sanpham` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ton_kho`
--

CREATE TABLE `ton_kho` (
  `Ngay_Ton` int(11) NOT NULL,
  `ID_sanpham` int(11) NOT NULL,
  `Soluong_Ton` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cuahang_sanpham`
--
ALTER TABLE `cuahang_sanpham`
  ADD KEY `ID_cuahang` (`ID_cuahang`),
  ADD KEY `ID_sanpham` (`ID_sanpham`);

--
-- Indexes for table `cua_hang`
--
ALTER TABLE `cua_hang`
  ADD PRIMARY KEY (`ID_cuahang`);

--
-- Indexes for table `danhmuc_sanpham`
--
ALTER TABLE `danhmuc_sanpham`
  ADD PRIMARY KEY (`ID_loaisp`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`ID_hoadon`),
  ADD KEY `ID_cuahang` (`ID_cuahang`),
  ADD KEY `ID_nhanvien` (`ID_nhanvien`),
  ADD KEY `ID_Khachhang` (`ID_Khachhang`),
  ADD KEY `ID_nhacc` (`ID_nhacc`);

--
-- Indexes for table `hoa_don_chitiet`
--
ALTER TABLE `hoa_don_chitiet`
  ADD KEY `ID_hoadon` (`ID_hoadon`),
  ADD KEY `ID_sanpham` (`ID_sanpham`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ID_Khachhang`),
  ADD KEY `ID_chucvu` (`ID_chucvu`);

--
-- Indexes for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`ID_nhanvien`),
  ADD KEY `ID_chucvu` (`ID_chucvu`);

--
-- Indexes for table `nha_cungcap`
--
ALTER TABLE `nha_cungcap`
  ADD PRIMARY KEY (`ID_nhacc`);

--
-- Indexes for table `quang_cao`
--
ALTER TABLE `quang_cao`
  ADD PRIMARY KEY (`ID_Chuongtrinh`);

--
-- Indexes for table `quyen_han`
--
ALTER TABLE `quyen_han`
  ADD PRIMARY KEY (`ID_chucvu`);

--
-- Indexes for table `sanpham_yeuthich`
--
ALTER TABLE `sanpham_yeuthich`
  ADD KEY `ID_Khachhang` (`ID_Khachhang`),
  ADD KEY `ID_sanpham` (`ID_sanpham`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`ID_sanpham`),
  ADD KEY `ID_loaisp` (`ID_loaisp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cua_hang`
--
ALTER TABLE `cua_hang`
  MODIFY `ID_cuahang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `danhmuc_sanpham`
--
ALTER TABLE `danhmuc_sanpham`
  MODIFY `ID_loaisp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `ID_hoadon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ID_Khachhang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  MODIFY `ID_nhanvien` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nha_cungcap`
--
ALTER TABLE `nha_cungcap`
  MODIFY `ID_nhacc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quyen_han`
--
ALTER TABLE `quyen_han`
  MODIFY `ID_chucvu` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cuahang_sanpham`
--
ALTER TABLE `cuahang_sanpham`
  ADD CONSTRAINT `cuahang_sanpham_ibfk_1` FOREIGN KEY (`ID_cuahang`) REFERENCES `cua_hang` (`ID_cuahang`),
  ADD CONSTRAINT `cuahang_sanpham_ibfk_2` FOREIGN KEY (`ID_sanpham`) REFERENCES `san_pham` (`ID_sanpham`);

--
-- Constraints for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `hoa_don_ibfk_1` FOREIGN KEY (`ID_cuahang`) REFERENCES `cua_hang` (`ID_cuahang`),
  ADD CONSTRAINT `hoa_don_ibfk_2` FOREIGN KEY (`ID_nhanvien`) REFERENCES `nhan_vien` (`ID_nhanvien`),
  ADD CONSTRAINT `hoa_don_ibfk_3` FOREIGN KEY (`ID_Khachhang`) REFERENCES `khach_hang` (`ID_Khachhang`),
  ADD CONSTRAINT `hoa_don_ibfk_4` FOREIGN KEY (`ID_nhacc`) REFERENCES `nha_cungcap` (`ID_nhacc`);

--
-- Constraints for table `hoa_don_chitiet`
--
ALTER TABLE `hoa_don_chitiet`
  ADD CONSTRAINT `hoa_don_chitiet_ibfk_1` FOREIGN KEY (`ID_hoadon`) REFERENCES `hoa_don` (`ID_hoadon`);

--
-- Constraints for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD CONSTRAINT `khach_hang_ibfk_2` FOREIGN KEY (`ID_chucvu`) REFERENCES `quyen_han` (`ID_chucvu`);

--
-- Constraints for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD CONSTRAINT `nhan_vien_ibfk_1` FOREIGN KEY (`ID_chucvu`) REFERENCES `quyen_han` (`ID_chucvu`);

--
-- Constraints for table `sanpham_yeuthich`
--
ALTER TABLE `sanpham_yeuthich`
  ADD CONSTRAINT `sanpham_yeuthich_ibfk_1` FOREIGN KEY (`ID_Khachhang`) REFERENCES `khach_hang` (`ID_Khachhang`),
  ADD CONSTRAINT `sanpham_yeuthich_ibfk_2` FOREIGN KEY (`ID_sanpham`) REFERENCES `san_pham` (`ID_sanpham`);

--
-- Constraints for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_ibfk_1` FOREIGN KEY (`ID_loaisp`) REFERENCES `danhmuc_sanpham` (`ID_loaisp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
