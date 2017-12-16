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
import com.wjapp.beans.FilmCategory;
import com.wjapp.beans.Saleinfo;
import com.wjapp.service.CategoryManager;



@ParentPackage("struts-default")  
@Namespace("/adminpages/category")    
@Results({  
    @Result(name = "success", location = "/adminpages/category/categorylist.jsp"),
    @Result(name = "error", location = "/adminpages/category/errorcategory.jsp"),
    @Result(name = "addsuccess", location = "/adminpages/category/saveSuccess.jsp")  
})
//@ExceptionMappings({  
//    @ExceptionMapping(exception = "java.lang.Exception", result = "error", params = {"param1", "val1"})  
//})  
public class CategoryAction extends ActionSupport implements ModelDriven<Category>, Preparable {
	
	private static final Logger log = Logger.getLogger(CategoryAction.class);
	private Integer id;
	private Category category;
	private List<Category> categoryList;
	
	private List<Film> filmList;
	
	@Autowired
	private CategoryManager CategoryManager;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category Category) {
		this.category = Category;
	}

	public List<Category> getCategoryList() {
		return categoryList;
	}

	public void setCategoryList(List<Category> CategoryList) {
		this.categoryList = CategoryList;
	}
	
    public Category getModel() {  
        if (null != id) {  
        	category = CategoryManager.get(id);  
        } else {  
        	category = new Category();  
        }  
        return category;  
    }  

	@Override
	@Action("categoryList")
	public String execute() throws Exception {
		
		log.info("查询类别信息");
		categoryList = CategoryManager.findAll();
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("CategoryList", CategoryList);
//		
		
		return SUCCESS;
		
		
		
	}
	
	
	@Action(value="getFilmByCategory",results={ @Result(name = "success", location = "/adminpages/film/filmList.jsp")})
	public String getFilmByCategory() throws Exception {
		
		log.info("查询演员信息"+id);
	  Set<Film> list = 	CategoryManager.get(id).getFilmCategories();
	  
//	  log.info("大小"+list.size());
//
//	  for( FilmCategory item : list){
//		  
//		  log.info(item);
//		  getFilmList().add(item.getFilm());
//	  }
		getFilmList().addAll(list);

		
		return SUCCESS;
		
		
		
	}

	
	@Action(value="saveCategory",results={ @Result(name = "input", location = "/adminpages/category/addCategory.jsp")})
	public String saveCategory() throws Exception {
		
		log.info("添加类别信息");
		int i = CategoryManager.save(this.category).intValue();
		
		if(i>0){
			return "addsuccess";
		}else{
			return ERROR;
		}
		
	}
	
	
	@Action(value="updateCategory",results={ @Result(name = "success", location = "/adminpages/category/saveSuccess.jsp")})

	public String updateCategory() throws Exception {
		
		log.info("更新类别信息");
		CategoryManager.saveOrUpdate(this.category);
		
			return SUCCESS;
		
		
	}
	
	
	
	@Action(value="deleteCategory",results={ @Result(name = "success", location = "/adminpages/category/saveSuccess.jsp")})
	public String DeleteCategory() throws Exception {
		
		log.info("删除类别信息");
		 CategoryManager.delete(id);
		
		 return SUCCESS;
	
		
	}
	
	
	@Action(value="editCategory",results={ @Result(name = "success", location = "/adminpages/category/editCategory.jsp")})
	public String eidtCategory() throws Exception {
		
		log.info("编辑类别信息");
		category = CategoryManager.get(id);
		
//		Map requestList = (Map) ActionContext.getContext().get("request");
//		requestList.put("Category", Category);
//		
		 return SUCCESS;
	
		
	}
	
	

	public void prepare() throws Exception {
		// TODO 自动生成的方法存根
		
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


	

}
