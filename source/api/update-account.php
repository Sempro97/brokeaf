<?php

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

if($user["password"] !== "")
{
    //Hash password
}

//////////////
// Database //
//////////////

if($userType === "UserWeb"){
    $result = $database->register_user($user);
}else{
    $result = $database->register_seller($user);
}

if (false === $result) {
    exit_json('failed to modify account.');
}
exit_json(true);
