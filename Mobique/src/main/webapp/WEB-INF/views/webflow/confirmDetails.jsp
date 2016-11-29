<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring Mvc WebFlow Demo</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
	</head>
 
	<body>
	<body bgcolor="#d9ffb3">
	
	
	</div>
        <div align="right" class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

         <img src="${pageContext.servletContext.contextPath}/resources/Images/5.jpg"  width=100 height=100 align=left> 
	</div>
	<p></p>
	<br><br><br><br><br>
	
			<div class="content">
			<fieldset>
				<legend><h3>Confirm Details</h3></legend>
				<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				<a href="${flowExecutionUrl}"><h3>Home</h3></a><br /><br />
				<p>You have entered  </p>
				<sf:form modelAttribute="userBean">
					<sf:label path="qty">Quantity:</sf:label>${userBean.getQty()}
					<input name="_eventId_submit" type="submit" value="Confirm Details" />
				</sf:form>	
				
				<%-- <sf:form modelAttribute="userBean">
					<sf:label path="userId">UserName:</sf:label>${userBean.userId}
					<br /><br />
					<sf:label path="email">Email Id:</sf:label>${userBean.email}
					<br /><br />
					<sf:label path="age">Age :</sf:label>${userBean.age}
					<br /><br />
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					--> --%>
					<!-- <input name="_eventId_edit" type="submit" value="Edit" /> 
					<input name="_eventId_submit" type="submit" value="Confirm Details" /><br /> -->
				<%-- </sf:form> --%>
			</fieldset>
		</div>
	</body>
</html>