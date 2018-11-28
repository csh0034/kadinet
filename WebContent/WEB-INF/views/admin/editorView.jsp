<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>디지털산업협회</title>
<%@ include file="/WEB-INF/include/admin/css.jsp"%>
<script src="/boot/vendor/jquery/jquery.min.js"></script>
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
					<div class="card-header"></div>
					<div class="card-body">
						<div class="editorWrap">
							${menu.getMenu_content()}
						</div>
					</div>
					<div class="card-footer small text-muted" style="text-align: right;">
						<input type="button" id="insertBoard" class="btn btn-primary" value="수정" />
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