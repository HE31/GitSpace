package com.zlzkj.app.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class UIUtils {

	/**
     * 鑾峰彇鍓嶇鎺т欢浼犲洖鏉ョ殑鍒嗛〉鍙傛暟
     * @return
     */
	public static Map<String,String> getPageParams(HttpServletRequest req) {
		
		Map<String,String> map= new HashMap<String,String>();
		String[] params = {"page","rows","sort","order"};
		for(String p:params){
			String v = req.getParameter(p);
			if(v!=null){
				map.put(p, v);
			}
		}
		return map;
	}
	
	/**
	 * 缁勮鍓嶇datagrid缁勪欢闇�鐨勬暟鎹�
	 * @param totalCount 璁板綍鎬绘暟
	 * @param data 缁撴灉闆�
	 * @return
	 */
	public static Map<String, Object> getGridData(Integer totalCount,List<?> data){
		Map<String, Object> res = new HashMap<String, Object>();
		res.put("total", totalCount);
		res.put("rows", data);
		return res;
	}
	

	
}

