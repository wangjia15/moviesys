package com.wjapp.action.json;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.wjapp.beans.Playdata;
import com.wjapp.service.PlaydataManager;



@ParentPackage("base")  
@Namespace("/ajax")  
@Results({  
    @Result(name = "json",type="json", params={"root","msg"})  
})
@Action("searchPlaydata")  
public class PlaydataAjaxAction extends ActionSupport {
	
	private String name;

	private Map<String, Object> msg;  
	
	@Autowired
	private PlaydataManager PlaydataManager;

	public PlaydataManager getPlaydataManager() {
		return PlaydataManager;
	}

	public void setPlaydataManager(PlaydataManager filmManager) {
		PlaydataManager = filmManager;
	}
	
	public class PlaydataOption{
		
		public PlaydataOption(int id,String title){
			this.id = id;
			this.title =title;
		}
		
		private int id;
		private String title;
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
	}

	@Override
	public String execute() throws Exception {
		
		
		 List<Object[]> list = 	PlaydataManager.getPlaydataByName(getName());
		 
		 List<PlaydataOption> ops = new ArrayList<PlaydataOption>();
		 
		 for(Object[] o :list){
			 
			 ops.add(new PlaydataOption(Integer.parseInt(o[0].toString()),o[1].toString()));
			 
		 }
		 
		  msg = new HashMap<String, Object>();
		
		getMsg().put("result",ops);

		return "json";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Map<String, Object> getMsg() {
		return msg;
	}

	public void setMsg(Map<String, Object> msg) {
		this.msg = msg;
	}


	

}
