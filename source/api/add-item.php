<?php

require_once '../utilities/bootstrap.php';
require_once '../utilities/exit-json.php';
require_once '../utilities/parse-item.php';
require_once '../utilities/seller-only.php';

//////////
// Item //
//////////

$item = parse_item($_POST);
if ($item) {
    $item_already_exits = $database->get_item($item['serial_code']);
    if ($item_already_exits) {
        exit_json('an item with the specified serial code already exists.');
    }
} else {
    exit_json('the specified item is invalid.');
}

///////////
// Image //
///////////

// Constants
const ALLOWED_IMAGE_EXTENSIONS = ['jpeg', 'jpg', 'png'];
const IMAGES_FOLDER = '/var/www/html/images/';
const MAXIMUM_ALLOWED_IMAGE_SIZE = 2000000;
// Check for errors.
$error = $_FILES['image']['error'];
if (UPLOAD_ERR_OK < $error) {
    exit_json('an error occurred during the upload ('.$error.').');
}
// Check image extension.
$uploaded_image_name = $_FILES['image']['name'];
$uploaded_image_extension = pathinfo($uploaded_image_name, PATHINFO_EXTENSION);
$uploaded_image_extension_is_allowed = in_array($uploaded_image_extension, ALLOWED_IMAGE_EXTENSIONS);
if (false === $uploaded_image_extension_is_allowed) {
    exit_json('uploaded image has an invalid extension.');
}
// Check image size.
$uploaded_image_size = $_FILES['image']['size'];
if ($uploaded_image_size > MAXIMUM_ALLOWED_IMAGE_SIZE) {
    exit_json('uploaded image is too big (maximum size is 1MB).');
}
// Check if images folder exists and if it doesn't, create it.
$images_folder_exists = is_dir(IMAGES_FOLDER);
if (false === $images_folder_exists) {
    $folder_created = mkdir(IMAGES_FOLDER);
    if (false === $folder_created) {
        exit_json('failed to create the images folder.');
    }
}
// Create random unique name.
$temporary_file = tempnam('/tmp', 'image-');
$image_name = pathinfo($temporary_file, PATHINFO_BASENAME);
$image_name = $image_name.'.'.$uploaded_image_extension;
// Move the uploaded image to the images folder.
$destination = IMAGES_FOLDER.$image_name;
$uploaded_image_path = $_FILES['image']['tmp_name'];
$result = move_uploaded_file($uploaded_image_path, $destination);
if (false === $result) {
    exit_json('failed to move the uploaded image to the images folder.');
}

//////////////
// Database //
//////////////

$result = $database->add_item($item, $email);
if (false === $result) {
    exit_json('failed to add the item to the database.');
}
$result = $database->add_image($image_name, $item['serial_code']);
if (false === $result) {
    exit_json('failed to add the image to the database.');
}
exit_json(true);
