<?php

require_once 'utilities/bootstrap.php';
require_once 'utilities/seller-only.php';
$template['title'] = 'Your items';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$template['header'] = 'Your items';
$template['content'] = 'templates/seller-items.php';
$email = $_SESSION['email'];
$template['items'] = $database->get_items_by_seller($email);
require_once 'templates/base.php';
