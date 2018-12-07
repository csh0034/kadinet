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
				<div id="notice_slide">
					<a href="#">
						<img class="s_img" src="/img/main/index/slide/notice_img1.png" alt="공지이미지1">
					</a>
					<a href="#">
						<img class="s_img" src="/img/main/index/slide/notice_img2.png" alt="공지이미지2">
					</a>
					<a href="#">
						<img class="s_img" src="/img/main/index/slide/notice_img3.png" alt="공지이미지3">
					</a>
					<span class="pre_box">&lt;</span>
					<span class="next_box">&gt;</span>
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
						<li><a href="http://localhost/intro/visit.do"> <img class="quick_img1"
								src="/img/main/index/icon_map.png" alt="오시는길"> <span class="quick_txt1">오시는길</span>
						</a></li>
						<li><a href="http://localhost/business/career.do"> <img class="quick_img1"
								src="/img/main/index/icon_career.png" alt="경력인증"> <span class="quick_txt1">경력인증</span>
						</a></li>
						<li><a href="http://localhost/business/corporation.do"> <img class="quick_img1 quick_img2"
								src="/img/main/index/icon_office.png" alt="사이트맵"> <span class="quick_txt1 quick_txt2">기업체인증</span>
						</a></li>
						<li><a href="http://localhost/mbr/memberinfo.do"> 
								<img class="quick_img1 quick_img2"
								src="/img/main/index/icon_people.png" alt="회원사소개"> <span class="quick_txt1 quick_txt2">회원사 소개</span>
						</a></li>
					</ul>
				</div>
				<div class="index_box mbr_list">
					<div class="als-container clearfix" id="lista1">
						<div class="als-viewport">
							<ul class="als-wrapper">
								<li class="als-item"><a href="https://cc.sk.co.kr/"
									target="_blank"><img src="/img/main/index/slide/s1.jpg"></a></li>
									<li class="als-item"><a href="https://www.samsungsds.com/global/ko/index.html"
									target="_blank"><img src="/img/main/index/slide/s2.jpg"></a></li>
									<li class="als-item"><a href="http://www.jobmentors.co.kr/main/index.html"
									target="_blank"><img src="/img/main/index/slide/s3.jpg"></a></li>
									<li class="als-item"><a href="http://www.hrcnt.com/"
									target="_blank"><img src="/img/main/index/slide/s4.jpg"></a></li>
									<li class="als-item"><a href="http://www.mayzen.com/index.html"
									target="_blank"><img src="/img/main/index/slide/s5.jpg"></a></li>
									<li class="als-item"><a href="http://www.hrcnt.com/"
									target="_blank"><img src="/img/main/index/slide/s6.jpg"></a></li>
									<li class="als-item"><a href="http://www.dwit.or.kr/"
									target="_blank"><img src="/img/main/index/slide/s7.jpg"></a></li>
									<li class="als-item"><a href="http://hm.seoil.ac.kr/"
									target="_blank"><img src="/img/main/index/slide/s8.jpg"></a></li>
									<li class="als-item"><a href="http://www.hansung.ac.kr/web/www/home"
									target="_blank"><img src="/img/main/index/slide/s9.jpg"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</article>
		</div>
	</section>
	<%@ include file="/WEB-INF/include/main/footer.jsp"%>
</body>
</html>