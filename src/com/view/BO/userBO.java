package com.view.BO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.view.BEAN.userBEAN;
import com.view.DAO.connectSQL;

public class userBO {
	
	// kiểm tra đăng nhâp
	public static userBEAN checkLogin(String user, String pass) {

		String sql = "select * from [user] where [User].User_telephone = ? and  [User].User_password =? ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, user);
			pr.setString(2, pass);
			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				userBEAN u = new userBEAN();
				u.setUser_id(rs.getString("user_id"));
				u.setUser_name(rs.getString("user_name"));
			
				u.setUser_birthday(rs.getString("user_birthday"));
				u.setUser_email(rs.getString("user_email"));
				u.setUser_gender(rs.getBoolean("user_gender"));
				
				u.setUser_password(rs.getString("user_password"));
				u.setUser_telephone(rs.getString("user_telephone"));
				u.setUser_role(rs.getString("user_role"));
				return u;
			}
		} catch (Exception e) {
			System.err.println("checkLogin(String user, String pass) - loi: " + e.getMessage());
		}
		return null;
	}
	
	// lấy user theo  id 
	public static userBEAN getUser(String id) {
		String sql = "select * from [user] where [user].user_id = ? ";

		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, id);

			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				userBEAN u = new userBEAN();
				u.setUser_id(rs.getString("user_id"));
				u.setUser_name(rs.getString("user_name"));
			
				u.setUser_birthday(rs.getString("user_birthday"));
				u.setUser_email(rs.getString("user_email"));
				u.setUser_gender(rs.getBoolean("user_gender"));
				
				u.setUser_password(rs.getString("user_password"));
				u.setUser_telephone(rs.getString("user_telephone"));
				u.setUser_role(rs.getString("user_role"));
				return u;
			}
		} catch (Exception e) {
			System.err.println("getUser(String id) - loi: " + e.getMessage());
		}
		return null;
	}
	
	//
}
