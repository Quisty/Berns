// Custom page animations on scroll
$(window).scroll(function() {
	if ($(this).scrollTop() > 1000) {
		$('.hide').css('display', 'none');
	}
});