package com.view.BO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.view.BEAN.cartBEAN;
import com.view.DAO.connectSQL;

public class cartBO {
	// lấy tổng số sản phẩm của user
	public static int getProductTotal(String id) {
		String sql = "SELECT COUNT(product_id) from cart where User_id = ? ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, id);
			ResultSet rs = pr.executeQuery();

			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println("getProductTotal(String id) - loi: " + e.getMessage());
		}
		return 0;
	}

	public static ArrayList<cartBEAN> getCart(String id) {
		ArrayList<cartBEAN> ds = new ArrayList<>();

		String sql = "SELECT * from cart where User_id = ? ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, id);
			ResultSet rs = pr.executeQuery();

			while (rs.next()) {
				cartBEAN c = new cartBEAN();
				c.setCart_quantify(rs.getInt("cart_quantify"));
				c.setProd(productBO.getProduct(rs.getString("product_id")));
				ds.add(c);
			}
			return ds;
		} catch (Exception e) {
			System.out.println("getProductTotal(String id) - loi: " + e.getMessage());
		}
		return null;
	}

	// tinh tong tien trong gio hang cua khach hang
	public static double getCartPriceTotal(String user_id) {
		String sql = "select sum( c.Cart_quantify * (p.Product_price * (100 -  isnull(p.Product_sale, 0) )/100)) from Cart c join Product p on c.Product_id = p.Product_id where c.User_id = ?";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, user_id);
			ResultSet rs = pr.executeQuery();

			if (rs.next()) {
				return rs.getDouble(1);
			}
		} catch (Exception e) {
			System.out.println("getCartPriceTotal(String user_id) -loi: " + e.getMessage());
		}
		return 0;
	}

	// ----------------------------
	// xóa giỏ theo product_id
	public static boolean removeCart(String product_id) {
		String sql = "delete from cart where product_id = ? ";
		Connection con = connectSQL.getConnect();
		try {
			con.setAutoCommit(false);
			PreparedStatement pr = con.prepareStatement(sql);
			pr.setString(1, product_id);

			pr.executeUpdate();
			con.commit();
			return true;
		} catch (Exception e) {
			System.out.println("removeCart(String cart_id) - loi: " + e.getMessage());
			connectSQL.rollbackConnect(con);
		}
		connectSQL.autoCommit(con, true);
		return false;
	}

	// -------------------------------------
	/* them sản phẩm vào giở hàng */
	public static boolean insertProduct(int quantify, String product_id, String user_id) {
		String sql = "insert into cart	values( ? ,? ,?) ";
		Connection con = connectSQL.getConnect();

		try {
			con.setAutoCommit(false);
			PreparedStatement pr = con.prepareStatement(sql);
			pr.setInt(1, quantify);
			pr.setString(2, product_id);
			pr.setString(3, user_id);
			pr.executeUpdate();
			con.commit();
			return true;
		} catch (Exception e) {
			System.out.println("insertProduct - loi: " + e.getMessage());
			connectSQL.rollbackConnect(con);
		}
		connectSQL.autoCommit(con, true);

		return false;
	}

	// cập nhật giở hàng
	public static boolean updateProduct(int quantify, String product_id, String user_id) {
		String sql = " update cart set cart_quantify = ? where product_id = ? and user_id = ? ";
		Connection con = connectSQL.getConnect();

		try {
			con.setAutoCommit(false);
			PreparedStatement pr = con.prepareStatement(sql);
			pr.setInt(1, quantify);
			pr.setString(2, product_id);
			pr.setString(3, user_id);
			pr.executeUpdate();
			con.commit();
			return true;
		} catch (Exception e) {
			System.out.println("updateProduct - loi: " + e.getMessage());
			connectSQL.rollbackConnect(con);
		}
		connectSQL.autoCommit(con, true);
		return false;
	}
}
