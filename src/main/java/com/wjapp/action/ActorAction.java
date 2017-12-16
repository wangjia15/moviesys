package com.wjapp.action;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

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
import com.wjapp.beans.Actor;
import com.wjapp.beans.Film;
import com.wjapp.beans.FilmActor;
import com.wjapp.service.ActorManager;



@ParentPackage("struts-default")  
@Namespace("/adminpages/actor")  
@AllowedMethods("saveActor")  
@Results({  
    @Result(name = "success", location = "/adminpages/actor/actorinfo.jsp"),
    @Result(name = "error", location = "/adminpages/actor/erroractor.jsp"),
    @Result(name = "addsuccess", location = "/adminpages/actor/saveSuccess.jsp")  
})
//@ExceptionMappings({  
//    @ExceptionMapping(exception = "java.lang.Exception", result = "error", params = {"param1", "val1"})  
//})  
public class ActorAction extends ActionSupport implements ModelDriven<Actor>, Preparable {
	
	private static final Logger log = Logger.getLogger(ActorAction.class);
	private Integer id;
	private Actor actor;
	private List<Actor> actorList;
	
	private List<Film> filmList;
	
	@Autowired
	private ActorManager actorManager;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Actor getActor() {
		return actor;
	}

	public void setActor(Actor actor) {
		this.actor = actor;
	}

	public List<Actor> getActorList() {
		return actorList;
	}

	public void setActorList(List<Actor> actorList) {
		this.actorList = actorList;
	}
	
    public Actor getModel() {  
        if (null != id) {  
            actor = actorManager.get(id);  
        } else {  
        	actor = new Actor();  
        }  
        return actor;  
    }  

	@Override
	@Action("actorList")
	public String execute() throws Exception {
		
	
		
		
		log.info("查询演员信息");
		actorList = actorManager.findAll();
		
		Map requestList = (Map) ActionContext.getContext().get("request");
		requestList.put("actorList", actorList);
		
		
		return SUCCESS;
		
		
		
	}
	

	@Action(value="getFilemByActor",results={ @Result(name = "success", location = "/adminpages/film/filmList.jsp")})
	public String getFilmByActor() throws Exception {
		
		log.info("查询演员信息"+id);
		Set<Film> list = actorManager.get(id).getFilmActors();
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("filmList", list);\
		
		//  for( FilmActor item : list){
			  
		
		//	 getFilmList().add(item.getFilm());
		 // }
		

		getFilmList().addAll(list);
		
		
		return SUCCESS;
		
		
		
	}
	

	
	@Action(value="saveactor",results={ @Result(name = "input", location = "/adminpages/actor/addactor.jsp")})
	public String saveActor() throws Exception {
		
		log.info("添加演员信息");
		int i = actorManager.save(this.actor).intValue();
		
		if(i>0){
			return "addsuccess";
		}else{
			return ERROR;
		}
		
	}
	
	
	@Action(value="updateactor",results={ @Result(name = "success", location = "/adminpages/actor/saveSuccess.jsp")})

	public String updateActor() throws Exception {
		
		log.info("更新演员信息"+actor.getActorId());
		actorManager.saveOrUpdate(this.actor);
		
			return SUCCESS;
		
		
	}
	
	
	
	@Action(value="deleteactor",results={ @Result(name = "success", location = "/adminpages/actor/saveSuccess.jsp")})
	public String DeleteActor() throws Exception {
		
		log.info("删除演员信息");
		 actorManager.delete(id);
		
		 return SUCCESS;
	
		
	}
	
	
	@Action(value="editactor",results={ @Result(name = "success", location = "/adminpages/actor/editactor.jsp")})
	public String eidtActor() throws Exception {
		
		log.info("编辑演员信息");
		actor = actorManager.get(id);
		
		Map requestList = (Map) ActionContext.getContext().get("request");
		requestList.put("actor", actor);
		
		 return SUCCESS;
	
		
	}
	
	

	public void prepare() throws Exception {
		// TODO 自动生成的方法存根
		
	}

	public List<Film> getFilmList() {
		if(filmList==null){
			filmList= new ArrayList<Film>();
		}
		return filmList;
	}

	public void setFilmList(List<Film> filmList) {
		this.filmList = filmList;
	}


	

}
