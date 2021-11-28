<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.helper.*,org.hibernate.*,com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Note Taker : Update note</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Edit Your Record</h1>
		<br>
		<%
		int familyId = Integer.parseInt(request.getParameter("record_familyId").trim());
		Session s = FactoryProvider.getFactory().openSession();
		//permanent changes in database wont occur if we dont use this
		Record record = s.get(Record.class, familyId);
		%>
		<form action="UpdateRecordServlet" method="post">
			<!--  type="hidden" -->
			<div class="container form-group p-10 m-10">
				<label for="firstName">Family Id: </label>
				<input value="<%=record.getFamilyId()%>" name="familyId" required type="text"/> <br>
				<label for="firstName">First Name: </label> <input name="firstName"
					required type="text" class="form-control" id="firstName"
					aria-describedby="emailHelp" placeholder="Enter first name"
					value="<%=record.getFirstName()%>" /> <label for="middleName">Middle
					Name: </label> <input name="middleName" required type="text"
					class="form-control" id="middleName" aria-describedby="emailHelp"
					placeholder="Enter middle name" value="<%=record.getMiddleName()%>" />
				<label for="lastName">Last Name: </label> <input name="lastName"
					required type="text" class="form-control" id="lastName"
					aria-describedby="emailHelp" placeholder="Enter last name"
					value="<%=record.getLastName()%>" /> <label for="contact">Contact
					No.: </label> <input name="contact" required type="text"
					class="form-control" id="contact" aria-describedby="emailHelp"
					placeholder="Enter contact number" value="<%=record.getContact()%>" />
				<label for="nationality">Nationality: </label> <input
					name="nationality" required type="text" class="form-control"
					id="nationality" aria-describedby="emailHelp"
					placeholder="Enter Country name"
					value="<%=record.getNationality()%>" /> <label for="state">State:
				</label> <input name="state" required type="text" class="form-control"
					id="state" aria-describedby="emailHelp"
					placeholder="Enter state name" value="<%=record.getState()%>" /> <label
					for="district">District: </label> <input name="district" required
					type="text" class="form-control" id="district"
					aria-describedby="emailHelp" placeholder="Enter district name"
					value="<%=record.getDistrict()%>" /> <label for="city">City/Village:
				</label> <input name="city" required type="text" class="form-control"
					id="city" aria-describedby="emailHelp" placeholder="city name"
					value="<%=record.getCity()%>" /> <label for="ward">Ward
					No.: </label> <input name="ward" required type="text" class="form-control"
					id="ward" aria-describedby="emailHelp"
					placeholder="Enter ward number" value="<%=record.getWard()%>" /> <label
					for="gender">Gender: </label>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="gender" value="male">Male
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="gender" value="female">Female
					</label>
				</div>
				<label for="firstName">DOB: </label> <input name="date" required
					type="date" class="form-control" id="date"
					value="<%=record.getDate()%>">
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Changes</button>
			</div>

		</form>
	</div>
</body>
</html>