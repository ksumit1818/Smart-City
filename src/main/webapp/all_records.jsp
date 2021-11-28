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
		<%@include file="navbar.jsp"%>
		<br>
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