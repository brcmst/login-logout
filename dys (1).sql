-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2021 at 11:56 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dys`
--

-- --------------------------------------------------------

--
-- Table structure for table `egitmen`
--

CREATE TABLE `egitmen` (
  `egitmenId` int(11) NOT NULL,
  `egitmenAd` varchar(20) NOT NULL,
  `egitmenSoyad` varchar(20) NOT NULL,
  `egitmenNo` char(9) NOT NULL,
  `egitmenSifre` varchar(20) NOT NULL,
  `dersId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `egitmen`
--

INSERT INTO `egitmen` (`egitmenId`, `egitmenAd`, `egitmenSoyad`, `egitmenNo`, `egitmenSifre`, `dersId`) VALUES
(1, 'Fatma', 'Işık', '218065604', 'root', 50),
(2, 'Rıdvan', 'Özdemir', '215894514', 'root', 54),
(3, 'Sabri', 'Eken', '215845477', 'root', 55),
(4, 'Tolgahan', 'Kılıç', '145879258', 'root', 52),
(5, 'Gülhan', 'Şirin', '124598214', 'root', 51),
(6, 'Birkan', 'Balık', '216560484', 'root', 53),
(10, 'Burcu', 'M', '474747', 'root', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ogrenci`
--

CREATE TABLE `ogrenci` (
  `ogrenciId` int(11) NOT NULL,
  `ogrenciAd` varchar(20) NOT NULL,
  `ogrenciSoyad` varchar(20) NOT NULL,
  `ogrenciNo` char(4) NOT NULL,
  `dersId` int(11) NOT NULL,
  `ogrenciSifre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ogrenci`
--

INSERT INTO `ogrenci` (`ogrenciId`, `ogrenciAd`, `ogrenciSoyad`, `ogrenciNo`, `dersId`, `ogrenciSifre`) VALUES
(1, 'Fatma', 'Acar', '2001', 50, 'root'),
(2, 'Mehmet', 'Adıgüzel', '2002', 51, 'root'),
(3, 'Mükerrem', 'Zeynep', '2005', 52, 'root'),
(4, 'Şennur', 'Tutkum', '2101', 53, 'root'),
(5, 'Sefa Kadir', 'Bargan', '2102', 54, 'root'),
(6, 'Ayşegül', 'Balın', '2103', 55, 'root'),
(7, 'Afra Selcen', 'Gönül', '2104', 50, 'root'),
(8, 'Belin', 'Esendemir', '2105', 51, 'root'),
(9, 'Arslan', 'Batıray', '2106', 52, 'root'),
(10, 'Ilgaz', 'Ezber', '2107', 53, 'root'),
(11, 'Yelda', 'Karalar', '2108', 54, 'root'),
(12, 'Aslı Nur', 'Keçe', '2109', 55, 'root'),
(13, 'Gülben', 'Kurtuluş', '2110', 50, 'root'),
(14, 'Halit Can', 'Duygun', '2111', 51, 'root'),
(15, 'Batı', 'Türkan', '2112', 52, 'root'),
(16, 'Berrak', 'Harman', '2113', 53, 'root'),
(17, 'Nimet', 'Gencal', '2114', 54, 'root'),
(18, 'Okan Deniz', 'Öter', '2115', 55, 'root'),
(19, 'Giray', 'Özgül', '2116', 50, 'root'),
(20, 'Mehmet Akif', 'Tünay', '2117', 51, 'root'),
(21, 'Cengizhan', 'Gencay', '2118', 52, 'root'),
(22, 'Gülselin', 'Alper', '2119', 53, 'root'),
(23, 'Gürkan', 'Şencan', '2120', 54, 'root'),
(24, 'Kardelen', 'Arel', '2122', 55, 'root'),
(25, 'Güven', 'Tatlı', '2123', 50, 'root'),
(26, 'Deniz Hale', 'Tekten', '2124', 0, ''),
(27, 'Ecenur', 'Topal', '2125', 0, ''),
(28, 'Uğur', 'Uluhan', '2126', 0, ''),
(29, 'Berra', 'Usanmaz', '2127', 0, ''),
(30, 'Gülümse', 'Arsun', '1901', 0, ''),
(31, 'Volkan', 'Yakupoğlu', '1902', 0, ''),
(32, 'Cavit', 'Yeniceli', '1903', 0, ''),
(33, 'Eser', 'Yükselen', '1904', 0, ''),
(34, 'Beyda', 'Zeybek', '1905', 0, ''),
(35, 'Tuğbanur', 'Togay', '1906', 0, ''),
(36, 'Gülşen Dilan', 'Gencay', '1907', 0, ''),
(37, 'Ahmet Enes', 'Saltuk', '1908', 0, ''),
(38, 'Simge Nur', 'Muhterem', '1909', 0, ''),
(39, 'Ata', 'Parlak', '1910', 0, ''),
(40, 'Muhammed Emin', 'Öztürk', '2006', 0, ''),
(41, 'Merve Nur', 'Özmez', '2007', 0, ''),
(42, 'Ebru', 'Masır', '2008', 0, ''),
(43, 'Halit Can', 'Mert', '2009', 0, ''),
(44, 'Nigar', 'Kürkcü', '2010', 0, ''),
(45, 'Berfu', 'Koparan', '2011', 0, ''),
(46, 'Yalçın', 'Kızıltuğ', '2012', 0, ''),
(47, 'Gülçe', 'Karakan', '1801', 0, ''),
(48, 'Suna', 'Tevfik', '1802', 0, ''),
(49, 'Sude', 'İlhan', '1803', 0, ''),
(50, 'Nil', 'Yalçın', '1804', 0, ''),
(51, 'İlayda', 'Toprak', '1805', 0, ''),
(52, 'Pervin', 'Kurtpınar', '1806', 0, ''),
(53, 'Arman', 'Sözen', '1807', 0, ''),
(54, 'İrfan', 'Turhal', '1808', 0, ''),
(55, 'Atacan', 'Adanır', '1809', 0, ''),
(56, 'Rabia', 'Doksöz', '1810', 0, ''),
(57, 'Sude', 'Türe', '1811', 0, ''),
(58, 'Cem Yaşar', 'Kuloğlu', '1812', 0, ''),
(59, 'Ahmet Mert', 'Ak', '1813', 0, ''),
(60, 'Ekrem', 'Yürek', '1814', 0, ''),
(61, 'Esranur', 'Erarslan', '1815', 0, ''),
(62, 'Demren', 'özkaya', '1816', 0, ''),
(63, 'Gizem Sevinç', 'Kıvrak', '1817', 0, ''),
(64, 'Ali', 'Duran', '1911', 0, ''),
(65, 'Ulaş', 'Konar', '1912', 0, ''),
(66, 'Osman Bilge', 'Ardıç', '1913', 0, ''),
(67, 'Güney', 'Doruk', '1914', 0, ''),
(68, 'Pelin', 'Koçyiğit', '1915', 0, ''),
(69, 'Nazife', 'Mor', '1916', 0, ''),
(70, 'Sebahat', 'Güngör', '1917', 0, ''),
(80, 'hggg', 'ghng', '655', 50, 'root');

-- --------------------------------------------------------

--
-- Table structure for table `yonetici`
--

CREATE TABLE `yonetici` (
  `yoneticiId` int(11) NOT NULL,
  `yoneticiAd` char(10) COLLATE utf8_turkish_ci NOT NULL,
  `yoneticiSoyad` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `yoneticiSifre` varchar(20) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `yonetici`
--

INSERT INTO `yonetici` (`yoneticiId`, `yoneticiAd`, `yoneticiSoyad`, `yoneticiSifre`) VALUES
(1, 'Sistem', 'Yonetici', 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `egitmen`
--
ALTER TABLE `egitmen`
  ADD PRIMARY KEY (`egitmenId`),
  ADD KEY `verir` (`dersId`);

--
-- Indexes for table `ogrenci`
--
ALTER TABLE `ogrenci`
  ADD PRIMARY KEY (`ogrenciId`);

--
-- Indexes for table `yonetici`
--
ALTER TABLE `yonetici`
  ADD PRIMARY KEY (`yoneticiId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `egitmen`
--
ALTER TABLE `egitmen`
  ADD CONSTRAINT `verir` FOREIGN KEY (`dersId`) REFERENCES `ogrenci` (`ogrenciId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
