<div class="container">
  <script type="text/javascript">
    var counter = 0;
  </script>
    <!--Section: Block Content-->
    <section class="mt-5 mb-4">
      <!--Grid row-->
      <div class="row">
        <!--Grid column-->
        <div class="col-lg-8">
        <?php foreach ($template["cart"] as $item): ?>
          <!-- Card -->
          <div class="card wish-list mb-4">
            <div class="card-body">
              <h5 class="mb-4">Cart (<span id="cart-number"></span> items)</h5>
              <!-- Item -->
              <div class="row mb-2" >
                <script>
                  counter++;
                </script>

                <!-- TO DO: Sostituire col con una flexa -->
                <div class="col-4 col-md-4 mb-3 mb-md-0">
                  <img class="img-fluid rounded" src="https://via.placeholder.com/150" alt="Sample" />
                </div>
                <div class="col-8 col-md-8">
                  <div>
                    <div class="d-flex justify-content-between">
                      <div>
                        <p class="h5"><?php echo $item["name"]; ?></p>
                        <p class="mb-2"><strong><?php echo $item["price"]; ?>&euro;</strong></p>
                        <p class="mb-3">Availability: <?php echo $item["stock"]; ?></p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="row align-items-center">
                <div class="col-12 col-md-4">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <button class="btn btn-outline-secondary" type="button" id="minus">-</button>
                    </div>
                    <input type="text" class="form-control" placeholder="<?php echo $item["quantity"]; ?>" />
                    <div class="input-group-append">
                      <button class="btn btn-outline-secondary" type="button" id="plus">+</button>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-md-8 mt-2 mt-md-0">
                  <div class="d-flex justify-content-between align-items-center">
                    <div>
                      <button type="button" id="btnremove" class="btn btn-primary btn-block waves-effect waves-light" onClick="removeItem()">
                        Remove Item
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <hr class="mb-4" />
            </div>
          </div>
          <?php endforeach; ?>

          <!-- Card -->
          <div class="card mb-4">
            <div class="card-body">
              <h5 class="mb-4">We accept</h5>
              <i class="fab fa-paypal mr-2"></i>
            </div>
          </div>
          <!-- Card -->
        </div>
        <!--Grid column-->
        <div class="col-lg-4">
          <!-- Card -->
          <div class="card mb-4">
            <div class="card-body">
              <ul class="list-group list-group-flush">
                <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                  Amount
                  <span><?php echo $item["total"]; ?>&euro;</span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center px-0">
                  Shipping
                  <span>Gratis</span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
                  <div>
                    <strong>Total amount</strong>
                    <br />
                    <strong> (including IVA) </strong>
                  </div>
                  <span><strong><?php echo $item["total"]; ?>&euro; + 20%</strong></span>
                </li>
              </ul>

              <button type="button" class="btn btn-primary btn-block waves-effect waves-light">Go to checkout</button>
            </div>
          </div>
        </div>
        <!--Grid column-->
      </div>
      <!--Grid row-->
    </section>
    <!--Section: Block Content-->
  </div>

  <script> 
    document.getElementById("cart-number").innerHTML = counter 
  </script>

  <script>
    document.getElementById("btnremove").addEventListener ("click", removeItem, false);
    
    function removeItem() {
      
      var serialCode= "<?php echo $items[counter]['serialCode']; ?>"

      console.log("ciao");
    }
</script>

$.ajax({
		url:"update-cart.php",
		type: "POST",
		data: { email: userEmail, password: userPassword }
	})
		.done(function( error ) {
			if (error === "true") {
				$("#alert").removeClass();
			} else {
				window.location.replace("index.php");
			}
		}); 
