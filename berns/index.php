<?php
	include 'conn.php';
?>
<!DOCTYPE html>
<html>
<head>
	<?php include 'core/structure/head.php'; ?>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid container-nav">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand animated pulse" href="index.php"><img src="img/berns_logo.png" class="logo"></a>
			</div>
			<div class="collapse navbar-collapse" id="navbar">
				<ul class="nav navbar-nav">
					<li><a href="pics.php">Billeder</a></li>
					<li><a href="vids.php">Videoer</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Lande <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="kontinenter/asien.php">Asien</a></li>
							<li><a href="kontinenter/afrika.php">Afrika</a></li>
							<li><a href="kontinenter/amerika.php">Amerika</a></li>
							<li><a href="kontinenter/norden.php">Norden</a></li>
							<li><a href="kontinenter/europa.php">Europa</a></li>
						</ul>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="report.php">Fejlmeld</a></li>
					<li><a href="logout.php">Log ud</a></li>
				</ul>
			</div>
		</div>		
	</nav>
	<div class="container-fluid">
		<!-- Slider implementation -->
		<!-- Section one -->
		<div class="slider">
			<?php include 'functions/slider.php'; ?>
		</div>

		<!-- Continent picker -->
		<!-- Section two -->
		<div class="row s2">
			<div class="continents">
				<div class="continent picker">
					<a href="kontinenter/asien.php">
						<div class="flyer">
							<span class="glyphicon glyphicon-send" aria-hidden="true"></span>
							<p>Asien</p>
						</div>
					</a>
				</div>
				<div class="continent picker">
					<a href="kontinenter/afrika.php">
						<div class="flyer">
							<span class="glyphicon glyphicon-send" aria-hidden="true"></span>
							<p>Afrika</p>
						</div>
					</a>
				</div>
				<div class="continent picker">
					<a href="kontinenter/amerika.php">
						<div class="flyer">
							<span class="glyphicon glyphicon-send" aria-hidden="true"></span>
							<p>Amerika</p>
						</div>
					</a>
				</div>
				<div class="continent picker">
					<a href="kontinenter/norden.php">
						<div class="flyer">
							<span class="glyphicon glyphicon-send" aria-hidden="true"></span>
							<p>Norden</p>
						</div>
					</a>
				</div>
				<div class="continent picker">
					<a href="kontinenter/europa.php">
						<div class="flyer">
							<span class="glyphicon glyphicon-send" aria-hidden="true"></span>
							<p>Europa</p>
						</div>
					</a>
				</div>
			</div>
		</div>
		
		<!-- Main content -->
		<div class="main-content">
			<div class="col-xs-12 col-md-3 updates">
				<div class="content-heading">
					<p>Opdateringer</p>
				</div>
				<div class="content-content">
					<ul>
						<?php
						$sql = "SELECT title, description, dateUpdated FROM updates";
						$result = mysqli_query($conn, $sql);
						if (mysqli_num_rows($result) > 0) {
							// output data of each row
							while($row = mysqli_fetch_assoc($result)) {
								echo "<li>";
								echo $row["title"] . "<br>";
								echo $row["description"] . "<br>";
								echo "Dato tilføjet:" . " " . $row["dateUpdated"];
								echo "</li>";
							}
						} else {
							echo "Ingen opdateringer";
						}
						?>
					</ul>
				</div>
			</div>
			<div class="col-xs-12 col-md-6 recent">
				<div class="recent-heading">
					<p>Seneste fra landene</p>
				</div>
				<div class="recent-content">
					
				</div>
			</div>
			<div class="col-xs-12 col-md-3 events">
				<div class="content-heading">
					<p>Events</p>
				</div>
				<div class="content-content">
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>