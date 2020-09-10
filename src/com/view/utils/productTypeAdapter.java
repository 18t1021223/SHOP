package com.view.utils;

import java.io.IOException;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.view.BEAN.imageBEAN;
import com.view.BEAN.productBEAN;

public class productTypeAdapter extends TypeAdapter<productBEAN> {

	@Override
	public productBEAN read(JsonReader arg0) throws IOException {
		System.out.println("chưa ghi đè phương thức ");
		return null;
	}

	@Override
	public void write(JsonWriter js, productBEAN prod) throws IOException {
		js.beginObject();
		js.name("product_id").value(prod.getProduct_id());
		js.name("product_name").value(prod.getProduct_name());
		js.name("product_type").value(prod.getProduct_type());
		js.name("product_description").value(prod.getProduct_description());
		js.name("product_date").value(prod.getProduct_date());
		js.name("product_content").value(prod.getProduct_content());
		js.name("product_price").value(prod.getProductPriceFormat());
		js.name("product_sale").value(prod.getProductSaleFormat());
		js.name("product_image");
		js.beginArray();
		for (imageBEAN image : prod.getProduct_imageAll()) {
			js.value(image.getImage_url());
		}
		js.endArray();
		js.endObject();
	}

}
