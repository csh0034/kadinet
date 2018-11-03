$(function(){
	$(".box_sub_menu").hide();
	
	$("#boxMenu .main_menu").hover(function(){
		//마우스를 올렸을때
		$(this).children(".box_sub_menu").stop().show();
		$(this).addClass("on2");
	}, function(){
		//마우스를 내렸을때
		$(this).children(".box_sub_menu").stop().hide();
		$(this).removeClass("on2");
	});

	$("header").hover(function(){
		//마우스를 올렸을때
		$("#hd_logo").addClass("on");
		$("#mem_menu a").addClass("on");
		$("#boxMenu .main_menu").addClass("on");
	}, function(){
		//마우스를 내렸을때
		$("#hd_logo").removeClass("on");
		$("#mem_menu a").removeClass("on");
		$("#boxMenu .main_menu").removeClass("on");
	});
	
	//메인슬라이드
	
	var slide;
	var time = 2000;//슬라이드시간
	var num = 0;
	
	 //첫번째 이미지 보이기
	slide = setInterval(function(){
		start();
	}, time);
	
	function start(){
		var no = num + 1;
		
		if(no>=$("#mbr_img img").length){
			no = 0;
		};
		
		$("#mbr_img img").eq(no).css({"left":"-100%"}).stop().animate({"left":"0%"}); //다음이미지가 나올 때 안보였다가 보이는 걸 animate로 보여줌
		$("#mbr_img img").eq(num).stop().animate({"left":"100%"});
		num = no; //보여지고 있던 이미지를 옆으로 100%만큼 같이 이동시킴
	};
});