package org.kadinet.model;

import java.util.Date;

public class MenuBean {
	private String menu_tit;
	private String menu_content;
	private Date menu_update_date;
	private String menu_etc;
	public String getMenu_tit() {
		return menu_tit;
	}
	public void setMenu_tit(String menu_tit) {
		this.menu_tit = menu_tit;
	}
	public String getMenu_content() {
		return menu_content;
	}
	public void setMenu_content(String menu_content) {
		this.menu_content = menu_content;
	}
	public Date getMenu_update_date() {
		return menu_update_date;
	}
	public void setMenu_update_date(Date menu_update_date) {
		this.menu_update_date = menu_update_date;
	}
	public String getMenu_etc() {
		return menu_etc;
	}
	public void setMenu_etc(String menu_etc) {
		this.menu_etc = menu_etc;
	}
}
