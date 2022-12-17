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
				<p>Adam & Eve were the first ones to ignore Apple's terms and
					conditions.</p>
			</div>
			<div class="col align-self-center">
				<p>We are hoping you'll follow ours.</p>
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
					<form action="created.do">
						<h6>Set Up</h6>
						<input type="text" name="setUp" value="First set them up">
						<br/>
						<h6>Punch Line</h6>
						<input type="text" name="punchLine" value="Then Knock em down">
						<br/>
						<h6>1-10 how bad would this embarrass a child</h6>
						<input type="number" max="10" min="1" name="embarassLevel">
						<br/>
						<h6>1-10 how hard did this make you laugh</h6>
						<input type="number" max="10" min="1" name="laughLevel"> 
						<br/>
						<h6>1-10 how bad would a hater groan if they heard this</h6>
						<input type="number" max="10" min="1" name="groanLevel"> 
						<br/> 
						<h6>Paste optional image url below:</h6>
						<input	type="text" name="imgUrl">
						<input	type="submit" value="Submit">
					</form>
				</div>
			</div>
		</div>
	</div>



	<%@include file="footer.jsp"%>
</body>
</html>