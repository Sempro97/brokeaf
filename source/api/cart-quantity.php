<?php
require_once '../utilities/bootstrap.php';
require_once '../utilities/exit-json.php';
error_log(print_r($_POST["quantity"],true) );
error_log(print_r($_POST,true) );
error_log($_POST);

//Controllare: 
//Id list user e verificare che il prodotto non si inserito - > allora insert, altrimenti eseguire un update


//aggiungere funzione per rimuovere dal carrello
