<?php foreach ($template['items'] as $item) {
    $img = $database->get_img_item($item['serialCode']); ?>
    <div class="container-fluid">
      <div class="row">
        <div class="col-12 pb-2">
          <article class="bg-light border p-1">
            <div class="media">
              <img src="img\<?php echo $img[0]['path']; ?>.jpg" class="mr-3" alt="<?php echo $item['name']; ?>" />
              <div class="align-self-center media-body">
                <h2><?php echo $item['name']; ?></h2>
                <span><?php echo $item['price']; ?>&euro;</span>
              </div>
            </div>
          </article>
        </div>
      </div>
    </div>
<?php
} ?>
