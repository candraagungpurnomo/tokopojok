-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2022 at 04:35 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokopojok`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_barang` int(5) NOT NULL,
  `nm_barang` varchar(30) DEFAULT NULL,
  `satuan` varchar(15) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `harga_beli` double DEFAULT NULL,
  `stok` int(5) DEFAULT NULL,
  `stok_min` int(5) DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_barang`, `nm_barang`, `satuan`, `deskripsi`, `harga`, `harga_beli`, `stok`, `stok_min`, `gambar`) VALUES
(27, 'Gula Pasir Gulaku', 'kg', 'Gula Berkualitas', 17000, 16000, 23, 20, 'foto-Gula_Pasir_Gulaku.jpg'),
(28, 'Minyak Goreng Sania', 'Liter', 'Minyak Goreng Berkualitas ', 28000, 25000, 26, 20, 'foto-Minyak_Goreng_Sania.jpg'),
(29, '`Sirup Squash ', 'Botol', 'Sirup rasa jeruk ', 20000, 18000, 17, 15, 'foto-`Sirup_Squash_.jpg'),
(30, 'Beras Maknyus ', 'kg', 'Beras maknyus berkualitas', 37000, 35000, 30, 25, 'foto-Beras_Maknyus_.jpg'),
(31, 'Susu Kental Manis', 'Pcs', 'Susu Kental Manis Frsian Flag', 16000, 15000, 24, 20, 'foto-Susu_Kental_Manis.jpg'),
(32, 'Beras Siip', 'kg', 'Beras Siip Berkualitas ', 38000, 36000, 38, 35, 'foto-Beras_Siip.jpg'),
(33, 'Energen Coklat Sachet', 'renteng', 'Energen dengan rasa coklat yang nikmat', 12000, 10000, 5, 1, 'foto-Energen_Coklat_Sachet.jpg'),
(34, 'Indomie Godok Ayam Bawang', 'karton', 'Indomie dengan kuah ayam bawang', 24000, 20000, 10, 1, 'foto-Indomie_Godok_Ayam_Bawang.jpg'),
(35, 'Indomie Godok Soto', 'karton', 'Indomie dengan kuah soto', 24000, 20000, 10, 1, 'foto-Indomie_Godok_Soto.jpg'),
(36, 'Indomie Goreng ', 'karton', 'Indomie dengan rasa goreng', 24000, 20000, 10, 1, 'foto-Indomie_Goreng_.jpg'),
(37, 'Luwak White Coffe ', 'renteng', 'Luwak white coffe dengan rasa original latte', 17000, 15000, 10, 1, 'foto-Luwak_White_Coffe_.jpg'),
(38, 'Sedapp Goreng', 'karton', 'Sedap dengan rasa goreng', 24000, 20000, 10, 1, 'foto-Sedapp_Goreng.jpg'),
(39, 'Cofeemix', 'renteng', 'Cofemix Lezat aroma Coffee', 13000, 12000, 19, 15, 'foto-Cofeemix.jpg'),
(40, 'Goodday', 'renteng', 'Goodday rasa Original', 15000, 13000, 19, 15, 'foto-Goodday.jpg'),
(41, 'Kopi Tarik malaka', 'renteng', 'Kopi Enak Tarik Malaka', 15000, 14000, 20, 18, 'foto-Kopi_Tarik_malaka.jpg'),
(42, 'Bearbrand', 'Pcs', 'Bearbrand susu murni', 15000, 13000, 20, 18, 'foto-Bearbrand.jpg'),
(43, 'Kopi Kapal Api', 'renteng', 'Kopi Kapal Api Nikmat Rasanya', 15000, 13000, 19, 16, 'foto-Kopi_Kapal_Api.jpg'),
(44, 'Teh pucuk', 'Pcs', 'Teh Pucuk Alami', 8000, 6000, 19, 16, 'foto-Teh_pucuk.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id` int(5) NOT NULL,
  `no_nota` int(5) DEFAULT NULL,
  `kd_brg` int(5) DEFAULT NULL,
  `hrg_brg` decimal(12,2) DEFAULT NULL,
  `jml_brg` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id`, `no_nota`, `kd_brg`, `hrg_brg`, `jml_brg`) VALUES
(32, 104, 14, '30000.00', 1),
(33, 105, 13, '30000.00', 2),
(34, 106, 8, '30000.00', 4),
(35, 107, 6, '35000.00', 1),
(36, 0, 2, '40000.00', 1),
(37, 0, 5, '25000.00', 1),
(38, 109, 4, '56000.00', 1),
(39, 110, 2, '40000.00', 1),
(40, 111, 2, '40000.00', 1),
(41, 112, 15, '30000.00', 1),
(42, 113, 2, '40000.00', 1),
(43, 114, 7, '30000.00', 1),
(44, 114, 9, '30000.00', 1),
(45, 114, 10, '30000.00', 1),
(46, 115, 4, '56000.00', 1),
(47, 115, 6, '35000.00', 1),
(48, 115, 8, '30000.00', 1),
(49, 116, 4, '56000.00', 1),
(50, 117, 7, '30000.00', 1),
(51, 117, 8, '30000.00', 2),
(52, 118, 1, '30000.00', 1),
(53, 119, 2, '40000.00', 1),
(54, 119, 4, '56000.00', 1),
(55, 120, 9, '30000.00', 1),
(56, 121, 2, '40000.00', 1),
(57, 122, 2, '40000.00', 1),
(58, 123, 2, '40000.00', 1),
(59, 124, 7, '30000.00', 1),
(60, 125, 11, '30000.00', 1),
(61, 126, 11, '30000.00', 1),
(62, 127, 16, '30000.00', 1),
(63, 128, 17, '30000.00', 4),
(64, 129, 11, '30000.00', 1),
(65, 130, 23, '22.00', 1),
(66, 131, 22, '90.00', 1),
(67, 132, 12, '30000.00', 1),
(68, 133, 15, '30000.00', 1),
(69, 134, 24, '22.00', 1),
(70, 135, 24, '22.00', 1),
(71, 136, 11, '30000.00', 1),
(72, 137, 11, '30000.00', 2),
(73, 138, 5, '25000.00', 1),
(74, 139, 11, '30000.00', 1),
(75, 140, 13, '30000.00', 1),
(76, 141, 10, '30000.00', 1),
(77, 142, 2, '40000.00', 1),
(78, 142, 7, '30000.00', 1),
(79, 143, 2, '40000.00', 1),
(80, 144, 20, '30000.00', 1),
(81, 145, 1, '30000.00', 1),
(82, 146, 9, '30000.00', 1),
(83, 147, 3, '38000.00', 1),
(84, 148, 7, '30000.00', 1),
(85, 148, 10, '30000.00', 1),
(86, 149, 10, '30000.00', 1),
(87, 149, 11, '30000.00', 1),
(88, 149, 12, '30000.00', 1),
(89, 150, 4, '56000.00', 5),
(90, 150, 10, '30000.00', 3),
(91, 151, 2, '40000.00', 1),
(92, 152, 8, '30000.00', 1),
(93, 153, 8, '30000.00', 3),
(94, 153, 2, '40000.00', 1),
(95, 154, 8, '30000.00', 1),
(96, 154, 20, '30000.00', 2),
(97, 154, 9, '30000.00', 2),
(98, 155, 3, '38000.00', 1),
(99, 156, 2, '40000.00', 1),
(100, 157, 2, '40000.00', 1),
(101, 158, 12, '30000.00', 1),
(102, 158, 13, '30000.00', 1),
(103, 158, 14, '30000.00', 1),
(104, 159, 1, '30000.00', 1),
(105, 160, 9, '30000.00', 1),
(106, 160, 10, '30000.00', 1),
(107, 160, 12, '30000.00', 1),
(108, 161, 3, '38000.00', 4),
(109, 162, 10, '38000.00', 1),
(110, 162, 2, '40000.00', 2),
(111, 163, 2, '40000.00', 1),
(112, 164, 4, '56000.00', 1),
(113, 165, 2, '40000.00', 4),
(114, 166, 2, '40000.00', 2),
(115, 167, 2, '40000.00', 1),
(116, 168, 2, '40000.00', 1),
(117, 169, 2, '40000.00', 1),
(118, 170, 31, '16000.00', 1),
(119, 171, 31, '16000.00', 1),
(120, 172, 27, '17000.00', 2),
(121, 173, 27, '17000.00', 3),
(122, 174, 32, '38000.00', 1),
(123, 175, 30, '37000.00', 1),
(124, 176, 30, '37000.00', 1),
(125, 177, 30, '37000.00', 1),
(126, 178, 28, '28000.00', 1),
(127, 179, 28, '28000.00', 1),
(128, 180, 28, '28000.00', 1),
(129, 181, 31, '16000.00', 1),
(130, 182, 30, '37000.00', 1),
(131, 183, 30, '37000.00', 1),
(132, 184, 27, '17000.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE `konsumen` (
  `kd_konsumen` int(5) NOT NULL,
  `oauth_provider` enum('facebook','google','twitter','') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `oauth_uid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_konsumen` varchar(35) DEFAULT '',
  `alamat` text DEFAULT '',
  `kodepos` varchar(5) DEFAULT '',
  `kota` varchar(35) DEFAULT '',
  `no_hp` varchar(13) DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `foto` tinytext DEFAULT 'default.jpg',
  `group` int(1) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`kd_konsumen`, `oauth_provider`, `oauth_uid`, `nm_konsumen`, `alamat`, `kodepos`, `kota`, `no_hp`, `email`, `username`, `password`, `foto`, `group`) VALUES
(1, '', '', 'administrator', 'Jalan doang jadian kagak', '32453', 'Semarang', '088888', 'Admin@gmail.com', 'admin123', '0192023a7bbd73250516f069df18b500', 'avatar-admin123.jpg', 1),
(2, '', '', 'alif fadhil w', 'Jalan doang jajan kagak', '50248', 'Semarang', '0878', 'alif@gmail.com', 'alif', 'cc381ce13dd0bd2f5dd3ec67aac562ce', 'avatar-alif.png', 1),
(3, '', '', 'candra agung purnomo', 'Jalan tengah yang kita renung', '50245', 'Semarang', '0895', 'candra@gmail.com', 'candra', 'e2ff2e41d67bf43dcea90fc435666e84', 'avatar-candra.png', 1),
(4, '', '', 'abiyyu adilfi', 'Jalan sama mantan', '50243', 'Lampung', '0856', 'biyu@gmail.com', 'biyu', '530eed34a09f27395ad24ed1ae3acd59', 'avatar-biyu.png', 1),
(59, '', '', NULL, NULL, NULL, NULL, NULL, 'hans@gmail.com', 'Hans', '25d55ad283aa400af464c76d713c07ad', NULL, 2),
(60, '', '', NULL, NULL, NULL, NULL, NULL, 'agung@gmail.com', 'agung', '25d55ad283aa400af464c76d713c07ad', NULL, 2),
(61, '', '', NULL, NULL, NULL, NULL, NULL, 'reno@gmail.com', 'reno', '25d55ad283aa400af464c76d713c07ad', NULL, 2),
(62, '', '', 'budi setiawan', 'Jalan Lamper Tengah', '50248', 'Kota Semarang', '0896', 'budi@gmail.com', 'Budi', 'bfe84f9b258404dde399993f2933a7d9', 'avatar-Budi.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `no_nota` int(5) NOT NULL,
  `kd_konsumen` int(5) DEFAULT NULL,
  `tgl_jual` datetime NOT NULL DEFAULT current_timestamp(),
  `due_date` datetime DEFAULT NULL,
  `pembelian` decimal(12,2) DEFAULT NULL,
  `tujuan` text DEFAULT NULL,
  `kode_kab` int(11) DEFAULT NULL,
  `kurir` varchar(5) DEFAULT NULL,
  `expedisi` varchar(40) DEFAULT NULL,
  `wkt_pengiriman` varchar(20) NOT NULL,
  `ongkir` decimal(12,2) DEFAULT NULL,
  `total_biaya` decimal(12,2) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` enum('Belum dibayar','Sudah dibayar') NOT NULL DEFAULT 'Belum dibayar'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`no_nota`, `kd_konsumen`, `tgl_jual`, `due_date`, `pembelian`, `tujuan`, `kode_kab`, `kurir`, `expedisi`, `wkt_pengiriman`, `ongkir`, `total_biaya`, `image`, `status`) VALUES
(169, 1, '2022-06-14 09:57:11', '2022-06-21 09:57:11', '40000.00', 'rumah candra', 399, 'jne', 'JNE - CTC', '1-2HARI', '16000.00', '56000.00', 'BuktiPembayaran-1691.png', 'Sudah dibayar'),
(170, 59, '2022-06-18 08:02:45', '2022-06-25 08:02:45', '16000.00', 'Semarang', 399, 'pos', 'POS - Paket Kilat Khusus', '2 HARI', '14000.00', '30000.00', 'BuktiPembayaran-170.jpg', 'Sudah dibayar'),
(171, 59, '2022-06-18 09:32:46', '2022-06-25 09:32:46', '16000.00', 'Semarang', 250, 'pos', 'POS - Paket Kilat Khusus', '2 HARI', '20900.00', '36900.00', NULL, 'Belum dibayar'),
(172, 60, '2022-06-18 09:54:30', '2022-06-25 09:54:30', '34000.00', 'Semarang', 250, 'pos', 'POS - Paket Kilat Khusus', '2 HARI', '20900.00', '54900.00', 'BuktiPembayaran-172.jpg', 'Sudah dibayar'),
(173, 1, '2022-06-24 09:23:41', '2022-07-01 09:23:41', '51000.00', 'Demak', 27, 'pos', 'POS - Paket Kilat Khusus', '8 HARI', '69350.00', '120350.00', 'BuktiPembayaran-173.png', 'Sudah dibayar'),
(174, 1, '2022-06-24 09:28:42', '2022-07-01 09:28:42', '38000.00', 'Demak', 113, 'pos', 'POS - Paket Kilat Khusus', '3 HARI', '14000.00', '52000.00', 'BuktiPembayaran-174.png', 'Sudah dibayar'),
(175, 1, '2022-06-24 09:32:34', '2022-07-01 09:32:34', '37000.00', 'Semarang', 399, 'pos', 'POS - Paket Kilat Khusus', '2 HARI', '14000.00', '51000.00', 'BuktiPembayaran-175.png', 'Sudah dibayar'),
(176, 60, '2022-06-24 09:43:14', '2022-07-01 09:43:14', '37000.00', 'semarang', 399, 'pos', 'POS - Paket Kilat Khusus', '2 HARI', '14000.00', '51000.00', 'BuktiPembayaran-176.png', 'Sudah dibayar'),
(177, 60, '2022-06-24 10:16:26', '2022-07-01 10:16:26', '37000.00', 'demak', 113, 'pos', 'POS - Paket Kilat Khusus', '3 HARI', '14000.00', '51000.00', 'BuktiPembayaran-177.png', 'Sudah dibayar'),
(178, 60, '2022-06-24 10:21:33', '2022-07-01 10:21:33', '28000.00', 'semarang', 399, 'pos', 'POS - Paket Kilat Khusus', '2 HARI', '14000.00', '42000.00', 'BuktiPembayaran-178.jpg', 'Sudah dibayar'),
(179, 60, '2022-06-24 10:38:04', '2022-07-01 10:38:04', '28000.00', 'Semarang', 399, 'pos', 'POS - Paket Kilat Khusus', '2 HARI', '14000.00', '42000.00', 'BuktiPembayaran-179.jpg', 'Sudah dibayar'),
(180, 60, '2022-06-24 10:48:57', '2022-07-01 10:48:57', '28000.00', 'Demak', 113, 'pos', 'POS - Paket Kilat Khusus', '3 HARI', '14000.00', '42000.00', 'BuktiPembayaran-180.jpg', 'Sudah dibayar'),
(181, 59, '2022-07-06 05:14:47', '2022-07-13 05:14:47', '16000.00', 'Semarang', 399, 'pos', 'POS - Paket Kilat Khusus', '2 HARI', '14000.00', '30000.00', 'BuktiPembayaran-181.png', 'Sudah dibayar'),
(182, 59, '2022-07-10 07:18:23', '2022-07-17 07:18:23', '37000.00', 'Demak', 113, 'pos', 'POS - Paket Kilat Khusus', '3 HARI', '14000.00', '51000.00', 'BuktiPembayaran-182.jpg', 'Sudah dibayar'),
(183, 59, '2022-07-10 07:24:53', '2022-07-17 07:24:53', '37000.00', 'Demak', 113, 'pos', 'POS - Paket Kilat Khusus', '3 HARI', '14000.00', '51000.00', 'BuktiPembayaran-183.jpg', 'Sudah dibayar'),
(184, 62, '2022-07-10 13:07:35', '2022-07-17 13:07:35', '17000.00', 'Ke rumah bapak ', 399, 'pos', 'POS - Paket Kilat Khusus', '2 HARI', '14000.00', '31000.00', 'BuktiPembayaran-184.png', 'Sudah dibayar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`kd_konsumen`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`no_nota`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kd_barang` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `konsumen`
--
ALTER TABLE `konsumen`
  MODIFY `kd_konsumen` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `no_nota` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
