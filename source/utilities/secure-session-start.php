<?php

function secure_session_start()
{
    $session_name = 'secure_session_id';
    ini_set('session.use_only_cookies', 1);
    $cookie_parameters = session_get_cookie_params();
    session_set_cookie_params(
        $cookie_parameters['lifetime'],
        $cookie_parameters['path'],
        $cookie_parameters['domain'],
        false, // HTTPS.
        true // Only HTTP.
    );
    session_name($session_name);
    session_start();
    session_regenerate_id();
}
