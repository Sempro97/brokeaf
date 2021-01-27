<div class="container">
<div class="row">
        <div class="col-md-4 order-md-2 mb-4">
          <h5 class="mb-4">Cart (<span id="cart-number"></span> items)</h5>
          <ul class="list-group mb-3">
          <?php foreach ($template['cart'] as $item) { ?>
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h5 class="my-0">Name: <?php echo $item['name']; ?></h6>
                <h5 class="my-0">Quantity: <?php echo $item['quantity']; ?></h6>
              </div>
              <div>
                <span class="text-muted"><?php echo $item['price']; ?>&euro;</span>
                <h6 class="my-0"><?php echo $item['price'] * $item['quantity']; ?>&euro;</h6>
              </div>  
            </li>
          <?php } ?>
            <li class="list-group-item d-flex justify-content-between">
              <span>Total (EUR)</span>
              <strong id="strongTotal"></strong>
            </li>
          </ul>
        </div>
        <div class="col-md-8 order-md-1">
        <?php $user = $template['user']; ?>
          <h4 class="mb-3">Billing address</h4>
          <form>
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="firstName">First name</label>
                <input type="text" class="form-control" id="firstName" value="<?php echo $user['name']; ?>" readonly>
              </div>
              <div class="col-md-6 mb-3">
                <label for="lastName">Last name</label>
                <input type="text" class="form-control" id="lastName" value="<?php echo $user['surname']; ?>" readonly>
              </div>
            </div>

            <div class="mb-3">
              <label for="email">Email</label>
              <input type="email" class="form-control" id="email" value="<?php echo $user['email']; ?>" readonly>
            </div>

            <div class="mb-3">
              <label for="address">Address</label>
              <input type="text" class="form-control" id="address" value="<?php echo $user['address']; ?>" readonly>
            </div>

            <fieldset>
            <legend class="mb-3">Payment type</legend>
              <div class="d-block my-3">
                <div class="custom-control custom-radio">
                  <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked="" required="">
                  <label class="custom-control-label" for="credit">Credit card</label>
                </div>
                <div class="custom-control custom-radio">
                  <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required="">
                  <label class="custom-control-label" for="debit">Debit card</label>
                </div>
                <div class="custom-control custom-radio">
                  <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required="">
                  <label class="custom-control-label" for="paypal">Paypal</label>
                </div>
              </div>
            </fieldset>
            <hr class="mb-4">
            <button class="btn btn-primary btn-lg btn-block" id="btnCheckout" type="submit">Continue to checkout</button>
          </form>
        </div>
      </div>
</div>
<script>
  var idList = <?php echo json_encode($user['IdList']); ?>;
  var email = <?php echo json_encode($user['email']); ?>;
  var cart = <?php echo json_encode($template['cart']); ?>;
  
  document.getElementById("cart-number").innerHTML = cart.length;

  $('document').ready(function() {
    var values = {
        "idList" : idList
      }
      
    $.post({
      url: "api/checkout.php",
      data: values,
      dataType: "json",
      success: function (response) {
      setTotal(response);
      },
    });
  });

  function setTotal(total) {
    document.getElementById("strongTotal").textContent = total.toFixed(2) + ' \u20AC';
  }

  $('form').on('submit', function(event) {
      event.preventDefault();
      var btnpressed = $(document.activeElement).attr('id'); //bottone premuto

      var values = {
        "btnpressed" : btnpressed,
        "idList": idList,
        "email" : email
      }

      $.post({
      url: "api/checkout.php",
      data: values,
      dataType: "json",
      success: function (response) {
        window.location.href = "successful.php";
      },
    });
  });
</script>
