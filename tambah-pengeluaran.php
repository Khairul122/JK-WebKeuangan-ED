<?php
//include('dbconnected.php');
include('koneksi.php');

$tgl_pengeluaran = $_GET['tgl_pengeluaran'];
$jumlah = $_GET['jumlah'];
$sumber = $_GET['sumber'];

// Validasi data kosong
if (empty($tgl_pengeluaran) || empty($jumlah) || empty($sumber)) {
    echo "<script>alert('Semua field harus diisi!'); window.history.back();</script>";
    exit;
}

// Validasi jumlah harus angka dan lebih dari 0
if (!is_numeric($jumlah) || $jumlah <= 0) {
    echo "<script>alert('Jumlah harus berupa angka dan lebih dari 0!'); window.history.back();</script>";
    exit;
}

//query update
$query = mysqli_query($koneksi,"INSERT INTO `pengeluaran` (`tgl_pengeluaran`, `jumlah`, `sumber`) VALUES ('$tgl_pengeluaran', '$jumlah', '$sumber')");

if ($query) {
 # credirect ke page index
 header("location:pengeluaran.php");
}
else{
 echo "ERROR, data gagal diupdate". mysqli_error($koneksi);
}

//mysql_close($host);
?>