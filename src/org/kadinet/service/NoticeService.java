package org.kadinet.service;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import org.kadinet.dao.NoticeDao;
import org.kadinet.model.NoticeBean;

public class NoticeService {

	private static NoticeService service = new NoticeService();
	public NoticeDao dao = NoticeDao.getInstance();

	private NoticeService() {
	}

	public static NoticeService getInstance() {
		return service;
	}

	public void getNoticeList(String category, HttpServletRequest request) {
		int totalRecord = 0;
		int numPerPage = 10;
		int pagePerBlock = 10;
		int totalPage = 0;
		int totalBlock = 0;
		int nowPage = 1;
		int nowBlock = 1;
		int start = 0;
		String keyWord = "";
		String keyField = "";

		if (request.getParameter("keyWord") != null) {
			keyWord = request.getParameter("keyWord");
			keyField = request.getParameter("keyField");
		}

		if (request.getParameter("nowPage") != null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}

		totalRecord = dao.getCount(category, keyField, keyWord);
		totalPage = (int) Math.ceil((double) totalRecord / numPerPage);
		nowBlock = (int) Math.ceil((double) nowPage / pagePerBlock);

		totalBlock = (int) Math.ceil((double) totalPage / pagePerBlock);

		int pageStart = (nowBlock - 1) * pagePerBlock + 1;
		int pageEnd = ((pageStart + pagePerBlock) <= totalPage) ? (pageStart + pagePerBlock - 1) : totalPage;

		Vector<NoticeBean> list = dao.getNoticeList(category, start, numPerPage, keyField, keyWord);

		request.setAttribute("list", list);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("nowBlock", nowBlock);
		request.setAttribute("pageStart", pageStart);
		request.setAttribute("pageEnd", pageEnd);
		request.setAttribute("totalBlock", totalBlock);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("totalRecord", totalRecord);

	}
}
