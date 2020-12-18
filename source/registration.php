<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
    <title>BrokeAF</title>
    <script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.caret.js" type="text/javascript"></script>
    <script src="js/jquery.mobilePhoneNumber.js" type="text/javascript"></script>
    <script src="js/utils.js" type="text/javascript"></script>
    <script src="https://www.google.com/recaptcha/api.js"></script>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="font-awesome/css/all.min.css" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
      crossorigin="anonymous"
    ></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  </head>

  <body>
    <div class="container mt-2 mb-4">
      <div class="row justify-content-md-center">
        <div class="col-sm-4 border border-primary shadow rounded pt-2">
          <div class="col-sm-12">
            <form method="post" id="singnupFrom" onSubmit="return validation();">
              <div class="form-group">
                <label class="font-weight-bold">Email</label>
                <div class="input-group">
                  <input type="email" name="email" id="email" class="form-control" placeholder="Enter valid email" />
                  <div class="input-group-append">
                    <button type="button" class="btn btn-primary" onClick="return emailCheck();">
                      <i class="fa fa-envelope"></i>
                    </button>
                  </div>
                </div>
              </div>
              <div id="next-form" class="collapse">
                <div class="form-group">
                  <label class="font-weight-bold"
                    >User Name <small class="text-danger"><em>This will be your login name!</em></small></label
                  >
                  <input
                    type="text"
                    name="username"
                    id="username"
                    class="form-control"
                    placeholder="Choose your user name"
                  />
                </div>
                <div class="form-group">
                  <label class="font-weight-bold">Phone #</label>
                  <input
                    type="tel"
                    name="phone"
                    id="phone"
                    class="tel form-control"
                    placeholder="(000)-000-0000"
                    x-autocompletetype="tel"
                  />
                </div>
                <div class="form-group">
                  <label class="font-weight-bold">Password</label>
                  <input type="password" name="password" id="password" class="form-control" placeholder="***********" />
                </div>
                <div class="form-group">
                        <label class="font-weight-bold">Confirm Password</label>
                  <input
                    type="password"
                    name="cpassword"
                    id="cpassword"
                    class="form-control"
                    placeholder="***********"
                  />
                  <em id="cp"></em>
                </div>
                <div class="form-group">
                  <label
                    ><input type="checkbox" name="condition" id="condition" /> I agree with the
                    <a href="javascript:;">Terms & Conditions</a> for Registration.</label
                  >
                </div>
                <!-- captcha -->
                  <!-- <div class="form-group">
                      <div class="g-recaptcha" data-sitekey="6LfkcwoaAAAAALbVIvDe9PSD4L0FOUpAk989ZLRQ"></div>
                        <input class="form-control d-none" data-recaptcha="true" required data-error="Please complete the Captcha">
                                  <div class="help-block with-errors"></div>
                    </div> -->
                <div class="form-group">
                  <input type="submit" name="submit" value="Sign Up" class="btn btn-block btn-danger" />
                </div>
              </div>
              <!--/.next-form-->
            </form>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
