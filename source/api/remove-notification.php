<?php

require_once '../utilities/bootstrap.php';
$id = $_POST['id'];
$result = $database->remove_notification($id);
echo json_encode($result);
