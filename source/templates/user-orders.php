    <div class="container">
<?php foreach ($template['orders'] as $order) { ?>
      <div class="row pb-3">
        <div class="col">
          <article class="bg-light border">
            <div class="container p-3">
              <div class="row">
                <div class="col text-left">
                  <span>Date: <?php echo $order['datePayment']; ?></span>
                </div>
                <div class="col text-center">
                  <span>Total: <?php echo $order['totalPrice']; ?>&euro;</span>
                </div>
                <div class="col text-right">
                  <span>Order # <?php echo $order['number']; ?></span>
                </div>
              </div>
            </div>
            <hr class="mt-0">
            <div class="container">
<?php foreach ($order['items'] as $item) { ?>
              <div class="row">
                <div class="col">
                  <div class="media pb-3">
                    <img src="../images/<?php echo $item['path']; ?>" class="mr-3" alt="<?php echo $item['name']; ?>" style="width: 150px; height: 150px" />
                    <div class="align-self-center media-body">
                      <h2 class="h4"><?php echo $item['name']; ?></h2>
                      <span class="d-block mb-2"><?php echo $item['price']; ?>&euro;</span>
                      <span class="d-block">Quantity: <?php echo $item['quantity']; ?></span>
                    </div>
                  </div>
                </div>
              </div>
<?php } ?>
            </div>
          </article>
        </div>
      </div>
<?php } ?>
    </div>
