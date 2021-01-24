<div class="container">
<?php foreach ($template['category'] as $category) { ?>
      <div class="row pb-2">
        <div class="col">
          <article class="bg-light border p-1">
            <div class="media">
              <div class="align-self-center media-body">
                <h2>
                    <a href="../product-category.php?id=<?php echo $category['name']; ?>">
                        <?php echo $category['name']; ?>
                    </a>
                </h2>
              </div>
            </div>
          </article>
        </div>
      </div>
<?php } ?>
    </div>
