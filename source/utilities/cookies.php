<?php

//return email of user if present or false if not present
function cookieUserGet() {
    $x = $_COOKIE["user"] ?? false;
    return $x;
}
//Overwrite cookie value and reload page
function cookieUserSet($user) {
    setcookie("user",$user["email"], time() + (86400 * 30), "/"); // 86400 = 1 day
    header("Refresh:0");
}
//Delete cookie value and reload page
function cookieUserDelete() {
    setcookie("user", "", time() - 3600);
    header("Refresh:0");
}
