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
				<a href="adminpanel.php">Adminpanel</a>
				<?php } ?>
				<a href="logout.php">Log ud</a>
			</div>
		</nav>
		<div class="main">
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent scelerisque maximus massa, at tempor magna volutpat ac. Nullam ornare fringilla dolor ut convallis. Nam accumsan metus egestas, tincidunt metus vel, eleifend neque. Mauris felis metus, auctor eget orci ac, volutpat placerat est. Etiam fringilla mi purus, et feugiat augue consectetur vitae. Aliquam erat volutpat. Nullam dignissim augue ac ex viverra laoreet. In hac habitasse platea dictumst.

Suspendisse non est mollis, tempus ligula et, gravida lacus. Sed rutrum sit amet diam eget accumsan. Aliquam bibendum ipsum vitae erat ornare venenatis. Vestibulum vitae orci efficitur, ultricies turpis at, varius orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus at egestas mauris. Aenean nunc elit, tincidunt a pharetra ac, placerat eu mauris.

Vivamus eu vestibulum mi. Etiam non sollicitudin purus, ac pretium metus. Maecenas sit amet pretium diam. Mauris eu dictum est, nec vestibulum lorem. Curabitur nec rutrum eros, nec porttitor sem. Donec mollis ipsum vitae quam gravida, quis faucibus leo dapibus. Aliquam fringilla egestas euismod. Quisque vestibulum laoreet ante at scelerisque.

Fusce diam purus, ornare eu pharetra eu, ultrices non quam. Nunc at elit aliquam, iaculis velit a, tristique justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam facilisis nunc eget libero mattis, sit amet feugiat neque dictum. Vestibulum vel aliquet purus. Aenean non pellentesque diam. Donec orci turpis, finibus vitae semper eu, placerat sit amet ligula. Aliquam faucibus dui sit amet odio posuere lobortis. Donec odio leo, dapibus imperdiet sapien et, elementum interdum nibh. Aenean sed purus dolor. Nam ultrices odio lorem, vel auctor sapien rutrum non. Nunc sodales nisi a massa eleifend tempus. Etiam iaculis augue sapien, placerat elementum nisl pretium ac. Nunc convallis massa est, eu tempus metus congue sed.

Morbi porta lobortis felis et cursus. Nunc ac arcu id urna vulputate molestie. Pellentesque tempus varius eros a sagittis. Nunc nec fringilla erat. Curabitur bibendum laoreet purus, eu consectetur urna vehicula at. In hac habitasse platea dictumst. Proin sit amet nisi arcu. Fusce gravida vulputate eros, in maximus libero ultrices et. Ut id elit in risus volutpat accumsan laoreet id ligula. Nunc a dui egestas, tempus est ac, dignissim tellus. Integer nec dui dolor. Pellentesque vel velit felis. Proin viverra turpis ut nisi porta, sed tristique ex malesuada. Aliquam tincidunt enim neque, at gravida purus cursus nec. Nulla mattis quam a lectus vulputate scelerisque.

Proin eget justo in enim ultricies fermentum eget vel tellus. Sed non dui id dolor tincidunt fringilla. Sed tincidunt, leo ut efficitur lobortis, augue urna blandit augue, sed volutpat risus enim nec quam. Proin eros dui, consequat a tellus at, mattis sollicitudin ex. Maecenas vitae dui laoreet, elementum lorem bibendum, volutpat elit. Vivamus vitae tortor rutrum, rhoncus nunc sed, porta erat. Curabitur nec erat augue. Nulla venenatis quam massa, vel mattis magna sodales lobortis.

Fusce dapibus velit ut lacus ullamcorper hendrerit. Pellentesque non lorem tortor. Fusce vitae magna mauris. Mauris eu neque sed mauris blandit lobortis. In ac arcu ex. Quisque laoreet ligula non felis aliquet luctus. Aliquam erat volutpat. Donec gravida gravida libero nec tempor. Integer ex urna, pretium nec nisi sed, egestas consectetur lorem. Pellentesque vel sapien nec eros gravida tincidunt. Morbi pulvinar in urna at hendrerit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Integer dictum diam a varius tincidunt.

Suspendisse non lorem quam. Nam a congue augue. Nullam et fermentum lacus. Duis non dapibus ipsum. Pellentesque malesuada nisi arcu, vel commodo felis cursus dictum. Nam lacinia iaculis nulla, quis tristique dolor condimentum eu. Quisque consequat, nulla sit amet faucibus pellentesque, ligula felis finibus nisl, vitae tincidunt dui purus et metus. Aenean id nibh nec quam tincidunt scelerisque a molestie justo. Aliquam erat volutpat. Sed nec egestas dolor. Fusce elementum ultricies odio, ac dignissim dui pharetra sit amet. Duis vestibulum volutpat dignissim. Vestibulum ornare felis a interdum iaculis. Aenean ac ultricies elit.

Nunc risus eros, hendrerit eget ex vitae, rhoncus lacinia arcu. In hendrerit orci in porttitor ullamcorper. Quisque nec volutpat est. Morbi nec tellus sit amet erat pretium pulvinar vel at eros. Sed ac urna eget tellus pharetra viverra. Ut tincidunt commodo arcu. Donec ullamcorper, mauris id semper blandit, lacus sapien efficitur enim, eget varius diam enim eget est. Etiam eget sem a metus ultrices bibendum. In pellentesque metus nibh, rutrum molestie est sodales vitae. Phasellus sollicitudin lorem quis sapien pulvinar ullamcorper. Suspendisse arcu erat, euismod et arcu in, malesuada molestie mi. Cras finibus, nunc eu porttitor cursus, nisl sem aliquam risus, vel rhoncus sem mauris et magna. Sed id egestas mi. In non nunc lorem.

Curabitur egestas porttitor viverra. Praesent ut massa velit. In bibendum aliquam pretium. Ut enim arcu, pulvinar imperdiet porttitor ut, rutrum ac lacus. Suspendisse pretium id nibh ut cursus. Mauris aliquet velit eget sodales facilisis. Duis consequat, leo et tempor dapibus, lorem libero placerat diam, quis dapibus massa orci in neque. Maecenas volutpat, purus feugiat interdum condimentum, dui quam commodo lacus, sed pretium dolor nulla vitae odio. Sed efficitur feugiat enim congue venenatis. Aliquam erat volutpat. In non lacus nisi. Etiam condimentum placerat auctor. Cras ut feugiat tellus. In luctus ullamcorper quam eu aliquam. Mauris malesuada ipsum in ultricies viverra. Nulla placerat, nulla vel dictum sodales, ligula purus porttitor augue, sit amet ornare nunc nunc at dolor.</p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent scelerisque maximus massa, at tempor magna volutpat ac. Nullam ornare fringilla dolor ut convallis. Nam accumsan metus egestas, tincidunt metus vel, eleifend neque. Mauris felis metus, auctor eget orci ac, volutpat placerat est. Etiam fringilla mi purus, et feugiat augue consectetur vitae. Aliquam erat volutpat. Nullam dignissim augue ac ex viverra laoreet. In hac habitasse platea dictumst.

Suspendisse non est mollis, tempus ligula et, gravida lacus. Sed rutrum sit amet diam eget accumsan. Aliquam bibendum ipsum vitae erat ornare venenatis. Vestibulum vitae orci efficitur, ultricies turpis at, varius orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus at egestas mauris. Aenean nunc elit, tincidunt a pharetra ac, placerat eu mauris.

Vivamus eu vestibulum mi. Etiam non sollicitudin purus, ac pretium metus. Maecenas sit amet pretium diam. Mauris eu dictum est, nec vestibulum lorem. Curabitur nec rutrum eros, nec porttitor sem. Donec mollis ipsum vitae quam gravida, quis faucibus leo dapibus. Aliquam fringilla egestas euismod. Quisque vestibulum laoreet ante at scelerisque.

Fusce diam purus, ornare eu pharetra eu, ultrices non quam. Nunc at elit aliquam, iaculis velit a, tristique justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam facilisis nunc eget libero mattis, sit amet feugiat neque dictum. Vestibulum vel aliquet purus. Aenean non pellentesque diam. Donec orci turpis, finibus vitae semper eu, placerat sit amet ligula. Aliquam faucibus dui sit amet odio posuere lobortis. Donec odio leo, dapibus imperdiet sapien et, elementum interdum nibh. Aenean sed purus dolor. Nam ultrices odio lorem, vel auctor sapien rutrum non. Nunc sodales nisi a massa eleifend tempus. Etiam iaculis augue sapien, placerat elementum nisl pretium ac. Nunc convallis massa est, eu tempus metus congue sed.

Morbi porta lobortis felis et cursus. Nunc ac arcu id urna vulputate molestie. Pellentesque tempus varius eros a sagittis. Nunc nec fringilla erat. Curabitur bibendum laoreet purus, eu consectetur urna vehicula at. In hac habitasse platea dictumst. Proin sit amet nisi arcu. Fusce gravida vulputate eros, in maximus libero ultrices et. Ut id elit in risus volutpat accumsan laoreet id ligula. Nunc a dui egestas, tempus est ac, dignissim tellus. Integer nec dui dolor. Pellentesque vel velit felis. Proin viverra turpis ut nisi porta, sed tristique ex malesuada. Aliquam tincidunt enim neque, at gravida purus cursus nec. Nulla mattis quam a lectus vulputate scelerisque.

Proin eget justo in enim ultricies fermentum eget vel tellus. Sed non dui id dolor tincidunt fringilla. Sed tincidunt, leo ut efficitur lobortis, augue urna blandit augue, sed volutpat risus enim nec quam. Proin eros dui, consequat a tellus at, mattis sollicitudin ex. Maecenas vitae dui laoreet, elementum lorem bibendum, volutpat elit. Vivamus vitae tortor rutrum, rhoncus nunc sed, porta erat. Curabitur nec erat augue. Nulla venenatis quam massa, vel mattis magna sodales lobortis.

Fusce dapibus velit ut lacus ullamcorper hendrerit. Pellentesque non lorem tortor. Fusce vitae magna mauris. Mauris eu neque sed mauris blandit lobortis. In ac arcu ex. Quisque laoreet ligula non felis aliquet luctus. Aliquam erat volutpat. Donec gravida gravida libero nec tempor. Integer ex urna, pretium nec nisi sed, egestas consectetur lorem. Pellentesque vel sapien nec eros gravida tincidunt. Morbi pulvinar in urna at hendrerit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Integer dictum diam a varius tincidunt.

Suspendisse non lorem quam. Nam a congue augue. Nullam et fermentum lacus. Duis non dapibus ipsum. Pellentesque malesuada nisi arcu, vel commodo felis cursus dictum. Nam lacinia iaculis nulla, quis tristique dolor condimentum eu. Quisque consequat, nulla sit amet faucibus pellentesque, ligula felis finibus nisl, vitae tincidunt dui purus et metus. Aenean id nibh nec quam tincidunt scelerisque a molestie justo. Aliquam erat volutpat. Sed nec egestas dolor. Fusce elementum ultricies odio, ac dignissim dui pharetra sit amet. Duis vestibulum volutpat dignissim. Vestibulum ornare felis a interdum iaculis. Aenean ac ultricies elit.

Nunc risus eros, hendrerit eget ex vitae, rhoncus lacinia arcu. In hendrerit orci in porttitor ullamcorper. Quisque nec volutpat est. Morbi nec tellus sit amet erat pretium pulvinar vel at eros. Sed ac urna eget tellus pharetra viverra. Ut tincidunt commodo arcu. Donec ullamcorper, mauris id semper blandit, lacus sapien efficitur enim, eget varius diam enim eget est. Etiam eget sem a metus ultrices bibendum. In pellentesque metus nibh, rutrum molestie est sodales vitae. Phasellus sollicitudin lorem quis sapien pulvinar ullamcorper. Suspendisse arcu erat, euismod et arcu in, malesuada molestie mi. Cras finibus, nunc eu porttitor cursus, nisl sem aliquam risus, vel rhoncus sem mauris et magna. Sed id egestas mi. In non nunc lorem.

Curabitur egestas porttitor viverra. Praesent ut massa velit. In bibendum aliquam pretium. Ut enim arcu, pulvinar imperdiet porttitor ut, rutrum ac lacus. Suspendisse pretium id nibh ut cursus. Mauris aliquet velit eget sodales facilisis. Duis consequat, leo et tempor dapibus, lorem libero placerat diam, quis dapibus massa orci in neque. Maecenas volutpat, purus feugiat interdum condimentum, dui quam commodo lacus, sed pretium dolor nulla vitae odio. Sed efficitur feugiat enim congue venenatis. Aliquam erat volutpat. In non lacus nisi. Etiam condimentum placerat auctor. Cras ut feugiat tellus. In luctus ullamcorper quam eu aliquam. Mauris malesuada ipsum in ultricies viverra. Nulla placerat, nulla vel dictum sodales, ligula purus porttitor augue, sit amet ornare nunc nunc at dolor.</p>
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