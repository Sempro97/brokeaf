<?php
    require '../utilities/database.php';
    $database = new Database();

    $itemCode = $_POST['itemCode'];
    $idList = $_POST['idList'];
    $quantity = $_POST['quantity'];
    $btnpressed = $_POST['btnpressed'];

    if ($btnpressed == 'btnremove') {
        //$database->remove_item_from_cart($itemCode, $idList);
        echo json_encode("removed");
    }
    if ($btnpressed == 'minus') {
        $database->set_cart_item_quantity($quantity-1, $itemCode, $idList);
        echo json_encode("decreased");
    }
    if ($btnpressed == 'plus') {
        $database->set_cart_item_quantity($quantity+1, $itemCode, $idList);
        echo json_encode("increased");
    }
?>
