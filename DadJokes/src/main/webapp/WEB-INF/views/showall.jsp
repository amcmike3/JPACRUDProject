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
							<h1>Home Page!</h1>
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
								Find Joke by ID: <input type="text" name="jokeId" /> <input
									type="submit" value="Send It!" />
							</form>
						</div>
					</div>
				</div>
		</div>
	</div>

	<c:forEach var="joke" items="${jokes }">
		<div class="container">
			<div class="row">
					<div class="col">
						<div class="card text-center">
							<div class="card-body">
							<p>Id: ${joke.id }</p>
								<a href="getJoke.do?jokeId=${joke.id }">${joke.setUp }</a>
							</div>
						</div>
					</div>
				<br/>
			</div>
		</div>
	</c:forEach>
	<%@include file="footer.jsp" %>
</body>
</html>