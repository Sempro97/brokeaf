<?php
  require_once 'utilities/database.php';
  $database = new Database();
  $database->sec_session_start();

  $template['title'] = 'Login';
  $template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
  ];
  $template['content'] = 'templates/login.php';

  if ($database->already_logged()) {
     header("Location: index.php");
  }

  require_once 'templates/base.php';
?>
