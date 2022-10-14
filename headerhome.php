<?php
require_once('db.php');
if(!isset($_SESSION['username'])){
  ob_start();
        header('Location: /login?login=false');
}
?>
  <header>
    <h1>
      Homebook<button type="submit" class="btn"> Logout</button>
     </h1>
  </header>
  <script>
    var btn=document.querySelector(".btn");
    btn.addEventListener("click",(data)=>{
      location.href="index.php?logout=true";
      
    });
  </script>