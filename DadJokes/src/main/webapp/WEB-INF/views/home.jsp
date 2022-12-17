<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dad Jokes for Days</title>
</head>
<body>
	<h1>Daddy tell me a joke</h1>
	
	<c:forEach var="joke" items="${jokes }">
		${joke.setUp }
		<br/>
		${joke.punchLine }
		
	</c:forEach>
	

</body>
</html>