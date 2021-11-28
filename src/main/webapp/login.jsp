<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Smart City : login</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<div class="card mt-5 p-5">
				<h3 class="text-uppercase text-center my-3">Login</h3>
			<div class="container-fluid" style="max-width: 500px">
				<form action="LoginUser" method="get">
					<div class="form-group">
						<label for="username">Username</label> <input name="username" required
							type="text" class="form-control" id="username"
							aria-describedby="emailHelp" placeholder="Enter email">
					</div>
					<div class="form-group">
						<label for="password">Password</label> <input name="password" required
							type="password" class="form-control" id="password"
							placeholder="Password">
					</div>

					<div class="container text-center">
						<button class="btn btn-outline-primary text-center m-3" type="submit">Log in</button>
					</div>
					
					<div class="container text-center">
						<a href="reset_pass.jsp">Reset Password?</a>
					</div>
				</form>
			</div>
		</div>
</div>
</body>
</html>