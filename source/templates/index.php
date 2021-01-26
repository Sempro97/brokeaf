    <div class="container">
<?php foreach ($template['items'] as $item) { ?>
<?php $image = $database->get_item_image($item['serialCode']); ?>
      <div class="row pb-2">
        <div class="col">
          <article class="bg-light border p-1">
            <div class="media">
              <img class="mr-3 img-thumbnail" src="../images/<?php echo $image[0]['path']; ?>" alt="<?php echo $item['name']; ?>" style="width: 150px; height: 150px" />
              <div class="align-self-center media-body">
                <h2 class="h4"><?php echo $item['name']; ?></h2>
                <span><?php echo $item['price']; ?>&euro;</span>
              </div>
            </div>
          </article>
        </div>
      </div>
<?php } ?>
    </div>
