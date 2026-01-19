-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2026 at 03:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keuangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `email`, `pass`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `arus_kas`
--

CREATE TABLE `arus_kas` (
  `id_arus_kas` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `sumber` varchar(150) DEFAULT NULL,
  `jumlah` int(30) DEFAULT NULL,
  `kas_awal` bigint(20) DEFAULT 0,
  `status` int(5) DEFAULT NULL,
  `id_user` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arus_kas`
--

INSERT INTO `arus_kas` (`id_arus_kas`, `tanggal`, `sumber`, `jumlah`, `kas_awal`, `status`, `id_user`) VALUES
(1, '2026-01-05', 'Penerimaan dari Jasa Servis - Motor Beat', 350000, 50000000, 1, 1),
(2, '2026-01-08', 'Penerimaan dari Jasa Servis - NMAX', 750000, 50350000, 1, 1),
(3, '2026-01-10', 'Penerimaan dari Penjualan Ban Luar', 2500000, 51100000, 1, 1),
(4, '2026-01-12', 'Penerimaan dari Penjualan Shockbreaker', 1800000, 53600000, 1, 1),
(5, '2026-01-15', 'Penerimaan dari Jasa Tune Up', 450000, 55400000, 1, 1),
(6, '2026-01-01', 'Pembayaran Gaji Karyawan', 15000000, 50000000, 1, 1),
(7, '2026-01-05', 'Pembayaran Listrik & Air', 2500000, 35000000, 1, 1),
(8, '2026-01-08', 'Pembayaran Beli Alat Teknik', 3500000, 32500000, 1, 1),
(9, '2026-01-10', 'Pembayaran Iklan', 1500000, 29000000, 1, 1),
(10, '2026-01-15', 'Pembayaran Bensin Operasional', 750000, 27500000, 1, 1),
(11, '2026-01-01', 'Pinjaman dari Bank BCA', 50000000, 50000000, 2, 1),
(12, '2026-01-05', 'Pembayaran Cicilan Pinjaman', 5000000, 100000000, 2, 1),
(13, '2026-01-10', 'Pembayaran Cicilan Pinjaman', 5000000, 95000000, 2, 1),
(14, '2026-01-15', 'Pembayaran Cicilan Pinjaman', 5000000, 90000000, 2, 1),
(15, '2026-01-20', 'Penambahan Modal dari Pemilik', 25000000, 85000000, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `posisi` varchar(40) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `umur` int(11) NOT NULL,
  `kontak` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `posisi`, `alamat`, `umur`, `kontak`) VALUES
(1, 'Ahmad Rizki', 'Kepala Mekanik', 'Jl. Padang Selatan No. 10', 28, '081234567890'),
(2, 'Budi Santoso', 'Mekanik Senior', 'Jl. Air Tawar No. 15', 30, '081234567891'),
(3, 'Doni Pratama', 'Mekanik Junior', 'Jl. Belanti No. 20', 24, '081234567892'),
(4, 'Eko Wahyudi', 'Mekanik Junior', 'Jl. Andalas No. 25', 23, '081234567893'),
(5, 'Feri Irawan', 'Kasir', 'Jl. Dobi No. 5', 26, '081234567894'),
(6, 'Gunawan', 'Admin Sparepart', 'Jl. Pasar Raya No. 30', 25, '081234567895'),
(7, 'Hendra Wijaya', 'Sales Marketing', 'Jl. Bundo Kanduang No. 12', 27, '081234567896'),
(8, 'I Made Sukma', 'Cleaning Service', 'Jl. Sawahan No. 8', 35, '081234567897'),
(9, 'Joko Susilo', 'Security', 'Jl. Siteba No. 18', 40, '081234567898'),
(10, 'Kelvin Saputra', 'Kurir', 'Jl. Ulak Karang No. 22', 22, '081234567899'),
(11, 'Lukman Hakim', 'Mekanik Senior', 'Jl. Gurun Laweh No. 35', 32, '081234567800'),
(12, 'Muhammad Raffi', 'Helper Mekanik', 'Jl. Parak Gadang No. 40', 20, '081234567801');

-- --------------------------------------------------------

--
-- Table structure for table `laba_rugi`
--

CREATE TABLE `laba_rugi` (
  `id_laba_rugi` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `sumber` varchar(100) DEFAULT NULL,
  `jumlah` int(30) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laba_rugi`
--

INSERT INTO `laba_rugi` (`id_laba_rugi`, `tanggal`, `sumber`, `jumlah`, `status`, `id_user`) VALUES
(1, '2026-01-05', 'Jasa Ganti Oli - Motor Honda Beat', 350000, 1, 1),
(2, '2026-01-08', 'Jasa Servis Lengkap - Yamaha NMAX', 750000, 1, 1),
(3, '2026-01-10', 'Penjualan Sparepart - Ban Luar', 2500000, 1, 1),
(4, '2026-01-12', 'Penjualan Sparepart - Shockbreaker', 1800000, 1, 1),
(5, '2026-01-15', 'Jasa Tune Up - Vario 125', 450000, 1, 1),
(6, '2026-01-05', 'HPP - Oli Shell AX7', 150000, 2, 1),
(7, '2026-01-08', 'HPP - Sparepart Tune Up', 350000, 2, 1),
(8, '2026-01-10', 'HPP - Ban Luar Michelin', 1500000, 2, 1),
(9, '2026-01-12', 'HPP - Shockbreaker KYB', 1000000, 2, 1),
(10, '2026-01-15', 'HPP - Karburator Cleaner', 200000, 2, 1),
(11, '2026-01-01', 'Gaji Karyawan - Januari', 15000000, 3, 1),
(12, '2026-01-05', 'Listrik & Air - Januari', 2500000, 3, 1),
(13, '2026-01-08', 'Beli Alat Teknik Baru', 3500000, 3, 1),
(14, '2026-01-10', 'Iklan Facebook Ads', 1500000, 3, 1),
(15, '2026-01-15', 'Transport & Bensin', 750000, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `neraca_saldo`
--

CREATE TABLE `neraca_saldo` (
  `id_neraca_saldo` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_akun` varchar(100) DEFAULT NULL,
  `nomor_akun` varchar(20) DEFAULT NULL,
  `saldo_awal_debit` int(30) DEFAULT NULL,
  `saldo_awal_kredit` int(30) DEFAULT NULL,
  `pergerakan_debit` int(30) DEFAULT NULL,
  `pergerakan_kredit` int(30) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `neraca_saldo`
--

INSERT INTO `neraca_saldo` (`id_neraca_saldo`, `tanggal`, `nama_akun`, `nomor_akun`, `saldo_awal_debit`, `saldo_awal_kredit`, `pergerakan_debit`, `pergerakan_kredit`, `status`, `id_user`) VALUES
(1, '2026-01-01', 'Kas', '1-1001', 50000000, 0, 25000000, 15000000, 1, 1),
(2, '2026-01-01', 'Bank BCA', '1-1002', 100000000, 0, 50000000, 30000000, 1, 1),
(3, '2026-01-01', 'Piutang Usaha', '1-1003', 25000000, 0, 15000000, 5000000, 1, 1),
(4, '2026-01-01', 'Persediaan Sparepart', '1-1004', 75000000, 0, 35000000, 20000000, 1, 1),
(5, '2026-01-01', 'Peralatan', '1-1005', 30000000, 0, 5000000, 0, 1, 1),
(6, '2026-01-01', 'Utang Usaha', '2-1001', 0, 35000000, 15000000, 25000000, 2, 1),
(7, '2026-01-01', 'Utang Gaji', '2-1002', 0, 5000000, 3000000, 5000000, 2, 1),
(8, '2026-01-01', 'Utang Bank', '2-1003', 0, 20000000, 10000000, 15000000, 2, 1),
(9, '2026-01-01', 'Modal Awal', '3-1001', 0, 200000000, 0, 0, 3, 1),
(10, '2026-01-01', 'Laba Ditahan', '3-1002', 0, 15000000, 0, 5000000, 3, 1),
(11, '2026-01-01', 'Pendapatan Jasa Servis', '4-1001', 0, 85000000, 0, 120000000, 4, 1),
(12, '2026-01-01', 'Pendapatan Penjualan Sparepart', '4-1002', 0, 65000000, 0, 95000000, 4, 1),
(13, '2026-01-01', 'Pendapatan Lain-lain', '4-1003', 0, 5000000, 0, 8000000, 4, 1),
(14, '2026-01-01', 'Beban Gaji', '5-1001', 15000000, 0, 25000000, 0, 5, 1),
(15, '2026-01-01', 'Beban Listrik & Air', '5-1002', 3000000, 0, 5000000, 0, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan`
--

CREATE TABLE `pemasukan` (
  `id_pemasukan` int(11) NOT NULL,
  `tgl_pemasukan` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sumber` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemasukan`
--

INSERT INTO `pemasukan` (`id_pemasukan`, `tgl_pemasukan`, `jumlah`, `sumber`, `status`) VALUES
(1, '2026-01-05', 350000, 'Jasa Servis Motor Beat - Ganti Oli', 1),
(2, '2026-01-08', 750000, 'Jasa Servis Lengkap NMAX', 1),
(3, '2026-01-10', 2500000, 'Penjualan Sparepart - Ban Luar', 1),
(4, '2026-01-12', 1800000, 'Penjualan Sparepart - Shockbreaker', 1),
(5, '2026-01-15', 450000, 'Jasa Tune Up Vario 125', 1),
(6, '2026-01-18', 600000, 'Jasa Ganti Knalpot Mio', 1),
(7, '2026-01-20', 1200000, 'Penjualan Sparepart - Rem Cakram', 1),
(8, '2026-01-22', 550000, 'Jasa Servis Ringan Beat', 1),
(9, '2026-01-25', 2800000, 'Penjualan Sparepart - Velg Racing', 1),
(10, '2026-01-28', 850000, 'Jasa Ganti Karbu Vario', 1),
(11, '2026-01-30', 1500000, 'Penjualan Aksesoris Motor', 1),
(12, '2026-01-31', 950000, 'Jasa Servis Xenia', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `tgl_pengeluaran` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sumber` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `tgl_pengeluaran`, `jumlah`, `sumber`, `status`) VALUES
(1, '2026-01-01', 15000000, 'Gaji Karyawan - Januari', 2),
(2, '2026-01-05', 2500000, 'Listrik & Air - Januari', 2),
(3, '2026-01-08', 3500000, 'Pembelian Alat Teknik Baru', 2),
(4, '2026-01-10', 1500000, 'Iklan Facebook Ads', 2),
(5, '2026-01-12', 750000, 'Bensin Operasional', 2),
(6, '2026-01-15', 5000000, 'Beli Sparepart dari Distributor', 2),
(7, '2026-01-18', 800000, ' ATK & Perlengkapan Kantor', 2),
(8, '2026-01-20', 1200000, 'Perbaikan Komputer Kasir', 2),
(9, '2026-01-22', 450000, 'Makan Siang Karyawan', 2),
(10, '2026-01-25', 600000, 'Internet & WiFi', 2),
(11, '2026-01-28', 2500000, 'Beli Oli Shell 10 Liter', 2),
(12, '2026-01-30', 350000, 'Beli Seal & O-Ring', 2),
(13, '2026-01-31', 1800000, 'Cicilan Pinjaman Bank', 2),
(14, '2026-01-25', 950000, 'Perawatan AC Bengkel', 2),
(15, '2026-01-30', 500000, 'Transport Pengiriman Sparepart', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `arus_kas`
--
ALTER TABLE `arus_kas`
  ADD PRIMARY KEY (`id_arus_kas`),
  ADD KEY `idx_tanggal_user` (`tanggal`,`id_user`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `laba_rugi`
--
ALTER TABLE `laba_rugi`
  ADD PRIMARY KEY (`id_laba_rugi`),
  ADD KEY `idx_tanggal_user` (`tanggal`,`id_user`);

--
-- Indexes for table `neraca_saldo`
--
ALTER TABLE `neraca_saldo`
  ADD PRIMARY KEY (`id_neraca_saldo`),
  ADD KEY `idx_tanggal_user` (`tanggal`,`id_user`);

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`id_pemasukan`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `arus_kas`
--
ALTER TABLE `arus_kas`
  MODIFY `id_arus_kas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `laba_rugi`
--
ALTER TABLE `laba_rugi`
  MODIFY `id_laba_rugi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `neraca_saldo`
--
ALTER TABLE `neraca_saldo`
  MODIFY `id_neraca_saldo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `id_pemasukan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
