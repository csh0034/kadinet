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
<script>
	function pageing(page) {
		document.readFrm.nowPage.value = page;
		document.readFrm.submit();
	}

	function block(value) {
		document.readFrm.nowPage.value = 10 * (value - 1) + 1;
		document.readFrm.submit();
	}
</script>
</head>
<body>
	<%@ include file="/WEB-INF/include/main/header.jsp"%>
	<section class="wrap">
		<div class="menu_img mbr_menu_img">
			<b>회원사</b>
		</div>
		<div class="main">
			<article class="contents">
				<%@ include file="/WEB-INF/include/main/subNav.jsp"%>
				<div class="contents_box">
					<div class="contents_box_top">
						<h3 class="location">회원사소개</h3>
					</div>
					<div class="contents_box_bottom">
						<div class="mbrinfo_box">
							<ol>
								<c:forEach var="item" items="${mbrList}" varStatus="i">
									<li><a target="_blank" href="http://${item.getMbr_link()}">
											<span class="img"> <img src="/file/mbr/${item.getMbr_img() }">
											</span>
										</a> <b>${item.getMbr_name() }</b>
										<ul class="mem_data">
											<li><span>대표이사 : ${item.getMbr_ceo() }</span></li>
											<li><span>설립일 : ${item.getMbr_estdate() }</span></li>
											<li><span>전화번호 : ${item.getMbr_phone() }</span></li>
											<li><span>가입일 : ${item.getMbr_regdate() }</span></li>
										</ul></li>
								</c:forEach>
							</ol>
						</div>
						<div class="paginDiv">
							<c:if test="${totalPage !=0 }">
								<c:if test="${nowBlock > 1 }">
									<a href="javascript:block('${nowBlock - 1 }')">
										<span class="paging">&lt;</span>
									</a>
								</c:if>
								<c:forEach var="i" begin="${pageStart}" end="${pageEnd}">
									<a href="javascript:pageing('${i}')">
										<span class="paging">${i}</span>
									</a>
								</c:forEach>
								<c:if test="${totalBlock > nowBlock }">
									<a href="javascript:block('${nowBlock + 1 }')">
										<span class="paging">&gt;</span>
									</a>
								</c:if>
							</c:if>
						</div>
						<div>
							<form name="readFrm" method="get">
								<input type="hidden" name="nowPage" value="${nowPage}">
							</form>
						</div>
					</div>
				</div>
			</article>
		</div>
	</section>
	<%@ include file="/WEB-INF/include/main/footer.jsp"%>
</body>
</html>