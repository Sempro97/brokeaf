<?php
  require_once 'utilities/database.php';
  $database = new Database();
  $database->sec_session_start();

  $template['title'] = 'Login';
  $template['content'] = 'templates/login.php';

  if ($database->already_logged()) {
    header("Location: index.php");
  }

  require_once 'templates/base.php';
?>
