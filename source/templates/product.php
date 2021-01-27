<!-- Page Content: isVerificated`, `description`, `price`, `name`, `serialCode`, `email`, `Kin_name`-->
<div class="container">
  <div class="row">
    <div class="col rounded">
      <div class="card">
        <div class="card-header text-center">
          <span class="h3"><?php echo $template['item']['name']; ?></span>
        </div>
        <div class="card-body">
          <div class="container">
            <div class="row pb-3">
              <div class="col p-0 mx-auto text-center">
                <img class="img-fluid img-thumbnail" style="max-height: 400px;" src="../images/<?php echo $image[0]['path']; ?>" alt="Image of <?php  echo $template['item']['name']; ?>" />
              </div>
            </div>
            <!-- Price -->
            <div class="row">
              <div class="col p-0">
                <span class="h4">Price: <?php echo $template['item']['price']; ?>&euro;</span>
              </div>
            </div>
            <!-- Status -->
            <div class="row pb-3">
              <div class="col p-0">
                <span class="h6">Status: Available</span>
              </div>
            </div>
            <!-- Quantity -->
<?php if($database->is_user($email) ){ ?>
            <div class="row">
              <div class="col p-0">
                <form id="shoppingButton">
                  <label for="quantity-item">Quantity:</label>
                  <div class="form-row mb-2">
                    <div class="col-md-4">
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <button id="minus-item" class="btn btn-dark">
                            <span class="fas fa-minus"></span>
                          </button>
                        </div>
                        <input type="text" id="quantity-item" value="1" class="form-control text-center" disabled />
                        <div class="input-group-append">
                          <button id="plus-item" class="btn btn-dark">
                            <span class="fas fa-plus"></span>
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="form-row mb-1">
                    <div class="col">
                      <button id="add-to-cart" type="button" class="btn btn-success">
                        <span class="fas fa-cart-arrow-down"></span>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
<?php }?>
            <!-- Sold by -->
            <div class="row pt-3">
              <div class="col p-0">
                <span class="h6">Sold by</span>
                <a href="https://www.w3schools.com"><?php echo $template['item']['emailSeller']; ?></a>
              </div>
            </div>
            <div class="row pt-3">
              <div class="col p-0">
                <div class="alert alert-danger d-none invisible" role="alert"></div>
              </div>
            </div>
            <!-- Description -->
            <div class="row">
              <div class="col p-0">
                <span class="h6"><?php echo $template['item']['description']; ?></span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
