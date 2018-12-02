package org.kadinet.servlet;

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

		String mode = request.getParameter("mode");
		if (mode == null) {
			response.sendRedirect("/index.do");
		} else if ("new".equals(mode)) {
			NoticeService service = NoticeService.getInstance();
			String url = service.insertNotice(request);
			response.sendRedirect(url);
		} else if ("update".equals(mode)) {
			NoticeService service = NoticeService.getInstance();
			String no = request.getParameter("no");
			
			String url = service.updateNotice(request,no);
			response.sendRedirect(url);
		}
	}
}
