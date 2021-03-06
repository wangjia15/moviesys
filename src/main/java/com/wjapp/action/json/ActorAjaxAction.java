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

import com.wjapp.service.ActorManager;



@ParentPackage("base")  
@Namespace("/ajax")  
@Results({  
    @Result(name = "json",type="json", params={"root","msg"})  
})
@Action("searchActor")  
public class ActorAjaxAction extends ActionSupport {
	
	private String name;

	private Map<String, Object> msg;  
	
	@Autowired
	private ActorManager ActorManager;

	public ActorManager getActorManager() {
		return ActorManager;
	}

	public void setActorManager(ActorManager filmManager) {
		ActorManager = filmManager;
	}
	
	public class ActorOption{
		
		public ActorOption(int id,String title){
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
		
		
		 List<Object[]> list = 	ActorManager.getActorsByName(getName());
		 
		 List<ActorOption> ops = new ArrayList<ActorOption>();
		 
		 for(Object[] o :list){
			 
			 ops.add(new ActorOption(Integer.parseInt(o[0].toString()),o[1].toString()));
			 
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
