<?php
    require '../utilities/database.php';
    $database = new Database();

    $idList = $_POST['idList'];

    $total = $database->calculate_cart_total($idList);;
    echo json_encode($total);
?>
