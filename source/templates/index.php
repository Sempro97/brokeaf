    <div class="container">
<?php foreach ($template['items'] as $item) { 
  $image = $database->get_img_item($item['serialCode']);?>
      <div class="row pb-2">
        <div class="col">
          <article class="bg-light border p-1 ">
            <div class="media">
<<<<<<< HEAD
            <img class="w-25 align-self-center mr-3 img-thumbnail"
            src="../images/<?php echo $image[0]['path']; ?>" 
             alt="<?php echo $item['name']; ?>"
             style="width:60px" />
=======
              <img src="https://via.placeholder.com/150" class="mr-3" alt="<?php echo $item['name']; ?>" />
>>>>>>> master
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
