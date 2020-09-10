package com.view.BO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.view.BEAN.productBEAN;
import com.view.DAO.connectSQL;

public class productBO {

	public static List<productBEAN> getProductAll() {
		List<productBEAN> ds = new ArrayList<productBEAN>();
		String sql = "select * from product ";
		try {
			Statement st = connectSQL.getConnect().createStatement();
			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				productBEAN prod = new productBEAN();
				prod.setProduct_id(rs.getString("product_id"));
				prod.setProduct_name(rs.getString("product_name"));
				prod.setProduct_type(rs.getString("product_type"));
				prod.setProduct_price(rs.getDouble("product_price"));
				prod.setProduct_description(rs.getString("product_description"));
				prod.setProduct_sale(rs.getFloat("product_sale"));
				prod.setProduct_content(rs.getString("product_content"));
				prod.setProduct_date(rs.getString("product_date"));
				prod.setProducer_id(rs.getString("producer_id"));
				prod.setCategory_id(rs.getString("category_id"));
				prod.setProduct_status(rs.getString("product_status"));
				ds.add(prod);
			}
		} catch (Exception e) {
			System.err.println("getProductAll - loi: " + e.getMessage());
		}
		return ds;
	}
	
	// lấy sản phẩm theo id
	public static productBEAN getProduct(String product_id) {

		String sql = "select * from product where product_id= ? ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, product_id);
			ResultSet rs = pr.executeQuery();

			if (rs.next()) {
				productBEAN prod = new productBEAN();
				prod.setProduct_id(rs.getString("product_id"));
				prod.setProduct_name(rs.getString("product_name"));
				prod.setProduct_type(rs.getString("product_type"));
				prod.setProduct_price(rs.getDouble("product_price"));
				prod.setProduct_description(rs.getString("product_description"));
				prod.setProduct_sale(rs.getFloat("product_sale"));
				prod.setProduct_content(rs.getString("product_content"));
				prod.setProduct_date(rs.getString("product_date"));
				prod.setProducer_id(rs.getString("producer_id"));
				prod.setCategory_id(rs.getString("category_id"));
				prod.setProduct_status(rs.getString("product_status"));
				return prod;
			}
		} catch (Exception e) {
			System.err.println("getProduct(String product_id) - loi: " + e.getMessage());
		}
		return null;
	}
	// phân trang
	public static List<productBEAN> getProductAll( String where ,int offset, int fetch) {
		List<productBEAN> ds = new ArrayList<productBEAN>();
		String sql = "select p.* from product p JOIN Category C ON C.Category_id = P.Category_id join Producer pd on p.Producer_id = pd.Producer_id "+ where +" order by p.product_id offset ? rows fetch next ? rows only";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setInt(1, offset);
			pr.setInt(2, fetch);
			ResultSet rs = pr.executeQuery();

			while (rs.next()) {
				productBEAN prod = new productBEAN();
				prod.setProduct_id(rs.getString("product_id"));
				prod.setProduct_name(rs.getString("product_name"));
				prod.setProduct_type(rs.getString("product_type"));
				prod.setProduct_price(rs.getDouble("product_price"));
				prod.setProduct_description(rs.getString("product_description"));
				prod.setProduct_sale(rs.getFloat("product_sale"));
				prod.setProduct_content(rs.getString("product_content"));
				prod.setProduct_date(rs.getString("product_date"));
				prod.setProducer_id(rs.getString("producer_id"));
				prod.setCategory_id(rs.getString("category_id"));
				prod.setProduct_status(rs.getString("product_status"));
				ds.add(prod);
			}
		} catch (Exception e) {
			System.err.println("getProductAll(int , int) - loi: " + e.getMessage());
		}
		return ds;
	}
	
	// lấy tổng sản phẩm theo điều kiện
	public static int getProductTotal(String where) {
		String sql = " select count(product_id) from product p JOIN Category C ON C.Category_id = P.Category_id join Producer pd on p.Producer_id = pd.Producer_id "+where;
		try {
			ResultSet rs = connectSQL.getConnect().createStatement().executeQuery(sql);
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			System.err.println("getProductTotal - loi: " + e.getMessage());
		}
		return 0;
	}
	// lấy số lượng sản phẩm theo giá tiền 
	
}
