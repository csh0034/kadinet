package org.kadinet.service;
import javax.servlet.http.HttpServletRequest;

import org.kadinet.dao.MenuDao;
import org.kadinet.model.MenuBean;


public class MenuService {

	private static MenuService service = new MenuService();
	public MenuDao dao = MenuDao.getInstance();

	private MenuService() {
	}

	public static MenuService getInstance() {
		return service;
	}
	
	public void getMenuData(String menu, HttpServletRequest request) {
		MenuBean bean = dao.getMenuData(menu);
		request.setAttribute("menu", bean);
	}
	
}
