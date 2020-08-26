package com.view.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connectSQL {

	public static Connection con = null;

	public static Connection getConnect() {

		if (con != null) {
			return con;
		} else {

			String url = "jdbc:sqlserver://localhost:1433;databaseName=SHOP";
			String user = "sa";
			String pass = "123";

			try {

				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				con = DriverManager.getConnection(url, user, pass);
				System.out.println("connect thanh cong");
			} catch (Exception e) {
				System.out.println("connect khong thanh cong");
			}

		}
		return con;
	}

	public static void closeConnect(Connection con) {
		try {
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void rollbackConnect(Connection con) {
		try {
			con.rollback();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}