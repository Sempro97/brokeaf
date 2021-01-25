    <div class="container">
<?php foreach ($template['items'] as $item) { 
  $image = $database->get_img_item($item['serialCode']);?>
      <div class="row pb-2">
        <div class="col">
          <article class="bg-light border p-1">
            <div class="media">
              <img src="/images/<?php echo $img[0]['path']; ?>" class="mr-3" alt="<?php echo $item['name']; ?>" />
              <div class="align-self-center media-body">
                <h2><?php echo $item['name']; ?></h2>
                <span><?php echo $item['price']; ?>&euro;</span>
              </div>
            </div>
          </article>
        </div>
      </div>
<?php } ?>
    </div>
