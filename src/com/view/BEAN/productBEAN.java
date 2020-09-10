package com.view.BEAN;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.view.BO.imageBO;
import com.view.controller.utils;

public class productBEAN {
	private String product_id, product_name, product_type, product_description, product_date, product_content,
			category_id, producer_id, product_status;
	private double product_price;
	private float product_sale;

	public productBEAN(String product_id, String product_name, String product_type, String product_description,
			String product_date, String product_content, String category_id, String producer_id, double product_price,
			float product_sale, String product_status) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_type = product_type;
		this.product_description = product_description;
		this.product_date = product_date;
		this.product_content = product_content;
		this.category_id = category_id;
		this.producer_id = producer_id;
		this.product_price = product_price;
		this.product_sale = product_sale;
		this.product_status = product_status;
	}

	public productBEAN() {
		
	}

	public String getProduct_status() {
		return product_status;
	}

	public void setProduct_status(String product_status) {
		this.product_status = product_status;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_type() {
		return product_type;
	}

	public void setProduct_type(String product_type) {
		this.product_type = product_type;
	}

	public String getProduct_description() {
		return product_description;
	}

	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}

	public String getProduct_date() {
		return product_date;
	}

	public void setProduct_date(String product_date) {
		this.product_date = product_date;
	}

	public String getProduct_content() {
		return product_content;
	}

	public void setProduct_content(String product_content) {
		this.product_content = product_content;
	}

	public String getCategory_id() {
		return category_id;
	}

	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}

	public String getProducer_id() {
		return producer_id;
	}

	public void setProducer_id(String producer_id) {
		this.producer_id = producer_id;
	}

	public double getProduct_price() {
		return product_price;
	}

	public void setProduct_price(double product_price) {
		this.product_price = product_price;
	}

	public float getProduct_sale() {
		return product_sale;
	}

	public void setProduct_sale(float product_sale) {
		this.product_sale = product_sale;
	}

	public boolean checkProductNew() {

		if (this.product_date != null) {
			try {

				SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
				Date dateNow = new Date();
				Date dateProd = simple.parse(this.product_date);
				long hieu = (dateNow.getTime() - dateProd.getTime()) / 1000 / 60 / 60 / 24;

				if (hieu >= 14)
					return true;

			} catch (Exception e) {
				System.err.println("checkProductNew - loi: " + e.getMessage());
				return false;
			}
		}
		return false;
	}

	// lấy hình ảnh đầu tiên của sản phẩm
	public String getProduct_image() {
		return imageBO.getImageFirst(product_id);
	}

	// giá tiền sau khi giảm giá
	public float checkProductSale() {
		float rs = (float) product_price * (100 - product_sale) / 100;
		return rs;
	}

	public String getProductSaleFormat() {
		double tien = checkProductSale();
		return utils.formatNumber(tien);
	}

	// chuyen
	public String getProductPriceFormat() {
		return utils.formatNumber(product_price);
	}

	// laay taat ca hinh anh
	public ArrayList<imageBEAN> getProduct_imageAll() {
		return (ArrayList<imageBEAN>) imageBO.getImageAll(product_id);
	}

}
