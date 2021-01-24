<?php

require_once 'utilities/database.php';
$database = new Database();
$template['title'] = 'Notifications';
$template['scripts'] = [
    'js/jquery-3.4.1.min.js',
    'bootstrap/js/bootstrap.bundle.min.js',
    'js/remove-notification.js',
];
$template['header'] = 'Notifications';
$template['content'] = 'templates/notifications.php';
require_once 'templates/base.php';
