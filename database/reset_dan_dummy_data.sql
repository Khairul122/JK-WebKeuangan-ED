
-- Kosongkan semua tabel
TRUNCATE TABLE `pemasukan`;
TRUNCATE TABLE `pengeluaran`;
TRUNCATE TABLE `karyawan`;
TRUNCATE TABLE `arus_kas`;
TRUNCATE TABLE `laba_rugi`;
TRUNCATE TABLE `neraca_saldo`;

-- Reset auto increment
ALTER TABLE `pemasukan` AUTO_INCREMENT = 1;
ALTER TABLE `pengeluaran` AUTO_INCREMENT = 1;
ALTER TABLE `karyawan` AUTO_INCREMENT = 1;
ALTER TABLE `arus_kas` AUTO_INCREMENT = 1;
ALTER TABLE `laba_rugi` AUTO_INCREMENT = 1;
ALTER TABLE `neraca_saldo` AUTO_INCREMENT = 1;


-- ============================================
-- 2. DUMMY DATA - NERACA SALDO (15 Data)
-- ============================================

-- Asset (Status 1) - 5 Data
INSERT INTO `neraca_saldo` (`tanggal`, `nomor_akun`, `nama_akun`, `saldo_awal_debit`, `saldo_awal_kredit`, `pergerakan_debit`, `pergerakan_kredit`, `status`, `id_user`) VALUES
('2026-01-01', '1-1001', 'Kas', 75000000, 0, 45000000, 25000000, 1, 1),
('2026-01-01', '1-1002', 'Bank BRI', 150000000, 0, 85000000, 45000000, 1, 1),
('2026-01-01', '1-1003', 'Piutang Usaha', 45000000, 0, 25000000, 10000000, 1, 1),
('2026-01-01', '1-1004', 'Persediaan Beras', 125000000, 0, 65000000, 35000000, 1, 1),
('2026-01-01', '1-1005', 'Persediaan Gabah', 85000000, 0, 45000000, 20000000, 1, 1);

-- Kewajiban (Status 2) - 3 Data
INSERT INTO `neraca_saldo` (`tanggal`, `nomor_akun`, `nama_akun`, `saldo_awal_debit`, `saldo_awal_kredit`, `pergerakan_debit`, `pergerakan_kredit`, `status`, `id_user`) VALUES
('2026-01-01', '2-1001', 'Utang Usaha', 0, 65000000, 35000000, 45000000, 2, 1),
('2026-01-01', '2-1002', 'Utang Gaji', 0, 15000000, 10000000, 15000000, 2, 1),
('2026-01-01', '2-1003', 'Utang Bank', 0, 50000000, 25000000, 30000000, 2, 1);

-- Ekuitas (Status 3) - 2 Data
INSERT INTO `neraca_saldo` (`tanggal`, `nomor_akun`, `nama_akun`, `saldo_awal_debit`, `saldo_awal_kredit`, `pergerakan_debit`, `pergerakan_kredit`, `status`, `id_user`) VALUES
('2026-01-01', '3-1001', 'Modal Awal', 0, 350000000, 0, 0, 3, 1),
('2026-01-01', '3-1002', 'Laba Ditahan', 0, 50000000, 0, 15000000, 3, 1);

-- Pendapatan (Status 4) - 3 Data
INSERT INTO `neraca_saldo` (`tanggal`, `nomor_akun`, `nama_akun`, `saldo_awal_debit`, `saldo_awal_kredit`, `pergerakan_debit`, `pergerakan_kredit`, `status`, `id_user`) VALUES
('2026-01-01', '4-1001', 'Pendapatan Penjualan Beras', 0, 150000000, 0, 185000000, 4, 1),
('2026-01-01', '4-1002', 'Pendapatan Jasa Penggilingan', 0, 45000000, 0, 65000000, 4, 1),
('2026-01-01', '4-1003', 'Pendapatan Sewa Lahan', 0, 25000000, 0, 35000000, 4, 1);

-- Beban (Status 5) - 2 Data
INSERT INTO `neraca_saldo` (`tanggal`, `nomor_akun`, `nama_akun`, `saldo_awal_debit`, `saldo_awal_kredit`, `pergerakan_debit`, `pergerakan_kredit`, `status`, `id_user`) VALUES
('2026-01-01', '5-1001', 'Beban Gaji', 25000000, 0, 35000000, 0, 5, 1),
('2026-01-01', '5-1002', 'Beban Listrik & Air Pabrik', 8500000, 0, 12000000, 0, 5, 1);


-- ============================================
-- 3. DUMMY DATA - LABA RUGI (15 Data)
-- ============================================

-- Pendapatan (Status 1) - 5 Data
INSERT INTO `laba_rugi` (`tanggal`, `sumber`, `jumlah`, `status`, `id_user`) VALUES
('2026-01-05', 'Penjualan Beras Premium 50kg', 8500000, 1, 1),
('2026-01-08', 'Penjualan Gabah Kering', 15000000, 1, 1),
('2026-01-10', 'Jasa Penggilingan Padi', 3500000, 1, 1),
('2026-01-12', 'Penjualan Beras Organik', 5200000, 1, 1),
('2026-01-15', 'Jasa Sewa Lahan Pertanian', 7500000, 1, 1);

-- Harga Pokok (Status 2) - 5 Data
INSERT INTO `laba_rugi` (`tanggal`, `sumber`, `jumlah`, `status`, `id_user`) VALUES
('2026-01-05', 'HPP - Pembelian Gabah dari Petani', 6000000, 2, 1),
('2026-01-08', 'HPP - Biaya Pengeringan', 8000000, 2, 1),
('2026-01-10', 'HPP - Biaya Penggilingan', 1500000, 2, 1),
('2026-01-12', 'HPP - Beras Baku', 3500000, 2, 1),
('2026-01-15', 'HPP - Sewa Lahan', 5000000, 2, 1);

-- Biaya Operasional (Status 3) - 5 Data
INSERT INTO `laba_rugi` (`tanggal`, `sumber`, `jumlah`, `status`, `id_user`) VALUES
('2026-01-01', 'Gaji Karyawan - Januari', 25000000, 3, 1),
('2026-01-05', 'Listrik & Air Pabrik - Januari', 8500000, 3, 1),
('2026-01-08', 'Beli Mesin Pengering Baru', 15000000, 3, 1),
('2026-01-10', 'Iklan & Marketing', 5000000, 3, 1),
('2026-01-15', 'Transport & Distribusi', 3500000, 3, 1);


-- ============================================
-- 4. DUMMY DATA - ARUS KAS (15 Data)
-- ============================================

-- Aktivitas Operasional (Status 1) - 10 Data
INSERT INTO `arus_kas` (`tanggal`, `sumber`, `jumlah`, `kas_awal`, `status`, `id_user`) VALUES
('2026-01-05', 'Penerimaan dari Penjualan Beras', 8500000, 50000000, 1, 1),
('2026-01-08', 'Penerimaan dari Penjualan Gabah', 15000000, 58500000, 1, 1),
('2026-01-10', 'Penerimaan dari Jasa Penggilingan', 3500000, 73500000, 1, 1),
('2026-01-12', 'Penerimaan dari Penjualan Beras Organik', 5200000, 77000000, 1, 1),
('2026-01-15', 'Penerimaan dari Sewa Lahan', 7500000, 82200000, 1, 1),
('2026-01-01', 'Pembayaran Gaji Karyawan', 25000000, 50000000, 1, 1),
('2026-01-05', 'Pembayaran Listrik & Air Pabrik', 8500000, 25000000, 1, 1),
('2026-01-08', 'Pembayaran Beli Mesin Pengering', 15000000, 16500000, 1, 1),
('2026-01-10', 'Pembayaran Iklan & Marketing', 5000000, 1500000, 1, 1),
('2026-01-15', 'Pembahan Transport Distribusi', 3500000, -3500000, 1, 1);

-- Aktivitas Pendanaan (Status 2) - 5 Data
INSERT INTO `arus_kas` (`tanggal`, `sumber`, `jumlah`, `kas_awal`, `status`, `id_user`) VALUES
('2026-01-01', 'Pinjaman dari Bank BCA', 50000000, 50000000, 2, 1),
('2026-01-05', 'Pembayaran Cicilan Pinjaman', 5000000, 100000000, 2, 1),
('2026-01-10', 'Pembayaran Cicilan Pinjaman', 5000000, 95000000, 2, 1),
('2026-01-15', 'Pembayaran Cicilan Pinjaman', 5000000, 90000000, 2, 1),
('2026-01-20', 'Penambahan Modal dari Pemilik', 25000000, 85000000, 2, 1);


-- ============================================
-- 5. DUMMY DATA - KARYAWAN (12 Data)
-- ============================================

INSERT INTO `karyawan` (`nama`, `posisi`, `alamat`, `umur`, `kontak`) VALUES
('Ahmad Rizki', 'Kepala Accounting', 'Jl. Padang Selatan No. 10', 28, '081234567890'),
('Budi Santoso', 'Staff Finance', 'Jl. Air Tawar No. 15', 30, '081234567891'),
('Doni Pratama', 'Staff Administrasi', 'Jl. Belanti No. 20', 24, '081234567892'),
('Eko Wahyudi', 'Staff Purchasing', 'Jl. Andalas No. 25', 23, '081234567893'),
('Feri Irawan', 'Kasir', 'Jl. Dobi No. 5', 26, '081234567894'),
('Gunawan', 'Staff Gudang', 'Jl. Pasar Raya No. 30', 25, '081234567895'),
('Hendra Wijaya', 'Sales Marketing', 'Jl. Bundo Kanduang No. 12', 27, '081234567896'),
('I Made Sukma', 'Cleaning Service', 'Jl. Sawahan No. 8', 35, '081234567897'),
('Joko Susilo', 'Security', 'Jl. Siteba No. 18', 40, '081234567898'),
('Kelvin Saputra', 'Kurir', 'Jl. Ulak Karang No. 22', 22, '081234567899'),
('Lukman Hakim', 'Supervisor', 'Jl. Gurun Laweh No. 35', 32, '081234567800'),
('Muhammad Raffi', 'Staff Logistik', 'Jl. Parak Gadang No. 40', 20, '081234567801');


-- ============================================
-- 6. DUMMY DATA - PEMASUKAN (12 Data)
-- ============================================

INSERT INTO `pemasukan` (`tgl_pemasukan`, `jumlah`, `sumber`, `status`) VALUES
('2026-01-05', 8500000, 'Penjualan Beras Premium 50kg - Partai Besar', 1),
('2026-01-08', 15000000, 'Penjualan Gabah Kering ke Tengkulak', 1),
('2026-01-10', 3500000, 'Jasa Penggilingan Padi - 5 Ton', 1),
('2026-01-12', 5200000, 'Penjualan Beras Organik - Supermarket', 1),
('2026-01-15', 7500000, 'Sewa Lahan Pertanian - Bulan Januari', 1),
('2026-01-18', 6500000, 'Penjualan Beras Merah - Eksport', 1),
('2026-01-20', 4500000, 'Jasa Sortasi Beras - Premium', 1),
('2026-01-22', 3800000, 'Penjualan Dedak - Pakan Ternak', 1),
('2026-01-25', 12000000, 'Penjualan Beras 25kg - Partai Kecil', 1),
('2026-01-28', 5800000, 'Jasa Sewa Traktor - Musim Tanam', 1),
('2026-01-30', 9500000, 'Penjualan Meniran - Pakan Ayam', 1),
('2026-01-31', 7200000, 'Penjualan Beras Ramos - Premium Quality', 1);


-- ============================================
-- 7. DUMMY DATA - PENGELUARAN (15 Data)
-- ============================================

INSERT INTO `pengeluaran` (`tgl_pengeluaran`, `jumlah`, `sumber`, `status`) VALUES
('2026-01-01', 25000000, 'Gaji Karyawan - Januari (18 Staff)', 2),
('2026-01-05', 8500000, 'Listrik & Air Pabrik - Januari', 2),
('2026-01-08', 15000000, 'Pembelian Mesin Pengering Baru', 2),
('2026-01-10', 5000000, 'Iklan & Marketing - Koran Lokal', 2),
('2026-01-12', 3500000, 'Bensin Operasional & Distribusi', 2),
('2026-01-15', 45000000, 'Pembelian Gabah dari Petani', 2),
('2026-01-18', 2500000, 'ATK & Perlengkapan Kantor', 2),
('2026-01-20', 3500000, 'Perbaikan Mesin Giling Padi', 2),
('2026-01-22', 1500000, 'Makan & Transport Karyawan', 2),
('2026-01-25', 1200000, 'Internet & Telepon', 2),
('2026-01-28', 8500000, 'Beli Karung Beras 50kg', 2),
('2026-01-30', 2500000, 'Perawatan Gudang Penyimpanan', 2),
('2026-01-31', 10000000, 'Cicilan Pinjaman Bank BRI', 2),
('2026-01-25', 4500000, 'Sewa Truk Distribusi', 2),
('2026-01-30', 1800000, 'Biaya Admin & Bank', 2);


-- ============================================
-- SUMMARY
-- ============================================

SELECT '=== DATA BERHASIL DI-RESET DAN DIBUAT ===' AS info;

SELECT
    'Neraca Saldo' AS tabel,
    COUNT(*) AS total_data
FROM neraca_saldo
UNION ALL
SELECT
    'Laba Rugi',
    COUNT(*)
FROM laba_rugi
UNION ALL
SELECT
    'Arus Kas',
    COUNT(*)
FROM arus_kas
UNION ALL
SELECT
    'Karyawan',
    COUNT(*)
FROM karyawan
UNION ALL
SELECT
    'Pemasukan',
    COUNT(*)
FROM pemasukan
UNION ALL
SELECT
    'Pengeluaran',
    COUNT(*)
FROM pengeluaran;

SELECT '=== TOTAL: 84 DATA DUMMY DIBUAT ===' AS info;

COMMIT;
