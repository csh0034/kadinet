<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>디지털산업협회</title>
<%@ include file="/WEB-INF/include/admin/css.jsp"%>
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
								<c:forEach var="i" begin="1" end="6">
									<li><span class="img"> <img
											src="/img/main/mbr/m_cnc.jpg" alt="SK C&amp;C">
									</span> <b>SK C&amp;C</b>
										<ul class="mem_data">
											<li><span>대표이사 : 안승은</span></li>
											<li><span>설립일 : 2016-08-01</span></li>
											<li><span>전화번호 : 051-556-1645</span></li>
											<li><span>가입일 : 2016-08-01</span></li>
										</ul></li>

								</c:forEach>
							</ol>
						</div>
						<div class="paginDiv">
							<a href="javascript:block('${nowblock - 1 }')"> <span
								class="paging">&lt;</span>
							</a> <a href="javascript:pageing('${i}')"> <span class="paging">1</span>
							</a> <a href="javascript:pageing('${i}')"> <span class="paging">2</span>
							</a> <a href="javascript:pageing('${i}')"> <span class="paging">3</span>
							</a> <a href="javascript:pageing('${i}')"> <span class="paging">4</span>
							</a> <a href="javascript:pageing('${i}')"> <span class="paging">5</span>
							</a> <a href="javascript:block('${nowblock + 1 }')"> <span
								class="paging">&gt;</span>
							</a>
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
	</div>
	<%@ include file="/WEB-INF/include/admin/logout.jsp"%>
	<%@ include file="/WEB-INF/include/admin/js.jsp"%>
</body>
</html>