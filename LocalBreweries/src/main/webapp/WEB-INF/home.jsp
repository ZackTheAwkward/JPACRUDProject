<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Local Breweries</title>
</head>
<body>


<h1>Local Breweries</h1>


<a href="add.do">Add Brewery to List</a>
<a href="update.do">Update a Brewery</a>
<a href="delete.do">Delete a Brewery from the List</a>
<a href="search.do">Search for a Brewery by ID</a>












	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Brewery Name</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="b" items="${brewery}">
				<tr>
					<td>${b.id }</td>
					<td><a href="getBrewery.do?Id=${b.id}">${b.name}</a></td>
				</tr>
			</c:forEach>



		</tbody>
	</table>





</body>
</html>