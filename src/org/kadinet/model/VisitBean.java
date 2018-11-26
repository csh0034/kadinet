package org.kadinet.model;

public class VisitBean {
	
	private int visit_no;
	private double visit_lat;
	private double visit_lng;
	private String visit_address;
	private String visit_phone;
	private String visit_fax;
	
	public int getVisit_no() {
		return visit_no;
	}
	public void setVisit_no(int visit_no) {
		this.visit_no = visit_no;
	}
	public double getVisit_lat() {
		return visit_lat;
	}
	public void setVisit_lat(double visit_lat) {
		this.visit_lat = visit_lat;
	}
	public double getVisit_lng() {
		return visit_lng;
	}
	public void setVisit_lng(double visit_lng) {
		this.visit_lng = visit_lng;
	}
	public void setVisit_lng(int visit_lng) {
		this.visit_lng = visit_lng;
	}
	public String getVisit_address() {
		return visit_address;
	}
	public void setVisit_address(String visit_address) {
		this.visit_address = visit_address;
	}
	public String getVisit_phone() {
		return visit_phone;
	}
	public void setVisit_phone(String visit_phone) {
		this.visit_phone = visit_phone;
	}
	public String getVisit_fax() {
		return visit_fax;
	}
	public void setVisit_fax(String visit_fax) {
		this.visit_fax = visit_fax;
	}
}