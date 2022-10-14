<?php
include("../config/db.php");
  
  if(isset($_SESSION["username"])){
    ob_start();
    header("location: ../index.php");
  }

function user_check($username){
  global $connection;
  $username=mysqli_real_escape_string($connection,$username);
  $sql="SELECT * FROM admin WHERE BINARY username='$username' OR BINARY email='$username'";
  $con=mysqli_query($connection,$sql);
  if(mysqli_num_rows($con)>0){
    return true;
  }
  else{
    return false;
}}
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
      width:80px;
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
      height: 80px;
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
    a{
      color: gray;
    }
    a:hover{
      color: blue;
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
    .sucess{
      padding: 10px;
      font-size: 14px;
      color: green;
      background: rgba(0,0,0,0.10);
      font-weight: bold;
    }
    .warning{
            padding: 10px;
      font-size: 14px;
      color: red;
      background: rgba(0,0,0,0.1);
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
  
    
       Reset <b>Password</b>
      
    </h2>
<?php
  $username;
  if(isset($_POST["btn"])){
    $username=trim(htmlspecialchars($_POST["username"]));
    if(user_check($username) ==true){
      echo("<h3 class='sucess'>Dear $username link sent . Check your email</h3>");
    }
    else{
      echo("<h3 class='warning'>User not found with this name $username</h3>");
    }
  
  }
  ?>
    <form action="<?php htmlspecialchars($_SERVER["PHP_SELF"])?>" method="POST">
      <label><input type="text" name="username" placeholder="username Or email" required autocomplet='no'>
      </label>
     
    
    

  
  
    <br>
      <label>
        <input type="submit" name="btn" class="btn" value="Reset"> 
      </label>
      <br>
      <br>
      <a href="index.php?notlogin=true">Back Login Page</a>
      <br>
      <br>
      <a href="../?notlogin=treu">
        Back  Home 
      </a>
    </form>
  </div>

  
</body>
</html>