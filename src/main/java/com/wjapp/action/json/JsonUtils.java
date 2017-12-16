package com.wjapp.action.json;

import java.util.List;
import net.sf.json.JSONArray;


public class JsonUtils {
	
	   public static <T> String list2Json(List<T> list) {
	        if(null != list && list.size() > 0){
	            JSONArray jsonArray = JSONArray.fromObject(list);
	            return jsonArray.toString().replace("\"", "'");
	        }
	        return "";
	    }

}
