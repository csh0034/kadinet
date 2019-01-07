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
						<h3 class="location">경력인증</h3>
					</div>
					<div class="contents_box_bottom">
						<div class="business_box">
						${bean.getMenu_content() }
							<!-- <img src="/img/main/business/business_img5.jpg" alt="경력인증">
							<p class="bu_text_tit">
								경력인증은 신규취업 준비 회원과 일정 경력 보유 회원을 대상으로 이력 및 업무 경험, 등에 대한 확인과 인증을 통하여 과업 수행에 대 한 실제 능력을 가능케하여 적합한 구인구직을 돕고 회원의 자발전이고 진취적인 경력 관리를 지원하여 능력을 계발하고 관리함을 목적으로 한다.
							</p>
							<h5 class="tit_margin">1) 공식 이력 인증</h5>
							<p class="bu_text">
								학교, 직장에서의 업적을 각종 증명서를 통하여 확인하는 것으로 회원이 제시한 각종 증서의 사실 여부를 확인하여 공식적인 이력으로 사용 할 수 있도록 지원하는 서비스이다. 협회의 잡멘토스(jobmentors) 시스템을 통하여 이루어지며 공식 인증 항목에는 학위증, 수료증, 자격증, 경력증명서, 입상경력, 프로젝트 경력, 봉사활동 증명서 등이 해당된다.
							</p>
							<h5 class="tit_margin">2) 비공식 이력 인증</h5>
							<p class="bu_text">
								공식 이력으로 증명할 수 없는 경우에 이를 증명할 방법으로 확인하는 서비스이다. 확동이나 이력과 관계있는 지인이나 추천인의 서술과 서명으로 제시한 자료를 확인함으로써 인증하는 서비스이다. 혀보히의 잡멘토스(jobmentors) 시스템을 통하여 이루어진다. 비공식 이력 인증 항목에는 개인의 연수, 개인의 포트폴리오, 지인의 추천서 파트 타임 이력에 대한 관리자의 추천서 등이 해당된다.
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