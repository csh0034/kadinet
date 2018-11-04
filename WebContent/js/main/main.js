$(function(){
	$('#kadinet_header').mouseover(function(){
		$(this).addClass('is_hover');
	});
	
	$('#kadinet_header').mouseout(function(){
		$(this).removeClass('is_hover');
		$('.mm a').removeClass('hover');
	});
	
	
	$('.mm a').mouseover(function(){
		$('.mm a').removeClass('hover');
		$(this).addClass('hover');
	});
	
	$('.drop_menu').mouseout(function(){
		$('.mm a').removeClass('hover');
	});
	
	$(window).scroll(function() {
		var currentTop = $(window).scrollTop();
		if (currentTop == 0) {
			$('#kadinet_header').removeClass('is_fixed');
		} else {
			$('#kadinet_header').addClass('is_fixed');
		}
	});
});
