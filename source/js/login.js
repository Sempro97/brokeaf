$(function () {
  $("form").on("submit", function (event) {
    event.preventDefault();
    values = $(this).serializeArray();
    // values[1].value = hex_sha512(values[1].value);
    $.post({
      url: "api/login.php",
      data: values,
      dataType: "json",
      success: function (response) {
        if (response === "logged") {
          window.location.replace("index.php");
        }
        if (response === "not logged") {
          $("#alert").removeClass();
        }
      },
    });
  });
});