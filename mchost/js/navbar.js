var status = 0;
function show(sidebar){
	if(status == 0) {
		sidebar.style.left =" 0px";
		sidebar.style.transition = "left 0.5s"
		status = 1;
	} else {
		sidebar.style.left =" -300px";
		sidebar.style.transition = "left 0.5s"
		status = 0;
	}
}

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