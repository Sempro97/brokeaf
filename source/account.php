<?php
require_once 'utilities/database.php';
$database = new Database();
$template['title'] = 'Account';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
    'js/account-form.js'
];
$template['user'] = $database->getFakeUserForTest()[0];
$template['content'] = 'templates/account.php';
require_once 'templates/base.php';
