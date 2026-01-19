-- ============================================
-- UPDATE DATABASE SISTEM AKUNTANSI
-- Tanggal: 19 Januari 2026
-- Deskripsi: Menambahkan fitur untuk meningkatkan kesesuaian dengan standar akuntansi
-- ============================================

USE `keuangan2`;

-- ============================================
-- 1. NERACA SALDO - Tambah Chart of Accounts
-- ============================================

-- Tambah kolom nomor_akun untuk Chart of Accounts (COA)
ALTER TABLE `neraca_saldo`
ADD COLUMN `nomor_akun` VARCHAR(20) NULL AFTER `nama_akun`;

-- Update contoh data dengan nomor akun yang sesuai
UPDATE `neraca_saldo` SET `nomor_akun` = '1-1001' WHERE `id_neraca_saldo` = 1 AND `status` = '1'; -- Asset
UPDATE `neraca_saldo` SET `nomor_akun` = '2-1001' WHERE `id_neraca_saldo` = 2 AND `status` = '2'; -- Kewajiban
UPDATE `neraca_saldo` SET `nomor_akun` = '3-1001' WHERE `id_neraca_saldo` = 3 AND `status` = '3'; -- Ekuitas
UPDATE `neraca_saldo` SET `nomor_akun` = '4-1001' WHERE `id_neraca_saldo` = 4 AND `status` = '4'; -- Pendapatan
UPDATE `neraca_saldo` SET `nomor_akun` = '5-1001' WHERE `id_neraca_saldo` = 5 AND `status` = '5'; -- Beban

-- Ubah tipe data status dari VARCHAR ke INT agar konsisten
ALTER TABLE `neraca_saldo`
MODIFY COLUMN `status` INT(11) DEFAULT NULL;


-- ============================================
-- 2. ARUS KAS - Tambah kategori Investasi & Saldo Awal
-- ============================================

-- Tambah kolom untuk menyimpan saldo kas awal per transaksi
-- Catatan: Nilai kas_awal akan diinput bersamaan dengan transaksi pertama setiap periode
ALTER TABLE `arus_kas`
ADD COLUMN `kas_awal` BIGINT(20) DEFAULT 0 AFTER `jumlah`;


-- ============================================
-- 3. LABA RUGI
-- ============================================

-- Tidak perlu mengubah database untuk Laba Rugi
-- Pajak penghasilan akan dihitung otomatis di level aplikasi (PHP)
-- Tarif pajak: 25% untuk PT di Indonesia (sesuai UU PPh)


-- ============================================
-- 4. INDEKS untuk optimasi query
-- ============================================

-- Tambah indeks untuk query filter tanggal dan user
ALTER TABLE `neraca_saldo`
ADD INDEX `idx_tanggal_user` (`tanggal`, `id_user`);

ALTER TABLE `laba_rugi`
ADD INDEX `idx_tanggal_user` (`tanggal`, `id_user`);

ALTER TABLE `arus_kas`
ADD INDEX `idx_tanggal_user` (`tanggal`, `id_user`);


-- ============================================
-- SUMMARY OF CHANGES
-- ============================================
-- 1. Tabel neraca_saldo:
--    - Added: nomor_akun (VARCHAR 20)
--    - Modified: status (VARCHAR -> INT)
--
-- 2. Tabel arus_kas:
--    - Added: kas_awal (BIGINT 20)
--    - Status values: 1=Operasional, 2=Pendanaan, 3=Investasi (baru)
--
-- 3. Tabel laba_rugi:
--    - No changes needed
--    - Tax calculation will be done in PHP code
--
-- 4. Performance:
--    - Added composite indexes on (tanggal, id_user) for all tables
-- ============================================

COMMIT;
