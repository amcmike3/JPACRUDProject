<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Are you Sure?</title>
<%@include file="bootstrap.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>



	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card border-danger text-center bg-light">
					<div class="card-header ">
						<div class="card-title text-danger">
						<h1>Warning!!</h1>
						<br>
						<h2>Are you sure you want to delete this joke?</h2>
						</div>
					</div>
					<div class="card-body text-danger">
						
						<h8>Joke ID: ${joke.id }</h8>
							<h3>${joke.setUp }</h3>
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
						<a href="delete.do?jokeId=${joke.id }" style="color: black;">YES</a>..................<a
							href="/" > NO</a>
							<hr>
							
					</div>
				</div>
				<div class="row"><hr style="color: white;"/><br/><hr/></div>
				<div class="col">
					<div class="card border-warning text-center bg-warning ">
						<div class="card-body">
							<p>How about we fix it instead?</p>
							<a class="text-danger" href="update.do?jokeId=${joke.id }">Click me to Fix me</a>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>