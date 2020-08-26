package com.view.BEAN;

public class imageBEAN {
	private String image_id	, image_url ,product_id;

	public imageBEAN(String image_id, String image_url, String product_id) {
		super();
		this.image_id = image_id;
		this.image_url = image_url;
		this.product_id = product_id;
	}
	
	public imageBEAN() {
		// TODO Auto-generated constructor stub
	}

	public String getImage_id() {
		return image_id;
	}

	public void setImage_id(String image_id) {
		this.image_id = image_id;
	}

	public String getImage_url() {
		return image_url;
	}

	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	
}
