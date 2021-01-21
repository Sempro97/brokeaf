<?php

require_once 'utilities/database.php';
require_once 'utilities/functions.php';
$database = new Database();

secure_session_start();
$template['title'] = 'Index';
$template['content'] = 'templates/index.php';
$template['items'] = $database->get_random_items(5);
require_once 'templates/base.php';
