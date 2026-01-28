<?php
include('koneksi.php');

$tgl_pemasukan = $_GET['tgl_pemasukan'];
$jumlah = $_GET['jumlah'];
$sumber = $_GET['sumber'];

// Validasi data kosong
if (empty($tgl_pemasukan) || empty($jumlah) || empty($sumber)) {
    echo "<script>alert('Semua field harus diisi!'); window.history.back();</script>";
    exit;
}

// Validasi jumlah harus angka dan lebih dari 0
if (!is_numeric($jumlah) || $jumlah <= 0) {
    echo "<script>alert('Jumlah harus berupa angka dan lebih dari 0!'); window.history.back();</script>";
    exit;
}

//query insert
$query = mysqli_query($koneksi,"INSERT INTO `pemasukan` (`tgl_pemasukan`, `jumlah`, `sumber`) VALUES ('$tgl_pemasukan', '$jumlah', '$sumber')");

if ($query) {
 # credirect ke page index
 header("location:pendapatan.php");
}
else{
 echo "ERROR, data gagal diupdate". mysqli_error($koneksi);
}

//mysql_close($host);
?>
