<?php

require_once 'utilities/bootstrap.php';
const ITEM_COUNT = 5;
$template['title'] = 'Index';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$search = $_GET['search'];
$template['search'] = $search;
$template['items'] = $search ? $database->get_items_by_name($search, ITEM_COUNT) : $database->get_random_items(ITEM_COUNT);
$template['content'] = 'templates/index.php';
require_once 'templates/base.php';
//var_dump($database->account_exists("mckenzie.christine@example.net"));
