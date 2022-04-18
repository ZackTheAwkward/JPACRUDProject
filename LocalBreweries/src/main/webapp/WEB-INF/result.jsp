<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brewery Details</title>
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

	<h1>Brewery Details</h1>
	<c:choose>
		<c:when test="${! empty brewery }">
			<ul>
				<li>Name: ${brewery.name}</li>
				<li>City: ${brewery.city}</li>
				<li>State: ${brewery.state}</li>
				<li>URL: ${brewery.url}</li>
				<li>Latitude: ${brewery.latitude}</li>
				<li>Longitude: ${brewery.longitude}</li>
			</ul>
		</c:when>
<form action="updated.do" method="GET">
	<input type="hidden" name="id" value="${brewery.id}">
	<input type="submit" name="submit" value="Update Brewery">

</form>


	</c:choose>








</body>
</html>