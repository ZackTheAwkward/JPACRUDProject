<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deleted Brewery</title>
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

<h1>You have Deleted the following Brewery</h1>

<c:choose>
<c:when test="${! empty brewery }">
<div class="delete">
Name: ${brewery.name}
City: ${brewery.city}
State: ${brewery.state}
</div>
</c:when>
<c:otherwise>
<div class="delete">
<p>No Brewery found by that ID</p>
<br>
<p>Please try again</p>
</div>
</c:otherwise>
</c:choose>




</body>
</html>