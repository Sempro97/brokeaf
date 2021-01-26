<?php

require_once 'utilities/bootstrap.php';
//TODO: check if login is already fired
$template['title'] = 'Registration';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
    'js/sha512.js',
    'js/registration.js',
];
$template['content'] = 'templates/registration.php';
require_once 'templates/base.php';
