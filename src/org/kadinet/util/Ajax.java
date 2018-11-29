package org.kadinet.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kadinet.service.HistoryService;
import org.kadinet.service.UserService;
import org.kadinet.service.VisitService;

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

			boolean flag = service.checkLogin(id, pw);
			if (flag) {
				request.getSession().setAttribute("id", id);
				service.updateLastLogin(id);
			}
			out.print(flag);
		} else if ("checkId".equals(method)) {
			UserService service = UserService.getInstance();
			String id = request.getParameter("id");
			boolean flag = service.checkId(id);
			out.print(flag);
		} else if ("addHistory".equals(method)) {
			HistoryService service = HistoryService.getInstance();
			String year = request.getParameter("year");
			String month = request.getParameter("month");
			String day = request.getParameter("day");
			String data = request.getParameter("data");
			
			service.addHistory(year,month,day,data);
		} else if ("deleteHistory".equals(method)) {
			HistoryService service = HistoryService.getInstance();
			String no = request.getParameter("id");
			service.deleteHistory(no);
			
		} else if ("updateVisit".equals(method)) {
			VisitService service = VisitService.getInstance();
			String visit_x = request.getParameter("visit_x");
			String visit_y = request.getParameter("visit_y");
			String address = request.getParameter("address");
			String phone = request.getParameter("phone");
			String fax = request.getParameter("fax");
			service.updateVisit(visit_x,visit_y,address,phone,fax);
		}

	}
}
