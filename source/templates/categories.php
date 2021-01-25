    <div class="container">
<?php foreach ($template['categories'] as $category) { ?>
      <div class="row pb-2">
        <div class="col">
          <article class="bg-light border p-3">
            <div class="media">
              <div class="align-self-center media-body">
                <h2>
                  <a href="index.php?category=<?php echo $category; ?>"><?php echo $category; ?></a>
                </h2>
              </div>
            </div>
          </article>
        </div>
      </div>
<?php } ?>
    </div>
