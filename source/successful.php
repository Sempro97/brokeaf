<?php

require_once 'utilities/bootstrap.php';
require_once 'utilities/user-only.php';
$template['title'] = 'Successful';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$template['header'] = 'Thank you for your order!';
$template['content'] = 'templates/successful.php';
require_once 'templates/base.php';
