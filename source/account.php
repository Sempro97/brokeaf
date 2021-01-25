<?php
require_once 'utilities/database.php';
$database = new Database();
$template['title'] = 'Account';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
    'js/account-form.js'
];
$email = "adriana90@example.net";
/* $email = $_SESSION['email']; */
if($email === NULL){
    header('Location: index.php');
} else {
    if (false === $database->is_seller($email)) {
        if (false === $database->is_user($email)) {
            header('Location: index.php');
        }
    }
}

$template['user'] = $database->getFakeSellerForTest()[0];
$template['content'] = 'templates/account.php';
require_once 'templates/base.php';
