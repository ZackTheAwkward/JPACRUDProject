<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0">
<meta charset="UTF-8">
<style>
#map {
	height: 300px;
	width: 600px;
}
</style>

<title>Brewery Details</title>
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





	<h1>Brewery Details</h1>

	<div class="details">
		<h5>
			<a href="${brewery.url}" target="_blank">${brewery.name}</a>
		</h5>
		<h6>${brewery.city}, ${brewery.state}</h6>
	</div>




	<div style="padding: 10px">
		<div id="map"></div>
	</div>

	<script type="text/javascript">
		var map;

		function initMap() {
			var latitude = ${brewery.latitude}; // YOUR LATITUDE VALUE
			var longitude = ${brewery.longitude}; // YOUR LONGITUDE VALUE

			var myLatLng = {
				lat : latitude,
				lng : longitude
			};

			map = new google.maps.Map(document.getElementById('map'), {
				center : myLatLng,
				zoom : 14
			});

			var marker = new google.maps.Marker({
				position : myLatLng,
				map : map,

				title : latitude + ', ' + longitude
			});
		}
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDzy-u0ZqxrRptKkEvuJV7nUwWazekSszQ&callback=initMap"
		async defer></script>

</body>
</html>