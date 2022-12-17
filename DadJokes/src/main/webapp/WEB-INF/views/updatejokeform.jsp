<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="bootstrap.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container text-center">
		<div class="row">
			<div class="col align-self-start">
				<p>When the electrician finished fixing the lights I told him he
					really brightened my day.</p>
			</div>
			<div class="col align-self-center">
				<p>So lets thank you for making us smile.</p>
			</div>
			<div class="col align-self-end">
				<p>Just keep it clean... butt funny</p>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card text-center">
					<div class="card-body secondary"></div>
					<form action="updated.do">
						<h6>Joke ID Number</h6>
						<input type="text" value="${joke.id }" disabled>
						<input type="hidden" name="id" value="${joke.id }">
						<h6>Set Up</h6>
						<input type="text" name="setUp" value="${joke.setUp }">
						<br />
						<h6>Punch Line</h6>
						<input type="text" name="punchLine" value="${joke.punchLine }">
						<br />
						<h6>1-10 how bad would this embarrass a child</h6>
						<input type="number" max="10" min="1" name="embarassLevel" value="${joke.embarassLevel }">
						<br />
						<h6>1-10 how hard did this make you laugh</h6>
						<input type="number" max="10" min="1" name="laughLevel" value="${joke.laughLevel }"> <br />
						<h6>1-10 how bad would a hater groan if they heard this</h6>
						<input type="number" max="10" min="1" name="groanLevel" value="${joke.groanLevel }"> <br />
						<h6>Paste optional image url below:</h6>
						<input type="text" name="imgUrl" value="${joke.imgUrl }"> <input type="submit"
							value="Submit">
					</form>
				</div>
			</div>
		</div>
	</div>



	<%@include file="footer.jsp"%>
</body>
</html>