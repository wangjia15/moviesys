package com.wjapp.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.AllowedMethods;
import org.apache.struts2.convention.annotation.ExceptionMapping;
import org.apache.struts2.convention.annotation.ExceptionMappings;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.wjapp.beans.Hall;
import com.wjapp.beans.City;
import com.wjapp.beans.Country;
import com.wjapp.beans.Customer;
import com.wjapp.beans.Language;
import com.wjapp.beans.Store;
import com.wjapp.service.CountryManager;
import com.wjapp.service.StoreManager;
import com.wjapp.service.HallManager;
import com.wjapp.service.CityManager;



@ParentPackage("struts-default")  
@Namespace("/adminpages/hall")    
@Results({  
    @Result(name = "success", location = "/adminpages/hall/hallList.jsp"),
    @Result(name = "error", location = "/adminpages/hall/errorHall.jsp"),
    @Result(name = "addsuccess", location = "/adminpages/hall/saveSuccess.jsp")  
})
//@ExceptionMappings({  
//    @ExceptionMapping(exception = "java.lang.Exception", result = "error", params = {"param1", "val1"})  
//})  
public class HallAction extends ActionSupport implements ModelDriven<Hall>, Preparable {
	
	private static final Logger log = Logger.getLogger(HallAction.class);
	private Integer id;
	
	
	private Integer storeid;
	
	private Hall hall;
	private List<Hall> hallList;
	
	private List<Store> storeList;
	
	public List<Store> getStoreList() {
		if(storeList==null){
			storeList= new ArrayList<Store>();
		}
		return storeList;
	}

	public void setStoreList(List<Store> StoreList) {
		this.storeList = StoreList;
	}
	
	@Autowired
	private HallManager HallManager;
	
	@Autowired
	private StoreManager StoreManager;
	
	

	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Hall getHall() {
		return hall;
	}

	public void setHall(Hall Hall) {
		this.hall = Hall;
	}

	public List<Hall> getHallList() {
		if(hallList==null){
			hallList = new ArrayList<Hall>();
		}
		return hallList;
	}

	public void setHallList(List<Hall> HallList) {
		this.hallList = HallList;
	}
	
    public Hall getModel() {  
        if (null != id) {  
        	hall = HallManager.get(id);  
        } else {  
        	hall = new Hall();  
        }  
        return hall;  
    }  

	@Override
	@Action("hallList")
	public String execute() throws Exception {
		
		log.info("查询放映厅信息");
		hallList = HallManager.findAll();
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("HallList", HallList);
//		
		
		return SUCCESS;
		
		
		
	}
	
	@Action(value="getStoreByHall",results={ @Result(name = "success", location = "/adminpages/store/storeList.jsp")})
	public String getStoreByHall() throws Exception {
		
		log.info("查询store信息"+id);

		Store store= HallManager.get(id).getStore();

getStoreList().add(store);

log.info("查询store信息"+store);
		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="addHall",
			results={ @Result(name = "input", location = "/adminpages/hall/addHall.jsp"),
					@Result(name = "success", location = "/adminpages/hall/addHall.jsp")
	})
	public String addFilm() throws Exception {
		
		log.info("浏览电影信息列表");
		
		//List<Language>  languageList = LanguageManager.findAll();
	 
	 
//	 Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("languageList", languageList);
	 
			return SUCCESS;
		
		
	}
	

	
	@Action(value="saveHall",results={ @Result(name = "input", location = "/adminpages/hall/addHall.jsp")})
	public String saveHall() throws Exception {
		
		log.info("添加放映厅信息");
		
		Store s = StoreManager.get(storeid);
		
		hall.setStore(s);
		
		
		
		int i = HallManager.save(this.hall).intValue();
		
		//log.info("countyr:"+hall.getHallName());
		
		if(i>0){
			return "addsuccess";
		}else{
			return ERROR;
		}
		
	}
	
	
	@Action(value="updateHall",results={ @Result(name = "success", location = "/adminpages/hall/saveSuccess.jsp")})

	public String updateHall() throws Exception {
		
		log.info("更新放映厅信息");
		
		
		Store s = StoreManager.get(storeid);
		
		hall.setStore(s);
		
		
		HallManager.saveOrUpdate(this.hall);
		
			return SUCCESS;
		
		
	}
	
	
	
	@Action(value="deleteHall",results={ @Result(name = "success", location = "/adminpages/hall/saveSuccess.jsp")})
	public String DeleteHall() throws Exception {
		
		log.info("删除放映厅信息");
		 HallManager.delete(id);
		
		 return SUCCESS;
	
		
	}
	
	
	@Action(value="editHall",results={ @Result(name = "success", location = "/adminpages/hall/editHall.jsp")})
	public String eidtHall() throws Exception {
		
		log.info("编辑放映厅信息");
		hall = HallManager.get(id);
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("Hall", Hall);
//		
		 return SUCCESS;
	
		
	}
	
	

	public void prepare() throws Exception {
		
		List<Store>  storeList = StoreManager.findAll();
		 
		 
		 Map requestList = (Map) ActionContext.getContext().get("request");
			requestList.put("StoreList", storeList);

		
	}





	public StoreManager getStoreManager() {
		return StoreManager;
	}

	public void setStoreManager(StoreManager storeManager) {
		StoreManager = storeManager;
	}

	public Integer getStoreid() {
		return storeid;
	}

	public void setStoreid(Integer storeid) {
		this.storeid = storeid;
	}







	

}
