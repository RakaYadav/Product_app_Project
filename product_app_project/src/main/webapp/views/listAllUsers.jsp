<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./baseall.jsp"%>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Product App</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="homePage">Product
						HomePage</a></li>
				<li class="nav-item"><a class="nav-link" href="addNewUser">Add
						New User</a></li>
				<li class="nav-item"><a class="nav-link" href="logout">Logout</a>
				</li>
			</ul>
		</div>
	</nav>
	<%
	if ("true".equals(request.getAttribute("msg"))) {
	%>
	<h2>User added successfully</h2>
	<%
	}
	%>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Welcome to product app</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Name</th>
							<th scope="col">Email</th>
							<th scope="col">Phone</th>
							<th scope="col">Status</th>
							<th scope="col">Action</th>

						</tr>
					</thead>

					<tbody>
						<c:forEach items="${users}" var="p">
							<tr>
								<th scope="row">PId${p.id }</th>
								<td>${p.name }</td>
								<td>${p.email }</td>
								<td>${p.phone}</td>
								<td>${p.status }</td>
								<td><a href="changeStatus/${p.id}">ChangeStatus</a> <a
									href="remove/${p.id }">Remove</a></td>

							</tr>
						</c:forEach>

					</tbody>

				</table>
			</div>
		</div>
	</div>

</body>
</html>