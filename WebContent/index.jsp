<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 
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
<body>
<jsp:include page="/DealershipServlet"/>
	<nav class="navbar navbar-inverse">
  
    <div class="container-fluid">

      <div class ="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
      	<ul class="nav navbar-nav navbar-right">
      		<li class="active"><a href="#">Home</a></li>
      		<li><a href="#">About</a></li>
      		<li><a href="vehicles.jsp">Vehicles</a></li>
      		<li><a href="#">Contact</a></li>
      		<li><a href="dealershipAdmin.jsp">Admin</a></li>
      	
      	</ul>             
      </div>    
    </div>
  </nav>
  
<div class="jumbotron text-center">
  <h1> Southwell Luxury Automotive Network</h1>
  <p class="lead">Welcome to St. Louis' largest selection of new and certified pre-owned luxury vehicles!</p>
  <hr class="my-4">
  <p>We've improved our process to minimize contact because of Covid-19.</p>
  <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
</div>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<ol class="carousel-indicators">
		<li data-target="myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="myCarousel" data-slide-to="1"></li>
		<li data-target="myCarousel" data-slide-to="2"></li>
	</ol>
  	<div class="carousel-inner" role="listbox">
  		<div class="item active">
  		<img src="https://d9bsjuc785qr1.cloudfront.net/wp-content/uploads/2019/06/25144831/Audi-People-edited.jpg">
  		<div class="carousel-caption">
  			<h1>Check Out Our Inventory</h1>
  			<br>
  			<a class="btn btn-primary btn-lg" href="vehicles.jsp" role="button">Browse</a>
  		</div>
  		</div> <!-- end active slide -->
  		<div class="item"> 
  			<img src="https://www.bentleymotors.com/content/dam/bentley/Master/homepage%20carousel/New%20Flying%20Spur%20emotive%20studio%201920x1080%20v2.jpg/_jcr_content/renditions/original./New%20Flying%20Spur%20emotive%20studio%201920x1080%20v2.jpg"> 
  		</div>
  		<div class="item"> 
  			<img src="https://amro.co.ke/wp-content/uploads/2018/03/2-1.jpg"> 
  		</div>
  	</div>
  	<!-- Start slider controls -->
  	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
  	<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
  	<span class="sr-only">Previous</span>
  	</a>
  	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="prev">
  	<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
  	<span class="sr-only">Next</span>
  	</a>
</div> <!-- End of carousel -->

<div class="container text-center">
	<h2>Our Specialties</h2>
	<div class="row">
		<div class="col-sm-4">
		<img src="https://media.caradvice.com.au/image/private/c_fill,q_auto,f_auto,w_728,h_410/hdfx2yh568qra7x3pj47.jpg" id="icon">
		<h4>New Luxury Vehicles</h4>
		</div>

		<div class="col-sm-4">
		<img src="https://i1.wp.com/d2dgtayfmpkokn.cloudfront.net/wp-content/uploads/sites/190/2019/03/28131712/MY16_BMW_xDrive_Multicar_image_2_960x540.jpg?ssl=1" id="icon">
		<h4>Certified Pre-Owned Vehicles</h4>
		</div>
		
		<div class="col-sm-4">
		<img src="https://a9p9n2x2.stackpathcdn.com/wp-content/blogs.dir/1/files/2014/04/iStock-628262668-1024x636.jpg" id="icon">
		<h4>Financing Options</h4>
		</div>
		
	</div>
</div>

<footer class="container-fluid text-center">
	<div class="row">
		<div class="col-sm-4">
			<h3>Find us:</h3>
			<h4>1234 Fortlands, Basseterre, St. Kitts</h4>
		</div>
		<div class="col-sm-4">
			<h3>Connect with us:</h3>
			<a href="https://www.facebook.com/Economyofstyle" class="fa fa-facebook"></a>
			<a href="https://twitter.com/economyofstyle" class="fa fa-twitter"></a>
			<a href="https://www.instagram.com/economyofstyle/" class="fa fa-instagram"></a>
		</div>
		<div class="col-sm-4">
			<h3>Call us:</h3>
      		<h4>(869) 222-2222</h4>
    	</div>
	</div>
</footer>
</body>
</html>