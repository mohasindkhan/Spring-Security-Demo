<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title> Spring Login Form </title>

<style type="text/css">

	.errmsg
	{
		padding: 10px;
		color: red;
		font-size: 22px;
	}
	
	.logoutmsg
	{
		padding: 10px;
		color: green;
		font-size: 22px;
	}

</style>

</head>

<body>

	<div>

		<h1> Spring Custom Login Form </h1> <hr>

	</div>
	
	<!---------------------------------- Login Form -------------------------------------------->
	
	<form:form action="${pageContext.request.contextPath}/authenticateUser" method="POST">
	
		<c:if test="${param.error != null}">
		
			<h4 class="errmsg"> Sorry!.... You entered Invalid Username or Password </h4>
		
		</c:if>
		
		<c:if test="${param.logout != null}">
		
			<h4 class="logoutmsg"> You successfully logout </h4>
		
		</c:if>
	
		<h2>
			Username: <input type="text" name="username"> 
		</h2>
		
		<h2>
			Password: <input type="password" name="password"> 
		</h2>
		
		<h5>
			<input type="submit" value="Login"> 
		</h5>
	
	</form:form>
	
	<!----------------------------------- Login Form -------------------------------------------->

</body>

</html>