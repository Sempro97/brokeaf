<!-- Page Content  
isVerificated`, `description`, `price`, `name`, `serialCode`, `email`, `Kin_name`-->
<div class="container">
  <div class="row">
    <div class="col-sm-12 rounded pt-2">
      <div class="card mt-4">
        <h3 class="card-title"><?php  echo $template['item']['name'] ; ?></h3>
        <img class="d-block w-100 img-thumbnail Image-fluid. max-width: 100%;"
        src="../images/<?php echo $image[0]['path']; ?>"
          alt="image of <?php  echo $template['item']['name'] ; 
          ?>"
           />
        <div class="card-body">
          <h4>
            Price: <small><?php  echo $template['item']['price'] ; ?></small>
          </h4>
          <p>Status: <small>Available</small></p>
          <div class="form-row">
            <div class="col">
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <button class="btn input-group btn-dark">-</button>
                  <span class="input-group-text">0</span>
                  <button class="btn input-group btn-dark">+</button>
                </div>
              </div>
              <button type="button" class="btn btn-success">
              <span class="fas fa-cart-arrow-down"></span>
              </button>                
            </div>
          </div>
          <div class="pt-2">
            <p>
              Sold by <a href="https://www.w3schools.com"><?php  echo $template['item']['email'] ; ?></a>
            </p>
          </div>
          <p class="card-text">
            <?php  echo $template['item']['description'] ; ?>
          </p>
        </div>
      </div>
    </div>
  </div>
</div>
