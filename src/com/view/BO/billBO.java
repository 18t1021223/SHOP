package com.view.BO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.view.BEAN.billBEAN;
import com.view.BEAN.billDetailBEAN;
import com.view.DAO.connectSQL;

public class billBO {

	// lấy DANH SÁCH HÓA ĐƠN CỦA 1 NGƯỜI
	public static ArrayList<billBEAN> getBill(String user_id) {
		ArrayList<billBEAN> ds = new ArrayList<>();
		String sql = "select * from bill where user_id = ? order by Bill_date desc ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, user_id);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				billBEAN b = new billBEAN();
				b.setBill_id(rs.getString("bill_id"));
				b.setUser_id(rs.getString("user_id"));
				b.setBill_address(rs.getString("bill_address"));
				b.setBill_costs(rs.getDouble("bill_costs"));
				b.setBill_date(rs.getString("bill_date"));
				b.setPayment_name(rs.getInt("payment_id"));
				b.setStatus_name(rs.getInt("status_id"));
				b.setBill_total(rs.getDouble("bill_total"));
				b.setBill_costsSale(rs.getDouble("bill_costsSale"));
				b.setBill_temp(rs.getDouble("bill_temp"));
				ds.add(b);
			}
			return ds;
		} catch (Exception e) {
			System.out.println("getBill(String user_id) - loi: " + e.getMessage());
		}
		return null;
	}

	// lấy HÓA ĐƠN THEO MÃ HÓA ĐƠN
	public static billBEAN getBillSingle(String bill_id) {
		String sql = " select * from bill where bill_id = ? ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, bill_id);
			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				billBEAN b = new billBEAN();
				b.setBill_address(rs.getString("bill_address"));
				b.setBill_costs(rs.getDouble("bill_costs"));
				b.setBill_date(rs.getString("bill_date"));
				b.setBill_id(rs.getString("bill_id"));
				b.setBill_total(rs.getDouble("bill_total"));
				b.setPayment_name(rs.getInt("payment_id"));
				b.setStatus_name(rs.getInt("status_id"));
				b.setUser_id(rs.getString("user_id"));
				b.setBill_costsSale(rs.getDouble("bill_costsSale"));
				b.setBill_temp(rs.getDouble("bill_temp"));
				return b;
			}		
		} catch (Exception e) {
			System.out.println("getBill(String bill_id)- loi: " + e.getMessage());
		}
		return null;
	}

	// lấy danh sách sản phẩm của 1 hóa đơn
	public static ArrayList<billDetailBEAN> getBillDetail(String bill_id) {
		ArrayList<billDetailBEAN> ds = new ArrayList<>();
		String sql = "SELECT * FROM BillDetail WHERE Bill_id = ? ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, bill_id);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				billDetailBEAN b = new billDetailBEAN();
				b.setBill_id(rs.getString("bill_id"));
				b.setBilldetail_id(rs.getString("billdetail_id"));
				b.setBilldetail_image(rs.getString("billdetail_image"));
				b.setBilldetail_name(rs.getString("billdetail_name"));
				b.setBilldetail_price(rs.getDouble("billdetail_price"));
				b.setBilldetail_quantify(rs.getInt("billdetail_quantify"));
				b.setBilldetail_sale(rs.getDouble("billdetail_sale"));
				b.setProduct_id(rs.getString("product_id"));
				b.setBilldetail_total(rs.getDouble("billdetail_total"));
				ds.add(b);
			}
			return ds;
		} catch (Exception e) {
			System.out.println("getBill(String user_id) - loi: " + e.getMessage());
		}
		return null;
	}

	// lấy tên sản phẩm đầu tiên của 1 hóa đơn
	public static String getProductFirstName(String bill_id) {
		String sql = " SELECT TOP 1 BD.BillDetail_name FROM BillDetail bd  WHERE bd.Bill_id = ? ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, bill_id);
			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			System.out.println("getProductFirstName(String bill_id)- loi: " + e.getMessage());
		}
		return null;
	}

	// LẤY SỐ LƯỢNG SẢN PHẨM
	public static int getProductTotal(String bill_id) {
		String sql = " SELECT COUNT(Bd.BillDetail_id) FROM BillDetail bd WHERE bd.Bill_id = ? ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, bill_id);
			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println("getProductTotal(String bill_id)- loi: " + e.getMessage());
		}
		return 0;
	}

	public static String getNameStatus(int status_id) {
		String sql = " select Status_name from [status] where Status_id = ? ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setInt(1, status_id);
			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			System.out.println("getNameStatus(int status_id)- loi: " + e.getMessage());
		}
		return "";
	}

	// LẤY TÊN CỦA PHƯƠNG THỨC THANH TOÁN
	public static String getNamePayment(int payment_id) {
		String sql = " select Payment_name from payment where Payment_id = ? ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setInt(1, payment_id);
			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			System.out.println("getNamePayment(int payment_id)- loi: " + e.getMessage());
		}
		return "";
	}
}
