<?php
require_once '../utilities/bootstrap.php';
require_once '../utilities/exit-json.php';
error_log(print_r($_POST["quantity"],true) );
error_log(print_r($_POST,true) );
error_log($_POST);

/* Controllare: 
    Id list user e verificare che il prodotto non si inserito - > allora insert,
    altrimenti eseguire un update
    
     insert_cart_item($quantity,$serialCode, $idList, $price , $positionIndex )
     get_num_element_cart($idList)
     is_in_cart_user($serialCode)
    */


//aggiungere funzione per rimuovere dal carrello
