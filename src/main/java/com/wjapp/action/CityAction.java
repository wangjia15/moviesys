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
import com.wjapp.beans.Language;
import com.wjapp.service.CountryManager;
import com.wjapp.service.CityManager;



@ParentPackage("struts-default")  
@Namespace("/adminpages/city")    
@Results({  
    @Result(name = "success", location = "/adminpages/city/cityList.jsp"),
    @Result(name = "error", location = "/adminpages/city/errorCity.jsp"),
    @Result(name = "addsuccess", location = "/adminpages/city/saveSuccess.jsp")  
})
//@ExceptionMappings({  
//    @ExceptionMapping(exception = "java.lang.Exception", result = "error", params = {"param1", "val1"})  
//})  
public class CityAction extends ActionSupport implements ModelDriven<City>, Preparable {
	
	private static final Logger log = Logger.getLogger(CityAction.class);
	private Integer id;
	
	
	private Integer countryid;
	
	private City city;
	private List<City> cityList;
	
	private List<Address> addressList;
	
	@Autowired
	private CityManager CityManager;
	
	@Autowired
	private CountryManager CountryManager;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City City) {
		this.city = City;
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

	public List<City> getCityList() {
		return cityList;
	}

	public void setCityList(List<City> CityList) {
		this.cityList = CityList;
	}
	
    public City getModel() {  
        if (null != id) {  
        	city = CityManager.get(id);  
        } else {  
        	city = new City();  
        }  
        return city;  
    }  

	@Override
	@Action("cityList")
	public String execute() throws Exception {
		
		log.info("查询城市信息");
		cityList = CityManager.findAll();
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("CityList", CityList);
//		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="getAddressByCity",results={ @Result(name = "success", location = "/adminpages/address/addressList.jsp")})
	public String getAddressByCity() throws Exception {
		
		log.info("查询store信息"+id);
	  Set<Address> list = 	CityManager.get(id).getAddresses();
	  
	  log.info("大小"+list.size());
	  
	  getAddressList().addAll(list);

		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="addCity",
			results={ @Result(name = "input", location = "/adminpages/city/addCity.jsp"),
					@Result(name = "success", location = "/adminpages/city/addCity.jsp")
	})
	public String addFilm() throws Exception {
		
		log.info("浏览电影信息列表");
		
		//List<Language>  languageList = LanguageManager.findAll();
	 
	 
//	 Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("languageList", languageList);
	 
			return SUCCESS;
		
		
	}
	

	
	@Action(value="saveCity",results={ @Result(name = "input", location = "/adminpages/city/addCity.jsp")})
	public String saveCity() throws Exception {
		
		log.info("添加城市信息");
		
		Country c = CountryManager.get(countryid);
		
		city.setCountry(c);
		
		
		
		int i = CityManager.save(this.city).intValue();
		
		//log.info("countyr:"+city.getCityName());
		
		if(i>0){
			return "addsuccess";
		}else{
			return ERROR;
		}
		
	}
	
	
	@Action(value="updateCity",results={ @Result(name = "success", location = "/adminpages/city/saveSuccess.jsp")})

	public String updateCity() throws Exception {
		
		log.info("更新城市信息");
		
		Country c = CountryManager.get(countryid);
		
		city.setCountry(c);
		
		CityManager.saveOrUpdate(this.city);
		
			return SUCCESS;
		
		
	}
	
	
	
	@Action(value="deleteCity",results={ @Result(name = "success", location = "/adminpages/city/saveSuccess.jsp")})
	public String DeleteCity() throws Exception {
		
		log.info("删除城市信息");
		 CityManager.delete(id);
		
		 return SUCCESS;
	
		
	}
	
	
	@Action(value="editCity",results={ @Result(name = "success", location = "/adminpages/city/editCity.jsp")})
	public String eidtCity() throws Exception {
		
		log.info("编辑城市信息");
		city = CityManager.get(id);
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("City", City);
//		
		 return SUCCESS;
	
		
	}
	
	

	public void prepare() throws Exception {
		
		List<Country>  countryList = CountryManager.findAll();
		 
		 
		 Map requestList = (Map) ActionContext.getContext().get("request");
			requestList.put("CountryList", countryList);

		
	}

	public CountryManager getCountryManager() {
		return CountryManager;
	}

	public void setCountryManager(CountryManager countryManager) {
		CountryManager = countryManager;
	}

	public Integer getCountryid() {
		return countryid;
	}

	public void setCountryid(Integer countryid) {
		this.countryid = countryid;
	}





	

}
