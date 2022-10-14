<?php
/*DELETE A user File*/
require_once('db.php');
if(!isset($_SESSION['username'])){
  ob_start();
        header('Location: /login?notlogin=true');
}

if(!$_POST['id'] && !$_POST["admin"] && !$_POST['user_token']){
  /*checking if the url method Get have ID Parameter The not Redirecting to index */
  header('Location: index.php');

}
else{
  /*Inputing id */
  include_once('config/db.php');
  $id=mysqli_real_escape_string($connection,$_POST['id']);
  $admin=mysqli_real_escape_string($connection,$_POST['admin']);
  $token=$_POST['user_token'];
  $genrate_token=base64_encode(md5($_POST['id']));
  if($connection && $admin==0  && $token ==$genrate_token){
    $query=htmlspecialchars("DELETE FROM users WHERE id=$id AND admin=$admin");
    $query=mysqli_real_escape_string($connection,$query);
    mysqli_query($connection,$query);
    
    mysqli_close($connection);
  
    header('Location: index.php');
    
  }
  else{
  
header("Location: index.php?token_user=error");
}}
?>