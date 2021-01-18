<?php

require_once 'utilities/database.php';
$database = new Database();
$template["title"] = "Registration";
$template["content"] = "templates/registration.php";
$template["items"] = $database->get_random_items(5);
require_once 'templates/base.php';
