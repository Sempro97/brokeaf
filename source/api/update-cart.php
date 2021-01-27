<?php

require_once '../utilities/database.php';
require_once '../utilities/exit-json.php';
$database = new Database();

$itemCode = $_POST['itemCode'];
$idList = $_POST['idList'];
$quantity = $_POST['quantity'];
$btnpressed = $_POST['btnpressed'];

$item = $database->get_item($itemCode);
$availability = $item['quantity'];

if ($quantity <= $availability && $quantity >= 0) {
    if ($quantity != 1) {
        if ('minus' == $btnpressed) {
            $database->set_cart_item_quantity($quantity - 1, $itemCode, $idList);
            $result['btn'] = 'decreased';
        }
    }

    if ($quantity != $availability) {
        if ('plus' == $btnpressed) {
            $database->set_cart_item_quantity($quantity + 1, $itemCode, $idList);
            $result['btn'] = 'increased';
        }
    }
}
    

if ('btnremove' == $btnpressed) {
    //$database->remove_item_from_cart($itemCode, $idList);
    $result['btn'] = 'removed';
}

$result['total'] = $database->calculate_cart_total($idList);
exit_json($result);
