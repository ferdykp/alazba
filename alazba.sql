/*
SQLyog Community
MySQL - 10.4.24-MariaDB : Database - alazba
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`alazba` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `alazba`;

/*Table structure for table `tb_log` */

DROP TABLE IF EXISTS `tb_log`;

CREATE TABLE `tb_log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `isi_log` text NOT NULL,
  `tanggal_log` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_log`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_log` */

insert  into `tb_log`(`id_log`,`isi_log`,`tanggal_log`,`id_user`) values 
(1,'Menu dengan nama menu <b>Dimsum Sayur</b> berhasil diubah menjadi <b>Dimsum Sayur</b>',1659741138,1),
(2,'Menu dengan nama menu <b>Dimsum Ayam</b> berhasil diubah menjadi <b>Dimsum Ayam</b>',1659741142,1),
(3,'User dengan nama user <b>Dimas Ramadhan</b> berhasil diubah menjadi <b>Irba Tsabita</b>',1678078436,1),
(4,'User baru dengan nama user <b>Alfafaun</b> berhasil ditambahkan',1678078481,1),
(5,'User dengan nama user <b>Whiki</b> berhasil dihapus',1678078493,1),
(6,'Outlet dengan nama outlet <b>At Dymsum Aww</b> berhasil diubah menjadi <b>Alazba Drink</b>',1678097569,1),
(7,'Menu dengan nama menu <b>Dimsum Sayur</b> berhasil dihapus',1678098081,1),
(8,'Menu dengan nama menu <b>Dimsum Ayam</b> berhasil dihapus',1678098084,1),
(9,'Menu dengan nama menu <b>Dimsum Sapi</b> berhasil dihapus',1678098085,1),
(10,'Menu dengan nama menu <b>Dimsum Keju</b> berhasil dihapus',1678098087,1),
(11,'Menu baru dengan nama menu <b>Dalgona Chocolate</b> berhasil ditambahkan',1678098120,1),
(12,'Menu dengan nama menu <b>Dalgona Chocolate</b> berhasil diubah menjadi <b>Dalgona Chocolate</b>',1678098146,1),
(13,'Menu baru dengan nama menu <b>Dalgona Green Tea</b> berhasil ditambahkan',1678098168,1),
(14,'Menu baru dengan nama menu <b>Dalgona Red Velvet</b> berhasil ditambahkan',1678100036,1),
(15,'Menu baru dengan nama menu <b>Dalgona Coffee</b> berhasil ditambahkan',1678100072,1),
(16,'Menu baru dengan nama menu <b>Dalgona Taro</b> berhasil ditambahkan',1678100096,1),
(17,'Menu dengan nama menu <b>Dalgona Coffee</b> berhasil dihapus',1678100106,1),
(18,'Menu baru dengan nama menu <b>Chocolate Blackforest</b> berhasil ditambahkan',1678100145,1),
(19,'Menu baru dengan nama menu <b>Coffee Hazelnut</b> berhasil ditambahkan',1678100172,1),
(20,'Menu baru dengan nama menu <b>Original Tea</b> berhasil ditambahkan',1678100204,1),
(21,'Menu baru dengan nama menu <b>Milk Tea</b> berhasil ditambahkan',1678100214,1),
(22,'Menu baru dengan nama menu <b>Black Coffee</b> berhasil ditambahkan',1678100230,1),
(23,'Menu baru dengan nama menu <b>White Coffee</b> berhasil ditambahkan',1678100250,1),
(24,'Transaksi baru dengan kode invoice <b>060320230101T0001</b> berhasil ditambahkan',1678100489,1),
(25,'Transaksi baru dengan kode invoice <b>060320230101T0002</b> berhasil ditambahkan',1678100518,1),
(26,'Pembayaran baru dengan kode invoice <b>060320230101T0002</b> berhasil ditambahkan',1678100542,1),
(27,'Print Pembayaran dengan kode invoice <b>060320230101T0002</b>',1678100550,1),
(28,'Print Pembayaran dengan kode invoice <b>060320230101T0002</b>',1678101019,1),
(29,'Print Pembayaran dengan kode invoice <b>060320230101T0002</b>',1678101086,1),
(30,'Print Pembayaran dengan kode invoice <b>060320230101T0002</b>',1678101847,1),
(31,'Pengeluaran berhasil ditambahkan oleh <b>Irba Tsabita</b>',1678101924,1),
(32,'Print Laporan Pengeluaran dari tanggal2023-03-01 sampai 2023-03-06',1678102341,1),
(33,'Print Laporan Pengeluaran dari tanggal2023-03-01 sampai 2023-03-06',1678105974,1);

/*Table structure for table `tb_log_pengeluaran` */

DROP TABLE IF EXISTS `tb_log_pengeluaran`;

CREATE TABLE `tb_log_pengeluaran` (
  `id_log_pengeluaran` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` text NOT NULL,
  `tanggal` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_log_pengeluaran`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_log_pengeluaran` */

insert  into `tb_log_pengeluaran`(`id_log_pengeluaran`,`keterangan`,`tanggal`,`id_user`) values 
(1,'Pengeluaran berhasil ditambahkan oleh <b>Irba Tsabita</b> dengan pengeluaran sebesar <b> Rp. 24,000</b>, Keterangan : <b>Membeli bahan teh</b>',1678101924,1);

/*Table structure for table `tb_menu` */

DROP TABLE IF EXISTS `tb_menu`;

CREATE TABLE `tb_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(100) NOT NULL,
  `harga_menu` int(11) NOT NULL,
  `id_outlet` int(11) NOT NULL,
  PRIMARY KEY (`id_menu`),
  KEY `id_outlet` (`id_outlet`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_menu` */

insert  into `tb_menu`(`id_menu`,`nama_menu`,`harga_menu`,`id_outlet`) values 
(5,'Dalgona Chocolate',9000,1),
(6,'Dalgona Green Tea',10000,1),
(7,'Dalgona Red Velvet',10000,1),
(9,'Dalgona Taro',9000,1),
(10,'Chocolate Blackforest',10000,1),
(11,'Coffee Hazelnut',9000,1),
(12,'Original Tea',5000,1),
(13,'Milk Tea',6000,1),
(14,'Black Coffee',5000,1),
(15,'White Coffee',6000,1);

/*Table structure for table `tb_outlet` */

DROP TABLE IF EXISTS `tb_outlet`;

CREATE TABLE `tb_outlet` (
  `id_outlet` int(11) NOT NULL AUTO_INCREMENT,
  `nama_outlet` varchar(100) NOT NULL,
  `no_telepon_outlet` varchar(20) NOT NULL,
  `alamat_outlet` text NOT NULL,
  PRIMARY KEY (`id_outlet`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_outlet` */

insert  into `tb_outlet`(`id_outlet`,`nama_outlet`,`no_telepon_outlet`,`alamat_outlet`) values 
(1,'Alazba Drink','088211623915','Kecamatan Arjasa, Sumenep');

/*Table structure for table `tb_pembayaran` */

DROP TABLE IF EXISTS `tb_pembayaran`;

CREATE TABLE `tb_pembayaran` (
  `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `total_pembayaran` int(11) NOT NULL,
  `jml_uang_dibayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `tgl_pembayaran` int(11) NOT NULL,
  `kode_invoice` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_outlet` int(11) NOT NULL,
  PRIMARY KEY (`id_pembayaran`),
  KEY `id_transaksi` (`kode_invoice`),
  KEY `id_user` (`id_user`),
  KEY `id_outlet` (`id_outlet`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_pembayaran` */

insert  into `tb_pembayaran`(`id_pembayaran`,`total_pembayaran`,`jml_uang_dibayar`,`kembalian`,`tgl_pembayaran`,`kode_invoice`,`id_user`,`id_outlet`) values 
(1,10000,20000,10000,1678100542,'060320230101T0002',1,1);

/*Table structure for table `tb_pengeluaran` */

DROP TABLE IF EXISTS `tb_pengeluaran`;

CREATE TABLE `tb_pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT,
  `jumlah_pengeluaran` int(11) NOT NULL,
  `keterangan_pengeluaran` text NOT NULL,
  `tanggal_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_pengeluaran`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_pengeluaran` */

insert  into `tb_pengeluaran`(`id_pengeluaran`,`jumlah_pengeluaran`,`keterangan_pengeluaran`,`tanggal_pengeluaran`,`id_user`) values 
(1,24000,'Membeli bahan teh',1678101924,1);

/*Table structure for table `tb_transaksi` */

DROP TABLE IF EXISTS `tb_transaksi`;

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `kode_invoice` varchar(100) NOT NULL,
  `kuantitas` int(11) NOT NULL,
  `status_bayar` enum('belum_dibayar','sudah_dibayar') NOT NULL,
  `tgl_transaksi` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_outlet` int(11) NOT NULL,
  PRIMARY KEY (`id_transaksi`),
  KEY `id_menu` (`id_menu`),
  KEY `id_user` (`id_user`),
  KEY `id_outlet` (`id_outlet`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_transaksi` */

insert  into `tb_transaksi`(`id_transaksi`,`kode_invoice`,`kuantitas`,`status_bayar`,`tgl_transaksi`,`keterangan`,`id_menu`,`id_user`,`id_outlet`) values 
(1,'060320230101T0001',2,'belum_dibayar',1678100489,'',15,1,1),
(2,'060320230101T0002',1,'sudah_dibayar',1678100518,'Tanpa gula\r\n',10,1,1);

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jabatan` enum('administrator','kasir') NOT NULL,
  `id_outlet` int(11) NOT NULL,
  PRIMARY KEY (`id_user`),
  KEY `id_outlet` (`id_outlet`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id_user`,`nama_user`,`username`,`password`,`jabatan`,`id_outlet`) values 
(1,'Irba Tsabita','admin','$2y$10$yICyAfAkWZDX2nGec2BwqOf2le4TAxGtjU53AKb0QeutbD7akJw92','administrator',1),
(2,'Haus Coding Dev','hako-975','$2y$10$b4VVR0au7fQTJH8C/FKGL.WmpSja8TCTuWunQaQN0vYCu8WfHfxcO','administrator',2),
(13,'Alfafaun','kasir','$2y$10$s0IQp7ut6w1U3yP2SL848uRXsxLGIQfdM.52H0DL6Nb0IDdITILTS','kasir',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
