<?php

require_once 'utilities/bootstrap.php';

$template['title'] = $category;
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$category = $_GET['id'];
$search = $_GET['search'];
$template['search'] = $search;
$template['items'] = $search ? $database->get_items_by_name($search, ITEM_COUNT) : $database->get_items_by_category($category);

$template['content'] = 'templates/index.php';
require_once 'templates/base.php';
