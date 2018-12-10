package org.kadinet.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kadinet.service.HistoryService;
import org.kadinet.service.MemberService;
import org.kadinet.service.NoticeService;
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

			String[] userData = service.checkLogin(id, pw);

			String authority = "-1";
			if ("0".equals(userData[2]) || "2".equals(userData[2])) {
				request.getSession().setAttribute("userData", userData);
				service.updateLastLogin(id);
				authority = userData[2];
			} else if ("1".equals(userData[2])) {
				authority = "1";
			} else if ("3".equals(userData[2])) {
				authority = "3";
			}
			out.print(authority);
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

			service.addHistory(year, month, day, data);
		} else if ("deleteHistory".equals(method)) {
			HistoryService service = HistoryService.getInstance();
			int no = Integer.parseInt(request.getParameter("id"));
			service.deleteHistory(no);

		} else if ("updateVisit".equals(method)) {
			VisitService service = VisitService.getInstance();
			String visit_x = request.getParameter("visit_x");
			String visit_y = request.getParameter("visit_y");
			String address = request.getParameter("address");
			String phone = request.getParameter("phone");
			String fax = request.getParameter("fax");
			service.updateVisit(visit_x, visit_y, address, phone, fax);

		} else if ("deleteMbrList".equals(method)) {
			UserService service = UserService.getInstance();
			String id = request.getParameter("id");
			service.deleteUser(id);
		} else if ("recognizeMbrList".equals(method)) {
			UserService service = UserService.getInstance();
			String id = request.getParameter("id");
			int authority = Integer.parseInt(request.getParameter("authority"));
			service.recognizeUser(authority, id);
		} else if ("deleteNotice".equals(method)) {
			NoticeService service = NoticeService.getInstance();
			service.deleteNotice(request);
		} else if ("deleteMember".equals(method)) {
			MemberService service = MemberService.getInstance();
			service.deleteMember(request);
		} else if ("moveNotice".equals(method)) {
			NoticeService service = NoticeService.getInstance();
			service.moveNotice(request);
		}
	}
}
