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
	private String user_email_receive;
	private String user_sms_receive;
	private String user_zipCode;
	private String user_address;
	private String user_detailAddress;
	
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
	public String getUser_email_receive() {
		return user_email_receive;
	}
	public void setUser_email_receive(String user_email_receive) {
		this.user_email_receive = user_email_receive;
	}
	public String getUser_sms_receive() {
		return user_sms_receive;
	}
	public void setUser_sms_receive(String user_sms_receive) {
		this.user_sms_receive = user_sms_receive;
	}
	public String getUser_zipCode() {
		return user_zipCode;
	}
	public void setUser_zipCode(String user_zipCode) {
		this.user_zipCode = user_zipCode;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public String getUser_detailAddress() {
		return user_detailAddress;
	}
	public void setUser_detailAddress(String user_detailAddress) {
		this.user_detailAddress = user_detailAddress;
	}
	
}
