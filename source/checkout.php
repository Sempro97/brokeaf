<?php
require_once 'utilities/bootstrap.php';
$template['title'] = 'Index';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$email = "adrain.johnson@example.com";
$template['content'] = 'templates/checkout.php';
$cart = $database->get_cart($email);
$user = $database->get_user_from_email($email);
$template['items'] = $cart;
$template['user'] = $user;
require_once 'templates/base.php';
