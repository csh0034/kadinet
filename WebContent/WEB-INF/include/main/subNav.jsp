<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${subNav =='1'}">
		<div class="subNav">
			<h1>협회소개</h1>
			<ul class="subNav_list">
				<li><a href="/intro/greeting.do">협회장인사</a></li>
				<li><a href="/intro/history.do">연혁</a></li>
				<li><a href="/intro/organization.do">조직도</a></li>
				<li><a href="/intro/visit.do">오시는길</a></li>
			</ul>
		</div>
	</c:when>
	<c:when test="${subNav =='2'}">
		<div class="subNav">
			<h1>주요산업</h1>
			<ul class="subNav_list">
				<li><a href="#">경력인증</a></li>
				<li><a href="#">기업체인증</a></li>
				<li><a href="#">구인구직</a></li>
				<li><a href="#">디지털융합산업지원</a></li>
				<li><a href="#">교육사업</a></li>
			</ul>
		</div>
	</c:when>
	<c:when test="${subNav =='3'}">
		<div class="subNav">
			<h1>알림마당</h1>
			<ul class="subNav_list">
				<li><a href="#">공지사항</a></li>
				<li><a href="#">회원사 및 회원 알림</a></li>
				<li><a href="#">협회활동</a></li>
			</ul>
		</div>
	</c:when>
	<c:when test="${subNav =='4'}">
		<div class="subNav">
			<h1>회원사</h1>
			<ul class="subNav_list">
				<li><a href="#">회원사 소개</a></li>
				<li><a href="#">ID/PW 검색</a></li>
				<li><a href="#">정보수정</a></li>
				<li><a href="#">회원탈퇴</a></li>
			</ul>
		</div>
	</c:when>
</c:choose>