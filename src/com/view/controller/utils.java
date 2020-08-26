package com.view.controller;

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
}
