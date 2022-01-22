<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="assets/css/card.css">
<link rel="stylesheet" href="assets/css/styles.css">
<link rel="icon" href="assets/img/pikachu-icon.png">
</head>

<body>

	<jsp:include page="header.jsp" />
	
	<div class="container-fluid">
	<br>
	<br>
	<h2>Sword &amp; Shield: <%=request.getAttribute("collectionName") %></h2>

		<div class="row">

			<c:forEach items="${cardList}" var="card">
				<div class="col-lg-2 col-md-3 col-6" style="margin-bottom: 10px;">
					<div class="card mx-0 px-0 pt-0" style="width: 18rem;">
						<img style="background: url(assets/img/${card.image })no-repeat top; background-size: 100% 100%; height: 400px;" 
						 class="card-img-top ">
						<div class="card-body" style="height: 50px">
							<a class="btn btn-primary" style="margin-top: -10px;" type="button"
								href="<%=request.getContextPath() + "/viewCard?id="%>${card.id}">
								${card.name}</a>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>