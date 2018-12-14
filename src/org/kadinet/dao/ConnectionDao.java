package org.kadinet.dao;

import java.util.Vector;

import org.kadinet.util.DBCon;

public class ConnectionDao extends DBCon {
	private static ConnectionDao dao = new ConnectionDao();

	private ConnectionDao() {
	}

	public static ConnectionDao getInstance() {
		return dao;
	}
	
	public void upCount(String date) {
		try {
			conStart();
			sql = "insert into connection values(?,1) on duplicate key update con_count = con_count+1;";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, date);

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
	}
	
	public Vector<String[]> getConnectionList() {
		Vector<String[]> list = new Vector<String[]>();
		try {
			conStart();

			sql = "select * from connection\r\n" + 
					"where str_to_date(con_month,'%Y-%m') > date(subdate(now(), interval 12 month))\r\n" + 
					"and str_to_date(con_month,'%Y-%m') < now();";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String tmp[] = {"" , ""};
				tmp[0] = rs.getString(1);
				tmp[1] = rs.getString(2);
				list.add(tmp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
		return list;
	}
	
}
