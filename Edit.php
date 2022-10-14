<?php
include("config/db.php");
$token=$_POST["token"];
$username=$_POST["username"];
$email=$_POST["email"];
$newtoken=md5($username);
if($token != $newtoken){
  ob_start();
  header("location: index.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="theme-color" content="dodgerblue"/>
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <style>
    *{
      margin: 0px;
      padding: 0px;
      outline: none;
      text-decoration: none;
      font-family: Arial;
    }
    body{
      background: #eee;
    }
    header{
      box-shadow: 0 0 40px rgba(0,0,0,0.10);
      width: 91.6%;
      color: dodgerblue;
      padding: 16px;
      background: white;
    }
    
    h1{
      text-shadow: 1px 2px  gray;
    }


    h2{
      font-size: 19px;
      margin-top:80px;
      color: black;
      padding: 10px;
    }
    input{
      margin: 6px;
      border:1px solid dodgerblue ;
      border-radius: 7px;
      background: white;
      padding: 14px 30px;
    }
    input:hover{
      transition: 0.3s;
      background: #eee;
    }
        .post{
      position:relative;
      border-radius: 8px;
      text-align: center;
      padding: 5px;
      margin: 20px auto;
      width: 95%;
      overflow: hidden;
      height:500px;
      background: white;
    }
    .post::after{
      content: "";
      position:absolute;
      background: dodgerblue;
      width: 80px;
      height: 80px;
      left: 0px;
      border-radius: 0px 80px 0px 0px;
      bottom: 0px;
    }
    .post::before{
      content: "";
      position:absolute;
      background: dodgerblue;
      width: 80px;
      height: 80px;
      right: 0px;
      border-radius: 0px 0px 0px 80px;
      top: 0px;
    }
    .btn{
      font-size: 18px;
      background: dodgerblue;
      color: white;
      padding: 14px 90px;
    }
    .btn:hover{
      border-color:#183;
      background: #183;
    }
    .ab-user{
      padding: 30px;
    }
    
    
    @media screen and (min-width:890px){
      body{
        display: grid;
      }
      .post{
        transition: 0.2s all;
        width: 50%;
      margin: 130px auto;
      }
      h2{
        padding: 10px;
      }
      header{
        transition: 0.3s;
        width: 98%;
        background: orange;
        padding: 10px;
      }
      h1{
        color:white;
        
      }
    }
  </style>
  <title>Edit user</title>
</head>
<body>

<?php


function data($data){
    /*Check Data */
    $data=stripslashes($data);
    $data=trim($data);
    $data=htmlspecialchars($data);
    return $data;
    
  }
  
  function  Sql_check($data){
    include("db.php");
    if($connection){
      $data=mysqli_real_escape_string($connection,$data);
    }
    return $data;
  }
  
?>
  <form action="#" name="form" class="post" method="post">
    <h2>
      Edit  A User
    </h2>
    <input type="hidden" name="id"  value="<?php echo($_POST['id']);?>">
    <label for="username">
      
    <input type="text" name="username" required autocomplete="no" placeholder="Username" value="<?php echo(data(Sql_check($_POST['username'])));?>">
      
    </label>
    <label for="email"><input type="email" name="email" placeholder="Email " required value="<?php echo(data(Sql_check($_POST["email"])));?>">
    
    </label>
    <label for="about">
      <input type="text" maxlength="280" placeholder="about User" class="ab-user" name="about" required value="<?php echo(data(Sql_check($_POST['about'])));?>">
    </label>
  
  <label for="submit">
    <input type="submit" name="btn" class="btn" value="Update">
    
  </label>
  <br>
  <br>
  <a href="/">
    Back To Home
  </a>
  </form>
  
  <?php
  
  
  function Update_user($id,$username,$email,$about,$img){
    include("db.php");
    $query="UPDATE  users SET username='$username',email='$email',text='$about',img='$img' WHERE id='$id' And admin=0";
    $con=mysqli_query($connection,$query);
    mysqli_close($connection);
    if($con){
      ob_start();
      
      header("location: index.php?status=Successfully");
    }
    
  }
  
  if(isset($_POST['btn'])){
    $id=data(Sql_check ($_POST['id']));
    $username=data(Sql_check($_POST['username']));
    $email=data(Sql_check($_POST['email']));
    $about=data(Sql_check($_POST['about']));
    $name=rand(1,45);
    $img=$name.'.jpeg';
    
    Update_user($id,$username,$email,$about,$img);
  }
  ?>
  
</body>
</html>