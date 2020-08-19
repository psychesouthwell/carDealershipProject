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
		<h5>Find your dream car at the best price</h5>	
	</div>

<body>

<form action="SearchInventoryServlet" method="post">
<input class="form-control mr-sm-2 col-sm-0" type="search" name="carSearch" placeholder="Search by make or model" aria-label="Search">
    		<button class="btn btn-outline-info my-2 my-sm-0" type="submit">Search</button>
</form>


<div>
<c:if test="${cars !=null}" >
  <c:forEach var="car" items="${cars}">
  	<div class="col-md-4">
      <img src="${car.pic}" style="width:200px;height:auto;"> <br>
      <h3>
	      <c:out value="${car.make}"/>
	      <c:out value="${car.model}"/>
	      <c:out value="${car.year}"/>
	      $<c:out value="${car.price}"/>0
	      <c:out value="${car.type}"/>
	   </h3>
	   <form action="CarDetails">
	   
	   	<input type="hidden" id="vin" name ="vinNumber" value="${car.vinNumber}">
	    <button type="submit" class="btn btn-info">View Details</button>
	   </form>
   	   <a href="CarDetails?vinNumber=${car.vinNumber}">
           
            
       </a>      
 	</div>
   </c:forEach>
</c:if>
</div>

</body>
</html>