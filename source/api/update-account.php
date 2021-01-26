<?php

//IMPORTANT!!!!!!!!!!
//CHECK EMAIL DONT CHANGE , IT IS IDENTIFICATION KEY!!!

require_once '../utilities/bootstrap.php';
require_once '../utilities/exit-json.php';

//////////
// User //
//////////

$user = $_POST;
$userType = "UserWeb";

//Check type of user
if($user["companyName"] !== NULL){
    $userType = "Seller";
}

if($user["password"] != "")
{
    $random_salt = hash('sha512', uniqid(mt_rand(1, mt_getrandmax()), true));
    $password = $user["password"];
    //Hash password
    $user["password"] = hash('sha512',$password.$random_salt);
    $user["salt"] = $random_salt;
}

//////////////
// Database //
//////////////

if($userType === "UserWeb"){
    $result = $database->update_user($user);
}else{
    $result = $database->update_seller($user);
}

if (0 === $result) {
    exit_json('failed to modify account.');
}
exit_json(true);
