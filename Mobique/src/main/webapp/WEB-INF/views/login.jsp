<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> 
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Login</title>
 
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!--  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script  src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>-->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js">  </script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src = "https://maxcdn.bootstrapcdn.com/font-awesome/4.3.1/css/font-awesome.min.css"></script>
<header id="header">
<div class="top-bar">
<nav class="navbar navbar-inverse" role="banner">
<div class="container">
<div class="row">
<div class="col-sm-6 col-xs-4">
<div class="top-number"><p class="text-muted"><i class="fa fa-phone-square"></i> 9032274688</p></div>
</div>


</nav>
<img src = "${pageContext.servletContext.contextPath}/resources/Images/5.jpg"   width="100" height="100">
</div>
</nav>



<li> <a href="http://localhost:9090/Mobique/"><span class="glyphicon glyphicon-home"><h3>Home</h3></span></a></li>
</div>
</header>

<h1><font color="#CCCCCC"> Login Page</font> </h1>

<div id="login-box">

<h3><font color="#CCCCCC">Login with Username and Password</font></h3>

<c:if test="${not empty error}">
<div class="error">${error}</div>
</c:if>
<c:if test="${not empty msg}">
<div class="msg">${msg}</div>
</c:if>

<form name='loginForm' action="<c:url value='perform_login'/>" method='POST'>

<table>
<tr>
	<td>User:</td>
	<td><input type='text' name='username'></td>
</tr>
<tr>
	<td>Password:</td>
	<td><input type='password' name='password' /></td>
</tr>
<tr>
	<td colspan='2'><input name="submit" type="submit" value="submit" /></td>
</tr>
</table>
 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
</form>
</div>
</body>
</HTML>
