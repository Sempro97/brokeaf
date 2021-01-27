<?php

    require_once '../utilities/bootstrap.php';
    require_once '../utilities/exit-json.php';
    require_once '../utilities/database.php';
    $idList = $_POST['idList'];
    $btnpressed = $_POST['btnpressed'];
    $email = $_POST['email'];

    if ('btnCheckout' == $btnpressed) {
        //$database->insert_order($email);
        //$database->insert_user_order_notification($email);
        $database->insert_seller_order_notification($email);
        //$database->delete_cart($idList)
    }

    $total = $database->calculate_cart_total($idList);
    exit_json($total);
