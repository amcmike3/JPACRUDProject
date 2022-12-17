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
			<div class="card card-body">
				<p>When the electrician finished fixing the lights I told him
						he really brightened my day.</p>
			</div>
		</div>
		<div class="col align-self-center">
		<br/>
			<div class="card card-body">
			<p>And right now you're brightening it too.</p>
		</div>
		</div>
		<br/>
		<div class="col align-self-end">
			<div class="card card-body">
				<p>keep it clean... butt funny</p>
			</div>
		</div>
	</div>
</div>




	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card text-center">
					<div class="card-body secondary text-info"></div>
					<form action="updated.do">
						<div class="form-group">
							<label for="id"> Joke ID Number</label> <input type="text"
								class="form-control" value="${joke.id }" disabled> <input
								type="text" class="form-control" name="id" value="${joke.id }"
								hidden>
						</div>
						<div class="form-group">
							<label for="setup">Set up</label> <input type="text"
								class="form-control" aria-describedby="setupHelp" name="setUp"
								value="${joke.setUp }"> <small id="setupHelp"
								class="form-text text-muted">if you have to explain it
								it probably isn't that good...</small>
						</div>
						<div class="form-group">
							<label for="punchLine">Punch Line</label> <input type="text"
								class="form-control" name="punchLine" value="${joke.punchLine }">
						</div>

						<h6>1-10 how bad would this embarrass a child</h6>
						<input type="number" max="10" min="1" name="embarassLevel"
							value="${joke.embarassLevel }"> <br />
						<h6>1-10 how hard did this make you laugh</h6>
						<input type="number" max="10" min="1" name="laughLevel"
							value="${joke.laughLevel }"> <br />
						<h6>1-10 how bad would a hater groan if they heard this</h6>
						<input type="number" max="10" min="1" name="groanLevel"
							value="${joke.groanLevel }"> <br />
						<h6>Paste optional image url below:</h6>
						<input type="text" name="imgUrl" value="${joke.imgUrl }">
						<br /> <input type="submit" value="Save">
					</form>
				</div>
			</div>
		</div>
	</div>



	<%@include file="footer.jsp"%>
</body>
</html>