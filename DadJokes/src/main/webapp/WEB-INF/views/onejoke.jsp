<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dad Jokes for Days</title>
<%@include file="bootstrap.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card text-center">
					<div class="card-body">
						<h8>Joke ID: ${joke.id }</h8>
						<h3>${joke.setUp }</h3>
						<h2>${joke.punchLine }</h2>
					</div>
				</div>
				<div class="col">
					<div class="card text-center">
						<div class="card-body">
							<p>Something wrong with this joke?</p>
							<a href="update.do?jokeId=${joke.id }">Click me to Fix me</a>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>