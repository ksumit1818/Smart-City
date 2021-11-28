<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.helper.*,org.hibernate.*,com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Smart City : Reset Password</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		
		<div class="card mt-5 p-5">
			<h2 class="text-danger text-uppercase text-center my-3">Entered Username/Password is Wrong!</h2>
			<br>
			<h3 class="text-uppercase text-center my-3">Please Reset Password</h3>
			<div class="container-fluid" style="max-width: 500px">
				<form action="ResetPasswordServlet" method="post">
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
							type="submit">Reset Password</button>
						<a href="login.jsp">Retry Login?</a>
					</div>
				</form>
			</div>



		</div>


	</div>

</body>
</html>