<?php

require_once 'utilities/database.php';
$database = new Database();
$template['title'] = 'Orders';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
];
$template['content'] = 'templates/user-orders.php';
$template['orders'] = [
    [
        'date' => '8 June 1984',
        'items' => [
            [
                'name' => 'Paper',
                'price' => '3',
                'quantity' => '2',
            ],
        ],
        'number' => 2674,
        'total' => 64,
        ],
    [
        'date' => '8 June 1984',
        'items' => [
            [
                'name' => 'Ruler',
                'price' => '67',
                'quantity' => '1',
            ],
            [
                'name' => 'Box',
                'price' => '9',
                'quantity' => '1',
            ],
        ],
        'number' => 837945,
        'total' => 32,
    ],
];
require_once 'templates/base.php';
