<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty index}">
	<c:set var="hover" value="is_hover" />
</c:if>

<header id="kadinet_header" class="${hover}">
	<div class="header_inner">
		<div class="header_top">
			<c:choose>
				<c:when test="${empty userData[0]}">
					<a href='/login.do'>로그인</a>
					<a href='/join.do'>회원가입</a>
				</c:when>
				<c:otherwise>
					<c:choose>
						<c:when test="${userData[2] == '0'}">
							<span><strong>${userData[1]}</strong>님</span>
							<a href='/admin/index.do'>관리자페이지</a>
							<a href='/logout.do'>로그아웃</a>
							<a href='/mbr/update.do'>정보수정</a>
						</c:when>
						<c:otherwise>
							<span><strong>${userData[1]}</strong>님</span>
							<a href='/logout.do'>로그아웃</a>
							<a href='/mbr/update.do'>정보수정</a>
						</c:otherwise>
					</c:choose>
				</c:otherwise>
			</c:choose>
		</div>

		<div class="header_bottom clearfix">
			<a class="logo1" href="/index.do"><img
				src="/img/main/index/logo_white.png"></a> <a class="logo2"
				href="/index.do"><img src="/img/main/index/logo_color.png"></a>
			<nav class="gnb">
				<ul class="menu">
					<li class="mm" id="mm1"><a href="/intro/greeting.do">협회소개</a>
						<div class="drop_menu">
							<ul>
								<li><a href="/intro/greeting.do">협회장인사</a></li>
								<li><a href="/intro/history.do">연혁</a></li>
								<li><a href="/intro/member.do">임원소개</a></li>
								<li><a href="/intro/organization.do">조직도</a></li>
								<li><a href="/intro/visit.do">오시는길</a></li>
							</ul>
						</div></li>
					<li class="mm" id="mm2"><a href="/business/career.do">주요사업</a>
						<div class="drop_menu">
							<ul>
								<li><a href="/business/career.do">경력인증</a></li>
								<li><a href="/business/corporation.do">기업체인증</a></li>
								<li><a href="/business/mentoring.do">멘토링</a></li>
								<li><a href="/business/support.do">디지털융합산업지원</a></li>
								<li><a href="/business/education.do">교육사업</a></li>
							</ul>
						</div></li>
					<li class="mm" id="mm3"><a href="/notice/notice/list.do">알림마당</a>
						<div class="drop_menu">
							<ul>
								<li><a href="/notice/notice/list.do">공지사항</a></li>
								<li><a href="/notice/press/list.do">보도자료</a></li>
								<li><a href="/notice/data/list.do">정보자료실</a></li>
							</ul>
						</div></li>
					<li class="mm" id="mm4"><a href="/mbr/memberinfo.do">회원사</a>
						<div class="drop_menu">
							<ul>
								<li><a href="/mbr/memberinfo.do">회원사 소개</a></li>
								<li><a href="/mbr/update.do">정보수정</a></li>
								<li><a href="/mbr/leave.do">회원탈퇴</a></li>
							</ul>
						</div></li>
				</ul>
			</nav>
		</div>
	</div>
</header>