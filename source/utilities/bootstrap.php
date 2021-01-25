<?php

require_once '/var/www/html/utilities/secure-session-start.php';
secure_session_start();
require_once '/var/www/html/utilities/database.php';
$database = new Database();
// $database->login('adrain.johnson@example.com', 89); // User.
// $database->login('pollich.bianka@example.com', 37); // Seller.
