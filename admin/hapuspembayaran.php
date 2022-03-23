<?php

include '../dbconnect.php';

// menangkap data id yang di kirim dari url
$no = $_GET['no'];

 
// menghapus data dari database
mysqli_query($conn,"delete from pembayaran where no='$no'" );
 
// mengalihkan halaman kembali ke index.php
header("location:pembayaran.php");
 
?>