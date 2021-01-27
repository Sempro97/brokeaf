<?php

// i.e. http://localhost:8080/product.php?id=4943693566
require_once 'utilities/bootstrap.php';
require_once 'utilities/user-only.php';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
    'js/product.js',
];
$product = $_GET['id'] ?? -1;
// Get without serialCode
if (-1 == $product) {
    $template['title'] = 'Articolo not found!';
    $template['content'] = 'templates/error.php';
} else {
    // Retrive Item
    $template['item'] = $database->get_item($product);
    // Check response DB
    if (null != $template['item']) {
        $image = $database->get_item_image($product);
        $template['title'] = $template['item']['name'];
        $template['content'] = 'templates/product.php';
    } else {
        $template['title'] = 'Articolo not found!';
        $template['content'] = 'templates/error.php';
    }
}
require_once 'templates/base.php';
