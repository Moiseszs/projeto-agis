package com.fatec.agis.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SqlConnector {
	
	private static String uri = "jdbc:jtds:sqlserver://localhost:1433/DbAgis_teste01";

	public static Connection connect() throws ClassNotFoundException, SQLException {
		Class.forName("net.sourceforge.jtds.jdbc.Driver");
		Connection connection = DriverManager.getConnection(uri);
		return connection;
	}
}
