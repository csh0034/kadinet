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
	var time = 3000;//슬라이드시간
	var num = 0;
	
	$("#notice_slide img").eq(num).css({"left":"0%"});
	
	slide = setInterval(function(){
		start();
	}, time);
	
	function start(){
		var no = num + 1;
		
		if(no>=$("#notice_slide img").length){
			no = 0;
		};
		
		$("#notice_slide img").eq(no).css({"left":"100%"}).stop().animate({"left":"0%"});
		$("#notice_slide img").eq(num).stop().animate({"left":"-100%"});
		num = no;
	};
	
	$(".next_box").click(function(){
		clearInterval(slide);

		var no = num + 1;
		
		if(no>=$("#notice_slide img").length){
			no = 0;
		};
		
		$("#notice_slide img").eq(no).css({"left":"100%"}).stop().animate({"left":"0%"});
		$("#notice_slide img").eq(num).stop().animate({"left":"-100%"});
		num = no;

	});
	
	$(".pre_box").click(function(){
		clearInterval(slide);

		var no = num - 1;
		
		if(no<0){
			no = $("#notice_slide img").length-1;
		};
		
		$("#notice_slide img").eq(no).css({"left":"-100%"}).stop().animate({"left":"0%"});
		$("#notice_slide img").eq(num).stop().animate({"left":"100%"});
		num = no;
	});
	
	$("#notice_slide img").hover(function(){
		clearInterval(slide);
	}, function(){
		slide = setInterval(function(){
			start();
		}, time);
	});
});

function setMainPadBtm() {
	var mainPaddingBottom = parseInt($(window).height()) - 155 - 550 - 96 - 2;
	if (mainPaddingBottom > 50 && mainPaddingBottom < 180) {
		$('.wrap .mainIndex').css('padding-bottom', mainPaddingBottom);
	}
}
