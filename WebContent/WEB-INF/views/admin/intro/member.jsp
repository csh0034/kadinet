<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
						<div class="member_box">
							<div class="mem_area_01">
								<div class="mem_top_box">
									<div class="mem_title">회장</div>
									<div class="mem_img">
										<img style="cursor: pointer;"
											onclick="location.href='/admin/intro/edit.do?no=${ceo.getMember_no()}'"
											src="/file/member/${ceo.getMember_img()}">
									</div>
									<dl>
										<dt>${ceo.getMember_name()}</dt>
										<dd>${ceo.getMember_etc()}</dd>
										<dd>
											<a href="http://${ceo.getMember_link()}" target="_blank"> ${ceo.getMember_company()}</a>
										</dd>
									</dl>
								</div>
							</div>
							<div class="mem_area_04">
								<div class="mem_title">임원</div>
								<c:forEach var="item" items="${list}">
									<div class="mem_top_box">
										<div class="mem_img">
											<img style="cursor: pointer;"
												onclick="location.href='/admin/intro/edit.do?no=${item.getMember_no()}'"
												src="/file/member/${item.getMember_img()}">
										</div>
										<dl>
											<dt>${item.getMember_name()}</dt>
											<dd>${item.getMember_position()}</dd>
											<dd>${item.getMember_etc()}</dd>
											<dd>
												<a href="http://${item.getMember_link()}" target="_blank">${item.getMember_company()}</a>
											</dd>
										</dl>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="card-footer small text-muted">
						<button type="button" class="btn btn-primary" onclick="location.href='/admin/intro/edit.do'">등록</button>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/include/admin/footer.jsp"%>
	</div>
	<%@ include file="/WEB-INF/include/admin/logout.jsp"%>
	<%@ include file="/WEB-INF/include/admin/js.jsp"%>
</body>
</html>