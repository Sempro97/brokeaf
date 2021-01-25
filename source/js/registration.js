$(function () {
  $("#singnupFrom input[id!='condition'][name!='submit']").each(function () {
    $(this).on("keyup", function () {
      if ($(this).val() == "") {
        $(this).addClass("is-invalid");
        return false;
      } else {
        $(this).removeClass("is-invalid");
      }
    });
  });

  $("#singnupFrom").on("submit", function (event) {
    // Stop the form from refreshing the page.
    event.preventDefault();
    if (validation()) {
      // Retrieve the form values.
      let formData = new FormData(this);
      // Send the request to the server.
      sendAddItemRequest(formData);
    } else {
      showAlert("danger", "check the highlighted fields!");
    }
  });
});

function sendAddItemRequest(formData) {
  $.post({
    url: "api/check-registration.php",
    data: formData,
    dataType: "json",
    contentType: false,
    processData: false,
    success: function (response) {
      if (response === true) {
        clearForm();
        showAlert("success", "Nuovo utente creato correttamente! Ora puoi effettuare il login!");
      } else {
        clearForm();
        showAlert("danger", "An error occurred while trying to add the item: " + response);
      }
    },
    error: function (response) {
      $("#password, #cpassword").val("");
      showAlert("danger", "Connection error!");
    },
  });
}

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
      return true;
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
          <label for="companyName" class="font-weight-bold">Company name</label>
          <input type="text" name="companyName" id="companyName" class="form-control" placeholder="Insert your name" />
        </div>
        <div class="form-group">
          <label for="companyAddress" class="font-weight-bold">Company complete addres</label>
          <input type="text" name="companyAddress" id="companyAddress" class="form-control" placeholder="Insert your name" />
        </div>

        <div class="form-group">
        <label for="name" class="font-weight-bold">Name</label>
        <input type="text" name="name" id="name" class="form-control" placeholder="Insert your name" />
      </div>
      <div class="form-group">
        <label for="surname" class="font-weight-bold">Surname</label>
        <input type="text" name="surname" id="surname" class="form-control" placeholder="Insert your surname" />
      </div>
      <div class="form-group">
        <label for="phone" class="font-weight-bold">Phone #</label>
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
        <label for="password" class="font-weight-bold">Password</label>
        <input type="password" name="password" id="password" class="form-control" placeholder="***********" />
      </div>
      <div class="form-group">
        <label for="cpassword" class="font-weight-bold">Confirm Password</label>
        <input type="password" name="cpassword" id="cpassword" class="form-control" placeholder="***********" />
        <em id="cp"></em>
      </div>

      <div class="form-group">
        <label for="cap" class="font-weight-bold">CAP</label>
        <input type="text" name="cap" id="cap" class="tel form-control" autocomplete="postal-code" />
      </div>

      <div class="form-group">
        <label for="address" class="font-weight-bold">Address</label>
        <input type="text" name="address" id="address" class="tel form-control" autocomplete="address-line1" />
      </div>

      <div class="form-group">
        <label for="city" class="font-weight-bold">City</label>
        <input type="text" name="city" id="city" class="tel form-control" autocomplete="address-level2" />
      </div>

      <div class="form-group">
        <label for="province" class="font-weight-bold">Province</label>
        <input type="text" name="province" id="province" class="tel form-control" autocomplete="address-level1" />
      </div>

      <div class="form-group">
        <label for="condition">
          <input type="checkbox" name="condition" id="condition"/> I agree with the
          <a href="javascript:;">Terms & Conditions</a> for Registration.
        </label>
        <em id="cTeC"></em>
      </div>
      <div class="alert alert-danger d-none invisible" role="alert"></div>
      <div class="form-group">
        <input type="submit" name="submit" value="Sign Up" class="btn btn-block btn-danger"/>
      </div>
    </div>
      `);
  } else {
    $("#next-form").html(`
      <div id="next-form">
      <div class="form-group">
      <label for="name" class="font-weight-bold">Name</label>
      <input type="text" name="name" id="name" class="form-control" placeholder="Insert your name" />
    </div>
    <div class="form-group">
      <label for="surname" class="font-weight-bold">Surname</label>
      <input type="text" name="surname" id="surname" class="form-control" placeholder="Insert your surname" />
    </div>
    <div class="form-group">
      <label for="phone" class="font-weight-bold">Phone #</label>
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
      <label for="password" class="font-weight-bold">Password</label>
      <input type="password" name="password" id="password" class="form-control" placeholder="***********" />
    </div>
    <div class="form-group">
      <label for="cpassword" class="font-weight-bold">Confirm Password</label>
      <input type="password" name="cpassword" id="cpassword" class="form-control" placeholder="***********" />
      <em id="cp"></em>
    </div>

    <div class="form-group">
      <label for="cap" class="font-weight-bold">CAP</label>
      <input type="text" name="cap" id="cap" class="tel form-control" autocomplete="postal-code" />
    </div>

    <div class="form-group">
      <label for="address" class="font-weight-bold">Address</label>
      <input type="text" name="address" id="address" class="tel form-control" autocomplete="address-line1" />
    </div>

    <div class="form-group">
      <label for="city" class="font-weight-bold">City</label>
      <input type="text" name="city" id="city" class="tel form-control" autocomplete="address-level2" />
    </div>

    <div class="form-group">
      <label for="province" class="font-weight-bold">Province</label>
      <input type="text" name="province" id="province" class="tel form-control" autocomplete="address-level1" />
    </div>

    <div class="form-group">
      <label for="condition">
        <input type="checkbox" name="condition" id="condition"/> I agree with the
        <a href="javascript:;">Terms & Conditions</a> for Registration.
      </label>
      <em id="cTeC"></em>
    </div>
    <div class="alert alert-danger d-none invisible" role="alert"></div>
    <div class="form-group">
      <input type="submit" name="submit" value="Sign Up" class="btn btn-block btn-danger"/>
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
  /* Email is valid */
  if (!emailCheck()) {
    return false;
  }
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
  } else {
    $("#condition").removeClass("is-invalid");
  }
  //Mark incomplete input
  $("#singnupFrom input[id!='condition'][name!='submit']").each(function () {
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

function showAlert(type, message) {
  // Set alert to the correct type.
  let alert = $(".alert");
  let alertType = "alert-" + type;
  alert.removeClass("alert-danger alert-success");
  alert.addClass(alertType);
  // Make the alert visible.
  let visibilityClasses = "d-none invisible";
  alert.removeClass(visibilityClasses);
  // Set the alert message.
  alert.text(message);
}

function clearForm() {
  $("#singnupFrom input[id!='condition'][name!='submit']").each(function () {
    $(this).val("");
    $(this).removeClass("is-invalid");
  });
}
