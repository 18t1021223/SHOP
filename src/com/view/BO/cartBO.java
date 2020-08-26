package com.view.BO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.view.BEAN.cartBEAN;
import com.view.DAO.connectSQL;

public class cartBO {
	public static int getProductTotal(String id) {
		String sql = "SELECT COUNT(CART_ID) from cart where User_id = ? ";
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

	public static List<cartBEAN> getCart(String id) {
		List<cartBEAN> ds = new ArrayList<cartBEAN>();

		String sql = "SELECT * from cart where User_id = ? ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, id);
			ResultSet rs = pr.executeQuery();

			while (rs.next()) {
				cartBEAN c = new cartBEAN();
				c.setCart_id(rs.getString("cart_id"));

				c.setCart_quantify(rs.getInt("cart_quantify"));

				c.setUser(userBO.getUser(rs.getString("user_id")));
				c.setProd(productBO.getProduct(rs.getString("product_id")));
				ds.add(c);

			}
			return ds;
		} catch (Exception e) {
			System.out.println("getProductTotal(String id) - loi: " + e.getMessage());
		}
		return null;
	}

	public static double getCartPriceTotal(String user_id) {
		String sql = "select sum( c.Cart_quantify * ( p.Product_price * (100 - p.Product_sale)/100 ) ) from Cart c join Product p on c.Product_id = p.Product_id where c.User_id = ? ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, user_id);
			ResultSet rs = pr.executeQuery();

			if (rs.next()) {
				return rs.getDouble(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.err.println("getCartPriceTotal(String user_id) -loi: " + e.getMessage());
		}
		return 0;
	}
}
