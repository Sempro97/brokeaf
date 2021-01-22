<?php
/* OTTIMIZZAZZIONE RICHESTA!!! Alla creazione di un utente salvare l'utente contestualmente, 
in modo da evitare le ricerche su entrambe le tabelle per registrare la nuova sessione utente */


require_once '../utilities/database.php';
$database = new Database();
$database->sec_session_start();
//User already registred redirect to index
if($database->get_user_from_email($_POST["email"]) != NULL || $database->get_seller_from_email($_POST["email"]) != NULL){
    error_log('User already exist');
    echo json_encode('User already exist');
} else {
error_log('User creation try');
//User not registred will be inserted to DB
if($_POST["companyName"]){
    $results = $database->register_seller(
         intval($_POST["cap"]),
         $_POST["address"],
         $_POST["city"],
         $_POST["companyAddress"],
         $_POST["companyName"],
         $_POST["email"],
         $_POST["name"],
         $_POST["surname"],
         $_POST["password"],
         $_POST["phone"],
         $_POST["province"]
    );
}else{
    $results = $database->register_user(
        intval($_POST["cap"]),
        $_POST["address"],
        $_POST["city"],
        $_POST["email"],
        NULL,
        $_POST["name"],
        $_POST["surname"],
        $_POST["password"],
        $_POST["phone"],
        $_POST["province"]
    );
}
$user = $database->get_user_from_email($_POST["email"]);

if($results == 1){
    //If user not UserWeb is Seller
    if($user == NULL){
        $user = $database->get_seller_from_email($_POST["email"]);
    }
    error_log('User created: ' . $user["email"]);
    $database->register_user_session($user);
    echo json_encode($user);
}else{
    echo json_encode('User not created, not present');
}
}
