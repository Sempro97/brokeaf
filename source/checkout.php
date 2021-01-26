<?php
require_once 'utilities/bootstrap.php';
require_once 'utilities/database.php';
$database = new Database();
session_start();

$cart = $database->get_cart($_SESSION['email']);
$template['title'] = 'Index';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$template['content'] = 'templates/checkout.php';
$template['items'] = $cart;
require_once 'templates/base.php';
