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
import com.wjapp.beans.Saleinfo;
import com.wjapp.beans.Staff;
import com.wjapp.beans.Store;

import com.wjapp.beans.City;
import com.wjapp.beans.Country;
import com.wjapp.beans.Customer;
import com.wjapp.beans.Schedule;
import com.wjapp.beans.Language;
import com.wjapp.beans.Payment;
import com.wjapp.service.CountryManager;
import com.wjapp.service.CustomerManager;
import com.wjapp.service.ScheduleManager;
import com.wjapp.service.PaymentManager;
import com.wjapp.service.SaleinfoManager;
import com.wjapp.service.StaffManager;
import com.wjapp.service.CityManager;
import com.wjapp.service.StoreManager;



@ParentPackage("struts-default")  
@Namespace("/adminpages/saleinfo")    
@Results({  
    @Result(name = "success", location = "/adminpages/saleinfo/saleinfoList.jsp"),
    @Result(name = "error", location = "/adminpages/saleinfo/errorSaleinfo.jsp"),
    @Result(name = "addsuccess", location = "/adminpages/saleinfo/saveSuccess.jsp")  
})
//@ExceptionMappings({  
//    @ExceptionMapping(exception = "java.lang.Exception", result = "error", params = {"param1", "val1"})  
//})  
public class SaleinfoAction extends ActionSupport implements ModelDriven<Saleinfo>, Preparable {
	
	private static final Logger log = Logger.getLogger(SaleinfoAction.class);
	private Integer id;
	
	
	private Integer storeid;
	
	private Saleinfo saleinfo;
	private List<Saleinfo> saleinfoList;
	
	
	private List<Schedule> scheduleList;
	
	private List<Customer> customerList;

	
	
	private List<Staff> staffList;
	
	
	@Autowired
	private SaleinfoManager SaleinfoManager;
	
	@Autowired
	private StaffManager staffManager;
	
	@Autowired
	private CustomerManager customerManager;
	
	@Autowired
	private ScheduleManager scheduleManager;
	
	
	
	public List<Customer> getCustomerList() {
		if(customerList==null){
			customerList = new ArrayList<Customer>();
		}
		return customerList;
	}

	public void setCustomerList(List<Customer> customerList) {
		this.customerList = customerList;
	}

	public List<Staff> getStaffList() {
		if(staffList==null){
			staffList = new ArrayList<Staff>();
		}
		return staffList;
	}

	public void setStaffList(List<Staff> staffList) {
		this.staffList = staffList;
	}

	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Saleinfo getSaleinfo() {
		return saleinfo;
	}

	public void setSaleinfo(Saleinfo Saleinfo) {
		this.saleinfo = Saleinfo;
	}

	public List<Saleinfo> getSaleinfoList() {
		
		if(saleinfoList==null){
			saleinfoList = new ArrayList<Saleinfo>();
		}
		return saleinfoList;
	}

	public void setSaleinfoList(List<Saleinfo> SaleinfoList) {
		this.saleinfoList = SaleinfoList;
	}
	
    public Saleinfo getModel() {  
        if (null != id) {  
        	saleinfo = SaleinfoManager.get(id);  
        } else {  
        	saleinfo = new Saleinfo();  
        }  
        return saleinfo;  
    }  

	@Override
	@Action("saleinfoList")
	public String execute() throws Exception {
		
		log.info("查询订单信息");
		saleinfoList = SaleinfoManager.findAll();
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("SaleinfoList", SaleinfoList);
//		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="getStaffBySale",results={ @Result(name = "success", location = "/adminpages/staff/staffList.jsp")})
	public String getStaffBySale() throws Exception {
		
Staff staff = SaleinfoManager.get(id).getStaff();

getStaffList().add(staff);
		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="getScheduleBySale",results={ @Result(name = "success", location = "/adminpages/schedule/scheduleList.jsp")})
	public String getScheduleBySale() throws Exception {
		
		Schedule schedule = SaleinfoManager.get(id).getSchedule();

       getScheduleList().add(schedule);
		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="getCustomerBySale",results={ @Result(name = "success", location = "/adminpages/customer/customerList.jsp")})
	public String getCustomerBySale() throws Exception {
		
Customer cust = SaleinfoManager.get(id).getCustomer();

getCustomerList().add(cust);
		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="addSaleinfo",
			results={ @Result(name = "input", location = "/adminpages/saleinfo/addSaleinfo.jsp"),
					@Result(name = "success", location = "/adminpages/saleinfo/addSaleinfo.jsp")
	})
	public String addSchedule() throws Exception {
		
		log.info("浏览订单列表");
		
		//List<Language>  languageList = LanguageManager.findAll();
	 
	 
//	 Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("languageList", languageList);
	 
			return SUCCESS;
		
		
	}
	

	
	@Action(value="saveSaleinfo",results={ @Result(name = "input", location = "/adminpages/saleinfo/addSaleinfo.jsp")})
	public String saveSaleinfo() throws Exception {
		
		log.info("添加订单信息");
		
//		Store c = StoreManager.get(getStoreid());
//		
//		saleinfo.setStore(c);
//		
		
		
		int i = SaleinfoManager.save(this.saleinfo).intValue();
		
		//log.info("countyr:"+saleinfo.getSaleinfoName());
		
		if(i>0){
			return "addsuccess";
		}else{
			return ERROR;
		}
		
	}
	
	
	@Action(value="updateSaleinfo",results={ @Result(name = "success", location = "/adminpages/saleinfo/saveSuccess.jsp")})

	public String updateSaleinfo() throws Exception {
		
		log.info("更新订单信息");
		
//	Store c = StoreManager.get(getStoreid());
//		
//		saleinfo.setStore(c);
//		
		
		SaleinfoManager.saveOrUpdate(this.saleinfo);
		
			return SUCCESS;
		
		
	}
	
	
	
	@Action(value="deleteSaleinfo",results={ @Result(name = "success", location = "/adminpages/saleinfo/saveSuccess.jsp")})
	public String DeleteSaleinfo() throws Exception {
		
		log.info("删除订单信息");
		 SaleinfoManager.delete(id);
		
		 return SUCCESS;
	
		
	}
	
	
	@Action(value="editSaleinfo",results={ @Result(name = "success", location = "/adminpages/saleinfo/editSaleinfo.jsp")})
	public String eidtSaleinfo() throws Exception {
		
		log.info("编辑订单信息");
		saleinfo = SaleinfoManager.get(id);
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("Saleinfo", Saleinfo);
//		
		 return SUCCESS;
	
		
	}
	
	

	public void prepare() throws Exception {
		
		//List<Store>  storeList = StoreManager.findAll();
		 
		 
		 Map requestList = (Map) ActionContext.getContext().get("request");
		//	requestList.put("StoreList", storeList);

		
	}





	public Integer getStoreid() {
		return storeid;
	}

	public void setStoreid(Integer storeid) {
		this.storeid = storeid;
	}

	public List<Schedule> getScheduleList() {
		if(scheduleList==null){
			scheduleList = new ArrayList<Schedule>();
		}
		return scheduleList;
	}

	public void setScheduleList(List<Schedule> scheduleList) {
		this.scheduleList = scheduleList;
	}

	public StaffManager getStaffManager() {
		return staffManager;
	}

	public void setStaffManager(StaffManager staffManager) {
		this.staffManager = staffManager;
	}

	public CustomerManager getCustomerManager() {
		return customerManager;
	}

	public void setCustomerManager(CustomerManager customerManager) {
		this.customerManager = customerManager;
	}

	public ScheduleManager getScheduleManager() {
		return scheduleManager;
	}

	public void setScheduleManager(ScheduleManager scheduleManager) {
		this.scheduleManager = scheduleManager;
	}







	

}
