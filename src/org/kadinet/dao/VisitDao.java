package org.kadinet.dao;

import org.kadinet.model.VisitBean;
import org.kadinet.util.DBCon;

public class VisitDao extends DBCon {
	private static VisitDao dao = new VisitDao();

	private VisitDao() {
	}

	public static VisitDao getInstance() {
		return dao;
	}

	public VisitBean getDirectionInfo() {
		VisitBean bean = new VisitBean();
		try {
			conStart();
			sql = "select * from visit";
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();
			
			if(rs.next()) {
			bean.setVisit_no(rs.getString("visit_no"));
			bean.setVisit_lat(rs.getString("visit_lat")); 
			bean.setVisit_lng(rs.getString("visit_lng"));
			bean.setVisit_address(rs.getString("visit_address"));
			bean.setVisit_phone(rs.getString("visit_phone"));
			bean.setVisit_fax(rs.getString("visit_fax"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
		return bean;
	}
	
	public void updateVisit(String visit_x,String visit_y,String address,String phone,String fax) {
		try {
			conStart();
			sql = "update visit set visit_lat=?, visit_lng=?, visit_address=?, visit_phone=?, visit_fax=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, visit_x);
			pstmt.setString(2, visit_y);
			pstmt.setString(3, address);
			pstmt.setString(4, phone);
			pstmt.setString(5, fax);
			
			pstmt.executeUpdate();
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
	}
}