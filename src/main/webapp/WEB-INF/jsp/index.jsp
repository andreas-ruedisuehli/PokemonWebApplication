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
	<header class="header-dark">
		<nav
			class="navbar navbar-dark navbar-expand-lg navigation-clean-search">
			<div class="container">
				<a class="navbar-brand" href="index.html">CollectPokemon</a>
				<button data-bs-toggle="collapse" class="navbar-toggler"
					data-bs-target="#navcol-1">
					<span class="visually-hidden">Toggle navigation</span><span
						class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navcol-1">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link"
							href="Collections.html">Collections</a></li>
						<li class="nav-item dropdown"><a
							class="dropdown-toggle nav-link" aria-expanded="false"
							data-bs-toggle="dropdown" href="#">Pokemon</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">Generation I</a><a
									class="dropdown-item" href="#">Generation II</a><a
									class="dropdown-item" href="#">Generation III</a><a
									class="dropdown-item" href="#">Generation IV</a><a
									class="dropdown-item" href="#">Generation V</a><a
									class="dropdown-item" href="#">Generation VI</a><a
									class="dropdown-item" href="#">Generation VII</a><a
									class="dropdown-item" href="#">Generation VIII</a>
							</div></li>
					</ul>
					<form class="me-auto" target="_self">
						<div class="d-flex align-items-center">
							<label class="form-label d-flex mb-0" for="search-field"><i
								class="fa fa-search"></i></label><input
								class="form-control search-field" type="search"
								id="search-field" name="search">
						</div>
					</form>
					<span class="navbar-text"><a class="login" href="LogIn.html">Log
							In</a></span><a class="btn btn-light action-button" role="button"
						href="SignUp.html">Sign Up</a>
				</div>
			</div>
		</nav>
	</header>
	<div class="carousel slide" data-bs-ride="carousel" id="carousel-1">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="w-100 d-block"
					src="assets/img/EvolvingSkiesBanner4.jpg" alt="Slide Image">
			</div>
			<div class="carousel-item">
				<img class="w-100 d-block"
					src="assets/img/ChillingReignBanner6.png" alt="Slide Image">
			</div>
			<div class="carousel-item">
				<img class="w-100 d-block"
					src="assets/img/BattleStylesBanner3.png" alt="Slide Image">
			</div>
		</div>
		<div>
			<a class="carousel-control-prev" href="#carousel-1" role="button"
				data-bs-slide="prev"><span class="carousel-control-prev-icon"></span><span
				class="visually-hidden">Previous</span></a><a
				class="carousel-control-next" href="#carousel-1" role="button"
				data-bs-slide="next"><span class="carousel-control-next-icon"></span><span
				class="visually-hidden">Next</span></a>
		</div>
		<ol class="carousel-indicators">
			<li data-bs-target="#carousel-1" data-bs-slide-to="0" class="active"></li>
			<li data-bs-target="#carousel-1" data-bs-slide-to="1"></li>
			<li data-bs-target="#carousel-1" data-bs-slide-to="2"></li>
		</ol>
	</div>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>