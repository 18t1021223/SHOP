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
			System.out.println("closeConnect -loi: " + e.getMessage());
		}
	}

	public static void rollbackConnect(Connection con) {
		try {
			con.rollback();
		} catch (SQLException e) {
			System.out.println("rollbackConnect -loi: " + e.getMessage());
		}
	}

	public static void autoCommit(Connection con, boolean b) {

		try {
			con.setAutoCommit(b);
		} catch (SQLException e) {
			System.out.println("autoCommit - loi: " + e.getMessage());
		}
	}

	public static void commit(Connection con) {
		try {
			con.commit();
		} catch (SQLException e) {
			System.out.println("commit -loi: " + e.getMessage());
		}
	}
}