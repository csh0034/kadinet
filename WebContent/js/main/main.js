$(function(){
	$('#kadinet_header').mouseover(function(){
		$(this).addClass('is_hover');
	});
	
	$('#kadinet_header').mouseout(function(){
		$(this).removeClass('is_hover');
	});
	
	
	$('.mm a , .drop_menu').mouseover(function(){
		$(this).addClass('hover');
	});
	
	$('.mm a').mouseout(function(){
		$('.mm a').removeClass('hover');
	});
});
