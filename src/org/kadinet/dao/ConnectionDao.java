package org.kadinet.dao;

import org.kadinet.util.DBCon;

public class ConnectionDao extends DBCon {
	private static ConnectionDao dao = new ConnectionDao();

	private ConnectionDao() {
	}

	public static ConnectionDao getInstance() {
		return dao;
	}
}
