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
        $template['imagePath'] = $database->get_img_item($product)[0]['path'];
        $template['title'] = $template['item'][0]['name'];
        $template['content'] = 'templates/product.php';
    } else {
        $template['title'] = 'Articolo not found!';
        $template['content'] = 'templates/error.php'; 
        var_dump($template['item'][0]);
    }
}
require_once 'templates/base.php';
