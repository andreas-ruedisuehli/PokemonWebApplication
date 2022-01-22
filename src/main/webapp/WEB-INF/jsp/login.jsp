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

	<section class="login-dark"
		style="background: url(assets/img/Toxtricity.jpg) left/cover no-repeat;">
		<form method="post" action="login" style="opacity: 0.90;">
			<h2 class="visually-hidden">Login Form</h2>
			<div class="illustration"
				style="background: url(assets/img/PikachuTransparent.png) center/contain no-repeat; height: 240px;"></div>
			<div class="mb-3">
				<input class="form-control" type="email" name="email"
					placeholder="Email">
			</div>
			<div class="mb-3">
				<input class="form-control" type="password" name="password"
					placeholder="Password">
			</div>
			<div class="mb-3">
				<button class="btn btn-primary d-block w-100" type="submit">Log
					In</button>
			</div style="display:none;">
			<c:if test="${not empty invalidLogin}">
				<label class="forgot" style="color: red; background-color: white">${invalidLogin}</label>
			</c:if>
		</form>
	</section>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(
				function() {
					$("#form")
					submit(function(event) {
						login($('input[name=email]').val(), $(
								'input[name=password]').val(), true, function(
								result) {
							if (result) {
								window.location.replace("../");
							} else {
								$("#error-modal").modal('show');
								$("#error-text").text("Bad credentials!");
							}
						});
						event.preventDefault();
					});
				});
	</script>
</body>

</html>