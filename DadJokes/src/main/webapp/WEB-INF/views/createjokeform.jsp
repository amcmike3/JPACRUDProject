<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Creation Station</title>
<%@include file="bootstrap.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container text-center">
		<div class="row">
			<div class="col align-self-start">
				<div class="card card-body bg-info">
					<p>Adam and Eve were the first ones to ignore Apple's terms and
						conditions.</p>
				</div>
			</div>
			<div class="col align-self-center">
				<br />
				<div class="card card-body bg-info">
					<p>We are hoping you'll follow ours.</p>
				</div>
			</div>
			<br /> <br />
			<div class="col align-self-end">
				<div class="card card-body bg-info">
					<p>Just keep it clean... butt funny</p>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card text-center bg-secondary text-info">
					<div class="card-body "></div>
					<form action="created.do">
						<div class="form-group">
							<label for="setup">Set up</label> <input type="text"
								class="form-control" aria-describedby="setupHelp" name="setUp"
								placeholder="First you set them up"> <small id="setupHelp"
								class="form-text text-white">if you have to explain it
								it probably isn't that good...</small>
						</div>
						<div class="form-group">
							<label for="punchLine">Punch Line</label> <input type="text"
								class="form-control" name="punchLine" placeholder="Then you knock them down">
						</div>
						<h6>1-10 how bad would this embarrass a child</h6>
						<input type="number" max="10" min="1" name="embarassLevel"
							value="1"> <br />
						<h6>1-10 how hard did this make you laugh</h6>
						<input type="number" max="10" min="1" name="laughLevel" value="1">
						<br />
						<h6>1-10 how bad would a hater groan if they heard this</h6>
						<input type="number" max="10" min="1" name="groanLevel" value="1">
						<br />
						<h6>Paste optional image url below:</h6>
						<input type="text" name="imgUrl"> <input type="submit"
							value="Submit">
					</form>
				</div>
			</div>
		</div>
	</div>



	<%@include file="footer.jsp"%>
</body>
</html>