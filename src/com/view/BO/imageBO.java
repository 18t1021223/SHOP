package com.view.BO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.view.BEAN.imageBEAN;
import com.view.DAO.connectSQL;

public class imageBO {
	public static List<imageBEAN> getImageAll(String id) {
		List<imageBEAN> ds = new ArrayList<imageBEAN>();

		String sql = "select image_url from image where product_id = ? ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, id);
			ResultSet rs = pr.executeQuery();

			while (rs.next()) {
				imageBEAN i = new imageBEAN(null, rs.getString("image_url"), null);
				ds.add(i);
			}
			return ds;
		} catch (Exception e) {
			System.err.println("getImageAll(String id) - loi: " + e.getMessage());
		}
		return null;
	}

	public static String getImageFirst(String id) {
		String sql = "select top 1 Image_url from [image] where Product_id = ? ";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, id);
			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			System.out.println("getImageFirst(String id)-loi: " + e.getMessage());
		}
		return null;
	}
}
