package org.kadinet.dao;

import java.util.Vector;
import org.kadinet.model.VisitBean;
import org.kadinet.util.DBCon;

public class VisitDao extends DBCon {
	private static VisitDao dao = new VisitDao();

	private VisitDao() {
	}

	public static VisitDao getInstance() {
		return dao;
	}

	public Vector<VisitBean> getDirectionInfo() {
		Vector<VisitBean> visitList = new Vector<VisitBean>();

		try {
			conStart();
			sql = "select * from visit";
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				VisitBean bean = new VisitBean();
				bean.setVisit_no(rs.getInt("visit_no"));
				bean.setVisit_lat(rs.getInt("visit_lat"));
				bean.setVisit_lng(rs.getInt("visit_lng")); 
				bean.setVisit_address(rs.getString("visit_address"));
				bean.setVisit_phone(rs.getString("visit_phone"));
				bean.setVisit_fax(rs.getString("visit_fax"));

				visitList.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}

		return visitList;

	}
}