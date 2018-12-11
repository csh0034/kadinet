<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>디지털산업협회</title>
<%@ include file="/WEB-INF/include/admin/css.jsp"%>
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
<link rel="stylesheet" type="text/css" href="/css/global/global.css">
<link rel="stylesheet" type="text/css" href="/css/main/main.css">
</head>
<body id="page-top">
	<%@ include file="/WEB-INF/include/admin/header.jsp"%>
	<div id="wrapper">
		<%@ include file="/WEB-INF/include/admin/subNav.jsp"%>
		<div id="content-wrapper">
			<div class="container-fluid">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">ADMIN &gt; ${location}</li>
				</ol>
				<div class="card mb-3">
					<div class="card-header"></div>
					<div class="card-body">
						<div class="mbrinfo_box">
							<ol>
								<c:forEach var="item" items="${mbrList}" varStatus="i">
									<li><span class="img"> <img
											style="cursor: pointer;"
											onclick="location.href='/admin/mbr/edit.do?no=${item.getMbr_no()}'"
											src="/file/mbr/${item.getMbr_img() }">
									</span> <b>SK C&amp;C</b>
										<ul class="mem_data">
											<li><span>대표이사 : ${item.getMbr_name() }</span></li>
											<li><span>설립일 : ${item.getMbr_estdate() }</span></li>
											<li><span>전화번호 : ${item.getMbr_phone() }</span></li>
											<li><span>가입일 : ${item.getMbr_regdate() }</span></li>
										</ul></li>
								</c:forEach>
							</ol>
						</div>
						<div class="paginDiv">
							<c:if test="${totalPage !=0 }">
								<c:if test="${nowblock > 1 }">
									<a href="javascript:block('${nowblock - 1 }')"> <span
										class="paging">&lt;</span>
									</a>
								</c:if>
								<c:forEach var="i" begin="${pageStart}" end="${pageEnd}">
									<a href="javascript:pageing('${i}')"> <span class="paging">${i}</span>
									</a>
								</c:forEach>
								<c:if test="${totalBlock > nowBlock }">
									<a href="javascript:block('${nowblock + 1 }')"> <span
										class="paging">&gt;</span>
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
				<div class="card-footer small text-muted">
					<button type="button" class="btn btn-primary membtn"
						onclick="location.href='/admin/mbr/edit.do'">등록</button>
				</div>
			</div>
			<%@ include file="/WEB-INF/include/admin/footer.jsp"%>
		</div>
	</div>
	<%@ include file="/WEB-INF/include/admin/logout.jsp"%>
	<%@ include file="/WEB-INF/include/admin/js.jsp"%>
</body>
</html>