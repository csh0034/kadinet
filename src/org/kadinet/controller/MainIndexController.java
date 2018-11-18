package org.kadinet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.kadinet.util.HttpUtil;
import org.kadinet.model.UserBean;
import org.kadinet.service.UserService;

public class MainIndexController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, String path)
			throws ServletException, IOException {
		if ("/index.do".equals(path)) {
			index(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/index/index.jsp");
		} else if ("/join.do".equals(path)) {
			join(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/index/join.jsp");
		} else if ("/joinProc.do".equals(path)) {
			joinProc(request, response);
			response.sendRedirect("/login.do");
		} else if ("/login.do".equals(path)) {
			login(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/index/login.jsp");
		} else if ("/logout.do".equals(path)) {
			request.getSession().invalidate();
			response.sendRedirect("/index.do");
		} else if ("/find.do".equals(path)) {
			find(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/index/find.jsp");
		} /*
			 * else if ("/deleteUser.do".equals(path)) { deleteUser(request, response);
			 * response.sendRedirect("/index.do"); }
			 */
	}

	private void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("index", "true");
	}

	private void join(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("subNav", "5");
		request.setAttribute("page", "join");

	}

	private void joinProc(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("u_id");
		String pw = request.getParameter("u_pw");
		String name = request.getParameter("u_name");
		String email = request.getParameter("u_email");
		String phone = request.getParameter("u_phone");
		String mail_receive = request.getParameter("u_email_receive");
		String sms_receive = request.getParameter("u_sms_receive");

		UserBean user = new UserBean();

		user.setUser_id(id);
		user.setUser_pw(pw);
		user.setUser_name(name);
		user.setUser_email(email);
		user.setUser_phone(phone);
		user.setUser_email_receive(mail_receive);
		user.setUser_sms_receive(sms_receive);

		UserService service = UserService.getInstance();
		service.insertUser(user);

	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("subNav", "5");
		request.setAttribute("page", "login");

	}

	private void find(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("subNav", "5");
		request.setAttribute("page", "find");

	}

	/*
	 * private void deleteUser(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException { String id =
	 * request.getParameter("id"); UserService service = UserService.getInstance();
	 * service.deleteUser(id);
	 * 
	 * }
	 */
}
