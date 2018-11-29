package org.kadinet.util;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kadinet.service.NoticeService;

@WebServlet("/fileUp")
public class FileUpload extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String menu = request.getParameter("menu");
		System.out.println(menu);
		if (menu == null) {
			response.sendRedirect("/index.do");
		} else {
			NoticeService service  = NoticeService.getInstance();
		}
	}
}
