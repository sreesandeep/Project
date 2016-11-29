<!DOCTYPE html>
<html>
<head>
<title>MOBI QUE</title>   

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,.carousel-inner > .item > a > img 
  { 
      width: 70%;
      margin: auto;
  }
  </style>
</head>
<body bgcolor=silver>
<div class="header">
  <nav class="navbar navbar-default">
  <div class="container-fluid">
  <div class="navbar-header">
 
	<a class="navbar-brand" href="#"> <i><strong> Mobi Que<i class="fa fa-cart-plus" aria-hidden="true"></i> </strong> </i></a> 
		</div>
		 <div align="right" class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="color:#0000FF;background:#ADDFEE;display:block">

         <img src="${pageContext.servletContext.contextPath}/resources/Images/5.jpg"  width=100 height=100 align=left> 
 
 <ul class="nav navbar-nav navbar-right">
           <li><a href="index">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Login
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="login">Admin</a></li>
          <li><a href="login">Customer</a></li>
          </ul>
          </li>
          
            <li><a href="customer">Register</a></li>
            <li><a href="recommend">Email</a></li> 
            
     </ul>
    </div>
  </div>
</nav>
</div>


<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>
  
  

  <!-- Wrapper for slides -->

  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="${pageContext.servletContext.contextPath}/resources/Images/1.jpg" alt="Sony">
    </div>

    <div class="item">
      <img src="${pageContext.servletContext.contextPath}/resources/Images/2.jpg" alt="IOS">
    </div>

    <div class="item">
      <img src="${pageContext.servletContext.contextPath}/resources/Images/3.jpg" alt="Windows">
    </div>

    <div class="item">
      <img src="${pageContext.servletContext.contextPath}/resources/Images/4.jpg" alt="Android">
    </div>
  </div>
  
  
  
  
  
  

<!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<br>
<h2><marquee><strong><i> Best Deals</i></strong> </marquee> </h2>
<br>


<div class="container">
   <div class="row">
      <div class="col-md-3" >
         <a href="productTableUsers/AC" class="thumbnail">
         <img src="${pageContext.servletContext.contextPath}/resources/Images/6.jpg"  class="img-rounded"  style="width:500px;height:200px">
         </a>
     </div>
     <div class="col-md-3" >
         <a href="productTableUsers/Android" class="thumbnail">
         <img src="${pageContext.servletContext.contextPath}/resources/Images/7.jpg" alt="" class="img-rounded" style="width:500px;height:200px">
         </a>
    </div>
      <div class="col-md-3" >
         <a href="productTableUsers/IOS" class="thumbnail">
         <img src="${pageContext.servletContext.contextPath}/resources/Images/8.jpg" alt="" class="img-rounded"  style="width:500px;height:200px">
         </a>
    </div>
    </div>
   </div>



<br><br>



<nav class="navbar navbar-inverse navbar-fixed-bottom">
  <div class="container-fluid">
    <div class="navbar-header">
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">About US</a></li>
        <li class="active"><a href="#">CONTACT</a></li>
        </ul>
            <ul class="nav navbar-nav navbar-right">
      <li><a onclick="" class="btn btn-social-icon btn-lg btn-facebook"><i class="fa fa-facebook"></i></a></li>
    </ul>
  </div>
  </div>
</nav>
</body>
</html>