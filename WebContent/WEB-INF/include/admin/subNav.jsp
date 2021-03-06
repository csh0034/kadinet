<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${subNav =='1'}">
		<c:set var="show1" value="show" />
	</c:when>
	<c:when test="${subNav =='2'}">
		<c:set var="show2" value="show" />
	</c:when>
	<c:when test="${subNav =='3'}">
		<c:set var="show3" value="show" />
	</c:when>
	<c:when test="${subNav =='4'}">
		<c:set var="show4" value="show" />
	</c:when>
	<c:otherwise>
	</c:otherwise>
</c:choose>
<ul class="sidebar navbar-nav">
	<li class="nav-item active"><a class="nav-link" href="/admin/index.do">
			<i class="fas fa-fw fa-home"></i> <span>대시보드</span>
		</a></li>
	<li class="nav-item dropdown ${show1}"><a class="nav-link dropdown-toggle" href="#"
			id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="false"
			aria-expanded="true">
			<i class="fas fa-fw fa-folder"></i> <span>협회소개</span>
		</a>
		<div class="dropdown-menu ${show1}" aria-labelledby="pagesDropdown">
			<a class="dropdown-item" href="/admin/intro/greeting.do">협회장인사</a>
			<a class="dropdown-item" href="/admin/intro/history.do">연혁</a>
			<a class="dropdown-item" href="/admin/intro/member.do">임원소개</a>
			<a class="dropdown-item" href="/admin/intro/organization.do">조직도</a>
			<a class="dropdown-item" href="/admin/intro/visit.do">오시는길</a>
		</div></li>
	<li class="nav-item dropdown ${show2}"><a class="nav-link dropdown-toggle" href="#"
			id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="false"
			aria-expanded="false">
			<i class="fas fa-fw fa-folder"></i> <span>주요사업</span>
		</a>
		<div class="dropdown-menu ${show2}" aria-labelledby="pagesDropdown">
			<h6 class="dropdown-header">주요사업</h6>
			<a class="dropdown-item" href="/admin/business/career.do">경력인증</a>
			<a class="dropdown-item" href="/admin/business/corporation.do">기업체인증</a>
			<a class="dropdown-item" href="/admin/business/mentoring.do">멘토링</a>
			<a class="dropdown-item" href="/admin/business/support.do">디지털융합산업지원</a>
			<a class="dropdown-item" href="/admin/business/education.do">교육사업</a>
		</div></li>
	<li class="nav-item dropdown ${show3}"><a class="nav-link dropdown-toggle" href="#"
			id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="false"
			aria-expanded="false">
			<i class="fas fa-fw fa-folder"></i> <span>알림마당</span>
		</a>
		<div class="dropdown-menu ${show3}" aria-labelledby="pagesDropdown">
			<h6 class="dropdown-header">알림마당</h6>
			<a class="dropdown-item" href="/admin/notice/notice/list.do">공지사항</a>
			<a class="dropdown-item" href="/admin/notice/press/list.do">보도자료</a>
			<a class="dropdown-item" href="/admin/notice/data/list.do">정보자료실</a>
		</div></li>
	<li class="nav-item dropdown ${show4}"><a class="nav-link dropdown-toggle" href="#"
			id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="false"
			aria-expanded="false">
			<i class="fas fa-fw fa-folder"></i> <span>회원사</span>
		</a>
		<div class="dropdown-menu ${show4}" aria-labelledby="pagesDropdown">
			<h6 class="dropdown-header">회원사</h6>
			<a class="dropdown-item" href="/admin/mbr/memberinfo.do">회원사소개</a>
		</div></li>
	<li class="nav-item"><a class="nav-link" href="/admin/mbrManagement/mbrTable.do">
			<i class="fas fa-user-circle fa-fw"></i> <span>회원관리</span>
		</a></li>
</ul>