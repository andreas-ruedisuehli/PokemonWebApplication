<!DOCTYPE html>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.example.beans.Collection"%>
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
	<%
	List<Collection> collectionList = (ArrayList<Collection>) request.getAttribute("collectionList");
	%>
	
	<jsp:include page="header.jsp" />

	<div class="card-group">
		<%
		for (int i = 0; i < 3; i++) {
		%>
		<div class="card">
			<img class="card-img-top w-100 d-block"
				style="background: url(assets/img/<%=collectionList.get(i).getImage()%>); background-size: cover;"
				src="assets/img/<%=collectionList.get(i).getImage()%>">
			<div class="card-body">
				<h4 class="card-title">
					Sword &amp; Shield:
					<%=collectionList.get(i).getName()%>
				</h4>
				<p class="card-text">
					Released:
					<%=collectionList.get(i).getReleased()%><br>Cards in set:
					<%=collectionList.get(i).getCount()%>
				</p>
				<p class="text-center card-text">
					<a class="btn btn-primary" type="button"
						href="<%=request.getContextPath() + "/openCollection?id=" + collectionList.get(i).getId()%>">
						Open Collection </a> <br>
				</p>
			</div>
		</div>
		<%}%>
	</div>

	<div class="card-group">
		<%
		for (int i = 3; i < 6; i++) {
		%>
		<div class="card">
			<img class="card-img-top w-100 d-block"
				style="background: url(assets/img/<%=collectionList.get(i).getImage()%>); background-size: cover;"
				src="assets/img/<%=collectionList.get(i).getImage()%>">
			<div class="card-body">
				<h4 class="card-title">
					Sword &amp; Shield:
					<%=collectionList.get(i).getName()%>
				</h4>
				<p class="card-text">
					Released:
					<%=collectionList.get(i).getReleased()%><br>Cards in set:
					<%=collectionList.get(i).getCount()%>
				</p>
				<p class="text-center card-text">
					<a class="btn btn-primary" type="button"
						href="<%=request.getContextPath() + "/openCollection?id=" + collectionList.get(i).getId()%>">
						Open Collection </a> <br>
				</p>
			</div>
		</div>
		<%}%>
	</div>


	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>