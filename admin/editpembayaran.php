<?php
// include('../dbconnected.php');
// session_start();
include '../dbconnect.php';

$no = $_GET['no'];
$metode = $_GET['metode'];
$norek = $_GET['norek'];
$logo = $_GET['logo'];
$an = $_GET['an'];



//query update
$query = "UPDATE pembayaran SET metode='$metode' , norek='$norek'  , an='$an' ,logo='$logo' WHERE no  ='$no' ";

if (mysqli_query($conn, $query)) {
 # credirect ke page index
 header("location:pembayaran.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysql_error();
}

mysqli_close($conn);
?>