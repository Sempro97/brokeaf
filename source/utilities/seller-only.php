<?php

$email = $_SESSION['email'];
$seller = $database->is_seller($email);
if (false === $seller) {
    header('Location: index.php');
}
