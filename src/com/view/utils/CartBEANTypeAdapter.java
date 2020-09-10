package com.view.utils;

import java.io.IOException;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.view.BEAN.cartBEAN;
import com.view.BEAN.productBEAN;
import com.view.controller.utils;

public class CartBEANTypeAdapter extends TypeAdapter<cartBEAN> {

	@Override
	public cartBEAN read(JsonReader arg0) throws IOException {
		return null;
	}

	@Override
	public void write(JsonWriter js, cartBEAN c) throws IOException {
		GsonBuilder gb = new GsonBuilder();
		gb.registerTypeAdapter(productBEAN.class, new productTypeAdapter());
		gb.setPrettyPrinting();
		Gson g = gb.create();
		js.beginObject();

		js.name("cart_quantify").value(c.getCart_quantify());
		js.name("cart_total").value(c.getPriceTotal());
		productBEAN prod = c.getProd();
		js.name("prod").value(g.toJson(prod));

		js.endObject();

	}

}
