<?php

<<<<<<< HEAD
require_once 'bootstrap.php';
=======
require_once 'utilities/bootstrap.php';
require_once 'utilities/seller-only.php';
>>>>>>> master
$template['title'] = 'Add item';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
    'js/add-item.js',
];
$template['header'] = 'Add item';
$template['content'] = 'templates/add-item.php';
$template['categories'] = $db->get_categories();
require_once 'templates/base.php';
