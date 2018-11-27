package org.kadinet.controller;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kadinet.util.HttpUtil;

public class FrontController extends HttpServlet {
	String charset = null;
	HashMap<String, Controller> list = null;

	@Override
	public void init(ServletConfig sc) throws ServletException {
		charset = sc.getInitParameter("charset");
		list = new HashMap<String, Controller>();

		list.put("/index.do", new MainIndexController());
		list.put("/join.do", new MainIndexController());
		list.put("/joinProc.do", new MainIndexController());
		list.put("/login.do", new MainIndexController());
		list.put("/logout.do", new MainIndexController());
		list.put("/find.do", new MainIndexController());
		// list.put("/deleteUser.do", new MainIndexController());

		list.put("/intro/greeting.do", new MainIntroController());
		list.put("/intro/history.do", new MainIntroController());
		list.put("/intro/member.do", new MainIntroController());
		list.put("/intro/organization.do", new MainIntroController());
		list.put("/intro/visit.do", new MainIntroController());

		list.put("/notice/notice/list.do", new MainNoticeController());
		list.put("/notice/press/list.do", new MainNoticeController());
		list.put("/notice/data/list.do", new MainNoticeController());
		list.put("/notice/notice/detail.do", new MainNoticeController());
		list.put("/notice/press/detail.do", new MainNoticeController());
		list.put("/notice/data/detail.do", new MainNoticeController());

		list.put("/business/career.do", new MainBusinessController());
		list.put("/business/corporation.do", new MainBusinessController());
		list.put("/business/mentoring.do", new MainBusinessController());
		list.put("/business/support.do", new MainBusinessController());
		list.put("/business/education.do", new MainBusinessController());

		list.put("/mbr/memberinfo.do", new MainMbrController());
		list.put("/mbr/update.do", new MainMbrController());
		list.put("/mbr/leave.do", new MainMbrController());

		list.put("/admin/index.do", new AdminController());
		
		list.put("/admin/intro/greeting.do", new AdminController());
		list.put("/admin/intro/history.do", new AdminController());
		list.put("/admin/intro/addHistory.do", new AdminController());
		list.put("/admin/intro/member.do", new AdminController());
		list.put("/admin/intro/organization.do", new AdminController());
		list.put("/admin/intro/visit.do", new AdminController());
		
		list.put("/admin/notice/notice/list.do", new AdminController());
		list.put("/admin/notice/press/list.do", new AdminController());
		list.put("/admin/notice/data/list.do", new AdminController());
		list.put("/admin/notice/notice/detail.do", new AdminController());
		list.put("/admin/notice/press/detail.do", new AdminController());
		list.put("/admin/notice/data/detail.do", new AdminController());
		
		list.put("/admin/business/career.do", new AdminController());
		list.put("/admin/business/corporation.do", new AdminController());
		list.put("/admin/business/mentoring.do", new AdminController());
		list.put("/admin/business/support.do", new AdminController());
		list.put("/admin/business/education.do", new AdminController());
		
		list.put("/admin/mbr/memberinfo.do", new AdminController());
		list.put("/admin/mbr/memberlogo.do", new AdminController());
	}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(charset);
		String url = request.getRequestURI();
		String contextPath = request.getContextPath();
		String path = url.substring(contextPath.length());

		Controller subController = list.get(path);

		if (subController != null) {
			subController.execute(request, response, path);
		} else {
			HttpUtil.forward(request, response, "/errorPage/error404.jsp");
		}

	}

}
