$(function() {

	$('.mm>a').mouseenter(function() {
		var marginLeft = parseInt($('.header_inner').css('margin-left'));
		$('.mm a').removeClass('hover');
		$(this).addClass('hover');

		var idx = $(this).parent().attr("id");
		idx = idx.substring(2);

		$(this).next().css('padding-left', marginLeft + 48 + (125 * idx));
ㅏ
	});

	$('.mm').mouseleave(function() {
		$('.mm a').removeClass('hover');
		$('.drop_menu').css('padding-left', '0');
	});

	$(".subNav_list> li").click(function() {
		$(this).addClass("selected");
		$(this).siblings().removeClass("selected");
	});

});
