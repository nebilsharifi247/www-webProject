<?php
header('Location: ../index.php?login');
include"header.php";
ob_start();
if(!$status_login){
  header("location: /login?login=false");
}

?>