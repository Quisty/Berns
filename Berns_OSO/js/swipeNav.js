// Firstly, disable jQuery Mobile loading at bottom of the page
$.mobile.loadingMessage = false;

// Set the Horizontal Threshold to 160px
$.event.special.swipe.horizontalDistanceThreshold = 100;

// Create Swipe functions
$(function() {
	$(document).on("swipeleft", swipeleftHandler);

	function swipeleftHandler(event) {
		$(".nav-wrapper").addClass("closeNav");
	}
	$(document).on("swiperight", swiperightHandler);

	function swiperightHandler(event) {
		$(".nav-wrapper").removeClass("closeNav");
	}
});