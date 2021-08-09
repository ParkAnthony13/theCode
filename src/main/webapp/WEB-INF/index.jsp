<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<title>Insert title here</title>
	</head>
	<body class="container-sm" style="width: 30%;">
		<form method="POST" action="/login"    class="d-flex flex-column ">
			<label>What is the code?<input type="text" name="password"></label>
			<p style="color:red;'"><c:out value="${error}"/></p>
			<button class="btn-primary" style="width: 250px;">Try Code</button>
		</form>
		
		<script src="/webjars/jquery/jquery.min.js"></script>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/app.js"></script>
	</body>
</html>