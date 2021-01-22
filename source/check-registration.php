<?php

require_once 'utilities/database.php';
$database = new Database();
$database->sec_session_start();

//User already registred redirect to index
if($database->get_user_from_email($_POST["email"]) != NULL){
    $database->register_user_session($database->get_user_from_email($_POST["email"]));
    header("location: index.php");
}

//User not registred will be inserted to DB
if($_POST["companyName"]){
    echo "<br> company registration <br>";
    $results = $database->register_seller(intval($_POST["cap"]), $_POST["address"], $_POST["city"],$_POST["companyAddress"],$_POST["companyName"], $_POST["email"], $_POST["name"], $_POST["surname"], $_POST["password"], $_POST["phone"], $_POST["province"]);
}else{
    echo "<br> user registration <br>";
    $results = $database->register_user(intval($_POST["cap"]), $_POST["address"], $_POST["city"], $_POST["email"], NULL, $_POST["name"], $_POST["surname"], $_POST["password"], $_POST["phone"], $_POST["province"]);
    }

if($results == 1){
 echo "tutto ok";
 $database->register_user_session($database->get_user_from_email($_POST["email"]));
}else{
    echo "Utente già presente!";
}
