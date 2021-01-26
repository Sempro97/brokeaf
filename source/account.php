<?php
require_once 'utilities/bootstrap.php';
$template['title'] = 'Account';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
    'js/account-form.js',
    'js/sha512.js'
];
if ($_SESSION['email'] ? false : true) {
    header('Location: index.php');
} else {
    if ($database->is_seller($_SESSION['email'])) {
        $template['user'] = $database->get_seller_from_email($_SESSION['email']);
    } else {
        $template['user'] = $database->get_user_from_email($_SESSION['email']);
    }
}
$template['content'] = 'templates/account.php';
require_once 'templates/base.php';
