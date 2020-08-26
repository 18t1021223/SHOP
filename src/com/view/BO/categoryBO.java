package com.view.BO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.view.BEAN.categoryBEAN;
import com.view.DAO.connectSQL;

public class categoryBO {

	public static List<categoryBEAN> getCategoryAll() {
		List<categoryBEAN> ds = new ArrayList<>();

		String sql = " select * from category";
		try {
			ResultSet rs = connectSQL.getConnect().createStatement().executeQuery(sql);

			while (rs.next()) {
				categoryBEAN cate = new categoryBEAN(rs.getString("category_id"), rs.getString("category_name"));
				ds.add(cate);
			}

		} catch (Exception e) {
			System.err.println("getCategoryAll - loi: " + e.getMessage());
		}
		return ds;
	}

	public static int getProductTotal(String category_id) {
		String sql = " SELECT COUNT(P.Producer_id) FROM Category C JOIN  Product P ON C.Category_id = P.Category_id WHERE P.Category_id = ?";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, category_id);
			ResultSet rs = pr.executeQuery();

			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			System.err.println("getProductTotal - loi: " + e.getMessage());
		}
		return 0;
	}
}
