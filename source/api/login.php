<?php
  require_once '../utilities/database.php';
  $database = new Database();
  $database->sec_session_start();
  
  $email = $_POST['email'];
  $password = $_POST['password'];

  if ($database->login($email, $password)) {
     //Login eseguito
     $user = $database->get_user_from_email($email);
     $database->register_user_session($user);
     echo json_encode(true);
   }
   else {
     //Login fallito
     echo json_encode(false);
  }
?>
