<?php
//Post data need parse
require_once '../utilities/bootstrap.php';
require_once '../utilities/exit-json.php';
require_once '../utilities/parse.php';

//User already registred check
if ($database->get_user_from_email($_POST["email"]) != NULL || $database->get_seller_from_email($_POST["email"]) != NULL)
{
    //Save the try on db to avoid brute force
    error_log('User already exist');
    exit_json('User already exist');
} else {

    //Registration
    if ($_POST["companyName"] !== NULL){
        $results = $database->register_seller(parse_seller($_POST));
    } else {
        $results = $database->register_user(parse_user($_POST));
    }
    if ($results === 1) {
        exit_json(true);
    } else {
        exit_json('User not created');
    }

}
