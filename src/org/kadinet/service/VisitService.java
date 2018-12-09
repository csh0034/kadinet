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
	
	public void updateVisit(String visit_x,String visit_y,String address,String phone,String fax) {
		dao.updateVisit(visit_x,visit_y,address,phone,fax);
	}
	
}
