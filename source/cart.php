<?php
  //il mio carrrello è ListItems e i suoi elementi che si riferiscono al carrello sono DetailsItems

  require 'utilities/database.php';
  $database = new Database();
  $cart = $database->get_cart('abernathy.helene@example.net');
  $template["cart"] = $cart;
  $template["title"] = "Cart";
  $template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
  $template["content"] = "templates/cart.php";
  require 'templates/base.php';
?>
