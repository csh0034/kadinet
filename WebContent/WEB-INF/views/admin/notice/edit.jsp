<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<script src="/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
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
							<form method=post action="/fileUp?mode=new" id="form1" enctype="multipart/form-data"
								onsubmit="submitContents(this);">
								<div class="card-header"></div>
								<div class="card-body">
									<div class="notice_bx" style="width: 825px; margin: 0 auto;">
										<table class="detailTable" id="detailTable">
											<colgroup>
												<col width="20%">
												<col width="*">
											</colgroup>
											<tr class="lineTop">
												<th>제목</th>
												<td><input type="text" class="form-control" name="notice_title" required></td>
											</tr>
											<c:if test="${menu=='notice'}">
												<tr>
													<th>공지여부</th>
													<td class="ve"><input type="radio" name="notice_bool" value="t" class="inp_radio"
														checked id="boolO" /><label for="boolO" style="margin-right: 20px">공지함</label> <input
														type="radio" name="notice_bool" value="f" class="inp_radio" id="boolX" /><label
														for="boolX">공지안함</label></td>
												</tr>
												<tr>
													<th>메인사진</th>
													<td><div class="filebox">
															<input class="upload-name" value="파일선택" disabled="disabled"> <label
																for="input-file0">업로드</label> <input type="file" required id="input-file0"
																class="upload-hidden" name="notice_img">
														</div></td>
												</tr>
											</c:if>
											<tr class="lineBottom">
												<th>첨부파일</th>
												<td>
													<div class="filebox">
														<input class="upload-name" value="파일선택" disabled="disabled"> <label
															for="input-file">업로드</label> <input type="file" id="input-file" class="upload-hidden"
															name="notice_file1">
													</div>
													<div class="filebox">
														<input class="upload-name" value="파일선택" disabled="disabled"> <label
															for="input-file2">업로드</label> <input type="file" id="input-file2"
															class="upload-hidden" name="notice_file2">
													</div>
													<div class="filebox">
														<input class="upload-name" value="파일선택" disabled="disabled"> <label
															for="input-file3">업로드</label> <input type="file" id="input-file3"
															class="upload-hidden" name="notice_file3">
													</div>
													<div class="filebox">
														<input class="upload-name" value="파일선택" disabled="disabled"> <label
															for="input-file4">업로드</label> <input type="file" id="input-file4"
															class="upload-hidden" name="notice_file4">
													</div>
												</td>
											</tr>
											<tr>
												<td colspan="2"></td>
											</tr>
											<tr class="contentTr">
												<td colspan="2">
													<div style="width: 860px; margin: 0 auto;">
														<textarea name="ir1" id="ir1" rows="10" cols="100"
															style="width: 100%; height: 500px; display: none;"></textarea>
														<input type="hidden" name="menu" value="${menu}" /> <input type="hidden" name="url"
															value="${url}" />
													</div>
												</td>
											</tr>
											<tr>
												<td colspan="2"></td>
											</tr>
										</table>
									</div>
								</div>
								<div class="card-footer small text-muted" style="text-align: center;">
									<input type="submit" id="go" class="btn btn-primary" value="저장" /> <input type="button"
										id="list" class="btn btn-primary" value="목록"
										onclick="location.href='/admin/notice/${menu}/list.do'" />
								</div>
							</form>
						</c:when>

						<c:when test="${mode == 'update'}">
							<form method=post action="/fileUp?mode=update&no=${no}" id="form1" enctype="multipart/form-data"
								onsubmit="submitContents(this);">
								<div class="card-header"></div>
								<div class="card-body">
									<div class="notice_bx" style="width: 825px; margin: 0 auto;">
										<table class="detailTable" id="detailTable">
											<colgroup>
												<col width="20%">
												<col width="*">
											</colgroup>
											<tr class="lineTop">
												<th>제목</th>
												<td><input type="text" class="form-control" name="notice_title"
													value="${bean.getNotice_title() }" required></td>
											</tr>
											<c:if test="${menu=='notice'}">
												<tr>
													<th>공지여부</th>
													<td class="ve"><c:if test="${bean.getNotice_bool() == 't'}">
															<c:set var="boolT" value='checked' />
														</c:if> <c:if test="${bean.getNotice_bool() == 'f'}">
															<c:set var="boolF" value='checked' />
														</c:if> <input type="radio" name="notice_bool" value="t" class="inp_radio" ${boolT}
														id="boolO" /><label for="boolO" style="margin-right: 20px">공지함</label> <input
														${boolF} type="radio" name="notice_bool" value="f" class="inp_radio" id="boolX" /><label
														for="boolX">공지안함</label></td>
												</tr>
												<tr>
													<th>메인사진</th>
													<td><div class="filebox">
															<input class="upload-name" value="${bean.getNotice_img()}" disabled="disabled">
															<label for="input-file0">업로드</label> <input type="file" id="input-file0"
																class="upload-hidden" name="notice_img">
														</div></td>
												</tr>
											</c:if>
											<tr class="lineBottom">
												<th>첨부파일</th>
												<td><c:forEach var="item" items="${files}" varStatus="i">
														<div class="filebox">
															<input class="upload-name" value="${item.getFile_oriname()}" disabled="disabled">
															<label for="input-file${i.index+1}">업로드</label> <input type="file"
																id="input-file${i.index+1}" class="upload-hidden" name="notice_file${i.index+1}">
														</div>
													</c:forEach> <c:forEach var="i" begin="${files.size()+1}" end="4">
														<div class="filebox">
															<input class="upload-name" value="${item.getFile_oriname()}" disabled="disabled">
															<label for="input-file${i}">업로드</label> <input type="file" id="input-file${i}"
																class="upload-hidden" name="notice_file${i}">
														</div>
													</c:forEach></td>
											</tr>
											<tr>
												<td colspan="2"></td>
											</tr>
											<tr class="contentTr">
												<td colspan="2">
													<div style="width: 860px; margin: 0 auto;">
														<textarea name="ir1" id="ir1" rows="10" cols="100"
															style="width: 100%; height: 500px; display: none;"></textarea>
														<input type="hidden" name="menu" value="${menu}" /> <input type="hidden" name="url"
															value="${url}" />
													</div>
												</td>
											</tr>
											<tr>
												<td colspan="2"></td>
											</tr>
										</table>
									</div>
								</div>
								<div class="card-footer small text-muted" style="text-align: center;">
									<input type="submit" id="go" class="btn btn-primary" value="저장" /> <input type="button"
										id="list" class="btn btn-primary" value="목록"
										onclick="location.href='/admin/notice/${menu}/list.do'" /> <input type="button"
										class="btn btn-primary" value="뒤로가기" onclick="history.go(-1)" />
								</div>
							</form>
						</c:when>
					</c:choose>
				</div>
			</div>
			<%@ include file="/WEB-INF/include/admin/footer.jsp"%>
		</div>
	</div>
	<script>
		var oEditors = [];

		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "ir1",
			sSkinURI : "/editor/SmartEditor2Skin.html",
			htParams : {
				bUseToolbar : true,
				bUseVerticalResizer : true,
				bUseModeChanger : false,
				fOnBeforeUnload : function() {
				}
			}, //boolean
			fOnAppLoad : function() {
				oEditors.getById["ir1"].exec("PASTE_HTML",
						[ '${bean.getNotice_content()}' ]);
			},
			fCreator : "createSEditor2"
		});

		function submitContents(elClickedObj) {
			oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
		}
	</script>
	<%@ include file="/WEB-INF/include/admin/logout.jsp"%>
	<%@ include file="/WEB-INF/include/admin/js.jsp"%>
</body>
</html>