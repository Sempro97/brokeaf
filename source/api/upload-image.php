<?php

const ALLOWED_IMAGE_EXTENSIONS = ['jpeg', 'jpg', 'png'];
const IMAGES_FOLDER = '/var/www/html/images/';
const MAXIMUM_ALLOWED_IMAGE_SIZE = 2000000;
// Check for errors.
$error = $_FILES['image']['error'];
if (UPLOAD_ERR_OK < $error) {
    exit('an error occurred during the upload ('.$error.').');
}
// Check image extension.
$uploaded_image_name = $_FILES['image']['name'];
$uploaded_image_extension = pathinfo($uploaded_image_name, PATHINFO_EXTENSION);
$uploaded_image_extension_is_allowed = in_array($uploaded_image_extension, ALLOWED_IMAGE_EXTENSIONS);
if (false == $uploaded_image_extension_is_allowed) {
    $error_message = json_encode('invalid image extension.');
    exit($error_message);
}
// Check image size.
$uploaded_image_size = $_FILES['image']['size'];
if ($uploaded_image_size > MAXIMUM_ALLOWED_IMAGE_SIZE) {
    $error_message = json_encode('uploaded image is too big (maximum size is 1MB).');
    exit($error_message);
}
// Check if images folder exists and if it doesn't, create it.
$images_folder_exists = is_dir(IMAGES_FOLDER);
if (false == $images_folder_exists) {
    $folder_created = mkdir(IMAGES_FOLDER);
    if (false == $folder_created) {
        $error_message = json_encode('failed to create images folder.');
        exit($error_message);
    }
}
// Create random unique name.
$temporary_file = tempnam('/tmp', 'image-');
$name = pathinfo($temporary_file, PATHINFO_BASENAME);
// Move the uploaded image to the images folder.
$uploaded_image_path = $_FILES['image']['tmp_name'];
$destination = IMAGES_FOLDER.$name.'.'.$uploaded_image_extension;
$result = move_uploaded_file($uploaded_image_path, $destination);
echo json_encode($result);
// TODO: Add image entry to database.
require_once '../utilities/database.php';
$database = new Database();
