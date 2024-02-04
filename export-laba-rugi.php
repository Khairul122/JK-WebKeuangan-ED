<?php
// Include the mpdf library
require_once 'vendor/vendor/autoload.php'; // Sesuaikan path sesuai struktur proyek Anda

// Create an instance of the mPDF class
$mpdf = new \Mpdf\Mpdf();

// Start buffering the output
ob_start();

// HTML content for the PDF
?>
<style>
    h1,
    h4 {
        text-align: center;
    }

    hr.custom-line {
        margin-top: 0px;
        margin-bottom: 20px;
        border: 0;
        border-top: 1px solid #000;
    }

    .right-info {
        float: right;
        text-align: right;
        padding-top: 100px;
    }

    /* Tambahkan gaya untuk tabel */
    table {
        border-collapse: collapse;
        width: 100%;
        margin: 20px 0;
    }

    table,
    th,
    td {
        border: 1px solid black;
    }

    th,
    td {
        padding: 8px;
        text-align: left;
    }
</style>

<h1>Alfara Motor</h1>
<h4>Jl. Sutan Syahrir No.215, Mata Air</h4>
<h4>Kec. Padang Selatan., Kota Padang, Sumatera Barat 25121</h4>
<hr class="custom-line">

<!-- Tabel data -->
<table>
    <thead>
        <tr>
            <th>No</th>
            <th>Deskripsi</th>
            <th>Jumlah</th>
        </tr>
    </thead>
    <tbody>
        <?php
        require 'koneksi.php';

        // Query untuk mengambil total pemasukan
        $query_total_pemasukan = "SELECT SUM(jumlah) AS total_pemasukan FROM pemasukan";
        $result_total_pemasukan = mysqli_query($koneksi, $query_total_pemasukan);
        $total_pemasukan = mysqli_fetch_assoc($result_total_pemasukan)['total_pemasukan'];

        // Query untuk mengambil total pengeluaran
        $query_total_pengeluaran = "SELECT SUM(jumlah) AS total_pengeluaran FROM pengeluaran";
        $result_total_pengeluaran = mysqli_query($koneksi, $query_total_pengeluaran);
        $total_pengeluaran = mysqli_fetch_assoc($result_total_pengeluaran)['total_pengeluaran'];

        // Hitung selisih (pemasukan dikurangkan pengeluaran)
        $selisih = $total_pemasukan - $total_pengeluaran;

        echo '<tr>';
        echo '<td>1</td>';
        echo '<td>Total Pemasukan</td>';
        echo '<td>' . $total_pemasukan . '</td>';
        echo '</tr>';
        echo '<tr>';
        echo '<td>2</td>';
        echo '<td>Total Pengeluaran</td>';
        echo '<td>' . $total_pengeluaran . '</td>';
        echo '</tr>';
        echo '<tr>';
        echo '<td colspan="2" style="text-align:center;">Selisih Laba Rugi</td>';
        echo '<td>' . $selisih . '</td>';
        echo '</tr>';
        ?>
    </tbody>
</table>

<div class="right-info">
    <p style="padding-right:55px;">Padang, <?php echo date('Y-m-d'); ?></p>
    <p>Pimpinan Toko Alfara Motor</p>
    <br>
    <p style="padding-right:125px;">Pimpinan</p>
</div>

<?php

// Get the buffered content
$html = ob_get_clean();

// Add the HTML content to the PDF
$mpdf->WriteHTML($html);

// Set PDF headers
$mpdf->Output('Laporan Laba Rugi.pdf', 'D'); // 'D' option will force a download

// Exit to prevent any additional output
exit;
?>
