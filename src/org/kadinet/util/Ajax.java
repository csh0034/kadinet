package org.kadinet.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kadinet.service.UserService;

@WebServlet("/ajax")
public class Ajax extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String method = request.getParameter("method");
		PrintWriter out = response.getWriter();
		if (method == null) {
			response.sendRedirect("/index.do");
		} else if ("checkLogin".equals(method)) {
			UserService service = UserService.getInstance();
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");

			boolean flag = service.checkLogin(id,pw);
			if (flag) {
				request.getSession().setAttribute("id", id);
				service.updateLastLogin(id); 
			}

			out.print(flag);
		} /*else if ("checkId".equals(method)) {
			UserService service = UserService.getInstance();
			String id = request.getParameter("id");
			
			boolean flag = service.checkId(id);
			if (flag) {
				
			}
		}*/

	}
}
