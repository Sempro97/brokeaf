<!-- Page Content  
isVerificated`, `description`, `price`, `name`, `serialCode`, `email`, `Kin_name`-->
<div class="container">
  <div class="row">
    <div class="col-sm-12 rounded pt-2">
      <div class="card mt-4">
        <h3 class="card-title"><?php  echo $template['item']['name'] ; ?></h3>
        <img class="d-block w-100 img-thumbnail Image-fluid"
        src="../images/<?php echo $image[0]['path']; ?>"
          alt="image of <?php  echo $template['item']['name'] ; 
          ?>"
           style="max-width: 50%;"
           />
        <div class="card-body">
          <h4>
            Price: <small><?php  echo $template['item']['price'] ; ?></small>
          </h4>
          <p>Status: <small>Available</small></p>
          <form>
          <label for="quantity-item">Quantity:</label>
            <div class="form-row">
              <div class="col">
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                  <div class="input-group-append">
                    <button id="minus-item" class="btn input-group btn-dark">-</button>
                    </div>
                    <div class="input-group-append">
                    <input type="text" id="quantity-item" value="0" class="input-group-text" disabled/>
                    </div>
                    <div class="input-group-append">
                    <button id="plus-item" class="btn input-group-append btn-dark">+</button>
                    </div>
                  </div>
                </div>
                <button id="add-to-cart" type="button" class="btn btn-success">
                <span class="fas fa-cart-arrow-down"></span>
                </button>  
              </div>
               
            </div>
            </form>
            
          <div class="pt-2">
            <p>
              Sold by <a href="https://www.w3schools.com"><?php  echo $template['item']['emailSeller'] ; ?></a>
            </p>
          </div>
          <div class="alert alert-danger d-none invisible" role="alert"></div>
          <p class="card-text">
            <?php  echo $template['item']['description'] ; ?>
          </p>
        </div>
      </div>
    </div>
  </div>
</div>
