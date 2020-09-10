-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2020 at 12:09 PM
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
-- Table structure for table `cua_hang`
--

CREATE TABLE `cua_hang` (
  `ID_cuahang` int(11) NOT NULL,
  `Ten_cuahang` varchar(50) NOT NULL,
  `ID_diachi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dia_chi`
--

CREATE TABLE `dia_chi` (
  `ID_diachi` int(11) NOT NULL,
  `Tinh_thanh` varchar(50) NOT NULL,
  `Quan_huyen` varchar(50) NOT NULL,
  `So_duong` varchar(100) NOT NULL,
  `So_dt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `ID_hoadon` int(11) NOT NULL,
  `Ngay_tao` timestamp NOT NULL DEFAULT current_timestamp(),
  `ID_doitac` int(11) NOT NULL,
  `Thanh_tien` double NOT NULL,
  `Khach_hang` tinyint(1) NOT NULL,
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
  `So_luong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE `khach_hang` (
  `Ten_khachhang` int(100) NOT NULL,
  `Email_khachhang` varchar(100) NOT NULL,
  `Pass_khachhang` varchar(200) NOT NULL,
  `Gioitinh_khachhang` tinyint(1) NOT NULL,
  `ID_diachi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loai_sanpham`
--

CREATE TABLE `loai_sanpham` (
  `ID_loaisp` int(11) NOT NULL,
  `Ten_loai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `ID_nhanvien` int(11) NOT NULL,
  `Ten_nhanvien` varchar(100) NOT NULL,
  `Ngay_sinh` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ID_diachi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nha_cungcap`
--

CREATE TABLE `nha_cungcap` (
  `ID_nhacc` int(11) NOT NULL,
  `Ten_nhacc` varchar(100) NOT NULL,
  `ID_diachi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `ID_sanpham` int(11) NOT NULL,
  `Ten_sanpham` varchar(200) NOT NULL,
  `Soluong_sanpham` int(11) NOT NULL,
  `Dongia_nhap` double NOT NULL,
  `Dongia_ban` double NOT NULL,
  `ID_cuahang` int(11) NOT NULL,
  `ID_loaisp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cua_hang`
--
ALTER TABLE `cua_hang`
  ADD PRIMARY KEY (`ID_cuahang`),
  ADD KEY `ID_diachi` (`ID_diachi`);

--
-- Indexes for table `dia_chi`
--
ALTER TABLE `dia_chi`
  ADD PRIMARY KEY (`ID_diachi`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`ID_hoadon`),
  ADD KEY `ID_cuahang` (`ID_cuahang`),
  ADD KEY `ID_nhanvien` (`ID_nhanvien`);

--
-- Indexes for table `hoa_don_chitiet`
--
ALTER TABLE `hoa_don_chitiet`
  ADD KEY `ID_hoadon` (`ID_hoadon`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD KEY `ID_diachi` (`ID_diachi`);

--
-- Indexes for table `loai_sanpham`
--
ALTER TABLE `loai_sanpham`
  ADD PRIMARY KEY (`ID_loaisp`);

--
-- Indexes for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`ID_nhanvien`),
  ADD KEY `Quanhe_Diachi_Nhanvien` (`ID_diachi`);

--
-- Indexes for table `nha_cungcap`
--
ALTER TABLE `nha_cungcap`
  ADD PRIMARY KEY (`ID_nhacc`),
  ADD KEY `ID_diachi` (`ID_diachi`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`ID_sanpham`),
  ADD KEY `ID_cuahang` (`ID_cuahang`),
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
-- AUTO_INCREMENT for table `dia_chi`
--
ALTER TABLE `dia_chi`
  MODIFY `ID_diachi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `ID_hoadon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loai_sanpham`
--
ALTER TABLE `loai_sanpham`
  MODIFY `ID_loaisp` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `ID_sanpham` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cua_hang`
--
ALTER TABLE `cua_hang`
  ADD CONSTRAINT `cua_hang_ibfk_1` FOREIGN KEY (`ID_diachi`) REFERENCES `dia_chi` (`ID_diachi`);

--
-- Constraints for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `hoa_don_ibfk_1` FOREIGN KEY (`ID_cuahang`) REFERENCES `cua_hang` (`ID_cuahang`),
  ADD CONSTRAINT `hoa_don_ibfk_2` FOREIGN KEY (`ID_nhanvien`) REFERENCES `nhan_vien` (`ID_nhanvien`);

--
-- Constraints for table `hoa_don_chitiet`
--
ALTER TABLE `hoa_don_chitiet`
  ADD CONSTRAINT `hoa_don_chitiet_ibfk_1` FOREIGN KEY (`ID_hoadon`) REFERENCES `hoa_don` (`ID_hoadon`);

--
-- Constraints for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD CONSTRAINT `khach_hang_ibfk_1` FOREIGN KEY (`ID_diachi`) REFERENCES `dia_chi` (`ID_diachi`);

--
-- Constraints for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD CONSTRAINT `Quanhe_Diachi_Nhanvien` FOREIGN KEY (`ID_diachi`) REFERENCES `dia_chi` (`ID_diachi`);

--
-- Constraints for table `nha_cungcap`
--
ALTER TABLE `nha_cungcap`
  ADD CONSTRAINT `nha_cungcap_ibfk_1` FOREIGN KEY (`ID_diachi`) REFERENCES `dia_chi` (`ID_diachi`);

--
-- Constraints for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_ibfk_1` FOREIGN KEY (`ID_cuahang`) REFERENCES `cua_hang` (`ID_cuahang`),
  ADD CONSTRAINT `san_pham_ibfk_2` FOREIGN KEY (`ID_loaisp`) REFERENCES `loai_sanpham` (`ID_loaisp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
