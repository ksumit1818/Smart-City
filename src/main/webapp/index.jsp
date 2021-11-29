<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Smart City : Home page</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">


		<nav class="navbar navbar-expand-lg navbar-dark purple">
			<a class="navbar-brand" href="index.jsp">Smart city</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse " id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="login.jsp">Log
							In</a></li>
				</ul>
			</div>
		</nav>



		<br>
		<div class="card mt-5 p-5">
			<h1 class="text-primary text-uppercase text-center my-3">Welcome
				to Smart City</h1>
			<br>
			<h3 class="text-uppercase text-center my-3">Register here</h3>
			<div class="container-fluid" style="max-width: 500px">
				<form action="RegisterUser" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">Username</label> <input
							name="username" required type="text" class="form-control"
							id="username" aria-describedby="emailHelp"
							placeholder="Enter username">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							name="password" required type="password" class="form-control"
							id="password" placeholder="Enter password">
					</div>

					<div class="container text-center">
						<button class="btn btn-outline-primary text-center m-3"
							type="submit">Register</button>
						<a href="login.jsp">Already have Account?</a>
					</div>
				</form>
			</div>



		</div>
	</div>


</body>
</html>