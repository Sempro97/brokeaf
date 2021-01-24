<!-- Il contenuto e' lo stesso di index ma mostra una lista con gli item di una sola categoria
si detrmite dal parametro id in get la categoria -->
<?php
require_once 'bootstrap.php';

$template['title'] = $category;
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$category = $_GET['id'];
$search = $_GET['search'];
$template['search'] = $search;
$template['items'] = $search ? $db->get_items_by_name($search, ITEM_COUNT) : $db->get_items_by_category($category);

$template['content'] = 'templates/index.php';
require_once 'templates/base.php';
