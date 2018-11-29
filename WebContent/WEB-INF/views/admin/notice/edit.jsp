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
<script src="/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script>
	$(function() {
		var oEditors = [];

		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "ir1",
			sSkinURI : "/editor/SmartEditor2Skin.html",
			htParams : {
				bUseToolbar : true, // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseVerticalResizer : true, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseModeChanger : false, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
				fOnBeforeUnload : function() {
				}
			}, //boolean
			fOnAppLoad : function() {
				oEditors.getById["ir1"].exec("PASTE_HTML",
						[ '${bean.getMenu_content()}' ]);
			},
			fCreator : "createSEditor2"
		});
	});

	function goSave() {
		oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
		$('#form1').submit();
	}
</script>
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
					<form method=post action="/fileUp?menu=${menu}" id="form1"
						enctype="multipart/form-data" onsubmit="goSave()">
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
										<td><input type="text" class="form-control" required></td>
									</tr>
									<c:if test="${menu=='notice'}">
										<tr>
											<th>공지여부</th>
											<td class="ve"><input type="radio" name="notice_bool"
												value="O" class="inp_radio" checked id="boolO" /><label
												for="boolO" style="margin-right: 20px">공지함</label> <input
												type="radio" name="notice_bool" value="X" class="inp_radio"
												id="boolX" /><label for="boolX">공지안함</label></td>
										</tr>
									</c:if>
									<tr>
										<th>메인사진</th>
										<td><div class="filebox">
												<input class="upload-name" value="파일선택" disabled="disabled">
												<label for="input-file0">업로드</label> <input type="file"
													required id="input-file0" class="upload-hidden"
													name="notice_img">
											</div></td>
									</tr>
									<tr class="lineBottom">
										<th>첨부파일</th>
										<td>
											<div class="filebox">
												<input class="upload-name" value="파일선택" disabled="disabled">
												<label for="input-file">업로드</label> <input type="file"
													id="input-file" class="upload-hidden" name="notice_file">
											</div>
											<div class="filebox">
												<input class="upload-name" value="파일선택" disabled="disabled">
												<label for="input-file2">업로드</label> <input type="file"
													id="input-file2" class="upload-hidden" name="notice_file">
											</div>
											<div class="filebox">
												<input class="upload-name" value="파일선택" disabled="disabled">
												<label for="input-file3">업로드</label> <input type="file"
													id="input-file3" class="upload-hidden" name="notice_file">
											</div>
											<div class="filebox">
												<input class="upload-name" value="파일선택" disabled="disabled">
												<label for="input-file4">업로드</label> <input type="file"
													id="input-file4" class="upload-hidden" name="notice_file">
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
												<input type="hidden" name="menu" value="${menu}" /> <input
													type="hidden" name="url" value="${url}" />
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="2"></td>
									</tr>
								</table>
							</div>
						</div>
						<div class="card-footer small text-muted"
							style="text-align: center;">
							<input type="submit" id="go" class="btn btn-primary" value="저장" />
							<input type="button" id="list" class="btn btn-primary" value="목록"
								onclick="location.href='/admin/notice/${menu}/list.do'" />
						</div>
					</form>
				</div>
			</div>
			<%@ include file="/WEB-INF/include/admin/footer.jsp"%>
		</div>
	</div>
	<%@ include file="/WEB-INF/include/admin/logout.jsp"%>
	<%@ include file="/WEB-INF/include/admin/js.jsp"%>
</body>
</html>