<?php

require_once '../utilities/bootstrap.php';
require_once '../utilities/exit-json.php';
require_once '../utilities/parse.php';
require_once '../utilities/seller-only.php';
$serial_code = $_POST['serial_code'];
$result = $database->delete_item($serial_code);
if (false === $result) {
    exit_json('failed to delete the item.');
}
exit_json($result);
