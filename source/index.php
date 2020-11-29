<?php

$serverName = "mysql";
$username = "root";
$password = "root";

$connection = new mysqli($serverName, $username, $password);

// Check connection
if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}

echo "Connected successfully";

?>
