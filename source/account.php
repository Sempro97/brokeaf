<?php

require_once 'utilities/bootstrap.php';
$template['title'] = 'Account';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
    'js/account-form.js',
    'js/sha512.js',
];
$email = $_SESSION['email'];
if ($email ? false : true) {
    header('Location: index.php');
}
$seller = $database->is_seller($email);
if ($seller) {
    $template['user'] = $database->get_seller_from_email($email);
} else {
    $template['user'] = $database->get_user_from_email($email);
}
$template['content'] = 'templates/account.php';
require_once 'templates/base.php';
