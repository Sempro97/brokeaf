$(function () {
  $("form").on("submit", function (event) {
    // Stop the form from refreshing the page.
    event.preventDefault();
    // Retrieve the form values.
    let formValues = $(this).serialize();
    // Send the request to the server.
    sendAddItemRequest(formValues);
  });
});

function sendAddItemRequest(formValues) {
  $.post({
    url: "api/add-item.php",
    data: formValues,
    dataType: "json",
    success: function (itemAdded) {
      if (itemAdded === true) {
        // The item was successfully added to the database, now we need to
        // upload the image.
        let image = $("#image")[0].files[0];
        uploadImage(image);
      } else {
        showAlert("An error occurred while trying to add the item.");
      }
    },
  });
}

function uploadImage(image) {
  let formData = new FormData();
  formData.append("image", image);
  $.post({
    url: "api/upload-image.php",
    data: formData,
    dataType: "json",
    contentType: false,
    processData: false,
    success: function (imageUploaded) {
      console.log(imageUploaded);
      if (imageUploaded === true) {
        window.location.replace("index.php");
      } else {
        let errorMessage = imageUploaded;
        showAlert("An error occurred while trying to upload the image: " + errorMessage);
      }
    },
    error: function (errorMessage) {
      showAlert("An error occurred while trying to upload the image.");
    },
  });
}

function showAlert(message) {
  let alert = $(".d-none.invisible");
  let classes = "d-none invisible";
  let duration = 5000;
  alert
    .hide()
    .text(message)
    .removeClass(classes)
    .fadeIn()
    .delay(duration)
    .fadeOut(function () {
      $(this).addClass(classes);
    });
}
