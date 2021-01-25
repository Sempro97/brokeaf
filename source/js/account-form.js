$(function () {
  /* Only if is a user */
  $("#IdList").parent().html("");
  $("#phoneNumber").prev().text("Phone number:");

  $("#password").val("");

  $("form").submit(function (event) {
    event.preventDefault();
    let formData = new FormData(this);
    updateUser(formData);
  });
});

function updateUser(formData) {
  /*   $.post({
    url: "api/add-item.php",
    data: formData,
    dataType: "json",
    contentType: false,
    processData: false,
    success: function (response) {
      if (response === true) {
        showAlert("success", "Item added successfully.");
      } else {
        showAlert("danger", "An error occurred while trying to add the item: " + response);
      }
    },
    error: function (response) {
      showAlert("danger", "An error occurred while trying to add the item.");
    },
  }); */
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
