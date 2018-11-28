package org.kadinet.dao;

import org.kadinet.model.MenuBean;
import org.kadinet.util.DBCon;

public class MenuDao extends DBCon{
	private static MenuDao dao = new MenuDao();

	private MenuDao() {
	}

	public static MenuDao getInstance() {
		return dao;
	}
	
	public MenuBean getMenuData(String menu) {
		MenuBean bean = new MenuBean();
		try {
			conStart();
			sql = "SELECT *,DATE_FORMAT(menu_update_date, '%Y-%m-%d') as reg FROM menu where menu_tit = ?;";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, menu);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bean.setMenu_update_date(rs.getDate("reg"));
				bean.setMenu_content(rs.getString("menu_content"));
				bean.setMenu_etc(rs.getString("menu_etc"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}

		return bean;
	}
}
