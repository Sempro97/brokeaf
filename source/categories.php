<?php

require_once 'utilities/bootstrap.php';
$template['title'] = 'Categories';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$template['header'] = 'Categories';
$template['content'] = 'templates/categories.php';
$template['categories'] = $database->get_categories();
require_once 'templates/base.php';
