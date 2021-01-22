<?php

require_once '../utilities/database.php';
$database = new Database();
$should_add_item = isset($_POST['name']);
if ($should_add_item) {
    $item_added = $database->add_item(
        $_POST['name'],
        $_POST['description'],
        $_POST['price'],
        $_POST['quantity'],
        $_POST['category'],
        $_POST['serial_code'],
        $_POST['image']
    );
    echo json_encode($item_added);
} else {
    echo json_encode(false);
}
