package org.kadinet.model;

import java.sql.Date;

public class UserBean {
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_email;
	private String user_phone;
	private Date user_regdate;
	private	Date user_last_login;
	private String user_authority;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public Date getUser_regdate() {
		return user_regdate;
	}
	public void setUser_regdate(Date user_regdate) {
		this.user_regdate = user_regdate;
	}
	public Date getUser_last_login() {
		return user_last_login;
	}
	public void setUser_last_login(Date user_last_login) {
		this.user_last_login = user_last_login;
	}
	public String getUser_authority() {
		return user_authority;
	}
	public void setUser_authority(String user_authority) {
		this.user_authority = user_authority;
	}
	
	
}
