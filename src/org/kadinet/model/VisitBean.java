package org.kadinet.model;

public class VisitBean {
	
	private int visit_no;
	private int lat;
	private int lng;
	private String association_address;
	private String association_phone;
	private String association_fax;
	
	public int getVisit_no() {
		return visit_no;
	}
	public void setVisit_no(int visit_no) {
		this.visit_no = visit_no;
	}
	public int getLat() {
		return lat;
	}
	public void setLat(int lat) {
		this.lat = lat;
	}
	public int getLng() {
		return lng;
	}
	public void setLng(int lng) {
		this.lng = lng;
	}
	public String getAssociation_address() {
		return association_address;
	}
	public void setAssociation_address(String association_address) {
		this.association_address = association_address;
	}
	public String getAssociation_phone() {
		return association_phone;
	}
	public void setAssociation_phone(String association_phone) {
		this.association_phone = association_phone;
	}
	public String getAssociation_fax() {
		return association_fax;
	}
	public void setAssociation_fax(String association_fax) {
		this.association_fax = association_fax;
	}
}
