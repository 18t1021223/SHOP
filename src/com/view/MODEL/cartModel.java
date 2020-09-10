
package com.view.MODEL;

import java.util.HashMap;
import java.util.Set;

import com.view.BEAN.cartBEAN;
import com.view.controller.utils;

public class cartModel extends HashMap<String, cartBEAN> {

	public void addProduct(cartBEAN cart) {
		checkExists(cart);
	}

	public boolean removeProduct(String key) {
		if (this.containsKey(key)) {
			this.remove(key);
			return true;
		}
		return false;
	}

	private void checkExists(cartBEAN cart) {
		String key = cart.getProd().getProduct_id();

		// nếu sản phẩm đã tồn tại trong giở hàng thì lấy số lượng trong hashmap
		// và cộng thêm 1
		if (cartModel.this.containsKey(key)) {

			int quantify = ((cartBEAN) this.get(key)).getCart_quantify();
			((cartBEAN) this.get(key)).setCart_quantify(quantify +  cart.getCart_quantify() );
		} else {
			// neu chưa có thì thêm vào giỏ
			this.put(key, cart);
		}
	}
	
	public String getPriceTotal(){
		Set<String> keyset = this.keySet();
		double tong = 0 ;
		for (String key : keyset) {
			tong += (this.get(key)).getPriceTotal();
		}
		return utils.formatNumber(tong);
	}
	
}
