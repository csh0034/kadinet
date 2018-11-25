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
<%@ include file="/WEB-INF/include/main/js.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/include/main/header.jsp"%>
	<section class="wrap">
		<div class="menu_img business_menu_img">
			<b>주요사업</b>
		</div>
		<div class="main">
			<article class="contents">
				<%@ include file="/WEB-INF/include/main/subNav.jsp"%>
				<div class="contents_box">
					<div class="contents_box_top">
						<h3 class="location">교육사업</h3>
					</div>
					<div class="contents_box_bottom">
						<div class="business_box">
							<img src="/img/main/business/business_img1.jpg" alt="교육사업">
							<h5>1) 디지털융합산업 전문가 맞춤형 교육사업</h5>
							<p class="bu_text">
								회원사 및 디지털융합산업에 필요한 교육 수요조사를 통해 재직자 및 취업 준비자 대상으로 맞춤형 교육을 실시한다. 이와 같은 분야의 전문가를 양성하기 위해 단기과정을 개설하여 짧은 시간에 최대의 효과를 얻을 수 있는 교육과정을 개발한다. 다양한 분야의 융합관련 교육에 대한 회원 및 회원사, 관련 업계의 수요를 파악하여 유망한 교육커리큘럼을 개설, 운영함으로써 디지털융합산업 분야에 적합한 맞춤인재 양성을 도모한다.
							</p>
							<h5 class="tit_margin">2) 디지털융합산업 R&amp;D관리 전문인력 양성사업</h5>
							<p class="bu_text">
								중소기업 및 디지털융합산업의 R&amp;D 관리를 위해 필요한 전문인력의 양성를 도모한다. 중소기업 등의 재직자를 대상으로 단기교육을 실시하여 개발과 사업화를 추진할 수 있도록 한다. 이를 통하여 중소기업의 융합산업 연구개발을 지원할 수 있는 | 중소기업 전략, 특허기술전략, 기술경영, 기업기술가치평가 등에 대한 교육프로그램과 R&amp;D 관리 전문인력을 양성하기 위한 교육프로그램을 개발 및 운영한다.
							</p>
						</div>
					</div>
				</div>
			</article>
		</div>
	</section>
	<%@ include file="/WEB-INF/include/main/footer.jsp"%>
</body>
</html>