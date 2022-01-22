<!DOCTYPE html>
<%@page
	import="org.springframework.web.servlet.view.tiles3.SpringWildcardServletTilesApplicationContext"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.example.beans.Collection"%>
<%@ page import="com.example.beans.Card"%>
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
<style>
a:link {
	text-decoration: none;
}
</style>
</head>

<body>
	<%
	List<Collection> collectionList = (ArrayList<Collection>) request.getAttribute("collectionList");
	List<Card> cardList = (ArrayList<Card>) request.getAttribute("cardList");
	String currentCollectionName = collectionList.get(0).getName();
	int currentCollectionId = 1;
	%>
	<jsp:include page="header.jsp" />

	<div
		style="background-color: #616161; width: 100%; height: 50px; padding: 10px;">
		<span class="navbar-text"><a
			style="color: #cec909; margin-right: 20px"
			href="<%=request.getContextPath() + "/myCollections"%>">My
				Pokemon</a></span><a style="color: white;" role="button"
			href="<%=request.getContextPath() + "/favourites"%>">Favourites</a>
	</div>

	<div class="container-fluid">

		<%
		if (cardList.size() > 0) {
			currentCollectionName = collectionList.get(cardList.get(0).getCollectionId() - 1).getName();
			currentCollectionId = cardList.get(0).getCollectionId();
		%>

	</div>
	<div class="row">
		<div
			style="background-color: #cec909; width: 100%; margin-left: 10px;">
			<span class="navbar-text" style="color: black; margin-right: 20px"><%=currentCollectionName%></span>
		</div>
		<%
		int i = 0;
		for (; i < cardList.size(); i++) {
			if (currentCollectionId != cardList.get(i).getCollectionId()) {
				currentCollectionName = collectionList.get(cardList.get(i).getCollectionId() - 1).getName();
				currentCollectionId = cardList.get(i).getCollectionId();
		%>
	</div>
	<div class="row">
		<div
			style="background-color: #cec909; width: 100%; margin-left: 10px;">
			<span class="navbar-text" style="color: black; margin-right: 20px"><%=currentCollectionName%></span>
		</div>
		<%
		}
		%>

		<div class="col-lg-2" style="margin-bottom: 10px;">
			<div class="card mx-0 px-0 pt-0" style="width: 18rem;">
				<img
					style="background: url(assets/img/<%=cardList.get(i).getImage()%>)no-repeat top; background-size: 100% 100%; height: 400px;"
					class="card-img-top ">
			<div class="card-body" style="height: 50px">
					<a class="btn btn-primary" type="button" style="margin-top: -10px;"
						href="<%=request.getContextPath() + "/viewCard?id="%><%=cardList.get(i).getId()%>">
						<%=cardList.get(i).getName()%></a>
				</div>
			</div>
		</div>
		<%
		}
		}else{
		%>
		<div>
		No cards stored in My Collection
		</div>
		<%
		}
		%>
		
	</div>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>