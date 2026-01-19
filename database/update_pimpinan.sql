-- ================================================================
-- UPDATE DATABASE: TAMBAH KOLOM PIMPINAN
-- CV BINA PADI SABATANG
-- Tanggal: 19 Januari 2026
-- ================================================================
--
-- Deskripsi: Menambahkan kolom pimpinan ke tabel admin
-- untuk menyimpan nama pimpinan/direktur yang akan
-- ditampilkan di tanda tangan laporan PDF
--
-- ================================================================

-- Gunakan database keuangan2
USE keuangan2;

-- ================================================================
-- 1. TAMBAH KOLOM PIMPINAN KE TABEL ADMIN
-- ================================================================

-- Cek apakah kolom pimpinan sudah ada
-- Jika belum, tambahkan kolom baru
ALTER TABLE `admin`
ADD COLUMN IF NOT EXISTS `pimpinan` VARCHAR(100) NULL AFTER `password`;

-- ================================================================
-- 2. SET DEFAULT VALUE UNTUK ADMIN YANG SUDAH ADA
-- ================================================================

-- Update admin yang sudah ada dengan default value
UPDATE `admin`
SET `pimpinan` = 'Pimpinan'
WHERE `pimpinan` IS NULL OR `pimpinan` = '';

-- ================================================================
-- 3. VERIFIKASI
-- ================================================================

-- Tampilkan struktur tabel admin setelah update
DESCRIBE `admin`;

-- Tampilkan data admin untuk verifikasi
SELECT id_admin, username, pimpinan FROM `admin`;

-- ================================================================
-- SELESAI
-- ================================================================
