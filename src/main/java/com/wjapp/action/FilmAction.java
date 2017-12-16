package com.wjapp.action;

import java.util.ArrayList;
import java.util.HashSet;
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
import com.wjapp.beans.Actor;
import com.wjapp.beans.Category;
import com.wjapp.beans.Film;
import com.wjapp.beans.FilmActor;
import com.wjapp.beans.FilmCategory;
import com.wjapp.beans.Language;
import com.wjapp.service.ActorManager;
import com.wjapp.service.CategoryManager;
import com.wjapp.service.FilmManager;
import com.wjapp.service.LanguageManager;



@ParentPackage("struts-default")  
@Namespace("/adminpages/film")    
@Results({  
    @Result(name = "success", location = "/adminpages/film/filmList.jsp"),
    @Result(name = "error", location = "/adminpages/film/errorFilm.jsp"),
    @Result(name = "addsuccess", location = "/adminpages/film/saveSuccess.jsp")  
})
//@ExceptionMappings({  
//    @ExceptionMapping(exception = "java.lang.Exception", result = "error", params = {"param1", "val1"})  
//})  
public class FilmAction extends ActionSupport implements ModelDriven<Film>, Preparable {
	
	private static final Logger log = Logger.getLogger(FilmAction.class);
	private Integer id;
	
	private Integer categoryid;
	
	private String[] addActorId;
	private Film film;
	private List<Film> filmList;
	
	private List<Actor> actorList;
	
	private List<Category> categoryList;
	

	private Integer languageid;
	
	@Autowired
	private FilmManager FilmManager;
	
	@Autowired
	private LanguageManager LanguageManager;
	
	@Autowired
	private ActorManager actorManager;
	
	@Autowired
	private CategoryManager categoryManager;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Film getFilm() {
		return film;
	}

	public void setFilm(Film Film) {
		this.film = Film;
	}

	public List<Film> getFilmList() {
		return filmList;
	}

	public void setFilmList(List<Film> FilmList) {
		this.filmList = FilmList;
	}
	
    public Film getModel() {  
        if (null != id) {  
        	film = FilmManager.get(id);  
        } else {  
        	film = new Film();  
        }  
        return film;  
    }  

	@Override
	@Action("filmList")
	public String execute() throws Exception {
		
		log.info("查询电影信息");
		filmList = FilmManager.findAll();
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("FilmList", FilmList);
//		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="getActorsByFilm",results={ @Result(name = "success", location = "/adminpages/actor/actorinfo.jsp")})
	public String getActorsByFilm() throws Exception {
		
		log.info("查询演员信息"+id);
	  Set<Actor> list = 	FilmManager.get(id).getFilmActors();
	  
	  getActorList().addAll(list);
//	  
//	  log.info("大小"+list.size());
//
//	  for( FilmActor item : list){
//		  
//		  log.info(item);
//		  getActorList().add(item.getActor());
//	  }
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("actorList", list);
		
		
		//getActorList().add(FilmManager.get(id).getFilmActors());
		
		return SUCCESS;
		
		
		
	}
	
	
	
	@Action(value="getCategorysByFilm",results={ @Result(name = "success", location = "/adminpages/category/categorylist.jsp")})
	public String getCategorysByFilm() throws Exception {
		
		log.info("查询演员信息"+id);
	  Set<Category> list = 	FilmManager.get(id).getFilmCategories();
	  getCategoryList().addAll(list);
	  
//	  
//	  log.info(list.size());
//
//	  for( FilmCategory item : list){
//		  getCategoryList().add(item.getCategory());
//	  }
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("actorList", list);
		
		
		return SUCCESS;
		
		
		
	}
	
	@Action(value="addFilm",
			results={ @Result(name = "input", location = "/adminpages/film/addFilm.jsp"),
					@Result(name = "success", location = "/adminpages/film/addFilm.jsp")
	})
	public String addFilm() throws Exception {
		
		log.info("浏览电影信息列表");
		
		List<Language>  languageList = LanguageManager.findAll();
		
		categoryList  =categoryManager.findAll();
	 
	 
//	 Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("languageList", languageList);
	 
			return SUCCESS;
		
		
	}
	
	
	
	
	@Action(value="saveFilm",results={ @Result(name = "input", location = "/adminpages/film/addFilm.jsp")})
	public String saveFilm() throws Exception {
		
		log.info("添加电影信息"+addActorId.length);
		
		Language lang = LanguageManager.get(languageid);
		
		this.film.setLanguageByLanguageId(lang);
		
		
		Category c= categoryManager.get(categoryid);
		
		log.info("category:"+categoryid);
		
		this.film.getFilmCategories().add(c);
		
//		FilmCategory fc =	new FilmCategory();
//		
//		fc.setCategory(c);
//		fc.setFilm(film);
//		HashSet<FilmCategory> calist =new HashSet<FilmCategory>();
//		
//		calist.add(fc);
		
		//this.film.setFilmCategories(calist);
		
		
		
		HashSet<FilmActor> atlist = new HashSet<FilmActor>();
		for(int i=0;i<addActorId.length;i++){
			log.info(addActorId[i]);
			Actor actor = actorManager.get(Integer.parseInt(addActorId[i]));
			
			this.film.getFilmActors().add(actor);
//			FilmActor fa= new FilmActor();
//			fa.setActor(actor);
			//fa.setFilm(film);
			
			//atlist.add(fa);
			
		}
		log.info(atlist.size());
		//this.film.setFilmActors(atlist);
		
		
		
		int i = FilmManager.save(this.film).intValue();
		
		log.info("ff添加电影信息"+languageid);
		
		if(i>0){
			return "addsuccess";
		}else{
			return ERROR;
		}
		
	}
	
	
	@Action(value="updateFilm",results={ @Result(name = "success", location = "/adminpages/film/saveSuccess.jsp")})

	public String updateFilm() throws Exception {
		
		log.info("更新电影信息");
		FilmManager.saveOrUpdate(this.film);
		
			return SUCCESS;
		
		
	}
	
	
	
	@Action(value="deleteFilm",results={ @Result(name = "success", location = "/adminpages/film/saveSuccess.jsp")})
	public String DeleteFilm() throws Exception {
		
		log.info("删除电影信息");
		 FilmManager.delete(id);
		
		 return SUCCESS;
	
		
	}
	
	
	@Action(value="editFilm",results={ @Result(name = "success", location = "/adminpages/film/editFilm.jsp")})
	public String eidtFilm() throws Exception {
		
		log.info("编辑电影信息");
		film = FilmManager.get(id);
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("Film", Film);
//		
		 return SUCCESS;
	
		
	}
	
	

	public void prepare() throws Exception {
		// TODO 自动生成的方法存根
		
		List<Language>  languageList = LanguageManager.findAll();
		
		
		 
		 
		 Map requestList = (Map) ActionContext.getContext().get("request");
			requestList.put("languageList", languageList);
		
	}

	public LanguageManager getLanguageManager() {
		return LanguageManager;
	}

	public void setLanguageManager(LanguageManager languageManager) {
		LanguageManager = languageManager;
	}

	

	public Integer getLanguageid() {
		return languageid;
	}

	public void setLanguageid(Integer languageid) {
		this.languageid = languageid;
	}

	public CategoryManager getCategoryManager() {
		return categoryManager;
	}

	public void setCategoryManager(CategoryManager categoryManager) {
		this.categoryManager = categoryManager;
	}

	public ActorManager getActorManager() {
		return actorManager;
	}

	public void setActorManager(ActorManager actorManager) {
		this.actorManager = actorManager;
	}

	public List<Actor> getActorList() {
		
		if(actorList==null){
			actorList= new ArrayList<Actor>();
		}
		return actorList;
	}

	public void setActorList(List<Actor> actorList) {
		this.actorList = actorList;
	}

	public List<Category> getCategoryList() {
		
		if(categoryList==null){
			categoryList= new ArrayList<Category>();
		}
		return categoryList;
	}

	public void setCategoryList(List<Category> categoryList) {
		this.categoryList = categoryList;
	}

	public Integer getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(Integer categoryid) {
		this.categoryid = categoryid;
	}

	public String[] getAddActorId() {
		return addActorId;
	}

	public void setAddActorId(String[] addActorId) {
		this.addActorId = addActorId;
	}


	

}
