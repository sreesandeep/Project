<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
  <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<body bgcolor=#ffefcc>
<div class="header">
  <nav class="navbar navbar-default">
  <div class="container-fluid">
  <div class="navbar-header">
				<a class="navbar-brand" href="#"> Mobi Que</a>
			</div>
			
        <div align="right" class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="color:#0000FF;background:#ADDFEE;display:block">
         <img src="${pageContext.servletContext.contextPath}/resources/Images/5.jpg"  width=100 height=100 align=left> 
      <ul class="nav navbar-nav navbar-right">
           <li><a href="index">Home</a></li>
     </ul>
    </div>
  </div>
</nav>
</div>

<style>
.error {
	color: #ff0000;
}
.errorblock {
	color: #000;
	background-color:#ccffeb ;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>
<br>
<body bgcolor=#ccffeb>
	<h2>Customer SignUp Form</h2>

	<form:form method="POST" modelAttribute="customer" action="customer/signup">
		<form:errors path="*" cssClass="errorblock" element="div" />
		<table>
			<tr>
				<td>Name :</td>
				<td><form:input path="name" /></td>
				<td><form:errors path="name" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><form:input path="email" /></td>
				<td><form:errors path="email" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Phone :</td>
				<td><form:input path="phone" /></td>
				<td><form:errors path="phone" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><form:input type="password" path="password" /></td>
				<td><form:errors path="password" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Confirm Password :</td>
				<td><form:input type="password" path="confirmpassword" /></td>
				<td><form:errors path="confirmpassword" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" value="SUBMIT"/></td>
			</tr>
		</table>
	</form:form>

<div align="left" style="color:#0000FF;background:#ADDFEE;">
<font size=4><a href="">About Us</a>&nbsp &nbsp &nbsp <a href="">Contact US</a></font>
   <img src="E:\newworkspace\Mobique\src\main\webapp\Images\fb.png" width=25 height=25 align=right> 
  <img src="E:\newworkspace\Mobique\src\main\webapp\Images\twitter.png" width=25 height=25 align=right>
  <img src="E:\newworkspace\Mobique\src\main\webapp\Images\g+.png" width=25 height=25 align=right>
  </div>
</body>
</html>