$(document).ready(function() {
	$('input').focus(function(){
		$(this).parents('dl').addClass('on');
	});
	
	$('input').blur(function(){
		$(this).parents('dl').removeClass('on');
	});
});