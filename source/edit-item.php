<?php

require_once 'utilities/bootstrap.php';
require_once 'utilities/seller-only.php';
$template['title'] = 'Edit item';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
    'js/edit-item.js',
];
$template['header'] = 'Edit item';
$template['content'] = 'templates/edit-item.php';
$serial_code = $_GET['serial_code'];
$item = $database->get_item($serial_code);
if (false === $item) {
    header('Location: index.php');
}
$email = $_SESSION['email'];
$is_owner = $database->is_owner($email, $item);
if (false === $is_owner) {
    header('Location: index.php');
}
$template['item'] = $item;
$template['categories'] = $database->get_categories();
require_once 'templates/base.php';
