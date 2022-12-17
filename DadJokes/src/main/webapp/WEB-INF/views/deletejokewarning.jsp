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
						<h1 > Warning!</h1>
						<h2>Are you sure you want to delete this joke?</h2>
						<h2>${joke.setUp }</h2>
						<h2>${joke.punchLine }</h2>
						<p> It has an embarassment level of: ${joke.embarassLevel }</p>
						<p>It has an groan level of: ${joke.groanLevel }</p>
						<p>It has an laugh level of: ${joke.laughLevel }</p>
						<a href="delete.do?jokeId=${joke.id }">YES</a>.............<a href="/">	NO</a>
					</div>
				</div>
				<div class="col">
					<div class="card text-center">
						<div class="card-body">
							<p>Maybe something is just wrong with this joke... lets fix it instead</p>
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