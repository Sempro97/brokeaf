<?php

require 'utilities/bootstrap.php';
require 'utilities/user-only.php';
$cart = $database->get_cart('adrain.johnson@example.com');
$template['cart'] = $cart;
$template['title'] = 'Cart';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$template['content'] = 'templates/cart.php';
require 'templates/base.php';
