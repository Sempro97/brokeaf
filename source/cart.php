<?php
  $cart = new shoppingCart();
  $template["cart"] = $cart;


  //il mio carrrello è ListItems e i suoi elementi che si riferiscono al carrello sono DetailsItems
?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Shopping Cart</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="font-awesome/css/all.min.css" />
  </head>

  <div class="container">
    <!--Section: Block Content-->
    <section class="mt-5 mb-4">
      <!--Grid row-->
      <div class="row">
        <!--Grid column-->
        <div class="col-lg-8">
          <!-- Card -->
          <div class="card wish-list mb-4">
            <div class="card-body">
              <h5 class="mb-4">Cart (<span>2</span> items)</h5>

              <!-- Item 1 -->
              <div class="row mb-2">
                <!-- TO DO: Sostituire col con una flexa -->
                <div class="col-4 col-md-4 mb-3 mb-md-0">
                  <img class="img-fluid rounded" src="https://via.placeholder.com/150" alt="Sample" />
                </div>
                <div class="col-8 col-md-8">
                  <div>
                    <div class="d-flex justify-content-between">
                      <div>
                        <p class="h5">Name</p>
                        <p class="mb-2"><strong>15 €</strong></p>
                        <p class="mb-3">Available</p>
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
                    <input type="text" class="form-control" placeholder="1" />
                    <div class="input-group-append">
                      <button class="btn btn-outline-secondary" type="button" id="plus">+</button>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-md-8 mt-2 mt-md-0">
                  <div class="d-flex justify-content-between align-items-center">
                    <div>
                      <button type="button" class="btn btn-primary btn-block waves-effect waves-light">
                        Remove Item
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <hr class="mb-4" />
            </div>
          </div>

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

        <!--Grid column-->
        <div class="col-lg-4">
          <!-- Card -->
          <div class="card mb-4">
            <div class="card-body">
              <ul class="list-group list-group-flush">
                <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                  Amount
                  <span>30€</span>
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
                  <span><strong>30€</strong></span>
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

  
  <body>
    <div class="header"></div>

    <div class="container-fluid">
      <div class="row">
        <div class="col-4 col-md-3"></div>
        <div class="col-8 col-md-5">
          <p class="h2">Cart amount: 0 €</p>
          <button type="button" class="btn btn-primary btn-lg btn-block">Checkout</button>
        </div>
      </div>
      <div class="item">
        <div class="row">
          <div class="col-4 col-md-1">
            <img src="meme.jpg" alt="Your Item" class="img-thumbnail" />
          </div>
          <div class="col-8 col-md-11">
            <p class="h2">Name</p>
            <p class="h2">0 €</p>
            <p class="h2">Available</p>
          </div>
        </div>
        <div class="row">
          <div class="col-6">
            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <button class="btn btn-outline-secondary" type="button" id="plus">-</button>
              </div>
              <input
                type="text"
                class="form-control"
                placeholder=""
                aria-label="Example text with button addon"
                aria-describedby="button-addon1"
              />
              <div class="input-group-append">
                <button class="btn btn-outline-secondary" type="button" id="minus">+</button>
              </div>
            </div>
          </div>
          <div class="col-6">
            <button type="button" class="btn btn-primary btn-sm">Rimuovi</button>
          </div>
        </div>
      </div>
    </div>
  </body>//
</html>
