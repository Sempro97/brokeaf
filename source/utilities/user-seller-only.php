<?php

// Set the $template["user"] to an UserWeb or Seller account if is already log-in.
if (null === $email) {
    header('Location: index.php');
} else {
    if (false === $database->is_seller($email)) {
        if (false === $database->is_user($email)) {
            header('Location: index.php');
        } else {
            $template['user'] = $database->get_user_from_email($email);
        }
    } else {
        $template['user'] = $database->get_seller_from_email($email);
    }
}
