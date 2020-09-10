package com.view.utils;

import com.view.constan.systemCONSTANT;

public class messengerUTILS {
	public static String showMSG(String msg) {
		String alert = " <i class='far fa-check-circle'></i> ";
		String msg_resp = "";
		if (msg.equals(systemCONSTANT.INSERT_SUCCESS)) {
			msg_resp = "Thêm thành công";

		} else if (msg.equals(systemCONSTANT.UPDATE_SUCCESS)) {
			msg_resp = "Cập nhật thành công";

		} else if (msg.equals(systemCONSTANT.REMOVE_SUCCESS)) {
			msg_resp = "Xóa thành công";
		} else if (msg.equals(systemCONSTANT.ERROR_SYSTEM)) {
			msg_resp = "Lỗi";
			alert = " <i class='fas fa-exclamation-circle'></i> ";
		} else if (msg.equals(systemCONSTANT.NOT_EXISTS)) {
			msg_resp = "Sản phẩm không còn hoặc đã bán hết";
			alert = " <i class='fas fa-exclamation-circle'></i> ";
		}

	
		return msg_resp;
	}
}
