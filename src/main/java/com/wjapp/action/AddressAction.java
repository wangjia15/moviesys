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
import com.wjapp.beans.Address;
import com.wjapp.beans.City;
import com.wjapp.beans.Country;
import com.wjapp.beans.Customer;
import com.wjapp.beans.Language;
import com.wjapp.service.CountryManager;
import com.wjapp.service.StoreManager;
import com.wjapp.service.AddressManager;
import com.wjapp.service.CityManager;



@ParentPackage("authorityAdmin")  
@Namespace("/adminpages/address")    
@Results({  
    @Result(name = "success", location = "/adminpages/address/addressList.jsp"),
    @Result(name = "error", location = "/adminpages/address/errorAddress.jsp"),
    @Result(name = "addsuccess", location = "/adminpages/address/saveSuccess.jsp")  
})
//@ExceptionMappings({  
//    @ExceptionMapping(exception = "java.lang.Exception", result = "error", params = {"param1", "val1"})  
//})  
public class AddressAction extends ActionSupport implements ModelDriven<Address>, Preparable {
	
	private static final Logger log = Logger.getLogger(AddressAction.class);
	private Integer id;
	
	
	private Integer cityid;
	
	private Address address;
	private List<Address> addressList;
	
	private List<Customer> customerList;
	
	@Autowired
	private AddressManager AddressManager;
	
	@Autowired
	private StoreManager StoreManager;
	
	
	@Autowired
	private CityManager CityManager;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address Address) {
		this.address = Address;
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
	
	public List<Customer> getCustomerList() {
		
		if(customerList==null){
			customerList = new ArrayList<Customer>();
		}
		return customerList;
	}

	public void setCustomerList(List<Customer> CustomerList) {
		this.customerList = CustomerList;
	}
	
	
    public Address getModel() {  
        if (null != id) {  
        	address = AddressManager.get(id);  
        } else {  
        	address = new Address();  
        }  
        return address;  
    }  

	@Override
	@Action("addressList")
	public String execute() throws Exception {
		
		log.info("查询地址信息");
		addressList = AddressManager.findAll();
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("AddressList", AddressList);
//		
		
		return SUCCESS;
		
		
		
	}
	@Action(value="getCustomerByAddress",results={ @Result(name = "success", location = "/adminpages/customer/customerList.jsp")})
	public String getCustomerByAddress() throws Exception {
		
		log.info("查询store信息"+id);
	  Set<Customer> list = 	AddressManager.get(id).getCustomers();
	  
	  log.info("大小"+list.size());
	  
	  getCustomerList().addAll(list);



		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="getAddressByStore",results={ @Result(name = "success", location = "/adminpages/address/addressList.jsp")})
	public String getAddressByStore() throws Exception {
		
		log.info("查询store信息"+id);
	 Address list = 	getStoreManager().get(id).getAddress();
	  
	  //log.info("大小"+list.size());
	  
	  getAddressList().add(list);



		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="addAddress",
			results={ @Result(name = "input", location = "/adminpages/address/addAddress.jsp"),
					@Result(name = "success", location = "/adminpages/address/addAddress.jsp")
	})
	public String addFilm() throws Exception {
		
		log.info("浏览电影信息列表");
		
		//List<Language>  languageList = LanguageManager.findAll();
	 
	 
//	 Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("languageList", languageList);
	 
			return SUCCESS;
		
		
	}
	

	
	@Action(value="saveAddress",results={ @Result(name = "input", location = "/adminpages/address/addAddress.jsp")})
	public String saveAddress() throws Exception {
		
		log.info("添加地址信息");
		
		City c = CityManager.get(cityid);
		
		address.setCity(c);
		
		
		
		int i = AddressManager.save(this.address).intValue();
		
		//log.info("countyr:"+address.getAddressName());
		
		if(i>0){
			return "addsuccess";
		}else{
			return ERROR;
		}
		
	}
	
	
	@Action(value="updateAddress",results={ @Result(name = "success", location = "/adminpages/address/saveSuccess.jsp")})

	public String updateAddress() throws Exception {
		
		log.info("更新地址信息");
		
		City c = CityManager.get(cityid);
		
		address.setCity(c);
		
		
		AddressManager.saveOrUpdate(this.address);
		
			return SUCCESS;
		
		
	}
	
	
	
	@Action(value="deleteAddress",results={ @Result(name = "success", location = "/adminpages/address/saveSuccess.jsp")})
	public String DeleteAddress() throws Exception {
		
		log.info("删除地址信息");
		 AddressManager.delete(id);
		
		 return SUCCESS;
	
		
	}
	
	
	@Action(value="editAddress",results={ @Result(name = "success", location = "/adminpages/address/editAddress.jsp")})
	public String eidtAddress() throws Exception {
		
		log.info("编辑地址信息");
		address = AddressManager.get(id);
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("Address", Address);
//		
		 return SUCCESS;
	
		
	}
	
	

	public void prepare() throws Exception {
		
		List<City>  countryList = CityManager.findAll();
		 
		 
		 Map requestList = (Map) ActionContext.getContext().get("request");
			requestList.put("CityList", countryList);

		
	}

	public Integer getCityid() {
		return cityid;
	}

	public void setCityid(Integer cityid) {
		this.cityid = cityid;
	}

	public CityManager getCityManager() {
		return CityManager;
	}

	public void setCityManager(CityManager cityManager) {
		CityManager = cityManager;
	}

	public StoreManager getStoreManager() {
		return StoreManager;
	}

	public void setStoreManager(StoreManager storeManager) {
		StoreManager = storeManager;
	}







	

}
