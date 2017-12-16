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
import com.wjapp.beans.Staff;
import com.wjapp.beans.Store;
import com.wjapp.beans.FilmActor;
import com.wjapp.beans.Address;
import com.wjapp.beans.City;
import com.wjapp.beans.Country;
import com.wjapp.beans.Language;
import com.wjapp.beans.Schedule;
import com.wjapp.service.CountryManager;
import com.wjapp.service.StaffManager;
import com.wjapp.service.CityManager;
import com.wjapp.service.StoreManager;



@ParentPackage("authorityAdmin")  
@Namespace("/adminpages/staff")    
@Results({  
    @Result(name = "success", location = "/adminpages/staff/staffList.jsp"),
    @Result(name = "error", location = "/adminpages/staff/errorStaff.jsp"),
    @Result(name = "addsuccess", location = "/adminpages/staff/saveSuccess.jsp")  
})
@ExceptionMappings({  
    @ExceptionMapping(exception = "java.lang.Exception", result = "error", params = {"param1", "val1"})  
})  
public class StaffAction extends ActionSupport implements ModelDriven<Staff>, Preparable {
	
	private static final Logger log = Logger.getLogger(StaffAction.class);
	private Integer id;
	
	
	private Integer storeid;

	
	
	private Staff staff;
	private List<Staff> staffList;
	
	@Autowired
	private StaffManager StaffManager;
	
	@Autowired
	private StoreManager StoreManager;
	
	private List<Address> addressList;
	
	private List<Schedule> scheduleList;
	
	public List<Schedule> getScheduleList() {
		
		if(scheduleList==null){
			scheduleList = new ArrayList<Schedule>();
		}
		return scheduleList;
	}

	public void setScheduleList(List<Schedule> ScheduleList) {
		this.scheduleList = ScheduleList;
	}
	public List<Address> getAddressList() {
		if(addressList==null){
			addressList = new ArrayList<Address>();
		}
		return addressList;
	}

	public void setAddressList(List<Address> AddressList) {
		this.addressList = AddressList;
	}

	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Staff getStaff() {
		return staff;
	}

	public void setStaff(Staff Staff) {
		this.staff = Staff;
	}

	public List<Staff> getStaffList() {
		
		if(staffList==null){
			staffList = new ArrayList<Staff>();
		}
		return staffList;
	}

	public void setStaffList(List<Staff> StaffList) {
		this.staffList = StaffList;
	}
	
    public Staff getModel() {  
        if (null != id) {  
        	staff = StaffManager.get(id);  
        } else {  
        	staff = new Staff();  
        }  
        return staff;  
    }  

	@Override
	@Action("staffList")
	public String execute() throws Exception {
		
		log.info("查询员工信息");
		staffList = StaffManager.findAll();
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("StaffList", StaffList);
//		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="getStaffByStore",results={ @Result(name = "success", location = "/adminpages/staff/staffList.jsp")})
	public String getStaffByStore() throws Exception {
		
		log.info("查询store信息"+id);
	  Set<Staff> list = 	StoreManager.get(id).getStaffs();
	  
	  log.info("大小"+list.size());
	  
	  getStaffList().addAll(list);



		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="getScheduleByStaff",results={ @Result(name = "success", location = "/adminpages/schedule/scheduleList.jsp")})
	public String getScheduleByStaff() throws Exception {
		
		log.info("查询store信息"+id);
	  Set<Schedule> list = 	StaffManager.get(id).getSchedules();
	  
	  log.info("大小"+list.size());
	  
	  getScheduleList().addAll(list);



		
		
		return SUCCESS;
		
		
		
	}
	
	
	
	
	@Action(value="getAddressByStaff",results={ @Result(name = "success", location = "/adminpages/address/addressList.jsp")})
	public String getAddressByStaff() throws Exception {
		
		log.info("查询store信息"+id);
	 Address list = 	StaffManager.get(id).getAddress();
	  
	  //log.info("大小"+list.size());
	  
	  getAddressList().add(list);



		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="addStaff",
			results={ @Result(name = "input", location = "/adminpages/staff/addStaff.jsp"),
					@Result(name = "success", location = "/adminpages/staff/addStaff.jsp")
	})
	public String addFilm() throws Exception {
		
		log.info("浏览电影信息列表");
		
		//List<Language>  languageList = LanguageManager.findAll();
	 
	 
//	 Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("languageList", languageList);
	 
			return SUCCESS;
		
		
	}
	

	
	@Action(value="saveStaff",results={ @Result(name = "input", location = "/adminpages/staff/addStaff.jsp")})
	public String saveStaff() throws Exception {
		
		log.info("添加员工信息"+staff.getPicture());
		
		Store c = StoreManager.get(getStoreid());
		
		staff.setStore(c);
		
		
		
		int i = StaffManager.save(this.staff).intValue();
		
		//log.info("countyr:"+staff.getStaffName());
		
		if(i>0){
			return "addsuccess";
		}else{
			return ERROR;
		}
		
	}
	
	
	@Action(value="updateStaff",results={ @Result(name = "success", location = "/adminpages/staff/saveSuccess.jsp")})

	public String updateStaff() throws Exception {
		
		log.info("更新员工信息");
		
	Store c = StoreManager.get(getStoreid());
		
		staff.setStore(c);
		
		
		StaffManager.saveOrUpdate(this.staff);
		
			return SUCCESS;
		
		
	}
	
	
	
	@Action(value="deleteStaff",results={ @Result(name = "success", location = "/adminpages/staff/saveSuccess.jsp")})
	public String DeleteStaff() throws Exception {
		
		log.info("删除员工信息");
		 StaffManager.delete(id);
		
		 return SUCCESS;
	
		
	}
	
	
	@Action(value="editStaff",results={ @Result(name = "success", location = "/adminpages/staff/editStaff.jsp")})
	public String eidtStaff() throws Exception {
		
		log.info("编辑员工信息");
		staff = StaffManager.get(id);
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("Staff", Staff);
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
