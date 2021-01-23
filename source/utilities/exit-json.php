<?php

function exit_json($message)
{
    $message = json_encode($message);
    exit($message);
}
