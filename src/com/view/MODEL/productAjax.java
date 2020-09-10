package com.view.MODEL;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.view.BEAN.productBEAN;
import com.view.utils.cartModelTypeAdapter;
import com.view.utils.productTypeAdapter;

public class productAjax {
	public static void quickView(HttpServletRequest req, HttpServletResponse resp, productBEAN prod)
			throws IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("application/json");

		GsonBuilder gb = new GsonBuilder();
		gb.registerTypeAdapter(productBEAN.class, new productTypeAdapter());
		gb.setPrettyPrinting();
		Gson g = gb.create();
		String ob = g.toJson(prod);
		resp.getWriter().write(ob);
	}

	public static void getCartJson(HttpServletRequest req, HttpServletResponse resp, cartModel cart)
			throws IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("application/json");
		GsonBuilder gb = new GsonBuilder();
		gb.registerTypeAdapter(cartModel.class, new cartModelTypeAdapter());
		gb.setPrettyPrinting();
		Gson g = gb.create();
		String ob = g.toJson(cart);
		resp.getWriter().write(ob);
	}

}
