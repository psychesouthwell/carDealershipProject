<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html>
<html>
<head>
<title>Southwell Autos</title>
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
	</div>

	<body>

<div id="vinNumber">

<c:if test="${carDetails !=null}" >


 	<img src="${carDetails.pic}" style="width:200px;height:auto;"> <br>
	<table>
			 		<tr>
			 			<td>
			 				<p class="infoHeader">Mileage: </p>
			 			</td>
			 			
			 			<td>
			 				<p><c:out value="${carDetails.mileage}"/></p>
			 			</td>
			 		</tr>
			 		
			 		<tr>
			 			<td>
			 				<p class="infoHeader">New/Used: </p>
			 			</td>
			 			<td>
			 				<p><c:out value="${carDetails.type}"/></p>
			 			</td>
			 		</tr>
			 		
			 		<tr>
			 			<td>
			 				<p class="infoHeader">Vin: </p>
			 			</td>
			 			<td>
			 				<p><c:out value="${carDetails.vinNumber}"/></p>
			 			</td>
			 		</tr>
			 		
			 		<tr>
			 			<td>
			 				<p class="infoHeader">Price: $</p>
			 			</td>
			 			<td>
			 				<p><c:out value="${carDetails.price}"/></p>
			 			</td>
			 		</tr>
			 		
		</table>
</c:if>
</div> 
	
	<br>
   	   <a href="purchase.jsp">
   	   <button type="submit" class="btn btn-info">Purchase Now</button>
   	   </a>
</body>
</html>