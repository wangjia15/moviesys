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


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.wjapp.beans.City;
import com.wjapp.beans.Country;
import com.wjapp.beans.Customer;
import com.wjapp.service.CountryManager;



@ParentPackage("struts-default")  
@Namespace("/adminpages/country")    
@Results({  
    @Result(name = "success", location = "/adminpages/country/countryList.jsp"),
    @Result(name = "error", location = "/adminpages/country/errorCountry.jsp"),
    @Result(name = "addsuccess", location = "/adminpages/country/saveSuccess.jsp")  
})
//@ExceptionMappings({  
//    @ExceptionMapping(exception = "java.lang.Exception", result = "error", params = {"param1", "val1"})  
//})  
public class CountryAction extends ActionSupport implements ModelDriven<Country>, Preparable {
	
	private static final Logger log = Logger.getLogger(CountryAction.class);
	private Integer id;
	private Country country;
	private List<Country> countryList;
	
	private List<City> cityList;
	
	@Autowired
	private CountryManager CountryManager;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Country getCountry() {
		return country;
	}

	public void setCountry(Country Country) {
		this.country = Country;
	}

	public List<Country> getCountryList() {
		return countryList;
	}

	public void setCountryList(List<Country> CountryList) {
		this.countryList = CountryList;
	}
	
    public Country getModel() {  
        if (null != id) {  
        	country = CountryManager.get(id);  
        } else {  
        	country = new Country();  
        }  
        return country;  
    }  

	@Override
	@Action("countryList")
	public String execute() throws Exception {
		
		log.info("查询国家信息");
		countryList = CountryManager.findAll();
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("CountryList", CountryList);
//		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="getCityByCountry",results={ @Result(name = "success", location = "/adminpages/city/cityList.jsp")})
	public String getCityByCountry() throws Exception {
		
		log.info("查询store信息"+id);
	  Set<City> list = 	CountryManager.get(id).getCities();
	  
	  log.info("大小"+list.size());
	  
	  getCityList().addAll(list);

		
		return SUCCESS;
		
		
		
	}
	
	@Action(value="addCountry",
			results={ @Result(name = "input", location = "/adminpages/country/addCountry.jsp"),
					@Result(name = "success", location = "/adminpages/country/addCountry.jsp")
	})
	public String addCountry() throws Exception {
		
		log.info("浏览电影信息列表");
		
		//List<Language>  languageList = LanguageManager.findAll();
	 
	 
//	 Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("languageList", languageList);
	 
			return SUCCESS;
		
		
	}

	
	@Action(value="saveCountry",results={ @Result(name = "input", location = "/adminpages/country/addCountry.jsp")})
	public String saveCountry() throws Exception {
		
		log.info("添加国家信息");
		int i = CountryManager.save(this.country).intValue();
		
		log.info("countyr:"+country.getCountryName());
		
		if(i>0){
			return "addsuccess";
		}else{
			return ERROR;
		}
		
	}
	
	
	@Action(value="updateCountry",results={ @Result(name = "success", location = "/adminpages/country/saveSuccess.jsp")})

	public String updateCountry() throws Exception {
		
		log.info("更新国家信息");
		CountryManager.saveOrUpdate(this.country);
		
			return SUCCESS;
		
		
	}
	
	
	
	@Action(value="deleteCountry",results={ @Result(name = "success", location = "/adminpages/country/saveSuccess.jsp")})
	public String DeleteCountry() throws Exception {
		
		log.info("删除国家信息");
		 CountryManager.delete(id);
		
		 return SUCCESS;
	
		
	}
	
	
	@Action(value="editCountry",results={ @Result(name = "success", location = "/adminpages/country/editCountry.jsp")})
	public String eidtCountry() throws Exception {
		
		log.info("编辑国家信息");
		country = CountryManager.get(id);
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("Country", Country);
//		
		 return SUCCESS;
	
		
	}
	
	

	public void prepare() throws Exception {
		// TODO 自动生成的方法存根
		
	}

	public List<City> getCityList() {
		if(cityList==null){
			cityList = new ArrayList<City>();
		}
		return cityList;
	}

	public void setCityList(List<City> cityList) {
		this.cityList = cityList;
	}


	

}
