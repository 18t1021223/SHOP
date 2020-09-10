package com.view.BO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import com.view.BEAN.addressToBEAN;
import com.view.DAO.connectSQL;

public class addressToBO {
	// lay danh sach mã tỉnh /thành phố
	public static HashMap<Integer, String> getProvince() {
		String sql = "select province_id ,  province_name name  from province  ";
		HashMap<Integer, String> ds = new HashMap<>();
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				ds.put(rs.getInt("province_id"), rs.getString("name"));

			}
		} catch (Exception e) {
			System.out.println("getProvince() - loi: " + e.getMessage());
		}
		return ds;
	}

	// lấy danh sách quận huyện theo mã tỉnh .thanh pho
	public static HashMap<Integer, String> getDistrict(int id) {
		String sql = "select district_id ,district_prefix +' '+ district_name name from district where province_id = ? ";
		HashMap<Integer, String> ds = new HashMap<>();
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setInt(1, id);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				ds.put(rs.getInt("district_id"), rs.getString("name"));

			}
		} catch (Exception e) {
			System.out.println("getDistrict(int id )- loi: " + e.getMessage());
		}
		return ds;
	}

	// lấy danh sách xã phường theo mã quận huyện
	public static HashMap<Integer, String> getWard(int id) {
		String sql = "select ward_id , ward_prefix+' '+ward_name name from ward where district_id = ? ";
		HashMap<Integer, String> ds = new HashMap<>();
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setInt(1, id);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				ds.put(rs.getInt("ward_id"), rs.getString("name"));
			}
		} catch (Exception e) {
			System.out.println("getWard(int id )- loi: " + e.getMessage());
		}
		return ds;
	}

	// lấy tên của địa chỉ the mã
	public static String getName(int province_id, int district_id, int ward_id) {
		String sql = "select w.Ward_prefix+' '+w.Ward_name , d.District_prefix+' '+d.District_name ,  p.Province_name "
				+ " from province p join district d on p.Province_id=d.Province_id "
				+ " join ward w on d.District_id = w.District_id "
				+ " where p.Province_id = ?  and d.District_id= ? and w.Ward_id = ? ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setInt(1, province_id);
			pr.setInt(2, district_id);
			pr.setInt(3, ward_id);
			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				return rs.getString(1) + "||" + rs.getString(2) + "||" + rs.getString(3);
			}
		} catch (Exception e) {
			System.out.println("getName - loi: " + e.getMessage());
		}
		return null;
	}

	// -----------------------------
	public static String getName(int province_id, int district_id) {
		String sql = "SELECT d.District_prefix+' '+d.District_name ,  p.Province_name  FROM  province p "
				+ "	join district d on p.Province_id=d.Province_id "
				+ " WHERE P.Province_id = ? AND D.District_id = ? ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setInt(1, province_id);
			pr.setInt(2, district_id);

			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				return rs.getString(1) + "||" + rs.getString(2);
			}
		} catch (Exception e) {
			System.out.println("getName(int province_id, int district_id) - loi: " + e.getMessage());
		}
		return null;
	}

	// insert into addressTO
	public static boolean insertAddress(addressToBEAN a) {
		String sql = "insert into addressTo values( ?,?,?,?,?,?,?) ";
		Connection con = connectSQL.getConnect();

		try {
			con.setAutoCommit(false);
			PreparedStatement pr = con.prepareStatement(sql);
			pr.setString(1, a.getAddress_id());
			pr.setString(2, a.getAddress_telephone());
			pr.setString(3, a.getAddress_description());
			pr.setString(4, a.getUser_id());
			pr.setString(5, a.getAddress_type());
			pr.setString(6, a.getAddress_user());
			pr.setString(7, a.getAddress_code());
			pr.executeUpdate();
			con.commit();
			return true;
		} catch (Exception e) {
			System.out.println("insertAddress(addressToBEAN a)-loi: " + e.getMessage());
			connectSQL.rollbackConnect(con);
		}
		connectSQL.autoCommit(con, true);
		return false;
	}

	public static boolean updateAddress(addressToBEAN a) {
		String sql = "update addressTo "
				+ "set Address_telephone =? , Address_description=? ,Address_user=? ,Address_code = ? "
				+ "where user_id  = ? and Address_id = ?";
		Connection con = connectSQL.getConnect();
		try {
			con.setAutoCommit(false);
			PreparedStatement pr = con.prepareStatement(sql);
			pr.setString(1, a.getAddress_telephone());
			pr.setString(2, a.getAddress_description());
			pr.setString(3, a.getAddress_user());
			pr.setString(4, a.getAddress_code());
			pr.setString(5, a.getUser_id());
			pr.setString(6, a.getAddress_id());
			pr.executeUpdate();
			con.commit();
			return true;

		} catch (Exception e) {
			System.out.println("updateAddress(addressToBEAN a)-loi: " + e.getMessage());
			connectSQL.rollbackConnect(con);
		}
		connectSQL.autoCommit(con, true);
		return false;
	}

	public static boolean updateAddressType(String user_id, String address_id, String type) {
		String sql = " update addressTo set address_type  = ? where Address_id = ? ";
		Connection con = connectSQL.getConnect();
		try {
			con.setAutoCommit(false);
			PreparedStatement pr = con.prepareStatement("update addressTO set address_type = '0' where user_id= ? ");
			pr.setString(1, user_id);
			pr.executeUpdate();
			con.commit();

			pr = con.prepareStatement(sql);
			pr.setString(1, type);
			pr.setString(2, address_id);

			pr.executeUpdate();
			con.commit();
			return true;

		} catch (Exception e) {
			System.out.println("updateAddressType(String user_id, String type)-loi: " + e.getMessage());
			connectSQL.rollbackConnect(con);
		}
		connectSQL.autoCommit(con, true);
		return false;
	}

	// laays ds các dia chi cua nguoi dùng
	public static ArrayList<addressToBEAN> getAddress(String user_id) {
		String sql = "select * from addressTo where user_id = ? order by  Address_type desc ";
		ArrayList<addressToBEAN> ds = new ArrayList<>();
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, user_id);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				ds.add(new addressToBEAN(rs.getString("address_id"), rs.getString("address_telephone"),
						rs.getString("address_description"), rs.getString("user_id"), rs.getString("address_type"),
						rs.getString("address_user"), rs.getString("address_code")));
			}
			return ds;
		} catch (Exception e) {
			System.out.println("getAddress(String user_id)-loi: " + e.getMessage());
		}

		return null;
	}

	// lấy thông tin của 1 địa chỉ theo mã đại chỉ
	public static addressToBEAN getAddressSingle(String address_id) {
		String sql = "select * from addressTo where address_id =? ";

		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, address_id);
			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				return new addressToBEAN(rs.getString("address_id"), rs.getString("address_telephone"),
						rs.getString("address_description"), rs.getString("user_id"), rs.getString("address_type"),
						rs.getString("address_user"), rs.getString("address_code"));
			}

		} catch (Exception e) {
			System.out.println("getAddressSingle(String address_id)-loi: " + e.getMessage());
		}
		return null;
	}

	// xoa dia chi
	public static boolean removeAddress(String address_id) {
		String sql = "delete addressTO where address_id = ? ";
		Connection con = connectSQL.getConnect();
		try {
			con.setAutoCommit(false);
			PreparedStatement pr = con.prepareStatement(sql);
			pr.setString(1, address_id);

			pr.executeUpdate();
			con.commit();
			return true;
		} catch (Exception e) {
			System.out.println("removeAddress(String address_id) -loi: " + e.getMessage());
			connectSQL.rollbackConnect(con);
		}
		connectSQL.autoCommit(con, true);
		return false;
	}
}
