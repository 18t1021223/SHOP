package com.view.MODEL;

import java.io.IOException;
import java.util.HashMap;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class my_accountAjax {
	public static void getDistrict(HttpServletRequest req, HttpServletResponse resp, HashMap<Integer, String> ds)
			throws IOException {
		String kq = "<select id='district' required> <option hidden value=''>Quận/huyện</option>";
		Set<Integer> keyset = ds.keySet();
		for (int key : keyset) {
			kq += "<option value='" + key + "'>" + ds.get(key) + "</option>";
		}
		kq += "</select>";
		resp.setCharacterEncoding("UTF-8");
		resp.getWriter().write(kq);
	}

	public static void getWard(HttpServletRequest req, HttpServletResponse resp, HashMap<Integer, String> ds)
			throws IOException {
		resp.setCharacterEncoding("UTF-8");
		 if (ds.size() <= 0) {
			resp.getWriter().write("");

		} else {
			String kq = "<select id='ward' required> <option hidden value=''>Phường/xã</option>";
			Set<Integer> keyset = ds.keySet();
			for (int key : keyset) {
				kq += "<option value='" + key + "'>" + ds.get(key) + "</option>";
			}
			kq += "</select>";
			resp.getWriter().write(kq);
		}

	}

	public static void getProvince(HttpServletRequest req, HttpServletResponse resp, HashMap<Integer, String> ds)
			throws IOException {
		String kq = "<select id='province' required> <option hidden value=''>Tỉnh/Thành phố</option>";
		Set<Integer> keyset = ds.keySet();
		for (int key : keyset) {
			kq += "<option value='" + key + "'>" + ds.get(key) + "</option>";
		}
		kq += "</select>";
		resp.setCharacterEncoding("UTF-8");
		resp.getWriter().write(kq);
	
	
	}
}
