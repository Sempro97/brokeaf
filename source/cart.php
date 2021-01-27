<?php

require_once 'utilities/bootstrap.php';
require_once 'utilities/user-only.php';
$email = $_SESSION['email'];
$cart = $database->get_cart($email);
$template['cart'] = $cart;
$template['title'] = 'Cart';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$template['content'] = 'templates/cart.php';
require_once 'templates/base.php';
