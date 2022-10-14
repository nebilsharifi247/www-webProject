<?php
/* Database connection included File*/
include("../db.php");

?>
<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="theme-color" content="dodgerblue"/>
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Login HomeBook</title>
  <style type="text/css">
    *{
      margin: 0px;
      padding: 0px;
      outline: none;
      text-decoration: none;
      font-family: Arial;
    }
    body{
      background: white;
    }
    .post{
      transition:0.2s;
      position:relative;
      border-radius: 8px;
      text-align: center;
      padding: 5px;
      margin: 150px auto;
      width: 95%;
      overflow: hidden;
      height:400px;
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
      bottom: -1px;
    }
    .post::before{
      content: "";
      position:absolute;
      background: dodgerblue;
      width: 80px;
      height: 80p;
      right: 0px;
      border-radius: 0px 0px 0px 80px;
      top: 0px;
    }
    
    .btn{
      font-size: 18px;
      background: dodgerblue;
      color: white;
      padding: 12px 90px;
    }
    .btn:hover{
      border-color:#183;
      background: #183;
    }
    h2{
      padding: 20px;
      color: black;
    }
    b{
      color: dodgerblue;
    }
    form{
      padding: 15px;
      margin-top:15px;
    }
    input{
      margin: 6px;
      border:1px solid dodgerblue ;
      border-radius: 7px;
      background: white;
      padding: 15px 30px;
    }
    input:hover{
      border:1px solid green;
      transition: 0.3s;
      background: #eee;
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
    span{
      font-size: 14px;
      animation: wr 0.5s linear;
    }
    .logout{
      padding: 10px;
      font-size: 16px;
      color: green;
      background: rgba(0,0,0,0.10);
      font-weight: bold;
    }
    h3{
      animation: wr 0.5s linear;
      font-size: 16px;
    }
    @keyframes wr{
      10%{
        margin-left:40px;
      }
      40%{
        margin-right: 40px;
      }
    }
    
  </style>
</head>
<body>
  
  <div class="post">
    <h2>
      Login <b>HomeBook</b>
      
    </h2>
    <?php
    /* Redirect From any page and error Message*/
    if(isset($_GET["edit"]) || isset($_GET["create"]) || isset($_GET["login"]) || isset($_GET["notlogin"])){
      echo"<h3 style='color:red'> please Login to system </h3>";
    }
/* Logout Message For userr*/
    if(isset($_GET["logout"])){
      $error="<p class='logout'>Successfully Logout</p>";
      echo($error);
    
    }
    
    
    
    ?>
    <form action="../index.php" method="POST">
      <label><input type="text" name="username" placeholder="username" required autocomplet='no'>
      </label>
      <label for="">
        <input type="password" name="password" placeholder="password" required autocomplete="no">
      </label>
    <?php
    

  if(isset($_GET["Invalid"])){
      echo"<br><span style='color:red'> Invalid username Or password </span>";
      $logfile=fopen('log.txt','a');
    
      fwrite($logfile,$_SERVER["REMOTE_ADDR"]."\n");
      
      fwrite($logfile,"\n______________\n");
      fwrite($logfile,$_SERVER["HTTP_USER_AGENT"]);
      
fwrite($logfile,"\n______________\n");
      fclose($logfile);
  }
    ?>
    <br>
      <label>
        <input type="submit" name="btn" class="btn" value="Login"> 
      </label>
      <br>
      <br>
      <a href="Resetpassword.php"> Forget password</a>
    </form>
  </div>
  <?php
  if(isset($_SESSION["username"])){
    ob_start();
    echo"<script>location.href='../';</script>";
  }
  ?>
</body>
</html>