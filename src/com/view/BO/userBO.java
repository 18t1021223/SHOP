package com.view.BO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;
import com.sun.javafx.binding.StringFormatter;
import com.view.BEAN.addressToBEAN;
import com.view.BEAN.userBEAN;
import com.view.DAO.connectSQL;

public class userBO {

	// kiểm tra đăng nhâp
	public static userBEAN checkLogin(String user, String pass) {

		String sql = "select * from [user] where [User].User_email = ? and  [User].User_password =? ";
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
				u.setUser_gender(rs.getString("user_gender"));

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

	// lấy user theo id
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
				u.setUser_gender(rs.getString("user_gender"));

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

	// lấy user theo email
	public static userBEAN getUserEmail(String email) {
		String sql = "select * from [user] where [user].user_email = ? ";

		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, email);

			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				userBEAN u = new userBEAN();
				u.setUser_id(rs.getString("user_id"));
				u.setUser_name(rs.getString("user_name"));

				u.setUser_birthday(rs.getString("user_birthday"));
				u.setUser_email(rs.getString("user_email"));
				u.setUser_gender(rs.getString("user_gender"));

				u.setUser_password(rs.getString("user_password"));
				u.setUser_telephone(rs.getString("user_telephone"));
				u.setUser_role(rs.getString("user_role"));
				return u;
			}
		} catch (Exception e) {
			System.err.println("getUserEmail(String id) - loi: " + e.getMessage());
		}
		return null;
	}

	// kiểm tra email đã có người đăng ký chưa
	public static int checkEmail(String email) {
		String sql = "select count([user].User_id) from [user] where [user].user_email = ? ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, email);
			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			System.err.println("checkEmail -loi: " + e.getMessage());
		}
		return 0;
	}

	// insert user
	public static boolean insertUser(userBEAN user) {
		String sql = " insert into [user] values(? ,? ,? ,? ,? ,? ,? ,? ,? )";
		Connection con = connectSQL.getConnect();
		try {
			connectSQL.autoCommit(con, false);
			PreparedStatement pr = con.prepareStatement(sql);
			pr.setString(1, user.getUser_id());
			pr.setString(2, user.getUser_name());
			pr.setString(3, user.getUser_email());
			pr.setString(4, user.getUser_telephone());
			pr.setString(5, user.getUser_gender());
			pr.setString(6, user.getUser_birthday());
			pr.setString(7, user.getUser_password());
			pr.setString(8, null);
			pr.setString(9, user.getUser_role());
			pr.executeUpdate();

			con.commit();
			return true;
		} catch (Exception e) {
			System.err.println("insertUser(userBEAN user) -loi: " + e.getMessage());
			connectSQL.rollbackConnect(con);
		}
		connectSQL.autoCommit(con, true);
		return false;
	}

	// forgetPassword
	public static boolean eidtPassword(String password, String id) {
		String sql = "update [User] set User_password = ? where User_id = ? ";
		Connection con = connectSQL.getConnect();
		try {
			con.setAutoCommit(false);
			PreparedStatement pr = con.prepareStatement(sql);
			pr.setString(1, password);
			pr.setString(2, id);
			pr.executeUpdate();
			con.commit();
			return true;
		} catch (Exception e) {
			System.err.println("updateUser - loi: " + e.getMessage());
			connectSQL.rollbackConnect(con);
		}
		connectSQL.autoCommit(con, true);
		return false;
	}

	// update user thong tin ca nhan
	public static boolean updateUser(userBEAN user) {
		String sql = "UPDATE [USER] SET USER_NAME =? ,USER_TELEPHONE= ? ,USER_GENDER= ? ,USER_BIRTHDAY= ? WHERE USER_ID= ? ";
		Connection con = connectSQL.getConnect();
		try {
			con.setAutoCommit(false);
			PreparedStatement pr = con.prepareStatement(sql);
			pr.setString(1, user.getUser_name());
			pr.setString(2, user.getUser_telephone());
			pr.setString(3, user.getUser_gender());
			pr.setString(4, user.getUser_birthday());
			pr.setString(5, user.getUser_id());
			pr.executeUpdate();
			con.commit();
			return true;
		} catch (Exception e) {
			System.out.println("updateUser(userBEAN user) -loi: " + e.getMessage());
			connectSQL.rollbackConnect(con);
		}
		connectSQL.autoCommit(con, true);
		return false;
	}

	// LẤY THÔNG TIN CÁC ĐỊA CHỈ GIAO HÀNG CỦA USER
	public static ArrayList<addressToBEAN> getAddressAll(String user_id) {
		ArrayList<addressToBEAN> ds = new ArrayList<>();
		String sql = "SELECT A.Address_id, A.Address_user,  A.Address_telephone , A.Address_description  " + " FROM [User] U "
				+ " JOIN AddressTo A ON A.User_id = U.User_id " + " WHERE A.User_id= ? "
				+ " order by A.Address_type desc";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, user_id);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				addressToBEAN a = new addressToBEAN();
				a.setAddress_id(rs.getString("address_id"));
				a.setAddress_user(rs.getString("Address_user"));
				a.setAddress_telephone(rs.getString("address_telephone"));
				a.setAddress_description(rs.getString("address_description").replaceAll("[|]", ","));
				ds.add(a);
			}
			return ds;
		} catch (Exception e) {
			System.out.println("getAddressAll(String user_id)- loi: " + e.getMessage());
		}
		return null;
	}
	
	
}
