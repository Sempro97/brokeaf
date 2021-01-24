<?php

require_once '../utilities/database.php';
$database = new Database();
$id = $_POST['id'];
$result = $database->remove_notification($id);
echo json_encode($result);
