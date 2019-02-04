<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    
<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title> Home Page </title>

</head>

<body>

	<div>
	
		<h1> Spring Security User Restrictions On Roles Demo </h1> <hr>
	
	</div>
	
	
	
	<!-- User Name and User Roles -->
	
	<div>
	
		<h3>
		
			User-Name: <security:authentication property="principal.username" />
		
		</h3>
		
		<h3>
		
			User-Role: <security:authentication property="principal.authorities" />
		
		</h3>
	
	</div>
	
	<!-- User Name and User Roles -->
	
	
	
	<!-- Display Content For Only EMPLOYEES -->
	
		<security:authorize access="hasRole('EMPLOYEE')">
	
			<!-- Some Links For Navigating EMPLOYEE -->
	
			<div>
	
				<h3>
						<a href="${pageContext.request.contextPath}/employees"> ONLY FOR EMPLOYEE'S </a>
				</h3>
	
			</div>
	
			<!-- Some Links For Navigating EMPLOYEE -->
	
		</security:authorize>
	
	<!-- Display Content For Only EMPLOYEES -->
	
	
	<!-- Display Content For Only MANAGERS -->
	
		<security:authorize access="hasRole('MANAGER')">
	
			<!-- Some Links For Navigating MANAGERS -->
	
			<div>
	
				<h3>
						<a href="${pageContext.request.contextPath}/managers"> ONLY FOR MANAGER'S </a>
				</h3>
	
			</div>
	
			<!-- Some Links For Navigating MANAGERS -->
	
		</security:authorize>
	
	<!-- Display Content For Only MANAGERS -->
	
	
	<!-- Display Content For Only CEOS -->
	
		<security:authorize access="hasRole('CEO')">
	
			<!-- Some Links For Navigating CEOS -->
	
			<div>
	
				<h3>
						<a href="${pageContext.request.contextPath}/ceos"> ONLY FOR CEO'S </a>
				</h3>
	
			</div>
	
			<!-- Some Links For Navigating CEOS -->
	
		</security:authorize>
	
	<!-- Display Content For Only CEOS -->
	
	
	<!-- Logout Functionality -->
	
	<div>
	
		<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	
			<input type="submit" value="Logout">
	
		</form:form>
	
	</div>
	
	<!-- Logout Functionality -->
	
	

</body>

</html>