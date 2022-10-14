<?php
/*Database Config and connection File including */
require_once("db.php");
/*
If the user has been entered and the title is created with the name of the user, here's check if the user does not meet the user, we will log in to the login page to re-login
*/

if(!isset($_SESSION["username"])){
        header('Location: /login/?notlogin=true');
      } 
  /*
If the user has entered the login information and press the login button
  */
if(isset($_POST['btn'])){
  $username=trim(htmlspecialchars($_POST["username"]));
  $password=trim(htmlspecialchars ($_POST["password"]));
  /*Usually the passwords are in the hash database and haveh with the MD5 algorithm that you enter new user and check the hash in the database.*/
  $newpass=md5($password);
  
  
  /*
If communication with the database was checked and checks user information with information in database
  */
  
  if($connection){
    $sql="SELECT * FROM admin WHERE username='$username' AND password='$newpass'";
    $query=mysqli_query($connection,$sql);
    /*Database Check content and Query*/
    if(mysqli_num_rows($query)>0){
      $result=mysqli_fetch_assoc($query);
      var_dump($result);
      $uname=$result["username"];
      $pass=$result["password"];
      if($uname==$username && $pass==$newpass){
        $_SESSION["username"]=$username;
      }
      else{

header("location:/login?Invalid=true");
      }
    }
    /*end if*/
    else{
      /*
If your user information is wrong when logging in when you log in, then it is stored in the Invalid Credentials in the Invalid Credentials file and the second error message is displayed.
      */
header("location:/login?Invalid=true");}
      $file=fopen("Credential.txt","a");
fwrite($file,"\n".$_SERVER["REMOTE_ADDR"]."\n");
fclose($file);
    }
    
    /*end else*/
    
    
  }
  
      

  /*end if chechk from Database*/

/*end connection if*/
    
    
/*

If the caller presses the Log out  button from the system, and the meetings are lost and Clear All SESSIONS
*/
if(isset($_GET["logout"])){
  session_destroy();
  header("location: /login?logout=true");
  exit;
}

/*This function collector returns from the users in the database and exhibits it in number*/
function  total_user(){
  global $connection;
  $query="SELECT count(*) as count FROM users;";
  $get_row=mysqli_query($connection,$query);
    $result=mysqli_fetch_assoc($get_row);
  $count=$result["count"];
  return $count;
  
  
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Home Book</title>
  <style>
   html{
     scroll-snap-type:y mandatory;
   }
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
    .post{
      position:relative;
      border-radius: 8px;
      text-align: center;
      padding: 5px;
      margin: 20px auto;
      width: 90%;
      overflow: hidden;
      height: 400px;
      border-top:2px solid dodgerblue;

      background: white;
    }
    .post::after{
      content: "";
      position:absolute;
      background: dodgerblue;
      width: 100px;
      height: 100px;
      left: 0px;
      border-radius: 0px 80px 0px 0px;
      bottom: -1px;
    }
    .post::before{
      content: "";
      position:absolute;
      background: dodgerblue;
      width: 100px;
      height: 100px;
      right: 0px;
      border-radius: 0px 0px 0px 80px;
      top: 0px;
    }
    .post:hover{
      
      transition: 0.2s all;
      box-shadow: 0 0 60px white;
    }
    .text{
      padding: 60px;
      
    }
    .username{
      
      margin-top: 5px;
      color: black;
      margin-left: 27px;
      text-align: left;
    }
    img{
      padding: 3px;
object-fit: cover;
      border:3px solid #eee;
      animation: img 5s linear infinite;
      width: 100px;
  margin-top:30px;

  height: 100px;
      border-radius: 50%;
    }
    @keyframes img{
      10%{
        box-shadow: 0 0 20px #eee;
      }
      20%{
        box-shadow: 0 0 40px #eee;
      }
    }
    h2{
      border-bottom:2px solid gray;
      padding: 10px;}
      p{
        word-spacing: 2px;
        word-break: warp;
        background:#eee;
        color: gray;
        margin: 5px;
        padding: 10px;
      }
    input[type="submit"]{
      width: 90px;
      height: 40px;
      background: red;
      color: white;
      border:none;
      border-radius: 3px;
      font-size: 18px;
      margin: 5px;
      outline-color: none;
      position: relative;
    }
    input[type="submit"]::after{
      content:"";
      position: absolute;
      width: 0%;
    left:0px;
    top: 0px;
      height: 34.3px;
      background: rgba(0,0,0,0.20);
      transition:0.2s;
    }
    input[type="submit"]:hover{
      background: rgb(213,5,0);
      transition: 0.2s;
    }
    input[type="submit"]:hover::after{
      width: 100%;
      
    }
    .err{
      color:red;
      
    }
    .footer{
      background-size: 100%;
      margin: 30px auto;
      padding: 10px 0px;
      color: #197;
      text-align: center;
      width: 100%;
      height: 200px;
      background: white !important;
    }
    button{
        padding: 10px 14px;
        margin-left: 110px;
        border-radius :3px;
        font-size: 17px;
        color: white;
        border:none;
        background: red;
      }
    @media screen and (min-width:890px){
      body{
        display: grid;
      }
      .post{
        transition: 0.2s;
        width: 50%;
      
      }
      header{
        transition: 0.3s;
        width: 98%;
        background: orange;
      }
      h1{
        color:white;
        
      }
      button{
        margin-left: 74%;
      }
      .footer{
        width: 70%;
      }
      .information{
    
        width: 50%;
        margin:10px auto;
    }
       .information h2{
         color: red;
         background: none;
       }
    }
      a{
        border-radius: 8px;
        
        text-align: center;
        font-size: 16px;
        padding:10px;
         background: dodgerblue;
        color: white;
      }
      .header-btn{
        
        text-align: center;
        width: 100%;
        height: 30px;
        margin: 10px auto;
      }
      .newUser{
      display: none;
        position: absolute;
        text-align: center;
        color: green;
        width: 80%;
        background: #eee;
        margin-top: 110px;
        margin-left:30px;
        padding: 10px;
        animation: no 2s linear ;
      }
      
      
      
      #edit{
        background: dodgerblue;
      }
      
      .user{
        text-align: center;
        font-size: 25px;
      }
      
      .total{
      font-size: 30px;
      }
      .information{
        text-align: center;
        background: white;
        
        padding: 16px;
      }
      .information p{
        color: #197;
        font-size: 25px;
      }
  </style>
    <meta name="theme-color" content="dodgerblue"/>
</head>
<body>
  <div class="newUser" id="alert">
    <h3>
      New user added successfully
    </3>
  </div>
  <?php
  
  include_once('db.php');
  if($connection){
    
    
  
  ?>
<?php
include("headerhome.php");
?>

  <br>
      <?php echo"<p class='user'>Hi  <b>".$_SESSION["username"]." </b></p>";
      echo "<p style='text-align:center;'> Date ".date("y:m:d")."</p>";?>

      
  <div class="header-btn">

   <a href="Create.php?token=<?php echo(md5("url"));?>"> Add New User</a>
   </div>
  
    
  <?php

  

  
$query="SELECT DISTINCT * FROM users ORDER BY id DESC";
/* Selects all information from the database and, using the while loop, all of them create a div with a post class and display the text tag of each user.*/
  $result=mysqli_query($connection,$query);

  if($result){
    
  while($post=mysqli_fetch_assoc($result)){
    
  ?>
  <div class="post">

        <img src="<?php echo$path.htmlspecialchars($post['img']);?> "/>

    <h2>
      <?php
      echo(htmlspecialchars($post['username'] ));
      
      ?>
    </h2>
    <p>
      <?php
      echo(htmlspecialchars($post['text'])."<br>2022".htmlspecialchars($post['date_post']));
      
      ?>
    </p>
    
    <br>
    <h4 class="err">
      <?php
      /* Create Token*/
      $token=md5($post['username']);
    
      ?>
    </h4>
        <form action="Edit.php" method="POST" name="edit">
            <input type="hidden" name="token" value="<?php echo$token;?>">
             <input type="hidden" name="id" value="<?php echo(htmlspecialchars($post['id']));?>">
      <input type="hidden" name="username" value="<?php echo(htmlspecialchars($post['username'])) ;?>">
      <input type="hidden" name="email" value="<?php echo($post['email']);?>">
      <input type="hidden" name="about" value="<?php echo(htmlspecialchars($post["text"]))?>">
      
       <input type="submit" value="Edit" id="edit">
      </form>
    
  
    <form action="delete.php" method="POST">
      <input type="hidden" name="id" value="<?php echo(htmlspecialchars($post['id']));?>">
      <input type="hidden" name="admin" value="<?php echo(htmlspecialchars($post['admin'])) ;?>">
      <input type="hidden" name="user_token" value="<?php echo (base64_encode(md5($post['id'])));?>">
      <?php
    
      ?>
      <input type="submit" value="Delete">
    </form>

  </div>
  
  </div>
<?php

}}}
?>
<?php
if($_GET['add'] && $_GET['add']==1){
  
    echo("<script> document.getElementById('alert').style.display='block';</script>");
  
}


if(isset($_GET["status"])){
  ?>
  <script>
  setTimeout(()=>{
    alert("he");
  }),3000);
  </script>
  <?php
}
?>
<div class="information">
  <p>Total users</p>
  <h2 class="total">
    <?php
    
    echo(total_user());
    ?>
  </h2>
</div>
<div class="footer">
  <p>Copy Right All 2020 
  By Nebil Sharifi <br>
  Social Media Nebil Sharifi</p>
</div>
<script>

</script>
</body>
</html>