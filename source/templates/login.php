    <div class="container">
      <form method="post" action="login.php" name="signin-form">
        <div class="form-group">
          <label for="email">Email</label>
          <input type="text" name="email" class="form-control" required="required" id="email" />
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" name="password" class="form-control" required="required" id="password" />
        </div>
        <div class="d-none invisible" id="alert">
          <div class="alert alert-danger" role="alert">Error: invalid email or password!</div>
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-primary btn-block">Log In</button>
        </div>
      </form>
      <!-- TODO: This should be changed. -->
      <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block" onclick="window.location.href='registration.php'">Create account</button>
      </div>
    </div>
