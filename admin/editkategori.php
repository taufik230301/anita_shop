<?php
// include('../dbconnected.php');
// session_start();
include '../dbconnect.php';

$idkategori = $_GET['idkategori'];
$namakategori = $_GET['namakategori'];



//query update
$query = "UPDATE kategori SET  idkategori='$idkategori', namakategori='$namakategori' WHERE idkategori  ='$idkategori'";

if (mysqli_query($conn, $query)) {
 # credirect ke page index
 header("location:kategori.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysql_error();
}

mysqli_close($conn);
?>