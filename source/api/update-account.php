<?php

require_once '../utilities/bootstrap.php';
require_once '../utilities/exit-json.php';

//////////
// User //
//////////

$user = $_POST;
$userType = 'UserWeb';

if ($_SESSION['email'] != $user['email']) {
    exit_json('You can\'t modify the email!');
}

// Check type of user.
if (null !== $user['companyName']) {
    $userType = 'Seller';
}

//////////////
// Database //
//////////////

/* The password must be re-salted if new, 
otherwise retrieve the old salt to not invalid the existing password */
if ('UserWeb' === $userType) {
    $userOnDB = $database->get_user_from_email($_SESSION['email']);
    if ($user['password'] != $userOnDB['password']) {
        hashUsersPassword();
    } else {
        $user['salt'] = $userOnDB['salt'];
    }
    $result = $database->update_user($user);
} else {
    $sellerOnDB = $database->get_seller_from_email($_SESSION['email']);
    if ($user['password'] != $sellerOnDB['password']) {
        hashUsersPassword();
    } else {
        $user['salt'] = $sellerOnDB['salt'];
    }
    $result = $database->update_seller($user);
}

if (0 === $result) {
    exit_json('Account was not modified, maybe you have not change any fields');
}
exit_json(true);

function hashUsersPassword()
{
    global $user;
    $random_salt = hash('sha512', uniqid(mt_rand(1, mt_getrandmax()), true));
    $password = $user['password'];
    // Hash password.
    $user['password'] = hash('sha512', $password.$random_salt);
    $user['salt'] = $random_salt;
}
