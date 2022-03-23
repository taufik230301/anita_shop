<?php

include '../dbconnect.php';

// menangkap data id yang di kirim dari url
$idproduk = $_GET['idproduk'];

 
// menghapus data dari database
mysqli_query($conn,"delete from produk where idproduk='$idproduk'" );
 
// mengalihkan halaman kembali ke index.php
header("location:produk.php");
 
?>