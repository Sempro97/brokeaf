<?php

require_once '../utilities/bootstrap.php';
require_once '../utilities/exit-json.php';
error_log(print_r($_POST, true));
$email = $_SESSION['email'];
$idlistToCheck = $database->get_user_from_email($email)['IdList'];
$itemToAdd = $database->get_item($_POST['serialCode']);
error_log(print_r($idlistToCheck, true));
error_log(print_r($itemToAdd['serialCode'], true));
error_log('______________________');

/* Controllare:
    Id list user e verificare che il prodotto non si inserito - > allora insert,
    altrimenti eseguire un update

     insert_cart_item($quantity,$serialCode, $idList, $price , $positionIndex )
     get_num_element_cart($idList)
     is_in_cart_user($serialCode)
    */
if ($database->is_in_cart_user($itemToAdd['serialCode'])) {
    $database->set_cart_item_quantity($_POST['quantity'], $_POST['serialCode'], $idlistToCheck);
    exit_json('Cart updated.');
} else {
    error_log('insert cart');
    $result['total'] = $database->get_num_element_cart($idlistToCheck) + 1;
    $database->insert_cart_item($_POST['quantity'], $itemToAdd['serialCode'], $idlistToCheck, $itemToAdd['price'], $result['total']);
    exit_json('Item insert in cart.');
}

//aggiungere funzione per rimuovere dal carrello
