<?php

const ITEM_COUNT = 5;
require_once 'bootstrap.php';

$template['title'] = 'Index';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$search = $_GET['search'];
$template['search'] = $search;
$template['items'] = $search ? $db->get_items_by_name($search, ITEM_COUNT) : $db->get_random_items(ITEM_COUNT);

$user = array("email"=>"email@email.it", "name"=>"37");

//Commenta questo e decomenta le righe sotto (shift+alt+a in code) per testare il funzionamento
if(!cookieUserGet()){
    cookieUserSet($user);
}
/* if(cookieUserGet()){
    cookieUserDelete();
} */
var_dump("You are Logged:");
var_dump(cookieUserGet());

$template['content'] = 'templates/index.php';
require_once 'templates/base.php';
