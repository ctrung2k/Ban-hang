-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2020 at 11:41 AM
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
-- Database: `ban_hang`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_hoadon`
--

CREATE TABLE `chitiet_hoadon` (
  `ReceiptTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ProductId` int(11) NOT NULL,
  `Bill_ID` int(11) NOT NULL,
  `Amount` int(6) NOT NULL,
  `UnitPrice` double NOT NULL,
  `TotalPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doanh_thu`
--

CREATE TABLE `doanh_thu` (
  `RevenueDay` double NOT NULL,
  `RevenueMonth` double NOT NULL,
  `StatisticsDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `TotalPrice` double NOT NULL,
  `ID` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CustomerId` int(11) NOT NULL,
  `ID_nhanvien` int(11) NOT NULL,
  `nhacungcap` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loai_sanpham`
--

CREATE TABLE `loai_sanpham` (
  `ID` int(11) NOT NULL,
  `TypeName` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai_sanpham`
--

INSERT INTO `loai_sanpham` (`ID`, `TypeName`) VALUES
(1, 'Nước uống đóng chai / lon'),
(2, 'Đồ ăn nhẹ đóng gói');

-- --------------------------------------------------------

--
-- Table structure for table `nha_cungcap`
--

CREATE TABLE `nha_cungcap` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `SupplierAddress` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `SupplierPhone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nha_cungcap`
--

INSERT INTO `nha_cungcap` (`SupplierID`, `SupplierName`, `SupplierAddress`, `SupplierPhone`) VALUES
(1, 'Coca-Cola', 'Lầu 10, tòa nhà Metropolitan, 235 Đồng Khởi, Quận 1, tp HCM, Việt Nam', 838961000);

-- --------------------------------------------------------

--
-- Table structure for table `phieu_nhap`
--

CREATE TABLE `phieu_nhap` (
  `ProductId` int(11) NOT NULL,
  `ProducName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Amount` int(11) NOT NULL,
  `Ngaynhap` date NOT NULL,
  `TypeId` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quyen_han`
--

CREATE TABLE `quyen_han` (
  `Nhanvien_ID` int(11) NOT NULL,
  `OrderManager` tinyint(1) NOT NULL,
  `thongkekho` tinyint(1) NOT NULL,
  `StafManager` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `UnitPrice` double NOT NULL,
  `TypeID` int(11) NOT NULL,
  `Image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`ID`, `Name`, `UnitPrice`, `TypeID`, `Image`, `Description`, `Amount`) VALUES
(11, 'Coke (chai nhựa)', 7000, 1, '', '', 0),
(12, 'Diet coke (lon)', 7000, 1, '', '', 0),
(13, 'Fanta cam (chai nhựa)', 7000, 1, '', '', 0),
(14, 'Soda chanh (lon)', 9000, 1, '', '', 0),
(15, 'Nước Aquarius (chai nhựa)', 6000, 1, '', '', 0),
(16, 'Nước uống tăng lực Samurai (chai nhựa)', 10000, 1, '', '', 0),
(17, 'Nước trái cây Minute Maid (chai nhựa)', 8500, 1, '', '', 0),
(18, 'Nước khoáng Dasani (chai nhựa)', 5000, 1, '', '', 0),
(19, 'Sữa trái cây Nutriboost hương dâu (chai nhựa)', 10000, 1, '', '', 0),
(20, 'Sữa trái cây Nutriboost hương cam (chai nhựa)', 10000, 1, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan_khachhang`
--

CREATE TABLE `taikhoan_khachhang` (
  `Email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Pass` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Phone` int(11) NOT NULL,
  `Gender` tinyint(1) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan_nhanvien`
--

CREATE TABLE `taikhoan_nhanvien` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Phone` int(11) NOT NULL,
  `Address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PASS` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiet_hoadon`
--
ALTER TABLE `chitiet_hoadon`
  ADD KEY `ID_chitiet_ID_hoadon` (`Bill_ID`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_hoadon_ID_khachhang` (`CustomerId`),
  ADD KEY `ID_hoadon_ID_nhanvien` (`ID_nhanvien`);

--
-- Indexes for table `loai_sanpham`
--
ALTER TABLE `loai_sanpham`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `nha_cungcap`
--
ALTER TABLE `nha_cungcap`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Indexes for table `phieu_nhap`
--
ALTER TABLE `phieu_nhap`
  ADD KEY `id_sto_id_prod` (`ProductId`),
  ADD KEY `TypeId` (`TypeId`),
  ADD KEY `id_sup_id_ent` (`SupplierID`);

--
-- Indexes for table `quyen_han`
--
ALTER TABLE `quyen_han`
  ADD KEY `ID_nhanvien_ID_quyenhan` (`Nhanvien_ID`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `pd_Typeid_pdt_ID` (`TypeID`);

--
-- Indexes for table `taikhoan_khachhang`
--
ALTER TABLE `taikhoan_khachhang`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `taikhoan_nhanvien`
--
ALTER TABLE `taikhoan_nhanvien`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loai_sanpham`
--
ALTER TABLE `loai_sanpham`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nha_cungcap`
--
ALTER TABLE `nha_cungcap`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `taikhoan_khachhang`
--
ALTER TABLE `taikhoan_khachhang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taikhoan_nhanvien`
--
ALTER TABLE `taikhoan_nhanvien`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiet_hoadon`
--
ALTER TABLE `chitiet_hoadon`
  ADD CONSTRAINT `ID_chitiet_ID_hoadon` FOREIGN KEY (`Bill_ID`) REFERENCES `hoa_don` (`ID`);

--
-- Constraints for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `ID_hoadon_ID_khachhang` FOREIGN KEY (`CustomerId`) REFERENCES `taikhoan_khachhang` (`ID`),
  ADD CONSTRAINT `ID_hoadon_ID_nhanvien` FOREIGN KEY (`ID_nhanvien`) REFERENCES `taikhoan_nhanvien` (`ID`);

--
-- Constraints for table `phieu_nhap`
--
ALTER TABLE `phieu_nhap`
  ADD CONSTRAINT `id_sto_id_prod` FOREIGN KEY (`ProductId`) REFERENCES `san_pham` (`ID`),
  ADD CONSTRAINT `id_sup_id_ent` FOREIGN KEY (`SupplierID`) REFERENCES `nha_cungcap` (`SupplierID`),
  ADD CONSTRAINT `phieu_nhap_ibfk_1` FOREIGN KEY (`TypeId`) REFERENCES `loai_sanpham` (`ID`);

--
-- Constraints for table `quyen_han`
--
ALTER TABLE `quyen_han`
  ADD CONSTRAINT `ID_nhanvien_ID_quyenhan` FOREIGN KEY (`Nhanvien_ID`) REFERENCES `taikhoan_nhanvien` (`ID`);

--
-- Constraints for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `pd_Typeid_pdt_ID` FOREIGN KEY (`TypeID`) REFERENCES `loai_sanpham` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
