<?php

require_once '../utilities/bootstrap.php';
require_once '../utilities/exit-json.php';
$email = $_POST['email'];
$password = $_POST['password'];
$result = $database->login($email, $password);
if ($result) {
    // Login eseguito.
    exit_json('logged');
} else {
    // Login fallito.
    exit_json('not logged');
}
