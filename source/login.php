<?php
  require_once 'utilities/database.php';
  require_once 'utilities/functions.php';
  $database = new Database();
  secure_session_start();

  $template['title'] = 'Login';
  $template['content'] = 'templates/login.php';

  if (already_logged()) {
    header("Location: index.php");
  }

  require_once 'templates/base.php';
?>
