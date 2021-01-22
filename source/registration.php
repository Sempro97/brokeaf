<?php

require_once 'utilities/database.php';
$database = new Database();
$database->sec_session_start();
$template['title'] = 'Registration';
$template['content'] = 'templates/registration.php';
$template['items'] = $database->get_random_items(5);
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
    'js/jquery.caret.js',
    'js/jquery.mobilePhoneNumber.js',
    'js/sha512.js',
    'js/utils.js',
];
require_once 'templates/base.php';
