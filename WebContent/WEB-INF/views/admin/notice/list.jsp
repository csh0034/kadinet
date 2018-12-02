<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>디지털산업협회</title>
<%@ include file="/WEB-INF/include/admin/css.jsp"%>
<style>
.tit {
	max-width: 610px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.tit a {
	display: inline-block;
	width: 100%;
	height: 100%;
}
</style>

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

						<div class="ht_table_area">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable2">
									<thead>
										<tr>
											<th>번호</th>
											<th width="40%">제목</th>
											<th>작성자</th>
											<th>작성일</th>
											<th>조회</th>
											<th>첨부</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${list}" varStatus="i">
											<tr>
												<td class="max74"><c:choose>
														<c:when test="${item.getNotice_bool() == 't'}">
															공지
														</c:when>
														<c:otherwise>
													${item.getNotice_no()}
												</c:otherwise>
													</c:choose></td>
												<td class="tit"><a
													href="/admin/notice/${menu}/detail.do?no=${item.getNotice_no()}">
														${item.getNotice_title()}</a></td>
												<td class="max82">${item.getUser_name()}</td>
												<td>${item.getNotice_regdate()}</td>
												<td class="max74">${item.getNotice_hit()}</td>
												<td><c:if test="${!empty item.getFile_oriname()}">
														<img src="/img/main/notice/icon_file.gif">
													</c:if></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="card-footer small text-muted"
						style="text-align: center;">
						<input type="button" id="update" class="btn btn-primary"
							value="글쓰기" onclick="location.href='/admin/notice/edit.do?menu=${menu}'" />
					</div>
				</div>
			</div>
			<%@ include file="/WEB-INF/include/admin/footer.jsp"%>
		</div>
	</div>
	<%@ include file="/WEB-INF/include/admin/logout.jsp"%>
	<%@ include file="/WEB-INF/include/admin/js.jsp"%>
	<script>
		$(document).ready(function() {
			$('#dataTable2').DataTable({
				"order" : [ [ 0, "desc" ] ]
			});
		});
	</script>
</body>
</html>