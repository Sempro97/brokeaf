<?php

$serverName = "mysql";
$username = "root";
$password = "root";
$dbname = "brokeaf";

$connection = new mysqli($serverName, $username, $password, $dbname);

// Check connection
if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}
echo "Connected successfully";
