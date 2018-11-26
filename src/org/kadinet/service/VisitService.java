package org.kadinet.service;


import javax.servlet.http.HttpServletRequest;

import org.kadinet.dao.VisitDao;
import org.kadinet.model.VisitBean;

public class VisitService {

	private static VisitService service = new VisitService();
	public VisitDao dao = VisitDao.getInstance();

	private VisitService() {
	}

	public static VisitService getInstance() {
		return service;
	}

	public void getDirectionInfo(HttpServletRequest request) {
		VisitBean bean = dao.getDirectionInfo();
		request.setAttribute("direcList", bean);
	}
	
}
