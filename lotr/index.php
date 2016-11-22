<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="js/materialize/materialize.min.js" type="text/javascript"></script>
	<script src="js/bootstrap/bootstrap.js" type="text/javascript"></script>
	<link href="https://fonts.googleapis.com/css?family=Lato:300" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/animate.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/materialize/materialize.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<title>New Zealand - Lord of the Rings</title>
</head>
<body>

	<!-- Navbar (Fixed) -->
	<div class="navbar-fixed">
		<nav class="grey darken-3">
			<div class="nav-wrapper">
				<a href="index.php" class="brand-logo">New Zealand</a>
				<ul class="right hide-on-med-and-down">
					<li><a data-scroll href="#locations">Filming Locations</a></li>
					<li><a data-scroll href="#timespan">Timespan</a></li>
					<li><a data-scroll href="#tourists">Tourists</a></li>
				</ul>
			</div>
		</nav>
	</div>

	<!-- Content -->
	<div class="parallax-container" style="margin-top: -75px;">
		<div class="parallax"><img src="img/landscape1.jpg"></div>
	</div>



	<div class="grey darken-3" id="locations">
		<div class="slider">
			<ul class="slides">
				<li>
					<img src="img/locations/filming.jpg"> <!-- random image -->
					<div class="caption center-align">
						<h3>Filming Locations</h3>
						<h5 class="light grey-text text-lighten-3">The Lord of The Rings was filmed in the beautiful landscapes in New Zealand</h5>
					</div>
				</li>
				<li>
					<img src="img/locations/matamata.jpg"> <!-- random image -->
					<div class="caption center-align">
						<h3>Matamata</h3>
						<h5 class="light grey-text text-lighten-3">The home place of Hobbits</h5>
					</div>
				</li>
				<li>
					<img src="img/locations/nelson.jpg"> <!-- random image -->
					<div class="caption left-align">
						<h3>Nelson</h3>
						<h5 class="light grey-text text-lighten-3">Creation of the rings</h5>
					</div>
				</li>
				<li>
					<img src="img/locations/canterbury.jpg"> <!-- random image -->
					<div class="caption center-align">
						<h3>Canterbury</h3>
						<h5 class="light grey-text text-lighten-3">Edoras, the city of Rohan</h5>
					</div>
				</li>
				<li>
					<img src="img/locations/mackenzie_country.jpg"> <!-- random image -->
					<div class="caption center-align">
						<h3>Mackenzie Country</h3>
						<h5 class="light grey-text text-lighten-3">The Great Battle</h5>
					</div>
				</li>
				<li>
					<img src="img/locations/southern_lakes.jpg"> <!-- random image -->
					<div class="caption right-align">
						<h3>Southern Lakes</h3>
						<h5 class="light grey-text text-lighten-3">The Two Towers</h5>
					</div>
				</li>
				<li>
					<img src="img/locations/wellington.jpg"> <!-- random image -->
					<div class="caption center-align">
						<h3>Wellington</h3>
						<h5 class="light grey-text text-lighten-3">Hiding from the Black Knights</h5>
					</div>
				</li>
			</ul>
			<div class="grey darken-3" style="height: 50px;"></div>
		</div>
	</div>



	<div class="parallax-container">
		<div class="parallax"><img src="img/landscape2.jpg"></div>
	</div>



	<div class="grey darken-3" id="timespan">
		<div class="slider">
			<ul class="slides">
				<li>
					<img class="fullWidth" src="img/timespan/timeline.jpg">
					<div class="caption center-align">
						<h3>Timespan</h3>
						<h5 class="light grey-text text-lighten-3">Movie Timespan -- Actual Timespan</h5>
					</div>
				</li>
			</ul>
			<div class="grey darken-3" style="height: 50px;"></div>
		</div>
	</div>



	<div class="parallax-container">
		<div class="parallax"><img src="img/landscape3.jpg"></div>
	</div>



	<div class="grey darken-3" id="tourists">
		<div class="slider">
			<ul class="slides">
				<li>
					<img class="fullWidth" src="img/tourists/matamata.jpg">
					<div class="caption center-align">
						<h3>For The Touritsts</h3>
						<h5 class="light grey-text text-lighten-3">The opertunity to see the places in person</h5>
					</div>
				</li>
			</ul>
			<div class="grey darken-3" style="height: 50px;"></div>
		</div>
	</div>


	
	<div class="parallax-container">
		<div class="parallax"><img src="img/landscape4.jpg"></div>
	</div>	
</body>
<script src="js/animations.js"></script>
<script src="js/parallax.js"></script>
<script src="js/smooth-scroll.js"></script>
<script> smoothScroll.init(); </script>
<script src="js/slider.js"></script>
</html>