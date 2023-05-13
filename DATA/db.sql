-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 05:26 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sidemit`
--

-- --------------------------------------------------------

--
-- Table structure for table `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('bc09f5cb27eb');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `desc` varchar(300) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `desc`, `image`, `category`) VALUES
(3, 'Kemeja Lengan Panjang Kain Katun Toyobo', '<table>\n    <tr>\n        <td><td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S</td>\n        <td>92</td>\n        <td>51</td>\n        <td>60</td>\n        <td>32</td>\n    </tr>\n    <tr>\n        <', 'kemejapanjang1.png', 'kemeja'),
(4, 'Kemeja Lengan Panjang Kain Katun Silk Sutra', '<table>\n    <tr>\n        <td><td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S</td>\n        <td>92</td>\n        <td>51</td>\n        <td>60</td>\n        <td>32</td>\n    </tr>\n    <tr>\n        <', 'kemejapanjang2.png', 'kemeja'),
(5, 'Kemeja Lengan Panjang Kain Linen', '<table>\n    <tr>\n        <td><td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S</td>\n        <td>92</td>\n        <td>51</td>\n        <td>60</td>\n        <td>32</td>\n    </tr>\n    <tr>\n        <', 'kemejapanjang3.png', 'kemeja'),
(6, 'Kemeja Lengan Panjang Kain Rayon', '<table>\n    <tr>\n        <td><td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S</td>\n        <td>92</td>\n        <td>51</td>\n        <td>60</td>\n        <td>32</td>\n    </tr>\n    <tr>\n        <', 'kemejapanjang1.png', 'kemeja'),
(7, 'Kemeja Crop Kain Katun Toyobo', '<table>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S</td>\n        <td>92</td>\n        <td>51</td>\n        <td>44</td>\n        <td>32</td>\n    </tr>\n    <tr>\n        ', 'kemejacrop1.png', 'kemeja'),
(8, 'Kemeja Crop Kain Katun Silk Sutra', '<table>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S</td>\n        <td>92</td>\n        <td>51</td>\n        <td>44</td>\n        <td>32</td>\n    </tr>\n    <tr>\n        ', 'kemejacrop1.png', 'kemeja'),
(9, 'Kemeja Crop Kain Linen', '<table>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S</td>\n        <td>92</td>\n        <td>51</td>\n        <td>44</td>\n        <td>32</td>\n    </tr>\n    <tr>\n        ', 'kemejacrop1.png', 'kemeja'),
(10, 'Kemeja Crop Kain Rayon', '<table>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S</td>\n        <td>92</td>\n        <td>51</td>\n        <td>44</td>\n        <td>32</td>\n    </tr>\n    <tr>\n        ', 'kemejacrop1.png', 'kemeja'),
(11, 'Kemeja Lengan Pendek Kain Katun Toyobo', '<table>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S</td>\n        <td>92</td>\n        <td>22</td>\n        <td>60</td>\n        <td>32</td>\n    </tr>\n    <tr>\n        ', 'kemejapendek1.png', 'kemeja'),
(12, 'Kemeja Lengan Pendek Kain Silk Sutra', '<table>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S</td>\n        <td>92</td>\n        <td>22</td>\n        <td>60</td>\n        <td>32</td>\n    </tr>\n    <tr>\n        ', 'kemejapendek2.png', 'kemeja'),
(13, 'Kemeja Lengan Pendek Kain Linen', '<table>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S</td>\n        <td>92</td>\n        <td>22</td>\n        <td>60</td>\n        <td>32</td>\n    </tr>\n    <tr>\n        ', 'kemejapendek1.png', 'kemeja'),
(15, 'Kemeja Lengan Pendek Kain Rayon', '<table>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S</td>\n        <td>92</td>\n        <td>22</td>\n        <td>60</td>\n        <td>32</td>\n    </tr>\n    <tr>\n        ', 'kemejapendek2.png', 'kemeja'),
(16, 'Blouse Kain Rayon', '<table>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S</td>\n        <td>95</td>\n        <td>46</td>\n        <td>56</td>\n        <td>35</td>\n    </tr>\n    <tr>\n        ', 'blouse1.png', 'blouse'),
(17, 'Blouse Kain Linen', '<table>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S</td>\n        <td>95</td>\n        <td>46</td>\n        <td>56</td>\n        <td>35</td>\n    </tr>\n    <tr>\n        ', 'blouse2.png', 'blouse'),
(18, 'Blouse Kain Moscrepe', '<table>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S</td>\n        <td>95</td>\n        <td>46</td>\n        <td>56</td>\n        <td>35</td>\n    </tr>\n    <tr>\n        ', 'blouse3.png', 'blouse'),
(19, 'Blouse Kain Silk Sutra', '<table>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S</td>\n        <td>95</td>\n        <td>46</td>\n        <td>56</td>\n        <td>35</td>\n    </tr>\n    <tr>\n        ', 'blouse4.png', 'blouse'),
(20, 'Blouse Kain Crinkle', '<table>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S</td>\n        <td>95</td>\n        <td>46</td>\n        <td>56</td>\n        <td>35</td>\n    </tr>\n    <tr>\n        ', 'blouse5.png', 'blouse'),
(21, 'Dress Panjang Kain Crepe', '<table>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n        <td>lebar pinggul</td>\n    </tr>\n    <tr>\n        <td>XS</td>\n        <td>88</td>\n        <td>45</td>\n        <td>135</td>\n        <td>43', 'dresspanjang1.png', 'dress'),
(22, 'Dress Panjang Kain Ceruti', '<table>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n        <td>lebar pinggul</td>\n    </tr>\n    <tr>\n        <td>XS</td>\n        <td>88</td>\n        <td>45</td>\n        <td>135</td>\n        <td>43', 'dresspanjang2.png', 'dress'),
(23, 'Dress Panjang Kain Silk Satin', '<table>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n        <td>lebar pinggul</td>\n    </tr>\n    <tr>\n        <td>XS</td>\n        <td>88</td>\n        <td>45</td>\n        <td>135</td>\n        <td>43', 'dresspanjang3.png', 'dress'),
(24, 'Dress Panjang Kain Scuba', '<table>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n        <td>lebar pinggul</td>\n    </tr>\n    <tr>\n        <td>XS</td>\n        <td>88</td>\n        <td>45</td>\n        <td>135</td>\n        <td>43', 'dresspanjang1.png', 'dress'),
(33, 'One Set Panjang Kain Rayon', '<table>\n    <tr>\n        <td>TOP</td>\n        <td></td>\n        <td></td>\n        <td></td>\n        <td></td>\n    </tr>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S<', 'onesetpanjang2.png', 'oneSet'),
(34, 'One Set Panjang Kain Crinkle', '<table>\n    <tr>\n        <td>TOP</td>\n        <td></td>\n        <td></td>\n        <td></td>\n        <td></td>\n    </tr>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S<', 'onesetpanjang1.png', 'oneSet'),
(35, 'One Set Panjang Kain Linen', '<table>\n    <tr>\n        <td>TOP</td>\n        <td></td>\n        <td></td>\n        <td></td>\n        <td></td>\n    </tr>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S<', 'onesetpanjang2.png', 'oneSet'),
(37, 'One Set Pendek Kain Rayon', '<table>\n    <tr>\n        <td>TOP</td>\n        <td></td>\n        <td></td>\n        <td></td>\n        <td></td>\n    </tr>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S<', 'onesetpendek1.png', 'oneSet'),
(38, 'One Set Pendek Kain Crinkle', '<table>\n    <tr>\n        <td>TOP</td>\n        <td></td>\n        <td></td>\n        <td></td>\n        <td></td>\n    </tr>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S<', 'onesetpendek2.png', 'oneSet'),
(39, 'One Set Pendek Kain Linen', '<table>\n    <tr>\n        <td>TOP</td>\n        <td></td>\n        <td></td>\n        <td></td>\n        <td></td>\n    </tr>\n    <tr>\n        <td></td>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n    </tr>\n    <tr>\n        <td>S<', 'onesetpendek1.png', 'oneSet'),
(41, 'Celana Panjang Kain Drill', '<table>\n    <tr>\n        <td></td>\n        <td>lingkar paha</td>\n        <td>lingkar pinggang</td>\n        <td>lingkar pinggul</td>\n        <td>pesak</td>\n        <td>panjang celana</td>\n    </tr>\n    <tr>\n        <td>27</td>\n        <td>60</td>\n        <td>66</td>\n        <td>80</td>\n        <td>29', 'celanapanjang1.png', 'celana'),
(43, 'Celana Panjang Kain Rib Knit', '<table>\n    <tr>\n        <td></td>\n        <td>lingkar paha</td>\n        <td>lingkar pinggang</td>\n        <td>lingkar pinggul</td>\n        <td>pesak</td>\n        <td>panjang celana</td>\n    </tr>\n    <tr>\n        <td>27</td>\n        <td>60</td>\n        <td>66</td>\n        <td>80</td>\n        <td>29', 'celanapanjang2.png', 'celana'),
(44, 'Celana Panjang Kain Rayon', '<table>\n    <tr>\n        <td></td>\n        <td>lingkar paha</td>\n        <td>lingkar pinggang</td>\n        <td>lingkar pinggul</td>\n        <td>pesak</td>\n        <td>panjang celana</td>\n    </tr>\n    <tr>\n        <td>27</td>\n        <td>60</td>\n        <td>66</td>\n        <td>80</td>\n        <td>29', 'celanapanjang3.png', 'celana'),
(45, 'Celana Panjang Kain Crinkle', '<table>\n    <tr>\n        <td></td>\n        <td>lingkar paha</td>\n        <td>lingkar pinggang</td>\n        <td>lingkar pinggul</td>\n        <td>pesak</td>\n        <td>panjang celana</td>\n    </tr>\n    <tr>\n        <td>27</td>\n        <td>60</td>\n        <td>66</td>\n        <td>80</td>\n        <td>29', 'celanapanjang4.png', 'celana'),
(46, 'Celana Panjang Kain Polyster', '<table>\n    <tr>\n        <td></td>\n        <td>lingkar paha</td>\n        <td>lingkar pinggang</td>\n        <td>lingkar pinggul</td>\n        <td>pesak</td>\n        <td>panjang celana</td>\n    </tr>\n    <tr>\n        <td>27</td>\n        <td>60</td>\n        <td>66</td>\n        <td>80</td>\n        <td>29', 'celanapanjang1.png', 'celana'),
(47, 'Celana Pendek Kain Drill', '<table>\n    <tr>\n        <td></td>\n        <td>lingkar paha</td>\n        <td>lingkar pinggang</td>\n        <td>lingkar pinggul</td>\n        <td>pesak</td>\n        <td>panjang celana</td>\n    </tr>\n    <tr>\n        <td>27</td>\n        <td>60</td>\n        <td>70</td>\n        <td>90</td>\n        <td>27', 'celanapendek1.png', 'celana'),
(48, 'Celana Pendek Kain Polyster', '<table>\n    <tr>\n        <td></td>\n        <td>lingkar paha</td>\n        <td>lingkar pinggang</td>\n        <td>lingkar pinggul</td>\n        <td>pesak</td>\n        <td>panjang celana</td>\n    </tr>\n    <tr>\n        <td>27</td>\n        <td>60</td>\n        <td>70</td>\n        <td>90</td>\n        <td>27', 'celanapendek1.png', 'celana'),
(49, 'Celana Pendek Kain Rib Knit', '<table>\n    <tr>\n        <td></td>\n        <td>lingkar paha</td>\n        <td>lingkar pinggang</td>\n        <td>lingkar pinggul</td>\n        <td>pesak</td>\n        <td>panjang celana</td>\n    </tr>\n    <tr>\n        <td>27</td>\n        <td>60</td>\n        <td>70</td>\n        <td>90</td>\n        <td>27', 'celanapendek1.png', 'celana'),
(50, 'Celana Pendek Kain Rayon', '<table>\n    <tr>\n        <td></td>\n        <td>lingkar paha</td>\n        <td>lingkar pinggang</td>\n        <td>lingkar pinggul</td>\n        <td>pesak</td>\n        <td>panjang celana</td>\n    </tr>\n    <tr>\n        <td>27</td>\n        <td>60</td>\n        <td>70</td>\n        <td>90</td>\n        <td>27', 'celanapendek1.png', 'celana'),
(51, 'Celana Pendek Kain Crinkle', '<table>\n    <tr>\n        <td></td>\n        <td>lingkar paha</td>\n        <td>lingkar pinggang</td>\n        <td>lingkar pinggul</td>\n        <td>pesak</td>\n        <td>panjang celana</td>\n    </tr>\n    <tr>\n        <td>27</td>\n        <td>60</td>\n        <td>70</td>\n        <td>90</td>\n        <td>27', 'celanapendek1.png', 'celana'),
(52, 'Dress Pendek Kain Crepe', '<table>\n    <tr>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n        <td>lebar pinggul</td>\n    </tr>\n    <tr>\n        <td>XS</td>\n        <td>88</td>\n        <td>24</td>\n        <td>107</td>\n        <td>35</td>\n        <td>', 'dresspendek1.png', 'dress'),
(53, 'Dress Pendek Kain Ceruti', '<table>\n    <tr>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n        <td>lebar pinggul</td>\n    </tr>\n    <tr>\n        <td>XS</td>\n        <td>88</td>\n        <td>24</td>\n        <td>107</td>\n        <td>35</td>\n        <td>', 'dresspendek2.png', 'dress'),
(54, 'Dress Pendek Kain Silk Satin', '<table>\n    <tr>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n        <td>lebar pinggul</td>\n    </tr>\n    <tr>\n        <td>XS</td>\n        <td>88</td>\n        <td>24</td>\n        <td>107</td>\n        <td>35</td>\n        <td>', 'dresspendek1.png', 'dress'),
(55, 'Dress Pendek Kain Scuba', '<table>\n    <tr>\n        <td>Lebar Dada</td>\n        <td>Panjang lengan</td>\n        <td>panjang baju</td>\n        <td>lebar lengan</td>\n        <td>lebar pinggul</td>\n    </tr>\n    <tr>\n        <td>XS</td>\n        <td>88</td>\n        <td>24</td>\n        <td>107</td>\n        <td>35</td>\n        <td>', 'dresspendek2.png', 'dress');

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` int(11) NOT NULL,
  `productColorHex` varchar(50) DEFAULT NULL,
  `productColorName` varchar(50) DEFAULT NULL,
  `productID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`id`, `productColorHex`, `productColorName`, `productID`) VALUES
(3, '#000000', 'black', 3),
(4, '#000000', 'black', 4),
(5, '#000000', 'black', 5),
(6, '#000000', 'black', 6),
(7, '#000000', 'black', 7),
(8, '#000000', 'black', 8),
(9, '#000000', 'black', 9),
(10, '#000000', 'black', 10),
(11, '#000000', 'black', 11),
(12, '#000000', 'black', 12),
(13, '#000000', 'black', 13),
(14, '#000000', 'black', 15),
(15, '#FDFBF0', 'white', 3),
(16, '#FDFBF0', 'white', 4),
(17, '#FDFBF0', 'white', 5),
(18, '#FDFBF0', 'white', 6),
(19, '#FDFBF0', 'white', 7),
(20, '#FDFBF0', 'white', 8),
(21, '#FDFBF0', 'white', 9),
(22, '#FDFBF0', 'white', 10),
(23, '#FDFBF0', 'white', 11),
(24, '#FDFBF0', 'white', 12),
(25, '#FDFBF0', 'white', 13),
(26, '#FDFBF0', 'white', 15),
(27, '#ED8E98', 'dusty pink', 3),
(28, '#ED8E98', 'dusty pink', 4),
(29, '#ED8E98', 'dusty pink', 5),
(30, '#ED8E98', 'dusty pink', 6),
(31, '#ED8E98', 'dusty pink', 7),
(32, '#ED8E98', 'dusty pink', 8),
(33, '#ED8E98', 'dusty pink', 9),
(34, '#ED8E98', 'dusty pink', 10),
(35, '#ED8E98', 'dusty pink', 11),
(36, '#ED8E98', 'dusty pink', 12),
(37, '#ED8E98', 'dusty pink', 13),
(38, '#ED8E98', 'dusty pink', 15),
(39, '#D1A071', 'brown', 3),
(40, '#D1A071', 'brown', 4),
(41, '#D1A071', 'brown', 5),
(42, '#D1A071', 'brown', 6),
(43, '#D1A071', 'brown', 7),
(44, '#D1A071', 'brown', 8),
(45, '#D1A071', 'brown', 9),
(46, '#D1A071', 'brown', 10),
(47, '#D1A071', 'brown', 11),
(48, '#D1A071', 'brown', 12),
(49, '#D1A071', 'brown', 13),
(50, '#D1A071', 'brown', 15),
(51, '#5A9B51', 'olive', 3),
(52, '#5A9B51', 'olive', 4),
(53, '#5A9B51', 'olive', 5),
(54, '#5A9B51', 'olive', 6),
(55, '#5A9B51', 'olive', 7),
(56, '#5A9B51', 'olive', 8),
(57, '#5A9B51', 'olive', 9),
(58, '#5A9B51', 'olive', 10),
(59, '#5A9B51', 'olive', 11),
(60, '#5A9B51', 'olive', 12),
(61, '#5A9B51', 'olive', 13),
(62, '#5A9B51', 'olive', 15),
(63, '#32C7EB', 'sky blue', 3),
(64, '#32C7EB', 'sky blue', 4),
(65, '#32C7EB', 'sky blue', 5),
(66, '#32C7EB', 'sky blue', 6),
(67, '#32C7EB', 'sky blue', 7),
(68, '#32C7EB', 'sky blue', 8),
(69, '#32C7EB', 'sky blue', 9),
(70, '#32C7EB', 'sky blue', 10),
(71, '#32C7EB', 'sky blue', 11),
(72, '#32C7EB', 'sky blue', 12),
(73, '#32C7EB', 'sky blue', 13),
(74, '#32C7EB', 'sky blue', 15),
(75, '#941B50', 'maroon', 3),
(76, '#941B50', 'maroon', 4),
(77, '#941B50', 'maroon', 5),
(78, '#941B50', 'maroon', 6),
(79, '#941B50', 'maroon', 7),
(80, '#941B50', 'maroon', 8),
(81, '#941B50', 'maroon', 9),
(82, '#941B50', 'maroon', 10),
(83, '#941B50', 'maroon', 11),
(84, '#941B50', 'maroon', 12),
(85, '#941B50', 'maroon', 13),
(86, '#941B50', 'maroon', 15),
(87, '#FCC761', 'beige', 3),
(88, '#FCC761', 'beige', 4),
(89, '#FCC761', 'beige', 5),
(90, '#FCC761', 'beige', 6),
(91, '#FCC761', 'beige', 7),
(92, '#FCC761', 'beige', 8),
(93, '#FCC761', 'beige', 9),
(94, '#FCC761', 'beige', 10),
(95, '#FCC761', 'beige', 11),
(96, '#FCC761', 'beige', 12),
(97, '#FCC761', 'beige', 13),
(98, '#FCC761', 'beige', 15),
(99, '#060644', 'navy', 3),
(100, '#060644', 'navy', 4),
(101, '#060644', 'navy', 5),
(102, '#060644', 'navy', 6),
(103, '#060644', 'navy', 7),
(104, '#060644', 'navy', 8),
(105, '#060644', 'navy', 9),
(106, '#060644', 'navy', 10),
(107, '#060644', 'navy', 11),
(108, '#060644', 'navy', 12),
(109, '#060644', 'navy', 13),
(110, '#060644', 'navy', 15),
(111, '#FA3571', 'fuschia', 3),
(112, '#FA3571', 'fuschia', 4),
(113, '#FA3571', 'fuschia', 5),
(114, '#FA3571', 'fuschia', 6),
(115, '#FA3571', 'fuschia', 7),
(116, '#FA3571', 'fuschia', 8),
(117, '#FA3571', 'fuschia', 9),
(118, '#FA3571', 'fuschia', 10),
(119, '#FA3571', 'fuschia', 11),
(120, '#FA3571', 'fuschia', 12),
(121, '#FA3571', 'fuschia', 13),
(122, '#FA3571', 'fuschia', 15),
(123, '#1893F8', 'azzure', 3),
(124, '#1893F8', 'azzure', 4),
(125, '#1893F8', 'azzure', 5),
(126, '#1893F8', 'azzure', 6),
(127, '#1893F8', 'azzure', 7),
(128, '#1893F8', 'azzure', 8),
(129, '#1893F8', 'azzure', 9),
(130, '#1893F8', 'azzure', 10),
(131, '#1893F8', 'azzure', 11),
(132, '#1893F8', 'azzure', 12),
(133, '#1893F8', 'azzure', 13),
(134, '#1893F8', 'azzure', 15),
(135, '#CEB290', 'khaki', 3),
(136, '#CEB290', 'khaki', 4),
(137, '#CEB290', 'khaki', 5),
(138, '#CEB290', 'khaki', 6),
(139, '#CEB290', 'khaki', 7),
(140, '#CEB290', 'khaki', 8),
(141, '#CEB290', 'khaki', 9),
(142, '#CEB290', 'khaki', 10),
(143, '#CEB290', 'khaki', 11),
(144, '#CEB290', 'khaki', 12),
(145, '#CEB290', 'khaki', 13),
(146, '#CEB290', 'khaki', 15),
(147, '#D8D355', 'butter', 3),
(148, '#D8D355', 'butter', 4),
(149, '#D8D355', 'butter', 5),
(150, '#D8D355', 'butter', 6),
(151, '#D8D355', 'butter', 7),
(152, '#D8D355', 'butter', 8),
(153, '#D8D355', 'butter', 9),
(154, '#D8D355', 'butter', 10),
(155, '#D8D355', 'butter', 11),
(156, '#D8D355', 'butter', 12),
(157, '#D8D355', 'butter', 13),
(158, '#D8D355', 'butter', 15),
(159, '#FF914D', 'flamingo', 3),
(160, '#FF914D', 'flamingo', 4),
(161, '#FF914D', 'flamingo', 5),
(162, '#FF914D', 'flamingo', 6),
(163, '#FF914D', 'flamingo', 7),
(164, '#FF914D', 'flamingo', 8),
(165, '#FF914D', 'flamingo', 9),
(166, '#FF914D', 'flamingo', 10),
(167, '#FF914D', 'flamingo', 11),
(168, '#FF914D', 'flamingo', 12),
(169, '#FF914D', 'flamingo', 13),
(170, '#FF914D', 'flamingo', 15),
(171, '#B0BDC1', 'light gray', 3),
(172, '#B0BDC1', 'light gray', 4),
(173, '#B0BDC1', 'light gray', 5),
(174, '#B0BDC1', 'light gray', 6),
(175, '#B0BDC1', 'light gray', 7),
(176, '#B0BDC1', 'light gray', 8),
(177, '#B0BDC1', 'light gray', 9),
(178, '#B0BDC1', 'light gray', 10),
(179, '#B0BDC1', 'light gray', 11),
(180, '#B0BDC1', 'light gray', 12),
(181, '#B0BDC1', 'light gray', 13),
(182, '#B0BDC1', 'light gray', 15),
(183, '#735E58', 'coffe', 3),
(184, '#735E58', 'coffe', 4),
(185, '#735E58', 'coffe', 5),
(186, '#735E58', 'coffe', 6),
(187, '#735E58', 'coffe', 7),
(188, '#735E58', 'coffe', 8),
(189, '#735E58', 'coffe', 9),
(190, '#735E58', 'coffe', 10),
(191, '#735E58', 'coffe', 11),
(192, '#735E58', 'coffe', 12),
(193, '#735E58', 'coffe', 13),
(194, '#735E58', 'coffe', 15),
(195, '#ECE6DB', 'nude', 3),
(196, '#ECE6DB', 'nude', 4),
(197, '#ECE6DB', 'nude', 5),
(198, '#ECE6DB', 'nude', 6),
(199, '#ECE6DB', 'nude', 7),
(200, '#ECE6DB', 'nude', 8),
(201, '#ECE6DB', 'nude', 9),
(202, '#ECE6DB', 'nude', 10),
(203, '#ECE6DB', 'nude', 11),
(204, '#ECE6DB', 'nude', 12),
(205, '#ECE6DB', 'nude', 13),
(206, '#ECE6DB', 'nude', 15),
(207, '#35D5D0', 'turqoise', 3),
(208, '#35D5D0', 'turqoise', 4),
(209, '#35D5D0', 'turqoise', 5),
(210, '#35D5D0', 'turqoise', 6),
(211, '#35D5D0', 'turqoise', 7),
(212, '#35D5D0', 'turqoise', 8),
(213, '#35D5D0', 'turqoise', 9),
(214, '#35D5D0', 'turqoise', 10),
(215, '#35D5D0', 'turqoise', 11),
(216, '#35D5D0', 'turqoise', 12),
(217, '#35D5D0', 'turqoise', 13),
(218, '#35D5D0', 'turqoise', 15),
(219, '#FFC0CB', 'pink', 3),
(220, '#FFC0CB', 'pink', 4),
(221, '#FFC0CB', 'pink', 5),
(222, '#FFC0CB', 'pink', 6),
(223, '#FFC0CB', 'pink', 7),
(224, '#FFC0CB', 'pink', 8),
(225, '#FFC0CB', 'pink', 9),
(226, '#FFC0CB', 'pink', 10),
(227, '#FFC0CB', 'pink', 11),
(228, '#FFC0CB', 'pink', 12),
(229, '#FFC0CB', 'pink', 13),
(230, '#FFC0CB', 'pink', 15),
(231, '#516251', 'army', 3),
(232, '#516251', 'army', 4),
(233, '#516251', 'army', 5),
(234, '#516251', 'army', 6),
(235, '#516251', 'army', 7),
(236, '#516251', 'army', 8),
(237, '#516251', 'army', 9),
(238, '#516251', 'army', 10),
(239, '#516251', 'army', 11),
(240, '#516251', 'army', 12),
(241, '#516251', 'army', 13),
(242, '#516251', 'army', 15),
(243, '#000000', 'black', 41),
(244, '#000000', 'black', 43),
(245, '#000000', 'black', 44),
(246, '#000000', 'black', 45),
(247, '#000000', 'black', 46),
(248, '#000000', 'black', 47),
(249, '#000000', 'black', 48),
(250, '#000000', 'black', 49),
(251, '#000000', 'black', 50),
(252, '#000000', 'black', 51),
(253, '#FDFBF0', 'broken white', 41),
(254, '#FDFBF0', 'broken white', 43),
(255, '#FDFBF0', 'broken white', 44),
(256, '#FDFBF0', 'broken white', 45),
(257, '#FDFBF0', 'broken white', 46),
(258, '#FDFBF0', 'broken white', 47),
(259, '#FDFBF0', 'broken white', 48),
(260, '#FDFBF0', 'broken white', 49),
(261, '#FDFBF0', 'broken white', 50),
(262, '#FDFBF0', 'broken white', 51),
(263, '#516251', 'army', 41),
(264, '#516251', 'army', 43),
(265, '#516251', 'army', 44),
(266, '#516251', 'army', 45),
(267, '#516251', 'army', 46),
(268, '#516251', 'army', 47),
(269, '#516251', 'army', 48),
(270, '#516251', 'army', 49),
(271, '#516251', 'army', 50),
(272, '#516251', 'army', 51),
(273, '#9CBD99', 'matcha', 41),
(274, '#9CBD99', 'matcha', 43),
(275, '#9CBD99', 'matcha', 44),
(276, '#9CBD99', 'matcha', 45),
(277, '#9CBD99', 'matcha', 46),
(278, '#9CBD99', 'matcha', 47),
(279, '#9CBD99', 'matcha', 48),
(280, '#9CBD99', 'matcha', 49),
(281, '#9CBD99', 'matcha', 50),
(282, '#9CBD99', 'matcha', 51),
(283, '#F4DABC', 'cream', 41),
(284, '#F4DABC', 'cream', 43),
(285, '#F4DABC', 'cream', 44),
(286, '#F4DABC', 'cream', 45),
(287, '#F4DABC', 'cream', 46),
(288, '#F4DABC', 'cream', 47),
(289, '#F4DABC', 'cream', 48),
(290, '#F4DABC', 'cream', 49),
(291, '#F4DABC', 'cream', 50),
(292, '#F4DABC', 'cream', 51),
(293, '#D6CECE', 'grey', 41),
(294, '#D6CECE', 'grey', 43),
(295, '#D6CECE', 'grey', 44),
(296, '#D6CECE', 'grey', 45),
(297, '#D6CECE', 'grey', 46),
(298, '#D6CECE', 'grey', 47),
(299, '#D6CECE', 'grey', 48),
(300, '#D6CECE', 'grey', 49),
(301, '#D6CECE', 'grey', 50),
(302, '#D6CECE', 'grey', 51),
(303, '#C69E5F', 'moccalatte', 41),
(304, '#C69E5F', 'moccalatte', 43),
(305, '#C69E5F', 'moccalatte', 44),
(306, '#C69E5F', 'moccalatte', 45),
(307, '#C69E5F', 'moccalatte', 46),
(308, '#C69E5F', 'moccalatte', 47),
(309, '#C69E5F', 'moccalatte', 48),
(310, '#C69E5F', 'moccalatte', 49),
(311, '#C69E5F', 'moccalatte', 50),
(312, '#C69E5F', 'moccalatte', 51),
(313, '#DF7716', 'teracotta', 41),
(314, '#DF7716', 'teracotta', 43),
(315, '#DF7716', 'teracotta', 44),
(316, '#DF7716', 'teracotta', 45),
(317, '#DF7716', 'teracotta', 46),
(318, '#DF7716', 'teracotta', 47),
(319, '#DF7716', 'teracotta', 48),
(320, '#DF7716', 'teracotta', 49),
(321, '#DF7716', 'teracotta', 50),
(322, '#DF7716', 'teracotta', 51),
(323, '#B6A7AD', 'mauve', 41),
(324, '#B6A7AD', 'mauve', 43),
(325, '#B6A7AD', 'mauve', 44),
(326, '#B6A7AD', 'mauve', 45),
(327, '#B6A7AD', 'mauve', 46),
(328, '#B6A7AD', 'mauve', 47),
(329, '#B6A7AD', 'mauve', 48),
(330, '#B6A7AD', 'mauve', 49),
(331, '#B6A7AD', 'mauve', 50),
(332, '#B6A7AD', 'mauve', 51),
(333, '#FA3571', 'fuchsia', 41),
(334, '#FA3571', 'fuchsia', 43),
(335, '#FA3571', 'fuchsia', 44),
(336, '#FA3571', 'fuchsia', 45),
(337, '#FA3571', 'fuchsia', 46),
(338, '#FA3571', 'fuchsia', 47),
(339, '#FA3571', 'fuchsia', 48),
(340, '#FA3571', 'fuchsia', 49),
(341, '#FA3571', 'fuchsia', 50),
(342, '#FA3571', 'fuchsia', 51),
(343, '#B85A37', 'rosewood', 41),
(344, '#B85A37', 'rosewood', 43),
(345, '#B85A37', 'rosewood', 44),
(346, '#B85A37', 'rosewood', 45),
(347, '#B85A37', 'rosewood', 46),
(348, '#B85A37', 'rosewood', 47),
(349, '#B85A37', 'rosewood', 48),
(350, '#B85A37', 'rosewood', 49),
(351, '#B85A37', 'rosewood', 50),
(352, '#B85A37', 'rosewood', 51),
(353, '#54894C', 'green', 41),
(354, '#54894C', 'green', 43),
(355, '#54894C', 'green', 44),
(356, '#54894C', 'green', 45),
(357, '#54894C', 'green', 46),
(358, '#54894C', 'green', 47),
(359, '#54894C', 'green', 48),
(360, '#54894C', 'green', 49),
(361, '#54894C', 'green', 50),
(362, '#54894C', 'green', 51),
(363, '#0D5241', 'emerald', 41),
(364, '#0D5241', 'emerald', 43),
(365, '#0D5241', 'emerald', 44),
(366, '#0D5241', 'emerald', 45),
(367, '#0D5241', 'emerald', 46),
(368, '#0D5241', 'emerald', 47),
(369, '#0D5241', 'emerald', 48),
(370, '#0D5241', 'emerald', 49),
(371, '#0D5241', 'emerald', 50),
(372, '#0D5241', 'emerald', 51),
(373, '#061BB0', 'electric blue', 41),
(374, '#061BB0', 'electric blue', 43),
(375, '#061BB0', 'electric blue', 44),
(376, '#061BB0', 'electric blue', 45),
(377, '#061BB0', 'electric blue', 46),
(378, '#061BB0', 'electric blue', 47),
(379, '#061BB0', 'electric blue', 48),
(380, '#061BB0', 'electric blue', 49),
(381, '#061BB0', 'electric blue', 50),
(382, '#061BB0', 'electric blue', 51),
(383, '#76422F', 'choco', 41),
(384, '#76422F', 'choco', 43),
(385, '#76422F', 'choco', 44),
(386, '#76422F', 'choco', 45),
(387, '#76422F', 'choco', 46),
(388, '#76422F', 'choco', 47),
(389, '#76422F', 'choco', 48),
(390, '#76422F', 'choco', 49),
(391, '#76422F', 'choco', 50),
(392, '#76422F', 'choco', 51),
(393, '#DEB3AD', 'dusty', 41),
(394, '#DEB3AD', 'dusty', 43),
(395, '#DEB3AD', 'dusty', 44),
(396, '#DEB3AD', 'dusty', 45),
(397, '#DEB3AD', 'dusty', 46),
(398, '#DEB3AD', 'dusty', 47),
(399, '#DEB3AD', 'dusty', 48),
(400, '#DEB3AD', 'dusty', 49),
(401, '#DEB3AD', 'dusty', 50),
(402, '#DEB3AD', 'dusty', 51),
(403, '#ED8E98', 'dusty pink', 41),
(404, '#ED8E98', 'dusty pink', 43),
(405, '#ED8E98', 'dusty pink', 44),
(406, '#ED8E98', 'dusty pink', 45),
(407, '#ED8E98', 'dusty pink', 46),
(408, '#ED8E98', 'dusty pink', 47),
(409, '#ED8E98', 'dusty pink', 48),
(410, '#ED8E98', 'dusty pink', 49),
(411, '#ED8E98', 'dusty pink', 50),
(412, '#ED8E98', 'dusty pink', 51),
(413, '#000000', 'black', 21),
(414, '#000000', 'black', 22),
(415, '#000000', 'black', 23),
(416, '#000000', 'black', 24),
(417, '#000000', 'black', 52),
(418, '#000000', 'black', 53),
(419, '#000000', 'black', 54),
(420, '#000000', 'black', 55),
(421, '#800000', 'maroon', 21),
(422, '#800000', 'maroon', 22),
(423, '#800000', 'maroon', 23),
(424, '#800000', 'maroon', 24),
(425, '#800000', 'maroon', 52),
(426, '#800000', 'maroon', 53),
(427, '#800000', 'maroon', 54),
(428, '#800000', 'maroon', 55),
(429, '#0B3705', 'army', 21),
(430, '#0B3705', 'army', 22),
(431, '#0B3705', 'army', 23),
(432, '#0B3705', 'army', 24),
(433, '#0B3705', 'army', 52),
(434, '#0B3705', 'army', 53),
(435, '#0B3705', 'army', 54),
(436, '#0B3705', 'army', 55),
(437, '#AC78BF', 'lavender', 21),
(438, '#AC78BF', 'lavender', 22),
(439, '#AC78BF', 'lavender', 23),
(440, '#AC78BF', 'lavender', 24),
(441, '#AC78BF', 'lavender', 52),
(442, '#AC78BF', 'lavender', 53),
(443, '#AC78BF', 'lavender', 54),
(444, '#AC78BF', 'lavender', 55),
(445, '#DF7716', 'mustard', 21),
(446, '#DF7716', 'mustard', 22),
(447, '#DF7716', 'mustard', 23),
(448, '#DF7716', 'mustard', 24),
(449, '#DF7716', 'mustard', 52),
(450, '#DF7716', 'mustard', 53),
(451, '#DF7716', 'mustard', 54),
(452, '#DF7716', 'mustard', 55),
(453, '#F6A296', 'dusty pink', 21),
(454, '#F6A296', 'dusty pink', 22),
(455, '#F6A296', 'dusty pink', 23),
(456, '#F6A296', 'dusty pink', 24),
(457, '#F6A296', 'dusty pink', 52),
(458, '#F6A296', 'dusty pink', 53),
(459, '#F6A296', 'dusty pink', 54),
(460, '#F6A296', 'dusty pink', 55),
(461, '#F4D014', 'lemon', 21),
(462, '#F4D014', 'lemon', 22),
(463, '#F4D014', 'lemon', 23),
(464, '#F4D014', 'lemon', 24),
(465, '#F4D014', 'lemon', 52),
(466, '#F4D014', 'lemon', 53),
(467, '#F4D014', 'lemon', 54),
(468, '#F4D014', 'lemon', 55),
(469, '#09022B', 'navy', 21),
(470, '#09022B', 'navy', 22),
(471, '#09022B', 'navy', 23),
(472, '#09022B', 'navy', 24),
(473, '#09022B', 'navy', 52),
(474, '#09022B', 'navy', 53),
(475, '#09022B', 'navy', 54),
(476, '#09022B', 'navy', 55),
(477, '#AB835C', 'milo', 21),
(478, '#AB835C', 'milo', 22),
(479, '#AB835C', 'milo', 23),
(480, '#AB835C', 'milo', 24),
(481, '#AB835C', 'milo', 52),
(482, '#AB835C', 'milo', 53),
(483, '#AB835C', 'milo', 54),
(484, '#AB835C', 'milo', 55),
(485, '#FF1A5F', 'pink', 21),
(486, '#FF1A5F', 'pink', 22),
(487, '#FF1A5F', 'pink', 23),
(488, '#FF1A5F', 'pink', 24),
(489, '#FF1A5F', 'pink', 52),
(490, '#FF1A5F', 'pink', 53),
(491, '#FF1A5F', 'pink', 54),
(492, '#FF1A5F', 'pink', 55),
(493, '#BD481C', 'brown coco', 21),
(494, '#BD481C', 'brown coco', 22),
(495, '#BD481C', 'brown coco', 23),
(496, '#BD481C', 'brown coco', 24),
(497, '#BD481C', 'brown coco', 52),
(498, '#BD481C', 'brown coco', 53),
(499, '#BD481C', 'brown coco', 54),
(500, '#BD481C', 'brown coco', 55),
(501, '#54894C', 'green', 21),
(502, '#54894C', 'green', 22),
(503, '#54894C', 'green', 23),
(504, '#54894C', 'green', 24),
(505, '#54894C', 'green', 52),
(506, '#54894C', 'green', 53),
(507, '#54894C', 'green', 54),
(508, '#54894C', 'green', 55),
(509, '#E68AD7', 'lilac', 21),
(510, '#E68AD7', 'lilac', 22),
(511, '#E68AD7', 'lilac', 23),
(512, '#E68AD7', 'lilac', 24),
(513, '#E68AD7', 'lilac', 52),
(514, '#E68AD7', 'lilac', 53),
(515, '#E68AD7', 'lilac', 54),
(516, '#E68AD7', 'lilac', 55),
(517, '#948A8E', 'silver', 21),
(518, '#948A8E', 'silver', 22),
(519, '#948A8E', 'silver', 23),
(520, '#948A8E', 'silver', 24),
(521, '#948A8E', 'silver', 52),
(522, '#948A8E', 'silver', 53),
(523, '#948A8E', 'silver', 54),
(524, '#948A8E', 'silver', 55),
(525, '#483C32', 'taupe', 33),
(526, '#483C32', 'taupe', 34),
(527, '#483C32', 'taupe', 35),
(528, '#483C32', 'taupe', 37),
(529, '#483C32', 'taupe', 38),
(530, '#483C32', 'taupe', 39),
(531, '#BD481C', 'browny', 33),
(532, '#BD481C', 'browny', 34),
(533, '#BD481C', 'browny', 35),
(534, '#BD481C', 'browny', 37),
(535, '#BD481C', 'browny', 38),
(536, '#BD481C', 'browny', 39),
(537, '#F4D014', 'lemon', 33),
(538, '#F4D014', 'lemon', 34),
(539, '#F4D014', 'lemon', 35),
(540, '#F4D014', 'lemon', 37),
(541, '#F4D014', 'lemon', 38),
(542, '#F4D014', 'lemon', 39),
(543, '#738678', 'sage', 33),
(544, '#738678', 'sage', 34),
(545, '#738678', 'sage', 35),
(546, '#738678', 'sage', 37),
(547, '#738678', 'sage', 38),
(548, '#738678', 'sage', 39),
(549, '#E15E34', 'bata', 33),
(550, '#E15E34', 'bata', 34),
(551, '#E15E34', 'bata', 35),
(552, '#E15E34', 'bata', 37),
(553, '#E15E34', 'bata', 38),
(554, '#E15E34', 'bata', 39),
(555, '#000000', 'black', 33),
(556, '#000000', 'black', 34),
(557, '#000000', 'black', 35),
(558, '#000000', 'black', 37),
(559, '#000000', 'black', 38),
(560, '#000000', 'black', 39),
(561, '#364EAE', 'denim', 33),
(562, '#364EAE', 'denim', 34),
(563, '#364EAE', 'denim', 35),
(564, '#364EAE', 'denim', 37),
(565, '#364EAE', 'denim', 38),
(566, '#364EAE', 'denim', 39),
(567, '#0D0340', 'navy', 33),
(568, '#0D0340', 'navy', 34),
(569, '#0D0340', 'navy', 35),
(570, '#0D0340', 'navy', 37),
(571, '#0D0340', 'navy', 38),
(572, '#0D0340', 'navy', 39),
(573, '#C2B19C', 'latte', 16),
(574, '#C2B19C', 'latte', 17),
(575, '#C2B19C', 'latte', 18),
(576, '#C2B19C', 'latte', 19),
(577, '#C2B19C', 'latte', 20),
(578, '#735E59', 'brown', 16),
(579, '#735E59', 'brown', 17),
(580, '#735E59', 'brown', 18),
(581, '#735E59', 'brown', 19),
(582, '#735E59', 'brown', 20),
(583, '#AD795B', 'choco', 16),
(584, '#AD795B', 'choco', 17),
(585, '#AD795B', 'choco', 18),
(586, '#AD795B', 'choco', 19),
(587, '#AD795B', 'choco', 20),
(588, '#AB9685', 'milo', 16),
(589, '#AB9685', 'milo', 17),
(590, '#AB9685', 'milo', 18),
(591, '#AB9685', 'milo', 19),
(592, '#AB9685', 'milo', 20),
(593, '#E2B808', 'mustard', 16),
(594, '#E2B808', 'mustard', 17),
(595, '#E2B808', 'mustard', 18),
(596, '#E2B808', 'mustard', 19),
(597, '#E2B808', 'mustard', 20),
(598, '#000000', 'black', 16),
(599, '#000000', 'black', 17),
(600, '#000000', 'black', 18),
(601, '#000000', 'black', 19),
(602, '#000000', 'black', 20),
(603, '#FDFBF0', 'white', 16),
(604, '#FDFBF0', 'white', 17),
(605, '#FDFBF0', 'white', 18),
(606, '#FDFBF0', 'white', 19),
(607, '#FDFBF0', 'white', 20),
(608, '#9CBD99', 'matcha', 16),
(609, '#9CBD99', 'matcha', 17),
(610, '#9CBD99', 'matcha', 18),
(611, '#9CBD99', 'matcha', 19),
(612, '#9CBD99', 'matcha', 20),
(613, '#516251', 'army', 16),
(614, '#516251', 'army', 17),
(615, '#516251', 'army', 18),
(616, '#516251', 'army', 19),
(617, '#516251', 'army', 20);

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` int(11) NOT NULL,
  `productSize` varchar(10) DEFAULT NULL,
  `productSizePrice` varchar(100) DEFAULT NULL,
  `productID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `productSize`, `productSizePrice`, `productID`) VALUES
(6, 'S', '70500', 3),
(7, 'M', '70500', 3),
(8, 'L', '70500', 3),
(9, 'XL', '73500', 3),
(10, ' XXL', '73500', 3),
(11, 'XL', '104500', 4),
(12, ' XXL', '104500', 4),
(13, 'S', '99500', 4),
(14, 'M', '99500', 4),
(15, 'L', '99500', 4),
(16, 'S', '78000', 5),
(17, 'M', '78000', 5),
(18, 'L', '78000', 5),
(19, 'XL', '81500', 5),
(20, ' XXL', '81500', 5),
(21, 'XL', '74500', 6),
(22, ' XXL', '74500', 6),
(23, 'XL', '68500', 7),
(24, ' XXL', '68500', 7),
(25, 'S', '65500', 7),
(26, 'M', '65500', 7),
(27, 'L', '65500', 7),
(28, 'S', '92000', 8),
(29, 'M', '92000', 8),
(30, 'L', '92000', 8),
(31, 'XL', '97000', 8),
(32, ' XXL', '97000', 8),
(33, 'XL', '76000', 9),
(34, ' XXL', '76000', 9),
(35, 'S', '72500', 9),
(36, 'M', '72500', 9),
(37, 'L', '72500', 9),
(38, 'S', '69000', 10),
(39, 'M', '69000', 10),
(40, 'L', '69000', 10),
(41, 'XL', '72000', 10),
(42, ' XXL', '72000', 10),
(43, 'XL', '70500', 11),
(44, ' XXL', '70500', 11),
(45, 'S', '66000', 11),
(46, 'M', '66000', 11),
(47, 'L', '66000', 11),
(48, 'S', '91500', 12),
(49, 'M', '91500', 12),
(50, 'L', '91500', 12),
(51, 'XL', '99000', 12),
(52, ' XXL', '99000', 12),
(53, 'XL', '78000', 13),
(54, ' XXL', '78000', 13),
(55, 'S', '73000', 13),
(56, 'M', '73000', 13),
(57, 'L', '73000', 13),
(59, 'S', '69500', 15),
(60, 'M', '69500', 15),
(61, 'L', '69500', 15),
(62, 'XL', '74000', 15),
(63, ' XXL', '74000', 15),
(64, 'XL', '78500', 16),
(65, ' XXL', '78500', 16),
(66, 'S', '75500', 16),
(67, 'M', '75500', 16),
(68, 'L', '75500', 16),
(69, 'S', '79500', 17),
(70, 'M', '79500', 17),
(71, 'L', '79500', 17),
(72, 'XL', '82500', 17),
(73, ' XXL', '82500', 17),
(74, 'XL', '74000', 18),
(75, ' XXL', '74000', 18),
(76, 'S', '71500', 18),
(77, 'M', '71500', 18),
(78, 'L', '71500', 18),
(79, 'S', '101500', 19),
(80, 'M', '101500', 19),
(81, 'L', '101500', 19),
(82, 'XL', '106500', 19),
(83, ' XXL', '106500', 19),
(84, 'XL', '67000', 20),
(85, ' XXL', '67000', 20),
(86, 'S', '65000', 20),
(87, 'M', '65000', 20),
(88, 'L', '65000', 20),
(89, 'XS', '109000', 21),
(90, 'S', '109000', 21),
(91, 'M', '109000', 21),
(92, 'L', '112500', 21),
(93, 'XL', '112500', 21),
(94, 'XXL', '112500', 21),
(95, 'L', '112500', 22),
(96, 'XL', '112500', 22),
(97, 'XXL', '112500', 22),
(98, 'XS', '109000', 22),
(99, 'S', '109000', 22),
(100, 'M', '109000', 22),
(101, 'XS', '145000', 23),
(102, 'S', '145000', 23),
(103, 'M', '145000', 23),
(104, 'L', '151000', 23),
(105, 'XL', '151000', 23),
(106, 'XXL', '151000', 23),
(107, 'L', '176500', 24),
(108, 'XL', '176500', 24),
(109, 'XXL', '176500', 24),
(110, 'XS', '169000', 24),
(111, 'S', '169000', 24),
(112, 'M', '169000', 24),
(113, 'S', '136000', 33),
(114, 'M', '136000', 33),
(115, 'L', '136000', 33),
(116, 'XL', '143000', 33),
(117, ' XXL', '143000', 33),
(118, 'XL', '121000', 34),
(119, ' XXL', '121000', 34),
(120, 'S', '116000', 34),
(121, 'M', '116000', 34),
(122, 'L', '116000', 34),
(123, 'S', '102000', 35),
(124, 'M', '102000', 35),
(125, 'L', '102000', 35),
(126, 'XL', '11000', 35),
(127, ' XXL', '11000', 35),
(128, 'XL', '104500', 37),
(129, ' XXL', '104500', 37),
(130, 'S', '97000', 37),
(131, 'M', '97000', 37),
(132, 'L', '97000', 37),
(133, 'S', '83000', 38),
(134, 'M', '83000', 38),
(135, 'L', '83000', 38),
(136, 'XL', '88500', 38),
(137, ' XXL', '88500', 38),
(138, 'XL', '110500', 39),
(139, ' XXL', '110500', 39),
(140, 'S', '102000', 39),
(141, 'M', '102000', 39),
(142, 'L', '102000', 39),
(143, '27', '87000', 41),
(144, '28', '87000', 41),
(145, '29', '87000', 41),
(146, '30', '90500', 41),
(147, '31', '90500', 41),
(148, '32', '90500', 41),
(149, '30', '93000', 46),
(150, '31', '93000', 46),
(151, '32', '93000', 46),
(152, '27', '89500', 46),
(153, '28', '89500', 46),
(154, '29', '89500', 46),
(155, '27', '116000', 43),
(156, '28', '116000', 43),
(157, '29', '116000', 43),
(158, '30', '121500', 43),
(159, '31', '121500', 43),
(160, '32', '121500', 43),
(161, '30', '84000', 44),
(162, '31', '84000', 44),
(163, '32', '84000', 44),
(164, '27', '81000', 44),
(165, '28', '81000', 44),
(166, '29', '81000', 44),
(167, '27', '71000', 45),
(168, '28', '71000', 45),
(169, '29', '71000', 45),
(170, '30', '73000', 45),
(171, '31', '73000', 45),
(172, '32', '73000', 45),
(173, '30', '59500', 47),
(174, '31', '59500', 47),
(175, '32', '59500', 47),
(176, '27', '56000', 47),
(177, '28', '56000', 47),
(178, '29', '56000', 47),
(179, '27', '57500', 48),
(180, '28', '57500', 48),
(181, '29', '57500', 48),
(182, '30', '61000', 48),
(183, '31', '61000', 48),
(184, '32', '61000', 48),
(185, '30', '79000', 49),
(186, '31', '79000', 49),
(187, '32', '79000', 49),
(188, '27', '73500', 49),
(189, '28', '73500', 49),
(190, '29', '73500', 49),
(191, '27', '52500', 50),
(192, '28', '52500', 50),
(193, '29', '52500', 50),
(194, '30', '55500', 50),
(195, '31', '55500', 50),
(196, '32', '55500', 50),
(197, '30', '48500', 51),
(198, '31', '48500', 51),
(199, '32', '48500', 51),
(200, '27', '46500', 51),
(201, '28', '46500', 51),
(202, '29', '46500', 51),
(203, 'XS', '81500', 52),
(204, 'S', '81500', 52),
(205, 'M', '81500', 52),
(206, 'L', '86500', 52),
(207, 'XL', '86500', 52),
(208, 'XXL', '86500', 52),
(209, 'L', '86500', 53),
(210, 'XL', '86500', 53),
(211, 'XXL', '86500', 53),
(212, 'XS', '81500', 53),
(213, 'S', '81500', 53),
(214, 'M', '81500', 53),
(215, 'XS', '104000', 54),
(216, 'S', '104000', 54),
(217, 'M', '104000', 54),
(218, 'L', '112000', 54),
(219, 'XL', '112000', 54),
(220, 'XXL', '112000', 54),
(221, 'L', '129000', 55),
(222, 'XL', '129000', 55),
(223, 'XXL', '129000', 55),
(224, 'XS', '119000', 55),
(225, 'S', '119000', 55),
(226, 'M', '119000', 55);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `createdAt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `name`, `address`, `phone`, `total`, `createdAt`) VALUES
(50257904, 'kemal', 'jl panggunalang', 2147483647, 144500, 1683947793);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_item`
--

CREATE TABLE `transaction_item` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `tid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_item`
--

INSERT INTO `transaction_item` (`id`, `title`, `color`, `size`, `price`, `jumlah`, `total`, `tid`) VALUES
(1, 'Kemeja Crop Kain Linen', 'black', 'XL', 76000, 1, 76000, 50257904),
(2, 'Kemeja Crop Kain Katun Toyobo', 'black', 'XL', 68500, 1, 68500, 50257904);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_product_id` (`id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productID` (`productID`),
  ADD KEY `ix_product_color_id` (`id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productID` (`productID`),
  ADD KEY `ix_product_size_id` (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_transaction_id` (`id`);

--
-- Indexes for table `transaction_item`
--
ALTER TABLE `transaction_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tid` (`tid`),
  ADD KEY `ix_transaction_item_id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=618;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50257905;

--
-- AUTO_INCREMENT for table `transaction_item`
--
ALTER TABLE `transaction_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_color`
--
ALTER TABLE `product_color`
  ADD CONSTRAINT `product_color_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`id`);

--
-- Constraints for table `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `product_size_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`id`);

--
-- Constraints for table `transaction_item`
--
ALTER TABLE `transaction_item`
  ADD CONSTRAINT `transaction_item_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `transaction` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
