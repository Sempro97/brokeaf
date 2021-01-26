$(function () {
  /* Only if is a user */
  $("#IdList").parent().html("");

  $("#phoneNumber").prev().text("Phone number:");

  /* Hide hashed password */
  $oldPW = $("#password").val();
  $oldSalt = $("#salt").val();
  console.log($oldPW);
  $("#password").val("");
  $("#salt").prev().remove();
  $("#salt");

  $("form").submit(function (event) {
    event.preventDefault();
    //Hash new password
    if ($("#password").val() != "") {
      var password = $("#password").val();
      var hash = hex_sha512(password);
      $("#password").val(hash);
    } else {
      $("#password").val($oldPW);
      $("#salt").val($oldSalt);
    }
    let formData = new FormData(this);
    updateUser(formData);
  });
});

function updateUser(formData) {
  $.post({
    url: "api/update-account.php",
    data: formData,
    dataType: "json",
    contentType: false,
    processData: false,
    success: function (response) {
      if (response === true) {
        $("#password").val("");
        showAlert("success", "Account update successfully.");
      } else {
        $("#password").val("");
        showAlert("danger", "An error occurred while trying to update the account: " + response);
      }
    },
    error: function (response) {
      $("#password").val("");
      showAlert("danger", "Connection error.");
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
