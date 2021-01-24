<?php

const ITEM_COUNT = 5;
require_once 'bootstrap.php';

$template['title'] = 'Index';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$search = $_GET['search'];
$template['search'] = $search;
$template['items'] = $search ? $db->get_items_by_name($search, ITEM_COUNT) : $db->get_random_items(ITEM_COUNT);
$template['content'] = 'templates/index.php';
require_once 'templates/base.php';
