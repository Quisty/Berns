<!DOCTYPE html>
<html>
<head>
	<?php include 'includes/head.php'; ?>
</head>
<body>

	<!-- Sidebar -->
	<div class="nav-wrapper closeNav">
		<!-- Wrapper for user avatar -->
		<div class="nav-user-wrapper">
			<div class="nav-avatar">
				<img src="img/avatar.jpg">
			</div>
			<div class="nav-user_name">
				<p>Magnus Quist</p>
			</div>
		</div>

		<!-- Devider -->
		<div class="devider"></div>

		<!-- Wrapper for social icons -->
		<div class="nav-social-wrapper">
			<div class="nav-social-item">
				<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
			</div>
			<div class="nav-social-item">
				<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
			</div>
			<div class="nav-social-item">
				<a href="#"><i class="fa fa-snapchat-ghost" aria-hidden="true"></i></a>
			</div>
		</div>

		<!-- Devider -->
		<div class="devider"></div>

		<!-- Wrapper for navigation links -->
		<div class="nav-link-wrapper">
			<div class="nav-link-item">
				<a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i>Senste</a>
			</div>
			<div class="nav-link-item">
				<a href="#"><i class="fa fa-calendar-o" aria-hidden="true"></i>Events</a>
			</div>
			<div class="nav-link-item">
				<a href="countries.php"><i class="fa fa-flag-o" aria-hidden="true"></i>Lande</a>
			</div>
			<div class="nav-link-item">
				<a href="#"><i class="fa fa-file-text-o" aria-hidden="true"></i>Opdateringer</a>
			</div>
		</div>
	</div>

	<!-- Country Picker -->
	<div class="container">
		<div class="row">
			<p class="country-header">
				Vælg et land
			</p>
		</div>
		<div class="flag-wrapper">
			<?php 

			$images = glob('img/countries/*.{jpg,png,gif}', GLOB_BRACE);
			foreach($images as $img) {
				$base = basename($img);
				$baseNoExt = pathinfo($base, PATHINFO_FILENAME);
			?>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="flag-container"> 
  					<a type="butten" data-toggle="modal" data-target="#<?php echo $baseNoExt; ?>"><img src="<?php echo $img; ?>" id="<?php echo $baseNoExt; ?>"></a>
  				</div>
  			</div>
  			<?php } ?>
		</div>
	</div>

	<?php include 'functions/modals.php'; ?>
	<script src="js/swipeNav.js"></script>
</body>
</html>



















