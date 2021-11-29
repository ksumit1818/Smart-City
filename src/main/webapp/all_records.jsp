<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Smart City : All records</title>
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
					<li class="nav-item"><a class="nav-link" href="add_record.jsp">Add
							Record</a></li>
					<li class="nav-item"><a class="nav-link"
						href="all_records.jsp">View Records</a></li>
				</ul>
				<ul  class="navbar-nav">
				<li class="nav-item"><a class="nav-link"
						href="login.jsp">Log Out</a></li>
				</ul>
			</div>
		</nav><br>
		
		
		<h1 class="text-uppercase">All Notes:</h1>
		<div class="row">
			<div class="col-12"></div>
		</div>
		<%
		Session s = FactoryProvider.getFactory().openSession();
		Query query = s.createQuery("from Record");
		List<Record> list = query.list();
		for (Record record : list) {
		%>

		<div class="card mt-3">
			<img class="card-img-top m-4" style="max-width: 100px"
				src="img/family.png" alt="Card image cap">
			<div class="card-body px-5">
				<h5 class="card-title"><%=record.getFamilyId()%></h5>
				<p class="card-title"><%=record.getFirstName()%></p>
				<p class="card-text"><%=record.getLastName()%></p>
				<div class="container text-center">
					<a href="update_record.jsp?record_familyId=<%=record.getFamilyId()%>"
						class="btn btn-primary m-1">Update</a> 
						<a href="DeleteRecordServlet?record_familyId=<%=record.getFamilyId()%>"
						class="btn btn-danger m-1">Delete</a>
				</div>
			</div>
		</div>

		<%
		}
		s.close();
		%>
	</div>

</body>
</html>