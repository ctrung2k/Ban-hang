-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 09, 2020 lúc 09:05 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `ProductId` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `UnitPrice` double NOT NULL,
  `TotalPrice` double NOT NULL,
  `ID` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CustomerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customeraccount`
--

CREATE TABLE `customeraccount` (
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
-- Cấu trúc bảng cho bảng `entryform`
--

CREATE TABLE `entryform` (
  `ProductId` int(11) NOT NULL,
  `ProducName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Amount` int(11) NOT NULL,
  `Ngaynhap` date NOT NULL,
  `TypeId` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission`
--

CREATE TABLE `permission` (
  `ID` int(11) NOT NULL,
  `OrderManager` tinyint(1) NOT NULL,
  `thongkekho` tinyint(1) NOT NULL,
  `StafManager` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `UnitPrice` double NOT NULL,
  `TypeID` int(11) NOT NULL,
  `Image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ID`, `Name`, `UnitPrice`, `TypeID`, `Image`, `Description`, `Amount`) VALUES
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
-- Cấu trúc bảng cho bảng `producttype`
--

CREATE TABLE `producttype` (
  `ID` int(11) NOT NULL,
  `TypeName` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `producttype`
--

INSERT INTO `producttype` (`ID`, `TypeName`) VALUES
(1, 'Nước uống đóng chai / lon'),
(2, 'Đồ ăn nhẹ đóng gói');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reciptdetail`
--

CREATE TABLE `reciptdetail` (
  `ReceiptTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ProductId` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `Amount` int(6) NOT NULL,
  `UnitPrice` double NOT NULL,
  `TotalPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `revenue`
--

CREATE TABLE `revenue` (
  `RevenueDay` double NOT NULL,
  `RevenueMonth` double NOT NULL,
  `StatisticsDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staffaccount`
--

CREATE TABLE `staffaccount` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Phone` int(11) NOT NULL,
  `Address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PASS` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `SupplierAddress` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `SupplierPhone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `SupplierName`, `SupplierAddress`, `SupplierPhone`) VALUES
(1, 'Coca-Cola', 'Lầu 10, tòa nhà Metropolitan, 235 Đồng Khởi, Quận 1, tp HCM, Việt Nam', 838961000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `customeraccount`
--
ALTER TABLE `customeraccount`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `entryform`
--
ALTER TABLE `entryform`
  ADD KEY `id_sto_id_prod` (`ProductId`),
  ADD KEY `TypeId` (`TypeId`),
  ADD KEY `id_sup_id_ent` (`SupplierID`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `pd_Typeid_pdt_ID` (`TypeID`);

--
-- Chỉ mục cho bảng `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `reciptdetail`
--
ALTER TABLE `reciptdetail`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `staffaccount`
--
ALTER TABLE `staffaccount`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customeraccount`
--
ALTER TABLE `customeraccount`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `producttype`
--
ALTER TABLE `producttype`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `reciptdetail`
--
ALTER TABLE `reciptdetail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `staffaccount`
--
ALTER TABLE `staffaccount`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `entryform`
--
ALTER TABLE `entryform`
  ADD CONSTRAINT `entryform_ibfk_1` FOREIGN KEY (`TypeId`) REFERENCES `producttype` (`ID`),
  ADD CONSTRAINT `id_sto_id_prod` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ID`),
  ADD CONSTRAINT `id_sup_id_ent` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`SupplierID`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `pd_Typeid_pdt_ID` FOREIGN KEY (`TypeID`) REFERENCES `producttype` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
