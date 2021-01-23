<?php
<<<<<<< HEAD
=======

const ITEM_COUNT = 5;
>>>>>>> master
require_once 'utilities/database.php';
$database = new Database();
$database->sec_session_start();
$template['title'] = 'Index';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$template['content'] = 'templates/index.php';
$search = $_GET['search'];
$template['search'] = $search;
$template['items'] = $search ? $database->get_items_by_name($search, ITEM_COUNT) : $database->get_random_items(ITEM_COUNT);
require_once 'templates/base.php';
var_dump($_SESSION);
