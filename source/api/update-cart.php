<?php
    require '../utilities/database.php';
    $database = new Database();

    $itemCode = $_POST['itemCode'];
    $idList = $_POST['idList'];
    $quantity = $_POST['quantity'];
    $btnpressed = $_POST['btnpressed'];

    if ($btnpressed == 'btnremove') {
        //$database->remove_item_from_cart($itemCode, $idList);
        $result['btn'] = "removed";
    }
    if ($btnpressed == 'minus') {
        $database->set_cart_item_quantity($quantity-1, $itemCode, $idList);
        $result['btn'] = "decreased";
    }
    if ($btnpressed == 'plus') {
        $database->set_cart_item_quantity($quantity+1, $itemCode, $idList);
        $result['btn'] = "increased";
    }

    $result['total'] = $database->calculate_cart_total($idList);;
    echo json_encode($result);
?>
