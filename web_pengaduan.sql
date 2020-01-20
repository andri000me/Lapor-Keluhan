# Host: localhost  (Version: 5.6.20)
# Date: 2016-10-21 01:21:59
# Generator: MySQL-Front 5.2  (Build 5.66)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;

DROP DATABASE IF EXISTS `web_pengaduan`;
CREATE DATABASE `web_pengaduan` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `web_pengaduan`;

#
# Source for table "asisten"
#

DROP TABLE IF EXISTS `asisten`;
CREATE TABLE `asisten` (
  `nim_asisten` varchar(10) NOT NULL DEFAULT '',
  `password` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(10) DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`nim_asisten`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "asisten"
#

INSERT INTO `asisten` VALUES ('1411501123','ryfan','Ryfan Aditya Indra','Supervisor','081270761580'),('1411502253','azhari','Azhari Nur Mulianto','Admin','08080808');

#
# Source for table "kategori"
#

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

#
# Data for table "kategori"
#

INSERT INTO `kategori` VALUES (1,'Penyimpanan'),(2,'Binder'),(3,'Tempat Makan');

#
# Source for table "laporan"
#

DROP TABLE IF EXISTS `laporan`;
CREATE TABLE `laporan` (
  `kode_laporan` int(11) NOT NULL AUTO_INCREMENT,
  `nim_mhs` varchar(10) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tgl_laporan` varchar(255) DEFAULT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `isi_laporan` text,
  `status` varchar(20) NOT NULL DEFAULT 'Terkirim',
  PRIMARY KEY (`kode_laporan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

#
# Data for table "laporan"
#

INSERT INTO `laporan` VALUES (1,'1411501123','Ryfan Aditya','2016-10-20','Penyimpanan','Flashdisk','Ditemukan di LAB 01','Terkirim'),(2,'1411501123','Ryfan Aditya','2016-10-01','Tempat Makan','Tuppwerware Ibu','Warna merah di lab 02','Terkirim'),(3,'1411503319','Joko Priyono','2016-10-01','Binder','Binder Kecil','Ditemukan di LAB 05','Terkirim'),(4,'1411503319','Joko Priyono','2016-10-12','Penyimpanan','Harddisk Eksternal','HDD Eksternal 256 GB di LAB 12','Terkirim'),(5,'1411501123','Ryfan Aditya','2016-10-02','Penyimpanan','Flashdisk','8 gb di lab 8','Diproses');

#
# Source for table "mahasiswa"
#

DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE `mahasiswa` (
  `nim_mhs` varchar(10) NOT NULL DEFAULT '',
  `password` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`nim_mhs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "mahasiswa"
#

INSERT INTO `mahasiswa` VALUES ('1411501123','ryfan','Ryfan Aditya','Teknik Informatika','081270761580'),('1411503319','joko','Joko Priyono','Teknik Informatika','088989382983'),('1411503475','amran123','Amran Swandy','Sistem Komputer','123123123');

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
