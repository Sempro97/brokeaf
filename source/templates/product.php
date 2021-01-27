<!-- Page Content  
isVerificated`, `description`, `price`, `name`, `serialCode`, `email`, `Kin_name`-->
<div class="container">
  <div class="row">
    <div class="col-sm-12 rounded pt-2">
      <div class="card text-center mt-4">
        <h3
          class="card-header text-center"
        ><?php echo $template['item']['name']; ?></h3>
        <div style="max-width: 50%; height: 50%;">
          <img
            class="d-block img-thumbnail Image-fluid"
            src="../images/<?php echo $image[0]['path']; ?>"
            alt="image of <?php  echo $template['item']['name'];
          ?>"
            style="max-width: 75%; height: 50%;"
          />
        </div>
        <div class="text-left">
          <h4>
            Price:
            <small><?php echo $template['item']['price']; ?></small>
          </h4>
          <p>
            Status:
            <small>Available</small>
          </p><?php if($database->is_user($email) ){ ?>
          <form id="shoppingButton">
            <label for="quantity-item">Quantity:</label>
            <div class="form-row">
              <div class="col">
                <div
                  class="btn-toolbar mb-3"
                  role="toolbar"
                  aria-label="Toolbar with button groups"
                >
                  <div
                    class="btn-group ml-2 mr-2"
                    role="group"
                    aria-label="First group"
                  >
                    <button id="minus-item" class="btn input-group btn-dark">-</button>
                  </div>
                  <input
                    type="text"
                    style="width: 30%;"
                    id="quantity-item"
                    value="0"
                    class="input-group-text"
                    disabled
                  />
                  <div
                    class="btn-group ml-2"
                    role="group"
                    aria-label="First group"
                  >
                    <button
                      id="plus-item"
                      class="btn input-group-append btn-dark"
                    >+</button>
                  </div>
                </div>
                <div class="form-row ml-2 mt-2">
                  <button
                    id="add-to-cart"
                    type="button"
                    class="btn btn-success"
                  >
                    <span class="fas fa-cart-arrow-down"></span>
                  </button>
                </div>
              </div>
            </div>
          </form><?php }?>
          <div class="pt-2">
            <p>
              Sold by
              <a
                href="https://www.w3schools.com"
              ><?php echo $template['item']['emailSeller']; ?></a>
            </p>
          </div>
          <div class="alert alert-danger d-none invisible" role="alert"></div>
          <p class="card-text"><?php echo $template['item']['description']; ?></p>
        </div>
      </div>
    </div>
  </div>
</div>
