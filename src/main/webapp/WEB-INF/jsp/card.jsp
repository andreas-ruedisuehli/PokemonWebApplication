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
<link rel="stylesheet" href="assets/css/singlecard.css">
<link rel="stylesheet" href="assets/css/styles.css">
<link rel="icon" href="assets/img/pikachu-icon.png">
</head>
<%
boolean isFavourite = false;
boolean isCollection = false;

if (request.getAttribute("isFavourite") != null)
	isFavourite = (Boolean) request.getAttribute("isFavourite");

if (request.getAttribute("isCollection") != null)
	isCollection = (Boolean) request.getAttribute("isCollection");

//System.out.println("isFavourite: "+isFavourite);
//System.out.println("isCollection: "+isCollection);
%>
<body>

	<jsp:include page="header.jsp" />

	<div class="container-fluid">

		<div class="row">

			<div class="col-md-12"
				style="margin-bottom: 0px; margin-left: 70px; margin-top: 100px; z-index: 1;">
				<div class="d-flex justify-content-start">
					<div class="card mx-0 px-0 pt-0" style="width: 18rem;">
						<img
							style="background: url(assets/img/${card.image })no-repeat top; background-size: 100% 100%; height: 400px;"
							class="card-img-top ">
					
					</div>
					<div class="d-flex justify-content-center">

						<div class="align-self-start">
							<%
							if (isFavourite) {
							%>
							<span id="heart" class="liked"><i
								class="fa fa-heart fa-3x"
								style="color: red; margin-left: 60px; margin-top: 30px; z-index: 99;"
								aria-hidden="true"></i> </span> <br>
							<%
							} else {
							%>
							<span id="heart"><i class="fa fa-heart-o fa-3x"
								style="color: red; margin-left: 60px; margin-top: 30px; z-index: 99;"
								aria-hidden="true"></i> </span> <br>

							<%
							}
							%>

							<%
							if (isCollection) {
							%>
							<br> <span id="addCollection" class="liked"><i
								class="fa fa-minus fa-3x" style="color: red; margin-left: 65px; z-index: 99;"
								aria-hidden="true"></i> </span>
							<%
							} else {
							%>
							<br> <span id="addCollection"><i
								class="fa fa-plus fa-3x liked"
								style="color: blue; z-index: 99; margin-left: 65px" aria-hidden="true"></i> </span>
							<%
							}
							%>
						</div>


					</div>
					<div class="d-flex justify-content-end" style="margin-left: 60px;">
						<div class="border-0" style="border: none; margin-top: 30px">
							<p style="font-size:25px;"><b>${card.name }</b></p>
							<p>Rarity: ${card.rarity }</p>
							<p>Set: ${card.set }</p>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		$(document).ready(
			function() {
				$("#heart").click(
						function() {
							var likedValue = false;
							if ($("#heart").hasClass("liked")) {
									$("#heart").html('<i class="fa fa-heart-o fa-3x" aria-hidden="true" style="color: red; margin-left: 60px; margin-top: 30px"></i>');
									$("#heart").removeClass("liked");
							} else {
									$("#heart").html('<i class="fa fa-heart fa-3x" aria-hidden="true" style="color: red; margin-left: 60px; margin-top: 30px"></i>');
									$("#heart").addClass("liked");
									likedValue = true;
							}
							
						var customUrl =	"<%=request.getContextPath()%>"  +"/addRemoveFavourite?cardId=${card.id}&status="+ likedValue;
						console.log(customUrl);
							
							   $.ajax({
								   type:'GET',
								   url :customUrl,
								   success: function(data) {
								        console.log('success',data);
								   },
								   error:function(exception){alert('Exeption:'+exception);}
								}); 
								});
				
				
				$("#addCollection").click(
						function() {
							var likedValue = false;
							if ($("#addCollection").hasClass("liked")) {
								$("#addCollection").html('<i class="fa fa-plus fa-3x" style="color: blue; margin-left: 65px" aria-hidden="true"></i>');
									$("#addCollection").removeClass("liked");
							} else {
								$("#addCollection").html('<i class="fa fa-minus fa-3x" style="color: red; margin-left: 65px" aria-hidden="true"></i>');
								$("#addCollection").addClass("liked");
								likedValue = true;
							}
							
							var customUrl =	"<%=request.getContextPath()%>"
														+ "/addRemoveCollection?cardId=${card.id}&status="
														+ likedValue;
												console.log(customUrl);

												$
														.ajax({
															type : 'GET',
															url : customUrl,
															success : function(
																	data) {
																console
																		.log(
																				'success',
																				data);
															},
															error : function(
																	exception) {
																alert('Exeption:'
																		+ exception);
															}
														});
											});

						});
	</script>
</body>

</html>