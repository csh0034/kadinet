package org.kadinet.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBCon {

	public DBConnectionMgr pool;
	public Connection con = null;
	public PreparedStatement pstmt = null;
	public ResultSet rs = null;
	public String sql = null;

	public DBCon() {

		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}

	}

	public void conStart() {
		try {
			con = pool.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void conClose() {
		pool.freeConnection(con, pstmt, rs);
	}

}
