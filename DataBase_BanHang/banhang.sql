-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2020 at 11:21 AM
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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `UnitPrice` double NOT NULL,
  `TypeID` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `Image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `Name`, `UnitPrice`, `TypeID`, `SupplierID`, `Image`, `Description`) VALUES
(11, 'Coke (chai nhựa)', 7000, 1, 1, '', ''),
(12, 'Diet coke (lon)', 7000, 1, 1, '', ''),
(13, 'Fanta cam (chai nhựa)', 7000, 1, 1, '', ''),
(14, 'Soda chanh (lon)', 9000, 1, 1, '', ''),
(15, 'Nước Aquarius (chai nhựa)', 6000, 1, 1, '', ''),
(16, 'Nước uống tăng lực Samurai (chai nhựa)', 10000, 1, 1, '', ''),
(17, 'Nước trái cây Minute Maid (chai nhựa)', 8500, 1, 1, '', ''),
(18, 'Nước khoáng Dasani (chai nhựa)', 5000, 1, 1, '', ''),
(19, 'Sữa trái cây Nutriboost hương dâu (chai nhựa)', 10000, 1, 1, '', ''),
(20, 'Sữa trái cây Nutriboost hương cam (chai nhựa)', 10000, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `producttype`
--

CREATE TABLE `producttype` (
  `ID` int(11) NOT NULL,
  `TypeName` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `producttype`
--

INSERT INTO `producttype` (`ID`, `TypeName`) VALUES
(1, 'Nước uống đóng chai / lon'),
(2, 'Đồ ăn nhẹ đóng gói');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `SupplierAddress` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `SupplierPhone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `SupplierName`, `SupplierAddress`, `SupplierPhone`) VALUES
(1, 'Coca-Cola', 'Lầu 10, tòa nhà Metropolitan, 235 Đồng Khởi, Quận 1, tp HCM, Việt Nam', 838961000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `pd_Typeid_pdt_ID` (`TypeID`),
  ADD KEY `pd_supid_sup_supid` (`SupplierID`);

--
-- Indexes for table `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `producttype`
--
ALTER TABLE `producttype`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `pd_Typeid_pdt_ID` FOREIGN KEY (`TypeID`) REFERENCES `producttype` (`ID`),
  ADD CONSTRAINT `pd_supid_sup_supid` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`SupplierID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
