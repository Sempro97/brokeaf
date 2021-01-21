<?php

require_once 'utilities/database.php';
$database = new Database();
$database->sec_session_start();
$template['title'] = 'Articolo not found!';
$template['content'] = 'templates/product.php';
//Hardcoded
$template['item'] = $database->get_item(1952322448);
$template['imagePath'] = $database->get_img_item($template['item'][0]['serialCode'])[0]['path'];

require_once 'templates/base.php';
