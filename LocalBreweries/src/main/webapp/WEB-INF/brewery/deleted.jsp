<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deleted Brewery</title>
</head>
<body>

<h1>You have Deleted the following Brewery</h1>

<c:choose>
<c:when test="${! empty brewery }">
<p>You have successfully deleted this brewery</p>
${brewery.name}
${brewery.city}
${brewery.state}

</c:when>
<c:otherwise>
<p>No Brewery found by that ID</p>
<br>
<p>Please try again</p>
</c:otherwise>
</c:choose>




</body>
</html>