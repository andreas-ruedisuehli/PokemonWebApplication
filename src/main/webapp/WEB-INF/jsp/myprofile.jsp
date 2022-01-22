<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>CollectPokemon</title>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Bitter:400,700">
<link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/Header-Dark.css">
<link rel="stylesheet" href="assets/css/Login-Form-Dark.css">
<link rel="stylesheet"
	href="assets/css/Registration-Form-with-Photo.css">
<link rel="stylesheet" href="assets/css/styles.css">
<link rel="icon" href="assets/img/pikachu-icon.png">
</head>

<body>
	<jsp:include page="header.jsp" />

	<section class="register-photo"
		style="background: url(assets/img/PokemonWallpaper2.png); background-size: cover;">
		<div class="form-container" style="width: 400px;">
			<form method="post" action="updateProfile" onsubmit="return validate()"
				style="background: rgb(30, 40, 51); opacity: 0.90;">
				<h2 class="text-center" style="color: rgb(255, 255, 255);">
					<strong>Update</strong> profile
				</h2>

				<div class="mb-3">
					<input class="form-control" type="email" name="email"
						placeholder="Email">
				</div>
				<div class="mb-3">
					<input class="form-control" type="password" name="password"
						id="pwd" placeholder="Password">
				</div>
				<div class="mb-3">
					<input class="form-control" type="password" name="password-repeat"
						id="pwd2" placeholder="Password (repeat)">
				</div>
				<div class="mb-3">
					<button class="btn btn-primary d-block w-100" type="submit"
						style="background: rgb(33, 74, 128);">Update</button>
				</div>
			</form>
		</div>
	</section>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script>
		function validate() {
			var pwd = document.getElementById("pwd");
			var pwd2 = document.getElementById("pwd2");

			if (pwd.value !== pwd2.value) {
				window.alert("Passwords must match.");
				pwd.focus();
				return false;
			}

			return true;
		}
	</script>
</body>

</html>