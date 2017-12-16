package com.wjapp.action;

import java.util.List;
import java.util.Map;

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
import com.wjapp.beans.Seat;
import com.wjapp.beans.Country;
import com.wjapp.beans.Language;
import com.wjapp.service.CountryManager;
import com.wjapp.service.SeatManager;



@ParentPackage("struts-default")  
@Namespace("/adminpages/seat")    
@Results({  
    @Result(name = "success", location = "/adminpages/seat/seatList.jsp"),
    @Result(name = "error", location = "/adminpages/seat/errorSeat.jsp"),
    @Result(name = "addsuccess", location = "/adminpages/seat/saveSuccess.jsp")  
})
//@ExceptionMappings({  
//    @ExceptionMapping(exception = "java.lang.Exception", result = "error", params = {"param1", "val1"})  
//})  
public class SeatAction extends ActionSupport implements ModelDriven<Seat>, Preparable {
	
	private static final Logger log = Logger.getLogger(SeatAction.class);
	private Integer id;
	
	
	private Integer countryid;
	
	private Seat seat;
	private List<Seat> seatList;
	
	@Autowired
	private SeatManager SeatManager;
	

	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Seat getSeat() {
		return seat;
	}

	public void setSeat(Seat Seat) {
		this.seat = Seat;
	}

	public List<Seat> getSeatList() {
		return seatList;
	}

	public void setSeatList(List<Seat> SeatList) {
		this.seatList = SeatList;
	}
	
    public Seat getModel() {  
        if (null != id) {  
        	seat = SeatManager.get(id);  
        } else {  
        	seat = new Seat();  
        }  
        return seat;  
    }  

	@Override
	@Action("seatList")
	public String execute() throws Exception {
		
		log.info("查询座位信息");
		seatList = SeatManager.findAll();
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("SeatList", SeatList);
//		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="addSeat",
			results={ @Result(name = "input", location = "/adminpages/seat/addSeat.jsp"),
					@Result(name = "success", location = "/adminpages/seat/addSeat.jsp")
	})
	public String addFilm() throws Exception {
		
		log.info("浏览电影信息列表");
		
		//List<Language>  languageList = LanguageManager.findAll();
	 
	 
//	 Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("languageList", languageList);
	 
			return SUCCESS;
		
		
	}
	

	
	@Action(value="saveSeat",results={ @Result(name = "input", location = "/adminpages/seat/addSeat.jsp")})
	public String saveSeat() throws Exception {
		
		log.info("添加座位信息");
		
		//Country c = CountryManager.get(countryid);
		
		//seat.setCountry(c);
		
		
		
		int i = SeatManager.save(this.seat).intValue();
		
		//log.info("countyr:"+seat.getSeatName());
		
		if(i>0){
			return "addsuccess";
		}else{
			return ERROR;
		}
		
	}
	
	
	@Action(value="updateSeat",results={ @Result(name = "success", location = "/adminpages/seat/saveSuccess.jsp")})

	public String updateSeat() throws Exception {
		
		log.info("更新座位信息");
		
		//Country c = CountryManager.get(countryid);
		
		//seat.setCountry(c);
		
		SeatManager.saveOrUpdate(this.seat);
		
			return SUCCESS;
		
		
	}
	
	
	
	@Action(value="deleteSeat",results={ @Result(name = "success", location = "/adminpages/seat/saveSuccess.jsp")})
	public String DeleteSeat() throws Exception {
		
		log.info("删除座位信息");
		 SeatManager.delete(id);
		
		 return SUCCESS;
	
		
	}
	
	
	@Action(value="editSeat",results={ @Result(name = "success", location = "/adminpages/seat/editSeat.jsp")})
	public String eidtSeat() throws Exception {
		
		log.info("编辑座位信息");
		seat = SeatManager.get(id);
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("Seat", Seat);
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





	

}
