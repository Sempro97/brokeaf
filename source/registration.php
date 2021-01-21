<?php

require_once 'utilities/database.php';
require_once 'utilities/functions.php';
$database = new Database();
$functions = new Functions();
$functions->secure_session_start();
$template['title'] = 'Registration';
$template['content'] = 'templates/registration.php';
$template['items'] = $database->get_random_items(5);
require_once 'templates/base.php';
