<?php

require_once 'utilities/database.php';
$database = new Database();
$template['title'] = 'Index';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$template['content'] = 'templates/index.php';
$template['items'] = $database->get_random_items(5);
require_once 'templates/base.php';
