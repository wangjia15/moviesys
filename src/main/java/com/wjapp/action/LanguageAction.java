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
import com.wjapp.beans.Category;
import com.wjapp.beans.Film;
import com.wjapp.beans.Language;

import com.wjapp.service.LanguageManager;



@ParentPackage("struts-default")  
@Namespace("/adminpages/language")    
@Results({  
    @Result(name = "success", location = "/adminpages/language/languageList.jsp"),
    @Result(name = "error", location = "/adminpages/language/errorLanguage.jsp"),
    @Result(name = "addsuccess", location = "/adminpages/language/saveSuccess.jsp")  
})
//@ExceptionMappings({  
//    @ExceptionMapping(exception = "java.lang.Exception", result = "error", params = {"param1", "val1"})  
//})  
public class LanguageAction extends ActionSupport implements ModelDriven<Language>, Preparable {
	
	private static final Logger log = Logger.getLogger(LanguageAction.class);
	private Integer id;
	private Language language;
	private List<Language> languageList;
	
	private List<Film> filmList;
	
	@Autowired
	private LanguageManager LanguageManager;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Language getLanguage() {
		return language;
	}

	public void setLanguage(Language Language) {
		this.language = Language;
	}

	public List<Language> getLanguageList() {
		return languageList;
	}

	public void setLanguageList(List<Language> LanguageList) {
		this.languageList = LanguageList;
	}
	
    public Language getModel() {  
        if (null != id) {  
        	language = LanguageManager.get(id);  
        } else {  
        	language = new Language();  
        }  
        return language;  
    }  

	@Override
	@Action("languageList")
	public String execute() throws Exception {
		
		log.info("查询类别信息");
		languageList = LanguageManager.findAll();
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("LanguageList", LanguageList);
//		
		
		return SUCCESS;
		
		
		
	}
	
	@Action(value="getFilmByLang",results={ @Result(name = "success", location = "/adminpages/film/filmList.jsp")})
	public String getFilmByLang() throws Exception {
		
		log.info("查询演员信息"+id);
	  Set<Film> list = 	LanguageManager.get(id).getFilmsForLanguageId();
	  getFilmList().addAll(list);
	  
	
		return SUCCESS;
		
		
		
	}
	

	
	@Action(value="saveLanguage",results={ @Result(name = "input", location = "/adminpages/language/addLanguage.jsp")})
	public String saveLanguage() throws Exception {
		
		log.info("添加类别信息");
		int i = LanguageManager.save(this.language).intValue();
		
		if(i>0){
			return "addsuccess";
		}else{
			return ERROR;
		}
		
	}
	
	
	@Action(value="updateLanguage",results={ @Result(name = "success", location = "/adminpages/language/saveSuccess.jsp")})

	public String updateLanguage() throws Exception {
		
		log.info("更新类别信息");
		LanguageManager.saveOrUpdate(this.language);
		
			return SUCCESS;
		
		
	}
	
	
	
	@Action(value="deleteLanguage",results={ @Result(name = "success", location = "/adminpages/language/saveSuccess.jsp")})
	public String DeleteLanguage() throws Exception {
		
		log.info("删除类别信息");
		 LanguageManager.delete(id);
		
		 return SUCCESS;
	
		
	}
	
	
	@Action(value="editLanguage",results={ @Result(name = "success", location = "/adminpages/language/editLanguage.jsp")})
	public String eidtLanguage() throws Exception {
		
		log.info("编辑类别信息");
		language = LanguageManager.get(id);
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("Language", Language);
//		
		 return SUCCESS;
	
		
	}
	
	

	public void prepare() throws Exception {
		// TODO 自动生成的方法存根
		
	}

	public List<Film> getFilmList() {
		if(filmList==null){
			filmList = new ArrayList();
		}
		return filmList;
	}

	public void setFilmList(List<Film> filmList) {
		this.filmList = filmList;
	}


	

}
