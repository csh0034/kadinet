<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>디지털산업협회</title>
<%@ include file="/WEB-INF/include/admin/css.jsp"%>
<script src="/boot/vendor/jquery/jquery.min.js"></script>
<script src="/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
	$(function() {
		//전역변수
		var obj = [];
		//스마트에디터 프레임생성
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : obj,
			elPlaceHolder : "editor",
			sSkinURI : "/editor/SmartEditor2Skin.html",
			htParams : {
				bUseToolbar : true,
				bUseVerticalResizer : true,
				bUseModeChanger : false,
			}
		});
		$("#insertBoard").click(function() {
			obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
			$("#insertBoardFrm").submit();
		});
	});
</script>
</head>
<body id="page-top">
	<%@ include file="/WEB-INF/include/admin/header.jsp"%>
	<div id="wrapper">
		<%@ include file="/WEB-INF/include/admin/subNav.jsp"%>
		<div id="content-wrapper">
			<div class="container-fluid">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">ADMIN &gt; ${page}</li>
				</ol>

				<div class="card mb-3">
					<div class="card-body">
						<div style="width: 882px; margin: 0 auto;">
							<form method="get" id="insertBoardFrm"
								enctype="multipart/form-data">
								<textarea name="editor" id="editor"
									style="width:880px; height: 1000px;"></textarea>
							</form>
						</div>
					</div>
					<div class="card-footer small text-muted" style="text-align: right;">
						<input type="button" id="insertBoard" value="등록" />
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