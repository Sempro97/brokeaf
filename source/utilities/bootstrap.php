<?php

// Report all errors except E_NOTICE
error_reporting(E_ALL & ~E_NOTICE);
require_once 'secure-session-start.php';
secure_session_start();
require_once 'database.php';
$database = new Database();
//$database->login('adrain.johnson@example.com', 89); // User.
//$database->login('pollich.bianka@example.com', 37); // Seller.
