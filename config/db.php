<?php
/*/header("Location:index.php");
require_once('db.php');
if(!isset($_SESSION['username'])){
  ob_start();
        header('Location: /login?notlogin=true');
}
This test username and password  you can set username  password  for you mysql sever .
*/
$host="127.0.0.1";
$user="sample";
$password="sample";
$database="test_db";
$connection=mysqli_connect($host,$user,$password,$database);
  $path="./imgs/";
      
$status_login=false;
session_start();
  

?>
