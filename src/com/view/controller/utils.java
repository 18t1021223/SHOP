package com.view.controller;

import java.text.NumberFormat;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

public class utils {

	public static int getTotalPage(double total, double fetch) {
		double x = total / fetch;
		double kq = x - (int) x;
		if (kq == 0) {
			return (int) x;
		}
		return (int) Math.round(x + 0.5);
	}

	public static int currentPage(String number, int totalPage) {
		int current_page = 1;
		if (number != null) {
			current_page = Integer.parseInt(number);
		}
		if (current_page < 1) {
			current_page = 1;
		} else if (current_page > totalPage) {
			current_page = totalPage;
		}
		return current_page;
	}

	public static String productFilter(HttpServletRequest req) {

		String category_id = req.getParameter("category_id");
		String producer_id = req.getParameter("producer_id");
		String product_price = req.getParameter("product_price");

		if (category_id != null) {
			category_id = " P.Category_id = '" + category_id + "'";
		} else {
			category_id = " P.Category_id >'' ";
		}
		if (producer_id != null) {
			producer_id = "p.Producer_id = '" + producer_id + "' ";
		} else {
			producer_id = " p.Producer_id >'' ";
		}
		if (product_price != null) {
			if (product_price.equals("thap"))
				product_price = " p.Product_price < 100000 ";
			else if (product_price.equals("trungbinh")) {
				product_price = "( p.Product_price > 100000 and p.Product_price < 200000 ) ";
			} else if (product_price.equals("vua")) {
				product_price = "( p.Product_price > 200000 and p.Product_price < 400000 ) ";
			} else {
				product_price = " p.Product_price > 400000 ";
			}
		} else {
			product_price = " p.Product_price>0 ";
		}

		return " where " + category_id + " and " + producer_id + " and " + product_price;
	}

	// DINH DANG TIEN TE
	public static String formatNumber(double so) {
		Locale lc = new Locale("vi", "VN");
		NumberFormat number = NumberFormat.getInstance(lc);
		so = Math.round(so);

		return number.format(so);
	}
}
