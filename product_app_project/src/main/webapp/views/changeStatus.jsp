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
				<li class="nav-item"><a class="nav-link" href="logout">Logout</a>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h2 class="text-center">Add New User</h2>
				<form action="updateStatus/${users.id }" method="post">
					<div class="form-group">
						<label for="name">Name:</label> <input type="text"
							class="form-control" id="name" name="name" required readonly="readonly" value="${users.name}">
					</div>
					<div class="form-group">
						<label for="email">Email:</label> <input type="email"
							class="form-control" id="email" name="email" required readonly="readonly" value="${users.email }">
					</div>
					<div class="form-group">
						<label for="phone">Phone:</label> <input type="text"
							class="form-control" id="phone" name="phone" required readonly="readonly" value="${users.phone }">
					</div>
					<div class="form-group">
						<label for="status">Status:</label> <select class="form-control"
							id="status" name="status" required >
							<option value="Active">Active</option>
							<option value="Inactive">Inactive</option>
						</select>
					</div>
					<button type="submit" class="btn btn-primary btn-block">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>