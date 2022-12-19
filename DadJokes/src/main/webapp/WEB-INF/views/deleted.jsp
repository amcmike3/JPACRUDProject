<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Canceled</title>
	<%@include file="bootstrap.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row">
				<div class="col">
					<div class="card text-center">
						<div class="card-body">
						<c:choose>
							<c:when test="${success }">
							<h1>Successfully Deleted</h1>
							</c:when>
							<c:otherwise>
							<h1>Failed to Delete</h1>
							</c:otherwise>
						</c:choose>
						</div>
					</div>
				</div>
		</div>
	</div>

	<%@include file="footer.jsp" %>
</body>
</html>