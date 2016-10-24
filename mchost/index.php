<!DOCTYPE html>
<html>
<head>
	<?php include 'includes/head.php'; ?>
</head>
<body>
	<!-- Adding the preloader to run before everything is loaded -->
	<div id="loader">
		<div id="loader-oa">
			<div id="loader-o1"></div>
			<div id="loader-o2"></div>
			<div id="loader-o3"></div>
		</div>
	</div>

	<!-- Place site content inside seperate div to hide until page is loaded -->
	<div id="body container-fluid">
		<div id="sidebar">
			<button class="c-hamburger c-hamburger--htx" id="toggleN" onclick="show(sidebar)">
				<span>toggle menu</span>
			</button>
			<div class="nav-item nav-c-head">
				<p class="heading"><a href="index.php">MCHost.com</a></p>
			</div>
			<div class="nav-item nav-c-red">
				<a href="#">
					<span class="glyphicon glyphicon-th-large glyph"></span>
					Plans
				</a>
			</div>
			<div class="nav-item nav-c-orange">
				<a href="#">
					<span class="glyphicon glyphicon-list-alt glyph"></span>
					Servers
				</a>
			</div>
			<div class="nav-item nav-c-green">
				<a href="#">
					<span class="glyphicon glyphicon-envelope glyph"></span>
					Contact
				</a>
			</div>
			<div class="nav-item nav-c-purple">
				<a href="#">
					<span class="glyphicon glyphicon-user glyph"></span>
					Login
				</a>
			</div>
			<div class="nav-item-c nav-c-c">
				<p>© 2016-2017 MCHost.com All Rights Reserved</p>
			</div>
		</div>

		<!-- Big picture -->
		<div class="landing">
			<p class="big">Landing page</p>
		</div>

		<!-- Featured plans -->
		<div class="container">
			<div class="row">

				<!-- First card -->
				<div class="col-md-4">
					
				</div>

				<!-- Second card -->
				<div class="col-md-4">

				</div>

				<!-- Third card -->
				<div class="col-md-4">
					
				</div>
			</div>
		</div>



	</div>

	<!-- Scripts implementation -->
	<script src="js/slider.js"></script>
	<script src="js/preloader.js"></script>
	<script src="js/navbar.js"></script>
</body>
</body>
</html>