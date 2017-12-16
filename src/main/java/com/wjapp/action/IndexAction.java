package com.wjapp.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.wjapp.beans.Category;
import com.wjapp.beans.Playdata;
import com.wjapp.beans.Schedule;
import com.wjapp.beans.Store;
import com.wjapp.service.PlaydataManager;
import com.wjapp.service.ScheduleManager;
import com.wjapp.viewmodel.ScheduleModel;



@ParentPackage("struts-default")  
@Namespace("/frontpages")    
@Results({  
    @Result(name = "success", location = "/frontpages/index.jsp"),
    @Result(name = "error", location = "/adminpages/playdata/errorPlaydata.jsp"),
 
})
@Action("index")
//@ExceptionMappings({  
//    @ExceptionMapping(exception = "java.lang.Exception", result = "error", params = {"param1", "val1"})  
//})  
public class IndexAction extends ActionSupport implements ModelDriven<Playdata>, Preparable  {
	
	private static final Logger log = Logger.getLogger(PlaydataAction.class);
	
	private Integer id;
	
	private Playdata data;
	
	private String storename;
	
	private	Integer playdataid;
	private Integer storeid;
	
	private List<Store> stores;
	
	private List<ScheduleModel>  schedules;
	
	
	@Autowired
	private PlaydataManager PlaydataManager;
	
	

	@Autowired
	private ScheduleManager scheduleManager;
	
	
	private List<Playdata> playdataList;
	
	public List<Playdata> getPlaydataList() {
		return playdataList;
	}

	public void setPlaydataList(List<Playdata> PlaydataList) {
		this.playdataList = PlaydataList;
	}
	
	@Override
	
	public String execute() throws Exception {
		
		log.info("查询排片信息");
		playdataList = PlaydataManager.findAll();
		

		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="moviedetail",results={ @Result(name = "success", location = "/frontpages/moviedetail.jsp")})
	public String moviedetail() throws Exception {
		
		//log.info("查询演员信息"+id);
		data = PlaydataManager.get(id);
		
		stores =new ArrayList<Store>( data.getPlaydataStore());
		
log.info(stores.size()+"--"+stores.get(0).getName());
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="halldetail",results={ @Result(name = "success", location = "/frontpages/halldetail.jsp")})
	public String halldetail() throws Exception {
		
		log.info("查询演员信息"+playdataid+"=="+storeid);

	
		schedules=scheduleManager.getScheduleByinfo(playdataid, storeid);
		
		storename = schedules.get(0).getStorename();
		
		log.info(schedules.size());
		
		return SUCCESS;
		
		
		
	}

	public void prepare() throws Exception {
		// TODO 自动生成的方法存根
		
	}

	public Playdata getModel() {
		// TODO 自动生成的方法存根
		return null;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Playdata getData() {
		return data;
	}

	public void setData(Playdata data) {
		this.data = data;
	}

	public List<Store> getStores() {
		return stores;
	}

	public void setStores(List<Store> stores) {
		this.stores = stores;
	}

	public ScheduleManager getScheduleManager() {
		return scheduleManager;
	}

	public void setScheduleManager(ScheduleManager scheduleManager) {
		this.scheduleManager = scheduleManager;
	}



	public Integer getPlaydataid() {
		return playdataid;
	}

	public void setPlaydataid(Integer playdatid) {
		this.playdataid = playdatid;
	}

	public Integer getStoreid() {
		return storeid;
	}

	public void setStoreid(Integer storeid) {
		this.storeid = storeid;
	}

	public List<ScheduleModel> getSchedules() {
		return schedules;
	}

	public void setSchedules(List<ScheduleModel> schedules) {
		this.schedules = schedules;
	}

	public String getStorename() {
		return storename;
	}

	public void setStorename(String storename) {
		this.storename = storename;
	}

}
