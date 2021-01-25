<?php
  require 'utilities/database.php';
  session_start();
  $database = new Database();

  require 'utilities/bootstrap.php';
  $cart = $database->get_cart($_SESSION['email']);
  $template["cart"] = $cart;
  $template["title"] = "Cart";
  $template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
  $template["content"] = "templates/cart.php";
  require 'templates/base.php';
?>
