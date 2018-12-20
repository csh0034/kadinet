function wrapWindowByMask() {
	var maskHeight = $(document).height();
	var maskWidth = $(window).width();

	$('.pop_bk').css({
		'width' : maskWidth,
		'height' : maskHeight
	});

	$('.pop_bk').fadeIn();
}
function wrapWindowByMask2() {
	var maskHeight = $(document).height();
	var maskWidth = $(window).width();

	$('.pop_bk2').css({
		'width' : maskWidth,
		'height' : maskHeight
	});

	$('.pop_bk2').fadeIn();
}
$(document).ready(function() {
	$(".popUp").hide();

	$(".private").click(function() {
		$(".__pop-basic").fadeIn();
		$("#pop1").fadeIn();
		wrapWindowByMask();
	});

	$(".noemail").click(function() {
		$("#pop2").fadeIn();
		wrapWindowByMask();
		$(".__pop-basic").fadeIn();
	});

	$(".poppop").click(function() {
		$(".__pop-basic2").fadeIn();
		$("#findid_pop").fadeIn();
		wrapWindowByMask2();
	});

	$(".poppop2").click(function() {
		$(".__pop-basic2").fadeIn();
		$("#findpw_pop").fadeIn();
		wrapWindowByMask2();
	});

	$(".pop_bk,.pop_bk2,.pop_close").click(function() {
		$(".popUp").fadeOut();
		$(".pop_bk").fadeOut();
		$(".__pop-basic").hide();
		$(".pop_bk2").fadeOut();
		$(".__pop-basic2").hide();
	});

});