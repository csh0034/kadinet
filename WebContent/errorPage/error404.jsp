<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/global/css.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디지털산업협회</title>
<style>
	#wrap {
	    width: 588px;
    	height: 475px;
		margin: 0 auto;
	}
	
	.error_bx {
		margin: 0 auto;
		width: 550px;
		height: 400px;
		padding: 20px 10px;
		margin-top: 100px;
	}
	
	.er_logo {
		width: 100%;
		height: 60px;
		line-height: 60px;
	}
	
	.er_contents {
		width: 100%;
		height: 320px;
		border-top: 3px solid #4f98e3;
		border-bottom: 3px solid #4f98e3;
		padding: 50px 10px;
		text-align: left;
	}
	
	.er_contents h2 {
		font-size: 30px;
		color: #4f98e3;
		margin-bottom: 26px;
	}
	
	.er_contents p {
		font-size: 15px;
		margin-top: 20px;
		line-height: 20px;
	}
	
	.btn_main_area {
		margin-top: 42px;
		text-align: center;
	}
	
	.btn_main {
	    font-size: 16px;
	    padding: 5px 10px;
	    background-color: #4f98e3;
	    border: 1px solid #4f98e3;
	    border-radius: 5px;
	    color: #fff !important;
	}
	
	.btn_main:hover {
	    background-color: #0069d9;
	    border-color: #0062cc;
	}
	
	.er_footer {
		width: 100%;
		height: 50px;
		line-height: 50px;
		text-align: center;
	}
</style>
</head>
<body>
	<div id="wrap">
		<div class="error_bx">
			<div class="er_logo">
				<a href="/index.do">
					<img src="/img/main/index/logo_color.png" alt="로고">
				</a>
			</div>
			<div class="er_contents">
				<h2>요청하신 페이지를 찾을 수 없습니다</h2>
				<p>
					방문 원하시는 페이지의 주소가 잘못 입력되었거나,<br />
				 	변경 혹은 삭제되어 요청하신 페이지를 찾을 수가 없습니다.<br />
				 	입력하신 페이지의 주소가 정확한지 다시 한번 확인해 주시기 바랍니다.<br />
				</p>
				<p>
					접속하신 사이트의 메인페이지로 이동하시겠습니까?<br />
				</p>
				<div class="btn_main_area">
					<a href="http://localhost/index.do" class="btn_main">메인페이지로 이동</a>
				</div>
			</div>
			<div class="er_footer">
				<small>Copyright &copy; 2018 ASk. All Rights reserved.</small>
			</div>
		</div>
	</div>
</body>
</html>