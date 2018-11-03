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
		list.put("/login.do", new MainIndexController());

		list.put("/admin/index.do", new AdminIndexController());
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
