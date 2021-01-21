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

function changeActive() {
  var disabled = $("button.btn-primary").removeClass("btn-primary active");
  var enabled = $("button.btn-secondary").removeClass("btn-secondary disable");
  disabled.addClass("btn-secondary disable");
  enabled.addClass("btn-primary active");
  registrationType();
}

function registrationType() {
  if ($("#buttonSeller").hasClass("btn-primary")) {
    alert("WARNING! The registration as Seller is only permitted to autorized Company!");
    $("#next-form").html(`
      <div id="next-form" class="collapse">
        <div class="form-group">
          <label class="font-weight-bold">Name</label>
          <input type="text" name="name" id="name" class="form-control" placeholder="Choose your name" />
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
      <div id="next-form" class="collapse">
        <div class="form-group">
          <label class="font-weight-bold">Name</label>
          <input type="text" name="name" id="name" class="form-control" placeholder="Choose your name" />
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
  var input = $("[type=tel]");
  input.mobilePhoneNumber({ allowPhoneWithoutPrefix: "+1" });
  input.bind("country.mobilePhoneNumber", function (e, country) {
    $(".country").text(country || "");
  });
}

function validation() {
  if ($("#password").val() != $("#cpassword").val()) {
    $("#cpassword").addClass("is-invalid");
    $("#cp").html('<span class="text-danger">Password and confirm password not matched!</span>');
    return false;
  }

  if (!document.getElementById("condition").checked) {
    $("#condition").addClass("is-invalid");
    $("#cTeC").html('<span class="text-danger">You must accept T&C!</span>');
    return false;
  }
  //Mark incomplete input
  $("form input").each(function () {
    if ($(this).val() == "") {
      $(this).addClass("is-invalid");
      alert("Errore, campo '" + $(this).attr("name") + "' vuoto non permesso");
      return false;
    }
  });
  //Global control
  if ($(".is-invalid").length) {
    return false;
  }
  //Crypt password
  var password = $("#password").val();
  var hash = hex_sha512(password);
  $("#password").val(hash);
  console.log("Password is:".hash);
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
});

jQuery(function ($) {
  var input = $("[type=tel]");
  input.mobilePhoneNumber({ allowPhoneWithoutPrefix: "+1" });
  input.bind("country.mobilePhoneNumber", function (e, country) {
    $(".country").text(country || "");
  });
});
