<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404 not found</title>
	<%@include file="bootstrap.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row">
				<div class="col">
					<div class="card text-center text-danger bg-warning">
						<div class="card-body">
							<h1>404 Page Not Found</h1>
							<h2>404 jokes...</h2>
							<br/>
							<h2>I just can't find the humor in them.</h2>
						</div>
					</div>
				</div>
		</div>
	</div>
		<%@include file="footer.jsp" %>
</body>
</html>