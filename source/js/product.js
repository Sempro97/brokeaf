$(function () {
  $.urlParam = function (name) {
    var results = new RegExp("[?&]" + name + "=([^&#]*)").exec(window.location.search);
    return results !== null ? results[1] || 0 : false;
  };

  //remove from cart if = 0
  $("#minus-item").on("click", function () {
    $("#quantity-item").val(function (i, origText) {
      let x = String(Number(origText) - 1);
      if (x == "-1") {
        return 0;
      } else {
        return x;
      }
    });
  });
  //Only increment to 99
  $("#plus-item").on("click", function () {
    $("#quantity-item").val(function (i, origText) {
      let x = String(Number(origText) + 1);
      if (x == "100") {
        return 99;
      } else {
        return x;
      }
    });
  });

  //Insert item to cart if > 0, check Item table quantity, add to user idlist
  $("#add-to-cart").on("click", function () {
    if ($("#quantity-item").val() != 0) {
      //useful link: https://javascript.info/formdata
      let data = new FormData();
      data.append("quantity", $("#quantity-item").val());
      data.append("serialCode", $.urlParam("id"));
      changeCart(data);
    }
  });

  $("form:not(header form)").on("submit", function (event) {
    event.preventDefault();
  });
});

function changeCart(data) {
  $.post({
    url: "api/cart-quantity.php",
    data: data,
    dataType: "json",
    contentType: false,
    processData: false,
    success: function (response) {
      if (response === true) {
        showAlert("success", "Item added successfully.");
        $("form:not(header form)").trigger("reset");
      } else {
        showAlert("danger", "An error occurred while trying to add the item: " + response);
      }
    },
    error: function (response) {
      showAlert("danger", "An error occurred while trying to add the item.");
    },
  });
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
