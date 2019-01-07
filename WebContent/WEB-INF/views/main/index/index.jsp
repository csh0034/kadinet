<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/include/global/meta.jsp"%>
<title>디지털산업협회</title>
<%@ include file="/WEB-INF/include/global/css.jsp"%>
<%@ include file="/WEB-INF/include/main/css.jsp"%>
<%@ include file="/WEB-INF/include/global/js.jsp"%>
<link rel="stylesheet" href="/css/main/jquery.als-1.7.css">
<script type="text/javascript" src="/js/main/index.js"></script>
<script type="text/javascript" src="js/main/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="/js/main/jquery.als-1.7.min.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/include/main/header.jsp"%>
	<section class="wrap wrapBGI">
		<div class="mainIndex">
			<article class="contents">
				<div id="notice_slide">
					<c:forEach var="item" items="${noticeList}" varStatus="i">
						<a href="/notice/notice/detail.do?no=${item.getNotice_no()}">
							<c:choose>
								<c:when test="${empty item.getNotice_img()}">
									<img class="s_img" src="/img/main/index/slide/notice_img1.png" alt="공지이미지2">
								</c:when>
								<c:otherwise>
									<img class="s_img" src="/file/notice/${item.getNotice_img()}">
								</c:otherwise>
							</c:choose>

						</a>
					</c:forEach>
					<span class="pre_box">&lt;</span> <span class="next_box">&gt;</span>
				</div>
				<div class="index_box press">
					<h2 class="index_tit">보도자료</h2>
					<dl class="press_list">
						<c:forEach var="item" items="${pressList}" varStatus="i">
							<dt>
								<a href="/notice/press/detail.do?no=${item.getNotice_no()}">${item.getNotice_title()}</a>
							</dt>
							<dd>${item.getNotice_regdate()}</dd>
						</c:forEach>
					</dl>
					<a class="plus_box2" href="/notice/press/list.do">+</a>
				</div>
				<div class="index_box notice_data">
					<h2 class="index_tit">정보자료실</h2>
					<dl class="press_list">
						<c:forEach var="item" items="${dataList}" varStatus="i">
							<dt>
								<a href="/notice/data/detail.do?no=${item.getNotice_no()}">${item.getNotice_title()}</a>
							</dt>
							<dd>${item.getNotice_regdate()}</dd>
						</c:forEach>
					</dl>
					<a class="plus_box2" href="/notice/data/list.do">+</a>
				</div>
				<div class="index_box quick">
					<ul class="quick_btn">
						<li><a href="http://localhost/intro/visit.do">
								<img class="quick_img1" src="/img/main/index/icon_map.png" alt="오시는길"> <span
									class="quick_txt1">오시는길</span>
							</a></li>
						<li><a href="http://localhost/business/career.do">
								<img class="quick_img1" src="/img/main/index/icon_career.png" alt="경력인증"> <span
									class="quick_txt1">경력인증</span>
							</a></li>
						<li><a href="http://localhost/business/corporation.do">
								<img class="quick_img1 quick_img2" src="/img/main/index/icon_office.png" alt="사이트맵"> <span
									class="quick_txt1 quick_txt2">기업체인증</span>
							</a></li>
						<li><a href="http://localhost/mbr/memberinfo.do">
								<img class="quick_img1 quick_img2" src="/img/main/index/icon_people.png" alt="회원사소개">
								<span class="quick_txt1 quick_txt2">회원사 소개</span>
							</a></li>
					</ul>
				</div>
				<div class="index_box mbr_list">
					<div class="als-container clearfix" id="lista1">
						<span class="als-prev"><img src="/img/main/index/slide/left.png" alt="prev"
							title="previous" /></span>
						<div class="als-viewport">
							<ul class="als-wrapper">
								<c:forEach var="item" items="${mbrList}" varStatus="i">
									<li class="als-item"><a href="http://${item.getMbr_link()}" target="_blank">
											<img src="/file/mbr/${item.getMbr_img()}">
										</a></li>
								</c:forEach>
								<li class="als-item"><a href="https://www.samsungsds.com/global/ko/index.html"
										target="_blank">
										<img src="/img/main/index/slide/s2.jpg">
									</a></li>
								<li class="als-item"><a href="http://www.jobmentors.co.kr/main/index.html"
										target="_blank">
										<img src="/img/main/index/slide/s3.jpg">
									</a></li>
								<li class="als-item"><a href="https://www.samsungsds.com/global/ko/index.html"
										target="_blank">
										<img src="/img/main/index/slide/s2.jpg">
									</a></li>
								<li class="als-item"><a href="http://www.jobmentors.co.kr/main/index.html"
										target="_blank">
										<img src="/img/main/index/slide/s3.jpg">
									</a></li>
								<li class="als-item"><a href="https://www.samsungsds.com/global/ko/index.html"
										target="_blank">
										<img src="/img/main/index/slide/s2.jpg">
									</a></li>
								<li class="als-item"><a href="http://www.jobmentors.co.kr/main/index.html"
										target="_blank">
										<img src="/img/main/index/slide/s3.jpg">
									</a></li>

							</ul>
						</div>
						<span class="als-next"><img src="/img/main/index/slide/right.png" alt="next"
							title="next" /></span>
					</div>
				</div>
			</article>
		</div>
	</section>
	<%@ include file="/WEB-INF/include/main/footer.jsp"%>
</body>
</html>