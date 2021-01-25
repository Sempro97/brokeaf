<?php

require_once 'utilities/bootstrap.php';

$template['title'] = 'Registration';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
    'js/sha512.js',
    'js/utils.js',
];
$template['content'] = 'templates/registration.php';
require_once 'templates/base.php';
