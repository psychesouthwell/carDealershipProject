<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="./Finish/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<nav class="navbar navbar-inverse">
 		 <div class="collapse navbar-collapse" id="myNavbar">
      		<ul class="nav navbar-nav navbar-right">
      		<li class="active"><a href="index.jsp">Home</a></li>
      		</ul>
      	</div>	
	</nav>
	
	<div class="jumbotron text-center">
		<h1>Southwell Luxury Automotive Network</h1>
		<h4>Purchase your car</h4>	
	</div>
<body>

<div class="row">
		<div class="col-md-4">
				<c:out value="${carDetails.year}"/>
				<c:out value="${carDetails.make}"/>
				<c:out value="${carDetails.model}"/>
				<br>
				$<c:out value="${carDetails.price}"/>0
				<br>
				<img src="${carDetails.pic}" style="width:200px;height:auto"><br>
		</div>
		
		<div class="col-md-8">
		
		<h4>Enter details below to check out: </h4>
		
			<form id="Checkout" action="PurchasingServlet" method="post">
				<c:if test="${carDetails.isOldInventory()}">
				<label for="offer">Offer</label>
				<input type="text" name="offer" id="offer" required>
					<c:if test="${goodOffer=false}">Offer is too low.</c:if>
					<br>
				</c:if>
							
				<label for="firstName">First Name</label>
				<input type="text" name="firstName" id="firstName" required>
				<br>
								
				<label for="lastName">Last Name</label>
				<input type="text" name="lastName" id="lastName" required>
				<br>
				
				<label for="address">Address</label>
				<input type="text" name="address" id="address"required>
				<br>
				
				<label for="socialSecurity">Social Security</label>
				<input type="text" name="socialSecurity" id="socialSecurity" required>
				<br>
				
				<input type="hidden" value="${carWanted.vinNumber}" name="vinNumber" id="firstName">
								
				<button type="submit" id="buyButton" class="btn btn-info">Purchase</button>
			</form>
		</div>	

	</div> 


</body>
</html>