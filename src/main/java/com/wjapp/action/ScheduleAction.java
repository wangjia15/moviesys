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
import com.wjapp.beans.Schedule;
import com.wjapp.beans.Seat;
import com.wjapp.beans.Staff;
import com.wjapp.beans.Country;
import com.wjapp.beans.Film;
import com.wjapp.beans.FilmActor;
import com.wjapp.beans.Hall;
import com.wjapp.beans.Language;
import com.wjapp.beans.Playdata;
import com.wjapp.beans.Saleinfo;
import com.wjapp.service.CountryManager;
import com.wjapp.service.HallManager;
import com.wjapp.service.PlaydataManager;
import com.wjapp.service.SaleinfoManager;
import com.wjapp.service.ScheduleManager;
import com.wjapp.service.SeatManager;
import com.wjapp.service.StaffManager;



@ParentPackage("struts-default")  
@Namespace("/adminpages/schedule")    
@Results({  
    @Result(name = "success", location = "/adminpages/schedule/scheduleList.jsp"),
    @Result(name = "error", location = "/adminpages/schedule/errorSchedule.jsp"),
    @Result(name = "addsuccess", location = "/adminpages/schedule/saveSuccess.jsp")  
})
//@ExceptionMappings({  
//    @ExceptionMapping(exception = "java.lang.Exception", result = "error", params = {"param1", "val1"})  
//})  
public class ScheduleAction extends ActionSupport implements ModelDriven<Schedule>, Preparable {
	
	private static final Logger log = Logger.getLogger(ScheduleAction.class);
	private Integer id;
	
	private Integer addPlayDataId;
	
	private Integer addStaffId;
	
	private Integer addHallId;
	
	
	private Schedule schedule;
	private List<Schedule> scheduleList;
	
	@Autowired
	private ScheduleManager ScheduleManager;
	
	@Autowired
	private HallManager hallManager;
	
	
	@Autowired
	private StaffManager staffManager;
	
	@Autowired
	private PlaydataManager playdataManager;
	
	
	

	
	private List<Staff> staffList;
	
	private List<Playdata> playdataList;
	
	
	private List<Seat> seatList;
	
	
	private List<Hall> hallList;
	
	private List<Saleinfo> saleinfoList;
	
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Schedule getSchedule() {
		return schedule;
	}

	public void setSchedule(Schedule Schedule) {
		this.schedule = Schedule;
	}

	public List<Schedule> getScheduleList() {
		
		if(scheduleList==null){
			scheduleList = new ArrayList<Schedule>();
		}
		return scheduleList;
	}

	public void setScheduleList(List<Schedule> ScheduleList) {
		this.scheduleList = ScheduleList;
	}
	
    public Schedule getModel() {  
        if (null != id) {  
        	schedule = ScheduleManager.get(id);  
        } else {  
        	schedule = new Schedule();  
        }  
        return schedule;  
    }  

	@Override
	@Action("scheduleList")
	public String execute() throws Exception {
		
		log.info("查询时刻安排信息");
		scheduleList = ScheduleManager.findAll();
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("ScheduleList", ScheduleList);
//		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="getPlaydataBySchedule",results={ @Result(name = "success", location = "/adminpages/playdata/playdataList.jsp")})
	public String getPlaydataBySchedule() throws Exception {
		
		log.info("查询演员信息"+id);
		Playdata sch = 	ScheduleManager.get(id).getPlaydata();
	  
	  

	  getPlaydataList().add(sch);
		  
	
		return SUCCESS;
		
		
		
	}
	
	@Action(value="getStaffBySchedule",results={ @Result(name = "success", location = "/adminpages/staff/staffList.jsp")})
	public String getStaffBySchedule() throws Exception {
		
		log.info("查询演员信息"+id);
		Staff staff = 	ScheduleManager.get(id).getStaff();
	  
	  

	   getStaffList().add(staff);
		  
	
		return SUCCESS;
		
		
		
	}
	
	@Action(value="getHallBySchedule",results={ @Result(name = "success", location = "/adminpages/hall/hallList.jsp")})
	public String getHallBySchedule() throws Exception {
		
		log.info("查询演员信息"+id);
		Hall hall = 	ScheduleManager.get(id).getHall();
	  
	  

	   getHallList().add(hall);
		  
	
		return SUCCESS;
		
		
		
	}
	
	@Action(value="getSalesBySchedule",results={ @Result(name = "success", location = "/adminpages/saleinfo/saleinfoList.jsp")})
	public String getSalesBySchedule() throws Exception {
		
		log.info("查询演员信息"+id);
	  Set<Saleinfo> list = 	ScheduleManager.get(id).getSaleinfos();
	  
	  log.info("大小"+list.size());

	  for( Saleinfo item : list){
		  
		  log.info(item);
		  getSaleinfoList().add(item);
	  }
		

		
		return SUCCESS;
		
		
		
	}
	
	
	
	@Action(value="getSeatsBySchedule",results={ @Result(name = "success", location = "/adminpages/seat/seatList.jsp")})
	public String getSeatsBySchedule() throws Exception {
		
		log.info("查询演员信息"+id);
	  Set<Seat> list = 	ScheduleManager.get(id).getSeats();
	  
	  log.info("大小"+list.size());

	  for( Seat item : list){
		  
		  log.info(item);
		  getSeatList().add(item);
	  }
		

		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="addSchedule",
			results={ @Result(name = "input", location = "/adminpages/schedule/addSchedule.jsp"),
					@Result(name = "success", location = "/adminpages/schedule/addSchedule.jsp")
	})
	public String addFilm() throws Exception {
		
		log.info("浏览电影信息列表");
		
		//List<Language>  languageList = LanguageManager.findAll();
	 
	 
//	 Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("languageList", languageList);
	 
			return SUCCESS;
		
		
	}
	

	
	@Action(value="saveSchedule",results={ @Result(name = "input", location = "/adminpages/schedule/addSchedule.jsp")})
	public String saveSchedule() throws Exception {
		
		log.info("添加时刻安排信息"+schedule.getPlaytime()+"-"+schedule.getEndtime());
		
	schedule.setHall(hallManager.get(addHallId));
	schedule.setPlaydata(playdataManager.get(addPlayDataId));
	schedule.setStaff(staffManager.get(addStaffId));
		
		
		
		int i = ScheduleManager.save(this.schedule).intValue();
		
		//log.info("countyr:"+schedule.getScheduleName());
		
		if(i>0){
			return "addsuccess";
		}else{
			return ERROR;
		}
		
	}
	
	
	@Action(value="updateSchedule",results={ @Result(name = "success", location = "/adminpages/schedule/saveSuccess.jsp")})

	public String updateSchedule() throws Exception {
		
		log.info("更新时刻安排信息");
		
		//Country c = CountryManager.get(countryid);
		
		//schedule.setCountry(c);
		
		ScheduleManager.saveOrUpdate(this.schedule);
		
			return SUCCESS;
		
		
	}
	
	
	
	@Action(value="deleteSchedule",results={ @Result(name = "success", location = "/adminpages/schedule/saveSuccess.jsp")})
	public String DeleteSchedule() throws Exception {
		
		log.info("删除时刻安排信息");
		 ScheduleManager.delete(id);
		
		 return SUCCESS;
	
		
	}
	
	
	@Action(value="editSchedule",results={ @Result(name = "success", location = "/adminpages/schedule/editSchedule.jsp")})
	public String eidtSchedule() throws Exception {
		
		log.info("编辑时刻安排信息");
		schedule = ScheduleManager.get(id);
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("Schedule", Schedule);
//		
		 return SUCCESS;
	
		
	}
	
	

	public void prepare() throws Exception {
		


		
	}




	
	public List<Playdata> getPlaydataList() {
		
		if(playdataList==null){
			playdataList= new ArrayList<Playdata>();
		}
		
		return playdataList;
	}

	public void setPlaydataList(List<Playdata> playdataList) {
		this.playdataList = playdataList;
	}

	public List<Seat> getSeatList() {
		if(seatList==null){
			seatList= new ArrayList<Seat>();
		}
		return seatList;
	}

	public void setSeatList(List<Seat> seatList) {
		this.seatList = seatList;
	}

	public List<Hall> getHallList() {
		if(hallList==null){
			hallList= new ArrayList<Hall>();
		}
		return hallList;
	}

	public void setHallList(List<Hall> hallList) {
		this.hallList = hallList;
	}

	public List<Saleinfo> getSaleinfoList() {
		if(saleinfoList==null){
			saleinfoList= new ArrayList<Saleinfo>();
		}
		return saleinfoList;
	}

	public void setSaleinfoList(List<Saleinfo> saleinfoList) {
		this.saleinfoList = saleinfoList;
	}

	public List<Staff> getStaffList() {
		if(staffList==null){
			staffList= new ArrayList<Staff>();
		}
		return staffList;
	}

	public void setStaffList(List<Staff> staffList) {
		this.staffList = staffList;
	}

	public Integer getAddPlayDataId() {
		return addPlayDataId;
	}

	public void setAddPlayDataId(Integer addPlayDataId) {
		this.addPlayDataId = addPlayDataId;
	}

	public Integer getAddStaffId() {
		return addStaffId;
	}

	public void setAddStaffId(Integer addStaffId) {
		this.addStaffId = addStaffId;
	}

	public Integer getAddHallId() {
		return addHallId;
	}

	public void setAddHallId(Integer addHallId) {
		this.addHallId = addHallId;
	}

	public HallManager getHallManager() {
		return hallManager;
	}

	public void setHallManager(HallManager hallManager) {
		this.hallManager = hallManager;
	}

	public StaffManager getStaffManager() {
		return staffManager;
	}

	public void setStaffManager(StaffManager staffManager) {
		this.staffManager = staffManager;
	}

	public PlaydataManager getPlaydataManager() {
		return playdataManager;
	}

	public void setPlaydataManager(PlaydataManager playdataManager) {
		this.playdataManager = playdataManager;
	}






	

}
