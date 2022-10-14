<?php
/*/header("Location:index.php");

require_once('db.php');
if(!isset($_SESSION['username'])){
  ob_start();
        header('Location: /login?notlogin=true');
}
*/
$host="127.0.0.1";
$user="root";
$password="root";
$database="post";
$connection=mysqli_connect($host,$user,$password,$database);
  $path="./imgs/";
      
$status_login=false;
session_start();
  

?>