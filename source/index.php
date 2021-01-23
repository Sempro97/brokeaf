<?php

const ITEM_COUNT = 5;
require_once 'utilities/database.php';
require_once 'utilities/cookies.php';
$database = new Database();
$template['title'] = 'Index';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$template['content'] = 'templates/index.php';
$search = $_GET['search'];
$template['search'] = $search;
$template['items'] = $search ? $database->get_items_by_name($search, ITEM_COUNT) : $database->get_random_items(ITEM_COUNT);
/* sec_session_start();
if(login("zstiedemann@example.com", 1)){
    echo "Login eseguito!";
} else {
    echo "login errore!";
} */

require_once 'templates/base.php';
