<?php
  //il mio carrrello è ListItems e i suoi elementi che si riferiscono al carrello sono DetailsItems

  require 'utilities/database.php';
  $database = new Database();
  $cart = $database->get_cart('aniya.stanton@example.com');

  $template["cart"] = $cart;
  $template["title"] = "Cart";
  $template["content"] = "templates/cart.php";
  require 'templates/base.php';
?>
