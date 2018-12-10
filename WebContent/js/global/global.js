$(document).ready(function(){
	$(".private").click(function() {
		$("#pop1").fadeIn();
		$(".pop_bk").fadeIn();
	});
	
	$(".noemail").click(function() {
		$("#pop2").fadeIn();
		$(".pop_bk").fadeIn();
	});

	$(".pop_close").click(function() {
		$(".popUp").fadeOut();
		$(".pop_bk").fadeOut();
	});
});