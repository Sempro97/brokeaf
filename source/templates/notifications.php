    <div class="container">
<?php foreach ($notifications as $notification) {?>
      <div id="notification-<?php echo $notification['idNotification']; ?>" class="row">
        <div class="col pb-2">
          <div class="align-items-center bg-light border d-flex p-3">
          <span><?php echo $notification['date']; ?></span>
          <span class="mx-2"> - </span>
<?php if ($notification['path']) {?>
            <a href="<?php echo $notification['path']; ?>">Link</a>
            <span class="mx-2"> - </span>
<?php } ?>
            <span class="flex-grow-1"><?php echo $notification['description']; ?></span>
            <button class="btn" type="button" onClick="removeNotification(<?php echo $notification['idNotification']; ?>);" aria-label="close">
              <span class="fas fa-times"></span>
            </button>
          </div>
        </div>
      </div>
<?php } ?>
    </div>
