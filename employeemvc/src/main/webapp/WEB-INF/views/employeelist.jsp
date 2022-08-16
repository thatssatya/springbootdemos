<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Employee List</title>
</head>
<body>
		<h1>Employee List</h1>
		<table border='1'>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Salary</th>
				<th>Job</th>
			</tr>
			<c:forEach items="${employees}" var="data">
				<tr>
					<td>${data.id}</td>
					<td><a href='/employees/${data.id}'>${data.name}</a></td>
					<td>${data.salary}</td>
					<td>${data.job}</td>
					<td><a href='/employees/delete?paramId=${data.id}'>Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<a href='/employees/create'>Add New Employee</a>
</body>
</html>
