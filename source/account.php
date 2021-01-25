<?php
require_once 'utilities/database.php';
$database = new Database();
$template['title'] = 'Account';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
    'js/account-form.js'
];
/* Test Seller */
$email = "adriana90@example.net";
/* Test User */
/* $email = "adrain.johnson@example.com"; */

/* $email = $_SESSION['email']; */
require_once 'utilities/user-seller-only.php';


$template['content'] = 'templates/account.php';
require_once 'templates/base.php';
