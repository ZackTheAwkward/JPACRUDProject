<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Brewery</title>
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

	<h1>Add a Brewery</h1>
	<form action="addBrewery.do" method="post">
	<div class="table">
	<input class="form-control-sm" type="text" name="name" placeholder="Name"/>
	<br>
	
	<input class="form-control-sm" type="text" name="city" placeholder="City"/>
	<br>
	
	<input class="form-control-sm" type="text" name="state" placeholder="State"/>
	<br>
	
	<input class="form-control-sm" type="text" name="url" placeholder="Website URL"/>
	<br>
	
	<input class="form-control-sm" type="text" name="latitude" placeholder="Latitude"/>
	<br>
	
	<input class="form-control-sm" type="text" name="longitude" placeholder="Longitude"/>
	<br>
	<input type ="submit" value="sumbit"/>
	</div>
	</form>


</body>
</html>