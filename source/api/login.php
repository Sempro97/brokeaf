<?php
  require_once '../utilities/database.php';
  $database = new Database();
  $database->sec_session_start();

  $email = $_POST['email'];
  $password = $_POST['password'];

  if ($database->login($email, $password)) {
    //Login eseguito
    echo json_encode('logged');
  } else {
    //Login fallito
    echo json_encode('not logged');
   }
