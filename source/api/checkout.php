<?php
    require_once '../utilities/bootstrap.php';
    require_once '../utilities/exit-json.php';
    $idList = $_POST['idList'];
    $btnpressed = $_POST['btnpressed'];
    $email = $_POST['email'];

    if ($btnpressed == "btnCheckout") {
        //exit_json($email);
        //$database->insert_order($email);;
    }

    $total = $database->calculate_cart_total($idList);;
    exit_json($total);
?>
