<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>디지털산업협회</title>
<%@ include file="/WEB-INF/include/admin/css.jsp"%>
<script src="/boot/vendor/jquery/jquery.min.js"></script>
<script src="/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<c:choose>
	<c:when test="${empty mode}">
		<script>
			$(function() {
				$('#update').click(function() {
					location.href = '/admin/${url}.do?mode=update';
				});
			});
		</script>
	</c:when>
	<c:when test="${mode == 'update'}">
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

				$('#update').click(function() {
					oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
					$('#form1').submit();
				});
			});
		</script>
	</c:when>
</c:choose>
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
					<div class="card-header">수정일 : ${bean.getMenu_update_date()}</div>
					<div class="card-body">
						<c:choose>
							<c:when test="${empty mode}">
								<div class="editorWrap">${bean.getMenu_content()}</div>
							</c:when>
							<c:when test="${mode=='update'}">
								<div style="width: 860px; margin: 0 auto;">
									<form method=post action="/fileUp" id="form1">
										<textarea name="ir1" id="ir1" rows="10" cols="100"
											style="width: 100%; height: 500px; display: none;"></textarea>
										<input type="hidden" name="menu" value="${menu}" /> <input type="hidden" name="url"
											value="${url}" />
									</form>
								</div>
							</c:when>
						</c:choose>
					</div>
					<div class="card-footer small text-muted" style="text-align: right;">
						<c:choose>
							<c:when test="${empty mode}">
								<input type="button" id="update" class="btn btn-primary" value="수정" />
							</c:when>
							<c:when test="${mode=='update'}">
								<input type="button" id="update" class="btn btn-primary" value="저장" />
							</c:when>
						</c:choose>
					</div>
				</div>

			</div>
			<%@ include file="/WEB-INF/include/admin/footer.jsp"%>
		</div>
	</div>
	<%@ include file="/WEB-INF/include/admin/logout.jsp"%>
	<%@ include file="/WEB-INF/include/admin/js.jsp"%>
</body>
</html>