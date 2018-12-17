$(document).ready(function(){
	$(".popUp").hide();
	
	function wrapWindowByMask(){
        //화면의 높이와 너비를 구한다.
        var maskHeight = $(document).height();  
        var maskWidth = $(window).width();  
		
        //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
        $('.pop_bk').css({'width':maskWidth,'height':maskHeight});
		
        //애니메이션 효과
        $('.pop_bk').fadeIn();      
}
	function wrapWindowByMask2(){
        //화면의 높이와 너비를 구한다.
        var maskHeight = $(document).height();  
        var maskWidth = $(window).width();  
		
        //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
        $('.pop_bk2').css({'width':maskWidth,'height':maskHeight});
		
        //애니메이션 효과
        $('.pop_bk2').fadeIn();      
}
	
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

	$(".pop_close").click(function() {
		$(".__pop-basic").fadeOut();
		$(".__pop-basic2").fadeOut();
		$(".popUp").fadeOut();
		$(".pop_bk2").fadeOut();
		$(".pop_bk").fadeOut();
	});
	
	$(".pop_bk").click(function() {
		$(".popUp").fadeOut();
		$(".pop_bk").fadeOut();
		$(".__pop-basic").hide();
		$(".pop_bk2").fadeOut();
		$(".__pop-basic2").hide();
	});
	

});