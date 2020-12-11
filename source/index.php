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
$sql = "SELECT name,keywords FROM Categories";
$result = $connection->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "name: " . $row["name"]. " - keywords: " . $row["keywords"]. " " . $row["lastname"]. "<br>";
  }
} else {
  echo "0 results";
}
$connection->close();
echo "Connected successfully";

?>
