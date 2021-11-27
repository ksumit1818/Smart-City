<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Smart City : Add Record</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container ">
		<%@include file="navbar.jsp"%>
		<div class="card mt-5 p-5">
			<h3 class="text-uppercase text-center my-3">Add Record</h3>
			<div class="container-fluid" style="max-width: 500px">
				<form action="AddRecord" method="post">
					<div class="form-group">
						<label for="firstName">First Name: </label> <input
							name="firstName" required type="text" class="form-control"
							id="firstName" aria-describedby="emailHelp"
							placeholder="Enter your first name"> <label
							for="middleName">Middle Name: </label> <input name="middleName"
							required type="text" class="form-control" id="middleName"
							aria-describedby="emailHelp" placeholder="Enter middle name">
						<label for="LastName">Last Name: </label> <input name="LastName"
							required type="text" class="form-control" id="LastName"
							aria-describedby="emailHelp" placeholder="Enter last name">
						<label for="familyno">Family No.: </label> <input name="familyNo"
							required type="text" class="form-control" id="familyNo"
							aria-describedby="emailHelp"
							placeholder="Enter family contact number"> <label
							for="nationality">Nationality: </label> <input name="nationality"
							required type="text" class="form-control" id="nationality"
							aria-describedby="emailHelp" placeholder="Enter Country name">
						<label for="state">State: </label> <input name="state" required
							type="text" class="form-control" id="state"
							aria-describedby="emailHelp" placeholder="Enter state name">
						<label for="district">District: </label> <input name="district"
							required type="text" class="form-control" id="district"
							aria-describedby="emailHelp" placeholder="Enter district name">
						<label for="city">City/Village: </label> <input name="city"
							required type="text" class="form-control" id="city"
							aria-describedby="emailHelp" placeholder="city name"> <label
							for="ward">Ward No.: </label> <input name="Enter ward" required
							type="text" class="form-control" id="ward"
							aria-describedby="emailHelp" placeholder="Enter ward number">
						<label for="gender">Gender: </label>
						<div class="form-check">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" name="gender">Male
							</label>
						</div>
						<div class="form-check">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" name="gender">Female
							</label>
						</div>
						<label for="firstName">DOB: </label> <input name="date" required
							type="date" class="form-control" id="date">
					</div>


					<div class="container text-center">
						<button class="btn btn-outline-primary text-center m-3"
							type="submit">Add</button>
					</div>
				</form>
			</div>
		</div>

	</div>

</body>
</html>