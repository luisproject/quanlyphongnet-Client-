-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2016 at 08:00 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appinternet`
--

-- --------------------------------------------------------

--
-- Table structure for table `dichvu`
--

CREATE TABLE `dichvu` (
  `iddv` int(11) NOT NULL,
  `tendichvu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dongia` int(11) NOT NULL,
  `donvi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dichvu`
--

INSERT INTO `dichvu` (`iddv`, `tendichvu`, `dongia`, `donvi`, `soluong`) VALUES
(1, 'Sting dâu', 12000, 'Chai', 0),
(2, 'Revide ', 12000, 'Chai', 0),
(3, 'Bò húc', 13000, 'Ly', 0),
(4, 'Yaourt Trái Cây', 15000, 'Ly', 0),
(5, 'Sinh Tố', 11000, 'Ly', 0),
(6, 'Cacao nóng', 11000, 'Ly', 0),
(7, 'Bạc xỉu', 14000, 'Ly', 0),
(8, 'Cappuchino', 11000, 'Ly', 0),
(9, 'Frappuccino', 18000, 'Ly', 0),
(10, 'Cafe đen', 9000, 'Ly', 0),
(11, 'Cafe sữa', 10000, 'Ly', 0),
(12, 'Cafe đen SG', 12000, 'Ly', 0),
(13, 'Bạc xỉu đá', 14000, 'Ly', 0),
(14, 'Cafe sữa dừa', 17000, 'Ly', 0),
(15, 'Cafe đá xay', 20000, 'Ly', 0),
(16, 'Cafe đá viên', 14000, 'Ly', 0),
(17, 'Cafe trứng', 18000, 'Ly', 0),
(18, 'Cafe sữa chua', 20000, 'Ly', 0),
(19, 'Yaourt đá', 15000, 'Ly', 0),
(20, 'Yaourt xoài', 17000, 'Ly', 0),
(21, 'Yaourt dâu', 17000, 'Ly', 0),
(22, 'Blue berry', 15000, 'Ly', 0),
(23, 'Straw berry', 15000, 'Ly', 0),
(24, 'Lemon', 15000, 'Ly', 0),
(25, 'Orange', 15000, 'Ly', 0),
(26, 'Orange Juice', 18000, 'Ly', 0),
(27, 'Hazelnut Macchiatob', 38000, 'Ly', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dichvudung`
--

CREATE TABLE `dichvudung` (
  `id` int(100) NOT NULL,
  `idm` int(100) NOT NULL,
  `tendichvu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dongia` int(100) NOT NULL,
  `soluong` int(100) NOT NULL,
  `trangthai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dichvudung`
--

INSERT INTO `dichvudung` (`id`, `idm`, `tendichvu`, `dongia`, `soluong`, `trangthai`) VALUES
(3, 15, 'Sting dâu', 12000, 2, 0),
(4, 15, 'Orange Juice', 18000, 6, 0),
(5, 15, 'Yaourt Trái Cây', 15000, 10, 0),
(6, 15, 'Yaourt Trái Cây', 15000, 2, 0),
(7, 15, 'Sinh Tố', 11000, 100, 0),
(8, 15, 'Bạc xỉu', 14000, 1, 0),
(9, 15, 'Yaourt Trái Cây', 15000, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `idqtv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `may`
--

CREATE TABLE `may` (
  `idm` int(100) NOT NULL,
  `tenmay` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tinhtrang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `dongia` int(11) NOT NULL,
  `diachimac` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `may`
--

INSERT INTO `may` (`idm`, `tenmay`, `tinhtrang`, `trangthai`, `mota`, `dongia`, `diachimac`) VALUES
(1, 'Máy 01', 'Bình Thường', 1, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, '00: 1A: A0: AE: 22: D7'),
(2, 'Máy 02', 'Bình Thường', 1, 'Máy mới nhập hiệu Dell HD 1920*1080', 4000, '00: 1B: A0: AE: 22: D7'),
(3, 'Máy 03', 'Bình Thường', 1, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, '00: 1A: A0: AE: 42: D7'),
(5, 'Máy 05', 'Bình Thường', 1, 'Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 – Chuyên games. Intel® Pentium® Processor G3250 (3M Cache, 3.20 GHz)  (Chip có khả năng cân được các Game hiện tại ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Gigabyte N730 2GD5 " 2Gb/128Bit/DDR5 " Fan tản nhiệt lớn bao mát. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. Màn hình tối thiểu 22in " khuyên dùng 24in tăng đọ trải nghiệm game thủ. Các dòng từ trung cấp tới cao cấp bao gồm các Combo: Motospeed K40-K70 Led màu or CM Storm Devastator Led or các dòng Full cơ giá rẻ', 4000, '6B: 1A: A0: AE: 22: D7'),
(6, 'Máy 06', 'Bình Thường', 1, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, '6B: 1A: AF: AE: 22: D7'),
(7, 'Máy 07', 'Bình Thường', 0, 'Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 – Chuyên games. Intel® Pentium® Processor G3250 (3M Cache, 3.20 GHz)  (Chip có khả năng cân được các Game hiện tại ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Gigabyte N730 2GD5 " 2Gb/128Bit/DDR5 " Fan tản nhiệt lớn bao mát. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. Màn hình tối thiểu 22in " khuyên dùng 24in tăng đọ trải nghiệm game thủ. Các dòng từ trung cấp tới cao cấp bao gồm các Combo: Motospeed K40-K70 Led màu or CM Storm Devastator Led or các dòng Full cơ giá rẻ', 4000, '6B: 1F: AF: AE: 22: D7'),
(8, 'Máy 08', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, '6B: 1F: AF: AE: 22: FF'),
(9, 'Máy 09', 'Bình Thường', 1, 'Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 – Chuyên games. Intel® Pentium® Processor G3250 (3M Cache, 3.20 GHz)  (Chip có khả năng cân được các Game hiện tại ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Gigabyte N730 2GD5 " 2Gb/128Bit/DDR5 " Fan tản nhiệt lớn bao mát. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. Màn hình tối thiểu 22in " khuyên dùng 24in tăng đọ trải nghiệm game thủ. Các dòng từ trung cấp tới cao cấp bao gồm các Combo: Motospeed K40-K70 Led màu or CM Storm Devastator Led or các dòng Full cơ giá rẻ', 4000, '6B: 1F: AF: BB: 22: FF'),
(10, 'Máy 10', 'Bình Thường', 0, 'Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 – Chuyên games. Intel® Pentium® Processor G3250 (3M Cache, 3.20 GHz)  (Chip có khả năng cân được các Game hiện tại ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Gigabyte N730 2GD5 " 2Gb/128Bit/DDR5 " Fan tản nhiệt lớn bao mát. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. Màn hình tối thiểu 22in " khuyên dùng 24in tăng đọ trải nghiệm game thủ. Các dòng từ trung cấp tới cao cấp bao gồm các Combo: Motospeed K40-K70 Led màu or CM Storm Devastator Led or các dòng Full cơ giá rẻ', 4000, ''),
(11, 'Máy 11', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(12, 'Máy 12', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(13, 'Máy 13', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(14, 'Máy 15', 'Bình Thường', 0, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(15, 'Máy 16', 'Bình Thường', 1, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, '64-5A-04-CB-B6-21'),
(16, 'Máy 17', 'Bình Thường', 1, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(17, 'Máy 18', 'Bình Thường', 0, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(18, 'Máy 19', 'Bình Thường', 0, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(19, 'Máy 20', 'Bình Thường', 0, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(20, 'Máy 21', 'Bình Thường', 1, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(21, 'Máy 22', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(22, 'Máy 23', 'Bình Thường', 1, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(23, 'Máy 24', 'Bình Thường', 0, 'Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 – Chuyên games. Intel® Pentium® Processor G3250 (3M Cache, 3.20 GHz)  (Chip có khả năng cân được các Game hiện tại ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Gigabyte N730 2GD5 " 2Gb/128Bit/DDR5 " Fan tản nhiệt lớn bao mát. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. Màn hình tối thiểu 22in " khuyên dùng 24in tăng đọ trải nghiệm game thủ. Các dòng từ trung cấp tới cao cấp bao gồm các Combo: Motospeed K40-K70 Led màu or CM Storm Devastator Led or các dòng Full cơ giá rẻ', 4000, ''),
(24, 'Máy 25', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(25, 'Máy 26', 'Bình Thường', 0, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(26, 'Máy 27', 'Bình Thường', 0, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(27, 'Máy 28', 'Bình Thường', 0, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(28, 'Máy 29', 'Bình Thường', 0, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(29, 'Máy 30', 'Bình Thường', 0, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(30, 'Máy 31', 'Bình Thường', 0, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(31, 'Máy 32', 'Bình Thường', 1, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(32, 'Máy 33', 'Bình Thường', 0, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(33, 'Máy 34', 'Bình Thường', 1, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(34, 'Máy 35', 'Bình Thường', 1, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(35, 'Máy 36', 'Bình Thường', 1, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(36, 'Máy 37', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(37, 'Máy 38', 'Bình Thường', 0, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(38, 'Máy 39', 'Bình Thường', 0, 'Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 – Chuyên games. Intel® Pentium® Processor G3250 (3M Cache, 3.20 GHz)  (Chip có khả năng cân được các Game hiện tại ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Gigabyte N730 2GD5 " 2Gb/128Bit/DDR5 " Fan tản nhiệt lớn bao mát. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. Màn hình tối thiểu 22in " khuyên dùng 24in tăng đọ trải nghiệm game thủ. Các dòng từ trung cấp tới cao cấp bao gồm các Combo: Motospeed K40-K70 Led màu or CM Storm Devastator Led or các dòng Full cơ giá rẻ', 4000, ''),
(39, 'Máy 40', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(40, 'Máy 41', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(41, 'Máy 42', 'Bình Thường', 0, 'Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 – Chuyên games. Intel® Pentium® Processor G3250 (3M Cache, 3.20 GHz)  (Chip có khả năng cân được các Game hiện tại ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Gigabyte N730 2GD5 " 2Gb/128Bit/DDR5 " Fan tản nhiệt lớn bao mát. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. Màn hình tối thiểu 22in " khuyên dùng 24in tăng đọ trải nghiệm game thủ. Các dòng từ trung cấp tới cao cấp bao gồm các Combo: Motospeed K40-K70 Led màu or CM Storm Devastator Led or các dòng Full cơ giá rẻ', 4000, ''),
(42, 'Máy 43', 'Bình Thường', 0, 'Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 – Chuyên games. Intel® Pentium® Processor G3250 (3M Cache, 3.20 GHz)  (Chip có khả năng cân được các Game hiện tại ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Gigabyte N730 2GD5 " 2Gb/128Bit/DDR5 " Fan tản nhiệt lớn bao mát. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. Màn hình tối thiểu 22in " khuyên dùng 24in tăng đọ trải nghiệm game thủ. Các dòng từ trung cấp tới cao cấp bao gồm các Combo: Motospeed K40-K70 Led màu or CM Storm Devastator Led or các dòng Full cơ giá rẻ', 4000, ''),
(43, 'Máy 44', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(44, 'Máy 45', 'Bình Thường', 0, 'Main: các dòng mã GIGA - MSI - ASUS sử dụng chipset H81 B85 đều được khuyên dùng trong năm 2015\nChip: Intel® Pentium® Processor G3420 BOX hoặc G3220 BOX nếu tài chính cho phép có thể lên i3 - i5 - i7\nRam: G.SKILL, Kington - 2GB hoặc 4GB DDR3 1600 | F3-1600C11S-4GIS\nPSU: Cooler Master hoặc Antec hoặc Acbel ( máy có bền hay ko là do sử dụng những PSU có tên tuổi và thương hiệu nổi tiếng )\nVGA: ZOTAC hoặc MSI hoặc GIGA GeForce GTX650, 650Ti; GT730, 740, 750 1GB 128GD5\nMàn hình: - AOC 22-23''''  I2x69V LED IPS\n                   - LED LG 22M45D-B \n                   - Asus 228D\n                   - LED DELL 21.5’  E2215H\n                   - LED ACER 21.5’ wide   K222HQL\nChuột: Fuhlen102 or G60\nPhím: Amaru TT espost, Fuhlen 411 - 420 - G450\nTai nghe: Ovann X1, tai trâu', 4000, ''),
(45, 'Máy 46', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(46, 'Máy 47', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(47, 'Máy 48', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(48, 'Máy 49', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(49, 'Máy 50', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(50, 'Máy 51', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(51, 'Máy 52', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(52, 'Máy 53', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(53, 'Máy 54', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(54, 'Máy 55', 'Bình Thường', 1, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(55, 'Máy 56', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(56, 'Máy 57', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(57, 'Máy 58', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(58, 'Máy 59', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(59, 'Máy 60', 'Bình Thường', 0, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(60, 'Máy 61', 'Bình Thường', 1, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, ''),
(61, 'Máy 62', 'Bình Thường', 1, 'Asus H81 M-D | Gigabyte H81-DS2 Full tụ rắn Sk 1150 Dòng Main thế hệ 4 chạy mát 24/24 –Chuyên games. Intel® Core™i3-4150 |  i3-4160 Processor (3M Cache, 3.60 GHz) (Chip có khả năng cân được các Game Hot 2015 ). 4GB Gkill Bus 1600 tản nhiệt |  Kingmax 4Gb Bus 1333 | Kingston 4Gb Bus 1333. Asus | Gigabyte GT 730 | GT 740 | R7 250X | 1GB or 2Gb/128Bit/DDR5. Jetek | Acbel Saga FSP | Cooler Mater 400W | 500W Fan 12cm. SamSung | LG | Asus | Dell | AOC…20”,22”,24”,27” in. Colorvis C88 | E-Blue | Fuhlen | CM Stom | Tte Sport | chống nước, chuyên game. ', 4000, '');

-- --------------------------------------------------------

--
-- Table structure for table `phiennguoidung`
--

CREATE TABLE `phiennguoidung` (
  `id` int(11) NOT NULL,
  `idm` int(111) NOT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `thoigianbatdau` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `thoigianketthuc` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `thoigianchoi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thanhtien` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phiennguoidung`
--

INSERT INTO `phiennguoidung` (`id`, `idm`, `trangthai`, `thoigianbatdau`, `thoigianketthuc`, `thoigianchoi`, `thanhtien`) VALUES
(25, 1, 1, '2016-11-14 03:30:52', '2016-11-20 18:23:12', '14:52:20', '59488'),
(26, 2, 1, '2016-11-14 04:46:06', '2016-11-20 03:17:13', '22:31:07', '90073'),
(27, 20, 1, '2016-11-14 04:48:43', '2016-11-18 08:45:44', '03:57:01', '15801'),
(28, 31, 1, '2016-11-14 05:08:04', '2016-11-20 10:41:50', '05:33:46', '22251'),
(29, 35, 1, '2016-11-14 05:27:06', '2016-11-20 10:41:49', '05:14:43', '20980'),
(30, 60, 1, '2016-11-14 11:23:46', '2016-11-20 10:41:47', '23:18:01', '93201'),
(31, 5, 1, '2016-11-14 13:01:00', '2016-11-20 10:41:30', '21:40:30', '86696'),
(32, 9, 1, '2016-11-14 13:07:18', '2016-11-18 08:40:43', '19:33:25', '78227'),
(33, 33, 1, '2016-11-14 13:15:58', '2016-11-20 10:41:49', '21:25:51', '85722'),
(34, 6, 1, '2016-11-14 13:18:00', '2016-11-20 10:41:31', '21:23:31', '85567'),
(35, 34, 1, '2016-11-14 13:26:29', '2016-11-20 10:41:49', '21:15:20', '85022'),
(36, 22, 1, '2016-11-14 13:26:40', '2016-11-14 14:18:01', '00:51:21', '3423'),
(37, 3, 1, '2016-11-14 14:34:31', '2016-11-18 08:48:37', '18:14:06', '72939'),
(38, 54, 1, '2016-11-14 16:01:28', '2016-11-14 16:02:01', '00:00:33', '1000'),
(39, 15, 1, '2016-11-18 08:42:29', '2016-11-21 01:36:32', '16:54:03', '67603'),
(40, 16, 1, '2016-11-20 03:17:20', '2016-11-20 03:20:49', '00:03:29', '1000'),
(41, 16, 1, '2016-11-20 03:20:33', '2016-11-20 03:20:33', '00:00', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `quantrivien`
--

CREATE TABLE `quantrivien` (
  `idqt` int(100) NOT NULL,
  `tendangnhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isadmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quantrivien`
--

INSERT INTO `quantrivien` (`idqt`, `tendangnhap`, `matkhau`, `hoten`, `isadmin`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Văn Vương', 1),
(2, 'admin1', 'd41d8cd98f00b204e9800998ecf8427e', 'Lê Thị Tuyết Nhung', 0),
(3, 'admin2', 'd41d8cd98f00b204e9800998ecf8427e', 'Lê Xuân Diệu', 1),
(4, 'admin3', 'd41d8cd98f00b204e9800998ecf8427e', 'Nguyễn Phi Trường', 0),
(5, 'admin4', 'd41d8cd98f00b204e9800998ecf8427e', 'Trương Quân Bảo', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`iddv`);

--
-- Indexes for table `dichvudung`
--
ALTER TABLE `dichvudung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `may`
--
ALTER TABLE `may`
  ADD PRIMARY KEY (`idm`);

--
-- Indexes for table `phiennguoidung`
--
ALTER TABLE `phiennguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quantrivien`
--
ALTER TABLE `quantrivien`
  ADD PRIMARY KEY (`idqt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `iddv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `dichvudung`
--
ALTER TABLE `dichvudung`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `may`
--
ALTER TABLE `may`
  MODIFY `idm` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `phiennguoidung`
--
ALTER TABLE `phiennguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `quantrivien`
--
ALTER TABLE `quantrivien`
  MODIFY `idqt` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
