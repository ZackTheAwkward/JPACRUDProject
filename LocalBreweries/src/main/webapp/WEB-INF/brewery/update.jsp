<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update a Brewery</title>
</head>
<body>

<h1>Update a Brewery</h1>

<c:choose>
<c:when test="${! empty brewery}">

<form action="updateBrewery.do" method="POST">

Update any of the fields for the Brewery:

<br>

<input type="hidden" name="id" value="${brewery.id}"/>
Name: <input type="text" name="name" value="${brewery.name}"/>
<br>
City: <input type="text" name="city" value="${brewery.city}"/>
State: <input type="text" name="state" value="${brewery.state}"/>
URL: <input type="text" name="url" value="${brewery.url}"/>
Latitude: <input type="text" name="latitude" value="${brewery.latitude}"/>
Longitude: <input type="text" name="longitude" value="${brewery.longitude}"/>


</form>
</c:when>
<c:otherwise>
Brewery Does not exist
Please try again
</c:otherwise>


</c:choose>




</body>
</html>