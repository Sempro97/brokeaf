<?php

require_once '../utilities/bootstrap.php';
require_once '../utilities/exit-json.php';

//////////
// User //
//////////

$user = $_POST;
$userType = "UserWeb";

if($_SESSION['email'] != $user["email"]){
    exit_json('You can\'t modify the email!');
} 

//Check type of user
if($user["companyName"] !== NULL){
    $userType = "Seller";
}

//////////////
// Database //
//////////////

//The passworld must be resaled
if($userType === "UserWeb"){
    if($user["password"] != $database->get_user_from_email($_SESSION['email'])["password"])
    {
        $random_salt = hash('sha512', uniqid(mt_rand(1, mt_getrandmax()), true));
        $password = $user["password"];
        //Hash password
        $user["password"] = hash('sha512',$password.$random_salt);
        $user["salt"] = $random_salt;
    }
    error_log("entra");
    $result = $database->update_user($user);
}else{
    if($user["password"] != $database->get_seller_from_email($_SESSION['email'])["password"])
    {
        $random_salt = hash('sha512', uniqid(mt_rand(1, mt_getrandmax()), true));
        $password = $user["password"];
        //Hash password
        $user["password"] = hash('sha512',$password.$random_salt);
        $user["salt"] = $random_salt;
    }
    $result = $database->update_seller($user);
}

if (0 === $result) {
    exit_json('Account was not modified.');
}
exit_json(true);
