<div class="container">
  <script>
    var counter = 0;
    var maxItems = 0;
  </script>
    <!--Section: Block Content-->
    <form class="mt-5 mb-4">
      <!--Grid row-->
      <div class="row">
        <!--Grid column-->
        <div class="col-lg-8">
          <!-- Card -->
          <div class="card wish-list mb-4">
            <div class="card-body">
              <h5 class="mb-4">Cart (<span id="cart-number"></span> items)</h5>
              <label class="d-none" id="lblquantity" for="txtquantity">Quantity:</label>
              <?php foreach ($template['cart'] as $item) { ?>
              <?php $image = $database->get_item_image($item['serialCode']); ?>
              <!-- Item -->
              <div id="item">
                <div class="row mb-2" >
                  <script>
                    counter++;
                    maxItems++;
                  </script>
                  <script> document.getElementById("item").id = "item" + counter; </script>
                  <div class="col-4 col-md-4 mb-3 mb-md-0">
                    <img class="mr-3 img-thumbnail" src="../images/<?php echo $image[0]['path']; ?>" alt="<?php echo $item['name']; ?>" />
                  </div>
                  <div class="col-8 col-md-8">
                    <div>
                      <div class="d-flex justify-content-between">
                        <div>
                          <p class="h5" id="txtname"><?php echo $item['name']; ?></p>
                          <p class="mb-2"><strong id="txtprice"><?php echo $item['price']; ?>&euro;</strong></p>
                          <script> document.getElementById("txtprice").id = "txtprice" + counter; </script>
                          <p class="mb-3" id="txtAvailability">Availability: <?php echo $item['stock']; ?></p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div id="quantity" class="row align-items-center">
                <script> document.getElementById("quantity").id = "quantity" + counter; </script>
                  <div class="col-12 col-md-4">
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <button class="btn btn-outline-secondary" type="submit" id="minus" onClick="">-</button>
                        <script> document.getElementById("minus").id = "minus" + counter; </script>
                      </div>
                      <input type="text" id="txtquantity" class="form-control" value="<?php echo $item['quantity']; ?>" readonly/>
                      <script> document.getElementById("txtquantity").id = "txtquantity" + counter; </script>
                      <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="submit" id="plus">+</button>
                        <script> document.getElementById("plus").id = "plus" + counter; </script>
                      </div>
                    </div>
                  </div>
                  <div class="col-12 col-md-8 mt-2 mt-md-0">
                    <div class="d-flex justify-content-between align-items-center">
                      <div>
                        <button type="submit" id="btnremove" class="btn btn-primary btn-block waves-effect waves-light">Remove Item</button>
                        <script> document.getElementById("btnremove").id = "btnremove" + counter; </script>              
                      </div>
                    </div>
                  </div>
                </div>
              <hr class="mb-4" />
              </div>
              <?php } ?>             
            </div>
          </div>

          <!-- Card -->
          <div class="card mb-4">
            <div class="card-body">
              <h5 class="mb-4">We accept</h5>
              <span class="fab fa-paypal mr-2"></span>
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
                  <span id="spanTotal"><?php echo $item['total']; ?>&euro;</span>
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
                  <span><strong id="spanIva"><?php echo $item['total']; ?>&euro;</strong></span>
                </li>
              </ul>

              <button type="button" id="btnCheckout" class="btn btn-primary btn-block waves-effect waves-light">Go to checkout</button>
            </div>
          </div>
        </div>
        <!--Grid column-->
      </div>
      <!--Grid row-->
    </form>
    <!--Section: Block Content-->
  </div>

<script> 
  $( document ).ready(function() {
    var idList = <?php echo json_encode($item['IdList']); ?>;
    var values = {
        "idList" : idList,
      }

      $.post("api/update-cart.php", values, function(response) {
        setTotal(response['total'], idList);
      }, "json")
  });

    function calculateTotal() {
      var total = 0;

      for (i=1; i<=maxItems; i++) {
        var price = parseFloat($('#txtprice' + i).text());
        var quantity = parseInt($('#txtquantity' + i).val());
        if (price) {
          total += parseFloat(price) * parseInt(quantity);
        }
      }   
      return total;
    }

    function setTotal(total) {
      document.getElementById("spanTotal").textContent = total.toFixed(2) + ' \u20AC';
      //var iva = total + (total/100)*20;
      document.getElementById("spanIva").textContent = total.toFixed(2) + ' \u20AC';
    }

    document.getElementById("cart-number").innerHTML = counter;

    $('form').on('submit', function(event) {
      event.preventDefault();
      var btnpressed = $(document.activeElement).attr('id'); //bottone premuto con numero
      var itemNumber = btnpressed.match(/\d+/g); //numero item selezionato
      btnpressed = btnpressed.replace(itemNumber, ""); //nome bottone premuto
      var template = <?php echo json_encode($template['cart']); ?>;

      var itemCode = template[itemNumber-1]['serialCode'];
      var idList = template[itemNumber-1]['IdList'];
      var quantity = document.getElementById("txtquantity" + itemNumber).value;

      var values = {
        "btnpressed" : btnpressed,
        "itemCode": itemCode, 
        "idList": idList,
        "quantity": quantity,
      }

      $.post("api/update-cart.php", values, function(response) {
          if (response['btn'] === "increased") {
            quantity++;
            document.getElementById("txtquantity" + itemNumber).value = quantity;
          }
          if (response['btn'] === "decreased") {
            quantity--;
            document.getElementById("txtquantity" + itemNumber).value = quantity;
          }
          if (response['btn'] === "removed") {
            counter--;
            document.getElementById("cart-number").innerHTML = counter;
            document.getElementById("item" + itemNumber).remove();
          }

          setTotal(calculateTotal());
      }, "json")
    });

    $('#btnCheckout').on('click', function(){
      window.location.href = "checkout.php";
    });
</script>
