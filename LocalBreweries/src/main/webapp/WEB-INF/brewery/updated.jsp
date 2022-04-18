<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update a Brewery</title>
<jsp:include page="brewerybootstrap.jsp" />

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

<h1>Update a Brewery</h1>

<c:choose>
<c:when test="${! empty brewery}">

<form action="updateBrewery.do" method="POST">
<h5>Update any of the fields for the Brewery:</h5>

<div class="table2">
<input type="hidden" name="id" value="${brewery.id}"/>
<p>Name:	<input class="form-control-sm" type="text" name="name" value="${brewery.name}"/></p>
<br>
<p>City:	<input class="form-control-sm" type="text" name="city" value="${brewery.city}"/></p>
<br>
<p>State:	<input class="form-control-sm" type="text" name="state" value="${brewery.state}"/></p>
<br>
<p>URL:	<input class="form-control-sm" type="text" name="url" value="${brewery.url}"/></p>
<br>
<p>Latitude:	<input class="form-control-sm" type="text" name="latitude" value="${brewery.latitude}"/></p>
<br>
<p>Longitude:	<input class="form-control-sm" type="text" name="longitude" value="${brewery.longitude}"/></p>
<br>
<input type="submit" value="submit"/>
<br>
</div>

</form>
</c:when>
<c:otherwise>
<div class="delete">
<p>Brewery does not exist</p>
<br>
<p>Please try again</p>
</div>
</c:otherwise>


</c:choose>




</body>
</html>