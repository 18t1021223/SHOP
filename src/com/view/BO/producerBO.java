package com.view.BO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.view.BEAN.producerBEAN;
import com.view.DAO.connectSQL;

public class producerBO {

	public static List<producerBEAN> getProducerAll() {
		List<producerBEAN> ds = new ArrayList<>();

		String sql = " select * from producer";
		try {
			ResultSet rs = connectSQL.getConnect().createStatement().executeQuery(sql);

			while (rs.next()) {
				producerBEAN prod = new producerBEAN(rs.getString("producer_id"), rs.getString("producer_name"));
				ds.add(prod);
			}

		} catch (Exception e) {
			System.err.println("getproducerAll - loi: " + e.getMessage());
		}
		return ds;
	}

	public static int getProductTotal(String producer_id) {
		String sql = " SELECT COUNT(P.Producer_id) FROM producer prod JOIN  Product P ON prod.producer_id = P.producer_id WHERE P.producer_id = ?";
		try {
			PreparedStatement pr = connectSQL.getConnect().prepareStatement(sql);
			pr.setString(1, producer_id);
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
