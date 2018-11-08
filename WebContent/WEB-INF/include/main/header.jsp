<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String hover = "";
	if ((String) request.getAttribute("index") == null) {
		hover = "is_hover";
	}
%>
<header id="kadinet_header" class="<%=hover%>"> 
	<div class="header_inner">
		<div class="header_top">
			<a href="/login.do">로그인</a> <a href="/join.do">회원가입</a>
		</div>

		<div class="header_bottom clearfix">
			<a class="logo1" href="/index.do"><img
				src="/img/main/index/logo_white.png"></a> <a class="logo2"
				href="/index.do"><img src="/img/main/index/logo_color.png"></a>
			<nav class="gnb">
				<ul class="menu">
					<li class="mm" id="mm1"><a href="#">협회소개</a>
						<div class="drop_menu">
							<ul>
								<li><a href="#">협회장인사</a></li>
								<li><a href="#">연혁</a></li>
								<li><a href="#">조직도</a></li>
								<li><a href="#">오시는길</a></li>
							</ul>
						</div></li>
					<li class="mm" id="mm2"><a href="#">주요사업</a>
						<div class="drop_menu">
							<ul>
								<li><a href="#">경력인증</a></li>
								<li><a href="#">기업체인증</a></li>
								<li><a href="#">구인구직</a></li>
								<li><a href="#">디지털융합산업지원</a></li>
								<li><a href="#">교육사업</a></li>
							</ul>
						</div></li>
					<li class="mm" id="mm3"><a href="#">알림마당</a>
						<div class="drop_menu">
							<ul>
								<li><a href="#">공지사항</a></li>
								<li><a href="#">회원사 및 회원 알림</a></li>
								<li><a href="#">협회활동</a></li>
							</ul>
						</div></li>
					<li class="mm" id="mm4"><a href="#">회원사</a>
						<div class="drop_menu">
							<ul>
								<li><a href="#">회원사 소개</a></li>
								<li><a href="#">ID/PW 검색</a></li>
								<li><a href="#">정보수정</a></li>
								<li><a href="#">회원탈퇴</a></li>
							</ul>
						</div></li>
				</ul>
			</nav>
		</div>
	</div>
</header>