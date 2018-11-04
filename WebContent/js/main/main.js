$(function() {

	$("#kadinet_header").hover(function() {
		$(this).addClass('is_hover');
	}, function() {
		$(this).removeClass('is_hover');
		$('.mm a').removeClass('hover');
	});

	$('.mm>a').mouseenter(function() {
		var marginLeft = parseInt($('.inner').css('margin-left'));
		$('.mm a').removeClass('hover');
		$(this).addClass('hover');
		
		if ($(this).html() == '협회소개') {
			$(this).next().css('padding-left', marginLeft+173);
		} else if ($(this).html() == '주요사업') {
			$(this).next().css('padding-left', marginLeft+298);
		} else if ($(this).html() == '알림마당') {
			$(this).next().css('padding-left', marginLeft+423);
		} else if ($(this).html() == '회원사') {
			$(this).next().css('padding-left', marginLeft+548);
		}
	});

	$('.mm').mouseleave(function() {
		$('.mm a').removeClass('hover');
		$('.drop_menu').css('padding-left','0');
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
