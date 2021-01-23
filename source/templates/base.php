<?php
// https://www.php.net/manual/en/migration70.new-features.php#migration70.new-features.null-coalesce-op
$template['scripts'] = $template['scripts'] ?? [];
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="font-awesome/css/all.min.css" />
<?php foreach ($template['scripts'] as $script) { ?>
    <script src="<?php echo $script; ?>"></script>
<?php } ?>
    <title><?php echo 'BrokeAF - '.$template['title']; ?></title>
  </head>
  <body>
<?php require_once 'templates/header.php'; ?>
<?php if ($template['header']) { ?>
    <h1 class="text-center"><?php echo $template['header']; ?></h1>
<?php } ?>
<?php require_once $template['content']; ?>
  </body>
</html>
