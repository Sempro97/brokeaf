<?php

// Post data need parsed.
require_once '../utilities/bootstrap.php';
require_once '../utilities/exit-json.php';
require_once '../utilities/parse.php';

// User already registered check.
$email = $_POST['email'];
$user_exists = $database->get_user_from_email($email) ? true : false;
$seller_exists = $database->get_seller_from_email($email) ? true : false;
if ($user_exists || $seller_exists) {
    exit_json('User already exists.');
} else {
    // Registration.
    if (null !== $_POST['companyName']) {
        $seller = parse_seller($_POST);
        $results = $database->register_seller($seller);
    } else {
        $user = parse_user($_POST);
        $results = $database->register_user($user);
    }
    if ($results) {
        exit_json(true);
    } else {
        exit_json('User not created.');
    }
}
