<?php

require_once 'utilities/database.php';
$database = new Database();
$database->sec_session_start();
$template['title'] = 'Articolo not found!';
$template['content'] = 'templates/product.php';

$product = -1;
if(isset($_GET["id"])){
    $product = $_GET["id"];
}

$template['item'] = $database->get_item($product);
$template['imagePath'] = $database->get_img_item($template['item'][0]['serialCode'])[0]['path'];

require_once 'templates/base.php';
