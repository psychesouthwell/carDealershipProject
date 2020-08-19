<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Southwell Administration</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="./Finish/style.css">
</head>

<body>
 	<nav class="navbar navbar-inverse">
 		 <div class="collapse navbar-collapse" id="myNavbar">
      		<ul class="nav navbar-nav navbar-right">
      		<li class="active"><a href="index.jsp">Home</a></li>
      		</ul>
      	</div>	
	</nav>
	
	<div class="jumbotron text-center">
		<h1>Southwell Luxury Automotive Network</h1>
		<h5>Administration Only</h5>	
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<h3 style="margin-top:30px">Add New Car</h3>
				
				<form action="AddInventory" method="post">
					<label for="year">Year</label>
					<input type="text" name="year" id="year">
					<br>
					
					<label for="make">Make</label>
					<input type="text" name="make" id="make">
					<br>
					
					<label for="model">Model</label>
					<input type="text" name="model" id="model">
					<br>
					
					<label for="price">Price</label>				
					<input type="text" name="price" id="price">
					<br>
					
					<label for="mileage">Mileage</label>
					<input type="text" name="mileage" id="mileage">
					<br>
					
					<label for="type">New/Used</label>				
					<input type="text" name="type" id="type">
					<br>
					
					<label for="vinNumber">Vin Number</label>				
					<input type="text" name="vinNumber" id="type">
					<br>
					
					<label for="pic">Image path</label>				
					<input type="text" name="pic" id="pic">
					<br>				
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>
			</div> <!-- End row --> 
		
		
		<div class="col-md-7">
				<h3>Dealership Sales Records</h3>
				<table class="table">
					<thead>
					<tr>
					<th scope="col">Name</th>
					<th scope="col">Social</th>
      				<th scope="col">Make</th>
      				<th scope="col">Model</th>
      				<th scope="col">Sale Date</th>
					</tr>
					</thead>
					<c:forEach var="customer" items="${records}">
					
						<tr>
							<td>
								<c:out value="${customer.firstName} "/>
								<c:out value="${customer.lastName}"/>
							</td>
							<td>
								<c:out value="${customer.socialSecurity}"/>
							</td>
							<td>	
	 							<c:out value="${customer.carPurchased.make}"/>
							</td>
							<td>	
								<c:out value="${customer.carPurchased.model}"/>
							</td>
							<td>	
								<c:out value="${customer.purchaseDate}"/>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		
		</div> <!-- End container -->		
	
	<footer class= "container-fluid text-center">
		<p>&copy Southwell, INC 2020</p>
	</footer>
</body>
</html>