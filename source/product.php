<?php

require_once 'utilities/database.php';
$database = new Database();
$database->sec_session_start();
$template['title'] = 'Articolo not found!';
$template['content'] = 'templates/product.php';
$product = $_GET["id"] ?? -1;
$template['item'] = $database->get_item($product);
$template['imagePath'] = $database->get_img_item($template['item'][0]['serialCode'])[0]['path'];

require_once 'templates/base.php';
