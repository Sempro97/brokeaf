<?php
  require_once 'utilities/database.php';
  require_once 'utilities/functions.php';
  $database = new Database();
  secure_session_start();

  $email = $_POST['email'];
  $password = $_POST['password'];

  if ($database->login($email, $password)) {
    //Login eseguito
        
    $user = $database->get_user_from_email($email);
    set_user_session($user);
    echo "false";
  }
  else {
    //Login fallito
    echo "true";
  }
?>
