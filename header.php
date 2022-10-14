<?php
require_once('db.php');
if(!isset($_SESSION['username'])){
  ob_start();
        header('Location: /login?login=false');
}
?>
  <header>
    <h1>
      Homebook
     </h1>
  </header>