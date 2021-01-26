<?php

require_once 'utilities/bootstrap.php';
if ($_SESSION['email'] ? true : false) {
    header('Location: index.php');
}
$template['title'] = 'Registration';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
    'js/sha512.js',
    'js/registration.js',
];
$template['content'] = 'templates/registration.php';
require_once 'templates/base.php';
