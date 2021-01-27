<?php

require_once '../utilities/bootstrap.php';
require_once '../utilities/exit-json.php';
require_once '../utilities/parse.php';
require_once '../utilities/seller-only.php';
$item = parse_item($_POST);
$result = $database->edit_item($item);
if (false === $result) {
    exit_json('failed to edit the item.');
}
exit_json(true);
