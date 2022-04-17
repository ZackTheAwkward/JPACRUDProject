<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Brewery</title>
</head>
<body>


	<form action="addBrewery.do" method="post">
	
	<h1>Add a Brewery</h1>
	
	Name: <input type="text" name="name"/>
	<br>
	City: <input type="text" name="city"/>
	<br>
	State: <input type="text" name="state"/>
	<br>
	URL: <input type="text" name="url"/>
	<br>
	Latitude: <input type="text" name="latitude"/>
	<br>
	Longitude: <input type="text" name="longitude"/>
	
	<input type ="submit" value="sumbit"/>

	</form>



</body>
</html>