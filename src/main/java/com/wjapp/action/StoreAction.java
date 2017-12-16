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
import com.wjapp.beans.Store;
import com.wjapp.beans.Address;
import com.wjapp.beans.Country;
import com.wjapp.beans.Language;
import com.wjapp.beans.Staff;
import com.wjapp.service.AddressManager;
import com.wjapp.service.StaffManager;
import com.wjapp.service.StoreManager;



@ParentPackage("struts-default")  
@Namespace("/adminpages/store")    
@Results({  
    @Result(name = "success", location = "/adminpages/store/storeList.jsp"),
    @Result(name = "error", location = "/adminpages/store/errorStore.jsp"),
    @Result(name = "addsuccess", location = "/adminpages/store/saveSuccess.jsp")  
})
//@ExceptionMappings({  
//    @ExceptionMapping(exception = "java.lang.Exception", result = "error", params = {"param1", "val1"})  
//})  
public class StoreAction extends ActionSupport implements ModelDriven<Store>, Preparable {
	
	private static final Logger log = Logger.getLogger(StoreAction.class);
	private Integer id;
	
	
	private Integer countryid;
	
	
	private Integer staffId;
	
	private Integer addressId;
	
	private Store store;
	private List<Store> storeList;
	
	private List<Staff> staffList;
	
	
	@Autowired
	private StoreManager StoreManager;
	
	@Autowired
	private StaffManager staffManager;
	
	@Autowired
	private AddressManager AddressManager;
	
	public List<Staff> getStaffList() {
		
		if(staffList==null){
			staffList = new ArrayList<Staff>();
		}
		return staffList;
	}

	public void setStaffList(List<Staff> StaffList) {
		this.staffList = StaffList;
	}

	public Integer getStaffId() {
		return staffId;
	}

	public void setStaffId(Integer staffId) {
		this.staffId = staffId;
	}

	public Integer getAddressId() {
		return addressId;
	}

	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Store getStore() {
		return store;
	}

	public void setStore(Store Store) {
		this.store = Store;
	}

	public List<Store> getStoreList() {
		return storeList;
	}

	public void setStoreList(List<Store> StoreList) {
		this.storeList = StoreList;
	}
	
    public Store getModel() {  
        if (null != id) {  
        	store = StoreManager.get(id);  
        } else {  
        	store = new Store();  
        }  
        return store;  
    }  

	@Override
	@Action("storeList")
	public String execute() throws Exception {
		
		log.info("查询影院信息");
		storeList = StoreManager.findAll();
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("StoreList", StoreList);
//		
		
		return SUCCESS;
		
		
		
	}
	@Action(value="getManagerByStore",results={ @Result(name = "success", location = "/adminpages/staff/staffList.jsp")})
	public String getManagerByStore() throws Exception {
		
		log.info("查询store信息"+id);
	 Staff manager = 	StoreManager.get(id).getStaff();

	  getStaffList().add(manager);
	
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
	
	
	@Action(value="addStore",
			results={ @Result(name = "input", location = "/adminpages/store/addStore.jsp"),
					@Result(name = "success", location = "/adminpages/store/addStore.jsp")
	})
	public String addFilm() throws Exception {
		
		log.info("浏览电影信息列表");
		
		//List<Language>  languageList = LanguageManager.findAll();
	 
	 
//	 Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("languageList", languageList);
	 
			return SUCCESS;
		
		
	}
	

	
	@Action(value="saveStore",results={ @Result(name = "input", location = "/adminpages/store/addStore.jsp")})
	public String saveStore() throws Exception {
		
		log.info("添加影院信息");
		
		//Country c = CountryManager.get(countryid);
		
		//store.setCountry(c);
		
		
		Staff staff = staffManager.get(staffId);
		store.setStaff(staff);
		
		Address address= AddressManager.get(addressId);
		store.setAddress(address);
		
		
		int i = StoreManager.save(this.store).intValue();
		
		//log.info("countyr:"+store.getStoreName());
		
		if(i>0){
			return "addsuccess";
		}else{
			return ERROR;
		}
		
	}
	
	
	@Action(value="updateStore",results={ @Result(name = "success", location = "/adminpages/store/saveSuccess.jsp")})

	public String updateStore() throws Exception {
		
		log.info("更新影院信息");
		
		//Country c = CountryManager.get(countryid);
		
		//store.setCountry(c);
		
		StoreManager.saveOrUpdate(this.store);
		
			return SUCCESS;
		
		
	}
	
	
	
	@Action(value="deleteStore",results={ @Result(name = "success", location = "/adminpages/store/saveSuccess.jsp")})
	public String DeleteStore() throws Exception {
		
		log.info("删除影院信息");
		 StoreManager.delete(id);
		
		 return SUCCESS;
	
		
	}
	
	
	@Action(value="editStore",results={ @Result(name = "success", location = "/adminpages/store/editStore.jsp")})
	public String eidtStore() throws Exception {
		
		log.info("编辑影院信息");
		store = StoreManager.get(id);
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("Store", Store);
//		
		 return SUCCESS;
	
		
	}
	
	

	public void prepare() throws Exception {
		


		
	}



	public Integer getCountryid() {
		return countryid;
	}

	public void setCountryid(Integer countryid) {
		this.countryid = countryid;
	}

	public AddressManager getAddressManager() {
		return AddressManager;
	}

	public void setAddressManager(AddressManager addressManager) {
		AddressManager = addressManager;
	}

	public StaffManager getStaffManager() {
		return staffManager;
	}

	public void setStaffManager(StaffManager staffManager) {
		this.staffManager = staffManager;
	}





	

}
