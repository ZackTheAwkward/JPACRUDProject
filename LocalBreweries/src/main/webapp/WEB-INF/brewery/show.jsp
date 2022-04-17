<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brewery Details</title>
</head>
<body>

<h1>Brewery Details</h1>

	<div>
		<h5><a href ="${brewery.url}" target="_blank">${brewery.name}</a></h5>
	<p>${brewery.city}, ${brewery.state}</p>
	<p>${brewery.latitude} ${brewery.longitude}</p>
	</div>



</body>
</html>