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
				<li class="nav-item"><a class="nav-link" href="logout">Logout</a>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Welcome to product app</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${product}" var="p">
							<tr>
								<th>Tech${p.pid }</th>
								<td>${p.name }</td>
								<td>${p.description }</td>
								<td>${p.price }</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
				<div class="container text-center">
					<a href="addUserProduct" class="btn btn-primary">Add</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>