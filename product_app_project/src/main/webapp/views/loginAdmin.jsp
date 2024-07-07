<%@page import="java.util.Optional"%>
<%@page import="com.eyiron.product_app_project.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./baseall.jsp"%>
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-4">
				<h2 class="text-center">Admin Login</h2>
				<%
				String msg = (String) request.getAttribute("msg");
				if (msg != null && !msg.isEmpty()) {
				%>
				<h2 class="alert alert-warning alert-dismissible fade show"
					role="alert"><%=msg%></h2>
				<%
				}
				%>
				<form action="adminLogin" method="post">
					<div class="form-group">
						<label for="email">Email:</label> <input type="email"
							class="form-control" id="email" name="email" required>
					</div>
					<div class="form-group">
						<label for="password">Password:</label> <input type="password"
							class="form-control" id="password" name="password" required>
					</div>
					<button type="submit" class="btn btn-primary btn-block">Login</button>
				</form>
				<br>
				<button onclick="window.location.href='userLogin'"
					class="btn btn-secondary btn-block">User Login</button>


			</div>
		</div>
	</div>

</body>
</html>