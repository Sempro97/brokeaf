<?php

require_once 'utilities/bootstrap.php';
$template['title'] = 'Index';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$template['content'] = 'templates/checkout.php';
$cart = $database->get_cart($_SESSION['email']);

if (count($cart) == 0) {
    header('Location: index.php');
}

$user = $database->get_user_from_email($_SESSION['email']);
$template['cart'] = $cart;
$template['user'] = $user;
require_once 'templates/base.php';
