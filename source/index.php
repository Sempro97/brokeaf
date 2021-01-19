<?php

require_once 'utilities/database.php';
$database = new Database();
$database->sec_session_start();
$template['title'] = 'Index';
$template['content'] = 'templates/index.php';
$template['items'] = $database->get_random_items(5);
require_once 'templates/base.php';
var_dump($_SESSION);
