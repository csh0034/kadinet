package org.kadinet.util;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kadinet.service.MenuService;

@WebServlet("/fileUp")
public class FileUpload extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String menu = request.getParameter("menu");
		if (menu == null) {
			response.sendRedirect("/index.do");
		} else {
			MenuService service = MenuService.getInstance();
			String content = request.getParameter("ir1");
			String url = request.getParameter("url");
			service.updateMenuData(menu, content);
			response.sendRedirect("/admin/"+url+".do");
		}

	}
}
