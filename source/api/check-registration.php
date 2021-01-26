<?php

// Post data need parsed.
require_once '../utilities/bootstrap.php';
require_once '../utilities/exit-json.php';
require_once '../utilities/parse.php';

// User already registered check.
if (null != $database->get_user_from_email($_POST['email']) || null != $database->get_seller_from_email($_POST['email'])) {
    //Save the try on db to avoid brute force
    error_log('User already exist');
    exit_json('User already exist');
} else {
    // Registration.
    if (null !== $_POST['companyName']) {
        $results = $database->register_seller(parse_seller($_POST));
    } else {
        $results = $database->register_user(parse_user($_POST));
    }
    if (1 === $results) {
        exit_json(true);
    } else {
        exit_json('User not created');
    }
}
