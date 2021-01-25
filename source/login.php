<?php

require_once 'utilities/bootstrap.php';
$logged_in = $database->already_logged();
if ($logged_in) {
    header('Location: index.php');
}
$template['title'] = 'Login';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
    'js/login.js',
];
$template['header'] = 'Login';
$template['content'] = 'templates/login.php';
require_once 'templates/base.php';
