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

	setTimeout(function() {
		$('#sc2').addClass("abc1");
	}, 300);
	setTimeout(function() {
		$('#sc3').addClass("abc1");
	}, 600);
	setTimeout(function() {
		$('#sc4').addClass("abc1");
	}, 900);
	setTimeout(function() {
		$('#sc5').addClass("abc1");
	}, 1200);

	$("#lista1").als({
		visible_items : 6,
		scrolling_items : 1,
		orientation : "horizontal",
		circular : "yes",
		autoscroll : "yes",
		interval : 3000,
		direction : "left"
	});
	
	var slide;
	var time = 4000;//슬라이드시간
	var num = 0;
	
	$("#notice img").eq(num).css({"left":"0%"});
	
	slide = setInterval(function(){
		start();
	}, time);
	
	function start(){
		var no = num + 1;
		
		if(no>=$("#notice img").length){
			no = 0;
		};
		
		$("#notice img").eq(no).css({"left":"-100%"}).stop().animate({"left":"0%"});
		$("#notice img").eq(num).stop().animate({"left":"100%"});
		num = no;
	};
	
	
	$("#popupImg").click(function(){
		$("#popup, #bgBlack").fadeIn();//서서히 나타남. show();도 가능
	});
	
	$("#btnClose").click(function(){
		$("#popup, #bgBlack").fadeOut();//서서히 사라짐. hide();도 가능
	});
});

function setMainPadBtm() {
	var mainPaddingBottom = parseInt($(window).height()) - 155 - 550 - 96 - 2;
	if (mainPaddingBottom > 50 && mainPaddingBottom < 180) {
		$('.wrap .mainIndex').css('padding-bottom', mainPaddingBottom);
	}
}
