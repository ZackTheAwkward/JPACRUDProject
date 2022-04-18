<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brewery Details</title>
</head>
<body>


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