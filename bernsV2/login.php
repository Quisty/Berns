<?php
require_once 'core/init.php';

if (Input::exists()) {
	if (Token::check(Input::get('token'))) {

		$validate = new Validate();
		$validation = $validate->check($_POST, array(
			'username' => array('required' => true),
			'password' => array('required' => true)
		));

		if ($validation->passed()) {
			$user = new User();

			$remember = (Input::get('remember') === 'on') ? true : false;

			$login = $user->login(Input::get('username'), Input::get('password'), $remember);

			if ($login) {
				Redirect::to('index.php');
			} else {
				$loginFailed = 'Forkert adgangskode eller brugernavn.';
			}

		} else {
			foreach($validation->errors() as $error) {
				echo $error, '<br>';
			}
		}

	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/login_register.css">
	<link rel="stylesheet" type="text/css" href="css/errors.css">
	<title>Berns 16/17 - Log in</title>
</head>
<body>
	<hgroup>
		<h1>Berns landeside - Login</h1>
		<h3>Af Magnus Quist</h3>
	</hgroup>
	<form action="" method="post">
		<div class="group">
			<input type="text" name="username" id="username" autocomplete="off"><span class="highlight"></span><span class="bar"></span>
			<label for="username">Username</label>
		</div>

		<div class="group">
			<input type="password" name="password" id="password" autocomplete="off"><span class="highlight"></span><span class="bar"></span>
			<label for="password">Password</label>
		</div>

		<!--
		<div class="group">
			<label for="remember">
				<input type="checkbox" name="remember" id="remember"> Remember me
			</label>
		</div>
		-->

		<input type="hidden" name="token" value="<?php echo Token::generate(); ?>">
		
		<button type="submit" class="button buttonBlue">Log in
			<div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
		</button>

		<p>Har du ikke en bruger? Opret <a href="register.php">her</a></p>

	</form>

	<script type="text/javascript">
	$(window, document, undefined).ready(function() {
		$('input').blur(function() {
			var $this = $(this);
			if ($this.val())
				$this.addClass('used');
			else
				$this.removeClass('used');
		});
		var $ripples = $('.ripples');
		$ripples.on('click.Ripples', function(e) {
			var $this = $(this);
			var $offset = $this.parent().offset();
			var $circle = $this.find('.ripplesCircle');
			var x = e.pageX - $offset.left;
			var y = e.pageY - $offset.top;
			$circle.css({
				top: y + 'px',
				left: x + 'px'
			});
			$this.addClass('is-active');
		});
		$ripples.on('animationend webkitAnimationEnd mozAnimationEnd oanimationend MSAnimationEnd', function(e) {
			$(this).removeClass('is-active');
		});
	});
	</script>
</body>
</html>