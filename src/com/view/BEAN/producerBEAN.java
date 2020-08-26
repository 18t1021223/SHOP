package com.view.BEAN;

import com.view.BO.producerBO;

public class producerBEAN {
	private String Producer_id, Producer_name;

	public producerBEAN(String producer_id, String producer_name) {
		super();
		Producer_id = producer_id;
		Producer_name = producer_name;
	}

	public producerBEAN() {
		// TODO Auto-generated constructor stub
	}

	public String getProducer_id() {
		return Producer_id;
	}

	public void setProducer_id(String producer_id) {
		Producer_id = producer_id;
	}

	public String getProducer_name() {
		return Producer_name;
	}

	public void setProducer_name(String producer_name) {
		Producer_name = producer_name;
	}

	public int getProduct() {
		// lấy ra sản phẩm có cùng nhà sx
		return producerBO.getProductTotal(this.Producer_id);
	}
}
