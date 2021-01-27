<?php
/* i.e. http://localhost:8080/product.php?id=4943693566 */
require_once 'utilities/bootstrap.php';
$product = $_GET["id"] ?? -1;
/* Get without serialCode */
if($product == -1){
    $template['title'] = 'Articolo not found!';
    $template['content'] = 'templates/error.php';
} else {
    /* Retrive Item */
    $template['item'] = $database->get_item($product);
    /* Check response DB */
    if($template['item'] != NULL){
        $image = $database->get_item_image($product); 
        $template['title'] = $template['item']['name'];
        $template['content'] = 'templates/product.php';
        var_dump($imag1e[0]);
    } else {
        $template['title'] = 'Articolo not found!';
        $template['content'] = 'templates/error.php'; 
        var_dump($template['item']);
    }
}
require_once 'templates/base.php';
