<?php

include '../dbconnect.php';

// menangkap data id yang di kirim dari url
$idkategori = $_GET['idkategori'];

 
// menghapus data dari database
mysqli_query($conn,"delete from kategori where idkategori='$idkategori'" );
 
// mengalihkan halaman kembali ke index.php
header("location:kategori.php");
 
?>