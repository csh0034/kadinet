package org.kadinet.service;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import org.kadinet.dao.HistoryDao;
import org.kadinet.model.HistoryBean;

public class HistoryService {

	private static HistoryService service = new HistoryService();
	public HistoryDao dao = HistoryDao.getInstance();
 
	private HistoryService() {
	}
	public static HistoryService getInstance() {
		return service;
	}
	
	public void getHistoryList(HttpServletRequest request) {
		Vector<HistoryBean>historyList = dao.getHistoryList();
	
		request.setAttribute("historyList", historyList);
	}
}
