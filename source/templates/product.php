<!-- Page Content  
isVerificated`, `description`, `price`, `name`, `serialCode`, `email`, `Kin_name`-->
<div class="container">
  <div class="row">
    <div class="col-lg-9">
      <div class="card mt-4">
        <h3 class="card-title"><?php  echo $template['item'][0]['name'] ; ?></h3>
              <Image class="d-block w-100 .Image-fluid. max-width: 100%;" src="../images/<?php echo $template['imagePath']; ?>.jpg" alt="First slide" />

        <div class="card-body">
          <h4>Price: <small><?php  echo $template['item'][0]['price'] ; ?></small></h4>
          <p>Status: <small>Available</small></p>
          <div class="form-row">
            <div class="col">
              <select class="custom-select pl-2">
                <option selected disabled value="">Choose...</option>
                <option>...</option>
              </select>
            </div>
            <div class="col">
              <button type="button" class="btn btn-dark">
                <span class="fas fa-cart-arrow-down"></span>
              </button>
            </div>
          </div>
          <div class="pt-1">
            <p>Sold by <a href="https://www.w3schools.com"><?php  echo $template['item'][0]['email'] ; ?></a></p>
          </div>

          <p class="card-text">
          <?php  echo $template['item'][0]['description'] ; ?>
          </p>
        </div>
      </div>
    </div>
  </div>
</div>
