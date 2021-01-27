    <div class="container">
<?php foreach ($template['orders'] as $order) { ?>
<?php $image = $database->get_item_image($order['serialCode']); ?>
      <div class="row pb-2">
        <div class="col">
        <article class="bg-light border p-1">
          <div class="media">
          <img class="mr-3 img-thumbnail" src="../images/<?php echo $image[0]['path']; ?>" alt="<?php echo $order['name']; ?>" style="width: 150px; height: 150px" />
          <div class="align-self-center media-body">
            <h2 class="h4"><?php echo $order['name']; ?></h2>
            <span class="d-block mb-1">Price: <?php echo $order['price']; ?>&euro;</span>
            <span class="d-block mb-1">Date: <?php echo $order['datePayment']; ?></span>
            <span class="d-block mb-1">Quantity: <?php echo $order['quantity']; ?></span>
          </div>
          </div>
        </article>
        </div>
      </div>
<?php } ?>
    </div>
