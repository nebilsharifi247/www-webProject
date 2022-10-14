<?php 
ob_start();
require_once("db.php");
if(!$_SESSION['username']){
  header("Location: /login/?Create=false");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="theme-color" content="dodgerblue"/>
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
  <title>New user</title>
</head>
<body>
  <?php
  $token=$_GET['token'];
if($token != md5("url")){
  header('location: index.php');
  
  
  }
?>
  <?php
  include("header.php");
  
  ?>
  
  
  <form action="#" name="form" class="post" method="post">
    <h2>
      Add New User
    </h2>
    <label for="username">
    <input type="text" name="username" required autocomplete="no" placeholder="Username">
      
    </label>
    <label for="email"><input type="email" name="email" placeholder="Email " required>
    
    </label>
    <label for="about">
      <input type="text" maxlength="280" placeholder="about User" class="ab-user" name="about" required>
    </label>
    
  <label for="submit">
    <input type="submit" name="btn" class="btn" value="Save">
  </label>
    
    
      <br>
  <br>
  <a href="/">
    Back To Home
  </a>
    
    
  </form>
<?php
  function data($data){
    /*Check Data */
    $data=stripslashes($data);
    $data=trim($data);
    $data=htmlspecialchars($data);
    return $data;
    
  }
  
  
  /*Save user in Database Function*/
  function Save_user ($username,$email,$about){
    require"db.php";
    /*include A Connection From Database*/
    
    
    $username=mysqli_escape_string($connection,$username);
    $email=mysqli_real_escape_string($connection,$email);
    /*Check Input From If have Sql İnjection The remove Char*/
    $about=mysqli_real_escape_string($connection,$about);
    if($connection){
      /*If have Up Connection Write A data to Database*/
      $name=rand(1,45);
      $img=$name.'.jpeg';
      $admin=0;
      $query="INSERT  INTO users (username,text,img,admin,user_token,email) VALUES ('$username','$about','$img','$admin',md5(id+admin),'$email')";
      $res=mysqli_query($connection,$query);
      mysqli_close($connection);
      if($res){
      /*If successfully Writed Redirect To index With js*/
      header('location: index.php');
        
      }
      else{
        echo"eerro";
      }
      }
    }
    
    
    
    /*Post Daat*/
  
  if(isset($_POST['btn'])){
    $username=data($_POST['username']);
    $email=data($_POST['email']);
     $about=data($_POST['about']);
     Save_user($username,$email,$about);
  }
  ?>
</body>
</html>