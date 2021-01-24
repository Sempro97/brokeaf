<?php

$email = $_SESSION['email'];
$user = $database->is_user($email);
if (false === $user) {
    header('Location: index.php');
}
