<div class="container">
	<div class="h1">
		<p class="text-center">Log In</p>
	</div>

	<form method="post" action="login.php" name="signin-form">
		<div class="form-group">
			<label>Email</label>
			<input type="text" name="email" class="form-control" required="required" id="email"/>
		</div>

		<div class="form-group">
			<label>Password</label>
			<input type="password" name="password" class="form-control" required="required" id="password"/>
		</div>

		<div class="d-none invisible" id="alert">
			<div class="alert alert-danger" role="alert">
				Error: invalid email or password!
			</div>
		</div>

		<div class="form-group">
			<input type='button' class="btn btn-primary btn-block" value="Log In" name="but_submit" id="but_submit" onClick="grabCredentials()"/>
		</div>
	</form>

	<div class="form-group">
		<button type="submit" class="btn btn-primary btn-block" onclick="window.location.href='registration.php'">Create account</button>
	</div>
</div>

<script>
	function grabCredentials() {
		var userEmail = document.getElementById("email").value
		var userPassword = document.getElementById("password").value

		$.ajax({
		url:"check-login.php",
		type: "POST",
		data: { email: userEmail, password: userPassword }
	})
		.done(function( error ) {
			if (error === "true") {
				$("#alert").removeClass();
			} else {
				window.location.replace("index.php");
			}
		});
	}

	
</script>
