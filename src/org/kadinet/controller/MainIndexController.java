package org.kadinet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.kadinet.util.HttpUtil;

public class MainIndexController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, String path)
			throws ServletException, IOException {

		if ("/index.do".equals(path)) {
			index(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/index/index.jsp");
		} else if ("/join.do".equals(path)) {
			HttpUtil.forward(request, response, "/WEB-INF/views/main/index/join.jsp");
		} else if ("/login.do".equals(path)) {
			HttpUtil.forward(request, response, "/WEB-INF/views/main/index/login.jsp");
		}

	}

	private void index(HttpServletRequest request, HttpServletResponse response) {
		// HttpSession session = request.getSession();

	}
}
