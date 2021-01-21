<?php

require_once 'utilities/database.php';
$database = new Database();
$should_add_item = isset($_POST['name']);
if ($should_add_item) {
    $database->add_item(
        $_POST['name'],
        $_POST['description'],
        $_POST['price'],
        $_POST['quantity'],
        $_POST['category'],
        $_POST['serial_code'],
        $_POST['image']
    );
    header('Location: index.php');
} else {
    $template['title'] = 'Add item';
    $template['categories'] = $database->get_categories();
    $template['content'] = 'templates/add-item.php';
    require_once 'templates/base.php';
}
