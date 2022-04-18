<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Local Breweries</title>
<jsp:include page="bootstrap.jsp" />
</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home.do">Local Breweries</a>
          </div>
      
    <ul class="navbar-nav ms-auto align-items-center">
      <li class="active"><a class="nav-link mx-2" href="home.do">Home</a></li>
	<li class="nav-item"><a class="nav-link mx-2" href="add.do">Add Brewery to List</a></li>
	<li class="nav-item"><a class="nav-link mx-2" href="update.do">Update a Brewery</a></li>
	<li class="nav-item"><a class="nav-link mx-2" href="delete.do">Delete a Brewery from the List</a></li>
	<li class="nav-item"><a class="nav-link mx-2" href="search.do">Search for a Brewery by ID</a></li>
	</ul>
</div>
</nav>
	<h1>Local Breweries</h1>







<div class="main">


	<table class="table table-borderless">
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


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</div>

</body>
</html>