<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${page =='greeting' || page =='login'}">
		<c:set var="s1" value="class='selected'" />
	</c:when>
	<c:when test="${page =='history' || page =='join'}">
		<c:set var="s2" value="class='selected'" />
	</c:when>
	<c:when test="${page =='organization'}">
		<c:set var="s3" value="class='selected'" />
	</c:when>
	<c:when test="${page =='visit'}">
		<c:set var="s4" value="class='selected'" />
	</c:when>
	<c:when test="${page =='test'}">
		<c:set var="s5" value="class='selected'" />
	</c:when>
</c:choose>
<c:choose>
	<c:when test="${subNav =='1'}">
		<div class="subNav">
			<h1>협회소개</h1>
			<ul class="subNav_list">
				<li ${s1}><a href="/intro/greeting.do">협회장인사</a></li>
				<li ${s2}><a href="/intro/history.do">연혁</a></li>
				<li ${s3}><a href="/intro/organization.do">조직도</a></li>
				<li ${s4}><a href="/intro/visit.do">오시는길</a></li>
			</ul>
		</div>
	</c:when>
	<c:when test="${subNav =='2'}">
		<div class="subNav">
			<h1>주요산업</h1>
			<ul class="subNav_list">
				<li ${s1}><a href="#">경력인증</a></li>
				<li ${s2}><a href="#">기업체인증</a></li>
				<li ${s3}><a href="#">구인구직</a></li>
				<li ${s4}><a href="#">디지털융합산업지원</a></li>
				<li ${s5}><a href="#">교육사업</a></li>
			</ul>
		</div>
	</c:when>
	<c:when test="${subNav =='3'}">
		<div class="subNav">
			<h1>알림마당</h1>
			<ul class="subNav_list">
				<li ${s1}><a href="#">공지사항</a></li>
				<li ${s2}><a href="#">회원사 및 회원 알림</a></li>
				<li ${s3}><a href="#">협회활동</a></li>
			</ul>
		</div>
	</c:when>
	<c:when test="${subNav =='4'}">
		<div class="subNav">
			<h1>회원사</h1>
			<ul class="subNav_list">
				<li ${s1}><a href="#">회원사 소개</a></li>
				<li ${s2}><a href="#">ID/PW 찾기</a></li>
				<li ${s3}><a href="#">정보수정</a></li>
				<li ${s4}><a href="#">회원탈퇴</a></li>
			</ul>
		</div>
	</c:when>
	<c:when test="${subNav =='5'}">
		<div class="subNav">
			<h1>회원</h1>
			<ul class="subNav_list">
				<li ${s1}><a href="/login.do">로그인</a></li>
				<li ${s2}><a href="/join.do">회원가입</a></li>
			</ul>
		</div>
	</c:when>
</c:choose>