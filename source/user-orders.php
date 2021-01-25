<?php

require_once 'utilities/bootstrap.php';
require_once 'utilities/user-only.php';
$template['title'] = 'Orders';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$template['header'] = 'Orders';
$template['content'] = 'templates/user-orders.php';
$email = $_SESSION['email'];
$template['orders'] = $database->get_orders($email);
require_once 'templates/base.php';
