<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>디지털산업협회</title>
<%@ include file="/WEB-INF/include/admin/css.jsp"%>
<link rel="stylesheet" type="text/css" href="/css/main/main.css">
<link href="/css/admin/input_file_design.css" rel="stylesheet">
<script src="/boot/vendor/jquery/jquery.min.js"></script>
<script src="/js/admin/fileUpload.js"></script>
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

				<div class="card mb-3" style="width: 900px; margin: 0 auto;">
					<c:choose>
						<c:when test="${empty mode}">
							<form method=post action="/fileUp?mode=new" id="form1"
								enctype="multipart/form-data" onsubmit="submitContents(this);">
								<div class="card-header"></div>
								<div class="card-body">
									<div class="notice_bx" style="width: 825px; margin: 0 auto;">
										<table class="detailTable" id="detailTable">
											<colgroup>
												<col width="20%">
												<col width="*">
											</colgroup>
											<tr class="lineTop">
												<th>회사명</th>
												<td><input type="text" class="form-control"
													name="notice_title" required></td>
											</tr>
											<tr>
												<th>로고</th>
												<td><div class="filebox">
														<input class="upload-name" value="파일선택"
															disabled="disabled"> <label for="input-file0">업로드</label>
														<input type="file" required id="input-file0"
															class="upload-hidden" name="notice_img">
													</div></td>
											</tr>
											<tr>
												<th>링크</th>
												<td><input type="text" class="form-control"
													name="notice_title" value="http://" required></td>
											</tr>
											<tr>
												<th>대표이사</th>
												<td><input type="text" class="form-control"
													name="notice_title" required></td>
											</tr>
											<tr>
												<th>설립일</th>
												<td><input type="text" class="form-control"
													name="notice_title" placeholder="ex) yyyy-mm-dd" required></td>
											</tr>
											<tr>
												<th>가입일</th>
												<td><input type="text" class="form-control"
													name="notice_title" placeholder="ex) yyyy-mm-dd" required></td>
											</tr>
											<tr>
												<th>전화번호</th>
												<td><input type="number" class="form-control"
													name="notice_title" placeholder="숫자만 입력" required></td>
											</tr>
											<tr class="lineBottom">
												<th>정렬</th>
												<td><input type="number" class="form-control"
													name="notice_title" placeholder="숫자만 입력" required></td>
											</tr>
										</table>
									</div>
								</div>
								<div class="card-footer small text-muted"
									style="text-align: center;">
									<input type="submit" id="go" class="btn btn-primary" value="저장" />
									<input type="button" id="list" class="btn btn-primary"
										value="목록" onclick="location.href='/admin/mbr/memberinfo.do'" />
								</div>
							</form>
						</c:when>

						<c:when test="${mode == 'update'}">

						</c:when>
					</c:choose>
				</div>
			</div>
			<%@ include file="/WEB-INF/include/admin/footer.jsp"%>
		</div>
	</div>
	<%@ include file="/WEB-INF/include/admin/logout.jsp"%>
	<%@ include file="/WEB-INF/include/admin/js.jsp"%>
</body>
</html>