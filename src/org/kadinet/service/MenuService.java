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
		String mode = request.getParameter("mode");

		if ("update".equals(mode)) {
			request.setAttribute("mode", mode);
		}

		MenuBean bean = dao.getMenuData(menu);

		String value = bean.getMenu_content().replaceAll("\r\n", "");
		value = value.replaceAll("\'", "");
		bean.setMenu_content(value);

		request.setAttribute("bean", bean);
	}

	public void updateMenuData(String menu, String content) {
		dao.updateMenuData(menu, content);
	}

}
