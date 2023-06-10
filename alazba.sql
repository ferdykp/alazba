-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2023 at 06:34 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alazba`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_log`
--

CREATE TABLE `tb_log` (
  `id_log` int(11) NOT NULL,
  `isi_log` text NOT NULL,
  `tanggal_log` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_log`
--

INSERT INTO `tb_log` (`id_log`, `isi_log`, `tanggal_log`, `id_user`) VALUES
(1, 'Menu dengan nama menu <b>Dimsum Sayur</b> berhasil diubah menjadi <b>Dimsum Sayur</b>', 1659741138, 1),
(2, 'Menu dengan nama menu <b>Dimsum Ayam</b> berhasil diubah menjadi <b>Dimsum Ayam</b>', 1659741142, 1),
(3, 'User dengan nama user <b>Dimas Ramadhan</b> berhasil diubah menjadi <b>Irba Tsabita</b>', 1678078436, 1),
(4, 'User baru dengan nama user <b>Alfafaun</b> berhasil ditambahkan', 1678078481, 1),
(5, 'User dengan nama user <b>Whiki</b> berhasil dihapus', 1678078493, 1),
(6, 'Outlet dengan nama outlet <b>At Dymsum Aww</b> berhasil diubah menjadi <b>Alazba Drink</b>', 1678097569, 1),
(7, 'Menu dengan nama menu <b>Dimsum Sayur</b> berhasil dihapus', 1678098081, 1),
(8, 'Menu dengan nama menu <b>Dimsum Ayam</b> berhasil dihapus', 1678098084, 1),
(9, 'Menu dengan nama menu <b>Dimsum Sapi</b> berhasil dihapus', 1678098085, 1),
(10, 'Menu dengan nama menu <b>Dimsum Keju</b> berhasil dihapus', 1678098087, 1),
(11, 'Menu baru dengan nama menu <b>Dalgona Chocolate</b> berhasil ditambahkan', 1678098120, 1),
(12, 'Menu dengan nama menu <b>Dalgona Chocolate</b> berhasil diubah menjadi <b>Dalgona Chocolate</b>', 1678098146, 1),
(13, 'Menu baru dengan nama menu <b>Dalgona Green Tea</b> berhasil ditambahkan', 1678098168, 1),
(14, 'Menu baru dengan nama menu <b>Dalgona Red Velvet</b> berhasil ditambahkan', 1678100036, 1),
(15, 'Menu baru dengan nama menu <b>Dalgona Coffee</b> berhasil ditambahkan', 1678100072, 1),
(16, 'Menu baru dengan nama menu <b>Dalgona Taro</b> berhasil ditambahkan', 1678100096, 1),
(17, 'Menu dengan nama menu <b>Dalgona Coffee</b> berhasil dihapus', 1678100106, 1),
(18, 'Menu baru dengan nama menu <b>Chocolate Blackforest</b> berhasil ditambahkan', 1678100145, 1),
(19, 'Menu baru dengan nama menu <b>Coffee Hazelnut</b> berhasil ditambahkan', 1678100172, 1),
(20, 'Menu baru dengan nama menu <b>Original Tea</b> berhasil ditambahkan', 1678100204, 1),
(21, 'Menu baru dengan nama menu <b>Milk Tea</b> berhasil ditambahkan', 1678100214, 1),
(22, 'Menu baru dengan nama menu <b>Black Coffee</b> berhasil ditambahkan', 1678100230, 1),
(23, 'Menu baru dengan nama menu <b>White Coffee</b> berhasil ditambahkan', 1678100250, 1),
(24, 'Transaksi baru dengan kode invoice <b>060320230101T0001</b> berhasil ditambahkan', 1678100489, 1),
(25, 'Transaksi baru dengan kode invoice <b>060320230101T0002</b> berhasil ditambahkan', 1678100518, 1),
(26, 'Pembayaran baru dengan kode invoice <b>060320230101T0002</b> berhasil ditambahkan', 1678100542, 1),
(27, 'Print Pembayaran dengan kode invoice <b>060320230101T0002</b>', 1678100550, 1),
(28, 'Print Pembayaran dengan kode invoice <b>060320230101T0002</b>', 1678101019, 1),
(29, 'Print Pembayaran dengan kode invoice <b>060320230101T0002</b>', 1678101086, 1),
(30, 'Print Pembayaran dengan kode invoice <b>060320230101T0002</b>', 1678101847, 1),
(31, 'Pengeluaran berhasil ditambahkan oleh <b>Irba Tsabita</b>', 1678101924, 1),
(32, 'Print Laporan Pengeluaran dari tanggal2023-03-01 sampai 2023-03-06', 1678102341, 1),
(33, 'Print Laporan Pengeluaran dari tanggal2023-03-01 sampai 2023-03-06', 1678105974, 1),
(34, 'Print Pembayaran dengan kode invoice <b>060320230101T0002</b>', 1682480095, 2),
(35, 'User baru dengan nama user <b>Ferdy</b> berhasil ditambahkan', 1683167068, 1),
(36, 'User dengan nama user <b>Ferdy</b> berhasil dihapus', 1683167209, 1),
(37, 'User baru dengan nama user <b>Ferdy</b> berhasil ditambahkan', 1683167223, 1),
(38, 'Print profile', 1683167693, 15),
(39, 'User dengan nama user <b>Ferdy</b> berhasil dihapus', 1683168280, 1),
(40, 'Pembayaran baru dengan kode invoice <b>060320230101T0001</b> berhasil ditambahkan', 1683733998, 1),
(41, 'Transaksi baru dengan kode invoice <b>100520230101T0001</b> berhasil ditambahkan', 1683734016, 1),
(42, 'Menu baru dengan nama menu <b>Air Mineral</b> berhasil ditambahkan', 1683990048, 1),
(43, 'Transaksi baru dengan kode invoice <b>130520230116T0001</b> berhasil ditambahkan', 1683990310, 16),
(44, 'Transaksi baru dengan kode invoice <b>130520230116T0001</b> berhasil ditambahkan', 1683991577, 16),
(45, 'Transaksi baru dengan kode invoice <b>130520230116T0001</b> berhasil ditambahkan', 1683992210, 16),
(46, 'Transaksi baru dengan kode invoice <b>130520230116T0001</b> berhasil ditambahkan', 1683992550, 16),
(47, 'Transaksi baru dengan kode invoice <b>150520230116T0001</b> berhasil ditambahkan', 1684146938, 16),
(48, 'Transaksi baru dengan kode invoice <b>150520230116T0001</b> berhasil ditambahkan', 1684156113, 16),
(49, 'Transaksi baru dengan kode invoice <b>150520230101T0001</b> berhasil ditambahkan', 1684156392, 1),
(50, 'Transaksi dengan kode invoice <b>150520230116T0001</b> berhasil dihapus', 1684156604, 1),
(51, 'Transaksi dengan kode invoice <b>130520230116T0001</b> berhasil dihapus', 1684156613, 1),
(52, 'Transaksi baru dengan kode invoice <b>160520230116T0001</b> berhasil ditambahkan', 1684171863, 16),
(53, 'Transaksi baru dengan kode invoice <b>160520230116T0001</b> berhasil ditambahkan', 1684172005, 16),
(54, 'Transaksi baru dengan kode invoice <b>160520230116T0001</b> berhasil ditambahkan', 1684172840, 16),
(55, 'Transaksi baru dengan kode invoice <b>160520230116T0001</b> berhasil ditambahkan', 1684173038, 16),
(56, 'Transaksi baru dengan kode invoice <b>160520230116T0001</b> berhasil ditambahkan', 1684173105, 16),
(57, 'Transaksi baru dengan kode invoice <b>160520230116T0001</b> berhasil ditambahkan', 1684173160, 16),
(58, 'Transaksi dengan kode invoice <b>160520230116T0001</b> berhasil dihapus', 1684173390, 16),
(59, 'Transaksi baru dengan kode invoice <b>160520230116T0001</b> berhasil ditambahkan', 1684173502, 16),
(60, 'Transaksi dengan kode invoice <b>160520230116T0001</b> berhasil dihapus', 1684173512, 16),
(61, 'Transaksi baru dengan kode invoice <b>160520230116T0001</b> berhasil ditambahkan', 1684173981, 16),
(62, 'Transaksi baru dengan kode invoice <b>160520230116T0001</b> berhasil ditambahkan', 1684174001, 16),
(63, 'Transaksi baru dengan kode invoice <b>160520230116T0001</b> berhasil ditambahkan', 1684174169, 16),
(64, 'Transaksi baru dengan kode invoice <b>160520230116T0001</b> berhasil ditambahkan', 1684174245, 16),
(65, 'Transaksi baru dengan kode invoice <b>160520230116T0001</b> berhasil ditambahkan', 1684174411, 16),
(66, 'Transaksi baru dengan kode invoice <b>160520230116T0001</b> berhasil ditambahkan', 1684174617, 16),
(67, 'Transaksi baru dengan kode invoice <b>160520230116T0001</b> berhasil ditambahkan', 1684174624, 16),
(68, 'Transaksi baru dengan kode invoice <b>160520230116T0001</b> berhasil ditambahkan', 1684175502, 16),
(69, 'Transaksi baru dengan kode invoice <b>220520230101T0001</b> berhasil ditambahkan', 1684770354, 1),
(70, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684770469, 1),
(71, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684770483, 1),
(72, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684770566, 1),
(73, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684770616, 1),
(74, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684770689, 1),
(75, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684771315, 1),
(76, 'Transaksi baru dengan kode invoice <b>220520230101T0001</b> berhasil ditambahkan', 1684771404, 1),
(77, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684771655, 1),
(78, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684771691, 1),
(79, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684771858, 1),
(80, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684771917, 1),
(81, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684771922, 1),
(82, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684772085, 1),
(83, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684772121, 1),
(84, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684772222, 1),
(85, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684772239, 1),
(86, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684773182, 1),
(87, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684773184, 1),
(88, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684773249, 1),
(89, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684773543, 1),
(90, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684773560, 1),
(91, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684773610, 1),
(92, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684773611, 1),
(93, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684773612, 1),
(94, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684773612, 1),
(95, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684774905, 1),
(96, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775453, 1),
(97, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775462, 1),
(98, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775489, 1),
(99, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775530, 1),
(100, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775531, 1),
(101, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775531, 1),
(102, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775532, 1),
(103, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775532, 1),
(104, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775532, 1),
(105, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775533, 1),
(106, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775548, 1),
(107, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775549, 1),
(108, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775603, 1),
(109, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775607, 1),
(110, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775673, 1),
(111, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775716, 1),
(112, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775787, 1),
(113, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775818, 1),
(114, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775833, 1),
(115, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684775849, 1),
(116, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776057, 1),
(117, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776122, 1),
(118, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776123, 1),
(119, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776123, 1),
(120, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776157, 1),
(121, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776158, 1),
(122, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776222, 1),
(123, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776223, 1),
(124, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776223, 1),
(125, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776304, 1),
(126, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776564, 1),
(127, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776565, 1),
(128, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776565, 1),
(129, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776566, 1),
(130, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776567, 1),
(131, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776567, 1),
(132, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776567, 1),
(133, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776567, 1),
(134, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776631, 1),
(135, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776652, 1),
(136, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776652, 1),
(137, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776653, 1),
(138, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776653, 1),
(139, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776653, 1),
(140, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776727, 1),
(141, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776727, 1),
(142, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776742, 1),
(143, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776797, 1),
(144, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684776996, 1),
(145, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684777112, 1),
(146, 'Transaksi dengan kode invoice <b>1</b> berhasil dihapus', 1684777168, 1),
(147, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684777272, 1),
(148, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684778006, 1),
(149, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684778208, 1),
(150, 'Transaksi dengan kode invoice <b>1</b> berhasil dihapus', 1684778217, 1),
(151, 'Transaksi dengan kode invoice <b>220520230101T0001</b> berhasil dihapus', 1684778225, 1),
(152, 'Transaksi dengan kode invoice <b>160520230116T0001</b> berhasil dihapus', 1684778235, 1),
(153, 'Transaksi baru dengan kode invoice <b>1</b> berhasil ditambahkan', 1684778250, 1),
(154, 'Transaksi baru dengan kode invoice <b>230520230101T0001</b> berhasil ditambahkan', 1684778277, 1),
(155, 'Transaksi dengan kode invoice <b>1</b> berhasil dihapus', 1684778284, 1),
(156, 'Transaksi baru dengan kode invoice <b>230520230101T0002</b> berhasil ditambahkan', 1684778323, 1),
(157, 'Transaksi baru dengan kode invoice <b>240520230116T0001</b> berhasil ditambahkan', 1684922203, 16),
(158, 'Transaksi baru dengan kode invoice <b>260520230116T0001</b> berhasil ditambahkan', 1685113260, 16),
(159, 'Transaksi baru dengan kode invoice <b>280520230116T0001</b> berhasil ditambahkan', 1685283768, 16),
(160, 'Pembayaran baru dengan kode invoice <b>280520230116T0001</b> berhasil ditambahkan', 1685463979, 16),
(161, 'Print Pembayaran dengan kode invoice <b>280520230116T0001</b>', 1685592740, 16),
(162, 'Print Pembayaran dengan kode invoice <b>280520230116T0001</b>', 1685719910, 1),
(163, 'Transaksi baru dengan kode invoice <b>080620230116T0001</b> berhasil ditambahkan', 1686164040, 16),
(164, 'Transaksi baru dengan kode invoice <b>080620230116T0002</b> berhasil ditambahkan', 1686164149, 16);

-- --------------------------------------------------------

--
-- Table structure for table `tb_log_pengeluaran`
--

CREATE TABLE `tb_log_pengeluaran` (
  `id_log_pengeluaran` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_log_pengeluaran`
--

INSERT INTO `tb_log_pengeluaran` (`id_log_pengeluaran`, `keterangan`, `tanggal`, `id_user`) VALUES
(1, 'Pengeluaran berhasil ditambahkan oleh <b>Irba Tsabita</b> dengan pengeluaran sebesar <b> Rp. 24,000</b>, Keterangan : <b>Membeli bahan teh</b>', 1678101924, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `harga_menu` int(11) NOT NULL,
  `id_outlet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` (`id_menu`, `nama_menu`, `harga_menu`, `id_outlet`) VALUES
(5, 'Dalgona Chocolate', 9000, 1),
(6, 'Dalgona Green Tea', 10000, 1),
(7, 'Dalgona Red Velvet', 10000, 1),
(9, 'Dalgona Taro', 9000, 1),
(10, 'Chocolate Blackforest', 10000, 1),
(11, 'Coffee Hazelnut', 9000, 1),
(12, 'Original Tea', 5000, 1),
(13, 'Milk Tea', 6000, 1),
(14, 'Black Coffee', 5000, 1),
(15, 'White Coffee', 6000, 1),
(16, 'Air Mineral', 2000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_outlet`
--

CREATE TABLE `tb_outlet` (
  `id_outlet` int(11) NOT NULL,
  `nama_outlet` varchar(100) NOT NULL,
  `no_telepon_outlet` varchar(20) NOT NULL,
  `alamat_outlet` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_outlet`
--

INSERT INTO `tb_outlet` (`id_outlet`, `nama_outlet`, `no_telepon_outlet`, `alamat_outlet`) VALUES
(1, 'Alazba Drink', '088211623915', 'Kecamatan Arjasa, Sumenep'),
(2, 'Alazba Drink', '088211623915', 'Kecamatan Arjasa, Sumenep');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `total_pembayaran` int(11) NOT NULL,
  `jml_uang_dibayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `tgl_pembayaran` int(11) NOT NULL,
  `kode_invoice` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_outlet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`id_pembayaran`, `total_pembayaran`, `jml_uang_dibayar`, `kembalian`, `tgl_pembayaran`, `kode_invoice`, `id_user`, `id_outlet`) VALUES
(1, 10000, 20000, 10000, 1678100542, '060320230101T0002', 1, 1),
(2, 12000, 12000, 0, 1683733998, '060320230101T0001', 1, 1),
(3, 10000, 10000, 0, 1685463979, '280520230116T0001', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengeluaran`
--

CREATE TABLE `tb_pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `jumlah_pengeluaran` int(11) NOT NULL,
  `keterangan_pengeluaran` text NOT NULL,
  `tanggal_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pengeluaran`
--

INSERT INTO `tb_pengeluaran` (`id_pengeluaran`, `jumlah_pengeluaran`, `keterangan_pengeluaran`, `tanggal_pengeluaran`, `id_user`) VALUES
(1, 24000, 'Membeli bahan teh', 1678101924, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_rsvp`
--

CREATE TABLE `tb_rsvp` (
  `id_rsvp` int(11) NOT NULL,
  `nama_konsumen` varchar(100) NOT NULL,
  `jumlah_konsumen` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `NoHp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_rsvp`
--

INSERT INTO `tb_rsvp` (`id_rsvp`, `nama_konsumen`, `jumlah_konsumen`, `tanggal`, `waktu`, `NoHp`) VALUES
(1, 'ferdy', 6, '2023-05-19', '18:51:30', '082234433221'),
(2, 'ferdy', 6, '2023-05-19', '18:51:38', '081233432212'),
(3, 'qwe', 2, '2121-03-12', '00:00:00', '123132112'),
(4, 'ferd', 21, '2023-06-02', '23:23:00', '321123321'),
(5, 'qwe', 3, '2123-03-12', '12:03:00', '123321123'),
(6, 'fad', 2, '2231-03-12', '12:32:00', '123321123321'),
(7, 'rwq', 2, '1212-12-12', '12:12:00', '123321123'),
(8, 'ree', 2, '0000-00-00', '12:12:00', '123231123'),
(9, 'qwe', 1, '1212-12-12', '12:12:00', '123321123'),
(10, 'qwe', 1, '1212-12-12', '12:12:00', '123123123123'),
(11, 'ads', 2, '1212-12-12', '12:12:00', '123321123'),
(12, 'fe', 2, '1212-12-12', '12:12:00', '123123123'),
(13, 'qw', 1, '1212-12-12', '12:12:00', '123123123'),
(14, 'qwer', 12, '1212-12-12', '12:12:00', '123123123');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_invoice` varchar(100) NOT NULL,
  `kuantitas` int(11) NOT NULL,
  `status_bayar` enum('belum_dibayar','sudah_dibayar') NOT NULL,
  `tgl_transaksi` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_outlet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `kode_invoice`, `kuantitas`, `status_bayar`, `tgl_transaksi`, `keterangan`, `id_menu`, `id_user`, `id_outlet`) VALUES
(1, '060320230101T0001', 2, 'sudah_dibayar', 1678100489, '', 15, 1, 1),
(2, '060320230101T0002', 1, 'sudah_dibayar', 1678100518, 'Tanpa gula\r\n', 10, 1, 1),
(3, '100520230101T0001', 3, 'belum_dibayar', 1683734016, 'tes', 12, 1, 1),
(65, '150520230101T0001', 2, 'belum_dibayar', 1684156392, '', 11, 1, 1),
(1053, '230520230101T0001', 3, 'belum_dibayar', 1684778277, '', 16, 1, 1),
(1054, '230520230101T0002', 3, 'belum_dibayar', 1684778323, '', 16, 1, 1),
(1055, '230520230101T0002', 2, 'belum_dibayar', 1684778323, '', 12, 1, 1),
(1056, '240520230116T0001', 2, 'belum_dibayar', 1684922203, '', 16, 16, 1),
(1057, '240520230116T0001', 1, 'belum_dibayar', 1684922203, '', 16, 16, 1),
(1058, '260520230116T0001', 2, 'belum_dibayar', 1685113260, '', 16, 16, 1),
(1059, '280520230116T0001', 2, 'sudah_dibayar', 1685283768, '', 14, 16, 1),
(1060, '080620230116T0001', 1, 'belum_dibayar', 1686164040, '', 12, 16, 1),
(1061, '080620230116T0001', 2, 'belum_dibayar', 1686164040, '', 7, 16, 1),
(1062, '080620230116T0001', 1, 'belum_dibayar', 1686164040, '', 10, 16, 1),
(1063, '080620230116T0002', 12, 'belum_dibayar', 1686164149, '', 16, 16, 1),
(1064, '080620230116T0002', 12, 'belum_dibayar', 1686164149, '', 11, 16, 1),
(1065, '080620230116T0002', 12, 'belum_dibayar', 1686164149, '', 10, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jabatan` enum('administrator','kasir','konsumen') NOT NULL,
  `id_outlet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`, `jabatan`, `id_outlet`) VALUES
(1, 'Irba Tsabita', 'admin', '$2a$10$GNheJp6XlfAyvshHWLGxmOPx5FQG.MtTVYt6FDW/b12qcWfuohUKu', 'administrator', 1),
(2, 'Haus Coding Dev', 'hako-975', '$2a$10$GNheJp6XlfAyvshHWLGxmOPx5FQG.MtTVYt6FDW/b12qcWfuohUKu', 'administrator', 2),
(13, 'Alfafaun', 'kasir', '$2a$10$GNheJp6XlfAyvshHWLGxmOPx5FQG.MtTVYt6FDW/b12qcWfuohUKu', 'kasir', 1),
(16, 'customer1', 'customer1', '$2y$10$2ALdC0caiy364KoB2YLIt.fBib6Q7pZNTNSO.Ft6ZhTIxPafn29hG', 'konsumen', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_log`
--
ALTER TABLE `tb_log`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_log_pengeluaran`
--
ALTER TABLE `tb_log_pengeluaran`
  ADD PRIMARY KEY (`id_log_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `id_outlet` (`id_outlet`);

--
-- Indexes for table `tb_outlet`
--
ALTER TABLE `tb_outlet`
  ADD PRIMARY KEY (`id_outlet`);

--
-- Indexes for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_transaksi` (`kode_invoice`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_outlet` (`id_outlet`);

--
-- Indexes for table `tb_pengeluaran`
--
ALTER TABLE `tb_pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_rsvp`
--
ALTER TABLE `tb_rsvp`
  ADD PRIMARY KEY (`id_rsvp`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_outlet` (`id_outlet`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_outlet` (`id_outlet`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_log`
--
ALTER TABLE `tb_log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `tb_log_pengeluaran`
--
ALTER TABLE `tb_log_pengeluaran`
  MODIFY `id_log_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_outlet`
--
ALTER TABLE `tb_outlet`
  MODIFY `id_outlet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_pengeluaran`
--
ALTER TABLE `tb_pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_rsvp`
--
ALTER TABLE `tb_rsvp`
  MODIFY `id_rsvp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1066;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
