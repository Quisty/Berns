<?php
require_once 'core/init.php';

if(!$username = Input::get(user)) {
	Redirect::to('index.php');
} else {
	$user = new User($username);
	if(!$user->exists()) {
		Redirect::to(404);
	} else {
		$data = $user->data();
		?>
		<!DOCTYPE html>
		<html>
		<head>
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
			<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
			<link href="https://fonts.googleapis.com/css?family=Lato:300" rel="stylesheet">
			<link rel="stylesheet" href="css/animate.css">
			<link rel="stylesheet" type="text/css" href="css/bootstrap/bootstrap.css">
			<link rel="stylesheet" type="text/css" href="css/navbar.css">
			<title>Startside</title>
		</head>
		<body>
			<div class="container-fluid">
				<header>
					<p style="font-size: 55px;"><?php echo escape($data->name); ?></p>
					<p style="font-size: 24px; color: #4a89dc;">Profil side</p>
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
							<a href="adminpanel.php">Adminpanel</a>
							<?php } ?>
							<a href="logout.php">Log ud</a>
						</div>
					</nav>
					<div class="main">
						<div class="col-xs-12 col-md-6">
							<div class="panel panel-primary">
								<div class="panel-heading">
								<h3>Opdater din adgangskode</h3>
								</div>
								<div class="panel-body">
									<form action="" method="post">
										<div class="field">
											<label for="current_password">Current Password</label>
											<input type="password" name="current_password" id="current_password">
										</div>

										<div class="field">
											<label for="new_password">New Password</label>
											<input type="password" name="new_password" id="new_password">
										</div>

										<div class="field">
											<label for="new_password_again">New Password Again</label>
											<input type="password" name="new_password_again" id="new_password_again">
										</div>

										<input type="hidden" name="token" id="token" value="<?php echo escape(Token::generate()); ?>">
										<input type="submit" value="Change Password">
									</form>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-md-6">
							<div class="panel panel-primary">
								<div class="panel-heading">
								<h3>Opdater din adgangskode</h3>
								</div>
								<div class="panel-body">
									<form action="" method="post">
										<div class="field">
											<label for="current_password">Current Password</label>
											<input type="password" name="current_password" id="current_password">
										</div>

										<div class="field">
											<label for="new_password">New Password</label>
											<input type="password" name="new_password" id="new_password">
										</div>

										<div class="field">
											<label for="new_password_again">New Password Again</label>
											<input type="password" name="new_password_again" id="new_password_again">
										</div>

										<input type="hidden" name="token" id="token" value="<?php echo escape(Token::generate()); ?>">
										<input type="submit" value="Change Password">
									</form>
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
		}
	}