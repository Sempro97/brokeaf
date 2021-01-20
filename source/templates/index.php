    <div class="container">
<?php foreach ($template['items'] as $item) { ?>
      <div class="row pb-2">
        <div class="col-12">
          <article class="bg-light border p-1">
            <div class="media">
              <img src="https://via.placeholder.com/150" class="mr-3" alt="<?php echo $item['name']; ?>" />
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
