function emailCheck() {
  if ($("#email").val() == "") {
    $("#email").addClass("is-invalid");
    return false;
  } else {
    var regMail = /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;
    if (regMail.test($("#email").val()) == false) {
      $("#email").addClass("is-invalid");
      return false;
    } else {
      $("#email").removeClass("is-invalid");
    }
  }
}

/* Change button state Seller/User */
function changeActive() {
  var disabled = $("button.btn-primary").removeClass("btn-primary active").attr("disabled", "true");
  var enabled = $("button.btn-secondary").removeClass("btn-secondary disabled").removeAttr("disabled");
  disabled.addClass("btn-secondary disabled");
  enabled.addClass("btn-primary active");
  registrationType();
}

/* Update input fileds fot Seller/User */
function registrationType() {
  if ($("#buttonUser").hasClass("btn-primary")) {
    alert("WARNING! The registration as Seller is only permitted to autorized Company!");
    $("#next-form").html(`
      <div id="next-form">
      
      <div class="form-group">
          <label class="font-weight-bold">Company name</label>
          <input type="text" name="companyName" id="companyName" class="form-control" placeholder="Insert your name" />
        </div>
        <div class="form-group">
          <label class="font-weight-bold">Company complete addres</label>
          <input type="text" name="companyAddress" id="companyAddress" class="form-control" placeholder="Insert your name" />
        </div>

        <div class="form-group">
          <label class="font-weight-bold">Name</label>
          <input type="text" name="name" id="name" class="form-control" placeholder="Insert your name" />
        </div>
        <div class="form-group">
          <label class="font-weight-bold">Surname</label>
          <input type="text" name="surname" id="surname" class="form-control" placeholder="Insert your surname" />
        </div>
        <div class="form-group">
          <label class="font-weight-bold">Phone #</label>
          <input
            type="tel"
            name="phone"
            id="phone"
            class="tel form-control"
            placeholder="(000)-000-0000"
            autocomplete="tel"
          />
        </div>
        <div class="form-group">
          <label class="font-weight-bold">Password</label>
          <input type="password" name="password" id="password" class="form-control" placeholder="***********" />
        </div>
        <div class="form-group">
          <label class="font-weight-bold">Confirm Password</label>
          <input type="password" name="cpassword" id="cpassword" class="form-control" placeholder="***********" />
          <em id="cp"></em>
        </div>

        <div class="form-group">
          <label class="font-weight-bold">CAP</label>
          <input type="text" name="cap" id="cap" class="tel form-control" autocomplete="postal-code" />
        </div>

        <div class="form-group">
          <label class="font-weight-bold">Address</label>
          <input type="text" name="address" id="address" class="tel form-control" autocomplete="address-line1" />
        </div>

        <div class="form-group">
          <label class="font-weight-bold">City</label>
          <input type="text" name="city" id="city" class="tel form-control" autocomplete="address-level2" />
        </div>

        <div class="form-group">
          <label class="font-weight-bold">Province</label>
          <input type="text" name="province" id="province" class="tel form-control" autocomplete="address-level1" />
        </div>

        <div class="form-group">
          <label>
            <input type="checkbox" name="condition" id="condition" /> I agree with the
            <a href="javascript:;">Terms & Conditions</a> for Registration.
          </label>
          <em id="cTeC"></em>
        </div>
        <div class="form-group">
          <input type="submit" name="submit" value="Sign Up" class="btn btn-block btn-danger" />
        </div>
      </div>
      `);
  } else {
    $("#next-form").html(`
      <div id="next-form">
        <div class="form-group">
          <label class="font-weight-bold">Name</label>
          <input type="text" name="name" id="name" class="form-control" placeholder="Insert your name" />
        </div>
        <div class="form-group">
          <label class="font-weight-bold">Surname</label>
          <input type="text" name="surname" id="surname" class="form-control" placeholder="Insert your surname" />
        </div>
        <div class="form-group">
          <label class="font-weight-bold">Phone #</label>
          <input
            type="tel"
            name="phone"
            id="phone"
            class="tel form-control"
            placeholder="(000)-000-0000"
            autocomplete="tel"
          />
        </div>
        <div class="form-group">
          <label class="font-weight-bold">Password</label>
          <input type="password" name="password" id="password" class="form-control" placeholder="***********" />
        </div>
        <div class="form-group">
          <label class="font-weight-bold">Confirm Password</label>
          <input type="password" name="cpassword" id="cpassword" class="form-control" placeholder="***********" />
          <em id="cp"></em>
        </div>

        <div class="form-group">
          <label class="font-weight-bold">CAP</label>
          <input type="text" name="cap" id="cap" class="tel form-control" autocomplete="postal-code" />
        </div>

        <div class="form-group">
          <label class="font-weight-bold">Address</label>
          <input type="text" name="address" id="address" class="tel form-control" autocomplete="address-line1" />
        </div>

        <div class="form-group">
          <label class="font-weight-bold">City</label>
          <input type="text" name="city" id="city" class="tel form-control" autocomplete="address-level2" />
        </div>

        <div class="form-group">
          <label class="font-weight-bold">Province</label>
          <input type="text" name="province" id="province" class="tel form-control" autocomplete="address-level1" />
        </div>

        <div class="form-group">
          <label>
            <input type="checkbox" name="condition" id="condition" /> I agree with the
            <a href="javascript:;">Terms & Conditions</a> for Registration.
          </label>
          <em id="cTeC"></em>
        </div>
        <div class="form-group">
          <input type="submit" name="submit" value="Sign Up" class="btn btn-block btn-danger" />
        </div>
      </div>
      `);
  }
}

/* 
Final control for empty field, password equity.
Execute the crypt password algorithm.
Return false on error.
Return true on success
*/
function validation() {
  /* Check equal password */
  if ($("#password").val() != $("#cpassword").val()) {
    $("#cpassword").addClass("is-invalid");
    $("#cp").html('<span class="text-danger">Password and confirm password not matched!</span>');
    return false;
  }

  /* T&C check */
  if (!document.getElementById("condition").checked) {
    $("#condition").addClass("is-invalid");
    $("#cTeC").html('<span class="text-danger">You must accept T&C!</span>');
    return false;
  }
  //Mark incomplete input
  $("form input").each(function () {
    if ($(this).val() == "") {
      $(this).addClass("is-invalid");
      alert("Error, fields '" + $(this).attr("name") + "' vuoto non permesso");
      return false;
    }
  });
  //Global control
  if ($(".is-invalid").length) {
    return false;
  }

  //All good. Crypt password
  var password = $("#password").val();
  var hash = hex_sha512(password);
  $("#password").val(hash);
  console.log(hash);

  return true;
}

$(document).ready(function (e) {
  $("form input").each(function () {
    $(this).on("keyup", function () {
      if ($(this).val() == "") {
        $(this).addClass("is-invalid");
        return false;
      } else {
        $(this).removeClass("is-invalid");
      }
    });
  });

  $("form").on("submit", function (event) {
    // Stop the form from refreshing the page.
    event.preventDefault();
    if (validation()) {
      // Retrieve the form values.
      let formValues = $(this).serialize();
      // Send the request to the server.
      sendAddItemRequest(formValues);
    } else {
      showAlert("check the highlighted fields!");
    }
  });
});

function sendAddItemRequest(formValues) {
  $.post({
    url: "api/check-registration.php",
    data: formValues,
    dataType: "json",
    success: function (itemAdded) {
      console.log(itemAdded["email"]);
      if (itemAdded["email"] == $("#email").val()) {
        clearForm();
        alert("Nuovo utente creato correttamente! Ora puoi continuare con lo shopping!");
      } else if (itemAdded == "User already exist") {
        showAlert("This email is already registred!");
        clearForm();
      } else if (itemAdded == "User not created, not present") {
        showAlert("An error occurred while trying to add the user.");
      }
    },
    error: function (errorMessage) {
      showAlert("Connection error!.");
    },
  });
}

function showAlert(message) {
  let duration = 5000;
  let classes = "d-none invisible";
  $(".d-none.invisible")
    .hide()
    .text(message)
    .removeClass("d-none invisible")
    .fadeIn()
    .delay(duration)
    .fadeOut(function () {
      $(this).addClass(classes);
    });
}

function clearForm() {
  $("form input").each(function () {
    $(this).val("");
  });
}
