<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="font-awesome/css/all.min.css" />
    <title><?php echo $template['title']; ?></title>
  </head>
  <body>
<?php require_once 'templates/header.php'; ?>
<?php require_once $template['content']; ?>
  </body>
</html>
