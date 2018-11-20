$(function() {
	setMainPadBtm()

	$("#kadinet_header").hover(function() {
		$(this).addClass('is_hover');
	}, function() {
		$(this).removeClass('is_hover');
		$('.mm a').removeClass('hover');
	});

	$('.mm>a').mouseenter(function() {
		var marginLeft = parseInt($('.header_inner').css('margin-left'));
		$('.mm a').removeClass('hover');
		$(this).addClass('hover');

		var idx = $(this).parent().attr("id");
		idx = idx.substring(2);

		$(this).next().css('padding-left', marginLeft + 48 + (125 * idx));

	});

	$('.mm').mouseleave(function() {
		$('.mm a').removeClass('hover');
		$('.drop_menu').css('padding-left', '0');
	});

	$(window).scroll(function() {
		var currentTop = $(window).scrollTop();
		if (currentTop == 0) {
			$('#kadinet_header').removeClass('is_fixed');
		} else {
			$('#kadinet_header').addClass('is_fixed');
		}
	});

	$(window).resize(function() {
		setMainPadBtm();
	});
	
	$('#sc1').addClass("abc1");

	setTimeout(function(){
		$('#sc2').addClass("abc1");
	},300); 
	setTimeout(function(){
		$('#sc3').addClass("abc1");
	},600); 
	setTimeout(function(){
		$('#sc4').addClass("abc1");
	},900); 
	setTimeout(function(){
		$('#sc5').addClass("abc1");
	},1200); 

});

function setMainPadBtm() {
	var mainPaddingBottom = parseInt($(window).height()) - 155 - 550 - 96 - 2;
	if (mainPaddingBottom > 50 && mainPaddingBottom <180) {
		$('.wrap .mainIndex').css('padding-bottom', mainPaddingBottom);
	}
}
