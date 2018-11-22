<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<div class="index_box notice">
					<h2 class="index_tit">공지사항</h2>
					<ul class="notice_list">
						<c:forEach var="item" items="${noticeList}" varStatus="i">
							<li id="sc${i.index+1}"><a
								href="/notice/notice/detail.do?no=${item.getNotice_no()}"> <c:choose>
										<c:when test="${item.getNotice_bool()=='t'}">
											<em>공지</em>
										</c:when>
										<c:when test="${item.getNotice_bool()=='f'}">
											<em>일반</em>
										</c:when>
									</c:choose> <b>${item.getNotice_title()}</b> <span>>${item.getNotice_regdate()}</span>
							</a></li>
						</c:forEach>
					</ul>
					<a class="plus_box" href="/notice/notice/list.do">+</a>
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
						<li><a href="#"> <img src="/img/main/index/icon_map.png"
								alt="오시는길"> <span>오시는길</span>
						</a></li>
						<li><a href="#"> <img
								src="/img/main/index/icon_pencil.png" alt="경력인증"> <span>경력인증</span>
						</a></li>
						<li><a href="#"> <img
								src="/img/main/index/icon_people.png" alt="회원사소개"> <span>회원사소개</span>
						</a></li>
						<li><a href="#"> <img src="/img/main/index/icon_map.png"
								alt="사이트맵"> <span>사이트맵</span>
						</a></li>
					</ul>
				</div>
				<div class="index_box mbr_list">
					<div class="als-container clearfix" id="lista1">
						<span class="als-prev">&lt;</span>
						<div class="als-viewport">
							<ul class="als-wrapper">
								<li class="als-item"><a href="http://hm.seoil.ac.kr/"
									target="_blank"><img src="/img/s0.png"></a></li>
								<li class="als-item"><a
									href="http://www.at.or.kr/home/apko000000/index.action"
									target="_blank"><img src="/img/s2.png" /></a></li>
								<li class="als-item"><a href="http://hm.seoil.ac.kr/"
									target="_blank"><img src="/img/s0.png"></a></li>
								<li class="als-item"><a
									href="http://www.at.or.kr/home/apko000000/index.action"
									target="_blank"><img src="/img/s2.png" /></a></li>
								<li class="als-item"><a href="http://hm.seoil.ac.kr/"
									target="_blank"><img src="/img/s0.png"></a></li>
								<li class="als-item"><a
									href="http://www.at.or.kr/home/apko000000/index.action"
									target="_blank"><img src="/img/s2.png" /></a></li>
							</ul>
						</div>
						<span class="als-next">&gt;</span>
					</div>
				</div>
			</article>
		</div>
	</section>
	<%@ include file="/WEB-INF/include/main/footer.jsp"%>
</body>
</html>