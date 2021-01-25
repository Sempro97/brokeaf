<?php
/* OTTIMIZZAZZIONE RICHESTA!!! Alla creazione di un utente salvare l'utente contestualmente,
 in modo da evitare le ricerche su entrambe le tabelle per registrare la nuova sessione utente */

require_once '../utilities/bootstrap.php';
require_once '../utilities/exit-json.php';

//User already registred redirect to index
if ($database->get_user_from_email($_POST["email"]) != NULL || $database->get_seller_from_email($_POST["email"]) != NULL)
{
    error_log('User already exist');
    exit_json('User already exist');
}
else
{
    error_log('User creation try');
    //User not registred will be inserted to DB
    if ($_POST["companyName"])
    {
        $results = $database->register_seller($_POST);
    }
    else
    {
        $results = $database->register_user($_POST);
    }
    $user = $database->get_user_from_email($_POST["email"]);

    if ($results == 1)
    {
        //If user not UserWeb is Seller
        if ($user == NULL)
        {
            $user = $database->get_seller_from_email($_POST["email"]);
        }
        error_log('User created: ' . $user["email"]);

        //!IMPORTANT use Login function
        //
        //
        //
        //
        exit_json($user);
    }
    else
    {
        exit_json('User not created, not present');
    }
}
