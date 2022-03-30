-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2021 at 11:44 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hexagon_thrifting`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `tglorder` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL DEFAULT 'Cart'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`idcart`, `orderid`, `userid`, `tglorder`, `status`) VALUES
(11, '15Swf8Ye0Fm.M', 2, '2020-03-16 12:17:34', 'Selesai'),
(13, '166Qk/04y3RkA', 2, '2021-06-11 03:02:08', 'Selesai'),
(14, '16OFX0nAsgBok', 2, '2021-06-24 13:46:05', 'Selesai'),
(15, '16mdDi4495L7.', 3, '2021-06-24 14:52:10', 'Selesai'),
(16, '16m3zh0vcECds', 4, '2021-06-24 15:15:32', 'Selesai'),
(17, '16K3Pchsdcd1Y', 4, '2021-06-24 15:20:43', 'Selesai'),
(18, '162IGdZf5RUEs', 4, '2021-06-25 00:02:54', 'Selesai'),
(19, '16LU6xTY1pUFA', 4, '2021-06-25 07:40:35', 'Payment'),
(20, '16081Vfnh4g3c', 1, '2021-06-26 07:35:42', 'Pengiriman'),
(21, '165yFnnLgzTpU', 1, '2021-06-27 11:47:48', 'Payment'),
(22, '16XNk7nHJr1Sg', 4, '2021-06-29 08:00:53', 'Confirmed'),
(23, '16cE.AxJ0LIUM', 4, '2021-06-30 05:42:18', 'Payment'),
(24, '16iqtgCSvLKXw', 4, '2021-06-30 13:50:21', 'Confirmed'),
(25, '16PLGLqLpKPcA', 4, '2021-07-02 04:49:40', 'Confirmed'),
(27, '16ff3tWDAkotU', 4, '2021-07-02 06:30:42', 'Confirmed'),
(28, '16slloRzhIo1o', 6, '2021-07-02 07:12:42', 'Confirmed'),
(29, '16IjOkNv2g/8E', 4, '2021-07-04 02:32:57', 'Payment'),
(30, '16743b8EN2Stg', 3, '2021-07-04 02:44:10', 'Pengiriman'),
(31, '16673zFoZ4vtA', 3, '2021-07-04 02:44:46', 'Payment'),
(32, '1605t15BtpkIc', 4, '2021-07-05 03:27:37', 'Payment'),
(33, '16l5Ac.4IWCB2', 3, '2021-07-09 08:17:03', 'Payment'),
(34, '16JyNBKQuEC02', 8, '2021-07-23 12:39:09', 'Selesai'),
(35, '16uc6VqlMUk0Y', 1, '2021-07-23 13:00:59', 'Payment'),
(36, '16bguXuv7DTIA', 1, '2021-07-23 13:14:58', 'Payment'),
(37, '16Fqdn94b3oXE', 9, '2021-07-24 03:53:43', 'Pengiriman');

-- --------------------------------------------------------

--
-- Table structure for table `detailorder`
--

CREATE TABLE `detailorder` (
  `detailid` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailorder`
--

INSERT INTO `detailorder` (`detailid`, `orderid`, `idproduk`, `qty`) VALUES
(24, '165yFnnLgzTpU', 7, 1),
(25, '16LU6xTY1pUFA', 7, 1),
(26, '16XNk7nHJr1Sg', 7, 1),
(30, '16PLGLqLpKPcA', 7, 9),
(32, '16slloRzhIo1o', 7, 1),
(35, '16743b8EN2Stg', 7, 1),
(37, '1605t15BtpkIc', 7, 1),
(39, '16l5Ac.4IWCB2', 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `namakategori` varchar(20) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`, `tgldibuat`) VALUES
(4, 'T-shirt', '2021-06-25 03:51:53'),
(5, 'topi', '2021-07-02 04:35:57'),
(7, 'jaket', '2021-07-05 03:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `idkonfirmasi` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `namarekening` varchar(25) NOT NULL,
  `tglbayar` date NOT NULL,
  `tglsubmit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gambar` varchar(100) NOT NULL,
  `alamat` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`idkonfirmasi`, `orderid`, `userid`, `payment`, `namarekening`, `tglbayar`, `tglsubmit`, `gambar`, `alamat`) VALUES
(7, '16XNk7nHJr1Sg', 4, 'Bank BCA', 'jalaludinakbar', '2021-06-29', '2021-06-29 08:19:37', 'konfirmasi/16NS0CtC7cZkg.jpg', 'jambi'),
(8, '16PLGLqLpKPcA', 4, 'Bank BCA', 'tolep', '2021-07-02', '2021-07-02 06:11:19', 'konfirmasi/16NS0CtC7cZkg.jpg', 'tl pete'),
(9, '16iqtgCSvLKXw', 4, 'Bank BCA', 'tolep', '2021-07-02', '2021-07-02 06:12:51', 'konfirmasi/16bIDpJieVbZI.jpg', ''),
(10, '16slloRzhIo1o', 6, 'Bank BCA', 'jalaludinakbar', '2021-07-02', '2021-07-02 07:18:16', 'konfirmasi/16NS0CtC7cZkg.jpg', 'jl talang kemang'),
(11, '16ff3tWDAkotU', 4, 'Bank BCA', 'tolep', '2021-07-02', '2021-07-02 07:19:40', 'konfirmasi/16IriMbuvGhVs.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgljoin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(7) NOT NULL DEFAULT 'Member',
  `lastlogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `namalengkap`, `email`, `password`, `notelp`, `alamat`, `tgljoin`, `role`, `lastlogin`) VALUES
(1, 'Admin', 'admin', '$2y$10$GJVGd4ji3QE8ikTBzNyA0uLQhiGd6MirZeSJV1O6nUpjSVp1eaKzS', '01234567890', 'Indonesia', '2020-03-16 11:31:17', 'Admin', NULL),
(2, 'Guest', 'guest', '$2y$10$xXEMgj5pMT9EE0QAx3QW8uEn155Je.FHH5SuIATxVheOt0Z4rhK6K', '01234567890', 'Indonesia', '2020-03-16 11:30:40', 'Member', NULL),
(3, 'jalaludinakbar', 'jalaludinakbar02@gmail.com', '$2y$10$pH/D3/088tUdvb0QourbruKpAlJtXBumilMM4orgrq281k/0iKrsm', '089616120301', 'jl talang kemang kelurahan sentosa', '2021-06-24 14:51:35', 'Member', NULL),
(4, 'tolep', 'goes@gmail.com', '$2y$10$MUKew3dT4IzwbB9Q5Nz.henVPX4HVpWmp8Stk5mZXLhML9ZuhCvau', '089712345678', 'Plaju', '2021-06-24 15:14:58', 'Member', NULL),
(5, 'edo', 'edo@gmail.com', '$2y$10$HFwLR8HBlZz/J/ZFzREA4uf3Wvo4oWmJYlcLYEL6kJcllwedrhTRC', '089919191900', 'indralaya', '2021-07-02 06:36:19', 'Member', NULL),
(6, 'jalaludinakbar', 'jalaludinakbar002@gmail.com', '$2y$10$VJpfFpbFL.9iJofwOHKzoOdJ4C8dS1OaZy5V2cFkTopdmiGlDwYlu', '089919191900', 'jakardah', '2021-07-02 07:06:41', 'Member', NULL),
(7, 'tomi', 'tomi@gmail.com', '$2y$10$EIe07zruGX3K5.HOb/zEhuIHLYp3PO712aimFRtnUavd4uLYl1S36', '089616120301', 'jl talang beti kel sentosa kec su ii palembang', '2021-07-23 12:18:28', 'Member', NULL),
(8, 'toni', 'toni@gmail.com', '$2y$10$E6roOIq25Hl0UCAej7nv0u.b/lIXs6BylhopM2AJyxX7cdNswRLNy', '089616120301', 'jl talang kemang kelurahan sentosa', '2021-07-23 12:38:05', 'Member', NULL),
(9, 'sakinah', 'sakinah@gmail.com', '$2y$10$YykvQXX4BBfNbn5iRv905edOkg83vPG4Ji6wOIxGs3XlOHZVhwJOK', '081367235488', 'jl. gaya baru ', '2021-07-24 03:51:32', 'Member', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no` int(11) NOT NULL,
  `metode` varchar(25) NOT NULL,
  `norek` varchar(25) NOT NULL,
  `logo` text,
  `an` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`no`, `metode`, `norek`, `logo`, `an`) VALUES
(1, 'Bank BCA', '13131231231', 'images/bca.jpg', 'Satuaja Thrift'),
(2, 'Bank Mandiri', '943248844843', 'images/mandiri.jpg', 'Satuaja Thrift');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `namaproduk` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `rate` int(11) NOT NULL,
  `hargabefore` int(11) NOT NULL,
  `hargaafter` int(11) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `namaproduk`, `gambar`, `deskripsi`, `rate`, `hargabefore`, `hargaafter`, `tgldibuat`) VALUES
(7, 7, 'petak', 'admin/produk/16kKxH.MjhciM.png', 'keren abis ini mah', 5, 1000001, 99000, '2021-06-27 11:46:48'),
(9, 4, 'mammut', 'admin/produk/16bddoyus8DM2.png', 'kondisi baru ', 5, 200000, 150000, '2021-07-24 04:13:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idcart`),
  ADD UNIQUE KEY `orderid` (`orderid`),
  ADD KEY `orderid_2` (`orderid`);

--
-- Indexes for table `detailorder`
--
ALTER TABLE `detailorder`
  ADD PRIMARY KEY (`detailid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `idproduk` (`idproduk`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`idkonfirmasi`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `idkategori` (`idkategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `detailorder`
--
ALTER TABLE `detailorder`
  MODIFY `detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `idkonfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailorder`
--
ALTER TABLE `detailorder`
  ADD CONSTRAINT `idproduk` FOREIGN KEY (`idproduk`) REFERENCES `produk` (`idproduk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderid` FOREIGN KEY (`orderid`) REFERENCES `cart` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `idkategori` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
