<?php

require_once 'utilities/database.php';
$database = new Database();
$database->sec_session_start();
$template['title'] = 'Index';
$template['content'] = 'templates/index.php';
$template['items'] = $database->get_random_items(5);
require_once 'templates/base.php';
//$template['content'] = 'templates/user-information.php';
//var_dump(intval($_POST["cap"]), $_POST["address"], $_POST["city"], $_POST["email"], 2, $_POST["name"], $_POST["surname"], $_POST["password"], $_POST["phone"], $_POST["province"]);
var_dump($_POST);
if($_POST[""] == "user"){
    $results = $database->register_user(intval($_POST["cap"]), $_POST["address"], $_POST["city"], $_POST["email"], NULL, $_POST["name"], $_POST["surname"], $_POST["password"], $_POST["phone"], $_POST["province"]);
}else{
    $results = $database->register_seller(intval($_POST["cap"]), $_POST["address"], $_POST["city"], $_POST["email"], NULL, $_POST["name"], $_POST["surname"], $_POST["password"], $_POST["phone"], $_POST["province"]);
}

if($results == 1){
 echo "tutto ok";
}else{
    echo "Utente già presente!";
}
register_user_session(get_user_from_email($_POST["email"]));
var_dump($results);
echo "<br>";
var_dump($_SESSION);
//require_once 'templates/base.php';
