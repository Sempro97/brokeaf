<!-- Ha il compito di ottenere tutte le categorie e darle in pasto al template -->
<?php

require_once 'bootstrap.php';
$template['title'] = 'List of categories';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$template['header'] = 'List of categories';
$template['content'] = 'templates/category.php';
$template['categories'] = $db->get_categories();
require_once 'templates/base.php';
