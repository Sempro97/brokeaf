<?php

const ITEM_COUNT = 5;
require_once 'utilities/bootstrap.php';
$template['title'] = 'Index';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$template['content'] = 'templates/index.php';
$search = $_GET['search'];
$category = $_GET['category'];
$template['search'] = $search;
if ($search) {
    $template['items'] = $database->get_items_by_name($search, ITEM_COUNT);
} elseif ($category) {
    $template['items'] = $database->get_items_by_category($category, ITEM_COUNT);
} else {
    $template['items'] = $database->get_random_items(ITEM_COUNT);
}
require_once 'templates/base.php';
