
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta name="theme-color" content="#236">
  <title>Error</title>
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
    .home{
      padding:10px;
      margin: 30px auto;
      text-align: center;
    }
    a{
      color: white;
      background: red;
      padding: 13px 18px;
    }
    
    p{
      font-size:20px;
      color: red;
      margin-top:30px;
      animation: er 0.4s linear;
    }
    @keyframes er{
      10%{
        font-size: 23px;
        
      }
      100%{
        font-size: 25px;
      }
    }
  </style>
</head>
<body>
  
  <div class="home">
    <h2>
      I facebook System
    </h2>
    <br>
    <br>
  <a href="?Logout=true">Logout</a>
  <?php
  
  
function  Error_message($parameter,$msg){
  if(isset($_REQUEST[$parameter])){
    return "<br><p>$msg</p>";
    
  }
  
}

  echo(Error_message("Logout","You successfully Logout"));
  ?>
  </div>
</body>
</html>

<?php 
session_start();
include('includes/config.php');
error_reporting(0);
if(isset($_POST['signup']))
{
 
//Code for student ID
$count_my_page = ("studentid.txt");
$hits = file($count_my_page);
$hits[0] ++;
$fp = fopen($count_my_page , "w");
fputs($fp , "$hits[0]);
fclose($fp); 
$StudentId= $hits[0];   
$fname=$_POST['fullanme'];
$mobileno=$_POST['mobileno'];
$email=$_POST['email']; 
$password=md5($_POST['password']); 
$status=1;
$sql="INSERT INTO  tblstudents(StudentId,FullName,MobileNumber,EmailId,Password,Status) VALUES(:StudentId,:fname,:mobileno,:email,:password,:status)";
$query = $dbh->prepare($sql);
$query->bindParam(':StudentId',$StudentId,PDO::PARAM_STR);
$query->bindParam(':fname',$fname,PDO::PARAM_STR);
$query->bindParam(':mobileno',$mobileno,PDO::PARAM_STR);
$query->bindParam(':email',$email,PDO::PARAM_STR);
$query->bindParam(':password',$password,PDO::PARAM_STR);
$query->bindParam(':status',$status,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
echo '<script>alert("Your Registration successfull and your student id is  "+"'.$StudentId.'")</script>';
}
else 
{
echo "<script>alert('Something went wrong. Please try again');</script>";
}
}

?>