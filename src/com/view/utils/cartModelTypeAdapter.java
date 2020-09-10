package com.view.utils;

import java.io.IOException;
import java.util.Set;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.view.BEAN.cartBEAN;
import com.view.MODEL.cartModel;

public class cartModelTypeAdapter extends TypeAdapter<cartModel> {

	@Override
	public cartModel read(JsonReader arg0) throws IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void write(JsonWriter js, cartModel cb) throws IOException {
		GsonBuilder gb = new GsonBuilder();
		gb.registerTypeAdapter(cartBEAN.class, new CartBEANTypeAdapter());
		gb.setPrettyPrinting();
		Gson g = gb.create();
		js.beginObject();
		Set<String> keyset = cb.keySet();
		for (String key : keyset) {

			cartBEAN cart = cb.get(key);
			js.name(cart.getProd().getProduct_id()).value(g.toJson(cart));

		}
		js.endObject();
	}

}
