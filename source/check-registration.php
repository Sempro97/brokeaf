<?php

require_once 'utilities/database.php';
$database = new Database();
$database->sec_session_start();
$template['title'] = 'Registration succesfuly!';
//$template['content'] = 'templates/user-information.php';
//var_dump(intval($_POST["cap"]), $_POST["address"], $_POST["city"], $_POST["email"], 2, $_POST["name"], $_POST["surname"], $_POST["password"], $_POST["phone"], $_POST["province"]);
$results= $database->register_user(intval($_POST["cap"]), $_POST["address"], $_POST["city"], $_POST["email"], NULL, $_POST["name"], $_POST["surname"], $_POST["password"], $_POST["phone"], $_POST["province"]);

//register_user_session(get_user_from_email($email));
var_dump($results);
//require_once 'templates/base.php';
