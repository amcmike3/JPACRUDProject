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
				<div class="card border-danger text-center bg-info">
					<div class="card-header text-primary">
						<h8>Joke ID: ${joke.id }</h8>
						<div class="card-title text-primary">
							<h3>${joke.setUp }</h3>
						</div>
					</div>
					<div class="card-body text-black">
						
						<h2>${joke.punchLine }</h2>
						<br />
						<p>Laugh Level:</p>
						<div class="progress">
							<div class="progress-bar progress-bar-striped" role="progressbar"
								aria-label="Default striped example"
								style="width: ${joke.laughLevel * 10 }%"
								aria-valuenow="${joke.laughLevel * 10 }" aria-valuemin="0"
								aria-valuemax="100"></div>
						</div>
						<br />
						<p>Embarrassment Level:</p>
						<div class="progress">
							<div class="progress-bar progress-bar-striped bg-info"
								role="progressbar" aria-label="Info striped example"
								style="width: ${joke.embarassLevel * 10 }%"
								aria-valuenow="${joke.embarassLevel * 10 }" aria-valuemin="0"
								aria-valuemax="100"></div>
						</div>
						<br />
						<p>Groan Level:</p>
						<div class="progress">
							<div class="progress-bar progress-bar-striped bg-warning"
								role="progressbar" aria-label="Warning striped example"
								style="width: ${joke.groanLevel * 10 }%"
								aria-valuenow="${joke.groanLevel * 10 }" aria-valuemin="0"
								aria-valuemax="100"></div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card border-warning text-center">
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