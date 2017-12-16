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
import com.wjapp.beans.Playdata;
import com.wjapp.beans.Country;
import com.wjapp.beans.Film;
import com.wjapp.beans.FilmActor;
import com.wjapp.beans.Language;
import com.wjapp.service.CountryManager;
import com.wjapp.service.FilmManager;
import com.wjapp.service.PlaydataManager;



@ParentPackage("struts-default")  
@Namespace("/adminpages/playdata")    
@Results({  
    @Result(name = "success", location = "/adminpages/playdata/playdataList.jsp"),
    @Result(name = "error", location = "/adminpages/playdata/errorPlaydata.jsp"),
    @Result(name = "addsuccess", location = "/adminpages/playdata/saveSuccess.jsp")  
})
//@ExceptionMappings({  
//    @ExceptionMapping(exception = "java.lang.Exception", result = "error", params = {"param1", "val1"})  
//})  
public class PlaydataAction extends ActionSupport implements ModelDriven<Playdata>, Preparable {
	
	private static final Logger log = Logger.getLogger(PlaydataAction.class);
	private Integer id;
	
	private Integer addfilmId;

	
	private Playdata playdata;
	private List<Playdata> playdataList;
	
	private List<Film> filmList;
	
	@Autowired
	private PlaydataManager PlaydataManager;
	
	@Autowired
	private FilmManager FilmManager;
	
	

	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Playdata getPlaydata() {
		return playdata;
	}

	public void setPlaydata(Playdata Playdata) {
		this.playdata = Playdata;
	}

	public List<Playdata> getPlaydataList() {
		return playdataList;
	}

	public void setPlaydataList(List<Playdata> PlaydataList) {
		this.playdataList = PlaydataList;
	}
	
    public Playdata getModel() {  
        if (null != id) {  
        	playdata = PlaydataManager.get(id);  
        } else {  
        	playdata = new Playdata();  
        }  
        return playdata;  
    }  

	@Override
	@Action("playdataList")
	public String execute() throws Exception {
		
		log.info("查询排片信息");
		playdataList = PlaydataManager.findAll();
		
		log.info(playdataList.get(0).getEnddate());
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("PlaydataList", PlaydataList);
//		
		
		return SUCCESS;
		
		
		
	}
	
	@Action(value="getFilmByPlaydata",results={ @Result(name = "success", location = "/adminpages/film/filmList.jsp")})
	public String getFilmByPlaydata() throws Exception {
		
		log.info("查询演员信息"+id);
	  Film film = 	FilmManager.get(id);
	  
	  

	   getFilmList().add(film);
		  
	
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("actorList", list);
		
		
		return SUCCESS;
		
		
		
	}
	
	

	
	
	
	@Action(value="addPlaydata",
			results={ @Result(name = "input", location = "/adminpages/playdata/addPlaydata.jsp"),
					@Result(name = "success", location = "/adminpages/playdata/addPlaydata.jsp")
	})
	public String addFilm() throws Exception {
		
		log.info("浏览电影信息列表");
		
		//List<Language>  languageList = LanguageManager.findAll();
	 
	 
//	 Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("languageList", languageList);
	 
			return SUCCESS;
		
		
	}
	

	
	@Action(value="savePlaydata",results={ @Result(name = "input", location = "/adminpages/playdata/addPlaydata.jsp")})
	public String savePlaydata() throws Exception {
		
		log.info("添加排片信息"+playdata.getEnddate());
		
		Film c = FilmManager.get(addfilmId);
		
		playdata.setFilm(c);
		
		
		
		int i = PlaydataManager.save(this.playdata).intValue();
		
		//log.info("countyr:"+playdata.getPlaydataName());
		
		if(i>0){
			return "addsuccess";
		}else{
			return ERROR;
		}
		
	}
	
	
	@Action(value="updatePlaydata",results={ @Result(name = "success", location = "/adminpages/playdata/saveSuccess.jsp")})

	public String updatePlaydata() throws Exception {
		
		log.info("更新排片信息");
		
		//Country c = CountryManager.get(countryid);
		
		//playdata.setCountry(c);
		
		PlaydataManager.saveOrUpdate(this.playdata);
		
			return SUCCESS;
		
		
	}
	
	
	
	@Action(value="deletePlaydata",results={ @Result(name = "success", location = "/adminpages/playdata/saveSuccess.jsp")})
	public String DeletePlaydata() throws Exception {
		
		log.info("删除排片信息");
		 PlaydataManager.delete(id);
		
		 return SUCCESS;
	
		
	}
	
	
	@Action(value="editPlaydata",results={ @Result(name = "success", location = "/adminpages/playdata/editPlaydata.jsp")})
	public String eidtPlaydata() throws Exception {
		
		log.info("编辑排片信息");
		playdata = PlaydataManager.get(id);
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("Playdata", Playdata);
//		
		 return SUCCESS;
	
		
	}
	
	

	public void prepare() throws Exception {
		


		
	}





	public FilmManager getFilmManager() {
		return FilmManager;
	}

	public void setFilmManager(FilmManager filmManager) {
		FilmManager = filmManager;
	}

	public List<Film> getFilmList() {
		
		if(filmList==null){
			filmList = new ArrayList<Film>();
		}
		return filmList;
	}

	public void setFilmList(List<Film> filmList) {
		this.filmList = filmList;
	}

	public Integer getAddfilmId() {
		return addfilmId;
	}

	public void setAddfilmId(Integer addfilmId) {
		this.addfilmId = addfilmId;
	}







	

}
