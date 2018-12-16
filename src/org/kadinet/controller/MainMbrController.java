package org.kadinet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.kadinet.model.UserBean;
import org.kadinet.service.MbrService;
import org.kadinet.service.UserService;
import org.kadinet.util.HttpUtil;

public class MainMbrController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, String path)
			throws ServletException, IOException {
		request.setAttribute("subNav", "4");
		if ("/mbr/memberinfo.do".equals(path)) {
			memberinfo(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/mbr/memberinfo.jsp");
		} else if ("/mbr/update.do".equals(path)) {
			update(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/mbr/update.jsp");
		} else if ("/mbr/leave.do".equals(path)) {
			leave(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/mbr/leave.jsp");
		} else if ("/mbr/updateProc.do".equals(path)) {
			updateProc(request, response);
			request.getSession().removeAttribute("userData");
			response.sendRedirect("/login.do");
		}
	}

	private void memberinfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("page", "memberinfo");

		MbrService service = MbrService.getInstance();

		service.getMbrList(request);
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("page", "update");

	}

	private void updateProc(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String pw = request.getParameter("u_pw");
		String name = request.getParameter("u_name");
		String phone = request.getParameter("u_phone");
		String addr1 = request.getParameter("u_addr1");
		String addr2 = request.getParameter("u_addr2");
		String email = request.getParameter("u_email");
		String email_receive = request.getParameter("u_email_receive");
		String sms_receive = request.getParameter("u_sms_receive");
		String id = request.getParameter("user_id");
		
		UserBean user = new UserBean();

		user.setUser_pw(pw);
		user.setUser_name(name);
		user.setUser_phone(phone);
		user.setUser_addr1(addr1);
		user.setUser_addr2(addr2);
		user.setUser_email(email);
		user.setUser_email_receive(email_receive);
		user.setUser_sms_receive(sms_receive);
		user.setUser_id(id);

		UserService service = UserService.getInstance();
		service.updateUser(user);
	}

	private void leave(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("page", "leave");

	}

}
