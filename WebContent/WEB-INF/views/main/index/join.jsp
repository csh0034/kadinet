<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/include/global/meta.jsp"%>
<title>디지털산업협회</title>
<%@ include file="/WEB-INF/include/global/css.jsp"%>
<%@ include file="/WEB-INF/include/main/css.jsp"%>
<%@ include file="/WEB-INF/include/global/js.jsp"%>
<%@ include file="/WEB-INF/include/main/js.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/include/main/header.jsp"%>
	<section class="wrap">
		<div class="login_menu_img">
			<b>회원</b>
		</div>
		<div class="main">
			<article class="contents">
				<%@ include file="/WEB-INF/include/main/subNav.jsp"%>
				<div class="contents_box">
					<div class="contents_box_top">
						<h3 class="location">회원가입</h3>
					</div>
					<div class="contents_box_bottom">
						<div class="join_bx">
							<div class="joinform_wrap">
								<form action="" method="GET">
							        <table>
							            <tr>
							                <th>아이디</th>
							                <td><input type="text" name="userId" value=""/></td>
							            </tr>
							            <tr>
							                <th>비밀번호</th>
							                <td><input type="password" name="userPw" value=""/></td>
							            </tr>
							            <tr>
							                <th>비밀번호 확인</th>
							                <td><input type="password" name="userPwCheck" value=""/></td>
							            </tr>
							            <tr>
							                <th>이름</th>
							                <td><input type="text" name="userName" value=""/></td>
							            </tr>
							            <tr>
							                <th>이메일</th>
							                <td><input type="email" name="email" value=""/></td>
							            </tr>
							            <tr>
							                <th>생년월일</th>
							                <td>
							                    <select name="year">
							                        <option value="1989">1989</option>
							                        <option value="1990">1990</option>
							                        <option value="1991">1991</option>
							                        <option value="1992">1992</option>
							                        <option value="1993">1993</option>
							                        <option value="1994">1994</option>
							                        <option value="1995">1995</option>
							                        <option value="1996">1996</option>
							                        <option value="1997">1997</option>
							                        <option value="1998">1998</option>
							                        <option value="1999" selected>1999</option>
							                    </select>
							                    
							                    <select name="month">
							                        <option value="01">01</option>
							                        <option value="02">02</option>
							                        <option value="03">03</option>
							                        <option value="04">04</option>
							                        <option value="05">05</option>
							                        <option value="06">06</option>
							                        <option value="07">07</option>
							                        <option value="08">08</option>
							                        <option value="09">09</option>
							                        <option value="10">10</option>
							                        <option value="11">11</option>
							                        <option value="12">12</option>
							                    </select>
							                    
							                    <select name="day">
							                            <option value="01">01</option>
							                            <option value="02">02</option>
							                            <option value="03">03</option>
							                            <option value="04">04</option>
							                            <option value="05">05</option>
							                            <option value="06">06</option>
							                            <option value="07">07</option>
							                            <option value="08">08</option>
							                            <option value="09">09</option>
							                            <option value="10">10</option>
							                            <option value="11">11</option>
							                            <option value="12">12</option>
							                            <option value="13">13</option>
							                            <option value="14">14</option>
							                            <option value="15">15</option>
							                            <option value="16">16</option>
							                            <option value="17">17</option>
							                            <option value="18">18</option>
							                            <option value="19">19</option>
							                            <option value="20">20</option>
							                            <option value="21">21</option>
							                            <option value="22">22</option>
							                            <option value="23">23</option>
							                            <option value="24">24</option>
							                            <option value="25">25</option>
							                            <option value="26">26</option>
							                            <option value="27">27</option>
							                            <option value="28">28</option>
							                            <option value="29">29</option>
							                            <option value="30">30</option>
							                            <option value="31">31</option>
							                    </select>
							                </td>
							            </tr>
							            <tr>
							                <th>성별</th>
							                <td>
							                    <input type="radio" name="gender" value="남자" class="inp_radio"/> 남자 
							                    <input type="radio" name="gender" value="여자" class="inp_radio"/> 여자
							                </td>
							            </tr>
							        </table>
							        <input type="submit" value="회원가입" class="join_btn"/>
							    </form>
					    	</div>
						</div>
					</div>
				</div>
			</article>
		</div>
	</section>
	<%@ include file="/WEB-INF/include/main/footer.jsp"%>
</body>
</html>