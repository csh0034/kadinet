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
						<h3 class="location">기업체인증</h3>
					</div>
					<div class="contents_box_bottom">
						<div class="business_box">
						${bean.getMenu_content() }
							<!-- <img src="/img/main/business/business_img3.jpg" alt="기업체인증">
							<p class="bu_text">
								<b>21세기의 글로벌 환경</b>, W3차 산업혁명으로 지칭되는 시점에서 중요한 이슈가 되고 있는 분야가 이른 바 녹색성장이다. 기업의 근본적인 목적은 이윤창출이지만 현대사회를 살아가는데 있어서는 기업과 고객이 공생할 수 있는 환경 생태계를 구축하는 것이 중요하다. '97년 채택된 교토의정서에 의해 전 세계의 온실가스 배출총량을 정해서 국가별로 이를 할당하였다. 이에 따라 국가의 책임도 큰 이슈로 작용하지만 결국, 이를 해결할 수 있는 주체는 기업이기 때문에 기업의 탄소배출량이 가장 커다란 이슈가 되고 있따. 이 외에도 수질오염, 공기오염 등 기업이 배출하는 문제를 해결하기 위해 많은 노력이 필요하다.
							</p><br />
							<p class="bu_text">
								본 협회에서는 이러한 환경적 요인을 감안하여 회원사들을 대상으로 기업의 핵심역량, 생태환경 구축 등의 지표를 통해 지속가능한 성장을 지원하려고 한다. 기업의 대내외 환경을 고려하여 지속가능한 발전 역량을 확보하는데 필요한 항목을 측정하여 균형적인 상태를 유지하도록 방안을 제안하고 지원한다. 융합, 환경친화, 핵심역량, 특성화 등의 관점에서 현 상황 및 수준을 측정하고 필요한 부분의 보완을 제시하여 통하여 더욱 발전하도록 돕는 것이 본 서비스의 핵심이다.
							</p> -->
						</div>
					</div>
				</div>
			</article>
		</div>
	</section>
	<%@ include file="/WEB-INF/include/main/footer.jsp"%>
</body>
</html>