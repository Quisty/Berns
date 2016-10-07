<?php
require_once 'core/init.php';

if (Input::exists()) {
	if (Token::check(Input::get('token'))) {
		$validate = new Validate();
		$validation = $validate->check($_POST, array(
			'username' => array(
				'required' => true,
				'min' => 2,
				'max' => 20,
				'unique' => 'users'
			),
			'password' => array(
				'required' => true,
				'min' => 6
			),
			'password_again' => array(
				'required' => true,
				'matches' => 'password'
			),
			'name' => array(
				'required' => true,
				'min' => 2,
				'max' => 50
			),

		));

		if ($validation->passed()) {
			$user = new User();

			$salt = Hash::salt(32);

			try {
				$user->create(array(
					'username' => Input::get('username'),
					'password' => Hash::make(Input::get('password'), $salt),
					'salt' => $salt,
					'name' => Input::get('name'),
					'joined' => date('Y-m-d H:i:s'),
					'group' => 1
				));

				Redirect::to('login.php');

			} catch(Exception $e) {
				die($e->getMessage());
			}
		} else {
			foreach ($validation->errors() as $error) {
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
	<link rel="stylesheet" href="css/animate.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/login_register.css">
	<title>Berns 16/17 - Log in</title>
</head>
<body>

	<hgroup>
		<h1>Berns landeside - Opret</h1>
		<h3>Af Magnus Quist</h3>
	</hgroup>
	<form action="" method="post">

		<div class="group">
			<input type="text" name="username" id="username" autocomplete="off"><span class="highlight"></span><span class="bar"></span>
			<label for="username">Brugernavn *</label>
		</div>

		<div class="group">
			<input type="text" name="name" id="name" autocomplete="off"><span class="highlight"></span><span class="bar"></span>
			<label for="name">Fornavn / efternavn *</label>
		</div>

		<div class="group">
			<input type="password" name="password" id="password" autocomplete="off"><span class="highlight"></span><span class="bar"></span>
			<label for="password">Adgangskode *</label>
		</div>

		<div class="group">
			<input type="password" name="password_again" id="password_again" autocomplete="off"><span class="highlight"></span><span class="bar"></span>
			<label for="password_again">Gentag adgangskode *</label>
		</div>

		<input type="hidden" name="token" value="<?php echo Token::generate(); ?>">
		
		<button type="submit" class="button buttonBlue">Opret
			<div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
		</button>

		<p>Har du allerede en bruger? Log in <a href="login.php">her</a></p>

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