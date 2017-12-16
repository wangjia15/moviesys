package com.wjapp.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
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
import com.wjapp.beans.Customer;
import com.wjapp.beans.FilmActor;
import com.wjapp.beans.Address;
import com.wjapp.beans.City;
import com.wjapp.beans.Country;
import com.wjapp.beans.Language;
import com.wjapp.beans.Store;
import com.wjapp.service.CountryManager;
import com.wjapp.service.CustomerManager;
import com.wjapp.service.AddressManager;
import com.wjapp.service.CityManager;
import com.wjapp.service.StoreManager;



@ParentPackage("struts-default")  
@Namespace("/adminpages/customer")    
@Results({  
    @Result(name = "success", location = "/adminpages/customer/customerList.jsp"),
    @Result(name = "error", location = "/adminpages/customer/errorCustomer.jsp"),
    @Result(name = "addsuccess", location = "/adminpages/customer/saveSuccess.jsp")  
})
//@ExceptionMappings({  
//    @ExceptionMapping(exception = "java.lang.Exception", result = "error", params = {"param1", "val1"})  
//})  
public class CustomerAction extends ActionSupport implements ModelDriven<Customer>, Preparable {
	
	private static final Logger log = Logger.getLogger(CustomerAction.class);
	private Integer id;
	
	
	private Integer storeid;
	
	private Customer customer;
	private List<Customer> customerList;
	
	private List<Store> storeList;
	
	private List<Address> addressList;
	

	
	@Autowired
	private CustomerManager CustomerManager;
	
	@Autowired
	private StoreManager storeManager;
	
	@Autowired
	private AddressManager addressManager;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer Customer) {
		this.customer = Customer;
	}

	public List<Customer> getCustomerList() {
		
		if(customerList==null){
			customerList = new ArrayList<Customer>();
		}
		return customerList;
	}

	public void setCustomerList(List<Customer> CustomerList) {
		this.customerList = CustomerList;
	}
	
    public Customer getModel() {  
        if (null != id) {  
        	customer = CustomerManager.get(id);  
        } else {  
        	customer = new Customer();  
        }  
        return customer;  
    }  

	@Override
	@Action("customerList")
	public String execute() throws Exception {
		
		log.info("查询客户信息");
		customerList = CustomerManager.findAll();
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("CustomerList", CustomerList);
//		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="getCustomerByStore",results={ @Result(name = "success", location = "/adminpages/customer/customerList.jsp")})
	public String getCustomerByStore() throws Exception {
		
		log.info("查询store信息"+id);
	  Set<Customer> list = 	storeManager.get(id).getCustomers();
	  
	  log.info("大小"+list.size());
	  
	  getCustomerList().addAll(list);



		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="getAddressByCustmoer",results={ @Result(name = "success", location = "/adminpages/address/addressList.jsp")})
	public String getAddressByCustmoer() throws Exception {
		
		log.info("查询store信息"+id);
	  Address ad = 	CustomerManager.get(id).getAddress();
	  
	 
	  getAddressList().add(ad);



		
		
		return SUCCESS;
		
		
		
	}
	
	


	
	
	
	@Action(value="addCustomer",
			results={ @Result(name = "input", location = "/adminpages/customer/addCustomer.jsp"),
					@Result(name = "success", location = "/adminpages/customer/addCustomer.jsp")
	})
	public String addFilm() throws Exception {
		
		log.info("浏览电影信息列表");
		
	getStoreList().addAll(storeManager.findAll());
	 
	 
//	 Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("languageList", languageList);
	 
			return SUCCESS;
		
		
	}
	

	
	@Action(value="saveCustomer",results={ @Result(name = "input", location = "/adminpages/customer/addCustomer.jsp")})
	public String saveCustomer() throws Exception {
		
		log.info("添加客户信息");
		
		//City c = CityManager.get(cityid);
		
		//customer.setCity(c);
		
		Store  s = storeManager.get(getStoreid());
		
		customer.setStore(s);
		
		int i = CustomerManager.save(this.customer).intValue();
		
		//log.info("countyr:"+customer.getCustomerName());
		
		if(i>0){
			return "addsuccess";
		}else{
			return ERROR;
		}
		
	}
	
	
	@Action(value="updateCustomer",results={ @Result(name = "success", location = "/adminpages/customer/saveSuccess.jsp")})

	public String updateCustomer() throws Exception {
		
		log.info("更新客户信息");
		
		//City c = CityManager.get(cityid);
		
		//customer.setCity(c);

		 
		 
		
		CustomerManager.saveOrUpdate(this.customer);
		
			return SUCCESS;
		
		
	}
	
	
	
	@Action(value="deleteCustomer",results={ @Result(name = "success", location = "/adminpages/customer/saveSuccess.jsp")})
	public String DeleteCustomer() throws Exception {
		
		log.info("删除客户信息");
		 CustomerManager.delete(id);
		
		 return SUCCESS;
	
		
	}
	
	
	@Action(value="editCustomer",results={ @Result(name = "success", location = "/adminpages/customer/editCustomer.jsp")})
	public String eidtCustomer() throws Exception {
		
		log.info("编辑客户信息");
		customer = CustomerManager.get(id);
		getStoreList().addAll(storeManager.findAll());
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("Customer", Customer);
//		
		 return SUCCESS;
	
		
	}
	
	
	@Action(value="fronteditCustomer",results={ @Result(name = "success", location = "/frontpages/editCustomer.jsp")})
	public String fronteditCustomer() throws Exception {
//		HttpServletRequest request = ServletActionContext.getRequest();
//		HttpSession session = request.getSession();
//		int id = ((Customer)session.getAttribute("customer")).getCustomerId();
//	
		customer = CustomerManager.get(id);
		getStoreList().addAll(storeManager.findAll());

		 return SUCCESS;
	
		
	}
	
	
	

	public void prepare() throws Exception {
		
//		List<City>  countryList = CityManager.findAll();
//		 
//		 
//		 Map requestList = (Map) ActionContext.getContext().get("request");
//			requestList.put("CityList", countryList);

		
	}



	public StoreManager getStoreManager() {
		return storeManager;
	}

	public void setStoreManager(StoreManager storeManager) {
		this.storeManager = storeManager;
	}

	public List<Store> getStoreList() {
		if(storeList==null){
			storeList = new ArrayList<Store>();
		}
		return storeList;
	}

	public void setStoreList(List<Store> storeList) {
		this.storeList = storeList;
	}

	public Integer getStoreid() {
		return storeid;
	}

	public void setStoreid(Integer storeid) {
		this.storeid = storeid;
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

	public AddressManager getAddressManager() {
		return addressManager;
	}

	public void setAddressManager(AddressManager addressManager) {
		this.addressManager = addressManager;
	}

	

}
