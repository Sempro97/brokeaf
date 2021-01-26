$(function () {
  $("#edit").on("submit", function (event) {
    event.preventDefault();
    let formData = new FormData(this);
    editItem(formData);
  });
  $("#delete").on("submit", function (event) {
    event.preventDefault();
    let formData = new FormData(this);
    deleteItem(formData);
  });
});

function deleteItem(formData) {
  $.post({
    url: "api/delete-item.php",
    data: formData,
    dataType: "json",
    contentType: false,
    processData: false,
    success: function (response) {
      if (response === true) {
        window.location.replace("seller-items.php");
      } else {
        showAlert("danger", "An error occurred while trying to delete the item: " + response);
      }
    },
    error: function (response) {
      showAlert("danger", "An error occurred while trying to delete the item.");
    },
  });
}

function editItem(formData) {
  $.post({
    url: "api/edit-item.php",
    data: formData,
    dataType: "json",
    contentType: false,
    processData: false,
    success: function (response) {
      if (response === true) {
        showAlert("success", "Item edited successfully.");
      } else {
        showAlert("danger", "An error occurred while trying to edit the item: " + response);
      }
    },
    error: function (response) {
      showAlert("danger", "An error occurred while trying to edit the item.");
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
