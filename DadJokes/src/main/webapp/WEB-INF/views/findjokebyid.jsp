<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Looking for humor</title>
<%@include file="bootstrap.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card text-center">
					<div class="card-body">
						<h1>Find a Joke by ID</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card text-center">
					<div class="card-body">
						<form action="getJoke.do" method="GET">
							<input type="text" name="jokeId" /> <input type="submit"
								value="Send It!" />
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<%@include file="footer.jsp"%>
</body>
</html>