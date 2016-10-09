<?php
require_once 'core/init.php';
if(Session::exists('home')) {
    echo '<p>' . Session::flash('home'). '</p>';
}
$user = new User(); //Current
if($user->isLoggedIn()) {
?>

<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Lato:300" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/navbar.css">
	<title>Startside</title>
</head>
<body>
	<div class="container-fluid">
		<header>
			<?php include 'includes/slider/slider.php'; ?>
		</header>
		<nav class="main-nav">
			<button class="c-hamburger c-hamburger--htx" id="toggleN">
  				<span>toggle menu</span>
			</button>
			<div class="nav-items">
				<a href="index.php">Hjem</a>
				<a href="#">Billeder</a>
				<a href="#">Videoer</a>
				<a href="#">Kontinenter</a>
				<a href="profile.php?user=<?php echo escape($user->data()->username);?>">Profil</a>
				<?php if($user->hasPermission('admin')) { ?>
				<a href="adminpanel.php">Kontrolpanel</a>
				<?php } ?>
				<a href="logout.php">Log ud</a>
			</div>
		</nav>
		<div class="main">
			<div class="container-fluid">
				<div class="col-md-3 col-xs-12">
					<div class="sideinfo">
						<ul class="citater">
							<?php
							$servername = "localhost";
							$username = "root";
							$password = "";
							$dbname = "berns";

							$conn = new mysqli($servername, $username, $password, $dbname);

							if ($conn->connect_error) {
								die("Connection failed: " . $conn->connect_error);
							} 
							$sql = "SELECT * FROM citater";
							$result = $conn->query($sql);

							if ($result->num_rows > 0) {

								while($row = $result->fetch_assoc()) {
									echo "<li>";
									echo "<h3>''" . $row["citat"] . "''</h3>";
									echo "<p style='font-style: italic; font-size: 16px;'>" . $row["sagtAf"] . ", " . $row["land"] . "</p>";
									echo "</li><br>";
								}
							}
							?>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-xs-12">
					<h1>Seneste</h1>
				</div>
				<div class="col-md-3 col-xs-12">
					<div class="sideinfo">
						<p style="font-size: 45px;">Events</p>
						<ul class="citater">
							<?php
							$servername = "localhost";
							$username = "root";
							$password = "";
							$dbname = "berns";

							$conn = new mysqli($servername, $username, $password, $dbname);

							if ($conn->connect_error) {
								die("Connection failed: " . $conn->connect_error);
							} 
							$sql = "SELECT * FROM events";
							$result = $conn->query($sql);

							if ($result->num_rows > 0) {

								while($row = $result->fetch_assoc()) {
									echo "<li>";
									echo "<h3>" . $row["title"] . "</h3>";
									echo "<p style='font-size: 16px;'>" . $row["beskrivelse"] . "</p>";
									echo "</li><br>";
								}
							}
							?>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
	var  mn = $(".main-nav");

	mns = "main-nav-scrolled";
	hdr = $('header').height();

	$(window).scroll(function() {
		if( $(this).scrollTop() > hdr ) {
			mn.addClass(mns);
		} else {
			mn.removeClass(mns);
		}
	});

	$(document).ready(function() {
		var wwidth = $(window).width();
		var toggles = document.querySelectorAll(".c-hamburger");
		for (var i = toggles.length - 1; i >= 0; i--) {
			var toggle = toggles[i];
			toggleHandler(toggle);
		};
		function toggleHandler(toggle) {
			toggle.addEventListener( "click", function(e) {
				e.preventDefault();
				(this.classList.contains("is-active") === true) ? this.classList.remove("is-active") : this.classList.add("is-active");
			});
		}
	})();
</script>

</html>

<?php
} else {
    Redirect::to('login.php');
}
?>