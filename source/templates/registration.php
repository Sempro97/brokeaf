<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
    <title>BrokeAF</title>
    <script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.caret.js" type="text/javascript"></script>
    <script src="js/jquery.mobilePhoneNumber.js" type="text/javascript"></script>
    <script src="js/sha512.js" type="text/javascript"></script>
    <script src="js/utils.js" type="text/javascript"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  </head>

  <body>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-12 rounded pt-2">
          <form method="post" id="singnupFrom" action="check-registration.php" onSubmit="return validation();">
              <h3>Select user type</h3>
              <button type="button" id="buttonUser" class="btn btn-primary" onCLick="changeActive();">User</button>
              <button type="button" id="buttonSeller" class="btn btn-secondary" onCLick="changeActive();">Seller</button>
            <div class="form-group  pt-4">
              <label class="font-weight-bold">Email
                <small class="text-danger"><em>This will be your login email!</em></small>
              </label>
              <div class="input-group">
                <input type="email" name="email" id="email" class="form-control" placeholder="Enter valid email" />
                <div class="input-group-append">
                  <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#next-form" onClick="return emailCheck();">
                    <i class="fa fa-envelope"></i>
                  </button>
                </div>
              </div>
            </div>
            <div id="next-form" class="collapse">
        <div class="form-group">
          <label class="font-weight-bold">Name</label>
          <input type="text" name="name" id="name" class="form-control" placeholder="Insert your name" />
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
            <!--/.next-form-->
          </form>
        </div>
      </div>
    </div>
  </body>
</html>

<?php

    

?>
