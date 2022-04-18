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





</head>
<body>

	<h1>Brewery Details</h1>

	<div>
		<h5>
			<a href="${brewery.url}" target="_blank">${brewery.name}</a>
		</h5>
		<p>${brewery.city}, ${brewery.state}</p>
		<p>${brewery.latitude}${brewery.longitude}</p>
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