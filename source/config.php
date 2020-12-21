<?php
    define("HOST", "mysql"); // E' il server a cui ti vuoi connettere.
    define("USER", "root"); // E' l'utente con cui ti collegherai al DB.
    define("PASSWORD", "root"); // Password di accesso al DB.
    define("DATABASE", "brokeaf"); // Nome del database.
    $mysqli = new mysqli(HOST, USER, PASSWORD, DATABASE);

    
?>
