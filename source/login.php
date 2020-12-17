<?php
  include 'config.php'; 
  // require_once('config.php');
  // session_start(); 
  
  if(isset($_POST['but_submit'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];
    if(login($email, $password, $mysqli) == true) {
      // Login eseguito
      header("Location: index.php");
    }
  }
  
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Login</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="font-awesome/css/all.min.css" />
  </head>
  <body>
    <div class="header"></div>

    <div class="container">
      <div class="h1">
        <p class="text-center">Log In</p>
      </div>

    <form method="post" action="login.php" name="signin-form">
      <div class="form-group">
        <label>Email</label>
        <input type="text" name="email" class="form-control" required="required" />
      </div>

      <div class="form-group">
        <label>Password</label>
        <input type="password" name="password" class="form-control" required="required" />
      </div>

      <div class="form-group">
        <input type="submit" class="btn btn-primary btn-block" value="Log In" name="but_submit" id="but_submit" />
      </div>
    </form>
      <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block">Create account</button>
      </div>
    </div>
  </body>
</html>