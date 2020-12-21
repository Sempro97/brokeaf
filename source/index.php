<?php
session_start();
require_once("utilities/database.php");
$db = new Database();

// Check connection
$items = $db->get_random_items(5);
$insert_items = array();
foreach($items as $item){
  echo "<h2>" . $item["name"] . "</h2>";
  array_push($insert_items, $item["name"]);
  echo "<p> Insert " . $item["name"] . " in array of inserted </p>";
  }
?>

<html>
<body>
</body>
</html>
