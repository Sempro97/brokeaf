// TODO: Remove red dot from dropdown menu.
function removeNotification(id) {
  $.post({
    url: "api/remove-notification.php",
    data: { id: id },
    dataType: "json",
    success: function (response) {
      if (response === true) {
        $("#notification-" + id).remove();
      } else {
        alert("An error occurred while trying to remove the notification: " + response);
      }
    },
    error: function (response) {
      alert("An error occurred while trying to remove the notification.");
    },
  });
}
