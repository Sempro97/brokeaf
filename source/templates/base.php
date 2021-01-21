<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="font-awesome/css/all.min.css" />
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery.caret.js" type="text/javascript"></script>
    <script src="js/jquery.mobilePhoneNumber.js" type="text/javascript"></script>
    <script src="js/sha512.js" type="text/javascript"></script>
    <script src="js/utils.js" type="text/javascript"></script>
    <title><?php echo $template['title']; ?></title>
    <link rel="icon" href="img/favicon.ico" /> 
  </head>
  <body>
<?php require_once 'templates/header.php'; ?>
<?php require_once $template['content']; ?>
  </body>
</html>
