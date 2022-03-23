<?php
// include('../dbconnected.php');
// session_start();
include '../dbconnect.php';

$idproduk = $_GET['idproduk'];
$namaproduk = $_GET['namaproduk'];
$idkategori = $_GET['idkategori'];

$deskripsi = $_GET['deskripsi'];
$rate = $_GET['rate'];
$hargabefore = $_GET['hargabefore'];
$hargaafter = $_GET['hargaafter'];


//query update
$query = "UPDATE produk SET namaproduk='$namaproduk' , idkategori='$idkategori' ,deskripsi='$deskripsi' , rate='$rate' , hargabefore='$hargabefore' , hargaafter='$hargaafter' WHERE idproduk='$idproduk' ";

if (mysqli_query($conn, $query)) {
 # credirect ke page index
 header("location:produk.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysql_error();
}

mysqli_close($conn);
?>