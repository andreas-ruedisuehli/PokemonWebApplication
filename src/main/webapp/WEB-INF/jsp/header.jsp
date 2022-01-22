<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Bitter:400,700">
<link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/Header-Dark.css">

<%
int userId = 0;

if (session.getAttribute("userId") != null)
	userId = (Integer) session.getAttribute("userId");
%>

<header class="header-dark">
	<nav
		class="navbar navbar-dark navbar-expand-lg navigation-clean-search">
		<div class="container">
			<a class="navbar-brand">Pokemon-Collector</a>
			<button data-bs-toggle="collapse" class="navbar-toggler"
				data-bs-target="#navcol-1">
				<span class="visually-hidden">Toggle navigation</span><span
					class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navcol-1">

				<%
				if (userId > 0) {
				%>
				<span class="navbar-text" style="margin-left:5px;"><a class="login"
					href="<%=request.getContextPath() + "/allCollections"%>">
						Collections </a></span> <span class="navbar-text"><a class="login" style="margin-left:5px;"
					href="<%=request.getContextPath() + "/myCollections"%>"> My
						Collections </a></span>
				<form class="me-auto" target="_self" style="margin-left:5px;" action="search" method="post">
					<div class="d-flex align-items-center">
						<label class="form-label d-flex mb-0" for="search-field"><i
							class="fa fa-search"></i></label><input class="form-control search-field"
							type="search" id="search-field" name="search">
					</div>
				</form>

				<%
				} else {
				%>
				<form class="me-auto" target="_self">
					<div class="d-flex align-items-center">
						<input class="form-control search-field" type="search" disabled
							id="search-field" name="search">
					</div>
				</form>
				<%
				}
				if (userId <= 0) {
				%>
				<span class="navbar-text"><a class="login"
					href="<%=request.getContextPath() + "/"%>">Log In</a></span><a
					class="btn btn-light action-button" role="button"
					href="<%=request.getContextPath() + "/signup"%>"
					style="background: #cec909;">Sign Up</a>
				<%
				} else {
				%>
				<span class="navbar-text"><a class="login"
					href="<%=request.getContextPath() + "/myprofile"%>">My Profile</a></span>
				<span class="navbar-text"><a class="login"
					style="margin-left: 15px"
					href="<%=request.getContextPath() + "/logout"%>">Logout</a></span>
				<%
				}
				%>
			</div>
		</div>
	</nav>
</header>
