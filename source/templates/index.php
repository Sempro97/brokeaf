<?php foreach ($template['items'] as $item) { ?>
  <div class="container-fluid">
    <div class="row">
      <div class="col-12 p-1">
        <article class="bg-light border p-1">
          <div class="media">
            <img src="https://via.placeholder.com/150" class="mr-3" alt="" />
            <div class="align-self-center media-body">
              <h2><?php echo $item['name']; ?></h2>
              <span><?php echo $item['price']; ?>&euro;</span>
            </div>
          </div>
        </article>
      </div>
    </div>
  </div>
<?php } ?>
