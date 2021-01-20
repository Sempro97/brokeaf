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
      $("#next-form").collapse("show");
    }
  }
}
function validation() {
  if ($("#name, #surname, #phone, #password, #cpassword, #cap, #address, #city, #province").val() == "") {
    $("#name, #surname, #phone, #password, #cpassword, #cap, #address, #city, #province").addClass("is-invalid");
    return false;
  } else {
    $("#name, #surname, #phone, #password, #cpassword, #cap, #address, #city, #province").removeClass("is-invalid");
  }

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
      alert("Errore, campo vuoto non permesso");
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

  /*   $("#name").on("keyup", function () {
    if ($("#name").val() == "") {
      $("#name").addClass("is-invalid");
      return false;
    } else {
      $("#name").removeClass("is-invalid");
    }
  });
  $("#surname").on("keyup", function () {
    if ($("#surname").val() == "") {
      $("#surname").addClass("is-invalid");
      return false;
    } else {
      $("#surname").removeClass("is-invalid");
    }
  });
  $("#phone").on("keyup", function () {
    if ($("#phone").val() == "") {
      $("#phone").addClass("is-invalid");
      return false;
    } else {
      $("#phone").removeClass("is-invalid");
    }
  });
  $("#password").on("keyup", function () {
    if ($("#password").val() == "") {
      $("#password").addClass("is-invalid");
      return false;
    } else {
      $("#password").removeClass("is-invalid");
    }
  });
  $("#cpassword").on("keyup", function () {
    if ($("#cpassword").val() == "") {
      $("#cpassword").addClass("is-invalid");
      return false;
    } else {
      $("#cpassword").removeClass("is-invalid");
    }
  });

  $("#cap").on("keyup", function () {
    if ($("#cap").val() == "") {
      $("#cap").addClass("is-invalid");
      return false;
    } else {
      $("#cap").removeClass("is-invalid");
    }
  });

  $("#address").on("keyup", function () {
    if ($("#address").val() == "") {
      $("#address").addClass("is-invalid");
      return false;
    } else {
      $("#address").removeClass("is-invalid");
    }
  });

  $("#city").on("keyup", function () {
    if ($("#city").val() == "") {
      $("#city").addClass("is-invalid");
      return false;
    } else {
      $("#city").removeClass("is-invalid");
    }
  });

  $("#province").on("keyup", function () {
    if ($("#province").val() == "") {
      $("#province").addClass("is-invalid");
      return false;
    } else {
      $("#province").removeClass("is-invalid");
    }
  });

  $("#address").on("keyup", function () {
    if ($("#address").val() == "") {
      $("#address").addClass("is-invalid");
      return false;
    } else {
      $("#address").removeClass("is-invalid");
    }
  }); */

  jQuery(function ($) {
    var input = $("[type=tel]");
    input.mobilePhoneNumber({ allowPhoneWithoutPrefix: "+1" });
    input.bind("country.mobilePhoneNumber", function (e, country) {
      $(".country").text(country || "");
    });
  });
});
