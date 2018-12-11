package org.kadinet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.kadinet.service.MbrService;
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

	private void leave(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("page", "leave");

	}

}
