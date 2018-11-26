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
			bean.setVisit_no(rs.getInt("visit_no"));
			bean.setVisit_lat(rs.getDouble("visit_lat")); 
			bean.setVisit_lng(rs.getDouble("visit_lng"));
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
	
	public static void main(String args[]) {
		VisitBean bean = new VisitBean();
		System.out.println(bean.getVisit_address());
	}
}